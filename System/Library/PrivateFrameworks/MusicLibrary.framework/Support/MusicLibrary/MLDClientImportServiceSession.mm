@interface MLDClientImportServiceSession
- (MLDClientImportServiceSession)initWithConnection:(id)a3;
- (void)_addContainers:(id)a3;
- (void)_addItems:(id)a3;
- (void)_adjustProgressForIncomingOperationCount:(unint64_t)a3;
- (void)_beginSessionWithConfiguration:(id)a3;
- (void)_endSessionCommittingChanges:(id)a3;
- (void)_removeContainers:(id)a3;
- (void)_removeItems:(id)a3;
- (void)_reportProgress;
- (void)_startImportThread;
- (void)_updateContainers:(id)a3;
- (void)_updateItems:(id)a3;
- (void)addContainers:(id)a3 completion:(id)a4;
- (void)addItems:(id)a3 completion:(id)a4;
- (void)beginSessionWithConfiguration:(id)a3 completion:(id)a4;
- (void)cancelSessionWithCompletion:(id)a3;
- (void)endSessionWithCompletion:(id)a3;
- (void)removeContainers:(id)a3 completion:(id)a4;
- (void)removeItems:(id)a3 completion:(id)a4;
- (void)stop;
- (void)updateContainers:(id)a3 completion:(id)a4;
- (void)updateItems:(id)a3 completion:(id)a4;
@end

@implementation MLDClientImportServiceSession

- (void)_reportProgress
{
  completedOperationCount = self->_completedOperationCount;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * completedOperationCount, 1) <= 0x1999999999999999uLL)
  {
    totalOperationCount = self->_totalOperationCount;
    xpcConnection = self->_xpcConnection;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017FA0;
    v7[3] = &unk_100031AF0;
    v7[4] = self;
    v5 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
    *&v6 = completedOperationCount / totalOperationCount;
    [v5 sessionDidUpdateProgress:v6];
  }
}

- (void)_adjustProgressForIncomingOperationCount:(unint64_t)a3
{
  v3 = self->_completedOperationCount + a3;
  if (v3 > self->_totalOperationCount)
  {
    self->_totalOperationCount = v3;
  }
}

- (void)_removeContainers:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v19 count]);
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          importSession = self->_importSession;
          v22 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession removeContainer:v10 persistentID:&v22];
          v13 = v22;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v29 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100018454;
            v21[3] = &unk_100031AF0;
            v21[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10001852C;
            v20[3] = &unk_100031B40;
            v20[4] = self;
            [v16 sessionFailedToUpdateContainer:v10 completion:v20];
          }

          if (!self->_success)
          {

            goto LABEL_17;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v5 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ removeItems called without an active import session", buf, 0xCu);
    }
  }
}

- (void)_updateContainers:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          importSession = self->_importSession;
          v23 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession updateContainer:v10 persistentID:&v23];
          v13 = v23;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v30 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_1000189DC;
            v22[3] = &unk_100031AF0;
            v22[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v22];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100018AB4;
            v21[3] = &unk_100031B40;
            v21[4] = self;
            [v16 sessionFailedToUpdateContainer:v10 completion:v21];
          }

          if (!self->_success)
          {

            goto LABEL_17;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v19 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ updateItems called without an active import session", buf, 0xCu);
    }

    self->_success = 0;
  }
}

- (void)_addContainers:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          importSession = self->_importSession;
          v23 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession addContainer:v10 persistentID:&v23];
          v13 = v23;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v30 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to add track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_100018F64;
            v22[3] = &unk_100031AF0;
            v22[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v22];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10001903C;
            v21[3] = &unk_100031B40;
            v21[4] = self;
            [v16 sessionFailedToAddContainer:v10 completion:v21];
          }

          if (!self->_success)
          {

            goto LABEL_17;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v19 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ addItems called without an active import session", buf, 0xCu);
    }

    self->_success = 0;
  }
}

- (void)_removeItems:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v19 count]);
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          importSession = self->_importSession;
          v22 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession removeTrack:v10 persistentID:&v22];
          v13 = v22;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v29 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_1000194E4;
            v21[3] = &unk_100031AF0;
            v21[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_1000195BC;
            v20[3] = &unk_100031B40;
            v20[4] = self;
            [v16 sessionFailedToUpdateItem:v10 completion:v20];
          }

          if (!self->_success)
          {

            goto LABEL_17;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v5 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ removeItems called without an active import session", buf, 0xCu);
    }
  }
}

