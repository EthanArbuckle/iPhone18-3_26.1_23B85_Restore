@interface ApplyLocalTransactions
- (ApplyLocalTransactions)initWithDatabase:(id)database andInteractionManager:(id)manager;
- (BOOL)deleteCallsWithIdentifiers:(id)identifiers;
- (BOOL)handleDelete:(id)delete;
- (BOOL)handleFingerprintDelete:(id)delete;
- (BOOL)handleInsert:(id)insert;
- (BOOL)handleInsert:(id)insert withFingerprint:(id)fingerprint;
- (id)executeBatchDeleteTransaction:(id)transaction;
- (id)executeDeleteTransaction:(id)transaction;
- (id)executeInsertTransaction:(id)transaction;
- (void)apply:(id)apply;
- (void)executeUpdateTransaction:(id)transaction;
- (void)handleUpdate:(id)update;
@end

@implementation ApplyLocalTransactions

- (ApplyLocalTransactions)initWithDatabase:(id)database andInteractionManager:(id)manager
{
  databaseCopy = database;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = ApplyLocalTransactions;
  v9 = [(ApplyLocalTransactions *)&v16 initWithDomain:"ApplyLocalTransactions"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    v10->_sendReadUpdateNotification = 0;
    objc_storeStrong(&v10->_interactionManager, manager);
    v11 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v13 = +[CHSpotlightIndexManager sharedInstance];
    spotlightIndexManager = v10->_spotlightIndexManager;
    v10->_spotlightIndexManager = v13;
  }

  return v10;
}

- (void)apply:(id)apply
{
  applyCopy = apply;
  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = [applyCopy count];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Applying %lu changes to our database", buf, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v33 = applyCopy;
  v8 = [ApplyLocalTransactions sortTransactionsByType:applyCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        transactionType = [v13 transactionType];
        if (transactionType)
        {
          if (transactionType == 1)
          {
            [(ApplyLocalTransactions *)self executeUpdateTransaction:v13];
            continue;
          }

          if (transactionType != 2)
          {
            continue;
          }

          v15 = [(ApplyLocalTransactions *)self executeDeleteTransaction:v13];
          v16 = v15;
          if (v15)
          {
            uniqueId = [v15 uniqueId];
            [v7 addObject:uniqueId];
          }
        }

        else
        {
          v16 = [(ApplyLocalTransactions *)self executeInsertTransaction:v13];
          if (v16)
          {
            [v6 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  database = self->_database;
  v38 = 0;
  v19 = [(CallHistoryDBClientHandleProtocol *)database saveDatabase:&v38];
  v20 = v38;
  if (v19)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v6;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(InteractionProtocol *)self->_interactionManager donateCallHistoryInteractionWithCall:*(*(&v34 + 1) + 8 * j)];
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v23);
    }

    [(InteractionProtocol *)self->_interactionManager deleteInteractionWithCalls:v7];
    v26 = v33;
    if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
    {
      logHandle2 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v21 count];
        v29 = [v7 count];
        *buf = 134218240;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Applied transactions. Indexing %lu inserted calls and removing %lu deleted calls from index", buf, 0x16u);
      }

      [(CHSpotlightIndexManager *)self->_spotlightIndexManager indexInsertedCalls:v21];
      [(CHSpotlightIndexManager *)self->_spotlightIndexManager removeDeletedCalls:v7];
    }
  }

  else
  {
    logHandle3 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
    {
      sub_100034158();
    }

    v26 = v33;
  }

  if (self->_sendReadUpdateNotification)
  {
    logHandle4 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = @"kCallHistoryDatabaseRemoteUpdateReadNotification";
      _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Posting %{public}@ for unread -> read changes", buf, 0xCu);
    }

    v32 = +[NSDistributedNotificationCenter defaultCenter];
    [v32 postNotificationName:@"kCallHistoryDatabaseRemoteUpdateReadNotification" object:0 userInfo:0];

    self->_sendReadUpdateNotification = 0;
  }
}

