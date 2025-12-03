@interface _DKApplicationMonitorBase
- (BOOL)lookupApplication:(id)application shortVersionString:(id *)string exactBundleVersion:(id *)version;
- (_DKApplicationMonitorBase)init;
- (id)_eventWithTimestamp:(id)timestamp bundleIdentifier:(id)identifier launchReason:(id)reason shortVersionString:(id)string exactBundleVersion:(id)version;
- (void)dealloc;
- (void)obtainCurrentValue;
- (void)platformSpecificStart;
- (void)platformSpecificStop;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateBiomeAppInFocusWithStopEventAtTimestamp:(id)timestamp reason:(id)reason;
- (void)updateBiomeWithAppInFocusStartEvent:(id)event;
- (void)updateContextStoreWithFocalApplication:(id)application launchReason:(id)reason;
@end

@implementation _DKApplicationMonitorBase

- (void)synchronouslyReflectCurrentValue
{
  currentEvent = [(_DKMonitor *)self currentEvent];

  if (!currentEvent)
  {

    [(_DKApplicationMonitorBase *)self obtainCurrentValue];
  }
}

- (_DKApplicationMonitorBase)init
{
  v8.receiver = self;
  v8.super_class = _DKApplicationMonitorBase;
  v2 = [(_DKMonitor *)&v8 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 App];
    inFocus = [v4 InFocus];
    source = [inFocus source];
    [(_DKApplicationMonitorBase *)v2 setAppInFocusSource:source];

    [(_DKMonitor *)v2 setFilter:&__block_literal_global_11];
    [(_DKMonitor *)v2 setEventComparator:&__block_literal_global_10];
  }

  return v2;
}