- (void)_updateItems:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          importSession = self->_importSession;
          v23 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession updateTrack:v10 persistentID:&v23];
          v13 = v23;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v30 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_100019A6C;
            v22[3] = &unk_100031AF0;
            v22[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v22];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100019B44;
            v21[3] = &unk_100031B40;
            v21[4] = self;
            [v16 sessionFailedToUpdateItem:v10 completion:v21];
          }

          if (!self->_success)
          {

            goto LABEL_17;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v19 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ updateItems called without an active import session", buf, 0xCu);
    }

    self->_success = 0;
  }
}

- (void)_addItems:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_importSession)
  {
    -[MLDClientImportServiceSession _adjustProgressForIncomingOperationCount:](self, "_adjustProgressForIncomingOperationCount:", [v4 count]);
    v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v20 count]);
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v6 = v20;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          importSession = self->_importSession;
          v23 = 0;
          v12 = [(ML3ClientImportServiceSession *)importSession addTrack:v10 persistentID:&v23];
          v13 = v23;
          self->_success = v12;
          if (v12)
          {
            [v5 setObject:v13 forKey:v10];
            if ([(ML3ClientImportSessionConfiguration *)self->_configuration shouldLibraryAdd])
            {
              [(NSMutableSet *)self->_trackPidsToAddToLibrary addObject:v13];
            }
          }

          else
          {
            v14 = os_log_create("com.apple.amp.medialibraryd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v30 = self;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to add track", buf, 0xCu);
            }

            xpcConnection = self->_xpcConnection;
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 3221225472;
            v22[2] = sub_10001A00C;
            v22[3] = &unk_100031AF0;
            v22[4] = self;
            v16 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v22];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10001A0E4;
            v21[3] = &unk_100031B40;
            v21[4] = self;
            [v16 sessionFailedToAddItem:v10 completion:v21];
          }

          if (!self->_success)
          {

            goto LABEL_18;
          }

          ++self->_completedOperationCount;
          [(MLDClientImportServiceSession *)self _reportProgress];
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v17 = [[ML3ClientImportResult alloc] initWithSuccess:self->_success resultingDatabasePersistentIDs:v5];
    currentResult = self->_currentResult;
    self->_currentResult = v17;
  }

  else
  {
    v19 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = self;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ addItems called without an active import session", buf, 0xCu);
    }

    self->_success = 0;
  }
}

- (void)_endSessionCommittingChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 BOOLValue];
  if (self->_importSession)
  {
    v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finishing import session. shouldCommit=%{BOOL}u", buf, 0x12u);
    }

    if (v5)
    {
      v7 = [(ML3ClientImportServiceSession *)self->_importSession finish];
      self->_success = v7;
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = os_log_create("com.apple.amp.medialibraryd", "Default");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to finish import session", buf, 0xCu);
        }

        v5 = 0;
      }
    }

    importSession = self->_importSession;
    self->_importSession = 0;
  }

  if (self->_transaction)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = sub_10001A548;
    v27 = sub_10001A558;
    v28 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    trackPidsToAddToLibrary = self->_trackPidsToAddToLibrary;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A560;
    v18[3] = &unk_100031B18;
    v18[4] = self;
    v18[5] = v19;
    v18[6] = buf;
    [(NSMutableSet *)trackPidsToAddToLibrary enumerateObjectsUsingBlock:v18];
    v11 = +[MLDMediaLibraryService sharedInstance];
    v12 = [(ML3ActiveTransaction *)self->_transaction identifier];
    v13 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v14 = [v11 endTransaction:v12 shouldCommit:v5 error:&obj];
    objc_storeStrong(v13, obj);
    self->_success = v14;

    if ((v14 & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*&buf[8] + 40);
        *v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to end transaction. err=%{public}@", v21, 0x16u);
      }
    }

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)_beginSessionWithConfiguration:(id)a3
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibraryd", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting import session", buf, 0xCu);
  }

  objc_storeStrong(&self->_configuration, a3);
  self->_totalOperationCount = [(ML3ClientImportSessionConfiguration *)self->_configuration operationCount];
  if ([(ML3ClientImportSessionConfiguration *)self->_configuration shouldLibraryAdd])
  {
    v7 = +[NSMutableSet set];
    trackPidsToAddToLibrary = self->_trackPidsToAddToLibrary;
    self->_trackPidsToAddToLibrary = v7;
  }

  v9 = [MLTransactionContext alloc];
  v10 = [v5 privacyContext];
  v11 = [v5 libraryPath];
  v12 = [v9 initWithPrivacyContext:v10 path:v11 priorityLevel:1 options:0];

  v13 = +[MLDMediaLibraryService sharedInstance];
  v25 = 0;
  v14 = [v13 beginTransactionForDatabaseWithContext:v12 error:&v25];
  v15 = v25;
  transaction = self->_transaction;
  self->_transaction = v14;

  if (self->_transaction)
  {
    v17 = [ML3ClientImportServiceSession alloc];
    v18 = [(ML3ActiveTransaction *)self->_transaction library];
    v19 = [(ML3ActiveTransaction *)self->_transaction connection];
    v20 = [v17 initWithLibrary:v18 connection:v19 configuration:self->_configuration];
    importSession = self->_importSession;
    self->_importSession = v20;

    v22 = [(ML3ClientImportServiceSession *)self->_importSession begin];
    self->_success = v22;
    if ((v22 & 1) == 0)
    {
      v23 = os_log_create("com.apple.amp.medialibraryd", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to begin import session", buf, 0xCu);
      }

      [(MLDClientImportServiceSession *)self _endSessionCommittingChanges:&__kCFBooleanFalse];
    }
  }

  else
  {
    v24 = os_log_create("com.apple.amp.medialibraryd", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to start transaction. err=%{public}@", buf, 0x16u);
    }

    self->_success = 0;
  }
}

