@interface CPAnalyticsScreenManager
+ (BOOL)_isValidTabIdentifierChangedEvent:(id)a3;
+ (BOOL)isDebugScreenForViewName:(id)a3;
+ (BOOL)isValidScreenViewEvent:(id)a3;
+ (id)viewNameFromCombined:(id)a3;
- (CPAnalytics)cpAnalyticsInstance;
- (CPAnalyticsScreenManager)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4;
- (id)getDynamicProperty:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5;
- (id)screenViewNameAt:(unint64_t)a3;
- (void)_handleUnknownViewIfNeeded:(id)a3;
- (void)_initializeScreenViewTrackers:(id)a3;
- (void)_resetSessionWithTime:(id)a3;
- (void)_sendCPAnalyticsScreenViewEventWithEndTime:(id)a3;
- (void)_trackView:(id)a3 withEventName:(id)a4 viewID:(id)a5 eventTime:(id)a6;
- (void)_updateAppLifeCycle:(id)a3;
- (void)_updateCurrentScreenToViewName:(id)a3 withEventTime:(id)a4;
- (void)_updateCurrentTabIdentifier:(id)a3;
- (void)_updateScreenTracking:(id)a3;
- (void)_updateTabTracking:(id)a3;
- (void)processEvent:(id)a3;
- (void)registerSystemProperties:(id)a3;
- (void)updateWithConfig:(id)a3;
@end

@implementation CPAnalyticsScreenManager

- (CPAnalytics)cpAnalyticsInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_cpAnalyticsInstance);

  return WeakRetained;
}

- (id)getDynamicProperty:(id)a3 forEventName:(id)a4 payloadForSystemPropertyExtraction:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isEqualToString:@"cpa_common_appSection"])
  {
    v9 = [(CPAnalyticsScreenManager *)self currentTabIdentifierDescription];
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"cpa_common_currentScreen"])
  {
    v9 = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    goto LABEL_9;
  }

  if (([v7 isEqualToString:@"cpa_ui_priorScreen1"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"cpa_common_priorScreen"))
  {
    v10 = self;
    v11 = 1;
LABEL_8:
    v9 = [(CPAnalyticsScreenManager *)v10 screenViewNameAt:v11];
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen2"])
  {
    v10 = self;
    v11 = 2;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen3"])
  {
    v10 = self;
    v11 = 3;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen4"])
  {
    v10 = self;
    v11 = 4;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen5"])
  {
    v10 = self;
    v11 = 5;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen6"])
  {
    v10 = self;
    v11 = 6;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen7"])
  {
    v10 = self;
    v11 = 7;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen8"])
  {
    v10 = self;
    v11 = 8;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"cpa_ui_priorScreen9"])
  {
    v10 = self;
    v11 = 9;
    goto LABEL_8;
  }

  if (![v7 isEqualToString:@"cpa_common_numScreensViewed"])
  {
    if ([v7 isEqualToString:@"cpa_isTrackedScreenView"] && (objc_msgSend(v8, "objectForKeyedSubscript:", @"className"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = MEMORY[0x277CCABB0];
      v17 = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
      v12 = [v16 numberWithBool:{objc_msgSend(v17, "containsObject:", v15)}];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_10;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPAnalyticsScreenManager screensViewCount](self, "screensViewCount")}];
LABEL_9:
  v12 = v9;
LABEL_10:

  return v12;
}

- (void)registerSystemProperties:(id)a3
{
  v4 = a3;
  [v4 addDynamicProperty:@"cpa_common_appSection" withProvider:self];
  [v4 addDynamicProperty:@"cpa_common_currentScreen" withProvider:self];
  [v4 addDynamicProperty:@"cpa_common_priorScreen" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen1" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen2" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen3" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen4" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen5" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen6" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen7" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen8" withProvider:self];
  [v4 addDynamicProperty:@"cpa_ui_priorScreen9" withProvider:self];
  [v4 addDynamicProperty:@"cpa_common_numScreensViewed" withProvider:self];
  [v4 addDynamicProperty:@"cpa_isTrackedScreenView" withProvider:self];
}

- (void)_sendCPAnalyticsScreenViewEventWithEndTime:(id)a3
{
  v22 = a3;
  v4 = [(CPAnalyticsScreenManager *)self priorViews];
  if ([v4 count])
  {
    v5 = [(CPAnalyticsScreenManager *)self currentScreenStartTime];

    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = [(CPAnalyticsScreenManager *)self currentScreenStartTime];
    [v22 timeIntervalSinceDate:v6];
    v8 = v7;

    v4 = [MEMORY[0x277CCABB0] numberWithDouble:round(v8 * 100.0) / 100.0];
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[CPAnalyticsScreenManager priorViewsMaxIndex](self, "priorViewsMaxIndex") + 2}];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPAnalyticsScreenManager screensViewCount](self, "screensViewCount")}];
    [v9 setObject:v10 forKey:@"cpa_common_numScreensViewed"];

    [v9 setObject:v4 forKey:@"cpa_ui_timeOnScreen"];
    v11 = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    [v9 setObject:v11 forKey:@"cpa_common_currentScreen"];

    v12 = [(CPAnalyticsScreenManager *)self screenViewNameAt:1];
    [v9 setObject:v12 forKey:@"cpa_common_priorScreen"];

    v13 = [(CPAnalyticsScreenManager *)self currentTabIdentifierDescription];
    [v9 setObject:v13 forKey:@"cpa_common_appSection"];

    v14 = [(CPAnalyticsScreenManager *)self priorViews];
    v15 = [v14 count];

    if (v15 >= 2)
    {
      v16 = 1;
      do
      {
        v17 = [(CPAnalyticsScreenManager *)self screenViewNameAt:v16];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", @"cpa_ui_priorScreen", v16];
        [v9 setObject:v17 forKey:v18];

        ++v16;
        v19 = [(CPAnalyticsScreenManager *)self priorViews];
        v20 = [v19 count];
      }

      while (v16 < v20);
    }

    v21 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    [v21 sendEvent:@"com.apple.photos.CPAnalytics.screenView" withPayload:v9];
  }

LABEL_8:
}

- (void)_updateCurrentScreenToViewName:(id)a3 withEventTime:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:v6];
  [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:v6];

  v8 = [(CPAnalyticsScreenManager *)self priorViews];
  [v8 insertObject:v7 atIndex:0];

  v9 = [(CPAnalyticsScreenManager *)self priorViews];
  v10 = [v9 count];
  v11 = [(CPAnalyticsScreenManager *)self priorViewsMaxIndex];

  if (v10 > v11)
  {
    v12 = [(CPAnalyticsScreenManager *)self priorViews];
    [v12 removeLastObject];
  }

  v13 = [(CPAnalyticsScreenManager *)self screensViewCount]+ 1;

  [(CPAnalyticsScreenManager *)self setScreensViewCount:v13];
}

