@interface ApplyLocalTransactions
- (ApplyLocalTransactions)initWithDatabase:(id)a3 andInteractionManager:(id)a4;
- (BOOL)deleteCallsWithIdentifiers:(id)a3;
- (BOOL)handleDelete:(id)a3;
- (BOOL)handleFingerprintDelete:(id)a3;
- (BOOL)handleInsert:(id)a3;
- (BOOL)handleInsert:(id)a3 withFingerprint:(id)a4;
- (id)executeBatchDeleteTransaction:(id)a3;
- (id)executeDeleteTransaction:(id)a3;
- (id)executeInsertTransaction:(id)a3;
- (void)apply:(id)a3;
- (void)executeUpdateTransaction:(id)a3;
- (void)handleUpdate:(id)a3;
@end

@implementation ApplyLocalTransactions

- (ApplyLocalTransactions)initWithDatabase:(id)a3 andInteractionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ApplyLocalTransactions;
  v9 = [(ApplyLocalTransactions *)&v16 initWithDomain:"ApplyLocalTransactions"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v10->_sendReadUpdateNotification = 0;
    objc_storeStrong(&v10->_interactionManager, a4);
    v11 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v13 = +[CHSpotlightIndexManager sharedInstance];
    spotlightIndexManager = v10->_spotlightIndexManager;
    v10->_spotlightIndexManager = v13;
  }

  return v10;
}

- (void)apply:(id)a3
{
  v4 = a3;
  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Applying %lu changes to our database", buf, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v33 = v4;
  v8 = [ApplyLocalTransactions sortTransactionsByType:v4];
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
        v14 = [v13 transactionType];
        if (v14)
        {
          if (v14 == 1)
          {
            [(ApplyLocalTransactions *)self executeUpdateTransaction:v13];
            continue;
          }

          if (v14 != 2)
          {
            continue;
          }

          v15 = [(ApplyLocalTransactions *)self executeDeleteTransaction:v13];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 uniqueId];
            [v7 addObject:v17];
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
      v27 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v21 count];
        v29 = [v7 count];
        *buf = 134218240;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Applied transactions. Indexing %lu inserted calls and removing %lu deleted calls from index", buf, 0x16u);
      }

      [(CHSpotlightIndexManager *)self->_spotlightIndexManager indexInsertedCalls:v21];
      [(CHSpotlightIndexManager *)self->_spotlightIndexManager removeDeletedCalls:v7];
    }
  }

  else
  {
    v30 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100034158();
    }

    v26 = v33;
  }

  if (self->_sendReadUpdateNotification)
  {
    v31 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = @"kCallHistoryDatabaseRemoteUpdateReadNotification";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Posting %{public}@ for unread -> read changes", buf, 0xCu);
    }

    v32 = +[NSDistributedNotificationCenter defaultCenter];
    [v32 postNotificationName:@"kCallHistoryDatabaseRemoteUpdateReadNotification" object:0 userInfo:0];

    self->_sendReadUpdateNotification = 0;
  }
}

- (BOOL)deleteCallsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to delete calls matching predicate %{public}@", &v10, 0xCu);
  }

  v7 = [(CallHistoryDBClientHandleProtocol *)self->_database deleteCallsWithPredicate:v5];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleted %ld calls", &v10, 0xCu);
    }
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)executeBatchDeleteTransaction:(id)a3
{
  v4 = a3;
  if ([v4 transactionType] == 3)
  {
    v5 = [v4 record];
    v12 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:v5 error:&v12];
    v7 = v12;

    v8 = self;
    if (v6)
    {
      v9 = 0;
      if ([(ApplyLocalTransactions *)v8 deleteCallsWithIdentifiers:0])
      {
        v9 = v6;
      }
    }

    else
    {
      v10 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }

      v9 = 0;
    }
  }

  else
  {
    v7 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000341C0();
    }

    v9 = 0;
  }

  return v9;
}

- (id)executeDeleteTransaction:(id)a3
{
  v4 = a3;
  if ([v4 transactionType] == 2)
  {
    v5 = [v4 record];
    v11 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:v5 error:&v11];
    v7 = v11;

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
      v9 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  v7 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100034290();
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)executeInsertTransaction:(id)a3
{
  v4 = a3;
  if (![v4 transactionType])
  {
    v7 = [v4 record];
    v11 = 0;
    v8 = [CHRecentCall unarchivedObjectFromData:v7 error:&v11];
    v5 = v11;

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
      v9 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000342F8();
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (void)executeUpdateTransaction:(id)a3
{
  v4 = a3;
  if ([v4 transactionType] == 1)
  {
    v5 = [v4 record];
    v9 = 0;
    v6 = [CHRecentCall unarchivedObjectFromData:v5 error:&v9];
    v7 = v9;

    if (v6)
    {
      [(ApplyLocalTransactions *)self handleUpdate:v6];
    }

    else
    {
      v8 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100034228();
      }
    }
  }

  else
  {
    v7 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100034360();
    }
  }
}

