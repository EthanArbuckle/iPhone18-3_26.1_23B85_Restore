@interface NNCompanionSyncSessionManager
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (NNCompanionSyncSessionManagerDelegate)delegate;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation NNCompanionSyncSessionManager

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asked to enqueue some changes!", buf, 2u);
  }

  v10 = [(NNCompanionSyncSessionManager *)self delegate];
  v11 = [v10 companionSyncSessionManagerWantsHeadlineData:self];

  v27 = 0;
  v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v27];
  v13 = v27;
  if (!v12)
  {
    v21 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_ERROR))
    {
      sub_1000091AC(v11, v13, &v21->super);
    }

    goto LABEL_21;
  }

  v14 = [(NNCompanionSyncSessionManager *)self syncingData];

  if (v14)
  {
    v15 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100009134(v7, v15);
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = [(__CFString *)v12 conformsToProtocol:&OBJC_PROTOCOL___NNSyncableResult];
  v18 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = @"BAD DICT";
    if (isKindOfClass)
    {
      v19 = @"Dict";
    }

    v20 = @"BAD SYNC";
    *buf = 138412802;
    v29 = v19;
    v30 = 2112;
    if (v17)
    {
      v20 = @"syncable";
    }

    v31 = v20;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Enqueueing results (%@, %@) %@ for syncing…", buf, 0x20u);
  }

  if (isKindOfClass & v17)
  {
    v21 = [[NNHeadlineResultChange alloc] initWithHeadlineResult:v12];
    v22 = v8[2](v8, v21);
    v23 = NNSetupCompanionSyncLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (!v22)
    {
      if (v24)
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Couldn't enqueue results %@", buf, 0xCu);
      }

      v25 = 1;
      goto LABEL_26;
    }

    if (v24)
    {
      *buf = 138412546;
      v29 = v21;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Enqueued result change with results %@ %@…", buf, 0x16u);
    }

    [(NNCompanionSyncSessionManager *)self setSyncingData:v11];
LABEL_21:
    v25 = 2;
LABEL_26:

    goto LABEL_27;
  }

  v25 = 2;
LABEL_27:

  return v25;
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v7 = a4;
  v17 = a5;
  v8 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v24 = [v7 count];
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Asked to apply %ld changes! %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = NNSetupCompanionSyncLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Change to apply: %@", buf, 0xCu);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [(NNCompanionSyncSessionManager *)self delegate];
            [v16 companionSyncSessionManagerWantsHeadlineUpdate:self];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17[2](v17, 1, 0);
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v5 = a4;
  v6 = NNSetupCompanionSyncLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync Session ended with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync Session has finished", &v11, 2u);
    }

    v8 = [(NNCompanionSyncSessionManager *)self syncingData];

    if (v8)
    {
      v9 = [(NNCompanionSyncSessionManager *)self delegate];
      v10 = [(NNCompanionSyncSessionManager *)self syncingData];
      [v9 companionSyncSessionManager:self didSyncHeadlineData:v10];
    }

    else
    {
      v9 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sync Session finished without tracking any data. Repeat sync?", &v11, 2u);
      }
    }

    [(NNCompanionSyncSessionManager *)self setSyncingData:0];
  }
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v4 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sync session - Resetting data store.", v6, 2u);
  }

  return 1;
}

- (NNCompanionSyncSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end