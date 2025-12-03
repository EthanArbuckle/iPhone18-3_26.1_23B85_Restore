@interface IRPreferences
+ (id)shared;
- (IRPreferences)init;
- (NSString)preferenceString;
- (id)_getDictItemsForLogging:(id)logging withTitle:(id)title;
- (id)_getKeyWithType:(id)type withDefaultValue:(id)value expectedType:(Class)expectedType;
- (void)_defaultsSet;
- (void)_registerForUserDefaultsRefreshNotification;
- (void)dealloc;
- (void)deleteAndNotifyKey:(id)key;
- (void)refresh;
- (void)setMobileAssetSettingsWithMobileAssetDict:(id)dict assetVersion:(id)version;
- (void)updateAndNotifyKey:(id)key withObject:(id)object;
@end

@implementation IRPreferences

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__IRPreferences_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken_0 != -1)
  {
    dispatch_once(&shared_onceToken_0, block);
  }

  v2 = shared_sharedInstance_0;

  return v2;
}

uint64_t __23__IRPreferences_shared__block_invoke(uint64_t a1)
{
  shared_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (IRPreferences)init
{
  v6.receiver = self;
  v6.super_class = IRPreferences;
  v2 = [(IRPreferences *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.intelligentroutingd"];
    [(IRPreferences *)v2 setDefaults:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IRPreferences *)v2 setMobileAssetSettings:v4];

    [(IRPreferences *)v2 _registerForUserDefaultsRefreshNotification];
    [(IRPreferences *)v2 refresh];
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel([(IRPreferences *)self userDefaultsRefreshToken]);
  v3.receiver = self;
  v3.super_class = IRPreferences;
  [(IRPreferences *)&v3 dealloc];
}

- (void)refresh
{
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_DEFAULT, "#preferences, Refreshed preferences from disk", v4, 2u);
  }

  [(IRPreferences *)self _defaultsSet];
}

- (void)updateAndNotifyKey:(id)key withObject:(id)object
{
  objectCopy = object;
  keyCopy = key;
  defaults = [(IRPreferences *)self defaults];
  v9 = [@"IR" stringByAppendingString:keyCopy];

  [defaults setObject:objectCopy forKey:v9];
  [(IRPreferences *)self refresh];

  notify_post("com.apple.intelligentroutingd.UserDefaultsRefresh");
}

- (void)deleteAndNotifyKey:(id)key
{
  keyCopy = key;
  defaults = [(IRPreferences *)self defaults];
  v6 = [@"IR" stringByAppendingString:keyCopy];

  [defaults removeObjectForKey:v6];
  [(IRPreferences *)self refresh];

  notify_post("com.apple.intelligentroutingd.UserDefaultsRefresh");
}

- (id)_getDictItemsForLogging:(id)logging withTitle:(id)title
{
  loggingCopy = logging;
  titleCopy = title;
  v7 = objc_opt_new();
  allKeys = [loggingCopy allKeys];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __51__IRPreferences__getDictItemsForLogging_withTitle___block_invoke;
  v18 = &unk_2797E1F70;
  v9 = v7;
  v19 = v9;
  v10 = loggingCopy;
  v20 = v10;
  [allKeys enumerateObjectsUsingBlock:&v15];

  if ([v9 count])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 componentsJoinedByString:@"\n"];
    v13 = [v11 stringWithFormat:@"\n%@\n%@", titleCopy, v12, v15, v16, v17, v18, v19];
  }

  else
  {
    v13 = &stru_286755D18;
  }

  return v13;
}

void __51__IRPreferences__getDictItemsForLogging_withTitle___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 hasPrefix:@"IR"])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) objectForKeyedSubscript:v7];
    v6 = [v3 stringWithFormat:@"   %@:%@", v7, v5];
    [v4 addObject:v6];
  }
}

- (NSString)preferenceString
{
  defaults = [(IRPreferences *)self defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];

  v5 = [(IRPreferences *)self _getDictItemsForLogging:dictionaryRepresentation withTitle:@" Defaults Overrides:"];
  mobileAssetSettings = [(IRPreferences *)self mobileAssetSettings];
  v7 = MEMORY[0x277CCACA8];
  mobileAssetVersion = [(IRPreferences *)self mobileAssetVersion];
  v9 = [v7 stringWithFormat:@" MobileAsset Overrides (%@):", mobileAssetVersion];
  v10 = [(IRPreferences *)self _getDictItemsForLogging:mobileAssetSettings withTitle:v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"IRPreferences:%@%@", v5, v10];

  return v11;
}

