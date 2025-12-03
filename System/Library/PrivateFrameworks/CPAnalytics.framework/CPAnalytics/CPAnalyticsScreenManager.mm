@interface CPAnalyticsScreenManager
+ (BOOL)_isValidTabIdentifierChangedEvent:(id)event;
+ (BOOL)isDebugScreenForViewName:(id)name;
+ (BOOL)isValidScreenViewEvent:(id)event;
+ (id)viewNameFromCombined:(id)combined;
- (CPAnalytics)cpAnalyticsInstance;
- (CPAnalyticsScreenManager)initWithConfig:(id)config cpAnalyticsInstance:(id)instance;
- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction;
- (id)screenViewNameAt:(unint64_t)at;
- (void)_handleUnknownViewIfNeeded:(id)needed;
- (void)_initializeScreenViewTrackers:(id)trackers;
- (void)_resetSessionWithTime:(id)time;
- (void)_sendCPAnalyticsScreenViewEventWithEndTime:(id)time;
- (void)_trackView:(id)view withEventName:(id)name viewID:(id)d eventTime:(id)time;
- (void)_updateAppLifeCycle:(id)cycle;
- (void)_updateCurrentScreenToViewName:(id)name withEventTime:(id)time;
- (void)_updateCurrentTabIdentifier:(id)identifier;
- (void)_updateScreenTracking:(id)tracking;
- (void)_updateTabTracking:(id)tracking;
- (void)processEvent:(id)event;
- (void)registerSystemProperties:(id)properties;
- (void)updateWithConfig:(id)config;
@end

@implementation CPAnalyticsScreenManager

- (CPAnalytics)cpAnalyticsInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_cpAnalyticsInstance);

  return WeakRetained;
}

