@interface IntentHandler
- (OS_os_log)log;
- (WFGizmoFaceCollectionProvider)provider;
- (void)handleGetCurrentGizmoFace:(id)a3 completion:(id)a4;
- (void)handleListGizmoFaces:(id)a3 completion:(id)a4;
- (void)handleSetGizmoFace:(id)a3 completion:(id)a4;
- (void)provideFaceOptionsForSetGizmoFace:(id)a3 withCompletion:(id)a4;
- (void)resolveFaceForSetGizmoFace:(id)a3 withCompletion:(id)a4;
@end

@implementation IntentHandler

- (WFGizmoFaceCollectionProvider)provider
{
  provider = self->_provider;
  if (!provider)
  {
    v4 = objc_alloc_init(WFGizmoFaceCollectionProvider);
    v5 = self->_provider;
    self->_provider = v4;

    provider = self->_provider;
  }

  return provider;
}

- (void)handleListGizmoFaces:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(IntentHandler *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "providing face list", buf, 2u);
  }

  v7 = [(IntentHandler *)self provider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001AD0;
  v9[3] = &unk_100008210;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 getWatchFaceObjectsForLibraryCollection:v9];
}

- (void)handleGetCurrentGizmoFace:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(IntentHandler *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "providing current face", buf, 2u);
  }

  v7 = [(IntentHandler *)self provider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001DE0;
  v9[3] = &unk_100008210;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 getWatchFaceObjectsForLibraryCollection:v9];
}

- (void)provideFaceOptionsForSetGizmoFace:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [(IntentHandler *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "providing face options", buf, 2u);
  }

  v7 = [(IntentHandler *)self provider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000020E8;
  v9[3] = &unk_100008210;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v7 getWatchFaceObjectsForLibraryCollection:v9];
}

- (void)resolveFaceForSetGizmoFace:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IntentHandler *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "starting resolve", buf, 2u);
  }

  v9 = [v6 face];

  v10 = [(IntentHandler *)self log];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "resolve: success", v15, 2u);
    }

    v12 = [v6 face];
    v13 = [COSWatchFaceResolutionResult successWithResolvedWatchFace:v12];
    v7[2](v7, v13);
  }

  else
  {
    if (v11)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "resolve: needsValue", v14, 2u);
    }

    v12 = +[COSWatchFaceResolutionResult needsValue];
    v7[2](v7, v12);
  }
}

- (void)handleSetGizmoFace:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IntentHandler *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "starting handle", buf, 2u);
  }

  v9 = [(IntentHandler *)self provider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002450;
  v12[3] = &unk_100008238;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 getWatchFaceObjectsForLibraryCollection:v12];
}

- (OS_os_log)log
{
  log = self->_log;
  if (!log)
  {
    v4 = os_log_create("BridgeIntents", "COSSetGizmoFaceIntent");
    v5 = self->_log;
    self->_log = v4;

    log = self->_log;
  }

  return log;
}

@end