- (void)_startImportThread
{
  v3 = +[NSRunLoop currentRunLoop];
  importSessionRunLoop = self->_importSessionRunLoop;
  self->_importSessionRunLoop = v3;

  while (self->_active)
  {
    v5 = self->_importSessionRunLoop;
    v6 = +[NSDate distantFuture];
    [(NSRunLoop *)v5 runMode:NSDefaultRunLoopMode beforeDate:v6];
  }
}

- (void)removeContainers:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_removeContainers:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to remove import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)updateContainers:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_updateContainers:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to update import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)addContainers:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_addContainers:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to add import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)removeItems:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_removeItems:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to remove import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)updateItems:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_updateItems:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to update import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)addItems:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_addItems:" onThread:self->_importSessionThread withObject:v10 waitUntilDone:1];
  currentResult = self->_currentResult;
  success = self->_success;
  if (success)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSError ml_errorWithCode:0 description:@"failed to add import items"];
  }

  v6[2](v6, currentResult, v9);
  if (!success)
  {
  }
}

- (void)cancelSessionWithCompletion:(id)a3
{
  v4 = a3;
  [(MLDClientImportServiceSession *)self performSelector:"_endSessionCommittingChanges:" onThread:self->_importSessionThread withObject:&__kCFBooleanFalse waitUntilDone:1];
  v4[2](v4, 0);
}

- (void)endSessionWithCompletion:(id)a3
{
  v6 = a3;
  [(MLDClientImportServiceSession *)self performSelector:"_endSessionCommittingChanges:" onThread:self->_importSessionThread withObject:&__kCFBooleanTrue waitUntilDone:1];
  success = self->_success;
  if (success)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSError ml_errorWithCode:0 description:@"failed to commit import session"];
  }

  v6[2](v6, v5);
  if (!success)
  {
  }
}

- (void)beginSessionWithConfiguration:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(MLDClientImportServiceSession *)self performSelector:"_beginSessionWithConfiguration:" onThread:self->_importSessionThread withObject:v9 waitUntilDone:1];
  success = self->_success;
  if (success)
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError ml_errorWithCode:0 description:@"failed to start import session"];
  }

  v6[2](v6, v8);
  if (!success)
  {
  }
}

- (void)stop
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001B4D0;
  v2[3] = &unk_100031AF0;
  v2[4] = self;
  [(MLDClientImportServiceSession *)self cancelSessionWithCompletion:v2];
}

- (MLDClientImportServiceSession)initWithConnection:(id)a3
{
  v5 = a3;
  v6 = [(MLDClientImportServiceSession *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_active = 1;
    objc_storeStrong(&v6->_xpcConnection, a3);
    trackPidsToAddToLibrary = v7->_trackPidsToAddToLibrary;
    v7->_trackPidsToAddToLibrary = 0;

    v9 = [[NSThread alloc] initWithTarget:v7 selector:"_startImportThread" object:0];
    importSessionThread = v7->_importSessionThread;
    v7->_importSessionThread = v9;

    [(NSThread *)v7->_importSessionThread setQualityOfService:25];
    [(NSThread *)v7->_importSessionThread start];
  }

  return v7;
}

@end