- (BOOL)deleteCallsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:identifiersCopy];
  }

  else
  {
    v5 = 0;
  }

  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Attempting to delete calls matching predicate %{public}@", &v10, 0xCu);
  }

  v7 = [(CallHistoryDBClientHandleProtocol *)self->_database deleteCallsWithPredicate:v5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    logHandle2 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Deleted %ld calls", &v10, 0xCu);
    }
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)executeBatchDeleteTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy transactionType] == 3)
  {
    record = [transactionCopy record];
    v12 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:record error:&v12];
    logHandle2 = v12;

    selfCopy = self;
    if (v6)
    {
      v9 = 0;
      if ([(ApplyLocalTransactions *)selfCopy deleteCallsWithIdentifiers:0])
      {
        v9 = v6;
      }
    }

    else
    {
      logHandle = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }

      v9 = 0;
    }
  }

  else
  {
    logHandle2 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_1000341C0();
    }

    v9 = 0;
  }

  return v9;
}

- (id)executeDeleteTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy transactionType] == 2)
  {
    record = [transactionCopy record];
    v11 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:record error:&v11];
    logHandle2 = v11;

    if (v6)
    {
      if ([(ApplyLocalTransactions *)self handleDelete:v6])
      {
        v8 = v6;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      logHandle = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  logHandle2 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
  {
    sub_100034290();
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)executeInsertTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (![transactionCopy transactionType])
  {
    record = [transactionCopy record];
    v11 = 0;
    v8 = [CHRecentCall unarchivedObjectFromData:record error:&v11];
    logHandle2 = v11;

    if (v8)
    {
      if ([(ApplyLocalTransactions *)self handleInsert:v8])
      {
        v6 = v8;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      logHandle = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  logHandle2 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
  {
    sub_1000342F8();
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)executeUpdateTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy transactionType] == 1)
  {
    record = [transactionCopy record];
    v9 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:record error:&v9];
    logHandle2 = v9;

    if (v6)
    {
      [(ApplyLocalTransactions *)self handleUpdate:v6];
    }

    else
    {
      logHandle = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }
  }

  else
  {
    logHandle2 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      sub_100034360();
    }
  }
}

- (BOOL)handleInsert:(id)insert
{
  insertCopy = insert;
  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [insertCopy uniqueId];
    *buf = 138543362;
    v23 = uniqueId;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Attempting to fingerprint match call %{public}@", buf, 0xCu);
  }

  v7 = [CHCallFingerprint matchCallWithFingerprint:insertCopy usingDatabase:self->_database];
  if (v7)
  {
    logHandle2 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      uniqueId2 = [v7 uniqueId];
      uniqueId3 = [insertCopy uniqueId];
      *buf = 138543618;
      v23 = uniqueId2;
      v24 = 2114;
      v25 = uniqueId3;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Matched already existing fingerprinted call %{public}@ with %{public}@", buf, 0x16u);
    }

    [(ApplyLocalTransactions *)self handleInsert:insertCopy withFingerprint:v7];
    v11 = 0;
  }

  else
  {
    if ([insertCopy callStatus] == 8 && (objc_msgSend(insertCopy, "read") & 1) == 0)
    {
      logHandle3 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
      {
        uniqueId4 = [insertCopy uniqueId];
        *buf = 138543362;
        v23 = uniqueId4;
        _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Squashing unread --> read for missed call: %{public}@", buf, 0xCu);
      }

      [insertCopy setRead:1];
    }

    logHandle4 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
    {
      uniqueId5 = [insertCopy uniqueId];
      *buf = 138543362;
      v23 = uniqueId5;
      _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Insert %{public}@", buf, 0xCu);
    }

    database = self->_database;
    v21 = 0;
    v11 = [(CallHistoryDBClientHandleProtocol *)database createCallRecord:insertCopy error:&v21 save:0];
    v17 = v21;
    v18 = v17;
    if ((v11 & 1) == 0 && v17)
    {
      logHandle5 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_ERROR))
      {
        sub_1000343C8();
      }
    }
  }

  return v11;
}