- (id)getDynamicProperty:(id)property forEventName:(id)name payloadForSystemPropertyExtraction:(id)extraction
{
  propertyCopy = property;
  extractionCopy = extraction;
  if ([propertyCopy isEqualToString:@"cpa_common_appSection"])
  {
    currentTabIdentifierDescription = [(CPAnalyticsScreenManager *)self currentTabIdentifierDescription];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"cpa_common_currentScreen"])
  {
    currentTabIdentifierDescription = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    goto LABEL_9;
  }

  if (([propertyCopy isEqualToString:@"cpa_ui_priorScreen1"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"cpa_common_priorScreen"))
  {
    selfCopy9 = self;
    v11 = 1;
LABEL_8:
    currentTabIdentifierDescription = [(CPAnalyticsScreenManager *)selfCopy9 screenViewNameAt:v11];
    goto LABEL_9;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen2"])
  {
    selfCopy9 = self;
    v11 = 2;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen3"])
  {
    selfCopy9 = self;
    v11 = 3;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen4"])
  {
    selfCopy9 = self;
    v11 = 4;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen5"])
  {
    selfCopy9 = self;
    v11 = 5;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen6"])
  {
    selfCopy9 = self;
    v11 = 6;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen7"])
  {
    selfCopy9 = self;
    v11 = 7;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen8"])
  {
    selfCopy9 = self;
    v11 = 8;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"cpa_ui_priorScreen9"])
  {
    selfCopy9 = self;
    v11 = 9;
    goto LABEL_8;
  }

  if (![propertyCopy isEqualToString:@"cpa_common_numScreensViewed"])
  {
    if ([propertyCopy isEqualToString:@"cpa_isTrackedScreenView"] && (objc_msgSend(extractionCopy, "objectForKeyedSubscript:", @"className"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = v14;
      v16 = MEMORY[0x277CCABB0];
      namesOfViewsToTrack = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
      v12 = [v16 numberWithBool:{objc_msgSend(namesOfViewsToTrack, "containsObject:", v15)}];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_10;
  }

  currentTabIdentifierDescription = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPAnalyticsScreenManager screensViewCount](self, "screensViewCount")}];
LABEL_9:
  v12 = currentTabIdentifierDescription;
LABEL_10:

  return v12;
}

- (void)registerSystemProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy addDynamicProperty:@"cpa_common_appSection" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_common_currentScreen" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_common_priorScreen" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen1" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen2" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen3" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen4" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen5" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen6" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen7" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen8" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_ui_priorScreen9" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_common_numScreensViewed" withProvider:self];
  [propertiesCopy addDynamicProperty:@"cpa_isTrackedScreenView" withProvider:self];
}

- (void)_sendCPAnalyticsScreenViewEventWithEndTime:(id)time
{
  timeCopy = time;
  priorViews = [(CPAnalyticsScreenManager *)self priorViews];
  if ([priorViews count])
  {
    currentScreenStartTime = [(CPAnalyticsScreenManager *)self currentScreenStartTime];

    if (!currentScreenStartTime)
    {
      goto LABEL_8;
    }

    currentScreenStartTime2 = [(CPAnalyticsScreenManager *)self currentScreenStartTime];
    [timeCopy timeIntervalSinceDate:currentScreenStartTime2];
    v8 = v7;

    priorViews = [MEMORY[0x277CCABB0] numberWithDouble:round(v8 * 100.0) / 100.0];
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[CPAnalyticsScreenManager priorViewsMaxIndex](self, "priorViewsMaxIndex") + 2}];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPAnalyticsScreenManager screensViewCount](self, "screensViewCount")}];
    [v9 setObject:v10 forKey:@"cpa_common_numScreensViewed"];

    [v9 setObject:priorViews forKey:@"cpa_ui_timeOnScreen"];
    currentScreenViewName = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    [v9 setObject:currentScreenViewName forKey:@"cpa_common_currentScreen"];

    v12 = [(CPAnalyticsScreenManager *)self screenViewNameAt:1];
    [v9 setObject:v12 forKey:@"cpa_common_priorScreen"];

    currentTabIdentifierDescription = [(CPAnalyticsScreenManager *)self currentTabIdentifierDescription];
    [v9 setObject:currentTabIdentifierDescription forKey:@"cpa_common_appSection"];

    priorViews2 = [(CPAnalyticsScreenManager *)self priorViews];
    v15 = [priorViews2 count];

    if (v15 >= 2)
    {
      v16 = 1;
      do
      {
        v17 = [(CPAnalyticsScreenManager *)self screenViewNameAt:v16];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", @"cpa_ui_priorScreen", v16];
        [v9 setObject:v17 forKey:v18];

        ++v16;
        priorViews3 = [(CPAnalyticsScreenManager *)self priorViews];
        v20 = [priorViews3 count];
      }

      while (v16 < v20);
    }

    cpAnalyticsInstance = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    [cpAnalyticsInstance sendEvent:@"com.apple.photos.CPAnalytics.screenView" withPayload:v9];
  }

LABEL_8:
}

- (void)_updateCurrentScreenToViewName:(id)name withEventTime:(id)time
{
  timeCopy = time;
  nameCopy = name;
  [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:timeCopy];
  [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:timeCopy];

  priorViews = [(CPAnalyticsScreenManager *)self priorViews];
  [priorViews insertObject:nameCopy atIndex:0];

  priorViews2 = [(CPAnalyticsScreenManager *)self priorViews];
  v10 = [priorViews2 count];
  priorViewsMaxIndex = [(CPAnalyticsScreenManager *)self priorViewsMaxIndex];

  if (v10 > priorViewsMaxIndex)
  {
    priorViews3 = [(CPAnalyticsScreenManager *)self priorViews];
    [priorViews3 removeLastObject];
  }

  v13 = [(CPAnalyticsScreenManager *)self screensViewCount]+ 1;

  [(CPAnalyticsScreenManager *)self setScreensViewCount:v13];
}

