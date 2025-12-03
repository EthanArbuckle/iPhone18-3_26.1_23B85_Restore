@interface JTViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (JTView)view;
- (NSMutableArray)suspendInteractionTags;
- (NSMutableDictionary)suspendedChildViewControllerRequests;
- (void)logSuspendedChildViewControllersToString:(id)string indentLevel:(int)level;
- (void)logSuspendedViewControllers;
- (void)resumeInteractionForChildViewControllersWithTag:(id)tag;
- (void)resumeInteractionWithTag:(id)tag;
- (void)setChildViewControllerInteractionEnabledWithRequest:(id)request enabled:(BOOL)enabled;
- (void)setView:(id)view;
- (void)suspendChildViewControllersInteractionWithTag:(id)tag timeout:(double)timeout excluding:(id)excluding;
- (void)suspendInteractionWithTag:(id)tag;
- (void)timeoutInteractionSuspended:(id)suspended;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation JTViewController

- (NSMutableDictionary)suspendedChildViewControllerRequests
{
  suspendedChildViewControllerRequests = self->_suspendedChildViewControllerRequests;
  if (!suspendedChildViewControllerRequests)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_suspendedChildViewControllerRequests;
    self->_suspendedChildViewControllerRequests = v4;

    suspendedChildViewControllerRequests = self->_suspendedChildViewControllerRequests;
  }

  return suspendedChildViewControllerRequests;
}

- (NSMutableArray)suspendInteractionTags
{
  suspendInteractionTags = self->_suspendInteractionTags;
  if (!suspendInteractionTags)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_suspendInteractionTags;
    self->_suspendInteractionTags = v4;

    suspendInteractionTags = self->_suspendInteractionTags;
  }

  return suspendInteractionTags;
}

- (void)logSuspendedViewControllers
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:100];
  [(JTViewController *)self logSuspendedChildViewControllersToString:v3 indentLevel:0];
  v4 = JFXLog_core();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [JTViewController logSuspendedViewControllers];
  }
}

