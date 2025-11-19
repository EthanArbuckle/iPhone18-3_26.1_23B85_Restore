@interface NTKECreateWatchFaceViewController
- (NTKECreateWatchFaceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_deviceDidBecomeActive;
- (void)_displayChooser;
- (void)_faceAdded:(id)a3;
- (void)_finishedLoadingAssets;
- (void)_loadImages;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)viewDidLoad;
@end

@implementation NTKECreateWatchFaceViewController

- (NTKECreateWatchFaceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100004914();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

  v30.receiver = self;
  v30.super_class = NTKECreateWatchFaceViewController;
  v11 = [(NTKECreateWatchFaceViewController *)&v30 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v13 = qword_100011388;
    v34 = qword_100011388;
    if (!qword_100011388)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v36 = sub_1000062E8;
      v37 = &unk_10000C348;
      v38 = &v31;
      v14 = sub_100006174();
      v15 = dlsym(v14, "NTKCFaceDetailViewControllerDidAddFace");
      *(v38[1] + 24) = v15;
      qword_100011388 = *(v38[1] + 24);
      v13 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (v13)
    {
      [v12 addObserver:v11 selector:"_faceAdded:" name:*v13 object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:v11 selector:"_deviceDidBecomeActive" name:CLKActiveDeviceChangedNotification object:0];

      v17 = dispatch_semaphore_create(0);
      v31 = 0;
      v32 = &v31;
      v33 = 0x2050000000;
      v18 = qword_100011390;
      v34 = qword_100011390;
      if (!qword_100011390)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v36 = sub_100006338;
        v37 = &unk_10000C348;
        v38 = &v31;
        sub_100006338(&buf);
        v18 = v32[3];
      }

      v19 = v18;
      _Block_object_dispose(&v31, 8);
      v20 = [v18 sharedAppLibrary];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100004A28;
      v28[3] = &unk_10000C3A8;
      v21 = v17;
      v29 = v21;
      [v20 prewarmCompanionDaemonWithCompletion:v28];

      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v22 = off_100011398;
      v34 = off_100011398;
      if (!off_100011398)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v36 = sub_100006390;
        v37 = &unk_10000C348;
        v38 = &v31;
        v23 = sub_100006174();
        v24 = dlsym(v23, "NTKSharedRemoteComplicationProvider");
        *(v38[1] + 24) = v24;
        off_100011398 = *(v38[1] + 24);
        v22 = v32[3];
      }

      _Block_object_dispose(&v31, 8);
      if (v22)
      {
        v22();

        v31 = 0;
        v32 = &v31;
        v33 = 0x2050000000;
        v25 = qword_1000113A0;
        v34 = qword_1000113A0;
        if (!qword_1000113A0)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v36 = sub_1000063E0;
          v37 = &unk_10000C348;
          v38 = &v31;
          sub_1000063E0(&buf);
          v25 = v32[3];
        }

        v26 = v25;
        _Block_object_dispose(&v31, 8);
        [v25 flushCommitHandlers];

        goto LABEL_15;
      }

      sub_100006668();
    }

    else
    {
      sub_100006668();
    }

    __break(1u);
  }

LABEL_15:

  return v11;
}

- (void)viewDidLoad
{
  v3 = sub_100004914();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    assetsLoaded = self->_assetsLoaded;
    *buf = 67109120;
    *&buf[4] = assetsLoaded;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "viewDidLoad (assetsLoaded? %d)", buf, 8u);
  }

  v24.receiver = self;
  v24.super_class = NTKECreateWatchFaceViewController;
  [(NTKECreateWatchFaceViewController *)&v24 viewDidLoad];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = qword_1000113A8;
  v28 = qword_1000113A8;
  if (!qword_1000113A8)
  {
    *buf = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100006438;
    v32 = &unk_10000C348;
    v33 = &v25;
    sub_100006438(buf);
    v5 = v26[3];
  }

  v6 = v5;
  _Block_object_dispose(&v25, 8);
  v7 = [v5 alloc];
  v8 = objc_opt_new();
  v9 = [v7 initWithRootViewController:v8];

  v10 = [(NTKECreateWatchFaceViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v9 view];
  [v19 setBounds:{v12, v14, v16, v18}];

  [(NTKECreateWatchFaceViewController *)self addChildViewController:v9];
  v20 = [(NTKECreateWatchFaceViewController *)self view];
  v21 = [v9 view];
  [v20 addSubview:v21];

  [v9 didMoveToParentViewController:self];
  v22 = +[UIColor systemBackgroundColor];
  v23 = [v9 view];
  [v23 setBackgroundColor:v22];

  [(NTKECreateWatchFaceViewController *)self setNtkNavController:v9];
  if (self->_assetsLoaded)
  {
    [(NTKECreateWatchFaceViewController *)self _displayChooser];
  }
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKECreateWatchFaceViewController;
  [(NTKECreateWatchFaceViewController *)&v4 beginRequestWithExtensionContext:a3];
  [(NTKECreateWatchFaceViewController *)self _loadImages];
}

- (void)_faceAdded:(id)a3
{
  v6 = [(NTKECreateWatchFaceViewController *)self extensionContext];
  v4 = [(NTKECreateWatchFaceViewController *)self extensionContext];
  v5 = [v4 inputItems];
  [v6 completeRequestReturningItems:v5 completionHandler:0];
}

- (void)_loadImages
{
  v3 = sub_100004914();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_loadImages", buf, 2u);
  }

  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004EA0;
  block[3] = &unk_10000C3A8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_finishedLoadingAssets
{
  if ([(NTKECreateWatchFaceViewController *)self isViewLoaded])
  {

    [(NTKECreateWatchFaceViewController *)self _displayChooser];
  }

  else
  {
    v3 = sub_100004914();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "waiting for viewDidLoad", v4, 2u);
    }

    [(NTKECreateWatchFaceViewController *)self setAssetsLoaded:1];
  }
}

- (void)_displayChooser
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005D9C;
  v12[3] = &unk_10000C3A8;
  v12[4] = self;
  v3 = objc_retainBlock(v12);
  v4 = [(NTKECreateWatchFaceViewController *)self ntkNavController];
  v5 = [v4 viewControllers];
  v6 = [v5 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    (v3[2])(v3);
  }

  else
  {
    v10[2] = sub_100005E6C;
    v10[3] = &unk_10000C4B0;
    v11 = v3;
    v8 = [CLKRenderingContext sharedRenderingContext:_NSConcreteStackBlock];
    v9 = [v8 device];
    sub_100005E6C(v10, v9);
  }
}

- (void)_deviceDidBecomeActive
{
  if ([(NTKECreateWatchFaceViewController *)self isViewLoaded])
  {

    [(NTKECreateWatchFaceViewController *)self _displayChooser];
  }
}

@end