- (void)_defaultsSet
{
  v3 = objc_opt_class();
  testPreferenceString = [(IRPreferences *)self testPreferenceString];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v3 = objc_opt_class();
  }

  testPreferenceString2 = [(IRPreferences *)self testPreferenceString];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    v3 = objc_opt_class();
  }

  testPreferenceString3 = [(IRPreferences *)self testPreferenceString];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v3 = objc_opt_class();
  }

  v10 = [(IRPreferences *)self _getKeyWithType:@"IRtestPreferenceString" withDefaultValue:@"defaultValue" expectedType:v3];
  testPreferenceString = self->_testPreferenceString;
  self->_testPreferenceString = v10;

  v12 = objc_opt_class();
  testPreferenceInteger = [(IRPreferences *)self testPreferenceInteger];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if (v14)
  {
    v12 = objc_opt_class();
  }

  testPreferenceInteger2 = [(IRPreferences *)self testPreferenceInteger];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v12 = objc_opt_class();
  }

  testPreferenceInteger3 = [(IRPreferences *)self testPreferenceInteger];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v12 = objc_opt_class();
  }

  v19 = [(IRPreferences *)self _getKeyWithType:@"IRtestPreferenceInteger" withDefaultValue:&unk_2867690E8 expectedType:v12];
  testPreferenceInteger = self->_testPreferenceInteger;
  self->_testPreferenceInteger = v19;

  v21 = objc_opt_class();
  testPreferenceDouble = [(IRPreferences *)self testPreferenceDouble];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v23)
  {
    v21 = objc_opt_class();
  }

  testPreferenceDouble2 = [(IRPreferences *)self testPreferenceDouble];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    v21 = objc_opt_class();
  }

  testPreferenceDouble3 = [(IRPreferences *)self testPreferenceDouble];
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v21 = objc_opt_class();
  }

  v28 = [(IRPreferences *)self _getKeyWithType:@"IRtestPreferenceDouble" withDefaultValue:&unk_286769320 expectedType:v21];
  testPreferenceDouble = self->_testPreferenceDouble;
  self->_testPreferenceDouble = v28;

  v30 = objc_opt_class();
  overrideIsAirplayForCandidateIDArray = [(IRPreferences *)self overrideIsAirplayForCandidateIDArray];
  objc_opt_class();
  v32 = objc_opt_isKindOfClass();

  if (v32)
  {
    v30 = objc_opt_class();
  }

  overrideIsAirplayForCandidateIDArray2 = [(IRPreferences *)self overrideIsAirplayForCandidateIDArray];
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();

  if (v34)
  {
    v30 = objc_opt_class();
  }

  overrideIsAirplayForCandidateIDArray3 = [(IRPreferences *)self overrideIsAirplayForCandidateIDArray];
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();

  if (v36)
  {
    v30 = objc_opt_class();
  }

  array = [MEMORY[0x277CBEA60] array];
  v38 = [(IRPreferences *)self _getKeyWithType:@"IRoverrideIsAirplayForCandidateIDArray" withDefaultValue:array expectedType:v30];
  overrideIsAirplayForCandidateIDArray = self->_overrideIsAirplayForCandidateIDArray;
  self->_overrideIsAirplayForCandidateIDArray = v38;

  v40 = objc_opt_class();
  testMobileAssetLoad = [(IRPreferences *)self testMobileAssetLoad];
  objc_opt_class();
  v42 = objc_opt_isKindOfClass();

  if (v42)
  {
    v40 = objc_opt_class();
  }

  testMobileAssetLoad2 = [(IRPreferences *)self testMobileAssetLoad];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if (v44)
  {
    v40 = objc_opt_class();
  }

  testMobileAssetLoad3 = [(IRPreferences *)self testMobileAssetLoad];
  objc_opt_class();
  v46 = objc_opt_isKindOfClass();

  if (v46)
  {
    v40 = objc_opt_class();
  }

  v47 = [(IRPreferences *)self _getKeyWithType:@"IRtestMobileAssetLoad" withDefaultValue:&unk_286769100 expectedType:v40];
  testMobileAssetLoad = self->_testMobileAssetLoad;
  self->_testMobileAssetLoad = v47;

  v49 = objc_opt_class();
  loadMobileAssetXPCActivityInterval = [(IRPreferences *)self loadMobileAssetXPCActivityInterval];
  objc_opt_class();
  v51 = objc_opt_isKindOfClass();

  if (v51)
  {
    v49 = objc_opt_class();
  }

  loadMobileAssetXPCActivityInterval2 = [(IRPreferences *)self loadMobileAssetXPCActivityInterval];
  objc_opt_class();
  v53 = objc_opt_isKindOfClass();

  if (v53)
  {
    v49 = objc_opt_class();
  }

  loadMobileAssetXPCActivityInterval3 = [(IRPreferences *)self loadMobileAssetXPCActivityInterval];
  objc_opt_class();
  v55 = objc_opt_isKindOfClass();

  if (v55)
  {
    v49 = objc_opt_class();
  }

  v56 = [(IRPreferences *)self _getKeyWithType:@"IRloadMobileAssetXPCActivityInterval" withDefaultValue:&unk_286769118 expectedType:v49];
  loadMobileAssetXPCActivityInterval = self->_loadMobileAssetXPCActivityInterval;
  self->_loadMobileAssetXPCActivityInterval = v56;

  v58 = objc_opt_class();
  bleRssiProximityThreshold = [(IRPreferences *)self bleRssiProximityThreshold];
  objc_opt_class();
  v60 = objc_opt_isKindOfClass();

  if (v60)
  {
    v58 = objc_opt_class();
  }

  bleRssiProximityThreshold2 = [(IRPreferences *)self bleRssiProximityThreshold];
  objc_opt_class();
  v62 = objc_opt_isKindOfClass();

  if (v62)
  {
    v58 = objc_opt_class();
  }

  bleRssiProximityThreshold3 = [(IRPreferences *)self bleRssiProximityThreshold];
  objc_opt_class();
  v64 = objc_opt_isKindOfClass();

  if (v64)
  {
    v58 = objc_opt_class();
  }

  v65 = [(IRPreferences *)self _getKeyWithType:@"IRbleRssiProximityThreshold" withDefaultValue:&unk_286769330 expectedType:v58];
  bleRssiProximityThreshold = self->_bleRssiProximityThreshold;
  self->_bleRssiProximityThreshold = v65;

  v67 = objc_opt_class();
  deviceRangeProximityThreshold = [(IRPreferences *)self deviceRangeProximityThreshold];
  objc_opt_class();
  v69 = objc_opt_isKindOfClass();

  if (v69)
  {
    v67 = objc_opt_class();
  }

  deviceRangeProximityThreshold2 = [(IRPreferences *)self deviceRangeProximityThreshold];
  objc_opt_class();
  v71 = objc_opt_isKindOfClass();

  if (v71)
  {
    v67 = objc_opt_class();
  }

  deviceRangeProximityThreshold3 = [(IRPreferences *)self deviceRangeProximityThreshold];
  objc_opt_class();
  v73 = objc_opt_isKindOfClass();

  if (v73)
  {
    v67 = objc_opt_class();
  }

  v74 = [(IRPreferences *)self _getKeyWithType:@"IRdeviceRangeProximityThreshold" withDefaultValue:&unk_286769340 expectedType:v67];
  deviceRangeProximityThreshold = self->_deviceRangeProximityThreshold;
  self->_deviceRangeProximityThreshold = v74;

  v76 = objc_opt_class();
  miloLslIsSameMiloThreshold = [(IRPreferences *)self miloLslIsSameMiloThreshold];
  objc_opt_class();
  v78 = objc_opt_isKindOfClass();

  if (v78)
  {
    v76 = objc_opt_class();
  }

  miloLslIsSameMiloThreshold2 = [(IRPreferences *)self miloLslIsSameMiloThreshold];
  objc_opt_class();
  v80 = objc_opt_isKindOfClass();

  if (v80)
  {
    v76 = objc_opt_class();
  }

  miloLslIsSameMiloThreshold3 = [(IRPreferences *)self miloLslIsSameMiloThreshold];
  objc_opt_class();
  v82 = objc_opt_isKindOfClass();

  if (v82)
  {
    v76 = objc_opt_class();
  }

  v83 = [(IRPreferences *)self _getKeyWithType:@"IRmiloLslIsSameMiloThreshold" withDefaultValue:&unk_286769350 expectedType:v76];
  miloLslIsSameMiloThreshold = self->_miloLslIsSameMiloThreshold;
  self->_miloLslIsSameMiloThreshold = v83;

  v85 = objc_opt_class();
  pickerChoiceOverrideIntervalSeconds = [(IRPreferences *)self pickerChoiceOverrideIntervalSeconds];
  objc_opt_class();
  v87 = objc_opt_isKindOfClass();

  if (v87)
  {
    v85 = objc_opt_class();
  }

  pickerChoiceOverrideIntervalSeconds2 = [(IRPreferences *)self pickerChoiceOverrideIntervalSeconds];
  objc_opt_class();
  v89 = objc_opt_isKindOfClass();

  if (v89)
  {
    v85 = objc_opt_class();
  }

  pickerChoiceOverrideIntervalSeconds3 = [(IRPreferences *)self pickerChoiceOverrideIntervalSeconds];
  objc_opt_class();
  v91 = objc_opt_isKindOfClass();

  if (v91)
  {
    v85 = objc_opt_class();
  }

  v92 = [(IRPreferences *)self _getKeyWithType:@"IRpickerChoiceOverrideIntervalSeconds" withDefaultValue:&unk_286769130 expectedType:v85];
  pickerChoiceOverrideIntervalSeconds = self->_pickerChoiceOverrideIntervalSeconds;
  self->_pickerChoiceOverrideIntervalSeconds = v92;

  v94 = objc_opt_class();
  mediaPlaybackEventsTimeIntervalThreshold = [(IRPreferences *)self mediaPlaybackEventsTimeIntervalThreshold];
  objc_opt_class();
  v96 = objc_opt_isKindOfClass();

  if (v96)
  {
    v94 = objc_opt_class();
  }

  mediaPlaybackEventsTimeIntervalThreshold2 = [(IRPreferences *)self mediaPlaybackEventsTimeIntervalThreshold];
  objc_opt_class();
  v98 = objc_opt_isKindOfClass();

  if (v98)
  {
    v94 = objc_opt_class();
  }

  mediaPlaybackEventsTimeIntervalThreshold3 = [(IRPreferences *)self mediaPlaybackEventsTimeIntervalThreshold];
  objc_opt_class();
  v100 = objc_opt_isKindOfClass();

  if (v100)
  {
    v94 = objc_opt_class();
  }

  v101 = [(IRPreferences *)self _getKeyWithType:@"IRmediaPlaybackEventsTimeIntervalThreshold" withDefaultValue:&unk_286769148 expectedType:v94];
  mediaPlaybackEventsTimeIntervalThreshold = self->_mediaPlaybackEventsTimeIntervalThreshold;
  self->_mediaPlaybackEventsTimeIntervalThreshold = v101;

  v103 = objc_opt_class();
  appleTvCtrlEventsTimeIntervalThreshold = [(IRPreferences *)self appleTvCtrlEventsTimeIntervalThreshold];
  objc_opt_class();
  v105 = objc_opt_isKindOfClass();

  if (v105)
  {
    v103 = objc_opt_class();
  }

  appleTvCtrlEventsTimeIntervalThreshold2 = [(IRPreferences *)self appleTvCtrlEventsTimeIntervalThreshold];
  objc_opt_class();
  v107 = objc_opt_isKindOfClass();

  if (v107)
  {
    v103 = objc_opt_class();
  }

  appleTvCtrlEventsTimeIntervalThreshold3 = [(IRPreferences *)self appleTvCtrlEventsTimeIntervalThreshold];
  objc_opt_class();
  v109 = objc_opt_isKindOfClass();

  if (v109)
  {
    v103 = objc_opt_class();
  }

  v110 = [(IRPreferences *)self _getKeyWithType:@"IRappleTvCtrlEventsTimeIntervalThreshold" withDefaultValue:&unk_286769130 expectedType:v103];
  appleTvCtrlEventsTimeIntervalThreshold = self->_appleTvCtrlEventsTimeIntervalThreshold;
  self->_appleTvCtrlEventsTimeIntervalThreshold = v110;

  v112 = objc_opt_class();
  mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds = [(IRPreferences *)self mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v114 = objc_opt_isKindOfClass();

  if (v114)
  {
    v112 = objc_opt_class();
  }

  mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds2 = [(IRPreferences *)self mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v116 = objc_opt_isKindOfClass();

  if (v116)
  {
    v112 = objc_opt_class();
  }

  mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds3 = [(IRPreferences *)self mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v118 = objc_opt_isKindOfClass();

  if (v118)
  {
    v112 = objc_opt_class();
  }

  v119 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds" withDefaultValue:&unk_286769148 expectedType:v112];
  mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds = self->_mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds;
  self->_mediaRulesFilterAnyMultipleEventsTimeIntervalInSeconds = v119;

  v121 = objc_opt_class();
  mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds = [(IRPreferences *)self mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v123 = objc_opt_isKindOfClass();

  if (v123)
  {
    v121 = objc_opt_class();
  }

  mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds2 = [(IRPreferences *)self mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v125 = objc_opt_isKindOfClass();

  if (v125)
  {
    v121 = objc_opt_class();
  }

  mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds3 = [(IRPreferences *)self mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds];
  objc_opt_class();
  v127 = objc_opt_isKindOfClass();

  if (v127)
  {
    v121 = objc_opt_class();
  }

  v128 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds" withDefaultValue:&unk_286769148 expectedType:v121];
  mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds = self->_mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds;
  self->_mediaRulesFilterSimilarMultipleEventsTimeIntervalInSeconds = v128;

  v130 = objc_opt_class();
  cleanupXPCActivityInterval = [(IRPreferences *)self cleanupXPCActivityInterval];
  objc_opt_class();
  v132 = objc_opt_isKindOfClass();

  if (v132)
  {
    v130 = objc_opt_class();
  }

  cleanupXPCActivityInterval2 = [(IRPreferences *)self cleanupXPCActivityInterval];
  objc_opt_class();
  v134 = objc_opt_isKindOfClass();

  if (v134)
  {
    v130 = objc_opt_class();
  }

  cleanupXPCActivityInterval3 = [(IRPreferences *)self cleanupXPCActivityInterval];
  objc_opt_class();
  v136 = objc_opt_isKindOfClass();

  if (v136)
  {
    v130 = objc_opt_class();
  }

  v137 = [(IRPreferences *)self _getKeyWithType:@"IRcleanupXPCActivityInterval" withDefaultValue:&unk_286769118 expectedType:v130];
  cleanupXPCActivityInterval = self->_cleanupXPCActivityInterval;
  self->_cleanupXPCActivityInterval = v137;

  v139 = objc_opt_class();
  dbCleanupXPCActivityDeleteServiceThreshold = [(IRPreferences *)self dbCleanupXPCActivityDeleteServiceThreshold];
  objc_opt_class();
  v141 = objc_opt_isKindOfClass();

  if (v141)
  {
    v139 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteServiceThreshold2 = [(IRPreferences *)self dbCleanupXPCActivityDeleteServiceThreshold];
  objc_opt_class();
  v143 = objc_opt_isKindOfClass();

  if (v143)
  {
    v139 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteServiceThreshold3 = [(IRPreferences *)self dbCleanupXPCActivityDeleteServiceThreshold];
  objc_opt_class();
  v145 = objc_opt_isKindOfClass();

  if (v145)
  {
    v139 = objc_opt_class();
  }

  v146 = [(IRPreferences *)self _getKeyWithType:@"IRdbCleanupXPCActivityDeleteServiceThreshold" withDefaultValue:&unk_286769160 expectedType:v139];
  dbCleanupXPCActivityDeleteServiceThreshold = self->_dbCleanupXPCActivityDeleteServiceThreshold;
  self->_dbCleanupXPCActivityDeleteServiceThreshold = v146;

  v148 = objc_opt_class();
  dbCleanupXPCActivityDeleteHistoryEventsThreshold = [(IRPreferences *)self dbCleanupXPCActivityDeleteHistoryEventsThreshold];
  objc_opt_class();
  v150 = objc_opt_isKindOfClass();

  if (v150)
  {
    v148 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteHistoryEventsThreshold2 = [(IRPreferences *)self dbCleanupXPCActivityDeleteHistoryEventsThreshold];
  objc_opt_class();
  v152 = objc_opt_isKindOfClass();

  if (v152)
  {
    v148 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteHistoryEventsThreshold3 = [(IRPreferences *)self dbCleanupXPCActivityDeleteHistoryEventsThreshold];
  objc_opt_class();
  v154 = objc_opt_isKindOfClass();

  if (v154)
  {
    v148 = objc_opt_class();
  }

  v155 = [(IRPreferences *)self _getKeyWithType:@"IRdbCleanupXPCActivityDeleteHistoryEventsThreshold" withDefaultValue:&unk_286769160 expectedType:v148];
  dbCleanupXPCActivityDeleteHistoryEventsThreshold = self->_dbCleanupXPCActivityDeleteHistoryEventsThreshold;
  self->_dbCleanupXPCActivityDeleteHistoryEventsThreshold = v155;

  v157 = objc_opt_class();
  dbCleanupXPCActivityDeleteReplayEventsThreshold = [(IRPreferences *)self dbCleanupXPCActivityDeleteReplayEventsThreshold];
  objc_opt_class();
  v159 = objc_opt_isKindOfClass();

  if (v159)
  {
    v157 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteReplayEventsThreshold2 = [(IRPreferences *)self dbCleanupXPCActivityDeleteReplayEventsThreshold];
  objc_opt_class();
  v161 = objc_opt_isKindOfClass();

  if (v161)
  {
    v157 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteReplayEventsThreshold3 = [(IRPreferences *)self dbCleanupXPCActivityDeleteReplayEventsThreshold];
  objc_opt_class();
  v163 = objc_opt_isKindOfClass();

  if (v163)
  {
    v157 = objc_opt_class();
  }

  v164 = [(IRPreferences *)self _getKeyWithType:@"IRdbCleanupXPCActivityDeleteReplayEventsThreshold" withDefaultValue:&unk_286769160 expectedType:v157];
  dbCleanupXPCActivityDeleteReplayEventsThreshold = self->_dbCleanupXPCActivityDeleteReplayEventsThreshold;
  self->_dbCleanupXPCActivityDeleteReplayEventsThreshold = v164;

  v166 = objc_opt_class();
  dbCleanupXPCActivityDeleteCandidatesThreshold = [(IRPreferences *)self dbCleanupXPCActivityDeleteCandidatesThreshold];
  objc_opt_class();
  v168 = objc_opt_isKindOfClass();

  if (v168)
  {
    v166 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteCandidatesThreshold2 = [(IRPreferences *)self dbCleanupXPCActivityDeleteCandidatesThreshold];
  objc_opt_class();
  v170 = objc_opt_isKindOfClass();

  if (v170)
  {
    v166 = objc_opt_class();
  }

  dbCleanupXPCActivityDeleteCandidatesThreshold3 = [(IRPreferences *)self dbCleanupXPCActivityDeleteCandidatesThreshold];
  objc_opt_class();
  v172 = objc_opt_isKindOfClass();

  if (v172)
  {
    v166 = objc_opt_class();
  }

  v173 = [(IRPreferences *)self _getKeyWithType:@"IRdbCleanupXPCActivityDeleteCandidatesThreshold" withDefaultValue:&unk_286769160 expectedType:v166];
  dbCleanupXPCActivityDeleteCandidatesThreshold = self->_dbCleanupXPCActivityDeleteCandidatesThreshold;
  self->_dbCleanupXPCActivityDeleteCandidatesThreshold = v173;

  v175 = objc_opt_class();
  miloEnable = [(IRPreferences *)self miloEnable];
  objc_opt_class();
  v177 = objc_opt_isKindOfClass();

  if (v177)
  {
    v175 = objc_opt_class();
  }

  miloEnable2 = [(IRPreferences *)self miloEnable];
  objc_opt_class();
  v179 = objc_opt_isKindOfClass();

  if (v179)
  {
    v175 = objc_opt_class();
  }

  miloEnable3 = [(IRPreferences *)self miloEnable];
  objc_opt_class();
  v181 = objc_opt_isKindOfClass();

  if (v181)
  {
    v175 = objc_opt_class();
  }

  v182 = [(IRPreferences *)self _getKeyWithType:@"IRmiloEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v175];
  miloEnable = self->_miloEnable;
  self->_miloEnable = v182;

  v184 = objc_opt_class();
  candidateLastUsedThrForMiLoLowLatancyPowerOpt = [(IRPreferences *)self candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  objc_opt_class();
  v186 = objc_opt_isKindOfClass();

  if (v186)
  {
    v184 = objc_opt_class();
  }

  candidateLastUsedThrForMiLoLowLatancyPowerOpt2 = [(IRPreferences *)self candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  objc_opt_class();
  v188 = objc_opt_isKindOfClass();

  if (v188)
  {
    v184 = objc_opt_class();
  }

  candidateLastUsedThrForMiLoLowLatancyPowerOpt3 = [(IRPreferences *)self candidateLastUsedThrForMiLoLowLatancyPowerOpt];
  objc_opt_class();
  v190 = objc_opt_isKindOfClass();

  if (v190)
  {
    v184 = objc_opt_class();
  }

  v191 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateLastUsedThrForMiLoLowLatancyPowerOpt" withDefaultValue:&unk_286769160 expectedType:v184];
  candidateLastUsedThrForMiLoLowLatancyPowerOpt = self->_candidateLastUsedThrForMiLoLowLatancyPowerOpt;
  self->_candidateLastUsedThrForMiLoLowLatancyPowerOpt = v191;

  v193 = objc_opt_class();
  miloTimeoutForSetSpotOnRequestSeconds = [(IRPreferences *)self miloTimeoutForSetSpotOnRequestSeconds];
  objc_opt_class();
  v195 = objc_opt_isKindOfClass();

  if (v195)
  {
    v193 = objc_opt_class();
  }

  miloTimeoutForSetSpotOnRequestSeconds2 = [(IRPreferences *)self miloTimeoutForSetSpotOnRequestSeconds];
  objc_opt_class();
  v197 = objc_opt_isKindOfClass();

  if (v197)
  {
    v193 = objc_opt_class();
  }

  miloTimeoutForSetSpotOnRequestSeconds3 = [(IRPreferences *)self miloTimeoutForSetSpotOnRequestSeconds];
  objc_opt_class();
  v199 = objc_opt_isKindOfClass();

  if (v199)
  {
    v193 = objc_opt_class();
  }

  v200 = [(IRPreferences *)self _getKeyWithType:@"IRmiloTimeoutForSetSpotOnRequestSeconds" withDefaultValue:&unk_286769148 expectedType:v193];
  miloTimeoutForSetSpotOnRequestSeconds = self->_miloTimeoutForSetSpotOnRequestSeconds;
  self->_miloTimeoutForSetSpotOnRequestSeconds = v200;

  v202 = objc_opt_class();
  miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts = [(IRPreferences *)self miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts];
  objc_opt_class();
  v204 = objc_opt_isKindOfClass();

  if (v204)
  {
    v202 = objc_opt_class();
  }

  miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts2 = [(IRPreferences *)self miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts];
  objc_opt_class();
  v206 = objc_opt_isKindOfClass();

  if (v206)
  {
    v202 = objc_opt_class();
  }

  miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts3 = [(IRPreferences *)self miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts];
  objc_opt_class();
  v208 = objc_opt_isKindOfClass();

  if (v208)
  {
    v202 = objc_opt_class();
  }

  v209 = [(IRPreferences *)self _getKeyWithType:@"IRmiLoProviderMaxNumberOfConsecutiveMiLoFailAttempts" withDefaultValue:&unk_286769178 expectedType:v202];
  miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts = self->_miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts;
  self->_miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts = v209;

  v211 = objc_opt_class();
  ttrThrottleTimeSec = [(IRPreferences *)self ttrThrottleTimeSec];
  objc_opt_class();
  v213 = objc_opt_isKindOfClass();

  if (v213)
  {
    v211 = objc_opt_class();
  }

  ttrThrottleTimeSec2 = [(IRPreferences *)self ttrThrottleTimeSec];
  objc_opt_class();
  v215 = objc_opt_isKindOfClass();

  if (v215)
  {
    v211 = objc_opt_class();
  }

  ttrThrottleTimeSec3 = [(IRPreferences *)self ttrThrottleTimeSec];
  objc_opt_class();
  v217 = objc_opt_isKindOfClass();

  if (v217)
  {
    v211 = objc_opt_class();
  }

  v218 = [(IRPreferences *)self _getKeyWithType:@"IRttrThrottleTimeSec" withDefaultValue:&unk_286769118 expectedType:v211];
  ttrThrottleTimeSec = self->_ttrThrottleTimeSec;
  self->_ttrThrottleTimeSec = v218;

  v220 = objc_opt_class();
  ttrPeriodicThrottleTimeSec = [(IRPreferences *)self ttrPeriodicThrottleTimeSec];
  objc_opt_class();
  v222 = objc_opt_isKindOfClass();

  if (v222)
  {
    v220 = objc_opt_class();
  }

  ttrPeriodicThrottleTimeSec2 = [(IRPreferences *)self ttrPeriodicThrottleTimeSec];
  objc_opt_class();
  v224 = objc_opt_isKindOfClass();

  if (v224)
  {
    v220 = objc_opt_class();
  }

  ttrPeriodicThrottleTimeSec3 = [(IRPreferences *)self ttrPeriodicThrottleTimeSec];
  objc_opt_class();
  v226 = objc_opt_isKindOfClass();

  if (v226)
  {
    v220 = objc_opt_class();
  }

  v227 = [(IRPreferences *)self _getKeyWithType:@"IRttrPeriodicThrottleTimeSec" withDefaultValue:&unk_286769190 expectedType:v220];
  ttrPeriodicThrottleTimeSec = self->_ttrPeriodicThrottleTimeSec;
  self->_ttrPeriodicThrottleTimeSec = v227;

  v229 = objc_opt_class();
  nearbyDeviceMeasurmentExpityTimeSeconds = [(IRPreferences *)self nearbyDeviceMeasurmentExpityTimeSeconds];
  objc_opt_class();
  v231 = objc_opt_isKindOfClass();

  if (v231)
  {
    v229 = objc_opt_class();
  }

  nearbyDeviceMeasurmentExpityTimeSeconds2 = [(IRPreferences *)self nearbyDeviceMeasurmentExpityTimeSeconds];
  objc_opt_class();
  v233 = objc_opt_isKindOfClass();

  if (v233)
  {
    v229 = objc_opt_class();
  }

  nearbyDeviceMeasurmentExpityTimeSeconds3 = [(IRPreferences *)self nearbyDeviceMeasurmentExpityTimeSeconds];
  objc_opt_class();
  v235 = objc_opt_isKindOfClass();

  if (v235)
  {
    v229 = objc_opt_class();
  }

  v236 = [(IRPreferences *)self _getKeyWithType:@"IRnearbyDeviceMeasurmentExpityTimeSeconds" withDefaultValue:&unk_2867691A8 expectedType:v229];
  nearbyDeviceMeasurmentExpityTimeSeconds = self->_nearbyDeviceMeasurmentExpityTimeSeconds;
  self->_nearbyDeviceMeasurmentExpityTimeSeconds = v236;

  v238 = objc_opt_class();
  proximitySessionRetryCountThreshold = [(IRPreferences *)self proximitySessionRetryCountThreshold];
  objc_opt_class();
  v240 = objc_opt_isKindOfClass();

  if (v240)
  {
    v238 = objc_opt_class();
  }

  proximitySessionRetryCountThreshold2 = [(IRPreferences *)self proximitySessionRetryCountThreshold];
  objc_opt_class();
  v242 = objc_opt_isKindOfClass();

  if (v242)
  {
    v238 = objc_opt_class();
  }

  proximitySessionRetryCountThreshold3 = [(IRPreferences *)self proximitySessionRetryCountThreshold];
  objc_opt_class();
  v244 = objc_opt_isKindOfClass();

  if (v244)
  {
    v238 = objc_opt_class();
  }

  v245 = [(IRPreferences *)self _getKeyWithType:@"IRproximitySessionRetryCountThreshold" withDefaultValue:&unk_2867691C0 expectedType:v238];
  proximitySessionRetryCountThreshold = self->_proximitySessionRetryCountThreshold;
  self->_proximitySessionRetryCountThreshold = v245;

  v247 = objc_opt_class();
  nearbyDeviceRegionThreshold = [(IRPreferences *)self nearbyDeviceRegionThreshold];
  objc_opt_class();
  v249 = objc_opt_isKindOfClass();

  if (v249)
  {
    v247 = objc_opt_class();
  }

  nearbyDeviceRegionThreshold2 = [(IRPreferences *)self nearbyDeviceRegionThreshold];
  objc_opt_class();
  v251 = objc_opt_isKindOfClass();

  if (v251)
  {
    v247 = objc_opt_class();
  }

  nearbyDeviceRegionThreshold3 = [(IRPreferences *)self nearbyDeviceRegionThreshold];
  objc_opt_class();
  v253 = objc_opt_isKindOfClass();

  if (v253)
  {
    v247 = objc_opt_class();
  }

  v254 = [(IRPreferences *)self _getKeyWithType:@"IRnearbyDeviceRegionThreshold" withDefaultValue:&unk_2867691D8 expectedType:v247];
  nearbyDeviceRegionThreshold = self->_nearbyDeviceRegionThreshold;
  self->_nearbyDeviceRegionThreshold = v254;

  v256 = objc_opt_class();
  uwbSuspendPedestrianFenceRadiusMeters = [(IRPreferences *)self uwbSuspendPedestrianFenceRadiusMeters];
  objc_opt_class();
  v258 = objc_opt_isKindOfClass();

  if (v258)
  {
    v256 = objc_opt_class();
  }

  uwbSuspendPedestrianFenceRadiusMeters2 = [(IRPreferences *)self uwbSuspendPedestrianFenceRadiusMeters];
  objc_opt_class();
  v260 = objc_opt_isKindOfClass();

  if (v260)
  {
    v256 = objc_opt_class();
  }

  uwbSuspendPedestrianFenceRadiusMeters3 = [(IRPreferences *)self uwbSuspendPedestrianFenceRadiusMeters];
  objc_opt_class();
  v262 = objc_opt_isKindOfClass();

  if (v262)
  {
    v256 = objc_opt_class();
  }

  v263 = [(IRPreferences *)self _getKeyWithType:@"IRuwbSuspendPedestrianFenceRadiusMeters" withDefaultValue:&unk_286769360 expectedType:v256];
  uwbSuspendPedestrianFenceRadiusMeters = self->_uwbSuspendPedestrianFenceRadiusMeters;
  self->_uwbSuspendPedestrianFenceRadiusMeters = v263;

  v265 = objc_opt_class();
  uwbSuspendPedestrianFenceEnable = [(IRPreferences *)self uwbSuspendPedestrianFenceEnable];
  objc_opt_class();
  v267 = objc_opt_isKindOfClass();

  if (v267)
  {
    v265 = objc_opt_class();
  }

  uwbSuspendPedestrianFenceEnable2 = [(IRPreferences *)self uwbSuspendPedestrianFenceEnable];
  objc_opt_class();
  v269 = objc_opt_isKindOfClass();

  if (v269)
  {
    v265 = objc_opt_class();
  }

  uwbSuspendPedestrianFenceEnable3 = [(IRPreferences *)self uwbSuspendPedestrianFenceEnable];
  objc_opt_class();
  v271 = objc_opt_isKindOfClass();

  if (v271)
  {
    v265 = objc_opt_class();
  }

  v272 = [(IRPreferences *)self _getKeyWithType:@"IRuwbSuspendPedestrianFenceEnable" withDefaultValue:&unk_2867691F0 expectedType:v265];
  uwbSuspendPedestrianFenceEnable = self->_uwbSuspendPedestrianFenceEnable;
  self->_uwbSuspendPedestrianFenceEnable = v272;

  v274 = objc_opt_class();
  replayWriterEventsSizeToBuffer = [(IRPreferences *)self replayWriterEventsSizeToBuffer];
  objc_opt_class();
  v276 = objc_opt_isKindOfClass();

  if (v276)
  {
    v274 = objc_opt_class();
  }

  replayWriterEventsSizeToBuffer2 = [(IRPreferences *)self replayWriterEventsSizeToBuffer];
  objc_opt_class();
  v278 = objc_opt_isKindOfClass();

  if (v278)
  {
    v274 = objc_opt_class();
  }

  replayWriterEventsSizeToBuffer3 = [(IRPreferences *)self replayWriterEventsSizeToBuffer];
  objc_opt_class();
  v280 = objc_opt_isKindOfClass();

  if (v280)
  {
    v274 = objc_opt_class();
  }

  v281 = [(IRPreferences *)self _getKeyWithType:@"IRreplayWriterEventsSizeToBuffer" withDefaultValue:&unk_286769208 expectedType:v274];
  replayWriterEventsSizeToBuffer = self->_replayWriterEventsSizeToBuffer;
  self->_replayWriterEventsSizeToBuffer = v281;

  v283 = objc_opt_class();
  numberOfHistoryEventsInCache = [(IRPreferences *)self numberOfHistoryEventsInCache];
  objc_opt_class();
  v285 = objc_opt_isKindOfClass();

  if (v285)
  {
    v283 = objc_opt_class();
  }

  numberOfHistoryEventsInCache2 = [(IRPreferences *)self numberOfHistoryEventsInCache];
  objc_opt_class();
  v287 = objc_opt_isKindOfClass();

  if (v287)
  {
    v283 = objc_opt_class();
  }

  numberOfHistoryEventsInCache3 = [(IRPreferences *)self numberOfHistoryEventsInCache];
  objc_opt_class();
  v289 = objc_opt_isKindOfClass();

  if (v289)
  {
    v283 = objc_opt_class();
  }

  v290 = [(IRPreferences *)self _getKeyWithType:@"IRnumberOfHistoryEventsInCache" withDefaultValue:&unk_286769220 expectedType:v283];
  numberOfHistoryEventsInCache = self->_numberOfHistoryEventsInCache;
  self->_numberOfHistoryEventsInCache = v290;

  v292 = objc_opt_class();
  numberOfEventsToSaveInDisk = [(IRPreferences *)self numberOfEventsToSaveInDisk];
  objc_opt_class();
  v294 = objc_opt_isKindOfClass();

  if (v294)
  {
    v292 = objc_opt_class();
  }

  numberOfEventsToSaveInDisk2 = [(IRPreferences *)self numberOfEventsToSaveInDisk];
  objc_opt_class();
  v296 = objc_opt_isKindOfClass();

  if (v296)
  {
    v292 = objc_opt_class();
  }

  numberOfEventsToSaveInDisk3 = [(IRPreferences *)self numberOfEventsToSaveInDisk];
  objc_opt_class();
  v298 = objc_opt_isKindOfClass();

  if (v298)
  {
    v292 = objc_opt_class();
  }

  v299 = [(IRPreferences *)self _getKeyWithType:@"IRnumberOfEventsToSaveInDisk" withDefaultValue:&unk_286769238 expectedType:v292];
  numberOfEventsToSaveInDisk = self->_numberOfEventsToSaveInDisk;
  self->_numberOfEventsToSaveInDisk = v299;

  v301 = objc_opt_class();
  coreAnalyticsEnable = [(IRPreferences *)self coreAnalyticsEnable];
  objc_opt_class();
  v303 = objc_opt_isKindOfClass();

  if (v303)
  {
    v301 = objc_opt_class();
  }

  coreAnalyticsEnable2 = [(IRPreferences *)self coreAnalyticsEnable];
  objc_opt_class();
  v305 = objc_opt_isKindOfClass();

  if (v305)
  {
    v301 = objc_opt_class();
  }

  coreAnalyticsEnable3 = [(IRPreferences *)self coreAnalyticsEnable];
  objc_opt_class();
  v307 = objc_opt_isKindOfClass();

  if (v307)
  {
    v301 = objc_opt_class();
  }

  v308 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v301];
  coreAnalyticsEnable = self->_coreAnalyticsEnable;
  self->_coreAnalyticsEnable = v308;

  v310 = objc_opt_class();
  coreAnalyticsXPCActivityInterval = [(IRPreferences *)self coreAnalyticsXPCActivityInterval];
  objc_opt_class();
  v312 = objc_opt_isKindOfClass();

  if (v312)
  {
    v310 = objc_opt_class();
  }

  coreAnalyticsXPCActivityInterval2 = [(IRPreferences *)self coreAnalyticsXPCActivityInterval];
  objc_opt_class();
  v314 = objc_opt_isKindOfClass();

  if (v314)
  {
    v310 = objc_opt_class();
  }

  coreAnalyticsXPCActivityInterval3 = [(IRPreferences *)self coreAnalyticsXPCActivityInterval];
  objc_opt_class();
  v316 = objc_opt_isKindOfClass();

  if (v316)
  {
    v310 = objc_opt_class();
  }

  v317 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsXPCActivityInterval" withDefaultValue:&unk_286769190 expectedType:v310];
  coreAnalyticsXPCActivityInterval = self->_coreAnalyticsXPCActivityInterval;
  self->_coreAnalyticsXPCActivityInterval = v317;

  v319 = objc_opt_class();
  coreAnalyticsXPCHistoryEventsValidThreshold = [(IRPreferences *)self coreAnalyticsXPCHistoryEventsValidThreshold];
  objc_opt_class();
  v321 = objc_opt_isKindOfClass();

  if (v321)
  {
    v319 = objc_opt_class();
  }

  coreAnalyticsXPCHistoryEventsValidThreshold2 = [(IRPreferences *)self coreAnalyticsXPCHistoryEventsValidThreshold];
  objc_opt_class();
  v323 = objc_opt_isKindOfClass();

  if (v323)
  {
    v319 = objc_opt_class();
  }

  coreAnalyticsXPCHistoryEventsValidThreshold3 = [(IRPreferences *)self coreAnalyticsXPCHistoryEventsValidThreshold];
  objc_opt_class();
  v325 = objc_opt_isKindOfClass();

  if (v325)
  {
    v319 = objc_opt_class();
  }

  v326 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsXPCHistoryEventsValidThreshold" withDefaultValue:&unk_286769190 expectedType:v319];
  coreAnalyticsXPCHistoryEventsValidThreshold = self->_coreAnalyticsXPCHistoryEventsValidThreshold;
  self->_coreAnalyticsXPCHistoryEventsValidThreshold = v326;

  v328 = objc_opt_class();
  coreAnalyticsStatisticsCollectionPeriodInSeconds = [(IRPreferences *)self coreAnalyticsStatisticsCollectionPeriodInSeconds];
  objc_opt_class();
  v330 = objc_opt_isKindOfClass();

  if (v330)
  {
    v328 = objc_opt_class();
  }

  coreAnalyticsStatisticsCollectionPeriodInSeconds2 = [(IRPreferences *)self coreAnalyticsStatisticsCollectionPeriodInSeconds];
  objc_opt_class();
  v332 = objc_opt_isKindOfClass();

  if (v332)
  {
    v328 = objc_opt_class();
  }

  coreAnalyticsStatisticsCollectionPeriodInSeconds3 = [(IRPreferences *)self coreAnalyticsStatisticsCollectionPeriodInSeconds];
  objc_opt_class();
  v334 = objc_opt_isKindOfClass();

  if (v334)
  {
    v328 = objc_opt_class();
  }

  v335 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsStatisticsCollectionPeriodInSeconds" withDefaultValue:&unk_286769190 expectedType:v328];
  coreAnalyticsStatisticsCollectionPeriodInSeconds = self->_coreAnalyticsStatisticsCollectionPeriodInSeconds;
  self->_coreAnalyticsStatisticsCollectionPeriodInSeconds = v335;

  v337 = objc_opt_class();
  coreAnalyticsWeeklyMobileAssetVersion = [(IRPreferences *)self coreAnalyticsWeeklyMobileAssetVersion];
  objc_opt_class();
  v339 = objc_opt_isKindOfClass();

  if (v339)
  {
    v337 = objc_opt_class();
  }

  coreAnalyticsWeeklyMobileAssetVersion2 = [(IRPreferences *)self coreAnalyticsWeeklyMobileAssetVersion];
  objc_opt_class();
  v341 = objc_opt_isKindOfClass();

  if (v341)
  {
    v337 = objc_opt_class();
  }

  coreAnalyticsWeeklyMobileAssetVersion3 = [(IRPreferences *)self coreAnalyticsWeeklyMobileAssetVersion];
  objc_opt_class();
  v343 = objc_opt_isKindOfClass();

  if (v343)
  {
    v337 = objc_opt_class();
  }

  v344 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsWeeklyMobileAssetVersion" withDefaultValue:0 expectedType:v337];
  coreAnalyticsWeeklyMobileAssetVersion = self->_coreAnalyticsWeeklyMobileAssetVersion;
  self->_coreAnalyticsWeeklyMobileAssetVersion = v344;

  v346 = objc_opt_class();
  coreAnalyticsSessionEnable = [(IRPreferences *)self coreAnalyticsSessionEnable];
  objc_opt_class();
  v348 = objc_opt_isKindOfClass();

  if (v348)
  {
    v346 = objc_opt_class();
  }

  coreAnalyticsSessionEnable2 = [(IRPreferences *)self coreAnalyticsSessionEnable];
  objc_opt_class();
  v350 = objc_opt_isKindOfClass();

  if (v350)
  {
    v346 = objc_opt_class();
  }

  coreAnalyticsSessionEnable3 = [(IRPreferences *)self coreAnalyticsSessionEnable];
  objc_opt_class();
  v352 = objc_opt_isKindOfClass();

  if (v352)
  {
    v346 = objc_opt_class();
  }

  v353 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsSessionEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v346];
  coreAnalyticsSessionEnable = self->_coreAnalyticsSessionEnable;
  self->_coreAnalyticsSessionEnable = v353;

  v355 = objc_opt_class();
  coreAnalyticsSessionPeriodInSeconds = [(IRPreferences *)self coreAnalyticsSessionPeriodInSeconds];
  objc_opt_class();
  v357 = objc_opt_isKindOfClass();

  if (v357)
  {
    v355 = objc_opt_class();
  }

  coreAnalyticsSessionPeriodInSeconds2 = [(IRPreferences *)self coreAnalyticsSessionPeriodInSeconds];
  objc_opt_class();
  v359 = objc_opt_isKindOfClass();

  if (v359)
  {
    v355 = objc_opt_class();
  }

  coreAnalyticsSessionPeriodInSeconds3 = [(IRPreferences *)self coreAnalyticsSessionPeriodInSeconds];
  objc_opt_class();
  v361 = objc_opt_isKindOfClass();

  if (v361)
  {
    v355 = objc_opt_class();
  }

  v362 = [(IRPreferences *)self _getKeyWithType:@"IRcoreAnalyticsSessionPeriodInSeconds" withDefaultValue:&unk_286769250 expectedType:v355];
  coreAnalyticsSessionPeriodInSeconds = self->_coreAnalyticsSessionPeriodInSeconds;
  self->_coreAnalyticsSessionPeriodInSeconds = v362;

  v364 = objc_opt_class();
  mediaRulesContinuityTimeIntervalInSeconds = [(IRPreferences *)self mediaRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v366 = objc_opt_isKindOfClass();

  if (v366)
  {
    v364 = objc_opt_class();
  }

  mediaRulesContinuityTimeIntervalInSeconds2 = [(IRPreferences *)self mediaRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v368 = objc_opt_isKindOfClass();

  if (v368)
  {
    v364 = objc_opt_class();
  }

  mediaRulesContinuityTimeIntervalInSeconds3 = [(IRPreferences *)self mediaRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v370 = objc_opt_isKindOfClass();

  if (v370)
  {
    v364 = objc_opt_class();
  }

  v371 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesContinuityTimeIntervalInSeconds" withDefaultValue:&unk_286769268 expectedType:v364];
  mediaRulesContinuityTimeIntervalInSeconds = self->_mediaRulesContinuityTimeIntervalInSeconds;
  self->_mediaRulesContinuityTimeIntervalInSeconds = v371;

  v373 = objc_opt_class();
  mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds];
  objc_opt_class();
  v375 = objc_opt_isKindOfClass();

  if (v375)
  {
    v373 = objc_opt_class();
  }

  mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds2 = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds];
  objc_opt_class();
  v377 = objc_opt_isKindOfClass();

  if (v377)
  {
    v373 = objc_opt_class();
  }

  mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds3 = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds];
  objc_opt_class();
  v379 = objc_opt_isKindOfClass();

  if (v379)
  {
    v373 = objc_opt_class();
  }

  v380 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesPickerChoiceConsistencyTimeIntervalInSeconds" withDefaultValue:&unk_286769280 expectedType:v373];
  mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds = self->_mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds;
  self->_mediaRulesPickerChoiceConsistencyTimeIntervalInSeconds = v380;

  v382 = objc_opt_class();
  mediaRulesPickerChoiceConsistencyEnable = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyEnable];
  objc_opt_class();
  v384 = objc_opt_isKindOfClass();

  if (v384)
  {
    v382 = objc_opt_class();
  }

  mediaRulesPickerChoiceConsistencyEnable2 = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyEnable];
  objc_opt_class();
  v386 = objc_opt_isKindOfClass();

  if (v386)
  {
    v382 = objc_opt_class();
  }

  mediaRulesPickerChoiceConsistencyEnable3 = [(IRPreferences *)self mediaRulesPickerChoiceConsistencyEnable];
  objc_opt_class();
  v388 = objc_opt_isKindOfClass();

  if (v388)
  {
    v382 = objc_opt_class();
  }

  v389 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesPickerChoiceConsistencyEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v382];
  mediaRulesPickerChoiceConsistencyEnable = self->_mediaRulesPickerChoiceConsistencyEnable;
  self->_mediaRulesPickerChoiceConsistencyEnable = v389;

  v391 = objc_opt_class();
  mediaRulesUserRejectedInLastDayEnable = [(IRPreferences *)self mediaRulesUserRejectedInLastDayEnable];
  objc_opt_class();
  v393 = objc_opt_isKindOfClass();

  if (v393)
  {
    v391 = objc_opt_class();
  }

  mediaRulesUserRejectedInLastDayEnable2 = [(IRPreferences *)self mediaRulesUserRejectedInLastDayEnable];
  objc_opt_class();
  v395 = objc_opt_isKindOfClass();

  if (v395)
  {
    v391 = objc_opt_class();
  }

  mediaRulesUserRejectedInLastDayEnable3 = [(IRPreferences *)self mediaRulesUserRejectedInLastDayEnable];
  objc_opt_class();
  v397 = objc_opt_isKindOfClass();

  if (v397)
  {
    v391 = objc_opt_class();
  }

  v398 = [(IRPreferences *)self _getKeyWithType:@"IRmediaRulesUserRejectedInLastDayEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v391];
  mediaRulesUserRejectedInLastDayEnable = self->_mediaRulesUserRejectedInLastDayEnable;
  self->_mediaRulesUserRejectedInLastDayEnable = v398;

  v400 = objc_opt_class();
  appleTvCtrlRulesContinuityTimeIntervalInSeconds = [(IRPreferences *)self appleTvCtrlRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v402 = objc_opt_isKindOfClass();

  if (v402)
  {
    v400 = objc_opt_class();
  }

  appleTvCtrlRulesContinuityTimeIntervalInSeconds2 = [(IRPreferences *)self appleTvCtrlRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v404 = objc_opt_isKindOfClass();

  if (v404)
  {
    v400 = objc_opt_class();
  }

  appleTvCtrlRulesContinuityTimeIntervalInSeconds3 = [(IRPreferences *)self appleTvCtrlRulesContinuityTimeIntervalInSeconds];
  objc_opt_class();
  v406 = objc_opt_isKindOfClass();

  if (v406)
  {
    v400 = objc_opt_class();
  }

  v407 = [(IRPreferences *)self _getKeyWithType:@"IRappleTvCtrlRulesContinuityTimeIntervalInSeconds" withDefaultValue:&unk_286769268 expectedType:v400];
  appleTvCtrlRulesContinuityTimeIntervalInSeconds = self->_appleTvCtrlRulesContinuityTimeIntervalInSeconds;
  self->_appleTvCtrlRulesContinuityTimeIntervalInSeconds = v407;

  v409 = objc_opt_class();
  appInFocusWindowInSeconds = [(IRPreferences *)self appInFocusWindowInSeconds];
  objc_opt_class();
  v411 = objc_opt_isKindOfClass();

  if (v411)
  {
    v409 = objc_opt_class();
  }

  appInFocusWindowInSeconds2 = [(IRPreferences *)self appInFocusWindowInSeconds];
  objc_opt_class();
  v413 = objc_opt_isKindOfClass();

  if (v413)
  {
    v409 = objc_opt_class();
  }

  appInFocusWindowInSeconds3 = [(IRPreferences *)self appInFocusWindowInSeconds];
  objc_opt_class();
  v415 = objc_opt_isKindOfClass();

  if (v415)
  {
    v409 = objc_opt_class();
  }

  v416 = [(IRPreferences *)self _getKeyWithType:@"IRappInFocusWindowInSeconds" withDefaultValue:&unk_2867691D8 expectedType:v409];
  appInFocusWindowInSeconds = self->_appInFocusWindowInSeconds;
  self->_appInFocusWindowInSeconds = v416;

  v418 = objc_opt_class();
  appInFocusWindowEnableOnServiceRun = [(IRPreferences *)self appInFocusWindowEnableOnServiceRun];
  objc_opt_class();
  v420 = objc_opt_isKindOfClass();

  if (v420)
  {
    v418 = objc_opt_class();
  }

  appInFocusWindowEnableOnServiceRun2 = [(IRPreferences *)self appInFocusWindowEnableOnServiceRun];
  objc_opt_class();
  v422 = objc_opt_isKindOfClass();

  if (v422)
  {
    v418 = objc_opt_class();
  }

  appInFocusWindowEnableOnServiceRun3 = [(IRPreferences *)self appInFocusWindowEnableOnServiceRun];
  objc_opt_class();
  v424 = objc_opt_isKindOfClass();

  if (v424)
  {
    v418 = objc_opt_class();
  }

  v425 = [(IRPreferences *)self _getKeyWithType:@"IRappInFocusWindowEnableOnServiceRun" withDefaultValue:MEMORY[0x277CBEC28] expectedType:v418];
  appInFocusWindowEnableOnServiceRun = self->_appInFocusWindowEnableOnServiceRun;
  self->_appInFocusWindowEnableOnServiceRun = v425;

  v427 = objc_opt_class();
  bannersFromScreenUnlockToAppInFocusEnable = [(IRPreferences *)self bannersFromScreenUnlockToAppInFocusEnable];
  objc_opt_class();
  v429 = objc_opt_isKindOfClass();

  if (v429)
  {
    v427 = objc_opt_class();
  }

  bannersFromScreenUnlockToAppInFocusEnable2 = [(IRPreferences *)self bannersFromScreenUnlockToAppInFocusEnable];
  objc_opt_class();
  v431 = objc_opt_isKindOfClass();

  if (v431)
  {
    v427 = objc_opt_class();
  }

  bannersFromScreenUnlockToAppInFocusEnable3 = [(IRPreferences *)self bannersFromScreenUnlockToAppInFocusEnable];
  objc_opt_class();
  v433 = objc_opt_isKindOfClass();

  if (v433)
  {
    v427 = objc_opt_class();
  }

  v434 = [(IRPreferences *)self _getKeyWithType:@"IRbannersFromScreenUnlockToAppInFocusEnable" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v427];
  bannersFromScreenUnlockToAppInFocusEnable = self->_bannersFromScreenUnlockToAppInFocusEnable;
  self->_bannersFromScreenUnlockToAppInFocusEnable = v434;

  v436 = objc_opt_class();
  liveOnEnable = [(IRPreferences *)self liveOnEnable];
  objc_opt_class();
  v438 = objc_opt_isKindOfClass();

  if (v438)
  {
    v436 = objc_opt_class();
  }

  liveOnEnable2 = [(IRPreferences *)self liveOnEnable];
  objc_opt_class();
  v440 = objc_opt_isKindOfClass();

  if (v440)
  {
    v436 = objc_opt_class();
  }

  liveOnEnable3 = [(IRPreferences *)self liveOnEnable];
  objc_opt_class();
  v442 = objc_opt_isKindOfClass();

  if (v442)
  {
    v436 = objc_opt_class();
  }

  v443 = [(IRPreferences *)self _getKeyWithType:@"IRliveOnEnable" withDefaultValue:MEMORY[0x277CBEC28] expectedType:v436];
  liveOnEnable = self->_liveOnEnable;
  self->_liveOnEnable = v443;

  v445 = objc_opt_class();
  liveOnTtrDebugDataRequestsEnabled = [(IRPreferences *)self liveOnTtrDebugDataRequestsEnabled];
  objc_opt_class();
  v447 = objc_opt_isKindOfClass();

  if (v447)
  {
    v445 = objc_opt_class();
  }

  liveOnTtrDebugDataRequestsEnabled2 = [(IRPreferences *)self liveOnTtrDebugDataRequestsEnabled];
  objc_opt_class();
  v449 = objc_opt_isKindOfClass();

  if (v449)
  {
    v445 = objc_opt_class();
  }

  liveOnTtrDebugDataRequestsEnabled3 = [(IRPreferences *)self liveOnTtrDebugDataRequestsEnabled];
  objc_opt_class();
  v451 = objc_opt_isKindOfClass();

  if (v451)
  {
    v445 = objc_opt_class();
  }

  v452 = [(IRPreferences *)self _getKeyWithType:@"IRliveOnTtrDebugDataRequestsEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v445];
  liveOnTtrDebugDataRequestsEnabled = self->_liveOnTtrDebugDataRequestsEnabled;
  self->_liveOnTtrDebugDataRequestsEnabled = v452;

  v454 = objc_opt_class();
  liveOnTtrPeriodicDataRequestsEnabled = [(IRPreferences *)self liveOnTtrPeriodicDataRequestsEnabled];
  objc_opt_class();
  v456 = objc_opt_isKindOfClass();

  if (v456)
  {
    v454 = objc_opt_class();
  }

  liveOnTtrPeriodicDataRequestsEnabled2 = [(IRPreferences *)self liveOnTtrPeriodicDataRequestsEnabled];
  objc_opt_class();
  v458 = objc_opt_isKindOfClass();

  if (v458)
  {
    v454 = objc_opt_class();
  }

  liveOnTtrPeriodicDataRequestsEnabled3 = [(IRPreferences *)self liveOnTtrPeriodicDataRequestsEnabled];
  objc_opt_class();
  v460 = objc_opt_isKindOfClass();

  if (v460)
  {
    v454 = objc_opt_class();
  }

  v461 = [(IRPreferences *)self _getKeyWithType:@"IRliveOnTtrPeriodicDataRequestsEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v454];
  liveOnTtrPeriodicDataRequestsEnabled = self->_liveOnTtrPeriodicDataRequestsEnabled;
  self->_liveOnTtrPeriodicDataRequestsEnabled = v461;

  v463 = objc_opt_class();
  numberOfUsedCandidates = [(IRPreferences *)self numberOfUsedCandidates];
  objc_opt_class();
  v465 = objc_opt_isKindOfClass();

  if (v465)
  {
    v463 = objc_opt_class();
  }

  numberOfUsedCandidates2 = [(IRPreferences *)self numberOfUsedCandidates];
  objc_opt_class();
  v467 = objc_opt_isKindOfClass();

  if (v467)
  {
    v463 = objc_opt_class();
  }

  numberOfUsedCandidates3 = [(IRPreferences *)self numberOfUsedCandidates];
  objc_opt_class();
  v469 = objc_opt_isKindOfClass();

  if (v469)
  {
    v463 = objc_opt_class();
  }

  v470 = [(IRPreferences *)self _getKeyWithType:@"IRnumberOfUsedCandidates" withDefaultValue:&unk_286769148 expectedType:v463];
  numberOfUsedCandidates = self->_numberOfUsedCandidates;
  self->_numberOfUsedCandidates = v470;

  v472 = objc_opt_class();
  numberOfSeenCandidates = [(IRPreferences *)self numberOfSeenCandidates];
  objc_opt_class();
  v474 = objc_opt_isKindOfClass();

  if (v474)
  {
    v472 = objc_opt_class();
  }

  numberOfSeenCandidates2 = [(IRPreferences *)self numberOfSeenCandidates];
  objc_opt_class();
  v476 = objc_opt_isKindOfClass();

  if (v476)
  {
    v472 = objc_opt_class();
  }

  numberOfSeenCandidates3 = [(IRPreferences *)self numberOfSeenCandidates];
  objc_opt_class();
  v478 = objc_opt_isKindOfClass();

  if (v478)
  {
    v472 = objc_opt_class();
  }

  v479 = [(IRPreferences *)self _getKeyWithType:@"IRnumberOfSeenCandidates" withDefaultValue:&unk_286769148 expectedType:v472];
  numberOfSeenCandidates = self->_numberOfSeenCandidates;
  self->_numberOfSeenCandidates = v479;

  v481 = objc_opt_class();
  candidateUpdateTimeIntervalSeconds = [(IRPreferences *)self candidateUpdateTimeIntervalSeconds];
  objc_opt_class();
  v483 = objc_opt_isKindOfClass();

  if (v483)
  {
    v481 = objc_opt_class();
  }

  candidateUpdateTimeIntervalSeconds2 = [(IRPreferences *)self candidateUpdateTimeIntervalSeconds];
  objc_opt_class();
  v485 = objc_opt_isKindOfClass();

  if (v485)
  {
    v481 = objc_opt_class();
  }

  candidateUpdateTimeIntervalSeconds3 = [(IRPreferences *)self candidateUpdateTimeIntervalSeconds];
  objc_opt_class();
  v487 = objc_opt_isKindOfClass();

  if (v487)
  {
    v481 = objc_opt_class();
  }

  v488 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateUpdateTimeIntervalSeconds" withDefaultValue:&unk_286769298 expectedType:v481];
  candidateUpdateTimeIntervalSeconds = self->_candidateUpdateTimeIntervalSeconds;
  self->_candidateUpdateTimeIntervalSeconds = v488;

  v490 = objc_opt_class();
  uprankToAutorouteEligibilityThreshold3rdParty = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold3rdParty];
  objc_opt_class();
  v492 = objc_opt_isKindOfClass();

  if (v492)
  {
    v490 = objc_opt_class();
  }

  uprankToAutorouteEligibilityThreshold3rdParty2 = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold3rdParty];
  objc_opt_class();
  v494 = objc_opt_isKindOfClass();

  if (v494)
  {
    v490 = objc_opt_class();
  }

  uprankToAutorouteEligibilityThreshold3rdParty3 = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold3rdParty];
  objc_opt_class();
  v496 = objc_opt_isKindOfClass();

  if (v496)
  {
    v490 = objc_opt_class();
  }

  v497 = [(IRPreferences *)self _getKeyWithType:@"IRuprankToAutorouteEligibilityThreshold3rdParty" withDefaultValue:&unk_286769208 expectedType:v490];
  uprankToAutorouteEligibilityThreshold3rdParty = self->_uprankToAutorouteEligibilityThreshold3rdParty;
  self->_uprankToAutorouteEligibilityThreshold3rdParty = v497;

  v499 = objc_opt_class();
  uprankToOneTapEligibilityThreshold3rdParty = [(IRPreferences *)self uprankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v501 = objc_opt_isKindOfClass();

  if (v501)
  {
    v499 = objc_opt_class();
  }

  uprankToOneTapEligibilityThreshold3rdParty2 = [(IRPreferences *)self uprankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v503 = objc_opt_isKindOfClass();

  if (v503)
  {
    v499 = objc_opt_class();
  }

  uprankToOneTapEligibilityThreshold3rdParty3 = [(IRPreferences *)self uprankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v505 = objc_opt_isKindOfClass();

  if (v505)
  {
    v499 = objc_opt_class();
  }

  v506 = [(IRPreferences *)self _getKeyWithType:@"IRuprankToOneTapEligibilityThreshold3rdParty" withDefaultValue:&unk_2867691F0 expectedType:v499];
  uprankToOneTapEligibilityThreshold3rdParty = self->_uprankToOneTapEligibilityThreshold3rdParty;
  self->_uprankToOneTapEligibilityThreshold3rdParty = v506;

  v508 = objc_opt_class();
  downrankToNoneEligibilityThreshold3rdParty = [(IRPreferences *)self downrankToNoneEligibilityThreshold3rdParty];
  objc_opt_class();
  v510 = objc_opt_isKindOfClass();

  if (v510)
  {
    v508 = objc_opt_class();
  }

  downrankToNoneEligibilityThreshold3rdParty2 = [(IRPreferences *)self downrankToNoneEligibilityThreshold3rdParty];
  objc_opt_class();
  v512 = objc_opt_isKindOfClass();

  if (v512)
  {
    v508 = objc_opt_class();
  }

  downrankToNoneEligibilityThreshold3rdParty3 = [(IRPreferences *)self downrankToNoneEligibilityThreshold3rdParty];
  objc_opt_class();
  v514 = objc_opt_isKindOfClass();

  if (v514)
  {
    v508 = objc_opt_class();
  }

  v515 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToNoneEligibilityThreshold3rdParty" withDefaultValue:&unk_286769208 expectedType:v508];
  downrankToNoneEligibilityThreshold3rdParty = self->_downrankToNoneEligibilityThreshold3rdParty;
  self->_downrankToNoneEligibilityThreshold3rdParty = v515;

  v517 = objc_opt_class();
  downrankToOneTapEligibilityThreshold3rdParty = [(IRPreferences *)self downrankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v519 = objc_opt_isKindOfClass();

  if (v519)
  {
    v517 = objc_opt_class();
  }

  downrankToOneTapEligibilityThreshold3rdParty2 = [(IRPreferences *)self downrankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v521 = objc_opt_isKindOfClass();

  if (v521)
  {
    v517 = objc_opt_class();
  }

  downrankToOneTapEligibilityThreshold3rdParty3 = [(IRPreferences *)self downrankToOneTapEligibilityThreshold3rdParty];
  objc_opt_class();
  v523 = objc_opt_isKindOfClass();

  if (v523)
  {
    v517 = objc_opt_class();
  }

  v524 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToOneTapEligibilityThreshold3rdParty" withDefaultValue:&unk_2867691F0 expectedType:v517];
  downrankToOneTapEligibilityThreshold3rdParty = self->_downrankToOneTapEligibilityThreshold3rdParty;
  self->_downrankToOneTapEligibilityThreshold3rdParty = v524;

  v526 = objc_opt_class();
  eligibilityInitStateIsOneTap3rdParty = [(IRPreferences *)self eligibilityInitStateIsOneTap3rdParty];
  objc_opt_class();
  v528 = objc_opt_isKindOfClass();

  if (v528)
  {
    v526 = objc_opt_class();
  }

  eligibilityInitStateIsOneTap3rdParty2 = [(IRPreferences *)self eligibilityInitStateIsOneTap3rdParty];
  objc_opt_class();
  v530 = objc_opt_isKindOfClass();

  if (v530)
  {
    v526 = objc_opt_class();
  }

  eligibilityInitStateIsOneTap3rdParty3 = [(IRPreferences *)self eligibilityInitStateIsOneTap3rdParty];
  objc_opt_class();
  v532 = objc_opt_isKindOfClass();

  if (v532)
  {
    v526 = objc_opt_class();
  }

  v533 = [(IRPreferences *)self _getKeyWithType:@"IReligibilityInitStateIsOneTap3rdParty" withDefaultValue:MEMORY[0x277CBEC28] expectedType:v526];
  eligibilityInitStateIsOneTap3rdParty = self->_eligibilityInitStateIsOneTap3rdParty;
  self->_eligibilityInitStateIsOneTap3rdParty = v533;

  v535 = objc_opt_class();
  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty];
  objc_opt_class();
  v537 = objc_opt_isKindOfClass();

  if (v537)
  {
    v535 = objc_opt_class();
  }

  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty2 = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty];
  objc_opt_class();
  v539 = objc_opt_isKindOfClass();

  if (v539)
  {
    v535 = objc_opt_class();
  }

  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty3 = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty];
  objc_opt_class();
  v541 = objc_opt_isKindOfClass();

  if (v541)
  {
    v535 = objc_opt_class();
  }

  v542 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty" withDefaultValue:&unk_2867691C0 expectedType:v535];
  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty = self->_downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty;
  self->_downrankToNoneEligibilityBasedOnDismissAndRejectThreshold3rdParty = v542;

  v544 = objc_opt_class();
  uprankToAutorouteEligibilityThreshold1stParty = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold1stParty];
  objc_opt_class();
  v546 = objc_opt_isKindOfClass();

  if (v546)
  {
    v544 = objc_opt_class();
  }

  uprankToAutorouteEligibilityThreshold1stParty2 = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold1stParty];
  objc_opt_class();
  v548 = objc_opt_isKindOfClass();

  if (v548)
  {
    v544 = objc_opt_class();
  }

  uprankToAutorouteEligibilityThreshold1stParty3 = [(IRPreferences *)self uprankToAutorouteEligibilityThreshold1stParty];
  objc_opt_class();
  v550 = objc_opt_isKindOfClass();

  if (v550)
  {
    v544 = objc_opt_class();
  }

  v551 = [(IRPreferences *)self _getKeyWithType:@"IRuprankToAutorouteEligibilityThreshold1stParty" withDefaultValue:&unk_286769208 expectedType:v544];
  uprankToAutorouteEligibilityThreshold1stParty = self->_uprankToAutorouteEligibilityThreshold1stParty;
  self->_uprankToAutorouteEligibilityThreshold1stParty = v551;

  v553 = objc_opt_class();
  uprankToOneTapEligibilityThreshold1stParty = [(IRPreferences *)self uprankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v555 = objc_opt_isKindOfClass();

  if (v555)
  {
    v553 = objc_opt_class();
  }

  uprankToOneTapEligibilityThreshold1stParty2 = [(IRPreferences *)self uprankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v557 = objc_opt_isKindOfClass();

  if (v557)
  {
    v553 = objc_opt_class();
  }

  uprankToOneTapEligibilityThreshold1stParty3 = [(IRPreferences *)self uprankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v559 = objc_opt_isKindOfClass();

  if (v559)
  {
    v553 = objc_opt_class();
  }

  v560 = [(IRPreferences *)self _getKeyWithType:@"IRuprankToOneTapEligibilityThreshold1stParty" withDefaultValue:&unk_2867691F0 expectedType:v553];
  uprankToOneTapEligibilityThreshold1stParty = self->_uprankToOneTapEligibilityThreshold1stParty;
  self->_uprankToOneTapEligibilityThreshold1stParty = v560;

  v562 = objc_opt_class();
  downrankToNoneEligibilityThreshold1stParty = [(IRPreferences *)self downrankToNoneEligibilityThreshold1stParty];
  objc_opt_class();
  v564 = objc_opt_isKindOfClass();

  if (v564)
  {
    v562 = objc_opt_class();
  }

  downrankToNoneEligibilityThreshold1stParty2 = [(IRPreferences *)self downrankToNoneEligibilityThreshold1stParty];
  objc_opt_class();
  v566 = objc_opt_isKindOfClass();

  if (v566)
  {
    v562 = objc_opt_class();
  }

  downrankToNoneEligibilityThreshold1stParty3 = [(IRPreferences *)self downrankToNoneEligibilityThreshold1stParty];
  objc_opt_class();
  v568 = objc_opt_isKindOfClass();

  if (v568)
  {
    v562 = objc_opt_class();
  }

  v569 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToNoneEligibilityThreshold1stParty" withDefaultValue:&unk_286769208 expectedType:v562];
  downrankToNoneEligibilityThreshold1stParty = self->_downrankToNoneEligibilityThreshold1stParty;
  self->_downrankToNoneEligibilityThreshold1stParty = v569;

  v571 = objc_opt_class();
  downrankToOneTapEligibilityThreshold1stParty = [(IRPreferences *)self downrankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v573 = objc_opt_isKindOfClass();

  if (v573)
  {
    v571 = objc_opt_class();
  }

  downrankToOneTapEligibilityThreshold1stParty2 = [(IRPreferences *)self downrankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v575 = objc_opt_isKindOfClass();

  if (v575)
  {
    v571 = objc_opt_class();
  }

  downrankToOneTapEligibilityThreshold1stParty3 = [(IRPreferences *)self downrankToOneTapEligibilityThreshold1stParty];
  objc_opt_class();
  v577 = objc_opt_isKindOfClass();

  if (v577)
  {
    v571 = objc_opt_class();
  }

  v578 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToOneTapEligibilityThreshold1stParty" withDefaultValue:&unk_2867691F0 expectedType:v571];
  downrankToOneTapEligibilityThreshold1stParty = self->_downrankToOneTapEligibilityThreshold1stParty;
  self->_downrankToOneTapEligibilityThreshold1stParty = v578;

  v580 = objc_opt_class();
  eligibilityInitStateIsOneTap1stParty = [(IRPreferences *)self eligibilityInitStateIsOneTap1stParty];
  objc_opt_class();
  v582 = objc_opt_isKindOfClass();

  if (v582)
  {
    v580 = objc_opt_class();
  }

  eligibilityInitStateIsOneTap1stParty2 = [(IRPreferences *)self eligibilityInitStateIsOneTap1stParty];
  objc_opt_class();
  v584 = objc_opt_isKindOfClass();

  if (v584)
  {
    v580 = objc_opt_class();
  }

  eligibilityInitStateIsOneTap1stParty3 = [(IRPreferences *)self eligibilityInitStateIsOneTap1stParty];
  objc_opt_class();
  v586 = objc_opt_isKindOfClass();

  if (v586)
  {
    v580 = objc_opt_class();
  }

  v587 = [(IRPreferences *)self _getKeyWithType:@"IReligibilityInitStateIsOneTap1stParty" withDefaultValue:MEMORY[0x277CBEC28] expectedType:v580];
  eligibilityInitStateIsOneTap1stParty = self->_eligibilityInitStateIsOneTap1stParty;
  self->_eligibilityInitStateIsOneTap1stParty = v587;

  v589 = objc_opt_class();
  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty];
  objc_opt_class();
  v591 = objc_opt_isKindOfClass();

  if (v591)
  {
    v589 = objc_opt_class();
  }

  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty2 = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty];
  objc_opt_class();
  v593 = objc_opt_isKindOfClass();

  if (v593)
  {
    v589 = objc_opt_class();
  }

  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty3 = [(IRPreferences *)self downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty];
  objc_opt_class();
  v595 = objc_opt_isKindOfClass();

  if (v595)
  {
    v589 = objc_opt_class();
  }

  v596 = [(IRPreferences *)self _getKeyWithType:@"IRdownrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty" withDefaultValue:&unk_2867691C0 expectedType:v589];
  downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty = self->_downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty;
  self->_downrankToNoneEligibilityBasedOnDismissAndRejectThreshold1stParty = v596;

  v598 = objc_opt_class();
  pickerAutoSelectToPicketChoiceMinInterval = [(IRPreferences *)self pickerAutoSelectToPicketChoiceMinInterval];
  objc_opt_class();
  v600 = objc_opt_isKindOfClass();

  if (v600)
  {
    v598 = objc_opt_class();
  }

  pickerAutoSelectToPicketChoiceMinInterval2 = [(IRPreferences *)self pickerAutoSelectToPicketChoiceMinInterval];
  objc_opt_class();
  v602 = objc_opt_isKindOfClass();

  if (v602)
  {
    v598 = objc_opt_class();
  }

  pickerAutoSelectToPicketChoiceMinInterval3 = [(IRPreferences *)self pickerAutoSelectToPicketChoiceMinInterval];
  objc_opt_class();
  v604 = objc_opt_isKindOfClass();

  if (v604)
  {
    v598 = objc_opt_class();
  }

  v605 = [(IRPreferences *)self _getKeyWithType:@"IRpickerAutoSelectToPicketChoiceMinInterval" withDefaultValue:&unk_286769148 expectedType:v598];
  pickerAutoSelectToPicketChoiceMinInterval = self->_pickerAutoSelectToPicketChoiceMinInterval;
  self->_pickerAutoSelectToPicketChoiceMinInterval = v605;

  v607 = objc_opt_class();
  brokeredUseScansForEligibilityOfMainDevice = [(IRPreferences *)self brokeredUseScansForEligibilityOfMainDevice];
  objc_opt_class();
  v609 = objc_opt_isKindOfClass();

  if (v609)
  {
    v607 = objc_opt_class();
  }

  brokeredUseScansForEligibilityOfMainDevice2 = [(IRPreferences *)self brokeredUseScansForEligibilityOfMainDevice];
  objc_opt_class();
  v611 = objc_opt_isKindOfClass();

  if (v611)
  {
    v607 = objc_opt_class();
  }

  brokeredUseScansForEligibilityOfMainDevice3 = [(IRPreferences *)self brokeredUseScansForEligibilityOfMainDevice];
  objc_opt_class();
  v613 = objc_opt_isKindOfClass();

  if (v613)
  {
    v607 = objc_opt_class();
  }

  v614 = [(IRPreferences *)self _getKeyWithType:@"IRbrokeredUseScansForEligibilityOfMainDevice" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v607];
  brokeredUseScansForEligibilityOfMainDevice = self->_brokeredUseScansForEligibilityOfMainDevice;
  self->_brokeredUseScansForEligibilityOfMainDevice = v614;

  v616 = objc_opt_class();
  brokeredUseScansForEligibilityOfSecondaryDevice = [(IRPreferences *)self brokeredUseScansForEligibilityOfSecondaryDevice];
  objc_opt_class();
  v618 = objc_opt_isKindOfClass();

  if (v618)
  {
    v616 = objc_opt_class();
  }

  brokeredUseScansForEligibilityOfSecondaryDevice2 = [(IRPreferences *)self brokeredUseScansForEligibilityOfSecondaryDevice];
  objc_opt_class();
  v620 = objc_opt_isKindOfClass();

  if (v620)
  {
    v616 = objc_opt_class();
  }

  brokeredUseScansForEligibilityOfSecondaryDevice3 = [(IRPreferences *)self brokeredUseScansForEligibilityOfSecondaryDevice];
  objc_opt_class();
  v622 = objc_opt_isKindOfClass();

  if (v622)
  {
    v616 = objc_opt_class();
  }

  v623 = [(IRPreferences *)self _getKeyWithType:@"IRbrokeredUseScansForEligibilityOfSecondaryDevice" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v616];
  brokeredUseScansForEligibilityOfSecondaryDevice = self->_brokeredUseScansForEligibilityOfSecondaryDevice;
  self->_brokeredUseScansForEligibilityOfSecondaryDevice = v623;

  v625 = objc_opt_class();
  miloSameSpaceRatioThreshold = [(IRPreferences *)self miloSameSpaceRatioThreshold];
  objc_opt_class();
  v627 = objc_opt_isKindOfClass();

  if (v627)
  {
    v625 = objc_opt_class();
  }

  miloSameSpaceRatioThreshold2 = [(IRPreferences *)self miloSameSpaceRatioThreshold];
  objc_opt_class();
  v629 = objc_opt_isKindOfClass();

  if (v629)
  {
    v625 = objc_opt_class();
  }

  miloSameSpaceRatioThreshold3 = [(IRPreferences *)self miloSameSpaceRatioThreshold];
  objc_opt_class();
  v631 = objc_opt_isKindOfClass();

  if (v631)
  {
    v625 = objc_opt_class();
  }

  v632 = [(IRPreferences *)self _getKeyWithType:@"IRmiloSameSpaceRatioThreshold" withDefaultValue:&unk_286769370 expectedType:v625];
  miloSameSpaceRatioThreshold = self->_miloSameSpaceRatioThreshold;
  self->_miloSameSpaceRatioThreshold = v632;

  v634 = objc_opt_class();
  miloSameSpaceEventsTimeIntervalSeconds = [(IRPreferences *)self miloSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v636 = objc_opt_isKindOfClass();

  if (v636)
  {
    v634 = objc_opt_class();
  }

  miloSameSpaceEventsTimeIntervalSeconds2 = [(IRPreferences *)self miloSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v638 = objc_opt_isKindOfClass();

  if (v638)
  {
    v634 = objc_opt_class();
  }

  miloSameSpaceEventsTimeIntervalSeconds3 = [(IRPreferences *)self miloSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v640 = objc_opt_isKindOfClass();

  if (v640)
  {
    v634 = objc_opt_class();
  }

  v641 = [(IRPreferences *)self _getKeyWithType:@"IRmiloSameSpaceEventsTimeIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v634];
  miloSameSpaceEventsTimeIntervalSeconds = self->_miloSameSpaceEventsTimeIntervalSeconds;
  self->_miloSameSpaceEventsTimeIntervalSeconds = v641;

  v643 = objc_opt_class();
  miloSameSpaceEventsNumberOfEventsToWatch = [(IRPreferences *)self miloSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v645 = objc_opt_isKindOfClass();

  if (v645)
  {
    v643 = objc_opt_class();
  }

  miloSameSpaceEventsNumberOfEventsToWatch2 = [(IRPreferences *)self miloSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v647 = objc_opt_isKindOfClass();

  if (v647)
  {
    v643 = objc_opt_class();
  }

  miloSameSpaceEventsNumberOfEventsToWatch3 = [(IRPreferences *)self miloSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v649 = objc_opt_isKindOfClass();

  if (v649)
  {
    v643 = objc_opt_class();
  }

  v650 = [(IRPreferences *)self _getKeyWithType:@"IRmiloSameSpaceEventsNumberOfEventsToWatch" withDefaultValue:&unk_286769220 expectedType:v643];
  miloSameSpaceEventsNumberOfEventsToWatch = self->_miloSameSpaceEventsNumberOfEventsToWatch;
  self->_miloSameSpaceEventsNumberOfEventsToWatch = v650;

  v652 = objc_opt_class();
  loiSameSpaceEventsTimeIntervalSeconds = [(IRPreferences *)self loiSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v654 = objc_opt_isKindOfClass();

  if (v654)
  {
    v652 = objc_opt_class();
  }

  loiSameSpaceEventsTimeIntervalSeconds2 = [(IRPreferences *)self loiSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v656 = objc_opt_isKindOfClass();

  if (v656)
  {
    v652 = objc_opt_class();
  }

  loiSameSpaceEventsTimeIntervalSeconds3 = [(IRPreferences *)self loiSameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v658 = objc_opt_isKindOfClass();

  if (v658)
  {
    v652 = objc_opt_class();
  }

  v659 = [(IRPreferences *)self _getKeyWithType:@"IRloiSameSpaceEventsTimeIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v652];
  loiSameSpaceEventsTimeIntervalSeconds = self->_loiSameSpaceEventsTimeIntervalSeconds;
  self->_loiSameSpaceEventsTimeIntervalSeconds = v659;

  v661 = objc_opt_class();
  loiSameSpaceEventsNumberOfEventsToWatch = [(IRPreferences *)self loiSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v663 = objc_opt_isKindOfClass();

  if (v663)
  {
    v661 = objc_opt_class();
  }

  loiSameSpaceEventsNumberOfEventsToWatch2 = [(IRPreferences *)self loiSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v665 = objc_opt_isKindOfClass();

  if (v665)
  {
    v661 = objc_opt_class();
  }

  loiSameSpaceEventsNumberOfEventsToWatch3 = [(IRPreferences *)self loiSameSpaceEventsNumberOfEventsToWatch];
  objc_opt_class();
  v667 = objc_opt_isKindOfClass();

  if (v667)
  {
    v661 = objc_opt_class();
  }

  v668 = [(IRPreferences *)self _getKeyWithType:@"IRloiSameSpaceEventsNumberOfEventsToWatch" withDefaultValue:&unk_2867692B0 expectedType:v661];
  loiSameSpaceEventsNumberOfEventsToWatch = self->_loiSameSpaceEventsNumberOfEventsToWatch;
  self->_loiSameSpaceEventsNumberOfEventsToWatch = v668;

  v670 = objc_opt_class();
  loiSameSpaceOverrideBrokerForAVODIDArray = [(IRPreferences *)self loiSameSpaceOverrideBrokerForAVODIDArray];
  objc_opt_class();
  v672 = objc_opt_isKindOfClass();

  if (v672)
  {
    v670 = objc_opt_class();
  }

  loiSameSpaceOverrideBrokerForAVODIDArray2 = [(IRPreferences *)self loiSameSpaceOverrideBrokerForAVODIDArray];
  objc_opt_class();
  v674 = objc_opt_isKindOfClass();

  if (v674)
  {
    v670 = objc_opt_class();
  }

  loiSameSpaceOverrideBrokerForAVODIDArray3 = [(IRPreferences *)self loiSameSpaceOverrideBrokerForAVODIDArray];
  objc_opt_class();
  v676 = objc_opt_isKindOfClass();

  if (v676)
  {
    v670 = objc_opt_class();
  }

  array2 = [MEMORY[0x277CBEA60] array];
  v678 = [(IRPreferences *)self _getKeyWithType:@"IRloiSameSpaceOverrideBrokerForAVODIDArray" withDefaultValue:array2 expectedType:v670];
  loiSameSpaceOverrideBrokerForAVODIDArray = self->_loiSameSpaceOverrideBrokerForAVODIDArray;
  self->_loiSameSpaceOverrideBrokerForAVODIDArray = v678;

  v680 = objc_opt_class();
  loiSameSpaceOverrideBrokerForCandidateIDArray = [(IRPreferences *)self loiSameSpaceOverrideBrokerForCandidateIDArray];
  objc_opt_class();
  v682 = objc_opt_isKindOfClass();

  if (v682)
  {
    v680 = objc_opt_class();
  }

  loiSameSpaceOverrideBrokerForCandidateIDArray2 = [(IRPreferences *)self loiSameSpaceOverrideBrokerForCandidateIDArray];
  objc_opt_class();
  v684 = objc_opt_isKindOfClass();

  if (v684)
  {
    v680 = objc_opt_class();
  }

  loiSameSpaceOverrideBrokerForCandidateIDArray3 = [(IRPreferences *)self loiSameSpaceOverrideBrokerForCandidateIDArray];
  objc_opt_class();
  v686 = objc_opt_isKindOfClass();

  if (v686)
  {
    v680 = objc_opt_class();
  }

  array3 = [MEMORY[0x277CBEA60] array];
  v688 = [(IRPreferences *)self _getKeyWithType:@"IRloiSameSpaceOverrideBrokerForCandidateIDArray" withDefaultValue:array3 expectedType:v680];
  loiSameSpaceOverrideBrokerForCandidateIDArray = self->_loiSameSpaceOverrideBrokerForCandidateIDArray;
  self->_loiSameSpaceOverrideBrokerForCandidateIDArray = v688;

  v690 = objc_opt_class();
  historySameSpaceEventsTimeIntervalSeconds = [(IRPreferences *)self historySameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v692 = objc_opt_isKindOfClass();

  if (v692)
  {
    v690 = objc_opt_class();
  }

  historySameSpaceEventsTimeIntervalSeconds2 = [(IRPreferences *)self historySameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v694 = objc_opt_isKindOfClass();

  if (v694)
  {
    v690 = objc_opt_class();
  }

  historySameSpaceEventsTimeIntervalSeconds3 = [(IRPreferences *)self historySameSpaceEventsTimeIntervalSeconds];
  objc_opt_class();
  v696 = objc_opt_isKindOfClass();

  if (v696)
  {
    v690 = objc_opt_class();
  }

  v697 = [(IRPreferences *)self _getKeyWithType:@"IRhistorySameSpaceEventsTimeIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v690];
  historySameSpaceEventsTimeIntervalSeconds = self->_historySameSpaceEventsTimeIntervalSeconds;
  self->_historySameSpaceEventsTimeIntervalSeconds = v697;

  v699 = objc_opt_class();
  candidateSelectorMostUsedSimilarAppTimeIntervalSeconds = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppTimeIntervalSeconds];
  objc_opt_class();
  v701 = objc_opt_isKindOfClass();

  if (v701)
  {
    v699 = objc_opt_class();
  }

  candidateSelectorMostUsedSimilarAppTimeIntervalSeconds2 = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppTimeIntervalSeconds];
  objc_opt_class();
  v703 = objc_opt_isKindOfClass();

  if (v703)
  {
    v699 = objc_opt_class();
  }

  candidateSelectorMostUsedSimilarAppTimeIntervalSeconds3 = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppTimeIntervalSeconds];
  objc_opt_class();
  v705 = objc_opt_isKindOfClass();

  if (v705)
  {
    v699 = objc_opt_class();
  }

  v706 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostUsedSimilarAppTimeIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v699];
  candidateSelectorMostUsedSimilarAppTimeIntervalSeconds = self->_candidateSelectorMostUsedSimilarAppTimeIntervalSeconds;
  self->_candidateSelectorMostUsedSimilarAppTimeIntervalSeconds = v706;

  v708 = objc_opt_class();
  candidateSelectorMostUsedAnyAppTimeIntervalSeconds = [(IRPreferences *)self candidateSelectorMostUsedAnyAppTimeIntervalSeconds];
  objc_opt_class();
  v710 = objc_opt_isKindOfClass();

  if (v710)
  {
    v708 = objc_opt_class();
  }

  candidateSelectorMostUsedAnyAppTimeIntervalSeconds2 = [(IRPreferences *)self candidateSelectorMostUsedAnyAppTimeIntervalSeconds];
  objc_opt_class();
  v712 = objc_opt_isKindOfClass();

  if (v712)
  {
    v708 = objc_opt_class();
  }

  candidateSelectorMostUsedAnyAppTimeIntervalSeconds3 = [(IRPreferences *)self candidateSelectorMostUsedAnyAppTimeIntervalSeconds];
  objc_opt_class();
  v714 = objc_opt_isKindOfClass();

  if (v714)
  {
    v708 = objc_opt_class();
  }

  v715 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostUsedAnyAppTimeIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v708];
  candidateSelectorMostUsedAnyAppTimeIntervalSeconds = self->_candidateSelectorMostUsedAnyAppTimeIntervalSeconds;
  self->_candidateSelectorMostUsedAnyAppTimeIntervalSeconds = v715;

  v717 = objc_opt_class();
  candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds = [(IRPreferences *)self candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds];
  objc_opt_class();
  v719 = objc_opt_isKindOfClass();

  if (v719)
  {
    v717 = objc_opt_class();
  }

  candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds2 = [(IRPreferences *)self candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds];
  objc_opt_class();
  v721 = objc_opt_isKindOfClass();

  if (v721)
  {
    v717 = objc_opt_class();
  }

  candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds3 = [(IRPreferences *)self candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds];
  objc_opt_class();
  v723 = objc_opt_isKindOfClass();

  if (v723)
  {
    v717 = objc_opt_class();
  }

  v724 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds" withDefaultValue:&unk_286769160 expectedType:v717];
  candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds = self->_candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds;
  self->_candidateSelectorMostRecentBrokeredMainDeviceIntervalSeconds = v724;

  v726 = objc_opt_class();
  candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents];
  objc_opt_class();
  v728 = objc_opt_isKindOfClass();

  if (v728)
  {
    v726 = objc_opt_class();
  }

  candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents2 = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents];
  objc_opt_class();
  v730 = objc_opt_isKindOfClass();

  if (v730)
  {
    v726 = objc_opt_class();
  }

  candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents3 = [(IRPreferences *)self candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents];
  objc_opt_class();
  v732 = objc_opt_isKindOfClass();

  if (v732)
  {
    v726 = objc_opt_class();
  }

  v733 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostUsedSimilarAppMaximumNumberOfEvents" withDefaultValue:&unk_2867691A8 expectedType:v726];
  candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents = self->_candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents;
  self->_candidateSelectorMostUsedSimilarAppMaximumNumberOfEvents = v733;

  v735 = objc_opt_class();
  candidateSelectorMostUsedAnyAppMaximumNumberOfEvents = [(IRPreferences *)self candidateSelectorMostUsedAnyAppMaximumNumberOfEvents];
  objc_opt_class();
  v737 = objc_opt_isKindOfClass();

  if (v737)
  {
    v735 = objc_opt_class();
  }

  candidateSelectorMostUsedAnyAppMaximumNumberOfEvents2 = [(IRPreferences *)self candidateSelectorMostUsedAnyAppMaximumNumberOfEvents];
  objc_opt_class();
  v739 = objc_opt_isKindOfClass();

  if (v739)
  {
    v735 = objc_opt_class();
  }

  candidateSelectorMostUsedAnyAppMaximumNumberOfEvents3 = [(IRPreferences *)self candidateSelectorMostUsedAnyAppMaximumNumberOfEvents];
  objc_opt_class();
  v741 = objc_opt_isKindOfClass();

  if (v741)
  {
    v735 = objc_opt_class();
  }

  v742 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostUsedAnyAppMaximumNumberOfEvents" withDefaultValue:&unk_2867691A8 expectedType:v735];
  candidateSelectorMostUsedAnyAppMaximumNumberOfEvents = self->_candidateSelectorMostUsedAnyAppMaximumNumberOfEvents;
  self->_candidateSelectorMostUsedAnyAppMaximumNumberOfEvents = v742;

  v744 = objc_opt_class();
  candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents = [(IRPreferences *)self candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents];
  objc_opt_class();
  v746 = objc_opt_isKindOfClass();

  if (v746)
  {
    v744 = objc_opt_class();
  }

  candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents2 = [(IRPreferences *)self candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents];
  objc_opt_class();
  v748 = objc_opt_isKindOfClass();

  if (v748)
  {
    v744 = objc_opt_class();
  }

  candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents3 = [(IRPreferences *)self candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents];
  objc_opt_class();
  v750 = objc_opt_isKindOfClass();

  if (v750)
  {
    v744 = objc_opt_class();
  }

  v751 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents" withDefaultValue:&unk_2867691F0 expectedType:v744];
  candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents = self->_candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents;
  self->_candidateSelectorMostRecentBrokeredDeviceMaximumNumberOfEvents = v751;

  v753 = objc_opt_class();
  candidateSelectorIsContinuityEnabled = [(IRPreferences *)self candidateSelectorIsContinuityEnabled];
  objc_opt_class();
  v755 = objc_opt_isKindOfClass();

  if (v755)
  {
    v753 = objc_opt_class();
  }

  candidateSelectorIsContinuityEnabled2 = [(IRPreferences *)self candidateSelectorIsContinuityEnabled];
  objc_opt_class();
  v757 = objc_opt_isKindOfClass();

  if (v757)
  {
    v753 = objc_opt_class();
  }

  candidateSelectorIsContinuityEnabled3 = [(IRPreferences *)self candidateSelectorIsContinuityEnabled];
  objc_opt_class();
  v759 = objc_opt_isKindOfClass();

  if (v759)
  {
    v753 = objc_opt_class();
  }

  v760 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorIsContinuityEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v753];
  candidateSelectorIsContinuityEnabled = self->_candidateSelectorIsContinuityEnabled;
  self->_candidateSelectorIsContinuityEnabled = v760;

  v762 = objc_opt_class();
  candidateSelectorIsMostUsedSimilarAppEnabled = [(IRPreferences *)self candidateSelectorIsMostUsedSimilarAppEnabled];
  objc_opt_class();
  v764 = objc_opt_isKindOfClass();

  if (v764)
  {
    v762 = objc_opt_class();
  }

  candidateSelectorIsMostUsedSimilarAppEnabled2 = [(IRPreferences *)self candidateSelectorIsMostUsedSimilarAppEnabled];
  objc_opt_class();
  v766 = objc_opt_isKindOfClass();

  if (v766)
  {
    v762 = objc_opt_class();
  }

  candidateSelectorIsMostUsedSimilarAppEnabled3 = [(IRPreferences *)self candidateSelectorIsMostUsedSimilarAppEnabled];
  objc_opt_class();
  v768 = objc_opt_isKindOfClass();

  if (v768)
  {
    v762 = objc_opt_class();
  }

  v769 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorIsMostUsedSimilarAppEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v762];
  candidateSelectorIsMostUsedSimilarAppEnabled = self->_candidateSelectorIsMostUsedSimilarAppEnabled;
  self->_candidateSelectorIsMostUsedSimilarAppEnabled = v769;

  v771 = objc_opt_class();
  candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled = [(IRPreferences *)self candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled];
  objc_opt_class();
  v773 = objc_opt_isKindOfClass();

  if (v773)
  {
    v771 = objc_opt_class();
  }

  candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled2 = [(IRPreferences *)self candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled];
  objc_opt_class();
  v775 = objc_opt_isKindOfClass();

  if (v775)
  {
    v771 = objc_opt_class();
  }

  candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled3 = [(IRPreferences *)self candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled];
  objc_opt_class();
  v777 = objc_opt_isKindOfClass();

  if (v777)
  {
    v771 = objc_opt_class();
  }

  v778 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v771];
  candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled = self->_candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled;
  self->_candidateSelectorIsNearestRangeWithHistoryOrSameICloudEnabled = v778;

  v780 = objc_opt_class();
  candidateSelectorIsNearestRangeEnabled = [(IRPreferences *)self candidateSelectorIsNearestRangeEnabled];
  objc_opt_class();
  v782 = objc_opt_isKindOfClass();

  if (v782)
  {
    v780 = objc_opt_class();
  }

  candidateSelectorIsNearestRangeEnabled2 = [(IRPreferences *)self candidateSelectorIsNearestRangeEnabled];
  objc_opt_class();
  v784 = objc_opt_isKindOfClass();

  if (v784)
  {
    v780 = objc_opt_class();
  }

  candidateSelectorIsNearestRangeEnabled3 = [(IRPreferences *)self candidateSelectorIsNearestRangeEnabled];
  objc_opt_class();
  v786 = objc_opt_isKindOfClass();

  if (v786)
  {
    v780 = objc_opt_class();
  }

  v787 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorIsNearestRangeEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v780];
  candidateSelectorIsNearestRangeEnabled = self->_candidateSelectorIsNearestRangeEnabled;
  self->_candidateSelectorIsNearestRangeEnabled = v787;

  v789 = objc_opt_class();
  candidateSelectorIsMostUsedAnyAppEnabled = [(IRPreferences *)self candidateSelectorIsMostUsedAnyAppEnabled];
  objc_opt_class();
  v791 = objc_opt_isKindOfClass();

  if (v791)
  {
    v789 = objc_opt_class();
  }

  candidateSelectorIsMostUsedAnyAppEnabled2 = [(IRPreferences *)self candidateSelectorIsMostUsedAnyAppEnabled];
  objc_opt_class();
  v793 = objc_opt_isKindOfClass();

  if (v793)
  {
    v789 = objc_opt_class();
  }

  candidateSelectorIsMostUsedAnyAppEnabled3 = [(IRPreferences *)self candidateSelectorIsMostUsedAnyAppEnabled];
  objc_opt_class();
  v795 = objc_opt_isKindOfClass();

  if (v795)
  {
    v789 = objc_opt_class();
  }

  v796 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorIsMostUsedAnyAppEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v789];
  candidateSelectorIsMostUsedAnyAppEnabled = self->_candidateSelectorIsMostUsedAnyAppEnabled;
  self->_candidateSelectorIsMostUsedAnyAppEnabled = v796;

  v798 = objc_opt_class();
  candidateSelectorAllowSelectByUWB = [(IRPreferences *)self candidateSelectorAllowSelectByUWB];
  objc_opt_class();
  v800 = objc_opt_isKindOfClass();

  if (v800)
  {
    v798 = objc_opt_class();
  }

  candidateSelectorAllowSelectByUWB2 = [(IRPreferences *)self candidateSelectorAllowSelectByUWB];
  objc_opt_class();
  v802 = objc_opt_isKindOfClass();

  if (v802)
  {
    v798 = objc_opt_class();
  }

  candidateSelectorAllowSelectByUWB3 = [(IRPreferences *)self candidateSelectorAllowSelectByUWB];
  objc_opt_class();
  v804 = objc_opt_isKindOfClass();

  if (v804)
  {
    v798 = objc_opt_class();
  }

  v805 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByUWB" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v798];
  candidateSelectorAllowSelectByUWB = self->_candidateSelectorAllowSelectByUWB;
  self->_candidateSelectorAllowSelectByUWB = v805;

  v807 = objc_opt_class();
  candidateSelectorAllowSelectByMiLo = [(IRPreferences *)self candidateSelectorAllowSelectByMiLo];
  objc_opt_class();
  v809 = objc_opt_isKindOfClass();

  if (v809)
  {
    v807 = objc_opt_class();
  }

  candidateSelectorAllowSelectByMiLo2 = [(IRPreferences *)self candidateSelectorAllowSelectByMiLo];
  objc_opt_class();
  v811 = objc_opt_isKindOfClass();

  if (v811)
  {
    v807 = objc_opt_class();
  }

  candidateSelectorAllowSelectByMiLo3 = [(IRPreferences *)self candidateSelectorAllowSelectByMiLo];
  objc_opt_class();
  v813 = objc_opt_isKindOfClass();

  if (v813)
  {
    v807 = objc_opt_class();
  }

  v814 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByMiLo" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v807];
  candidateSelectorAllowSelectByMiLo = self->_candidateSelectorAllowSelectByMiLo;
  self->_candidateSelectorAllowSelectByMiLo = v814;

  v816 = objc_opt_class();
  candidateSelectorAllowSelectByBLE = [(IRPreferences *)self candidateSelectorAllowSelectByBLE];
  objc_opt_class();
  v818 = objc_opt_isKindOfClass();

  if (v818)
  {
    v816 = objc_opt_class();
  }

  candidateSelectorAllowSelectByBLE2 = [(IRPreferences *)self candidateSelectorAllowSelectByBLE];
  objc_opt_class();
  v820 = objc_opt_isKindOfClass();

  if (v820)
  {
    v816 = objc_opt_class();
  }

  candidateSelectorAllowSelectByBLE3 = [(IRPreferences *)self candidateSelectorAllowSelectByBLE];
  objc_opt_class();
  v822 = objc_opt_isKindOfClass();

  if (v822)
  {
    v816 = objc_opt_class();
  }

  v823 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByBLE" withDefaultValue:MEMORY[0x277CBEC28] expectedType:v816];
  candidateSelectorAllowSelectByBLE = self->_candidateSelectorAllowSelectByBLE;
  self->_candidateSelectorAllowSelectByBLE = v823;

  v825 = objc_opt_class();
  candidateSelectorAllowSelectByLOI = [(IRPreferences *)self candidateSelectorAllowSelectByLOI];
  objc_opt_class();
  v827 = objc_opt_isKindOfClass();

  if (v827)
  {
    v825 = objc_opt_class();
  }

  candidateSelectorAllowSelectByLOI2 = [(IRPreferences *)self candidateSelectorAllowSelectByLOI];
  objc_opt_class();
  v829 = objc_opt_isKindOfClass();

  if (v829)
  {
    v825 = objc_opt_class();
  }

  candidateSelectorAllowSelectByLOI3 = [(IRPreferences *)self candidateSelectorAllowSelectByLOI];
  objc_opt_class();
  v831 = objc_opt_isKindOfClass();

  if (v831)
  {
    v825 = objc_opt_class();
  }

  v832 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByLOI" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v825];
  candidateSelectorAllowSelectByLOI = self->_candidateSelectorAllowSelectByLOI;
  self->_candidateSelectorAllowSelectByLOI = v832;

  v834 = objc_opt_class();
  candidateSelectorAllowSelectByPDRFence = [(IRPreferences *)self candidateSelectorAllowSelectByPDRFence];
  objc_opt_class();
  v836 = objc_opt_isKindOfClass();

  if (v836)
  {
    v834 = objc_opt_class();
  }

  candidateSelectorAllowSelectByPDRFence2 = [(IRPreferences *)self candidateSelectorAllowSelectByPDRFence];
  objc_opt_class();
  v838 = objc_opt_isKindOfClass();

  if (v838)
  {
    v834 = objc_opt_class();
  }

  candidateSelectorAllowSelectByPDRFence3 = [(IRPreferences *)self candidateSelectorAllowSelectByPDRFence];
  objc_opt_class();
  v840 = objc_opt_isKindOfClass();

  if (v840)
  {
    v834 = objc_opt_class();
  }

  v841 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByPDRFence" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v834];
  candidateSelectorAllowSelectByPDRFence = self->_candidateSelectorAllowSelectByPDRFence;
  self->_candidateSelectorAllowSelectByPDRFence = v841;

  v843 = objc_opt_class();
  candidateSelectorAllowSelectByHistory = [(IRPreferences *)self candidateSelectorAllowSelectByHistory];
  objc_opt_class();
  v845 = objc_opt_isKindOfClass();

  if (v845)
  {
    v843 = objc_opt_class();
  }

  candidateSelectorAllowSelectByHistory2 = [(IRPreferences *)self candidateSelectorAllowSelectByHistory];
  objc_opt_class();
  v847 = objc_opt_isKindOfClass();

  if (v847)
  {
    v843 = objc_opt_class();
  }

  candidateSelectorAllowSelectByHistory3 = [(IRPreferences *)self candidateSelectorAllowSelectByHistory];
  objc_opt_class();
  v849 = objc_opt_isKindOfClass();

  if (v849)
  {
    v843 = objc_opt_class();
  }

  v850 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorAllowSelectByHistory" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v843];
  candidateSelectorAllowSelectByHistory = self->_candidateSelectorAllowSelectByHistory;
  self->_candidateSelectorAllowSelectByHistory = v850;

  v852 = objc_opt_class();
  candidateSelectorCallToActionAppearThreshold = [(IRPreferences *)self candidateSelectorCallToActionAppearThreshold];
  objc_opt_class();
  v854 = objc_opt_isKindOfClass();

  if (v854)
  {
    v852 = objc_opt_class();
  }

  candidateSelectorCallToActionAppearThreshold2 = [(IRPreferences *)self candidateSelectorCallToActionAppearThreshold];
  objc_opt_class();
  v856 = objc_opt_isKindOfClass();

  if (v856)
  {
    v852 = objc_opt_class();
  }

  candidateSelectorCallToActionAppearThreshold3 = [(IRPreferences *)self candidateSelectorCallToActionAppearThreshold];
  objc_opt_class();
  v858 = objc_opt_isKindOfClass();

  if (v858)
  {
    v852 = objc_opt_class();
  }

  v859 = [(IRPreferences *)self _getKeyWithType:@"IRcandidateSelectorCallToActionAppearThreshold" withDefaultValue:&unk_2867691C0 expectedType:v852];
  candidateSelectorCallToActionAppearThreshold = self->_candidateSelectorCallToActionAppearThreshold;
  self->_candidateSelectorCallToActionAppearThreshold = v859;

  v861 = objc_opt_class();
  pdrFenceRadiusInMeters = [(IRPreferences *)self pdrFenceRadiusInMeters];
  objc_opt_class();
  v863 = objc_opt_isKindOfClass();

  if (v863)
  {
    v861 = objc_opt_class();
  }

  pdrFenceRadiusInMeters2 = [(IRPreferences *)self pdrFenceRadiusInMeters];
  objc_opt_class();
  v865 = objc_opt_isKindOfClass();

  if (v865)
  {
    v861 = objc_opt_class();
  }

  pdrFenceRadiusInMeters3 = [(IRPreferences *)self pdrFenceRadiusInMeters];
  objc_opt_class();
  v867 = objc_opt_isKindOfClass();

  if (v867)
  {
    v861 = objc_opt_class();
  }

  v868 = [(IRPreferences *)self _getKeyWithType:@"IRpdrFenceRadiusInMeters" withDefaultValue:&unk_2867692C8 expectedType:v861];
  pdrFenceRadiusInMeters = self->_pdrFenceRadiusInMeters;
  self->_pdrFenceRadiusInMeters = v868;

  v870 = objc_opt_class();
  pdrFenceRadiusTimeoutInSeconds = [(IRPreferences *)self pdrFenceRadiusTimeoutInSeconds];
  objc_opt_class();
  v872 = objc_opt_isKindOfClass();

  if (v872)
  {
    v870 = objc_opt_class();
  }

  pdrFenceRadiusTimeoutInSeconds2 = [(IRPreferences *)self pdrFenceRadiusTimeoutInSeconds];
  objc_opt_class();
  v874 = objc_opt_isKindOfClass();

  if (v874)
  {
    v870 = objc_opt_class();
  }

  pdrFenceRadiusTimeoutInSeconds3 = [(IRPreferences *)self pdrFenceRadiusTimeoutInSeconds];
  objc_opt_class();
  v876 = objc_opt_isKindOfClass();

  if (v876)
  {
    v870 = objc_opt_class();
  }

  v877 = [(IRPreferences *)self _getKeyWithType:@"IRpdrFenceRadiusTimeoutInSeconds" withDefaultValue:&unk_286769118 expectedType:v870];
  pdrFenceRadiusTimeoutInSeconds = self->_pdrFenceRadiusTimeoutInSeconds;
  self->_pdrFenceRadiusTimeoutInSeconds = v877;

  v879 = objc_opt_class();
  pdrFenceOtherThanRadiusTimeoutInSeconds = [(IRPreferences *)self pdrFenceOtherThanRadiusTimeoutInSeconds];
  objc_opt_class();
  v881 = objc_opt_isKindOfClass();

  if (v881)
  {
    v879 = objc_opt_class();
  }

  pdrFenceOtherThanRadiusTimeoutInSeconds2 = [(IRPreferences *)self pdrFenceOtherThanRadiusTimeoutInSeconds];
  objc_opt_class();
  v883 = objc_opt_isKindOfClass();

  if (v883)
  {
    v879 = objc_opt_class();
  }

  pdrFenceOtherThanRadiusTimeoutInSeconds3 = [(IRPreferences *)self pdrFenceOtherThanRadiusTimeoutInSeconds];
  objc_opt_class();
  v885 = objc_opt_isKindOfClass();

  if (v885)
  {
    v879 = objc_opt_class();
  }

  v886 = [(IRPreferences *)self _getKeyWithType:@"IRpdrFenceOtherThanRadiusTimeoutInSeconds" withDefaultValue:&unk_286769280 expectedType:v879];
  pdrFenceOtherThanRadiusTimeoutInSeconds = self->_pdrFenceOtherThanRadiusTimeoutInSeconds;
  self->_pdrFenceOtherThanRadiusTimeoutInSeconds = v886;

  v888 = objc_opt_class();
  miloRoomDetectionInCustomLOIEnabled = [(IRPreferences *)self miloRoomDetectionInCustomLOIEnabled];
  objc_opt_class();
  v890 = objc_opt_isKindOfClass();

  if (v890)
  {
    v888 = objc_opt_class();
  }

  miloRoomDetectionInCustomLOIEnabled2 = [(IRPreferences *)self miloRoomDetectionInCustomLOIEnabled];
  objc_opt_class();
  v892 = objc_opt_isKindOfClass();

  if (v892)
  {
    v888 = objc_opt_class();
  }

  miloRoomDetectionInCustomLOIEnabled3 = [(IRPreferences *)self miloRoomDetectionInCustomLOIEnabled];
  objc_opt_class();
  v894 = objc_opt_isKindOfClass();

  if (v894)
  {
    v888 = objc_opt_class();
  }

  v895 = [(IRPreferences *)self _getKeyWithType:@"IRmiloRoomDetectionInCustomLOIEnabled" withDefaultValue:MEMORY[0x277CBEC38] expectedType:v888];
  miloRoomDetectionInCustomLOIEnabled = self->_miloRoomDetectionInCustomLOIEnabled;
  self->_miloRoomDetectionInCustomLOIEnabled = v895;

  v897 = objc_opt_class();
  timeInSecondsWithoutUsageToAggressiveFiltering = [(IRPreferences *)self timeInSecondsWithoutUsageToAggressiveFiltering];
  objc_opt_class();
  v899 = objc_opt_isKindOfClass();

  if (v899)
  {
    v897 = objc_opt_class();
  }

  timeInSecondsWithoutUsageToAggressiveFiltering2 = [(IRPreferences *)self timeInSecondsWithoutUsageToAggressiveFiltering];
  objc_opt_class();
  v901 = objc_opt_isKindOfClass();

  if (v901)
  {
    v897 = objc_opt_class();
  }

  timeInSecondsWithoutUsageToAggressiveFiltering3 = [(IRPreferences *)self timeInSecondsWithoutUsageToAggressiveFiltering];
  objc_opt_class();
  v903 = objc_opt_isKindOfClass();

  if (v903)
  {
    v897 = objc_opt_class();
  }

  v904 = [(IRPreferences *)self _getKeyWithType:@"IRtimeInSecondsWithoutUsageToAggressiveFiltering" withDefaultValue:&unk_286769160 expectedType:v897];
  timeInSecondsWithoutUsageToAggressiveFiltering = self->_timeInSecondsWithoutUsageToAggressiveFiltering;
  self->_timeInSecondsWithoutUsageToAggressiveFiltering = v904;

  v906 = objc_opt_class();
  timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering = [(IRPreferences *)self timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
  objc_opt_class();
  v908 = objc_opt_isKindOfClass();

  if (v908)
  {
    v906 = objc_opt_class();
  }

  timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering2 = [(IRPreferences *)self timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
  objc_opt_class();
  v910 = objc_opt_isKindOfClass();

  if (v910)
  {
    v906 = objc_opt_class();
  }

  timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering3 = [(IRPreferences *)self timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering];
  objc_opt_class();
  v912 = objc_opt_isKindOfClass();

  if (v912)
  {
    v906 = objc_opt_class();
  }

  v913 = [(IRPreferences *)self _getKeyWithType:@"IRtimeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering" withDefaultValue:&unk_286769190 expectedType:v906];
  timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering = self->_timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering;
  self->_timeInSecondsToBeClassifiedAsNewCandidateForAggressiveFiltering = v913;

  v915 = objc_opt_class();
  startDateForSignificantBundlesLookup = [(IRPreferences *)self startDateForSignificantBundlesLookup];
  objc_opt_class();
  v917 = objc_opt_isKindOfClass();

  if (v917)
  {
    v915 = objc_opt_class();
  }

  startDateForSignificantBundlesLookup2 = [(IRPreferences *)self startDateForSignificantBundlesLookup];
  objc_opt_class();
  v919 = objc_opt_isKindOfClass();

  if (v919)
  {
    v915 = objc_opt_class();
  }

  startDateForSignificantBundlesLookup3 = [(IRPreferences *)self startDateForSignificantBundlesLookup];
  objc_opt_class();
  v921 = objc_opt_isKindOfClass();

  if (v921)
  {
    v915 = objc_opt_class();
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v922 = [(IRPreferences *)self _getKeyWithType:@"IRstartDateForSignificantBundlesLookup" withDefaultValue:distantPast expectedType:v915];
  startDateForSignificantBundlesLookup = self->_startDateForSignificantBundlesLookup;
  self->_startDateForSignificantBundlesLookup = v922;
}

- (id)_getKeyWithType:(id)type withDefaultValue:(id)value expectedType:(Class)expectedType
{
  v33 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valueCopy = value;
  defaults = [(IRPreferences *)self defaults];
  v11 = [defaults objectForKey:typeCopy];

  v12 = MEMORY[0x277D21260];
  if (!v11)
  {
    goto LABEL_8;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  v14 = *v12;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
    {
      v26 = v14;
      *v31 = 138412802;
      *&v31[4] = typeCopy;
      *&v31[12] = 2112;
      *&v31[14] = objc_opt_class();
      *&v31[22] = 2112;
      expectedTypeCopy2 = expectedType;
      v27 = *&v31[14];
      _os_log_debug_impl(&dword_25543D000, v26, OS_LOG_TYPE_DEBUG, "#preferences, Unexpected type stored in defaults for settings key %@ . Got %@ expecting %@. Ignoring override.", v31, 0x20u);
    }

LABEL_8:
    v16 = [(IRPreferences *)self mobileAssetSettings:*v31];
    v17 = [v16 objectForKey:typeCopy];

    if (v17)
    {
      v18 = objc_opt_isKindOfClass();
      v19 = *v12;
      if (v18)
      {
        v20 = os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT);
        v21 = v17;
        if (v20)
        {
          *v31 = 138412546;
          *&v31[4] = v17;
          *&v31[12] = 2112;
          *&v31[14] = typeCopy;
          _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_DEFAULT, "#preferences, Setting found in mobile asset storage. Setting value: %@ for key: %@", v31, 0x16u);
          v21 = v17;
        }

LABEL_16:
        v15 = v21;

        goto LABEL_17;
      }

      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        v28 = v19;
        v29 = objc_opt_class();
        *v31 = 138412802;
        *&v31[4] = typeCopy;
        *&v31[12] = 2112;
        *&v31[14] = v29;
        *&v31[22] = 2112;
        expectedTypeCopy2 = expectedType;
        v30 = v29;
        _os_log_debug_impl(&dword_25543D000, v28, OS_LOG_TYPE_DEBUG, "#preferences, Unexpected type stored in mobile asset for preference key %@ . Got %@ expecting %@. Ignoring mobile asset override.", v31, 0x20u);
      }
    }

    v22 = *v12;
    v23 = os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG);
    v21 = valueCopy;
    if (v23)
    {
      [IRPreferences _getKeyWithType:typeCopy withDefaultValue:valueCopy expectedType:v22];
      v21 = valueCopy;
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138412546;
    *&v31[4] = v11;
    *&v31[12] = 2112;
    *&v31[14] = typeCopy;
    _os_log_impl(&dword_25543D000, v14, OS_LOG_TYPE_DEFAULT, "#preferences, Setting found in defaults storage. Setting value: %@ for key: %@", v31, 0x16u);
  }

  v15 = v11;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_registerForUserDefaultsRefreshNotification
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.intelligentroutingd.UserDefaultsRefresh", v4);
  notify_register_dispatch("com.apple.intelligentroutingd.UserDefaultsRefresh", &self->_userDefaultsRefreshToken, v3, &__block_literal_global_21);
}

void __60__IRPreferences__registerForUserDefaultsRefreshNotification__block_invoke()
{
  v0 = +[IRPreferences shared];
  [v0 refresh];
}

- (void)setMobileAssetSettingsWithMobileAssetDict:(id)dict assetVersion:(id)version
{
  dictCopy = dict;
  v7 = MEMORY[0x277CBEB38];
  versionCopy = version;
  v9 = objc_alloc_init(v7);
  allKeys = [dictCopy allKeys];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__IRPreferences_setMobileAssetSettingsWithMobileAssetDict_assetVersion___block_invoke;
  v18 = &unk_2797E1F70;
  v19 = v9;
  v20 = dictCopy;
  v11 = dictCopy;
  v12 = v9;
  [allKeys enumerateObjectsUsingBlock:&v15];

  v13 = [IRPreferences shared:v15];
  [v13 setMobileAssetSettings:v12];

  [(IRPreferences *)self setMobileAssetVersion:versionCopy];
  v14 = +[IRPreferences shared];
  [v14 refresh];
}

void __72__IRPreferences_setMobileAssetSettingsWithMobileAssetDict_assetVersion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasPrefix:@"IR"])
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  else
  {
    v5 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = @"IR";
      _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#preferences, Ignoring mobile asset setting '%@' which does not have %@ prefix", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_getKeyWithType:(uint64_t)a1 withDefaultValue:(uint64_t)a2 expectedType:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_25543D000, log, OS_LOG_TYPE_DEBUG, "#preferences, Returning default value for key %@ since no overwrite performed. Default value: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end