@interface NADSyncSession
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (BOOL)syncSession:(id)a3 rollbackChangesWithError:(id *)a4;
- (NADSyncSession)initWithSession:(id)a3 transaction:(id)a4;
- (NADSyncSessionDelegate)delegate;
- (NSString)description;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation NADSyncSession

- (NADSyncSession)initWithSession:(id)a3 transaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NADSyncSession;
  v9 = [(NADSyncSession *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
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
    objc_storeStrong(&v10->_transaction, a4);
    v15 = [[NSProgress alloc] initWithParent:0 userInfo:0];
    progress = v10->_progress;
    v10->_progress = v15;

    v17 = [v7 sessionMetadata];
    v18 = [v17 objectForKeyedSubscript:@"changeCount"];

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
  v5 = [(NADSyncSession *)self session];
  v6 = [v5 identifier];
  v7 = v6;
  if (self->_complete)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"<%@ %p identifier=%@; complete=%@>", v4, self, v6, v8];;

  return v9;
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nar_sync_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000BAD0(self, v7, v9);
    }

    v10 = [(NADSyncSession *)self transaction];
    [v10 rollback];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session %@ didEndWithError:", &v12, 0xCu);
    }

    v10 = [(NADSyncSession *)self transaction];
    [v10 commit:0];
  }

  self->_complete = 1;
  v11 = nar_sync_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Completed session end %@", &v12, 0xCu);
  }
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v6 = a4;
  v35 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v39 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = nar_workspace_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 objectIdentifier];
          *buf = 138412290;
          v44 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Object with bundle id added: %@", buf, 0xCu);
        }

        v16 = sub_100008B00(v13);
        if (v16)
        {
          ++v9;
          v17 = [(NADSyncSession *)self transaction];
          [v17 insertApplication:v16];
        }

        else
        {
          v17 = nar_sync_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v13;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to convert application wrapper %@", buf, 0xCu);
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
          v21 = v6;
          v16 = v13;
          v22 = [NSUUID alloc];
          v23 = [v16 uUID];
          v17 = [v22 initWithUUIDString:v23];

          v24 = nar_sync_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 sequenceNumber]);
            v26 = [v16 uUID];
            *buf = 138412546;
            v44 = v25;
            v45 = 2112;
            v46 = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updated sequence number: %@ UUID: %@", buf, 0x16u);
          }

          v27 = [(NADSyncSession *)self transaction];
          v28 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v16 sequenceNumber]);
          [v27 setSequenceNumber:v28 UUID:v17];

          v6 = v21;
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
            v30 = [v13 objectIdentifier];
            *buf = 138412290;
            v44 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Object deleted: %@", buf, 0xCu);
          }

          ++v36;
          v16 = [(NADSyncSession *)self transaction];
          v17 = [v13 objectIdentifier];
          [v16 removeApplicationWithBundleIdentifier:v17];
        }
      }

LABEL_22:
      v12 = v12 + 1;
    }

    while (v8 != v12);
    v8 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
  }

  while (v8);
LABEL_26:
  -[NSProgress setCompletedUnitCount:](self->_progress, "setCompletedUnitCount:", -[NSProgress completedUnitCount](self->_progress, "completedUnitCount") + [v6 count]);
  v31 = [(NADSyncSession *)self delegate];
  [v31 syncSessionDidUpdateProgress:self];

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

  v35[2](v35, 1, 0);
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v5 = nar_sync_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "syncSession: %@ resetDataStoreWithError:", &v8, 0xCu);
  }

  v6 = [(NADSyncSession *)self transaction];
  [v6 removeAllEntities];

  return 1;
}

- (BOOL)syncSession:(id)a3 rollbackChangesWithError:(id *)a4
{
  v5 = [(NADSyncSession *)self transaction:a3];
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