- (void)_trackView:(id)view withEventName:(id)name viewID:(id)d eventTime:(id)time
{
  viewCopy = view;
  nameCopy = name;
  timeCopy = time;
  v12 = [CPAnalyticsScreenManager combinedViewName:viewCopy withID:d];
  if ([@"com.apple.photos.CPAnalytics.viewDidDisappear" isEqualToString:nameCopy])
  {
    currentlyOpenViews = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    lastObject = [currentlyOpenViews lastObject];
    v15 = [v12 isEqualToString:lastObject];

    currentlyOpenViews2 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    v17 = currentlyOpenViews2;
    if (!v15)
    {
      [currentlyOpenViews2 removeObject:v12];
      goto LABEL_10;
    }

    v18 = [currentlyOpenViews2 count];

    if (v18 == 1)
    {
      [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:timeCopy];
      [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:0];
    }

    currentlyOpenViews3 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    [currentlyOpenViews3 removeObject:v12];

    currentlyOpenViews4 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    v21 = [currentlyOpenViews4 count];

    if (v21)
    {
      currentlyOpenViews5 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
      lastObject2 = [currentlyOpenViews5 lastObject];
      v17 = [CPAnalyticsScreenManager viewNameFromCombined:lastObject2];

      [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:v17 withEventTime:timeCopy];
LABEL_10:
    }
  }

  else if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:nameCopy])
  {
    currentlyOpenViews6 = [(CPAnalyticsScreenManager *)self currentlyOpenViews];
    [currentlyOpenViews6 addObject:v12];

    [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:viewCopy withEventTime:timeCopy];
    [(CPAnalyticsScreenManager *)self _updateCurrentTabIdentifier:nameCopy];
  }
}

- (void)_resetSessionWithTime:(id)time
{
  timeCopy = time;
  if ([(CPAnalyticsScreenManager *)self foregroundEventCount])
  {
    currentScreenViewName = [(CPAnalyticsScreenManager *)self currentScreenViewName];
    [(CPAnalyticsScreenManager *)self setScreensViewCount:0];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[CPAnalyticsScreenManager priorViewsMaxIndex](self, "priorViewsMaxIndex")}];
    [(CPAnalyticsScreenManager *)self setPriorViews:v5];

    if (currentScreenViewName)
    {
      [(CPAnalyticsScreenManager *)self _updateCurrentScreenToViewName:currentScreenViewName withEventTime:timeCopy];
    }
  }
}

- (void)_initializeScreenViewTrackers:(id)trackers
{
  trackersCopy = trackers;
  [(CPAnalyticsScreenManager *)self updateWithConfig:trackersCopy];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(CPAnalyticsScreenManager *)self setCurrentlyOpenViews:v4];

  self->_priorViewsMaxIndex = 10;
  v5 = [trackersCopy objectForKey:@"maxPriorViews"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [trackersCopy objectForKey:@"maxPriorViews"];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = unsignedIntegerValue;
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

- (id)screenViewNameAt:(unint64_t)at
{
  priorViews = [(CPAnalyticsScreenManager *)self priorViews];
  v6 = [priorViews count];

  if (v6 <= at)
  {
    v8 = @"NoScreenName";
  }

  else
  {
    priorViews2 = [(CPAnalyticsScreenManager *)self priorViews];
    v8 = [priorViews2 objectAtIndex:at];
  }

  return v8;
}

- (void)_handleUnknownViewIfNeeded:(id)needed
{
  v18 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy propertyForKey:@"className"];
  namesOfViewsToIgnore = [(CPAnalyticsScreenManager *)self namesOfViewsToIgnore];
  if ([namesOfViewsToIgnore containsObject:v5])
  {
    goto LABEL_8;
  }

  namesOfViewsToTrack = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
  if ([namesOfViewsToTrack containsObject:v5])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v8 = [objc_opt_class() isDebugScreenForViewName:v5];

  if ((v8 & 1) == 0)
  {
    namesOfViewsToIgnore = [neededCopy copyRawPayload];
    namesOfViewsToTrack = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:namesOfViewsToIgnore];
    cpAnalyticsInstance = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    systemProperties = [cpAnalyticsInstance systemProperties];

    name = [neededCopy name];
    v12 = [systemProperties propertyForKey:@"cpa_common_processName" forEventName:name payloadForSystemPropertyExtraction:0];
    [namesOfViewsToTrack setObject:v12 forKeyedSubscript:@"cpa_common_processName"];

    v13 = CPAnalyticsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_debug_impl(&dword_24260A000, v13, OS_LOG_TYPE_DEBUG, "Unknown view: %@. Add this view to 'appState' destination in CP Analytics config.", &v16, 0xCu);
    }

    cpAnalyticsInstance2 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    [cpAnalyticsInstance2 sendEvent:@"com.apple.photos.CPAnalytics.ScreenManager.unknownView" withPayload:namesOfViewsToTrack];

    goto LABEL_7;
  }