- (BOOL)handleInsert:(id)a3
{
  v4 = a3;
  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueId];
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to fingerprint match call %{public}@", buf, 0xCu);
  }

  v7 = [CHCallFingerprint matchCallWithFingerprint:v4 usingDatabase:self->_database];
  if (v7)
  {
    v8 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 uniqueId];
      v10 = [v4 uniqueId];
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Matched already existing fingerprinted call %{public}@ with %{public}@", buf, 0x16u);
    }

    [(ApplyLocalTransactions *)self handleInsert:v4 withFingerprint:v7];
    v11 = 0;
  }

  else
  {
    if ([v4 callStatus] == 8 && (objc_msgSend(v4, "read") & 1) == 0)
    {
      v12 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 uniqueId];
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Squashing unread --> read for missed call: %{public}@", buf, 0xCu);
      }

      [v4 setRead:1];
    }

    v14 = [(ApplyLocalTransactions *)self logHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 uniqueId];
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Insert %{public}@", buf, 0xCu);
    }

    database = self->_database;
    v21 = 0;
    v11 = [(CallHistoryDBClientHandleProtocol *)database createCallRecord:v4 error:&v21 save:0];
    v17 = v21;
    v18 = v17;
    if ((v11 & 1) == 0 && v17)
    {
      v19 = [(ApplyLocalTransactions *)self logHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000343C8();
      }
    }
  }

  return v11;
}

- (BOOL)handleInsert:(id)a3 withFingerprint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([CHCallFingerprint shouldCall:v6 updateMatchingCall:v7])
  {
    v8 = [CHCallFingerprint updateCall:v6 withFingerprintedCall:v7 areBothCallsLocal:1];

    database = self->_database;
    v10 = [v7 uniqueId];
    v15 = v10;
    v16 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = [(CallHistoryDBClientHandleProtocol *)database updateCallRecordsWithCalls:v11 error:0 save:1];
    v13 = v12 != 0;

    v6 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)handleDelete:(id)a3
{
  v4 = a3;
  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueId];
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delete %{public}@", buf, 0xCu);
  }

  database = self->_database;
  v8 = [v4 uniqueId];
  v9 = [(CallHistoryDBClientHandleProtocol *)database fetchAllObjectsWithUniqueId:v8];

  v10 = [v9 count];
  v11 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 uniqueId];
    *buf = 134218242;
    v29 = v10;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %lu calls for this %{public}@", buf, 0x16u);
  }

  if (v10)
  {
    v22 = v4;
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
          v20 = [*(*(&v23 + 1) + 8 * i) uniqueId];
          LODWORD(v17) = [(CallHistoryDBClientHandleProtocol *)v19 deleteObjectWithUniqueId:v20 error:0 save:0]& v17;
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    v4 = v22;
  }

  else
  {
    v17 = [(ApplyLocalTransactions *)self handleFingerprintDelete:v4];
  }

  return v17;
}

- (BOOL)handleFingerprintDelete:(id)a3
{
  v4 = a3;
  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueId];
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Matching call %{public}@ with a fingerprint", &v15, 0xCu);
  }

  v7 = [CHCallFingerprint matchCallWithFingerprint:v4 usingDatabase:self->_database];
  v8 = [(ApplyLocalTransactions *)self logHandle];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v7 uniqueId];
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing fingerprinted call %{public}@", &v15, 0xCu);
    }

    database = self->_database;
    v8 = [v7 uniqueId];
    v12 = [(CallHistoryDBClientHandleProtocol *)database deleteObjectWithUniqueId:v8 error:0 save:0];
  }

  else
  {
    if (v9)
    {
      v13 = [v4 uniqueId];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find fingerprinted call %{public}@ to delete", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleUpdate:(id)a3
{
  v4 = a3;
  v5 = [(ApplyLocalTransactions *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueId];
    *buf = 138543362;
    v78 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting update of local recent call with UUID %{public}@.", buf, 0xCu);
  }

  database = self->_database;
  v8 = [v4 uniqueId];
  v9 = [(CallHistoryDBClientHandleProtocol *)database fetchObjectWithUniqueId:v8];

  if (v9)
  {
    v10 = [(ApplyLocalTransactions *)self logHandle];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v11 = [v9 uniqueId];
    *buf = 138543362;
    v78 = v11;
    v12 = "UUID matching found local recent call with UUID %{public}@.";
    goto LABEL_9;
  }

  v9 = [CHCallFingerprint matchCallWithFingerprint:v4 usingDatabase:self->_database];
  v10 = [(ApplyLocalTransactions *)self logHandle];
  v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    v11 = [v9 uniqueId];
    *buf = 138543362;
    v78 = v11;
    v12 = "Fingerprint matching found local recent call with UUID %{public}@.";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);

LABEL_10:
    v14 = +[NSMutableDictionary dictionary];
    v15 = [v9 copy];
    v16 = [v9 bytesOfDataUsed];
    v17 = [v4 bytesOfDataUsed];
    v18 = (v16 | v17) == 0;
    if (v17)
    {
      v18 = [v16 isEqual:v17];
    }

    if (v18)
    {
      goto LABEL_25;
    }

    v19 = [v9 uniqueId];
    v20 = [v4 uniqueId];
    v21 = v19;
    v22 = v20;
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
        v25 = [v4 bytesOfDataUsed];
LABEL_22:

        v30 = [(ApplyLocalTransactions *)self logHandle];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v9 bytesOfDataUsed];
          *buf = 138543618;
          v78 = v31;
          v79 = 2114;
          v80 = *&v25;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updating bytes of data used from %{public}@ to %{public}@.", buf, 0x16u);
        }

        [v15 setBytesOfDataUsed:v25];
