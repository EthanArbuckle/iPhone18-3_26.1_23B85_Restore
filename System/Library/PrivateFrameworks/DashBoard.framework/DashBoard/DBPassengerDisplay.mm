@interface DBPassengerDisplay
- (CGRect)sceneFrameForApplication:(id)application;
- (DBPassengerDisplay)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSDisplayIdentity)displayIdentity;
- (NSString)description;
- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application;
- (id)sceneIdentifierForApplication:(id)application;
- (void)invalidate;
@end

@implementation DBPassengerDisplay

- (DBPassengerDisplay)initWithRootScene:(id)scene environmentConfiguration:(id)configuration defaultSceneWorkspaceIdentifier:(id)identifier
{
  v57 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v50.receiver = self;
  v50.super_class = DBPassengerDisplay;
  v9 = [(DBScreenController *)&v50 initWithRootScene:scene environmentConfiguration:configurationCopy defaultSceneWorkspaceIdentifier:identifier];
  if (v9)
  {
    displayConfiguration = [configurationCopy displayConfiguration];
    [configurationCopy addObserver:v9];
    session = [configurationCopy session];
    [session addObserver:v9];

    if ([configurationCopy supportsPassengerDisplay])
    {
      displayInfo = [(DBScreenController *)v9 displayInfo];
      supportsDDPContent = [displayInfo supportsDDPContent];

      if (supportsDDPContent)
      {
        v14 = [_TtC9DashBoard15DBUISyncSession alloc];
        environmentConfiguration = [(DBScreenController *)v9 environmentConfiguration];
        uisyncChannel = [environmentConfiguration uisyncChannel];
        environmentConfiguration2 = [(DBScreenController *)v9 environmentConfiguration];
        vehicleID = [environmentConfiguration2 vehicleID];
        displayInfo2 = [(DBScreenController *)v9 displayInfo];
        identifier = [displayInfo2 identifier];
        v21 = [(DBUISyncSession *)v14 initWithChannel:uisyncChannel vehicleID:vehicleID displayID:identifier];

        v22 = [[_TtC9DashBoard30DBDefaultUISyncSessionDelegate alloc] initWithUISyncSession:v21];
        [(DBPassengerDisplay *)v9 setUisyncSessionDelegate:v22];

        environmentConfiguration3 = [(DBScreenController *)v9 environmentConfiguration];
        [environmentConfiguration3 setUisyncSession:v21];

        environmentConfiguration4 = [(DBScreenController *)v9 environmentConfiguration];
        uisyncSessionEventDelegate = [environmentConfiguration4 uisyncSessionEventDelegate];
        uisyncSessionDelegate = [(DBPassengerDisplay *)v9 uisyncSessionDelegate];
        [uisyncSessionDelegate setEventDelegate:uisyncSessionEventDelegate];
      }
    }

    interestingWindow = [(DBScreenController *)v9 interestingWindow];
    [configurationCopy currentViewAreaFrame];
    [interestingWindow setFrame:?];

    [displayConfiguration bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [_TtC9DashBoard17DBPassengerWindow alloc];
    windowScene = [(DBScreenController *)v9 windowScene];
    v38 = [(DBPassengerWindow *)v36 initWithWindowScene:windowScene frame:v29, v31, v33, v35];
    passengerWindow = v9->_passengerWindow;
    v9->_passengerWindow = v38;

    v40 = [_TtC9DashBoard36DBPassengerDisplayRootViewController alloc];
    defaultSceneWorkspaceIdentifier = [(DBScreenController *)v9 defaultSceneWorkspaceIdentifier];
    v42 = [(DBPassengerDisplayRootViewController *)v40 initWithEnvironment:v9 workspaceIdentifier:defaultSceneWorkspaceIdentifier];
    rootVC = v9->_rootVC;
    v9->_rootVC = v42;

    [(DBPassengerWindow *)v9->_passengerWindow setRootViewController:v9->_rootVC];
    v44 = DBLogForCategory(0x17uLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      supportsDisplayPlugin = [configurationCopy supportsDisplayPlugin];
      v48 = @"NO";
      if (supportsDisplayPlugin)
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
  displayIdentity = [(DBPassengerDisplay *)self displayIdentity];
  screenInfo = [(DBScreenController *)self screenInfo];
  v8 = [v3 stringWithFormat:@"<%@ displayIdentity: %@. screenInfo: %@>", v5, displayIdentity, screenInfo];

  return v8;
}

- (FBSDisplayIdentity)displayIdentity
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  displayIdentity = [environmentConfiguration displayIdentity];

  return displayIdentity;
}

- (FBSDisplayConfiguration)displayConfiguration
{
  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  displayConfiguration = [environmentConfiguration displayConfiguration];

  return displayConfiguration;
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

  rootVC = [(DBPassengerDisplay *)self rootVC];
  [rootVC invalidate];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  session = [environmentConfiguration session];
  [session removeObserver:self];

  passengerWindow = [(DBPassengerDisplay *)self passengerWindow];
  [passengerWindow setHidden:1];

  [(DBPassengerDisplay *)self setPassengerWindow:0];
  v10.receiver = self;
  v10.super_class = DBPassengerDisplay;
  [(DBScreenController *)&v10 invalidate];
}

- (UIEdgeInsets)safeAreaInsetsForApplication:(id)application
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

- (CGRect)sceneFrameForApplication:(id)application
{
  applicationCopy = application;
  v5 = +[DBApplicationController sharedInstance];
  radioApplication = [v5 radioApplication];
  v7 = [applicationCopy isEqual:radioApplication];

  environmentConfiguration = [(DBScreenController *)self environmentConfiguration];
  v9 = environmentConfiguration;
  if (v7)
  {
    [environmentConfiguration screenScale];
    v11 = 1.0 / v10;

    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeScale(&v28, v11, v11);
    environmentConfiguration2 = [(DBScreenController *)self environmentConfiguration];
    displayConfiguration = [environmentConfiguration2 displayConfiguration];
    [displayConfiguration bounds];
    v27 = v28;
    v30 = CGRectApplyAffineTransform(v29, &v27);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  else
  {
    displayConfiguration2 = [environmentConfiguration displayConfiguration];
    [displayConfiguration2 bounds];
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

- (id)sceneIdentifierForApplication:(id)application
{
  applicationCopy = application;
  appPolicy = [applicationCopy appPolicy];
  if ([appPolicy launchUsingTemplateUI])
  {
    v6 = MEMORY[0x277CCACA8];
    displayIdentity = [(DBPassengerDisplay *)self displayIdentity];
    v8 = DBTemplateUIHostBundleIdentifier;
LABEL_5:
    v9 = *v8;
    bundleIdentifier = [applicationCopy bundleIdentifier];
    [v6 stringWithFormat:@"%@:%@:%@:passenger", displayIdentity, v9, bundleIdentifier];
    goto LABEL_6;
  }

  if (([appPolicy launchUsingMusicUIService] & 1) != 0 || (objc_msgSend(appPolicy, "isCarPlaySupported") & 1) == 0 && (objc_msgSend(applicationCopy, "info"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "supportsBackgroundMode:", *MEMORY[0x277D76778]), v13, v14))
  {
    v6 = MEMORY[0x277CCACA8];
    displayIdentity = [(DBPassengerDisplay *)self displayIdentity];
    v8 = DBMusicUIServiceBundleIdentifier;
    goto LABEL_5;
  }

  v15 = MEMORY[0x277CCACA8];
  displayIdentity = [(DBPassengerDisplay *)self displayIdentity];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  [v15 stringWithFormat:@"%@:%@", displayIdentity, bundleIdentifier, v16];
  v11 = LABEL_6:;

  return v11;
}

@end