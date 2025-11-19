@interface CPLDirectPushChangeSession
+ (id)selfCrashResetReason;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)commitChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)finalizeWithCompletionHandler:(id)a3;
@end

@implementation CPLDirectPushChangeSession

- (void)beginDirectSessionWithKnownLibraryVersion:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10013D210();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10013D254;
    v37[3] = &unk_100271E98;
    v38 = v11;
    v14 = v11;
    [(CPLDirectChangeSession *)self dispatchCallback:v37];
    v15 = v38;
  }

  else
  {
    v16 = [(CPLDirectPushChangeSession *)self abstractObject];
    v17 = [v16 libraryManager];
    v18 = [v17 platformObject];
    v19 = [v18 engineLibrary];
    objc_storeWeak((&self->_lastSeenLibraryVersion + 1), v19);

    WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    [WeakRetained clientIsPushingChanges];

    v21 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    v22 = [v21 store];
    objc_storeWeak((&self->_engineLibrary + 1), v22);

    v23 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v24 = [v23 pushRepository];
    objc_storeWeak((&self->_store + 1), v24);

    v25 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    v26 = [v25 scheduler];
    objc_storeWeak((&self->_pushRepository + 1), v26);

    v27 = objc_alloc_init(NSMutableSet);
    v28 = *(&self->_scheduler + 1);
    *(&self->_scheduler + 1) = v27;

    v29 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10013D2B8;
    v34[3] = &unk_1002797C0;
    v34[4] = self;
    v35 = v9;
    v36 = v10;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10013D478;
    v32[3] = &unk_10027A198;
    v32[4] = self;
    v33 = v11;
    v30 = v11;
    v31 = [v29 performWriteTransactionWithBlock:v34 completionHandler:v32];

    v15 = v35;
  }
}

- (void)finalizeWithCompletionHandler:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
  [WeakRetained clientIsPushingChanges];

  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_10013D210();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013D784;
    v17[3] = &unk_100271E98;
    v18 = v5;
    v9 = v5;
    [(CPLDirectChangeSession *)self dispatchCallback:v17];
    v10 = v18;
  }

  else
  {
    v11 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013D7E8;
    v16[3] = &unk_100273588;
    v16[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013D930;
    v14[3] = &unk_10027A198;
    v14[4] = self;
    v15 = v5;
    v12 = v5;
    v13 = [v11 performWriteTransactionWithBlock:v16 completionHandler:v14];

    v10 = v15;
  }
}

- (void)commitChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
  [WeakRetained clientIsPushingChanges];

  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  if ([(CPLDirectChangeSession *)self tearedDown])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10013D210();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10013DDC0;
    v28[3] = &unk_100271E98;
    v29 = v8;
    [(CPLDirectChangeSession *)self dispatchCallback:v28];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = sub_100004570;
    v33 = sub_10000539C;
    v34 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = sub_100004570;
    v26[4] = sub_10000539C;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v12 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013DE30;
    v19[3] = &unk_10027AF38;
    v19[4] = self;
    v20 = v7;
    v21 = v26;
    p_buf = &buf;
    v23 = a2;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013E4C8;
    v14[3] = &unk_10027AFB0;
    v16 = &buf;
    v17 = v24;
    v14[4] = self;
    v15 = v8;
    v18 = v26;
    v13 = [v12 performWriteTransactionWithBlock:v19 completionHandler:v14];

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);

    _Block_object_dispose(&buf, 8);
  }
}

+ (id)selfCrashResetReason
{
  if (qword_1002D2850 != -1)
  {
    sub_1001B61AC();
  }

  v3 = qword_1002D2858;

  return v3;
}

@end