- (void)_trackView:(id)a3 withEventName:(id)a4 viewID:(id)a5 eventTime:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [CPAnalyticsScreenManager combinedViewName:v25 withID:a5];
  if ([@"com.apple.photos.CPAnalytics.viewDidDisappear" isEqualToString:v10])
  {
    v13 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    v14 = [v13 lastObject];
    v15 = [v12 isEqualToString:v14];

    v16 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    v17 = v16;
    if (!v15)
    {
      [v16 removeObject:v12];
      goto LABEL_10;
    }

    v18 = [v16 count];

    if (v18 == 1)
    {
      [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:v11];
      [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:0];
    }

    v19 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    [v19 removeObject:v12];

    v20 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
      v23 = [v22 lastObject];
      v17 = [CPAnalyticsScreenManager viewNameFromCombined:v23];

      [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:v17 withEventTime:v11];
LABEL_10:
    }
  }

  else if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:v10])
  {
    v24 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    [v24 addObject:v12];

    [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:v25 withEventTime:v11];
    [(CPAnalyticsScreenManager *)self _updateCurrentTabIdentifier:v10];
  }
}

- (void)_resetSessionWithTime:(id)a3
{
  v6 = a3;
  if ([(CPAnalyticsScreenManager *)self foregroundEventCount])
  {
    v4 = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    [(CPAnalyticsScreenManager *)self setScreensViewCount:0];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[CPAnalyticsScreenManager priorViewsMaxIndex](self, "priorViewsMaxIndex")}];
    [(CPAnalyticsScreenManager *)self setPriorViews:v5];

    if (v4)
    {
      [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:v4 withEventTime:v6];
    }
  }
}

- (void)_initializeScreenViewTrackers:(id)a3
{
  v11 = a3;
  [(CPAnalyticsScreenManager *)self updateWithConfig:v11];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(CPAnalyticsScreenManager *)self setCurrentlyOpenViews:v4];

  self->_priorViewsMaxIndex = 10;
  v5 = [v11 objectForKey:@"maxPriorViews"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v11 objectForKey:@"maxPriorViews"];
    v8 = [v7 unsignedIntegerValue];

    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 0x3E8)
    {
      v9 = 1000;
    }

    self->_priorViewsMaxIndex = v9;
  }

  [(CPAnalyticsScreenManager *)self setScreensViewCount:0];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_priorViewsMaxIndex];
  [(CPAnalyticsScreenManager *)self setPriorViews:v10];

  [(CPAnalyticsScreenManager *)self setCurrentTabIdentifierDescription:@"NoScreenName"];
  [(CPAnalyticsScreenManager *)self setForegroundEventCount:0];
}

