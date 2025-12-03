@interface _GCConfigurationMobileAssetManager
- (_GCConfigurationMobileAssetManager)initWithProvider:(id)provider;
- (id)assets;
- (id)checkForNewAssets:(BOOL)assets forceCatalogRefresh:(BOOL)refresh completion:(id)completion;
- (id)configurationBundleURLsForType:(id)type;
- (id)currentAsset:(BOOL)asset;
- (id)lastUpdateDate;
@end

@implementation _GCConfigurationMobileAssetManager

- (_GCConfigurationMobileAssetManager)initWithProvider:(id)provider
{
  v12.receiver = self;
  v12.super_class = _GCConfigurationMobileAssetManager;
  v3 = [(_GCConfigurationMobileAssetManager *)&v12 init];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = sub_100001128();
  v6 = dispatch_queue_create_with_target_V2("com.apple.mobileasset.GameController.DB", v4, v5);
  v7 = *(v3 + 1);
  *(v3 + 1) = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create_with_target_V2("com.apple.mobileasset.GameController.DB [Locator]", v8, *(v3 + 1));
  v10 = *(v3 + 2);
  *(v3 + 2) = v9;

  return v3;
}

- (id)configurationBundleURLsForType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentDBAsset = selfCopy->_currentDBAsset;
  if (currentDBAsset)
  {
    v7 = [(MAAsset *)currentDBAsset configurationBundleURLsForType:typeCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    locatorQueue = selfCopy->_locatorQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000013F0;
    v12[3] = &unk_1000103F8;
    v12[4] = selfCopy;
    selfCopy = [GCFuture futureOnQueue:locatorQueue withBlock:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001A2C;
    v10[3] = &unk_100010420;
    v11 = typeCopy;
    v7 = [(_GCConfigurationMobileAssetManager *)selfCopy thenWithResult:v10];
  }

  return v7;
}

- (id)assets
{
  v2 = sub_100001C9C(self);
  v3 = [v2 thenSynchronouslyWithResult:&stru_1000104A0];

  return v3;
}

- (id)currentAsset:(BOOL)asset
{
  if (asset)
  {
    locatorQueue = self->_locatorQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001EA0;
    v8[3] = &unk_1000103F8;
    v8[4] = self;
    v4 = [GCFuture futureOnQueue:locatorQueue withBlock:v8];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (self->_currentDBAsset)
  {
    v4 = [GCFuture futureWithResult:?];
    goto LABEL_5;
  }

  v7 = +[NSNull null];
  v5 = [GCFuture futureWithResult:v7];

LABEL_6:

  return v5;
}

- (id)lastUpdateDate
{
  v2 = sub_100001C9C(self);
  v3 = [v2 thenSynchronouslyWithResult:&stru_1000104E0];

  return v3;
}

- (id)checkForNewAssets:(BOOL)assets forceCatalogRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_updateProgress || !assets)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    objc_sync_exit(selfCopy);

    v25 = 0;
  }

  else
  {
    if (selfCopy->_updateCallbacks)
    {
      v27 = +[NSAssertionHandler currentHandler];
      [v27 handleFailureInMethod:a2 object:selfCopy file:@"_GCConfigurationMobileAssetManager.m" lineNumber:217 description:@"Assertion failed: _updateProgress == ((void *)0) && _updateCallbacks == ((void *)0)"];
    }

    v11 = objc_opt_new();
    updateCallbacks = selfCopy->_updateCallbacks;
    selfCopy->_updateCallbacks = v11;

    v13 = objc_opt_new();
    updateProgress = selfCopy->_updateProgress;
    selfCopy->_updateProgress = v13;

    v15 = selfCopy->_updateCallbacks;
    v16 = objc_retainBlock(completionCopy);
    [(NSMutableArray *)v15 addObject:v16];

    v17 = selfCopy->_updateProgress;
    objc_sync_exit(selfCopy);

    v18 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Check For Updates", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v18, &state);
    v19 = selfCopy->_privateQueue;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_1000024E0;
    v37[4] = sub_1000024F0;
    v38 = 0;
    [(NSProgress *)v17 setPausable:0];
    [(NSProgress *)v17 setCancellable:1];
    [(NSProgress *)v17 setLocalizedDescription:@"Checking for updates"];
    if (refreshCopy)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    [(NSProgress *)v17 setTotalUnitCount:v20];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000024F8;
    v34[3] = &unk_100010530;
    v21 = v19;
    v35 = v21;
    v36 = v37;
    [(NSProgress *)v17 setCancellationHandler:v34];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000025C0;
    v33[3] = &unk_100010580;
    v33[4] = selfCopy;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100002A18;
    v28[3] = &unk_100010780;
    v30 = objc_retainBlock(v33);
    v31 = v37;
    v28[4] = selfCopy;
    v32 = refreshCopy;
    v22 = v17;
    v29 = v22;
    v23 = v30;
    dispatch_async(v21, v28);
    v24 = v29;
    v25 = v22;

    _Block_object_dispose(v37, 8);
    os_activity_scope_leave(&state);
  }

  return v25;
}

@end