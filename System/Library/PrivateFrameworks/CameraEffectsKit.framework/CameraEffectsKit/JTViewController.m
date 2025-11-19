@interface JTViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (JTView)view;
- (NSMutableArray)suspendInteractionTags;
- (NSMutableDictionary)suspendedChildViewControllerRequests;
- (void)logSuspendedChildViewControllersToString:(id)a3 indentLevel:(int)a4;
- (void)logSuspendedViewControllers;
- (void)resumeInteractionForChildViewControllersWithTag:(id)a3;
- (void)resumeInteractionWithTag:(id)a3;
- (void)setChildViewControllerInteractionEnabledWithRequest:(id)a3 enabled:(BOOL)a4;
- (void)setView:(id)a3;
- (void)suspendChildViewControllersInteractionWithTag:(id)a3 timeout:(double)a4 excluding:(id)a5;
- (void)suspendInteractionWithTag:(id)a3;
- (void)timeoutInteractionSuspended:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
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

- (void)logSuspendedChildViewControllersToString:(id)a3 indentLevel:(int)a4
{
  v4 = *&a4;
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(JTViewController *)self suspendInteractionTags];
  v8 = [v7 count];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(JTViewController *)self suspendInteractionTags];
    [v6 appendFormat:@"%*s%@ suspend count %lu\n", v4, " ", v10, objc_msgSend(v11, "count")];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [(JTViewController *)self suspendInteractionTags];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v12);
          }

          [v6 appendFormat:@"%*s suspended with tag %@\n", v4, " ", *(*(&v27 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(JTViewController *)self childViewControllers];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v22 logSuspendedChildViewControllersToString:v6 indentLevel:(v4 + 1)];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }
}

- (void)suspendInteractionWithTag:(id)a3
{
  v4 = a3;
  v5 = [(JTViewController *)self suspendInteractionTags];
  [v5 addObject:v4];

  v6 = [(JTViewController *)self view];
  LODWORD(v5) = [v6 isUserInteractionEnabled];

  if (v5)
  {
    v7 = [(JTViewController *)self view];
    [v7 setUserInteractionEnabled:0];
  }
}

- (void)resumeInteractionWithTag:(id)a3
{
  v4 = a3;
  v5 = [(JTViewController *)self suspendInteractionTags];
  [v5 removeObject:v4];

  v8 = [(JTViewController *)self suspendInteractionTags];
  if (![v8 count])
  {
    v6 = [(JTViewController *)self view];
    v7 = [v6 isUserInteractionEnabled];

    if (v7)
    {
      return;
    }

    v8 = [(JTViewController *)self view];
    [v8 setUserInteractionEnabled:1];
  }
}

- (JTView)view
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  v2 = [(JTViewController *)&v4 view];

  return v2;
}

- (void)setView:(id)a3
{
  v3.receiver = self;
  v3.super_class = JTViewController;
  [(JTViewController *)&v3 setView:a3];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = JTViewController;
  [(JTViewController *)&v8 viewDidLoad];
  if ([(JTViewController *)self debuggingUIEnabled])
  {
    v3 = [(JTViewController *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [(JTViewController *)self debuggingUIEnabled];
      v6 = [(JTViewController *)self view];
      [v6 setDebuggingUIEnabled:v5];
    }

    v7 = [(JTViewController *)self view];
    [v7 layoutIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  [(JTViewController *)&v4 viewDidAppear:a3];
  [(JTViewController *)self becomeFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = JTViewController;
  [(JTViewController *)&v4 viewDidDisappear:a3];
  [(JTViewController *)self resignFirstResponder];
}

- (void)suspendChildViewControllersInteractionWithTag:(id)a3 timeout:(double)a4 excluding:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(JTViewController *)self suspendedChildViewControllerRequests];
  v11 = [v10 objectForKeyedSubscript:v8];

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
    v11 = [JTSuspendedInteractionRequest requestWithTag:v8 excludedViewControllers:v9];
    [(JTViewController *)self setChildViewControllerInteractionEnabledWithRequest:v11 enabled:0];
    v13 = [(JTViewController *)self suspendedChildViewControllerRequests];
    [v13 setObject:v11 forKeyedSubscript:v8];

    if (a4 != 0.0)
    {
      [(JTViewController *)self performSelector:sel_timeoutInteractionSuspended_ withObject:v8 afterDelay:a4];
    }
  }
}

- (void)resumeInteractionForChildViewControllersWithTag:(id)a3
{
  v4 = a3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_timeoutInteractionSuspended_ object:v4];
  v5 = [(JTViewController *)self suspendedChildViewControllerRequests];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [(JTViewController *)self setChildViewControllerInteractionEnabledWithRequest:v6 enabled:1];
    v7 = [(JTViewController *)self suspendedChildViewControllerRequests];
    [v7 removeObjectForKey:v4];
  }

  else
  {
    v7 = JFXLog_core();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [JTViewController resumeInteractionForChildViewControllersWithTag:];
    }
  }
}

- (void)timeoutInteractionSuspended:(id)a3
{
  v4 = a3;
  v5 = JFXLog_core();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [JTViewController timeoutInteractionSuspended:];
  }

  [(JTViewController *)self resumeInteractionForChildViewControllersWithTag:v4];
}

- (void)setChildViewControllerInteractionEnabledWithRequest:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB18];
  v8 = [(JTViewController *)self childViewControllers];
  v9 = [v7 arrayWithArray:v8];

  v10 = [v6 excludedChildViewControllers];

  if (v10)
  {
    v11 = [v6 excludedChildViewControllers];
    [v9 removeObjectsInArray:v11];
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
          v18 = [v6 tag];
          if (v4)
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
  v3 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  if (v3)
  {
    v4 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
    LOBYTE(v5) = [v4 prefersStatusBarHidden];
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 jfx_hasTrueDepthFrontCamera] ^ 1;
  }

  return v5;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  NSSelectorFromString(&cfstr_Prefershomeind.isa);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(JTViewController *)self viewControllerDrivingStatusAppearance];
  v8 = [v7 performSelector:NSSelectorFromString(&cfstr_Prefershomeind.isa)] != 0;

  return v8;
}

@end