- (void)dealloc
{
  [(_DKApplicationMonitorBase *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKApplicationMonitorBase;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  if ([(_DKMonitor *)self instantMonitorNeedsActivation])
  {
    [(_DKApplicationMonitorBase *)self platformSpecificStart];

    [(_DKApplicationMonitorBase *)self obtainCurrentValue];
  }
}

- (void)stop
{
  if ([(_DKMonitor *)self instantMonitorNeedsDeactivation])
  {

    [(_DKApplicationMonitorBase *)self deactivate];
  }
}

- (id)_eventWithTimestamp:(id)timestamp bundleIdentifier:(id)identifier launchReason:(id)reason shortVersionString:(id)string exactBundleVersion:(id)version
{
  reasonCopy = reason;
  stringCopy = string;
  versionCopy = version;
  v13 = [MEMORY[0x277CFE1A8] withBundle:identifier];
  v14 = objc_opt_new();
  if ([reasonCopy length])
  {
    launchReason = [MEMORY[0x277CFE178] launchReason];
    [v14 setObject:reasonCopy forKeyedSubscript:launchReason];
  }

  if ([stringCopy length])
  {
    shortVersionString = [MEMORY[0x277CFE178] shortVersionString];
    [v14 setObject:stringCopy forKeyedSubscript:shortVersionString];
  }

  if ([versionCopy length])
  {
    exactBundleVersion = [MEMORY[0x277CFE178] exactBundleVersion];
    [v14 setObject:versionCopy forKeyedSubscript:exactBundleVersion];
  }

  v18 = MEMORY[0x277CFE1D8];
  appInFocusStream = [MEMORY[0x277CFE298] appInFocusStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v22 = [v14 copy];
  v23 = [v18 eventWithStream:appInFocusStream startDate:date endDate:distantFuture value:v13 metadata:v22];

  return v23;
}

- (void)updateContextStoreWithFocalApplication:(id)application launchReason:(id)reason
{
  v18[2] = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  reasonCopy = reason;
  if (!applicationCopy || [(__CFString *)applicationCopy isEqualToString:@"com.apple.springboard.home-screen"])
  {

    applicationCopy = &stru_2838F0870;
  }

  if (([(NSString *)self->_lastFocalApplicationForContext isEqual:applicationCopy]& 1) == 0)
  {
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForForegroundApp = [MEMORY[0x277CFE338] keyPathForForegroundApp];
    [userContext setObject:applicationCopy forKeyedSubscript:keyPathForForegroundApp];

    objc_storeStrong(&self->_lastFocalApplicationForContext, applicationCopy);
    appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
    v17[0] = appBundleIdKey;
    v18[0] = applicationCopy;
    appLaunchReasonKey = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v12 = &stru_2838F0870;
    v17[1] = appLaunchReasonKey;
    if (reasonCopy)
    {
      v12 = reasonCopy;
    }

    v18[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    userContext2 = [MEMORY[0x277CFE318] userContext];
    keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
    [userContext2 setObject:v13 forKeyedSubscript:keyPathForAppDataDictionary];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)lookupApplication:(id)application shortVersionString:(id *)string exactBundleVersion:(id *)version
{
  applicationCopy = application;
  if ([applicationCopy length])
  {
    if ([applicationCopy hasPrefix:@"/"])
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:applicationCopy];
      v16 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v9 allowPlaceholder:1 error:&v16];
      v11 = v16;
    }

    else
    {
      v15 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:applicationCopy allowPlaceholder:1 error:&v15];
      v11 = v15;
    }

    v12 = v11 == 0;
    if (v11)
    {
      v13 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DKApplicationMonitorBase lookupApplication:applicationCopy shortVersionString:v11 exactBundleVersion:v13];
      }
    }

    else
    {
      if (string)
      {
        *string = [v10 shortVersionString];
      }

      if (version)
      {
        *version = [v10 exactBundleVersion];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateBiomeWithAppInFocusStartEvent:(id)event
{
  eventCopy = event;
  absoluteTimestamp = [eventCopy absoluteTimestamp];
  if (self->_currentAppInFocusEvent)
  {
    [(_DKApplicationMonitorBase *)self updateBiomeAppInFocusWithStopEventAtTimestamp:absoluteTimestamp reason:0];
  }

  appInFocusSource = [(_DKApplicationMonitorBase *)self appInFocusSource];
  [absoluteTimestamp timeIntervalSinceReferenceDate];
  [appInFocusSource sendEvent:eventCopy timestamp:?];

  currentAppInFocusEvent = self->_currentAppInFocusEvent;
  self->_currentAppInFocusEvent = eventCopy;
}

- (void)updateBiomeAppInFocusWithStopEventAtTimestamp:(id)timestamp reason:(id)reason
{
  timestampCopy = timestamp;
  reasonCopy = reason;
  currentAppInFocusEvent = self->_currentAppInFocusEvent;
  if (currentAppInFocusEvent)
  {
    v8 = currentAppInFocusEvent;
    v21 = objc_alloc(MEMORY[0x277CF0FD8]);
    if ([reasonCopy length])
    {
      v9 = reasonCopy;
    }

    else
    {
      v9 = 0;
    }

    v20 = v9;
    type = [(BMAppInFocus *)v8 type];
    bundleID = [(BMAppInFocus *)v8 bundleID];
    parentBundleID = [(BMAppInFocus *)v8 parentBundleID];
    extensionHostID = [(BMAppInFocus *)v8 extensionHostID];
    shortVersionString = [(BMAppInFocus *)v8 shortVersionString];
    exactVersionString = [(BMAppInFocus *)v8 exactVersionString];
    hasDyldPlatform = [(BMAppInFocus *)v8 hasDyldPlatform];
    if (hasDyldPlatform)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](v8, "dyldPlatform")}];
    }

    else
    {
      v12 = 0;
    }

    hasIsNativeArchitecture = [(BMAppInFocus *)v8 hasIsNativeArchitecture];
    if (hasIsNativeArchitecture)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[BMAppInFocus isNativeArchitecture](v8, "isNativeArchitecture")}];
    }

    else
    {
      v14 = 0;
    }

    LODWORD(v18) = [(BMAppInFocus *)v8 displayType];
    v15 = [v21 initWithLaunchReason:v20 type:type starting:MEMORY[0x277CBEC28] absoluteTimestamp:timestampCopy bundleID:bundleID parentBundleID:parentBundleID extensionHostID:extensionHostID shortVersionString:shortVersionString exactVersionString:exactVersionString dyldPlatform:v12 isNativeArchitecture:v14 displayType:v18];
    if (hasIsNativeArchitecture)
    {
    }

    if (hasDyldPlatform)
    {
    }

    appInFocusSource = [(_DKApplicationMonitorBase *)self appInFocusSource];
    [timestampCopy timeIntervalSinceReferenceDate];
    [appInFocusSource sendEvent:v15 timestamp:?];

    v17 = self->_currentAppInFocusEvent;
    self->_currentAppInFocusEvent = 0;
  }
}

- (void)obtainCurrentValue
{
  NSClassFromString(&cfstr_Dkapplicationm.isa);
  v2 = OUTLINED_FUNCTION_0_6();

  MEMORY[0x28211F870](v2);
}

- (void)platformSpecificStart
{
  NSClassFromString(&cfstr_Dkapplicationm.isa);
  v2 = OUTLINED_FUNCTION_0_6();

  MEMORY[0x28211F870](v2);
}

- (void)platformSpecificStop
{
  NSClassFromString(&cfstr_Dkapplicationm.isa);
  v2 = OUTLINED_FUNCTION_0_6();

  MEMORY[0x28211F870](v2);
}

- (void)lookupApplication:(uint64_t)a1 shortVersionString:(uint64_t)a2 exactBundleVersion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "Unable to query LSApplicationRecord for bundleIdentifier:%{public}@ error:%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end