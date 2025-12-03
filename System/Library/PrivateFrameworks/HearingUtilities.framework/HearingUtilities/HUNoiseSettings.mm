@interface HUNoiseSettings
+ (id)sharedInstance;
- (BOOL)notificationsEnabled;
- (BOOL)preferenceIsSetForRetrieveSelector:(SEL)selector;
- (HUNoiseSettings)init;
- (NPSDomainAccessor)domainAccessor;
- (NSAttributedString)noiseThresholdFooterDescriptionWithLink;
- (NSDate)leqTimestamp;
- (NSDate)notificationMuteDate;
- (NSString)noiseThresholdFooterDescription;
- (NSString)noiseThresholdValueFooterDescription;
- (id)_preferenceKeyForSelector:(SEL)selector;
- (id)_valueForPreferenceKey:(id)key;
- (id)localizedNoiseThresholdDetailValue:(int64_t)value;
- (id)localizedNoiseThresholdValue:(int64_t)value;
- (int64_t)noiseThresholdCurrentValue;
- (unint64_t)notificationThreshold;
- (void)_handlePreferenceChanged:(id)changed;
- (void)_registerForNotification:(id)notification;
- (void)_setValue:(id)value forPreferenceKey:(id)key;
- (void)_synchronizeIfNecessary:(id)necessary;
- (void)dealloc;
- (void)pairedWatchDidChange:(id)change;
- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener;
- (void)setCurrentLeq:(double)leq;
- (void)setLeqDuration:(double)duration;
- (void)setLeqTimestamp:(id)timestamp;
- (void)setNoiseEnabled:(BOOL)enabled;
- (void)setNotificationMuteDate:(id)date;
- (void)setNotificationThreshold:(unint64_t)threshold;
- (void)setThresholdVersion:(unint64_t)version;
@end

@implementation HUNoiseSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[HUNoiseSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_3;

  return v3;
}

uint64_t __33__HUNoiseSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings_3 = objc_alloc_init(HUNoiseSettings);

  return MEMORY[0x1EEE66BB8]();
}

- (HUNoiseSettings)init
{
  v15.receiver = self;
  v15.super_class = HUNoiseSettings;
  v2 = [(HUNoiseSettings *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    synchronizeDomainsLock = v2->_synchronizeDomainsLock;
    v2->_synchronizeDomainsLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredNotifications = v2->_registeredNotifications;
    v2->_registeredNotifications = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    synchronizePreferences = v2->_synchronizePreferences;
    v2->_synchronizePreferences = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updateBlocks = v2->_updateBlocks;
    v2->_updateBlocks = v9;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, AccessibilitySettingsChangedOnCompanion, @"NanoNoiseSettingsChanged", 0, 0);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3688] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_pairedWatchDidChange_ name:*MEMORY[0x1E69B3660] object:0];
  }

  return v2;
}

- (void)pairedWatchDidChange:(id)change
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
  MEMORY[0x1EEE66BB8]();
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = objc_alloc(MEMORY[0x1E69B3588]);
    v5 = [v4 initWithDomain:kAXSNoisePreferenceDomain];
    v6 = self->_domainAccessor;
    self->_domainAccessor = v5;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUNoiseSettings;
  [(HUNoiseSettings *)&v4 dealloc];
}

- (void)_handlePreferenceChanged:(id)changed
{
  v8 = [changed stringByReplacingOccurrencesOfString:@"_AXNotification_" withString:&stru_1F5614A78];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  synchronizePreferences = [(HUNoiseSettings *)self synchronizePreferences];
  [synchronizePreferences addObject:v8];

  updateBlocks = [(HUNoiseSettings *)self updateBlocks];
  v6 = [updateBlocks objectForKey:v8];
  v7 = [v6 copy];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_72];
}

void __44__HUNoiseSettings__handlePreferenceChanged___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (id)_preferenceKeyForSelector:(SEL)selector
{
  if (_preferenceKeyForSelector__onceToken != -1)
  {
    [HUNoiseSettings _preferenceKeyForSelector:];
  }

  v4 = _preferenceKeyForSelector__SelectorMap;
  v5 = NSStringFromSelector(selector);
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UnknownKey";
  }

  v8 = v7;

  return v7;
}

