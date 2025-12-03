@interface HFHomePodAlarmItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFHomePodAlarmItem)initWithMediaProfileContainer:(id)container alarm:(id)alarm;
- (HMMediaProfile)mediaProfile;
- (id)_subclass_updateWithOptions:(id)options;
- (int64_t)compare:(id)compare;
- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state;
- (unint64_t)hash;
@end

@implementation HFHomePodAlarmItem

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_2_4 != -1)
  {
    dispatch_once(&_MergedGlobals_2_4, &__block_literal_global_4_13);
  }

  v3 = qword_280E02608;

  return v3;
}

void __33__HFHomePodAlarmItem_na_identity__block_invoke_2()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_7_12];
  v1 = [v0 appendCharacteristic:&__block_literal_global_9_10];
  v2 = [v1 build];
  v3 = qword_280E02608;
  qword_280E02608 = v2;
}

id __33__HFHomePodAlarmItem_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfileContainer];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (HFHomePodAlarmItem)initWithMediaProfileContainer:(id)container alarm:(id)alarm
{
  containerCopy = container;
  alarmCopy = alarm;
  v10 = alarmCopy;
  if (containerCopy)
  {
    if (alarmCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmItem.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"alarm"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = HFHomePodAlarmItem;
  v11 = [(HFHomePodAlarmItem *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaProfileContainer, container);
    objc_storeStrong(&v12->_alarm, alarm);
    alarmID = [v10 alarmID];
    v14 = [alarmID copy];
    alarmIdentifier = v12->_alarmIdentifier;
    v12->_alarmIdentifier = v14;
  }

  return v12;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  alarm = [(HFHomePodAlarmItem *)self alarm];
  alarm2 = [compareCopy alarm];

  v7 = [alarm compare:alarm2];
  return v7;
}

- (HMMediaProfile)mediaProfile
{
  mediaProfileContainer = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  mediaProfiles = [mediaProfileContainer mediaProfiles];
  anyObject = [mediaProfiles anyObject];

  return anyObject;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  mediaProfileContainer = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  hf_settingsAdapterManager = [mediaProfileContainer hf_settingsAdapterManager];
  v7 = [hf_settingsAdapterManager adapterForIdentifier:@"MobileTimerAdapter"];

  if (_os_feature_enabled_impl())
  {
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    allAlarmsFuture = [v7 allAlarmsFuture];
    objc_initWeak(location, self);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke;
    v50[3] = &unk_277DF9D18;
    objc_copyWeak(&v52, location);
    v10 = v8;
    v51 = v10;
    v11 = [allAlarmsFuture addSuccessBlock:v50];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke_3;
    v48[3] = &unk_277DF2D08;
    v12 = v10;
    v49 = v12;
    v13 = [allAlarmsFuture addFailureBlock:v48];
    v14 = v49;
    v15 = v12;

    objc_destroyWeak(&v52);
    objc_destroyWeak(location);
    goto LABEL_16;
  }

  allAlarmsFuture = [v7 allAlarms];
  v16 = MEMORY[0x277CBEB58];
  mediaProfileContainer2 = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  mediaProfileContainer3 = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  settings = [mediaProfileContainer3 settings];
  v20 = [v16 setWithObjects:{mediaProfileContainer2, settings, 0}];

  mediaProfileContainer4 = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer4 hf_dependentHomeKitObjectsForDownstreamItems];
  [v20 unionSet:hf_dependentHomeKitObjectsForDownstreamItems];

  mediaProfileContainer5 = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  v24 = &unk_2825595B8;
  v25 = mediaProfileContainer5;
  v26 = v25;
  if (v25)
  {
    if ([v25 conformsToProtocol:v24])
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v26;
    if (v27)
    {
      goto LABEL_10;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v31 = NSStringFromProtocol(v24);
    [currentHandler handleFailureInFunction:v30 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v31}];
  }

  v28 = 0;
LABEL_10:

  settings2 = [v28 settings];
  v33 = [settings2 hf_accessorySettingAtKeyPath:@"root.mobileTimer.alarms"];

  if (v33)
  {
    settings3 = [v28 settings];
    v35 = [settings3 hf_accessorySettingAtKeyPath:@"root.mobileTimer.alarms"];
    [v20 addObject:v35];
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke_4;
  v47[3] = &unk_277DFBFA0;
  v47[4] = self;
  v36 = [allAlarmsFuture na_firstObjectPassingTest:v47];
  [(HFHomePodAlarmItem *)self setAlarm:v36];

  v37 = objc_opt_new();
  alarm = [(HFHomePodAlarmItem *)self alarm];

  if (alarm)
  {
    alarm2 = [(HFHomePodAlarmItem *)self alarm];
    displayTitle = [alarm2 displayTitle];
    [v37 setObject:displayTitle forKeyedSubscript:@"title"];

    alarm3 = [(HFHomePodAlarmItem *)self alarm];
    [v37 setObject:alarm3 forKeyedSubscript:@"MTALARM"];

    [v37 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
    [v37 setObject:v20 forKeyedSubscript:@"dependentHomeKitObjects"];
    v42 = MEMORY[0x277CCABB0];
    mediaProfileContainer6 = [(HFHomePodAlarmItem *)self mediaProfileContainer];
    settings4 = [mediaProfileContainer6 settings];
    v45 = [v42 numberWithInt:{objc_msgSend(settings4, "isControllable") ^ 1}];
    [v37 setObject:v45 forKeyedSubscript:@"isDisabled"];
  }

  else
  {
    [v37 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  v15 = [MEMORY[0x277D2C900] futureWithResult:v37];

LABEL_16:

  return v15;
}

void __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x277CBEB58];
  v6 = [WeakRetained mediaProfileContainer];
  v7 = [WeakRetained mediaProfileContainer];
  v8 = [v7 settings];
  v9 = [v5 setWithObjects:{v6, v8, 0}];

  v10 = [WeakRetained mediaProfileContainer];
  v11 = [v10 hf_dependentHomeKitObjectsForDownstreamItems];
  [v9 unionSet:v11];

  v12 = [WeakRetained mediaProfileContainer];
  v13 = &unk_2825595B8;
  v14 = v12;
  v15 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  if ([v14 conformsToProtocol:v13])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v15;
  if (!v16)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v20 = NSStringFromProtocol(v13);
    [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v20}];

LABEL_7:
    v17 = 0;
  }

  v21 = [v17 settings];
  v22 = [v21 hf_accessorySettingAtKeyPath:@"root.mobileTimer.alarms"];

  if (v22)
  {
    v23 = [v17 settings];
    v24 = [v23 hf_accessorySettingAtKeyPath:@"root.mobileTimer.alarms"];
    [v9 addObject:v24];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke_2;
  v35[3] = &unk_277DFBFA0;
  v35[4] = WeakRetained;
  v25 = [v3 na_firstObjectPassingTest:v35];
  [WeakRetained setAlarm:v25];

  v26 = objc_opt_new();
  v27 = [WeakRetained alarm];

  if (v27)
  {
    v28 = [WeakRetained alarm];
    v29 = [v28 displayTitle];
    [v26 setObject:v29 forKeyedSubscript:@"title"];

    v30 = [WeakRetained alarm];
    [v26 setObject:v30 forKeyedSubscript:@"MTALARM"];

    [v26 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
    [v26 setObject:v9 forKeyedSubscript:@"dependentHomeKitObjects"];
    v31 = MEMORY[0x277CCABB0];
    v32 = [WeakRetained mediaProfileContainer];
    v33 = [v32 settings];
    v34 = [v31 numberWithInt:{objc_msgSend(v33, "isControllable") ^ 1}];
    [v26 setObject:v34 forKeyedSubscript:@"isDisabled"];
  }

  else
  {
    [v26 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  [*(a1 + 32) finishWithResult:v26];
}

uint64_t __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __50__HFHomePodAlarmItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 alarmID];
  v4 = [*(a1 + 32) alarmIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state
{
  mediaProfileContainer = [(HFHomePodAlarmItem *)self mediaProfileContainer];
  hf_settingsAdapterManager = [mediaProfileContainer hf_settingsAdapterManager];
  v7 = [hf_settingsAdapterManager adapterForIdentifier:@"MobileTimerAdapter"];

  if (v7 && ([(HFHomePodAlarmItem *)self alarm], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    alarmsWithPendingEdits = [v7 alarmsWithPendingEdits];
    alarm = [(HFHomePodAlarmItem *)self alarm];
    v11 = [alarmsWithPendingEdits containsObject:alarm];

    if (v11)
    {
      state = 2;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HFHomePodAlarmItem;
    state = [(HFItem *)&v13 _effectiveLoadingStateForSuggestedLoadingState:state];
  }

  return state;
}

@end