- (void)logSuspendedChildViewControllersToString:(id)string indentLevel:(int)level
{
  v4 = *&level;
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  suspendInteractionTags = [(JTViewController *)self suspendInteractionTags];
  v8 = [suspendInteractionTags count];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    suspendInteractionTags2 = [(JTViewController *)self suspendInteractionTags];
    [stringCopy appendFormat:@"%*s%@ suspend count %lu\n", v4, " ", v10, objc_msgSend(suspendInteractionTags2, "count")];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    suspendInteractionTags3 = [(JTViewController *)self suspendInteractionTags];
    v13 = [suspendInteractionTags3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(suspendInteractionTags3);
          }

          [stringCopy appendFormat:@"%*s suspended with tag %@\n", v4, " ", *(*(&v27 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [suspendInteractionTags3 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  childViewControllers = [(JTViewController *)self childViewControllers];
  v18 = [childViewControllers countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v22 logSuspendedChildViewControllersToString:stringCopy indentLevel:(v4 + 1)];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [childViewControllers countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }
}

- (void)suspendInteractionWithTag:(id)tag
{
  tagCopy = tag;
  suspendInteractionTags = [(JTViewController *)self suspendInteractionTags];
  [suspendInteractionTags addObject:tagCopy];

  view = [(JTViewController *)self view];
  LODWORD(suspendInteractionTags) = [view isUserInteractionEnabled];

  if (suspendInteractionTags)
  {
    view2 = [(JTViewController *)self view];
    [view2 setUserInteractionEnabled:0];
  }
}

- (void)resumeInteractionWithTag:(id)tag
{
  tagCopy = tag;
  suspendInteractionTags = [(JTViewController *)self suspendInteractionTags];
  [suspendInteractionTags removeObject:tagCopy];

  suspendInteractionTags2 = [(JTViewController *)self suspendInteractionTags];
  if (![suspendInteractionTags2 count])
  {
    view = [(JTViewController *)self view];
    isUserInteractionEnabled = [view isUserInteractionEnabled];

    if (isUserInteractionEnabled)
    {
      return;
    }

    suspendInteractionTags2 = [(JTViewController *)self view];
    [suspendInteractionTags2 setUserInteractionEnabled:1];
  }
}

- (JTView)view
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  view = [(JTViewController *)&v4 view];

  return view;
}

- (void)setView:(id)view
{
  v3.receiver = self;
  v3.super_class = JTViewController;
  [(JTViewController *)&v3 setView:view];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = JTViewController;
  [(JTViewController *)&v8 viewDidLoad];
  if ([(JTViewController *)self debuggingUIEnabled])
  {
    view = [(JTViewController *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      debuggingUIEnabled = [(JTViewController *)self debuggingUIEnabled];
      view2 = [(JTViewController *)self view];
      [view2 setDebuggingUIEnabled:debuggingUIEnabled];
    }

    view3 = [(JTViewController *)self view];
    [view3 layoutIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  [(JTViewController *)&v4 viewDidAppear:appear];
  [(JTViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  [(JTViewController *)&v4 viewDidDisappear:disappear];
  [(JTViewController *)self resignFirstResponder];
}

- (void)suspendChildViewControllersInteractionWithTag:(id)tag timeout:(double)timeout excluding:(id)excluding
{
  tagCopy = tag;
  excludingCopy = excluding;
  suspendedChildViewControllerRequests = [(JTViewController *)self suspendedChildViewControllerRequests];
  v11 = [suspendedChildViewControllerRequests objectForKeyedSubscript:tagCopy];

  if (v11)
  {
    v12 = JFXLog_core();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [JTViewController suspendChildViewControllersInteractionWithTag:timeout:excluding:];
    }
  }

  else
  {
    v11 = [JTSuspendedInteractionRequest requestWithTag:tagCopy excludedViewControllers:excludingCopy];
    [(JTViewController *)self setChildViewControllerInteractionEnabledWithRequest:v11 enabled:0];
    suspendedChildViewControllerRequests2 = [(JTViewController *)self suspendedChildViewControllerRequests];
    [suspendedChildViewControllerRequests2 setObject:v11 forKeyedSubscript:tagCopy];

    if (timeout != 0.0)
    {
      [(JTViewController *)self performSelector:sel_timeoutInteractionSuspended_ withObject:tagCopy afterDelay:timeout];
    }
  }
}

- (void)resumeInteractionForChildViewControllersWithTag:(id)tag
{
  tagCopy = tag;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeoutInteractionSuspended_ object:tagCopy];
  suspendedChildViewControllerRequests = [(JTViewController *)self suspendedChildViewControllerRequests];
  v6 = [suspendedChildViewControllerRequests objectForKeyedSubscript:tagCopy];

  if (v6)
  {
    [(JTViewController *)self setChildViewControllerInteractionEnabledWithRequest:v6 enabled:1];
    suspendedChildViewControllerRequests2 = [(JTViewController *)self suspendedChildViewControllerRequests];
    [suspendedChildViewControllerRequests2 removeObjectForKey:tagCopy];
  }

  else
  {
    suspendedChildViewControllerRequests2 = JFXLog_core();
    if (os_log_type_enabled(suspendedChildViewControllerRequests2, OS_LOG_TYPE_DEBUG))
    {
      [JTViewController resumeInteractionForChildViewControllersWithTag:];
    }
  }
}

- (void)timeoutInteractionSuspended:(id)suspended
{
  suspendedCopy = suspended;
  v5 = JFXLog_core();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JTViewController timeoutInteractionSuspended:];
  }

  [(JTViewController *)self resumeInteractionForChildViewControllersWithTag:suspendedCopy];
}

- (void)setChildViewControllerInteractionEnabledWithRequest:(id)request enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CBEB18];
  childViewControllers = [(JTViewController *)self childViewControllers];
  v9 = [v7 arrayWithArray:childViewControllers];

  excludedChildViewControllers = [requestCopy excludedChildViewControllers];

  if (excludedChildViewControllers)
  {
    excludedChildViewControllers2 = [requestCopy excludedChildViewControllers];
    [v9 removeObjectsInArray:excludedChildViewControllers2];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [requestCopy tag];
          if (enabledCopy)
          {
            [v17 resumeInteractionWithTag:v18];
          }

          else
          {
            [v17 suspendInteractionWithTag:v18];
          }
        }

        else
        {
          v18 = JFXLog_core();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v24 = v17;
            _os_log_debug_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEBUG, "expected %@ to be a JTViewController", buf, 0xCu);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v14);
  }
}

- (BOOL)prefersStatusBarHidden
{
  viewControllerDrivingStatusAppearance = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  if (viewControllerDrivingStatusAppearance)
  {
    viewControllerDrivingStatusAppearance2 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
    LOBYTE(v5) = [viewControllerDrivingStatusAppearance2 prefersStatusBarHidden];
  }

  else
  {
    viewControllerDrivingStatusAppearance2 = [MEMORY[0x277D75418] currentDevice];
    v5 = [viewControllerDrivingStatusAppearance2 jfx_hasTrueDepthFrontCamera] ^ 1;
  }

  return v5;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  viewControllerDrivingStatusAppearance = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  if (!viewControllerDrivingStatusAppearance)
  {
    return 0;
  }

  v4 = viewControllerDrivingStatusAppearance;
  viewControllerDrivingStatusAppearance2 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  NSSelectorFromString(&cfstr_Prefershomeind.isa);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  viewControllerDrivingStatusAppearance3 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  v8 = [viewControllerDrivingStatusAppearance3 performSelector:NSSelectorFromString(&cfstr_Prefershomeind.isa)] != 0;

  return v8;
}

@end