void __45__HUNoiseSettings__preferenceKeyForSelector___block_invoke()
{
  v12 = objc_alloc(MEMORY[0x1E695DF20]);
  v13 = NSStringFromSelector(sel_noiseEnabled);
  v0 = NSStringFromSelector(sel_onboardingCompleted);
  v1 = NSStringFromSelector(sel_notificationsEnabled);
  v2 = NSStringFromSelector(sel_notificationThreshold);
  v3 = NSStringFromSelector(sel_notificationMuteDate);
  v4 = NSStringFromSelector(sel_currentLeq);
  v5 = NSStringFromSelector(sel_leqTimestamp);
  v6 = NSStringFromSelector(sel_leqDuration);
  v7 = NSStringFromSelector(sel_migratedThreshold);
  v8 = NSStringFromSelector(sel_thresholdVersion);
  v9 = NSStringFromSelector(sel_internalLoggingEnabled);
  v10 = [v12 initWithObjectsAndKeys:{@"NoiseEnabled", v13, @"OnboardingCompleted", v0, @"NotificationsEnabled", v1, @"NotificationsThreshold", v2, @"NotificationsMuteDate", v3, @"CurrentLeq", v4, @"LeqTimestamp", v5, @"LeqDuration", v6, @"ThresholdMigration", v7, @"ThresholdVersion", v8, @"NoiseInternalLogging", v9, 0}];
  v11 = _preferenceKeyForSelector__SelectorMap;
  _preferenceKeyForSelector__SelectorMap = v10;
}

- (void)_registerForNotification:(id)notification
{
  notificationCopy = notification;
  if (_registerForNotification__onceToken != -1)
  {
    [HUNoiseSettings _registerForNotification:];
  }

  v5 = _registerForNotification__RegistrationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__HUNoiseSettings__registerForNotification___block_invoke_2;
  v7[3] = &unk_1E85C9F38;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  [v5 performSynchronousWritingBlock:v7];
}

