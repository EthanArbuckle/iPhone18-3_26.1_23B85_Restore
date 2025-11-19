@interface _DKApplicationMonitorBase
- (BOOL)lookupApplication:(id)a3 shortVersionString:(id *)a4 exactBundleVersion:(id *)a5;
- (_DKApplicationMonitorBase)init;
- (id)_eventWithTimestamp:(id)a3 bundleIdentifier:(id)a4 launchReason:(id)a5 shortVersionString:(id)a6 exactBundleVersion:(id)a7;
- (void)dealloc;
- (void)obtainCurrentValue;
- (void)platformSpecificStart;
- (void)platformSpecificStop;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateBiomeAppInFocusWithStopEventAtTimestamp:(id)a3 reason:(id)a4;
- (void)updateBiomeWithAppInFocusStartEvent:(id)a3;
- (void)updateContextStoreWithFocalApplication:(id)a3 launchReason:(id)a4;
@end

@implementation _DKApplicationMonitorBase

- (void)synchronouslyReflectCurrentValue
{
  v3 = [(_DKMonitor *)self currentEvent];

  if (!v3)
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
    v5 = [v4 InFocus];
    v6 = [v5 source];
    [(_DKApplicationMonitorBase *)v2 setAppInFocusSource:v6];

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

- (id)_eventWithTimestamp:(id)a3 bundleIdentifier:(id)a4 launchReason:(id)a5 shortVersionString:(id)a6 exactBundleVersion:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [MEMORY[0x277CFE1A8] withBundle:a4];
  v14 = objc_opt_new();
  if ([v10 length])
  {
    v15 = [MEMORY[0x277CFE178] launchReason];
    [v14 setObject:v10 forKeyedSubscript:v15];
  }

  if ([v11 length])
  {
    v16 = [MEMORY[0x277CFE178] shortVersionString];
    [v14 setObject:v11 forKeyedSubscript:v16];
  }

  if ([v12 length])
  {
    v17 = [MEMORY[0x277CFE178] exactBundleVersion];
    [v14 setObject:v12 forKeyedSubscript:v17];
  }

  v18 = MEMORY[0x277CFE1D8];
  v19 = [MEMORY[0x277CFE298] appInFocusStream];
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [MEMORY[0x277CBEAA8] distantFuture];
  v22 = [v14 copy];
  v23 = [v18 eventWithStream:v19 startDate:v20 endDate:v21 value:v13 metadata:v22];

  return v23;
}

- (void)updateContextStoreWithFocalApplication:(id)a3 launchReason:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 || [(__CFString *)v6 isEqualToString:@"com.apple.springboard.home-screen"])
  {

    v6 = &stru_2838F0870;
  }

  if (([(NSString *)self->_lastFocalApplicationForContext isEqual:v6]& 1) == 0)
  {
    v8 = [MEMORY[0x277CFE318] userContext];
    v9 = [MEMORY[0x277CFE338] keyPathForForegroundApp];
    [v8 setObject:v6 forKeyedSubscript:v9];

    objc_storeStrong(&self->_lastFocalApplicationForContext, v6);
    v10 = [MEMORY[0x277CFE338] appBundleIdKey];
    v17[0] = v10;
    v18[0] = v6;
    v11 = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v12 = &stru_2838F0870;
    v17[1] = v11;
    if (v7)
    {
      v12 = v7;
    }

    v18[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v14 = [MEMORY[0x277CFE318] userContext];
    v15 = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
    [v14 setObject:v13 forKeyedSubscript:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)lookupApplication:(id)a3 shortVersionString:(id *)a4 exactBundleVersion:(id *)a5
{
  v8 = a3;
  if ([v8 length])
  {
    if ([v8 hasPrefix:@"/"])
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      v16 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v9 allowPlaceholder:1 error:&v16];
      v11 = v16;
    }

    else
    {
      v15 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v15];
      v11 = v15;
    }

    v12 = v11 == 0;
    if (v11)
    {
      v13 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_DKApplicationMonitorBase lookupApplication:v8 shortVersionString:v11 exactBundleVersion:v13];
      }
    }

    else
    {
      if (a4)
      {
        *a4 = [v10 shortVersionString];
      }

      if (a5)
      {
        *a5 = [v10 exactBundleVersion];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateBiomeWithAppInFocusStartEvent:(id)a3
{
  v4 = a3;
  v7 = [v4 absoluteTimestamp];
  if (self->_currentAppInFocusEvent)
  {
    [(_DKApplicationMonitorBase *)self updateBiomeAppInFocusWithStopEventAtTimestamp:v7 reason:0];
  }

  v5 = [(_DKApplicationMonitorBase *)self appInFocusSource];
  [v7 timeIntervalSinceReferenceDate];
  [v5 sendEvent:v4 timestamp:?];

  currentAppInFocusEvent = self->_currentAppInFocusEvent;
  self->_currentAppInFocusEvent = v4;
}

- (void)updateBiomeAppInFocusWithStopEventAtTimestamp:(id)a3 reason:(id)a4
{
  v26 = a3;
  v6 = a4;
  currentAppInFocusEvent = self->_currentAppInFocusEvent;
  if (currentAppInFocusEvent)
  {
    v8 = currentAppInFocusEvent;
    v21 = objc_alloc(MEMORY[0x277CF0FD8]);
    if ([v6 length])
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v20 = v9;
    v19 = [(BMAppInFocus *)v8 type];
    v25 = [(BMAppInFocus *)v8 bundleID];
    v24 = [(BMAppInFocus *)v8 parentBundleID];
    v23 = [(BMAppInFocus *)v8 extensionHostID];
    v22 = [(BMAppInFocus *)v8 shortVersionString];
    v10 = [(BMAppInFocus *)v8 exactVersionString];
    v11 = [(BMAppInFocus *)v8 hasDyldPlatform];
    if (v11)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[BMAppInFocus dyldPlatform](v8, "dyldPlatform")}];
    }

    else
    {
      v12 = 0;
    }

    v13 = [(BMAppInFocus *)v8 hasIsNativeArchitecture];
    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[BMAppInFocus isNativeArchitecture](v8, "isNativeArchitecture")}];
    }

    else
    {
      v14 = 0;
    }

    LODWORD(v18) = [(BMAppInFocus *)v8 displayType];
    v15 = [v21 initWithLaunchReason:v20 type:v19 starting:MEMORY[0x277CBEC28] absoluteTimestamp:v26 bundleID:v25 parentBundleID:v24 extensionHostID:v23 shortVersionString:v22 exactVersionString:v10 dyldPlatform:v12 isNativeArchitecture:v14 displayType:v18];
    if (v13)
    {
    }

    if (v11)
    {
    }

    v16 = [(_DKApplicationMonitorBase *)self appInFocusSource];
    [v26 timeIntervalSinceReferenceDate];
    [v16 sendEvent:v15 timestamp:?];

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