- (id)screenViewNameAt:(unint64_t)a3
{
  v5 = [(CPAnalyticsScreenManager *)self priorViews];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = @"NoScreenName";
  }

  else
  {
    v7 = [(CPAnalyticsScreenManager *)self priorViews];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (void)_handleUnknownViewIfNeeded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 propertyForKey:@"className"];
  v6 = [(CPAnalyticsScreenManager *)self namesOfViewsToIgnore];
  if ([v6 containsObject:v5])
  {
    goto LABEL_8;
  }

  v7 = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
  if ([v7 containsObject:v5])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v8 = [objc_opt_class() isDebugScreenForViewName:v5];

  if ((v8 & 1) == 0)
  {
    v6 = [v4 copyRawPayload];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
    v9 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    v10 = [v9 systemProperties];

    v11 = [v4 name];
    v12 = [v10 propertyForKey:@"cpa_common_processName" forEventName:v11 payloadForSystemPropertyExtraction:0];
    [v7 setObject:v12 forKeyedSubscript:@"cpa_common_processName"];

    v13 = CPAnalyticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_debug_impl(&dword_24260A000, v13, OS_LOG_TYPE_DEBUG, "Unknown view: %@. Add this view to 'appState' destination in CP Analytics config.", &v16, 0xCu);
    }

    v14 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    [v14 sendEvent:@"com.apple.photos.CPAnalytics.ScreenManager.unknownView" withPayload:v7];

    goto LABEL_7;
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentTabIdentifier:(id)a3
{
  if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:a3])
  {
    v4 = [(CPAnalyticsScreenManager *)self pendingTabIdentifierDescription];

    if (v4)
    {
      v5 = [(CPAnalyticsScreenManager *)self pendingTabIdentifierDescription];
      [(CPAnalyticsScreenManager *)self setCurrentTabIdentifierDescription:v5];

      [(CPAnalyticsScreenManager *)self setPendingTabIdentifierDescription:0];
    }
  }
}

- (void)_updateTabTracking:(id)a3
{
  v5 = a3;
  if ([CPAnalyticsScreenManager _isValidTabIdentifierChangedEvent:?])
  {
    v4 = [v5 propertyForKey:@"tabIdentifierDescription"];
    [(CPAnalyticsScreenManager *)self setPendingTabIdentifierDescription:v4];
  }
}

- (void)_updateScreenTracking:(id)a3
{
  v10 = a3;
  if ([CPAnalyticsScreenManager isValidScreenViewEvent:?])
  {
    v4 = [v10 propertyForKey:@"className"];
    v5 = [v10 propertyForKey:@"viewID"];
    v6 = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = [v10 name];
      v9 = [v10 timestamp];
      [(CPAnalyticsScreenManager *)self _trackView:v4 withEventName:v8 viewID:v5 eventTime:v9];
    }

    else
    {
      [(CPAnalyticsScreenManager *)self _handleUnknownViewIfNeeded:v10];
    }
  }
}

- (void)_updateAppLifeCycle:(id)a3
{
  v14 = a3;
  v4 = [v14 name];
  v5 = [v4 isEqualToString:@"com.apple.photos.CPAnalytics.appDidBecomeActive"];

  if (v5)
  {
    v6 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    -[CPAnalyticsScreenManager setAppVisiblePeriodSignpostID:](self, "setAppVisiblePeriodSignpostID:", [v6 startSignpost]);

    v7 = [v14 timestamp];
    [(CPAnalyticsScreenManager *)self _resetSessionWithTime:v7];

    [(CPAnalyticsScreenManager *)self setForegroundEventCount:[(CPAnalyticsScreenManager *)self foregroundEventCount]+ 1];
  }

  else
  {
    v8 = [v14 name];
    v9 = [v8 isEqualToString:@"com.apple.photos.CPAnalytics.appWillResignActive"];

    if (v9)
    {
      v10 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
      v11 = [(CPAnalyticsScreenManager *)self appVisiblePeriodSignpostID];
      v12 = [v14 copyRawPayload];
      [v10 endSignpost:v11 forEventName:@"com.apple.photos.CPAnalytics.signpost.appVisiblePeriod" withPayload:v12];

      [(CPAnalyticsScreenManager *)self setAppVisiblePeriodSignpostID:0];
      v13 = [v14 timestamp];
      [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:v13];

      [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:0];
    }
  }
}

- (void)processEvent:(id)a3
{
  v4 = a3;
  [(CPAnalyticsScreenManager *)self _updateAppLifeCycle:v4];
  [(CPAnalyticsScreenManager *)self _updateScreenTracking:v4];
  [(CPAnalyticsScreenManager *)self _updateTabTracking:v4];
}