uint64_t __44__HUNoiseSettings__registerForNotification___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6988748]);
  v1 = _registerForNotification__RegistrationQueue;
  _registerForNotification__RegistrationQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __44__HUNoiseSettings__registerForNotification___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) registeredNotifications];
  if (([v4 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [v4 addObject:*(a1 + 40)];
    v2 = [*(a1 + 32) notificationForPreferenceKey:*(a1 + 40)];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axSettingsHandlePreferenceChanged, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)registerUpdateBlock:(id)block forRetrieveSelector:(SEL)selector withListener:(id)listener
{
  v26[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  listenerCopy = listener;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:listenerCopy];
  [(NSLock *)self->_synchronizeDomainsLock lock];
  updateBlocks = [(HUNoiseSettings *)self updateBlocks];
  v12 = [updateBlocks copy];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  v13 = [(HUNoiseSettings *)self _preferenceKeyForSelector:selector];
  array = [v12 objectForKey:v13];
  if (blockCopy)
  {
    v26[0] = v10;
    v15 = _Block_copy(blockCopy);
    v26[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    [array addObject:v16];
    v17 = objc_getAssociatedObject(listenerCopy, &AXHASettingsDestructionHelperKey);
    if (!v17)
    {
      v17 = [[HUNoiseSettingsListenerHelper alloc] initWithListenerAddress:listenerCopy];
      objc_setAssociatedObject(listenerCopy, &AXHASettingsDestructionHelperKey, v17, 1);
    }

    [(HUNoiseSettingsListenerHelper *)v17 addSelectorKey:selector];
    [(HUNoiseSettings *)self _registerForNotification:v13];
  }

  else
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __72__HUNoiseSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke;
    v24 = &unk_1E85CA868;
    v25 = v10;
    v18 = [array indexesOfObjectsPassingTest:&v21];
    if ([v18 count])
    {
      [array removeObjectsAtIndexes:v18];
    }

    v16 = v25;
  }

  [(NSLock *)self->_synchronizeDomainsLock lock];
  updateBlocks2 = [(HUNoiseSettings *)self updateBlocks];
  [updateBlocks2 setObject:array forKey:v13];

  [(NSLock *)self->_synchronizeDomainsLock unlock];
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __72__HUNoiseSettings_registerUpdateBlock_forRetrieveSelector_withListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)preferenceIsSetForRetrieveSelector:(SEL)selector
{
  selfCopy = self;
  v4 = [(HUNoiseSettings *)self _preferenceKeyForSelector:selector];
  v5 = [(HUNoiseSettings *)selfCopy _valueForPreferenceKey:v4];
  LOBYTE(selfCopy) = v5 != 0;

  return selfCopy;
}

- (void)_setValue:(id)value forPreferenceKey:(id)key
{
  v19[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  domainAccessor = [(HUNoiseSettings *)self domainAccessor];
  [domainAccessor setObject:valueCopy forKey:keyCopy];

  domainAccessor2 = [(HUNoiseSettings *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  v11 = objc_opt_new();
  v12 = kAXSNoisePreferenceDomain;
  v13 = MEMORY[0x1E695DFD8];
  v19[0] = keyCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [v13 setWithArray:v14];
  [v11 synchronizeNanoDomain:v12 keys:v15];

  v16 = [(HUNoiseSettings *)self notificationForPreferenceKey:keyCopy];

  if (v16)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v16, 0, 0, 1u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_synchronizeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(NSLock *)self->_synchronizeDomainsLock lock];
  synchronizePreferences = [(HUNoiseSettings *)self synchronizePreferences];
  if ([synchronizePreferences containsObject:necessaryCopy])
  {
    CFPreferencesAppSynchronize(kAXSNoisePreferenceDomain);
    [synchronizePreferences removeObject:necessaryCopy];
  }

  [(NSLock *)self->_synchronizeDomainsLock unlock];
}

- (id)_valueForPreferenceKey:(id)key
{
  keyCopy = key;
  domainAccessor = [(HUNoiseSettings *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  domainAccessor2 = [(HUNoiseSettings *)self domainAccessor];
  v8 = [domainAccessor2 objectForKey:keyCopy];

  return v8;
}

- (void)setNoiseEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(HUNoiseSettings *)self _setValue:v4 forPreferenceKey:@"NoiseEnabled"];

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  LODWORD(v4) = [mEMORY[0x1E69ADFB8] isHealthDataSubmissionAllowed];

  if (v4)
  {
    AnalyticsSendEventLazy();
  }
}

id __35__HUNoiseSettings_setNoiseEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"enabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)notificationsEnabled
{
  notificationsEnabledOverride = [(HUNoiseSettings *)self notificationsEnabledOverride];

  if (notificationsEnabledOverride)
  {
    notificationsEnabledOverride2 = [(HUNoiseSettings *)self notificationsEnabledOverride];
    bOOLValue = [notificationsEnabledOverride2 BOOLValue];

    return bOOLValue;
  }

  else
  {

    return AXSettingsReturnBoolValue(@"NotificationsEnabled");
  }
}

- (unint64_t)notificationThreshold
{
  notificationsThreshholdOverride = [(HUNoiseSettings *)self notificationsThreshholdOverride];

  if (notificationsThreshholdOverride)
  {
    notificationsThreshholdOverride2 = [(HUNoiseSettings *)self notificationsThreshholdOverride];
    unsignedIntegerValue = [notificationsThreshholdOverride2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  else
  {

    return AXSettingsReturnUnsignedIntegerValue(@"NotificationsThreshold", 90);
  }
}

- (void)setNotificationThreshold:(unint64_t)threshold
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:threshold];
  [(HUNoiseSettings *)self _setValue:v4 forPreferenceKey:@"NotificationsThreshold"];
}

- (NSDate)notificationMuteDate
{
  v2 = AXSettingsReturnDoubleValue(@"NotificationsMuteDate");
  v3 = MEMORY[0x1E695DF00];

  return [v3 dateWithTimeIntervalSinceReferenceDate:v2];
}

- (void)setNotificationMuteDate:(id)date
{
  v4 = MEMORY[0x1E696AD98];
  [date timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  [(HUNoiseSettings *)self _setValue:v5 forPreferenceKey:@"NotificationsMuteDate"];
}

- (void)setCurrentLeq:(double)leq
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:leq];
  [(HUNoiseSettings *)self _setValue:v4 forPreferenceKey:@"CurrentLeq"];
}

- (NSDate)leqTimestamp
{
  v2 = AXSettingsReturnDoubleValue(@"LeqTimestamp");
  v3 = MEMORY[0x1E695DF00];

  return [v3 dateWithTimeIntervalSinceReferenceDate:v2];
}

- (void)setLeqTimestamp:(id)timestamp
{
  v4 = MEMORY[0x1E696AD98];
  [timestamp timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  [(HUNoiseSettings *)self _setValue:v5 forPreferenceKey:@"LeqTimestamp"];
}

- (void)setLeqDuration:(double)duration
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  [(HUNoiseSettings *)self _setValue:v4 forPreferenceKey:@"LeqDuration"];
}

- (void)setThresholdVersion:(unint64_t)version
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  [(HUNoiseSettings *)self _setValue:v4 forPreferenceKey:@"ThresholdVersion"];
}

- (NSAttributedString)noiseThresholdFooterDescriptionWithLink
{
  v13[1] = *MEMORY[0x1E69E9840];
  noiseThresholdFooterDescription = [(HUNoiseSettings *)self noiseThresholdFooterDescription];
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:noiseThresholdFooterDescription];
  v12 = @"NSLink";
  noiseThresholdFooterLinkURL = [(HUNoiseSettings *)self noiseThresholdFooterLinkURL];
  v13[0] = noiseThresholdFooterLinkURL;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  noiseThresholdFooterLinkTitle = [(HUNoiseSettings *)self noiseThresholdFooterLinkTitle];
  v8 = [noiseThresholdFooterDescription rangeOfString:noiseThresholdFooterLinkTitle];
  [v4 setAttributes:v6 range:{v8, v9}];

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)noiseThresholdFooterDescription
{
  v3 = HUNoiseLocString(@"NOISE_THRESHOLD_FOOTER");
  noiseThresholdFooterLinkTitle = [(HUNoiseSettings *)self noiseThresholdFooterLinkTitle];
  v4 = AXCFormattedString();

  return v4;
}

- (int64_t)noiseThresholdCurrentValue
{
  if (![(HUNoiseSettings *)self notificationsEnabled])
  {
    return 0;
  }

  return [(HUNoiseSettings *)self notificationThreshold];
}

- (id)localizedNoiseThresholdValue:(int64_t)value
{
  if (value)
  {
    v3 = HUNoiseLocString(@"DECIBELS");
    v4 = AXCFormattedString();
  }

  else
  {
    v4 = HUNoiseLocString(@"OFF");
  }

  return v4;
}

- (id)localizedNoiseThresholdDetailValue:(int64_t)value
{
  if (value > 89)
  {
    switch(value)
    {
      case 'Z':
        v3 = @"LIMIT_90DB";
        goto LABEL_15;
      case '_':
        v3 = @"LIMIT_95DB";
        goto LABEL_15;
      case 'd':
        v3 = @"LIMIT_100DB";
        goto LABEL_15;
    }
  }

  else
  {
    switch(value)
    {
      case 0:
        v4 = HUNoiseLocString(@"NO_NOTIFICATIONS");
        goto LABEL_17;
      case 80:
        v3 = @"LIMIT_80DB";
        goto LABEL_15;
      case 85:
        v3 = @"LIMIT_85DB";
LABEL_15:
        v5 = HUNoiseLocString(v3);
        v6 = HUNoiseLocString(@"LIMIT_PER_DAY");
        v4 = AXCFormattedString();

        goto LABEL_16;
    }
  }

  v4 = HUNoiseLocString(@"NO_NOTIFICATIONS");
  v5 = &stru_1F5614A78;
LABEL_16:

LABEL_17:

  return v4;
}

- (NSString)noiseThresholdValueFooterDescription
{
  if ([(HUNoiseSettings *)self noiseThresholdCurrentValue]< 1)
  {
    HUNoiseLocString(@"THRESHOLD_DESCRIPTION_FOOTER_NO_DECIBELS");
  }

  else
  {
    HUNoiseLocString(@"THRESHOLD_DESCRIPTION_FOOTER");
  }
  v3 = ;
  [(HUNoiseSettings *)self noiseThresholdMinutesThreshold];
  v4 = AXCFormattedString();

  return v4;
}

@end