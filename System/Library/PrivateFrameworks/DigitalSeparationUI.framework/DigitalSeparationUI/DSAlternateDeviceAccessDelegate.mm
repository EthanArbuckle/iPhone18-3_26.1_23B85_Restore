@interface DSAlternateDeviceAccessDelegate
- (BOOL)isNetworkReachable;
- (DSAlternateDeviceAccessDelegate)initWithPresentingViewController:(id)controller;
- (id)deepLinkForCurrentFlowAndPane;
- (void)displayNetworkError;
- (void)exitFlowForRatchetWait;
- (void)finishFlow;
- (void)goToCustomizeSharing;
- (void)learnMorePressedForController:(id)controller withURL:(id)l;
- (void)pushNextPane;
- (void)pushPaneAfterPaneType:(Class)type;
- (void)pushPaneType:(Class)type;
- (void)quickExit;
- (void)sendSummaryAnalyticsWithEventName:(id)name;
- (void)setUpNavigation;
- (void)startFlowWithType:(int64_t)type;
- (void)tearDown;
@end

@implementation DSAlternateDeviceAccessDelegate

- (DSAlternateDeviceAccessDelegate)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = DSAlternateDeviceAccessDelegate;
  v5 = [(DSAlternateDeviceAccessDelegate *)&v9 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.DigitalSeparation", "DSAlternateDeviceAccessDelegate");
    v7 = DSLog_16;
    DSLog_16 = v6;

    [(DSAlternateDeviceAccessDelegate *)v5 setNavigationController:controllerCopy];
    [(DSAlternateDeviceAccessDelegate *)v5 setUpNavigation];
  }

  return v5;
}

- (void)setUpNavigation
{
  v4 = objc_alloc_init(DSNavigationManager);
  v3 = [(DSNavigationManager *)v4 navigationOrderForFlowType:2];
  [(DSAlternateDeviceAccessDelegate *)self setNavigationOrder:v3];
}

- (void)tearDown
{
  v10 = *MEMORY[0x277D85DE8];
  navigationController = [(DSAlternateDeviceAccessDelegate *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DSAlternateDeviceAccessDelegate *)self finishFlow];
  }

  else
  {
    v5 = DSLog_16;
    if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_INFO))
    {
      v6 = @"nothing";
      if (visibleViewController)
      {
        v6 = visibleViewController;
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_248C7E000, v5, OS_LOG_TYPE_INFO, "Navigation controller is showing %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)pushPaneAfterPaneType:(Class)type
{
  navigationOrder = [(DSAlternateDeviceAccessDelegate *)self navigationOrder];
  v6 = [navigationOrder indexOfObject:type];
  v7 = v6 + 1;
  v8 = v6 == -1;

  if (v8)
  {
    goto LABEL_12;
  }

  navigationOrder2 = [(DSAlternateDeviceAccessDelegate *)self navigationOrder];
  v10 = [navigationOrder2 count];

  if (v7 >= v10 || (-[DSAlternateDeviceAccessDelegate navigationOrder](self, "navigationOrder"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 objectAtIndex:v7], v11, !v12))
  {
LABEL_12:
    if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
    {
      [DSAlternateDeviceAccessDelegate pushPaneAfterPaneType:];
    }

    [(DSAlternateDeviceAccessDelegate *)self finishFlow];
  }

  else
  {

    [(DSAlternateDeviceAccessDelegate *)self pushPaneType:v12];
  }
}

- (void)startFlowWithType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  if (type == 2)
  {
    navigationOrder = [(DSAlternateDeviceAccessDelegate *)self navigationOrder];
    firstObject = [navigationOrder firstObject];

    if (firstObject)
    {
      [(DSAlternateDeviceAccessDelegate *)self pushPaneType:firstObject];
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      navigationController = [(DSAlternateDeviceAccessDelegate *)self navigationController];
      viewControllers = [navigationController viewControllers];

      v9 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(viewControllers);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            if ([v13 conformsToProtocol:&unk_285BCA3F8])
            {
              [v6 addObject:v13];
            }
          }

          v10 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      navigationController2 = [(DSAlternateDeviceAccessDelegate *)self navigationController];
      [navigationController2 setViewControllers:v6];
    }

    else
    {
      if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
      {
        [DSAlternateDeviceAccessDelegate startFlowWithType:];
      }

      [(DSAlternateDeviceAccessDelegate *)self finishFlow];
    }
  }

  else
  {
    v16 = DSLog_16;
    if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
    {
      [(DSAlternateDeviceAccessDelegate *)type startFlowWithType:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pushPaneType:(Class)type
{
  v5 = objc_alloc_init(type);
  [v5 setDelegate:self];
  navigationController = [(DSAlternateDeviceAccessDelegate *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)goToCustomizeSharing
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/SAFETY_CHECK/DEVICE_ACCESS/"];
  [defaultWorkspace openSensitiveURL:v2 withOptions:MEMORY[0x277CBEC10]];
}

- (void)finishFlow
{
  navigationController = [(DSAlternateDeviceAccessDelegate *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)deepLinkForCurrentFlowAndPane
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate deepLinkForCurrentFlowAndPane];
  }

  return &stru_285BA4988;
}

- (BOOL)isNetworkReachable
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate isNetworkReachable];
  }

  return 1;
}

- (void)displayNetworkError
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate displayNetworkError];
  }
}

- (void)exitFlowForRatchetWait
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate exitFlowForRatchetWait];
  }
}

- (void)learnMorePressedForController:(id)controller withURL:(id)l
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate learnMorePressedForController:withURL:];
  }
}

- (void)pushNextPane
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate pushNextPane];
  }
}

- (void)quickExit
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate quickExit];
  }
}

- (void)sendSummaryAnalyticsWithEventName:(id)name
{
  if (os_log_type_enabled(DSLog_16, OS_LOG_TYPE_ERROR))
  {
    [DSAlternateDeviceAccessDelegate sendSummaryAnalyticsWithEventName:];
  }
}

- (void)startFlowWithType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "DSAlternateDeviceAccessDelegate can't handle %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end