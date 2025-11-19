@interface DBPassengerDisplay
- (CGRect)sceneFrameForApplication:(id)a3;
- (DBPassengerDisplay)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (NSString)description;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3;
- (id)sceneIdentifierForApplication:(id)a3;
- (void)invalidate;
@end

@implementation DBPassengerDisplay

- (DBPassengerDisplay)initWithRootScene:(id)a3 environmentConfiguration:(id)a4 defaultSceneWorkspaceIdentifier:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v50.receiver = self;
  v50.super_class = DBPassengerDisplay;
  v9 = [(DBScreenController *)&v50 initWithRootScene:a3 environmentConfiguration:v8 defaultSceneWorkspaceIdentifier:a5];
  if (v9)
  {
    v10 = [v8 displayConfiguration];
    [v8 addObserver:v9];
    v11 = [v8 session];
    [v11 addObserver:v9];

    if ([v8 supportsPassengerDisplay])
    {
      v12 = [(DBScreenController *)v9 displayInfo];
      v13 = [v12 supportsDDPContent];

      if (v13)
      {
        v14 = [_TtC9DashBoard15DBUISyncSession alloc];
        v15 = [(DBScreenController *)v9 environmentConfiguration];
        v16 = [v15 uisyncChannel];
        v17 = [(DBScreenController *)v9 environmentConfiguration];
        v18 = [v17 vehicleID];
        v19 = [(DBScreenController *)v9 displayInfo];
        v20 = [v19 identifier];
        v21 = [(DBUISyncSession *)v14 initWithChannel:v16 vehicleID:v18 displayID:v20];

        v22 = [[_TtC9DashBoard30DBDefaultUISyncSessionDelegate alloc] initWithUISyncSession:v21];
        [(DBPassengerDisplay *)v9 setUisyncSessionDelegate:v22];

        v23 = [(DBScreenController *)v9 environmentConfiguration];
        [v23 setUisyncSession:v21];

        v24 = [(DBScreenController *)v9 environmentConfiguration];
        v25 = [v24 uisyncSessionEventDelegate];
        v26 = [(DBPassengerDisplay *)v9 uisyncSessionDelegate];
        [v26 setEventDelegate:v25];
      }
    }

    v27 = [(DBScreenController *)v9 interestingWindow];
    [v8 currentViewAreaFrame];
    [v27 setFrame:?];

    [v10 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [_TtC9DashBoard17DBPassengerWindow alloc];
    v37 = [(DBScreenController *)v9 windowScene];
    v38 = [(DBPassengerWindow *)v36 initWithWindowScene:v37 frame:v29, v31, v33, v35];
    passengerWindow = v9->_passengerWindow;
    v9->_passengerWindow = v38;

    v40 = [_TtC9DashBoard36DBPassengerDisplayRootViewController alloc];
    v41 = [(DBScreenController *)v9 defaultSceneWorkspaceIdentifier];
    v42 = [(DBPassengerDisplayRootViewController *)v40 initWithEnvironment:v9 workspaceIdentifier:v41];
    rootVC = v9->_rootVC;
    v9->_rootVC = v42;

    [(DBPassengerWindow *)v9->_passengerWindow setRootViewController:v9->_rootVC];
    v44 = DBLogForCategory(0x17uLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v8 supportsDisplayPlugin];
      v48 = @"NO";
      if (v47)
      {
        v48 = @"YES";
      }

      *buf = 138543874;
      v52 = v46;
      v53 = 2082;
      v54 = "[DBPassengerDisplay initWithRootScene:environmentConfiguration:defaultSceneWorkspaceIdentifier:]";
      v55 = 2114;
      v56 = v48;
      _os_log_impl(&dword_248146000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}s: Display supports DDP content=%{public}@", buf, 0x20u);
    }

    [(DBPassengerWindow *)v9->_passengerWindow setHidden:0];
    kdebug_trace();
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DBPassengerDisplay *)self displayIdentity];
  v7 = [(DBScreenController *)self screenInfo];
  v8 = [v3 stringWithFormat:@"<%@ displayIdentity: %@. screenInfo: %@>", v5, v6, v7];

  return v8;
}

- (FBSDisplayIdentity)displayIdentity
{
  v2 = [(DBScreenController *)self environmentConfiguration];
  v3 = [v2 displayIdentity];

  return v3;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  v2 = [(DBScreenController *)self environmentConfiguration];
  v3 = [v2 displayConfiguration];

  return v3;
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v12 = v5;
    v13 = 2082;
    v14 = "[DBPassengerDisplay invalidate]";
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s", buf, 0x16u);
  }

  v6 = [(DBPassengerDisplay *)self rootVC];
  [v6 invalidate];

  v7 = [(DBScreenController *)self environmentConfiguration];
  v8 = [v7 session];
  [v8 removeObserver:self];

  v9 = [(DBPassengerDisplay *)self passengerWindow];
  [v9 setHidden:1];

  [(DBPassengerDisplay *)self setPassengerWindow:0];
  v10.receiver = self;
  v10.super_class = DBPassengerDisplay;
  [(DBScreenController *)&v10 invalidate];
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)a3
{
  v3 = 5.0;
  v4 = 10.0;
  v5 = 5.0;
  v6 = 10.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)sceneFrameForApplication:(id)a3
{
  v4 = a3;
  v5 = +[DBApplicationController sharedInstance];
  v6 = [v5 radioApplication];
  v7 = [v4 isEqual:v6];

  v8 = [(DBScreenController *)self environmentConfiguration];
  v9 = v8;
  if (v7)
  {
    [v8 screenScale];
    v11 = 1.0 / v10;

    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeScale(&v28, v11, v11);
    v12 = [(DBScreenController *)self environmentConfiguration];
    v13 = [v12 displayConfiguration];
    [v13 bounds];
    v27 = v28;
    v30 = CGRectApplyAffineTransform(v29, &v27);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  else
  {
    v18 = [v8 displayConfiguration];
    [v18 bounds];
    x = v19;
    y = v20;
    width = v21;
    height = v22;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)sceneIdentifierForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 appPolicy];
  if ([v5 launchUsingTemplateUI])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(DBPassengerDisplay *)self displayIdentity];
    v8 = DBTemplateUIHostBundleIdentifier;
LABEL_5:
    v9 = *v8;
    v10 = [v4 bundleIdentifier];
    [v6 stringWithFormat:@"%@:%@:%@:passenger", v7, v9, v10];
    goto LABEL_6;
  }

  if (([v5 launchUsingMusicUIService] & 1) != 0 || (objc_msgSend(v5, "isCarPlaySupported") & 1) == 0 && (objc_msgSend(v4, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsBackgroundMode:", *MEMORY[0x277D76778]), v13, v14))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(DBPassengerDisplay *)self displayIdentity];
    v8 = DBMusicUIServiceBundleIdentifier;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277CCACA8];
  v7 = [(DBPassengerDisplay *)self displayIdentity];
  v10 = [v4 bundleIdentifier];
  [v15 stringWithFormat:@"%@:%@", v7, v10, v16];
  v11 = LABEL_6:;

  return v11;
}

@end