@interface CPLDirectPullChangeSession
+ (id)selfCrashResetReason;
- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)finalizeWithCompletionHandler:(id)a3;
- (void)getChangeBatchWithCompletionHandler:(id)a3;
@end

@implementation CPLDirectPullChangeSession

- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_100139904();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v41 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100139948;
    v38[3] = &unk_100271E98;
    v39 = v11;
    v14 = v11;
    [(CPLDirectChangeSession *)self dispatchCallback:v38];
    v15 = v39;
  }

  else
  {
    v16 = [(CPLDirectPullChangeSession *)self abstractObject];
    v17 = [v16 libraryManager];
    v18 = [v17 platformObject];
    v19 = [v18 engineLibrary];
    objc_storeWeak((&self->_lastSeenLibraryVersion + 1), v19);

    WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    v21 = [WeakRetained store];
    objc_storeWeak((&self->_engineLibrary + 1), v21);

    v22 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v23 = [v22 scopes];
    objc_storeWeak((&self->_store + 1), v23);

    v24 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v25 = [v24 pullQueue];
    objc_storeWeak((&self->_scopes + 1), v25);

    v26 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v27 = [v26 idMapping];
    objc_storeWeak((&self->_pullQueue + 1), v27);

    v28 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    v29 = [v28 scheduler];
    objc_storeWeak((&self->_idMapping + 1), v29);

    v30 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001399AC;
    v35[3] = &unk_1002797C0;
    v35[4] = self;
    v36 = v9;
    v37 = v10;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100139BB0;
    v33[3] = &unk_10027A198;
    v33[4] = self;
    v34 = v11;
    v31 = v11;
    v32 = [v30 performWriteTransactionWithBlock:v35 completionHandler:v33];

    v15 = v36;
  }
}

- (void)getChangeBatchWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100139904();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100139FB0;
    v18[3] = &unk_100271E98;
    v19 = v5;
    [(CPLDirectChangeSession *)self dispatchCallback:v18];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = sub_100004560;
    v23 = sub_100005394;
    v24 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013A018;
    v15[3] = &unk_10027AD00;
    v15[4] = self;
    v15[5] = &buf;
    v15[6] = v16;
    v15[7] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013A89C;
    v10[3] = &unk_10027AD50;
    v10[4] = self;
    v11 = v5;
    v12 = v16;
    p_buf = &buf;
    v14 = a2;
    v9 = [WeakRetained performWriteTransactionWithBlock:v15 completionHandler:v10];

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100139904();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013ADBC;
    v20[3] = &unk_100271E98;
    v21 = v8;
    [(CPLDirectChangeSession *)self dispatchCallback:v20];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = sub_100004560;
    v25 = sub_100005394;
    v26 = 0;
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013AE24;
    v16[3] = &unk_10027ADE8;
    v16[4] = self;
    p_buf = &buf;
    v19 = a2;
    v17 = v7;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013B464;
    v13[3] = &unk_10027AE10;
    v15 = &buf;
    v13[4] = self;
    v14 = v8;
    v12 = [WeakRetained performWriteTransactionWithBlock:v16 completionHandler:v13];

    _Block_object_dispose(&buf, 8);
  }
}

- (void)finalizeWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100139904();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013B904;
    v16[3] = &unk_100271E98;
    v17 = v5;
    v8 = v5;
    [(CPLDirectChangeSession *)self dispatchCallback:v16];
    v9 = v17;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013B968;
    v15[3] = &unk_100273588;
    v15[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013BAD4;
    v13[3] = &unk_10027A198;
    v13[4] = self;
    v14 = v5;
    v11 = v5;
    v12 = [WeakRetained performWriteTransactionWithBlock:v15 completionHandler:v13];

    v9 = v14;
  }
}

+ (id)selfCrashResetReason
{
  if (qword_1002D2820 != -1)
  {
    sub_1001B58B0();
  }

  v3 = qword_1002D2828;

  return v3;
}

@end