LABEL_9:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentTabIdentifier:(id)identifier
{
  if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:identifier])
  {
    pendingTabIdentifierDescription = [(CPAnalyticsScreenManager *)self pendingTabIdentifierDescription];

    if (pendingTabIdentifierDescription)
    {
      pendingTabIdentifierDescription2 = [(CPAnalyticsScreenManager *)self pendingTabIdentifierDescription];
      [(CPAnalyticsScreenManager *)self setCurrentTabIdentifierDescription:pendingTabIdentifierDescription2];

      [(CPAnalyticsScreenManager *)self setPendingTabIdentifierDescription:0];
    }
  }
}

- (void)_updateTabTracking:(id)tracking
{
  trackingCopy = tracking;
  if ([CPAnalyticsScreenManager _isValidTabIdentifierChangedEvent:?])
  {
    v4 = [trackingCopy propertyForKey:@"tabIdentifierDescription"];
    [(CPAnalyticsScreenManager *)self setPendingTabIdentifierDescription:v4];
  }
}

- (void)_updateScreenTracking:(id)tracking
{
  trackingCopy = tracking;
  if ([CPAnalyticsScreenManager isValidScreenViewEvent:?])
  {
    v4 = [trackingCopy propertyForKey:@"className"];
    v5 = [trackingCopy propertyForKey:@"viewID"];
    namesOfViewsToTrack = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
    v7 = [namesOfViewsToTrack containsObject:v4];

    if (v7)
    {
      name = [trackingCopy name];
      timestamp = [trackingCopy timestamp];
      [(CPAnalyticsScreenManager *)self _trackView:v4 withEventName:name viewID:v5 eventTime:timestamp];
    }

    else
    {
      [(CPAnalyticsScreenManager *)self _handleUnknownViewIfNeeded:trackingCopy];
    }
  }
}

- (void)_updateAppLifeCycle:(id)cycle
{
  cycleCopy = cycle;
  name = [cycleCopy name];
  v5 = [name isEqualToString:@"com.apple.photos.CPAnalytics.appDidBecomeActive"];

  if (v5)
  {
    cpAnalyticsInstance = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
    -[CPAnalyticsScreenManager setAppVisiblePeriodSignpostID:](self, "setAppVisiblePeriodSignpostID:", [cpAnalyticsInstance startSignpost]);

    timestamp = [cycleCopy timestamp];
    [(CPAnalyticsScreenManager *)self _resetSessionWithTime:timestamp];

    [(CPAnalyticsScreenManager *)self setForegroundEventCount:[(CPAnalyticsScreenManager *)self foregroundEventCount]+ 1];
  }

  else
  {
    name2 = [cycleCopy name];
    v9 = [name2 isEqualToString:@"com.apple.photos.CPAnalytics.appWillResignActive"];

    if (v9)
    {
      cpAnalyticsInstance2 = [(CPAnalyticsScreenManager *)self cpAnalyticsInstance];
      appVisiblePeriodSignpostID = [(CPAnalyticsScreenManager *)self appVisiblePeriodSignpostID];
      copyRawPayload = [cycleCopy copyRawPayload];
      [cpAnalyticsInstance2 endSignpost:appVisiblePeriodSignpostID forEventName:@"com.apple.photos.CPAnalytics.signpost.appVisiblePeriod" withPayload:copyRawPayload];

      [(CPAnalyticsScreenManager *)self setAppVisiblePeriodSignpostID:0];
      timestamp2 = [cycleCopy timestamp];
      [(CPAnalyticsScreenManager *)self _sendCPAnalyticsScreenViewEventWithEndTime:timestamp2];

      [(CPAnalyticsScreenManager *)self setCurrentScreenStartTime:0];
    }
  }
}