- (BOOL)handleInsert:(id)insert withFingerprint:(id)fingerprint
{
  insertCopy = insert;
  fingerprintCopy = fingerprint;
  if ([CHCallFingerprint shouldCall:insertCopy updateMatchingCall:fingerprintCopy])
  {
    v8 = [CHCallFingerprint updateCall:insertCopy withFingerprintedCall:fingerprintCopy areBothCallsLocal:1];

    database = self->_database;
    uniqueId = [fingerprintCopy uniqueId];
    v15 = uniqueId;
    v16 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [(CallHistoryDBClientHandleProtocol *)database updateCallRecordsWithCalls:v11 error:0 save:1];
    v13 = v12 != 0;

    insertCopy = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)handleDelete:(id)delete
{
  deleteCopy = delete;
  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [deleteCopy uniqueId];
    *buf = 138543362;
    v29 = uniqueId;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Delete %{public}@", buf, 0xCu);
  }

  database = self->_database;
  uniqueId2 = [deleteCopy uniqueId];
  v9 = [(CallHistoryDBClientHandleProtocol *)database fetchAllObjectsWithUniqueId:uniqueId2];

  v10 = [v9 count];
  logHandle2 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId3 = [deleteCopy uniqueId];
    *buf = 134218242;
    v29 = v10;
    v30 = 2114;
    v31 = uniqueId3;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Found %lu calls for this %{public}@", buf, 0x16u);
  }

  if (v10)
  {
    v22 = deleteCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      LODWORD(v17) = 1;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = self->_database;
          uniqueId4 = [*(*(&v23 + 1) + 8 * i) uniqueId];
          LODWORD(v17) = [(CallHistoryDBClientHandleProtocol *)v19 deleteObjectWithUniqueId:uniqueId4 error:0 save:0]& v17;
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    deleteCopy = v22;
  }

  else
  {
    v17 = [(ApplyLocalTransactions *)self handleFingerprintDelete:deleteCopy];
  }

  return v17;
}