- (void)updateWithConfig:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"trackViews"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 objectForKeyedSubscript:@"trackViews"];
    v8 = [(CPAnalyticsScreenManager *)self namesOfViewsToIgnore];
    v9 = [v8 copy];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          if ([v9 containsObject:v15])
          {
            p_super = CPAnalyticsLog();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v15;
              _os_log_error_impl(&dword_24260A000, p_super, OS_LOG_TYPE_ERROR, "View %@ is in ignore list. It cannot be tracked.", buf, 0xCu);
            }

            v24 = v10;
            goto LABEL_27;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    namesOfViewsToTrack = self->_namesOfViewsToTrack;
    v17 = [v4 objectForKeyedSubscript:@"trackViews"];
    v18 = [(NSSet *)namesOfViewsToTrack setByAddingObjectsFromArray:v17];
    v19 = self->_namesOfViewsToTrack;
    self->_namesOfViewsToTrack = v18;
  }

  v20 = [v4 objectForKeyedSubscript:@"ignoreViews"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [v4 objectForKeyedSubscript:@"ignoreViews"];
    v23 = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
    v9 = [v23 copy];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v34 + 1) + 8 * j);
          if ([v9 containsObject:{v29, v34}])
          {
            p_super = CPAnalyticsLog();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v29;
              _os_log_error_impl(&dword_24260A000, p_super, OS_LOG_TYPE_ERROR, "View %@ is in track list. It cannot be ignored.", buf, 0xCu);
            }

            v10 = v24;
            goto LABEL_27;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    namesOfViewsToIgnore = self->_namesOfViewsToIgnore;
    v10 = [v4 objectForKeyedSubscript:@"ignoreViews"];
    v31 = [(NSSet *)namesOfViewsToIgnore setByAddingObjectsFromArray:v10];
    p_super = &self->_namesOfViewsToIgnore->super;
    self->_namesOfViewsToIgnore = v31;
LABEL_27:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsScreenManager)initWithConfig:(id)a3 cpAnalyticsInstance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CPAnalyticsScreenManager;
  v8 = [(CPAnalyticsScreenManager *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
    namesOfViewsToTrack = v8->_namesOfViewsToTrack;
    v8->_namesOfViewsToTrack = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB98]);
    namesOfViewsToIgnore = v8->_namesOfViewsToIgnore;
    v8->_namesOfViewsToIgnore = v11;

    v13 = [v7 systemProperties];
    [(CPAnalyticsScreenManager *)v8 registerSystemProperties:v13];

    [(CPAnalyticsScreenManager *)v8 _initializeScreenViewTrackers:v6];
    [(CPAnalyticsScreenManager *)v8 setCpAnalyticsInstance:v7];
    [(CPAnalyticsScreenManager *)v8 setCurrentTabIdentifierDescription:@"NoScreenName"];
  }

  return v8;
}

+ (BOOL)_isValidTabIdentifierChangedEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 name];
  v5 = [@"com.apple.photos.CPAnalytics.tabIdentifierChanged" isEqualToString:v4];

  if (v5)
  {
    v6 = [v3 propertyForKey:@"tabIdentifierDescription"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = CPAnalyticsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v3 name];
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v11;
        _os_log_debug_impl(&dword_24260A000, v8, OS_LOG_TYPE_DEBUG, "Tab identifier description '%@' is not a string for event %@.", &v12, 0x16u);
      }
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

+ (id)viewNameFromCombined:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"//"];
  v4 = [v3 firstObject];

  return v4;
}

+ (BOOL)isValidScreenViewEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 name];
  if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:v4])
  {

    goto LABEL_4;
  }

  v5 = [v3 name];
  v6 = [@"com.apple.photos.CPAnalytics.viewDidDisappear" isEqualToString:v5];

  if (v6)
  {
LABEL_4:
    v7 = [v3 propertyForKey:@"className"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v3 propertyForKey:@"viewID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(v6) = 1;
LABEL_13:

        goto LABEL_14;
      }

      v9 = CPAnalyticsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v3 name];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v12;
        _os_log_debug_impl(&dword_24260A000, v9, OS_LOG_TYPE_DEBUG, "View ID '%@' is not a number for event %@.", &v13, 0x16u);
      }
    }

    else
    {
      v8 = CPAnalyticsLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
LABEL_12:
        LOBYTE(v6) = 0;
        goto LABEL_13;
      }

      v9 = [v3 name];
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_debug_impl(&dword_24260A000, v8, OS_LOG_TYPE_DEBUG, "Class name '%@' is not a string for event %@.", &v13, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isDebugScreenForViewName:(id)a3
{
  v3 = a3;
  v4 = 1;
  if ([v3 rangeOfString:@"debug" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 hasPrefix:@"PXSettings"];
  }

  return v4;
}

@end