- (void)processEvent:(id)event
{
  eventCopy = event;
  [(CPAnalyticsScreenManager *)self _updateAppLifeCycle:eventCopy];
  [(CPAnalyticsScreenManager *)self _updateScreenTracking:eventCopy];
  [(CPAnalyticsScreenManager *)self _updateTabTracking:eventCopy];
}

- (void)updateWithConfig:(id)config
{
  v46 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [configCopy objectForKeyedSubscript:@"trackViews"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [configCopy objectForKeyedSubscript:@"trackViews"];
    namesOfViewsToIgnore = [(CPAnalyticsScreenManager *)self namesOfViewsToIgnore];
    v9 = [namesOfViewsToIgnore copy];

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
    v17 = [configCopy objectForKeyedSubscript:@"trackViews"];
    v18 = [(NSSet *)namesOfViewsToTrack setByAddingObjectsFromArray:v17];
    v19 = self->_namesOfViewsToTrack;
    self->_namesOfViewsToTrack = v18;
  }

  v20 = [configCopy objectForKeyedSubscript:@"ignoreViews"];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v22 = [configCopy objectForKeyedSubscript:@"ignoreViews"];
    namesOfViewsToTrack = [(CPAnalyticsScreenManager *)self namesOfViewsToTrack];
    v9 = [namesOfViewsToTrack copy];

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
    v10 = [configCopy objectForKeyedSubscript:@"ignoreViews"];
    v31 = [(NSSet *)namesOfViewsToIgnore setByAddingObjectsFromArray:v10];
    p_super = &self->_namesOfViewsToIgnore->super;
    self->_namesOfViewsToIgnore = v31;
LABEL_27:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (CPAnalyticsScreenManager)initWithConfig:(id)config cpAnalyticsInstance:(id)instance
{
  configCopy = config;
  instanceCopy = instance;
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

    systemProperties = [instanceCopy systemProperties];
    [(CPAnalyticsScreenManager *)v8 registerSystemProperties:systemProperties];

    [(CPAnalyticsScreenManager *)v8 _initializeScreenViewTrackers:configCopy];
    [(CPAnalyticsScreenManager *)v8 setCpAnalyticsInstance:instanceCopy];
    [(CPAnalyticsScreenManager *)v8 setCurrentTabIdentifierDescription:@"NoScreenName"];
  }

  return v8;
}

+ (BOOL)_isValidTabIdentifierChangedEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  name = [eventCopy name];
  v5 = [@"com.apple.photos.CPAnalytics.tabIdentifierChanged" isEqualToString:name];

  if (v5)
  {
    v6 = [eventCopy propertyForKey:@"tabIdentifierDescription"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = CPAnalyticsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        name2 = [eventCopy name];
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = name2;
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

+ (id)viewNameFromCombined:(id)combined
{
  v3 = [combined componentsSeparatedByString:@"//"];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (BOOL)isValidScreenViewEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  name = [eventCopy name];
  if ([@"com.apple.photos.CPAnalytics.viewDidAppear" isEqualToString:name])
  {

    goto LABEL_4;
  }

  name2 = [eventCopy name];
  v6 = [@"com.apple.photos.CPAnalytics.viewDidDisappear" isEqualToString:name2];

  if (v6)
  {
LABEL_4:
    v7 = [eventCopy propertyForKey:@"className"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [eventCopy propertyForKey:@"viewID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(v6) = 1;
LABEL_13:

        goto LABEL_14;
      }

      name4 = CPAnalyticsLog();
      if (os_log_type_enabled(name4, OS_LOG_TYPE_DEBUG))
      {
        name3 = [eventCopy name];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = name3;
        _os_log_debug_impl(&dword_24260A000, name4, OS_LOG_TYPE_DEBUG, "View ID '%@' is not a number for event %@.", &v13, 0x16u);
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

      name4 = [eventCopy name];
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = name4;
      _os_log_debug_impl(&dword_24260A000, v8, OS_LOG_TYPE_DEBUG, "Class name '%@' is not a string for event %@.", &v13, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isDebugScreenForViewName:(id)name
{
  nameCopy = name;
  v4 = 1;
  if ([nameCopy rangeOfString:@"debug" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [nameCopy hasPrefix:@"PXSettings"];
  }

  return v4;
}

@end