- (BOOL)handleFingerprintDelete:(id)delete
{
  deleteCopy = delete;
  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [deleteCopy uniqueId];
    v15 = 138543362;
    v16 = uniqueId;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Matching call %{public}@ with a fingerprint", &v15, 0xCu);
  }

  v7 = [CHCallFingerprint matchCallWithFingerprint:deleteCopy usingDatabase:self->_database];
  logHandle2 = [(ApplyLocalTransactions *)self logHandle];
  v9 = os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      uniqueId2 = [v7 uniqueId];
      v15 = 138543362;
      v16 = uniqueId2;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Removing fingerprinted call %{public}@", &v15, 0xCu);
    }

    database = self->_database;
    logHandle2 = [v7 uniqueId];
    v12 = [(CallHistoryDBClientHandleProtocol *)database deleteObjectWithUniqueId:logHandle2 error:0 save:0];
  }

  else
  {
    if (v9)
    {
      uniqueId3 = [deleteCopy uniqueId];
      v15 = 138543362;
      v16 = uniqueId3;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Did not find fingerprinted call %{public}@ to delete", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleUpdate:(id)update
{
  updateCopy = update;
  logHandle = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [updateCopy uniqueId];
    *buf = 138543362;
    v78 = uniqueId;
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Attempting update of local recent call with UUID %{public}@.", buf, 0xCu);
  }

  database = self->_database;
  uniqueId2 = [updateCopy uniqueId];
  v9 = [(CallHistoryDBClientHandleProtocol *)database fetchObjectWithUniqueId:uniqueId2];

  if (v9)
  {
    logHandle2 = [(ApplyLocalTransactions *)self logHandle];
    if (!os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    uniqueId3 = [v9 uniqueId];
    *buf = 138543362;
    v78 = uniqueId3;
    v12 = "UUID matching found local recent call with UUID %{public}@.";
    goto LABEL_9;
  }

  v9 = [CHCallFingerprint matchCallWithFingerprint:updateCopy usingDatabase:self->_database];
  logHandle2 = [(ApplyLocalTransactions *)self logHandle];
  v13 = os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    uniqueId3 = [v9 uniqueId];
    *buf = 138543362;
    v78 = uniqueId3;
    v12 = "Fingerprint matching found local recent call with UUID %{public}@.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);

LABEL_10:
    v14 = +[NSMutableDictionary dictionary];
    v15 = [v9 copy];
    bytesOfDataUsed = [v9 bytesOfDataUsed];
    bytesOfDataUsed2 = [updateCopy bytesOfDataUsed];
    v18 = (bytesOfDataUsed | bytesOfDataUsed2) == 0;
    if (bytesOfDataUsed2)
    {
      v18 = [bytesOfDataUsed isEqual:bytesOfDataUsed2];
    }

    if (v18)
    {
      goto LABEL_25;
    }

    uniqueId4 = [v9 uniqueId];
    uniqueId5 = [updateCopy uniqueId];
    v21 = uniqueId4;
    v22 = uniqueId5;
    v23 = v22;
    if (!(v21 | v22))
    {
      goto LABEL_16;
    }

    if (v22)
    {
      v24 = [v21 isEqual:v22];

      if (v24)
      {
LABEL_16:
        bytesOfDataUsed3 = [updateCopy bytesOfDataUsed];
LABEL_22:

        logHandle3 = [(ApplyLocalTransactions *)self logHandle];
        if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
        {
          bytesOfDataUsed4 = [v9 bytesOfDataUsed];
          *buf = 138543618;
          v78 = bytesOfDataUsed4;
          v79 = 2114;
          v80 = *&bytesOfDataUsed3;
          _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Updating bytes of data used from %{public}@ to %{public}@.", buf, 0x16u);
        }

        [v15 setBytesOfDataUsed:bytesOfDataUsed3];
LABEL_25:
        [v9 duration];
        v33 = v32;
        [updateCopy duration];
        if (v33 != v34)
        {
          [v9 duration];
          v36 = v35;
          [updateCopy duration];
          v38 = v36 + v37;
          logHandle4 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
          {
            [v9 duration];
            *buf = 134218240;
            v78 = v40;
            v79 = 2048;
            v80 = v38;
            _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "Updating duration used from %f to %f.", buf, 0x16u);
          }

          [v15 setDuration:v38];
        }

        callStatus = [v9 callStatus];
        if (callStatus != [updateCopy callStatus])
        {
          v42 = v15;
          callStatus2 = [updateCopy callStatus];
          uniqueId6 = [v9 uniqueId];
          uniqueId7 = [updateCopy uniqueId];
          v46 = (uniqueId6 | uniqueId7) == 0;
          if (uniqueId7)
          {
            v46 = [uniqueId6 isEqual:uniqueId7];
          }

          if (v46 && [v9 callStatus] != 4)
          {
            callStatus2 = [updateCopy callStatus];
          }

          logHandle5 = [(ApplyLocalTransactions *)self logHandle];
          v15 = v42;
          if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
          {
            v48 = +[CHRecentCall callStatusAsString:](CHRecentCall, "callStatusAsString:", [v9 callStatus]);
            v49 = [CHRecentCall callStatusAsString:callStatus2];
            *buf = 138543618;
            v78 = v48;
            v79 = 2114;
            v80 = *&v49;
            _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "Updating call status from %{public}@ to %{public}@", buf, 0x16u);
          }

          [v15 setCallStatus:callStatus2];
        }

        outgoingLocalParticipantUUID = [v9 outgoingLocalParticipantUUID];
        outgoingLocalParticipantUUID2 = [updateCopy outgoingLocalParticipantUUID];
        v52 = (outgoingLocalParticipantUUID | outgoingLocalParticipantUUID2) == 0;
        if (outgoingLocalParticipantUUID2)
        {
          v52 = [outgoingLocalParticipantUUID isEqual:outgoingLocalParticipantUUID2];
        }

        if ((v52 & 1) == 0)
        {
          logHandle6 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(logHandle6, OS_LOG_TYPE_DEFAULT))
          {
            outgoingLocalParticipantUUID3 = [v9 outgoingLocalParticipantUUID];
            outgoingLocalParticipantUUID4 = [updateCopy outgoingLocalParticipantUUID];
            *buf = 138543618;
            v78 = outgoingLocalParticipantUUID3;
            v79 = 2114;
            v80 = *&outgoingLocalParticipantUUID4;
            _os_log_impl(&_mh_execute_header, logHandle6, OS_LOG_TYPE_DEFAULT, "Updating outgoing local participant UUID from %{public}@ to %{public}@", buf, 0x16u);
          }

          outgoingLocalParticipantUUID5 = [updateCopy outgoingLocalParticipantUUID];
          [v15 setOutgoingLocalParticipantUUID:outgoingLocalParticipantUUID5];
        }

        read = [v9 read];
        if (read != [updateCopy read])
        {
          logHandle7 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(logHandle7, OS_LOG_TYPE_DEFAULT))
          {
            v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 read]);
            v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [updateCopy read]);
            *buf = 138543618;
            v78 = v59;
            v79 = 2114;
            v80 = *&v60;
            _os_log_impl(&_mh_execute_header, logHandle7, OS_LOG_TYPE_DEFAULT, "Updating read state from %{public}@ to %{public}@.", buf, 0x16u);
          }

          [v15 setRead:{objc_msgSend(updateCopy, "read")}];
        }

        reminderUUID = [v9 reminderUUID];
        reminderUUID2 = [updateCopy reminderUUID];
        v63 = (reminderUUID | reminderUUID2) == 0;
        if (reminderUUID2)
        {
          v63 = [reminderUUID isEqual:reminderUUID2];
        }

        if ((v63 & 1) == 0)
        {
          logHandle8 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(logHandle8, OS_LOG_TYPE_DEFAULT))
          {
            reminderUUID3 = [v9 reminderUUID];
            reminderUUID4 = [updateCopy reminderUUID];
            *buf = 138543618;
            v78 = reminderUUID3;
            v79 = 2114;
            v80 = *&reminderUUID4;
            _os_log_impl(&_mh_execute_header, logHandle8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID from %{public}@ to %{public}@", buf, 0x16u);
          }

          reminderUUID5 = [updateCopy reminderUUID];
          [v15 setReminderUUID:reminderUUID5];
        }

        v68 = self->_database;
        uniqueId8 = [v9 uniqueId];
        v75 = uniqueId8;
        v76 = v15;
        v70 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v71 = [(CallHistoryDBClientHandleProtocol *)v68 updateCallRecordsWithCalls:v70 error:0 save:0];

        v72 = [v14 objectForKeyedSubscript:kCallUpdatePropertyRead];

        if (v72)
        {
          self->_sendReadUpdateNotification = 1;
        }

        goto LABEL_57;
      }
    }

    else
    {
    }

    [v9 bytesOfDataUsed];
    v27 = v74 = v15;
    intValue = [v27 intValue];
    bytesOfDataUsed5 = [updateCopy bytesOfDataUsed];
    bytesOfDataUsed3 = [v73 numberWithInt:{objc_msgSend(bytesOfDataUsed5, "intValue") + intValue}];

    v15 = v74;
    goto LABEL_22;
  }

  if (v13)
  {
    uniqueId9 = [updateCopy uniqueId];
    *buf = 138543362;
    v78 = uniqueId9;
    _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Update aborted; did not find a local recent call that matches %{public}@.", buf, 0xCu);
  }

  v9 = logHandle2;
LABEL_57:
}

@end