LABEL_25:
        [v9 duration];
        v33 = v32;
        [v4 duration];
        if (v33 != v34)
        {
          [v9 duration];
          v36 = v35;
          [v4 duration];
          v38 = v36 + v37;
          v39 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            [v9 duration];
            *buf = 134218240;
            v78 = v40;
            v79 = 2048;
            v80 = v38;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Updating duration used from %f to %f.", buf, 0x16u);
          }

          [v15 setDuration:v38];
        }

        v41 = [v9 callStatus];
        if (v41 != [v4 callStatus])
        {
          v42 = v15;
          v43 = [v4 callStatus];
          v44 = [v9 uniqueId];
          v45 = [v4 uniqueId];
          v46 = (v44 | v45) == 0;
          if (v45)
          {
            v46 = [v44 isEqual:v45];
          }

          if (v46 && [v9 callStatus] != 4)
          {
            v43 = [v4 callStatus];
          }

          v47 = [(ApplyLocalTransactions *)self logHandle];
          v15 = v42;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = +[CHRecentCall callStatusAsString:](CHRecentCall, "callStatusAsString:", [v9 callStatus]);
            v49 = [CHRecentCall callStatusAsString:v43];
            *buf = 138543618;
            v78 = v48;
            v79 = 2114;
            v80 = *&v49;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updating call status from %{public}@ to %{public}@", buf, 0x16u);
          }

          [v15 setCallStatus:v43];
        }

        v50 = [v9 outgoingLocalParticipantUUID];
        v51 = [v4 outgoingLocalParticipantUUID];
        v52 = (v50 | v51) == 0;
        if (v51)
        {
          v52 = [v50 isEqual:v51];
        }

        if ((v52 & 1) == 0)
        {
          v53 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [v9 outgoingLocalParticipantUUID];
            v55 = [v4 outgoingLocalParticipantUUID];
            *buf = 138543618;
            v78 = v54;
            v79 = 2114;
            v80 = *&v55;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Updating outgoing local participant UUID from %{public}@ to %{public}@", buf, 0x16u);
          }

          v56 = [v4 outgoingLocalParticipantUUID];
          [v15 setOutgoingLocalParticipantUUID:v56];
        }

        v57 = [v9 read];
        if (v57 != [v4 read])
        {
          v58 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 read]);
            v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 read]);
            *buf = 138543618;
            v78 = v59;
            v79 = 2114;
            v80 = *&v60;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Updating read state from %{public}@ to %{public}@.", buf, 0x16u);
          }

          [v15 setRead:{objc_msgSend(v4, "read")}];
        }

        v61 = [v9 reminderUUID];
        v62 = [v4 reminderUUID];
        v63 = (v61 | v62) == 0;
        if (v62)
        {
          v63 = [v61 isEqual:v62];
        }

        if ((v63 & 1) == 0)
        {
          v64 = [(ApplyLocalTransactions *)self logHandle];
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = [v9 reminderUUID];
            v66 = [v4 reminderUUID];
            *buf = 138543618;
            v78 = v65;
            v79 = 2114;
            v80 = *&v66;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID from %{public}@ to %{public}@", buf, 0x16u);
          }

          v67 = [v4 reminderUUID];
          [v15 setReminderUUID:v67];
        }

        v68 = self->_database;
        v69 = [v9 uniqueId];
        v75 = v69;
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
    v28 = [v27 intValue];
    v29 = [v4 bytesOfDataUsed];
    v25 = [v73 numberWithInt:{objc_msgSend(v29, "intValue") + v28}];

    v15 = v74;
    goto LABEL_22;
  }

  if (v13)
  {
    v26 = [v4 uniqueId];
    *buf = 138543362;
    v78 = v26;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Update aborted; did not find a local recent call that matches %{public}@.", buf, 0xCu);
  }

  v9 = v10;
LABEL_57:
}

@end