@interface NADSyncSession
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (BOOL)syncSession:(id)session rollbackChangesWithError:(id *)error;
- (NADSyncSession)initWithSession:(id)session transaction:(id)transaction;
- (NADSyncSessionDelegate)delegate;
- (NSString)description;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NADSyncSession

- (NADSyncSession)initWithSession:(id)session transaction:(id)transaction
{
  sessionCopy = session;
  transactionCopy = transaction;
  v20.receiver = self;
  v20.super_class = NADSyncSession;
  v9 = [(NADSyncSession *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    session = v10->_session;
    v12 = objc_alloc_init(NARSYStoreSerializer);
    [(SYSession *)session setSerializer:v12];

    v13 = v10->_session;
    v21 = IDSSendMessageOptionBypassDuetKey;
    v22 = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [(SYSession *)v13 setOptions:v14];

    [(SYSession *)v10->_session setCanRollback:1];
    [(SYSession *)v10->_session setDelegate:v10];
    objc_storeStrong(&v10->_transaction, transaction);
    v15 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    progress = v10->_progress;
    v10->_progress = v15;

    sessionMetadata = [sessionCopy sessionMetadata];
    v18 = [sessionMetadata objectForKeyedSubscript:@"changeCount"];

    if (v18)
    {
      -[NSProgress setTotalUnitCount:](v10->_progress, "setTotalUnitCount:", [v18 integerValue]);
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  session = [(NADSyncSession *)self session];
  identifier = [session identifier];
  v7 = identifier;
  if (self->_complete)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"<%@ %p identifier=%@; complete=%@>", v4, self, identifier, v8];;

  return v9;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = nar_sync_log();
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000BAD0(self, errorCopy, v9);
    }

    transaction = [(NADSyncSession *)self transaction];
    [transaction rollback];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session %@ didEndWithError:", &v12, 0xCu);
    }

    transaction = [(NADSyncSession *)self transaction];
    [transaction commit:0];
  }

  self->_complete = 1;
  v11 = nar_sync_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Completed session end %@", &v12, 0xCu);
  }
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [changesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (!v7)
  {
    v36 = 0;
    v9 = 0;
    goto LABEL_26;
  }

  v8 = v7;
  v36 = 0;
  v9 = 0;
  v10 = *v40;
  v11 = &selRef_service_didSwitchFromPairingID_toPairingID_;
  do
  {
    v12 = 0;
    v37 = v8;
    do
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(changesCopy);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = nar_workspace_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          objectIdentifier = [v13 objectIdentifier];
          *buf = 138412290;
          v44 = objectIdentifier;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Object with bundle id added: %@", buf, 0xCu);
        }

        transaction3 = sub_100008B00(v13);
        if (transaction3)
        {
          ++v9;
          transaction = [(NADSyncSession *)self transaction];
          [transaction insertApplication:transaction3];
        }

        else
        {
          transaction = nar_sync_log();
          if (os_log_type_enabled(transaction, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v13;
            _os_log_error_impl(&_mh_execute_header, transaction, OS_LOG_TYPE_ERROR, "Failed to convert application wrapper %@", buf, 0xCu);
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v10;
          v19 = v11;
          v20 = v9;
          v21 = changesCopy;
          transaction3 = v13;
          v22 = [NSUUID alloc];
          uUID = [transaction3 uUID];
          transaction = [v22 initWithUUIDString:uUID];

          v24 = nar_sync_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [transaction3 sequenceNumber]);
            uUID2 = [transaction3 uUID];
            *buf = 138412546;
            v44 = v25;
            v45 = 2112;
            v46 = uUID2;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updated sequence number: %@ UUID: %@", buf, 0x16u);
          }

          transaction2 = [(NADSyncSession *)self transaction];
          v28 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [transaction3 sequenceNumber]);
          [transaction2 setSequenceNumber:v28 UUID:transaction];

          changesCopy = v21;
          v9 = v20;
          v11 = v19;
          v10 = v18;
          v8 = v37;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v29 = nar_sync_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            objectIdentifier2 = [v13 objectIdentifier];
            *buf = 138412290;
            v44 = objectIdentifier2;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Object deleted: %@", buf, 0xCu);
          }

          ++v36;
          transaction3 = [(NADSyncSession *)self transaction];
          transaction = [v13 objectIdentifier];
          [transaction3 removeApplicationWithBundleIdentifier:transaction];
        }
      }

LABEL_22:
      v12 = v12 + 1;
    }

    while (v8 != v12);
    v8 = [changesCopy countByEnumeratingWithState:&v39 objects:v47 count:16];
  }

  while (v8);
LABEL_26:
  -[NSProgress setCompletedUnitCount:](self->_progress, "setCompletedUnitCount:", -[NSProgress completedUnitCount](self->_progress, "completedUnitCount") + [changesCopy count]);
  delegate = [(NADSyncSession *)self delegate];
  [delegate syncSessionDidUpdateProgress:self];

  v32 = nar_sync_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [NSNumber numberWithInteger:v9];
    v34 = [NSNumber numberWithInteger:v36];
    *buf = 138412546;
    v44 = v33;
    v45 = 2112;
    v46 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Added %@ apps; Removed %@ apps", buf, 0x16u);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v5 = nar_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "syncSession: %@ resetDataStoreWithError:", &v8, 0xCu);
  }

  transaction = [(NADSyncSession *)self transaction];
  [transaction removeAllEntities];

  return 1;
}

- (BOOL)syncSession:(id)session rollbackChangesWithError:(id *)error
{
  v5 = [(NADSyncSession *)self transaction:session];
  [v5 rollback];

  v6 = nar_sync_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000BB58(self, v6);
  }

  return 1;
}

- (NADSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end