@interface HFMediaAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (BOOL)_hasOnboarded;
- (BOOL)_isDumbSpeaker;
- (BOOL)_isHAPCapableSpeaker;
- (BOOL)_isInstallingSoftwareUpdate;
- (BOOL)_shouldDecorateDiagnosticInfoWithKeys:(id)keys cdpStatusGood:(BOOL)good;
- (BOOL)hasAnyNetworkDiagnosticsIssues;
- (BOOL)isAirPort;
- (BOOL)isAnnounceEnabled;
- (BOOL)isAppleTV;
- (BOOL)isAudioAnalysisEnabled;
- (BOOL)isAudioReceiver;
- (BOOL)isContainedWithinMediaSystem;
- (BOOL)isDoorbellChimeEnabled;
- (BOOL)isHomePod;
- (BOOL)isHomePodAndIsInMediaSystem;
- (BOOL)isHomePodMediaSystem;
- (BOOL)isHomePodStereoPair;
- (BOOL)isItemGroup;
- (BOOL)isSiriDisabled;
- (BOOL)isSiriEndpointAccessory;
- (BOOL)isStandaloneHomePod;
- (BOOL)shouldShowMutedMicIcon;
- (BOOL)supportsCoordinationForAlarmsAndTimers;
- (BOOL)supportsDirectObliteration;
- (BOOL)supportsMediaAction;
- (BOOL)supportsMediaQuickControls;
- (BOOL)supportsMultiUser;
- (BOOL)supportsSoftwareUpdate;
- (BOOL)supportsTimerQuickControls;
- (HFAccessoryRepresentable)accessoryRepresentableObject;
- (HFMediaAccessoryCommonSettingsManager)commonSettingsManager;
- (HFMediaAccessoryItem)init;
- (HFMediaAccessoryItem)initWithValueSource:(id)source homeKitObject:(id)object;
- (HFMediaAccessoryItem)initWithValueSource:(id)source mediaProfileContainer:(id)container;
- (HFMediaValueSource)mediaValueSource;
- (HMHome)home;
- (NSSet)accessoriesSupportingSoftwareUpdate;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createControlItemsWithOptions:(id)options;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)iconDescriptor:(id)descriptor;
- (id)mediaProfileContainers;
- (id)namingComponentForHomeKitObject;
- (id)performStandardUpdateWithOptions:(id)options;
- (id)profiles;
- (id)room;
- (id)serviceLikeBuilderInHome:(id)home;
- (id)serviceNameComponents;
- (id)setSiriDisabled:(BOOL)disabled;
- (id)settings;
- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state;
- (unint64_t)homePodVariant;
- (unint64_t)numberOfItemsContainedWithinGroup;
- (unint64_t)preferredActionOnTap:(id)tap;
- (void)_decorateOutcomeWithAccessorySpecificKeys:(id)keys;
- (void)_decorateServiceLikeItemKeys:(id)keys;
- (void)_decorateSettingsSyncKeys:(id)keys;
- (void)_decorateWithMediaSessionKeys:(id)keys;
- (void)_decorateWithMediaSystemSpecificKeys:(id)keys;
- (void)_decorateWithSiriEndpointProfileSpecificKeys:(id)keys;
- (void)_decorateWithSoftwareUpdateStateKeys:(id)keys;
- (void)_decorateWithSymptomFixInFlightKeys:(id)keys;
@end

@implementation HFMediaAccessoryItem

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sourceCopy = source;
  objc_opt_class();
  hf_homeKitObject = [objectCopy hf_homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v9 = hf_homeKitObject;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    hf_homeKitObject2 = [objectCopy hf_homeKitObject];
    hf_containedProfiles = [objectCopy hf_containedProfiles];
    v21 = 136316162;
    v22 = "+[HFMediaAccessoryItem(RepresentableItem) itemWithAccessoryRepresentableObject:valueSource:]";
    v23 = 2112;
    v24 = objectCopy;
    v25 = 2112;
    v26 = hf_homeKitObject2;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = hf_containedProfiles;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(%s) object: %@, homeKitObject: %@, accessory: %@, containedProfiles: %@", &v21, 0x34u);
  }

  if (v10)
  {
    mediaProfile = [v10 mediaProfile];
    if (mediaProfile)
    {
      v15 = [self alloc];
      mediaProfile2 = [v10 mediaProfile];
      v17 = [v15 initWithValueSource:sourceCopy mediaProfileContainer:mediaProfile2];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = [self alloc];
    mediaProfile = [objectCopy hf_homeKitObject];
    v17 = [v18 initWithValueSource:sourceCopy mediaProfileContainer:mediaProfile];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HFAccessoryRepresentable)accessoryRepresentableObject
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  if ([mediaProfileContainer conformsToProtocol:&unk_28252A588])
  {
    v4 = mediaProfileContainer;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    anyObject = mediaProfileContainer;
  }

  else
  {
    accessories = [(HFMediaAccessoryItem *)self accessories];
    anyObject = [accessories anyObject];
  }

  return anyObject;
}

- (HFMediaAccessoryItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_mediaProfileContainer_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessoryItem init]", v5}];

  return 0;
}

- (HFMediaAccessoryItem)initWithValueSource:(id)source mediaProfileContainer:(id)container
{
  v56 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  containerCopy = container;
  v10 = containerCopy;
  if (sourceCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

LABEL_3:
  v51.receiver = self;
  v51.super_class = HFMediaAccessoryItem;
  v11 = [(HFMediaAccessoryItem *)&v51 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_45;
  }

  objc_storeStrong(&v11->_valueSource, source);
  v13 = &unk_282584A38;
  v14 = v10;
  v15 = v14;
  if (!v10)
  {
    goto LABEL_10;
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
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v20 = NSStringFromProtocol(v13);
    [currentHandler3 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v20}];

LABEL_10:
    v17 = 0;
  }

  mediaProfileContainer = v12->_mediaProfileContainer;
  v12->_mediaProfileContainer = v17;

  v22 = &unk_2825595B8;
  v23 = v15;
  v24 = v23;
  if (!v10)
  {
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  if ([v23 conformsToProtocol:v22])
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v24;
  if (!v25)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v29 = NSStringFromProtocol(v22);
    [currentHandler4 handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v29}];

    goto LABEL_17;
  }

LABEL_18:

  homeKitSettingsVendor = v12->_homeKitSettingsVendor;
  v12->_homeKitSettingsVendor = v26;

  v31 = &unk_282541CB0;
  v32 = v24;
  v33 = v32;
  if (v10)
  {
    if ([v32 conformsToProtocol:v31])
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v33;
    if (v34)
    {
      goto LABEL_25;
    }

    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v38 = NSStringFromProtocol(v31);
    [currentHandler5 handleFailureInFunction:v37 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v38}];
  }

  v35 = 0;
LABEL_25:

  homeKitObject = v12->_homeKitObject;
  v12->_homeKitObject = v35;

  if ([(HFMediaAccessoryItem *)v12 isAppleTV])
  {
    v40 = 1;
  }

  else if ([(HFMediaAccessoryItem *)v12 isStandaloneHomePod])
  {
    v40 = 2;
  }

  else if ([(HFMediaAccessoryItem *)v12 isHomePodAndIsInMediaSystem])
  {
    v40 = 3;
  }

  else if ([(HFMediaAccessoryItem *)v12 isHomePodStereoPair])
  {
    v40 = 4;
  }

  else if ([(HFMediaAccessoryItem *)v12 isAirPort])
  {
    v40 = 7;
  }

  else if ([(HFMediaAccessoryItem *)v12 isAudioReceiver])
  {
    v40 = 8;
  }

  else if ([(HFMediaAccessoryItem *)v12 _isHAPCapableSpeaker])
  {
    v40 = 6;
  }

  else if ([(HFMediaAccessoryItem *)v12 _isDumbSpeaker])
  {
    v41 = HFLogForCategory(0x41uLL);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      isSiriEndpointAccessory = [(HFMediaAccessoryItem *)v12 isSiriEndpointAccessory];
      accessories = [(HFMediaAccessoryItem *)v12 accessories];
      anyObject = [accessories anyObject];
      mediaProfile = [anyObject mediaProfile];
      hf_siriLanguageOptionsManager = [mediaProfile hf_siriLanguageOptionsManager];
      *buf = 67109378;
      v53 = isSiriEndpointAccessory;
      v54 = 2112;
      v55 = hf_siriLanguageOptionsManager;
      _os_log_debug_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEBUG, "isSiriEndPoint %{BOOL}d siriLanguageOptionsManager = %@", buf, 0x12u);
    }

    v40 = 5;
  }

  else
  {
    v40 = 0;
  }

  v12->_mediaAccessoryItemType = v40;
LABEL_45:

  v42 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HFMediaAccessoryItem)initWithValueSource:(id)source homeKitObject:(id)object
{
  sourceCopy = source;
  objectCopy = object;
  if (objectCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];

    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

LABEL_3:
  objc_opt_class();
  v9 = objectCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = v9;
  if ([v12 conformsToProtocol:&unk_282584A38])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  mediaProfile = [v11 mediaProfile];
  v16 = mediaProfile;
  if (mediaProfile)
  {
    v17 = mediaProfile;
  }

  else
  {
    v17 = v14;
  }

  v18 = &unk_282584A38;
  v19 = v17;
  v20 = v19;
  if (!v19)
  {
    goto LABEL_18;
  }

  if ([v19 conformsToProtocol:v18])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20;
  if (!v21)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v24 = NSStringFromProtocol(v18);
    [currentHandler3 handleFailureInFunction:v23 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v24}];

LABEL_18:
    v22 = 0;
  }

  v25 = [(HFMediaAccessoryItem *)self initWithValueSource:sourceCopy mediaProfileContainer:v22];
  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFMediaAccessoryItem *)self valueSource];
  v5 = [(HFMediaAccessoryItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_prettyDescription = [mediaProfileContainer hf_prettyDescription];
  v6 = [v3 appendObject:hf_prettyDescription withName:@"mediaProfile"];

  latestResults = [(HFItem *)self latestResults];
  v8 = [latestResults objectForKey:@"childItems"];
  v9 = [v3 appendObject:v8 withName:@"controlItems"];

  build = [v3 build];

  return build;
}

- (HFMediaValueSource)mediaValueSource
{
  valueSource = [(HFMediaAccessoryItem *)self valueSource];
  if ([valueSource conformsToProtocol:&unk_28254A888])
  {
    v4 = valueSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    hf_mediaValueSource = valueSource;
  }

  else
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_mediaValueSource = [mediaProfileContainer hf_mediaValueSource];
  }

  return hf_mediaValueSource;
}

- (id)createControlItemsWithOptions:(id)options
{
  v4 = objc_opt_new();
  if ([(HFMediaAccessoryItem *)self supportsMediaQuickControls])
  {
    v5 = [HFMediaControlItem alloc];
    mediaValueSource = [(HFMediaAccessoryItem *)self mediaValueSource];
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v8 = [(HFMediaControlItem *)v5 initWithValueSource:mediaValueSource mediaProfileContainer:mediaProfileContainer mediaAccessoryItemType:[(HFMediaAccessoryItem *)self mediaAccessoryItemType] displayResults:0];
    [v4 na_safeAddObject:v8];
  }

  home = [(HFMediaAccessoryItem *)self home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    if ([(HFMediaAccessoryItem *)self supportsAlarmQuickControls])
    {
      v11 = [HFHomePodAlarmControlItem alloc];
      mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v13 = [(HFHomePodAlarmControlItem *)v11 initWithMediaProfileContainer:mediaProfileContainer2 displayResults:0];
      [v4 na_safeAddObject:v13];
    }

    if ([(HFMediaAccessoryItem *)self supportsTimerQuickControls])
    {
      v14 = [HFHomePodTimerControlItem alloc];
      mediaProfileContainer3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v16 = [(HFHomePodTimerControlItem *)v14 initWithMediaProfileContainer:mediaProfileContainer3 displayResults:0];
      [v4 na_safeAddObject:v16];
    }
  }

  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(HFMediaAccessoryItem *)self performStandardUpdateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277E02848;
  v10 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = HFItemUpdateOptionActionBuilders;
  v5 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_233];

  v8 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v9 = [v8 BOOLValue];

  v79 = v7;
  [*(a1 + 40) setIsItemInActionBuilder:v7 != 0];
  v10 = [HFMutableItemUpdateOutcome alloc];
  v11 = [v5 standardResults];

  v12 = [(HFItemUpdateOutcome *)v10 initWithResults:v11];
  v13 = [*(a1 + 40) mediaProfileContainer];
  [(HFMutableItemUpdateOutcome *)v12 setObject:v13 forKeyedSubscript:@"HFMediaAccessoryItemProfileContainerKey"];

  v14 = [*(a1 + 40) mediaProfileContainer];
  [(HFMutableItemUpdateOutcome *)v12 setObject:v14 forKeyedSubscript:@"HFResultHomeKitSettingsVendorKey"];

  v15 = [*(a1 + 40) mediaProfileContainer];
  v16 = [v15 hf_mediaRouteIdentifier];
  if (v16)
  {
    [(HFMutableItemUpdateOutcome *)v12 setObject:v16 forKeyedSubscript:@"HFResultMediaRouteIdentifierKey"];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB68] null];
    [(HFMutableItemUpdateOutcome *)v12 setObject:v17 forKeyedSubscript:@"HFResultMediaRouteIdentifierKey"];
  }

  v18 = +[HFExecutionEnvironment sharedInstance];
  if ([v18 hostProcess] == 100)
  {
  }

  else
  {
    v19 = +[HFExecutionEnvironment sharedInstance];
    v20 = [v19 hostProcess];

    if (v20 != 3)
    {
      goto LABEL_9;
    }
  }

  if (!+[HFUtilities isDeviceUnlocked])
  {
    [(HFMutableItemUpdateOutcome *)v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isDisabled"];
  }

LABEL_9:
  [*(a1 + 40) _decorateServiceLikeItemKeys:v12];
  if (v9)
  {
    [(HFMutableItemUpdateOutcome *)v12 setObject:&unk_282525368 forKeyedSubscript:@"state"];
  }

  else
  {
    [*(a1 + 40) _decorateWithMediaSessionKeys:v12];
  }

  [*(a1 + 40) _decorateOutcomeWithAccessorySpecificKeys:v12];
  [*(a1 + 40) _decorateWithMediaSystemSpecificKeys:v12];
  [*(a1 + 40) _decorateWithSiriEndpointProfileSpecificKeys:v12];
  v21 = [*(a1 + 40) mediaProfileContainer];
  if ([v21 hf_isReachable])
  {
    v22 = [*(a1 + 40) mediaProfileContainer];
    v23 = [v22 hasValidSettings];

    if ((v23 & 1) == 0)
    {
      [*(a1 + 40) _decorateSettingsSyncKeys:v12];
    }
  }

  else
  {
  }

  if ([*(a1 + 40) isHomePod])
  {
    v24 = +[HFMediaAccessoryUtility sharedInstance];
    v25 = [*(a1 + 40) mediaProfileContainer];
    v26 = [v25 hf_backingAccessory];
    v27 = [v26 uniqueIdentifier];
    v28 = [v27 UUIDString];
    v29 = [v24 isHomePodRestartingCurrently:v28];
  }

  else
  {
    v29 = 0;
  }

  if ([*(a1 + 40) isHomePodAndIsInMediaSystem])
  {
    v30 = +[HFMediaAccessoryUtility sharedInstance];
    v31 = [*(a1 + 40) mediaProfileContainer];
    v32 = [v31 uniqueIdentifier];
    v33 = [v32 UUIDString];
    v34 = [v30 isHomePodRestartingCurrently:v33];

    if (!v29)
    {
      goto LABEL_21;
    }

LABEL_24:
    v35 = HFLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v73 = [*(a1 + 40) mediaProfileContainer];
      v74 = [v73 hf_backingAccessory];
      v75 = [v74 uniqueIdentifier];
      *buf = 136315394;
      v83 = "[HFMediaAccessoryItem _subclass_updateWithOptions:]_block_invoke";
      v84 = 2112;
      v85 = v75;
      _os_log_debug_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEBUG, "%s container is a solo HomePod that's restarting (uuid: %@)", buf, 0x16u);
    }

    v36 = HFLogForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v76 = [*(a1 + 40) mediaProfileContainer];
      v77 = [v76 uniqueIdentifier];
      v78 = [v77 UUIDString];
      *buf = 136315394;
      v83 = "[HFMediaAccessoryItem _subclass_updateWithOptions:]_block_invoke";
      v84 = 2112;
      v85 = v78;
      _os_log_debug_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEBUG, "%s container is a stereo pair HomePod that's restarting (uuid: %@)", buf, 0x16u);
    }

    if (v9)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v34 = 0;
  if (v29)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v9)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (([*(a1 + 40) isItemInActionBuilder] & v29 & v34 & 1) == 0)
  {
LABEL_33:
    v38 = HFLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v83 = "[HFMediaAccessoryItem _subclass_updateWithOptions:]_block_invoke";
      _os_log_debug_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEBUG, "%s Decorating with Software Update State keys", buf, 0xCu);
    }

    [*(a1 + 40) _decorateWithSoftwareUpdateStateKeys:v12];
    goto LABEL_36;
  }

  v37 = HFLogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v83 = "[HFMediaAccessoryItem _subclass_updateWithOptions:]_block_invoke";
    _os_log_debug_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEBUG, "%s NOT decorating with Software Update State keys", buf, 0xCu);
  }

LABEL_36:
  v39 = [*(a1 + 40) createControlItemsWithOptions:*(a1 + 32)];
  if ([*(a1 + 40) isItemInActionBuilder])
  {
    v40 = [[HFMediaActionSetting alloc] initWithActionBuilder:v79];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke_305;
    v80[3] = &unk_277E02820;
    v81 = v40;
    v41 = v40;
    [v39 na_each:v80];
  }

  v42 = [*(a1 + 40) mediaProfileContainer];
  v43 = [v42 accessories];
  v44 = [v43 na_any:&__block_literal_global_310];

  v45 = [*(a1 + 40) _decorateWithDiagnosticInfoKeys:v12 cdpStatusGood:v44 ^ 1u];
  [*(a1 + 40) _decorateWithSymptomFixInFlightKeys:v12];
  v46 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionPreviousResults];
  v47 = [v46 objectForKeyedSubscript:@"childItems"];
  v48 = v47;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = [MEMORY[0x277CBEB98] set];
  }

  v50 = v49;

  v51 = [v50 na_setByDiffingWithSet:v39];
  [(HFMutableItemUpdateOutcome *)v12 setObject:v51 forKeyedSubscript:@"childItems"];
  v52 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"description"];

  if (v52)
  {
    v53 = MEMORY[0x277CCA898];
    v54 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"description"];
    v55 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"title"];
    v56 = [v53 hf_attributedStringWithInflectableAccessoryStatus:v54 accessoryName:v55];
    v57 = [v56 string];
    [(HFMutableItemUpdateOutcome *)v12 setObject:v57 forKeyedSubscript:@"description"];
  }

  v58 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"controlDescription"];

  if (v58)
  {
    v59 = MEMORY[0x277CCA898];
    v60 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"controlDescription"];
    v61 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"title"];
    v62 = [v59 hf_attributedStringWithInflectableAccessoryStatus:v60 accessoryName:v61];
    v63 = [v62 string];
    [(HFMutableItemUpdateOutcome *)v12 setObject:v63 forKeyedSubscript:@"controlDescription"];
  }

  v64 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"detailedControlDescription"];

  if (v64)
  {
    v65 = MEMORY[0x277CCA898];
    v66 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"detailedControlDescription"];
    v67 = [(HFItemUpdateOutcome *)v12 objectForKeyedSubscript:@"title"];
    v68 = [v65 hf_attributedStringWithInflectableAccessoryStatus:v66 accessoryName:v67];
    v69 = [v68 string];
    [(HFMutableItemUpdateOutcome *)v12 setObject:v69 forKeyedSubscript:@"detailedControlDescription"];
  }

  v70 = [MEMORY[0x277D2C900] futureWithResult:v12];

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

uint64_t __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke_305(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = v6;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    [v5 setMediaActionSetting:*(a1 + 32)];
  }
}

uint64_t __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke_2_307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 diagnosticInfoManager];
  v5 = [v4 isCDPStatusGoodForAccessory:v2];

  return v5 ^ 1u;
}

- (id)room
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_parentRoom = [mediaProfileContainer hf_parentRoom];

  return hf_parentRoom;
}

- (HFMediaAccessoryCommonSettingsManager)commonSettingsManager
{
  accessories = [(HFMediaAccessoryItem *)self accessories];
  anyObject = [accessories anyObject];

  mediaProfile = [anyObject mediaProfile];
  hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

  return hf_mediaAccessoryCommonSettingsManager;
}

- (BOOL)isSiriEndpointAccessory
{
  accessories = [(HFMediaAccessoryItem *)self accessories];
  anyObject = [accessories anyObject];

  LOBYTE(accessories) = [anyObject hf_isSiriEndpoint];
  return accessories;
}

- (BOOL)_hasOnboarded
{
  accessories = [(HFMediaAccessoryItem *)self accessories];
  anyObject = [accessories anyObject];

  LOBYTE(accessories) = [anyObject hf_needsOnboarding];
  return accessories ^ 1;
}

- (BOOL)isAnnounceEnabled
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];
  if (![(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    if (hf_settingsValueManager)
    {
      settings = [mediaProfileContainer settings];
      v6 = [settings hf_accessorySettingAtKeyPath:@"root.announce.enabled"];

      objc_opt_class();
      v9 = [hf_settingsValueManager valueForSetting:v6];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v7 = v10;

      if (v7)
      {
        LOBYTE(v7) = [v7 BOOLValue];

        v6 = v9;
      }

      goto LABEL_10;
    }

LABEL_11:
    LOBYTE(v7) = 0;
    goto LABEL_12;
  }

  commonSettingsManager = [(HFMediaAccessoryItem *)self commonSettingsManager];
  v6 = [commonSettingsManager settingValueForKeyPath:HFAnnounceEnabledKeyPath];

  if (!v6)
  {
    goto LABEL_11;
  }

  LOBYTE(v7) = [v6 BOOLValue];
LABEL_10:

LABEL_12:
  return v7;
}

- (BOOL)isAudioAnalysisEnabled
{
  v20 = *MEMORY[0x277D85DE8];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];
  if (![(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    if (hf_settingsValueManager)
    {
      settings = [mediaProfileContainer settings];
      v6 = [settings hf_accessorySettingAtKeyPath:@"root.audioAnalysis.enabled"];

      objc_opt_class();
      v9 = [hf_settingsValueManager valueForSetting:v6];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v7 = v10;

      v11 = HFLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[HFMediaAccessoryItem isAudioAnalysisEnabled]";
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = mediaProfileContainer;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%s audioAnalysisEnabledSetting = %@ for mediaProfileContainer = %@", &v14, 0x20u);
      }

      if (v7)
      {
        LOBYTE(v7) = [v7 BOOLValue];

        v6 = v9;
      }

      goto LABEL_12;
    }

LABEL_13:
    LOBYTE(v7) = 0;
    goto LABEL_14;
  }

  commonSettingsManager = [(HFMediaAccessoryItem *)self commonSettingsManager];
  v6 = [commonSettingsManager settingValueForKeyPath:HFAudioAnalysisEnabledKeyPath];

  if (!v6)
  {
    goto LABEL_13;
  }

  LOBYTE(v7) = [v6 BOOLValue];
LABEL_12:

LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)profiles
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  mediaProfiles = [mediaProfileContainer mediaProfiles];

  return mediaProfiles;
}

- (id)settings
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  settings = [mediaProfileContainer settings];

  return settings;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  homeKitObject = [(HFMediaAccessoryItem *)self homeKitObject];
  if ([homeKitObject conformsToProtocol:&unk_282584A38])
  {
    v6 = homeKitObject;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [objc_alloc(objc_opt_class()) initWithValueSource:sourceCopy mediaProfileContainer:v7];
  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];

  pendingWrites = [hf_settingsValueManager pendingWrites];
  v8 = [pendingWrites count];

  if (v8)
  {
    state = 2;
  }

  else
  {
    mediaValueSource = [(HFMediaAccessoryItem *)self mediaValueSource];
    mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_mediaRouteIdentifier = [mediaProfileContainer2 hf_mediaRouteIdentifier];
    v12 = [mediaValueSource hasPendingWritesForRouteID:hf_mediaRouteIdentifier];

    if (v12)
    {
      state = 2;
    }
  }

  return state;
}

- (HMHome)home
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_home = [mediaProfileContainer hf_home];

  return hf_home;
}

- (id)accessories
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];

  return accessories;
}

- (id)mediaProfileContainers
{
  profiles = [(HFMediaAccessoryItem *)self profiles];
  allObjects = [profiles allObjects];
  v4 = [allObjects na_map:&__block_literal_global_319];

  return v4;
}

void *__46__HFMediaAccessoryItem_mediaProfileContainers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_282584A38])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    v5 = [HFMediaSystemBuilder alloc];
    homeKitObject = [(HFMediaAccessoryItem *)self homeKitObject];
    v7 = [(HFMediaSystemBuilder *)v5 initWithExistingObject:homeKitObject inHome:homeCopy];
  }

  else
  {
    objc_opt_class();
    homeKitObject2 = [(HFMediaAccessoryItem *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v9 = homeKitObject2;
    }

    else
    {
      v9 = 0;
    }

    homeKitObject = v9;

    accessory = [homeKitObject accessory];
    v11 = accessory;
    if (accessory)
    {
      homeKitObject3 = accessory;
    }

    else
    {
      homeKitObject3 = [(HFMediaAccessoryItem *)self homeKitObject];
    }

    v13 = homeKitObject3;

    v7 = [[HFAccessoryBuilder alloc] initWithExistingObject:v13 inHome:homeCopy];
    homeCopy = v13;
  }

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  homeKitObject = [(HFMediaAccessoryItem *)self homeKitObject];
  v3 = [HFNamingComponents namingComponentFromHomeKitObject:homeKitObject];

  return v3;
}

- (BOOL)isItemGroup
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)numberOfItemsContainedWithinGroup
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  numberOfItemsContainedWithinGroup = [mediaProfileContainer numberOfItemsContainedWithinGroup];

  return numberOfItemsContainedWithinGroup;
}

- (NSSet)accessoriesSupportingSoftwareUpdate
{
  accessories = [(HFMediaAccessoryItem *)self accessories];
  v3 = [accessories na_filter:&__block_literal_global_326_1];

  return v3;
}

uint64_t __59__HFMediaAccessoryItem_accessoriesSupportingSoftwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 softwareUpdateController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v2 supportsSoftwareUpdateV2];
  }

  return v4;
}

- (BOOL)supportsMediaAction
{
  allowsAppleMusicAccount = [(HFMediaAccessoryItem *)self allowsAppleMusicAccount];
  if (allowsAppleMusicAccount)
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_supportsMediaActions = [mediaProfileContainer hf_supportsMediaActions];

    LOBYTE(allowsAppleMusicAccount) = hf_supportsMediaActions;
  }

  return allowsAppleMusicAccount;
}

- (BOOL)isHomePodMediaSystem
{
  objc_opt_class();
  homeKitObject = [(HFMediaAccessoryItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v4 = homeKitObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isHomePod
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isHomePod = [hf_backingAccessory hf_isHomePod];

  return hf_isHomePod;
}

- (unint64_t)homePodVariant
{
  if ([(HFMediaAccessoryItem *)self isHomePod])
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
    homePodVariant = [hf_backingAccessory homePodVariant];
  }

  else
  {
    if (![(HFMediaAccessoryItem *)self isHomePodMediaSystem])
    {
      return 0;
    }

    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_backingAccessory = [mediaProfileContainer accessories];
    anyObject = [hf_backingAccessory anyObject];
    homePodVariant = [anyObject homePodVariant];
  }

  return homePodVariant;
}

- (BOOL)supportsSoftwareUpdate
{
  if ([(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    return 1;
  }

  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  supportsSoftwareUpdateV2 = [hf_backingAccessory supportsSoftwareUpdateV2];

  return supportsSoftwareUpdateV2;
}

- (BOOL)supportsMultiUser
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_supportsMultiUser = [mediaProfileContainer hf_supportsMultiUser];

  return hf_supportsMultiUser;
}

- (BOOL)isStandaloneHomePod
{
  isHomePod = [(HFMediaAccessoryItem *)self isHomePod];
  if (isHomePod)
  {
    LOBYTE(isHomePod) = ![(HFMediaAccessoryItem *)self isContainedWithinItemGroup];
  }

  return isHomePod;
}

- (BOOL)isHomePodStereoPair
{
  isHomePodMediaSystem = [(HFMediaAccessoryItem *)self isHomePodMediaSystem];
  if (isHomePodMediaSystem)
  {
    LOBYTE(isHomePodMediaSystem) = ![(HFMediaAccessoryItem *)self isContainedWithinItemGroup];
  }

  return isHomePodMediaSystem;
}

- (BOOL)isHomePodAndIsInMediaSystem
{
  isHomePod = [(HFMediaAccessoryItem *)self isHomePod];
  if (isHomePod)
  {

    LOBYTE(isHomePod) = [(HFMediaAccessoryItem *)self isContainedWithinMediaSystem];
  }

  return isHomePod;
}

- (BOOL)isContainedWithinMediaSystem
{
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    return 0;
  }

  room = [(HFMediaAccessoryItem *)self room];
  home = [room home];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  v8 = [home hf_mediaSystemForAccessory:hf_backingAccessory];
  v3 = v8 != 0;

  return v3;
}

- (BOOL)isAppleTV
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isAppleTV = [hf_backingAccessory hf_isAppleTV];

  return hf_isAppleTV;
}

- (BOOL)isAirPort
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isAirPortExpressSpeaker = [hf_backingAccessory hf_isAirPortExpressSpeaker];

  return hf_isAirPortExpressSpeaker;
}

- (BOOL)_isDumbSpeaker
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isDumbSpeaker = [hf_backingAccessory hf_isDumbSpeaker];

  return hf_isDumbSpeaker;
}

- (BOOL)_isHAPCapableSpeaker
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  mediaProfile = [hf_backingAccessory mediaProfile];
  v5 = [mediaProfile capability] == 1;

  return v5;
}

- (BOOL)isAudioReceiver
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isAudioReceiver = [hf_backingAccessory hf_isAudioReceiver];

  return hf_isAudioReceiver;
}

- (BOOL)isSiriDisabled
{
  v25 = *MEMORY[0x277D85DE8];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];

  mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer2 hf_backingAccessory];
  hf_isSiriEndpoint = [hf_backingAccessory hf_isSiriEndpoint];

  if (hf_isSiriEndpoint)
  {
    commonSettingsManager = [(HFMediaAccessoryItem *)self commonSettingsManager];
    v9 = [commonSettingsManager settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];

    if (v9)
    {
      v10 = [v9 BOOLValue] ^ 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  else if (hf_settingsValueManager)
  {
    settings = [(HFMediaAccessoryItem *)self settings];
    v9 = [settings hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];

    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      mediaProfileContainer3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v19 = 138412802;
      v20 = mediaProfileContainer3;
      v21 = 2080;
      v22 = "[HFMediaAccessoryItem isSiriDisabled]";
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "%@:%s heySiriSetting = %@", &v19, 0x20u);
    }

    objc_opt_class();
    v13 = [hf_settingsValueManager valueForSetting:v9];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v10 = [v15 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    goto LABEL_14;
  }

  LOBYTE(v10) = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)setSiriDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_isSiriEndpoint = [hf_backingAccessory hf_isSiriEndpoint];

  mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v9 = mediaProfileContainer2;
  if (hf_isSiriEndpoint)
  {
    hf_backingAccessory2 = [mediaProfileContainer2 hf_backingAccessory];
    uniqueIdentifier = [hf_backingAccessory2 uniqueIdentifier];

    commonSettingsManager = [(HFMediaAccessoryItem *)self commonSettingsManager];
    home = [(HFMediaAccessoryItem *)self home];
    uniqueIdentifier2 = [home uniqueIdentifier];
    v15 = HFAllowHeySiriSettingKeyPath;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:!disabledCopy];
    v17 = [commonSettingsManager updateAccessorySettingWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier keyPath:v15 rawSettingValue:v16];
  }

  else
  {
    uniqueIdentifier = [mediaProfileContainer2 hf_settingsValueManager];

    settings = [(HFMediaAccessoryItem *)self settings];
    commonSettingsManager = [settings hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];

    home = [MEMORY[0x277CCABB0] numberWithBool:!disabledCopy];
    v17 = [uniqueIdentifier changeValueForSetting:commonSettingsManager toValue:home];
  }

  return v17;
}

- (BOOL)isDoorbellChimeEnabled
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [HFMediaHelper isDoorbellChimeEnabled:mediaProfileContainer];

  return v3;
}

- (BOOL)supportsMediaQuickControls
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_mediaValueSource = [mediaProfileContainer hf_mediaValueSource];

  if (hf_mediaValueSource)
  {
    mediaAccessoryItemType = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
    if (mediaAccessoryItemType <= 9)
    {
      v6 = 0x1F6u >> mediaAccessoryItemType;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)supportsTimerQuickControls
{
  supportsCoordinationForAlarmsAndTimers = [(HFMediaAccessoryItem *)self supportsCoordinationForAlarmsAndTimers];
  if (supportsCoordinationForAlarmsAndTimers)
  {
    LOBYTE(supportsCoordinationForAlarmsAndTimers) = [(HFMediaAccessoryItem *)self isStandaloneHomePod]|| [(HFMediaAccessoryItem *)self isHomePodStereoPair]|| [(HFMediaAccessoryItem *)self isSiriEndpointAccessory]&& [(HFMediaAccessoryItem *)self supportsCoordinationForAlarmsAndTimers];
  }

  return supportsCoordinationForAlarmsAndTimers;
}

- (BOOL)supportsCoordinationForAlarmsAndTimers
{
  if ([(HFMediaAccessoryItem *)self isHomePod])
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
    softwareVersion = [hf_backingAccessory softwareVersion];
    hf_canSupportCoordination = [softwareVersion hf_canSupportCoordination];

    return hf_canSupportCoordination;
  }

  else if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    accessories = [mediaProfileContainer2 accessories];
    v10 = [accessories na_all:&__block_literal_global_329_0];

    return v10;
  }

  else
  {

    return _os_feature_enabled_impl();
  }
}

uint64_t __62__HFMediaAccessoryItem_supportsCoordinationForAlarmsAndTimers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 softwareVersion];
  v3 = [v2 hf_canSupportCoordination];

  return v3;
}

- (BOOL)supportsDirectObliteration
{
  isHomePod = [(HFMediaAccessoryItem *)self isHomePod];
  if (isHomePod)
  {
    accessories = [(HFMediaAccessoryItem *)self accessories];
    allObjects = [accessories allObjects];
    firstObject = [allObjects firstObject];

    LOBYTE(accessories) = [firstObject supportsCompanionInitiatedObliterate];
    LOBYTE(isHomePod) = accessories;
  }

  return isHomePod;
}

- (void)_decorateOutcomeWithAccessorySpecificKeys:(id)keys
{
  keysCopy = keys;
  v4 = [(HFMediaAccessoryItem *)self iconDescriptor:?];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 isSystemImage])
  {
    imageIdentifier = [v7 imageIdentifier];
    [keysCopy setObject:imageIdentifier forKeyedSubscript:@"iconNames"];
  }

  [keysCopy setObject:v5 forKeyedSubscript:@"icon"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFMediaAccessoryItem preferredActionOnTap:](self, "preferredActionOnTap:", keysCopy)}];
  [keysCopy setObject:v9 forKeyedSubscript:@"controlItemPurpose"];

  if ([(HFMediaAccessoryItem *)self shouldShowMutedMicIcon])
  {
    v10 = [keysCopy objectForKeyedSubscript:@"descriptionBadge"];

    if (!v10)
    {
      [keysCopy setObject:&unk_282525380 forKeyedSubscript:@"descriptionBadge"];
    }
  }
}

- (BOOL)shouldShowMutedMicIcon
{
  v31 = *MEMORY[0x277D85DE8];
  isSiriDisabled = [(HFMediaAccessoryItem *)self isSiriDisabled];
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v21 = 138413058;
    v22 = mediaProfileContainer;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = isSiriDisabled;
    v27 = 1024;
    LODWORD(v28) = [(HFMediaAccessoryItem *)self isSiriDisabled];
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "%@:%s shouldShowMutedMicIcon = %{BOOL}d AND  self.isSiriDisabled = %{BOOL}d", &v21, 0x22u);
  }

  mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  accessories = [mediaProfileContainer2 accessories];

  v7 = [accessories na_all:&__block_literal_global_337_0];
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    mediaProfileContainer3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    home = [(HFMediaAccessoryItem *)self home];
    audioAnalysisClassifierOptions = [home audioAnalysisClassifierOptions];
    isAudioAnalysisEnabled = [(HFMediaAccessoryItem *)self isAudioAnalysisEnabled];
    v21 = 138413314;
    v22 = mediaProfileContainer3;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = v7;
    v27 = 2048;
    v28 = audioAnalysisClassifierOptions;
    v29 = 1024;
    v30 = isAudioAnalysisEnabled;
    _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%@:%s supportsAudioAnalysis = %{BOOL}d AND self.home.audioAnalysisClassifierOptions = %lu, isAudioAnalysisEnabled = %{BOOL}d", &v21, 0x2Cu);
  }

  if (v7)
  {
    home2 = [(HFMediaAccessoryItem *)self home];
    audioAnalysisClassifierOptions2 = [home2 audioAnalysisClassifierOptions];

    v11 = audioAnalysisClassifierOptions2 == 0 && isSiriDisabled;
    if (audioAnalysisClassifierOptions2 && isSiriDisabled)
    {
      v11 = ![(HFMediaAccessoryItem *)self isAudioAnalysisEnabled];
    }
  }

  else
  {
    v11 = isSiriDisabled;
  }

  v12 = HFLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    mediaProfileContainer4 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v21 = 138412802;
    v22 = mediaProfileContainer4;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = v11;
    _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "%@:%s Returning  shouldShowMutedMicIcon = %{BOOL}d", &v21, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_decorateWithSoftwareUpdateStateKeys:(id)keys
{
  keysCopy = keys;
  if ([(HFMediaAccessoryItem *)self supportsSoftwareUpdate])
  {
    valueSource = [(HFMediaAccessoryItem *)self valueSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      hf_home = [mediaProfileContainer hf_home];
      hf_currentUserIsOwner = [hf_home hf_currentUserIsOwner];

      if (hf_currentUserIsOwner)
      {
        accessoriesSupportingSoftwareUpdate = [(HFMediaAccessoryItem *)self accessoriesSupportingSoftwareUpdate];
        v10 = [accessoriesSupportingSoftwareUpdate na_firstObjectPassingTest:&__block_literal_global_340_0];

        if (([v10 supportsSoftwareUpdateV2] & 1) == 0 && !-[HFMediaAccessoryItem isHomePod](self, "isHomePod") && !-[HFMediaAccessoryItem isHomePodMediaSystem](self, "isHomePodMediaSystem"))
        {
LABEL_17:

          goto LABEL_18;
        }

        if ([v10 hf_isReadyToInstallSoftwareUpdate])
        {
          [keysCopy setObject:&unk_282525398 forKeyedSubscript:@"badge"];
          [keysCopy setObject:&unk_2825253B0 forKeyedSubscript:@"descriptionBadge"];
          v11 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionUpdateAvailable", @"HFMediaAccessoryStateDescriptionUpdateAvailable", 1);
          [keysCopy setObject:v11 forKeyedSubscript:@"detailedControlDescription"];
        }

        if ([v10 hf_isInstallingSoftwareUpdate])
        {
          v12 = @"HFFirmwareUpdateInstallingDescription";
        }

        else
        {
          if (![v10 hf_isDownloadingSoftwareUpdate])
          {
LABEL_15:
            if ([v10 supportsSoftwareUpdateV2])
            {
              [keysCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
            }

            goto LABEL_17;
          }

          v12 = @"HFFirmwareUpdateDownloadingDescription";
        }

        v13 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);
        if (v13)
        {
          v14 = v13;
          [keysCopy setObject:v13 forKeyedSubscript:@"description"];
          [keysCopy setObject:v14 forKeyedSubscript:@"detailedControlDescription"];
        }

        goto LABEL_15;
      }
    }
  }

LABEL_18:
}

uint64_t __61__HFMediaAccessoryItem__decorateWithSoftwareUpdateStateKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isReadyToInstallSoftwareUpdate] && (objc_msgSend(v2, "isControllable") & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hf_isSoftwareUpdateInProgress];
  }

  return v3;
}

- (void)_decorateWithMediaSessionKeys:(id)keys
{
  keysCopy = keys;
  mediaValueSource = [(HFMediaAccessoryItem *)self mediaValueSource];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_mediaRouteIdentifier = [mediaProfileContainer hf_mediaRouteIdentifier];
  v7 = [mediaValueSource lastPlaybackStateForProfileForRouteID:hf_mediaRouteIdentifier];

  mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  mediaProfiles = [mediaProfileContainer2 mediaProfiles];
  v10 = [mediaProfiles na_any:&__block_literal_global_356_1];

  if ((v10 & 1) == 0 && ![(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    if ([(HFMediaAccessoryItem *)self isItemInActionBuilder])
    {
      v7 = 0;
      v12 = @"HFMediaAccessoryStateControlDescriptionVolume";
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  isItemInActionBuilder = [(HFMediaAccessoryItem *)self isItemInActionBuilder];
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v13 = @"HFMediaAccessoryStateDescriptionPlaying";
        v14 = @"HFMediaAccessoryStateControlDescriptionPlay";
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v15 = isItemInActionBuilder | v10;
    if (isItemInActionBuilder)
    {
      v12 = @"HFMediaAccessoryStateControlDescriptionVolume";
    }

    else
    {
      v12 = @"HFStatusDescriptionSpeaker_NotPlaying";
    }

    if (v15)
    {
      v7 = 0;
      goto LABEL_28;
    }

LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  if (v7 == 3)
  {
    v13 = @"HFMediaAccessoryStateDescriptionStopped";
    v14 = @"HFMediaAccessoryStateControlDescriptionStop";
    goto LABEL_25;
  }

  if (v7 == 4)
  {
    if (!isItemInActionBuilder)
    {
      v12 = @"HFMediaAccessoryStateDescriptionInterrupted";
      goto LABEL_28;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_29;
  }

  if (v7 != 6)
  {
LABEL_24:
    v13 = @"HFMediaAccessoryStateDescriptionPaused";
    v14 = @"HFMediaAccessoryStateControlDescriptionPause";
LABEL_25:
    if (isItemInActionBuilder)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }

    goto LABEL_28;
  }

  if (isItemInActionBuilder)
  {
    goto LABEL_23;
  }

  v12 = @"HFMediaAccessoryStateDescriptionLoading";
LABEL_28:
  v16 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);
LABEL_29:
  if ([(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    [keysCopy setObject:v16 forKeyedSubscript:@"description"];
    if (v7 == 2)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    if (v16)
    {
      v18 = [keysCopy objectForKeyedSubscript:@"description"];

      if (!v18)
      {
        if ([(HFMediaAccessoryItem *)self supportsPlaybackState])
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        [keysCopy setObject:v19 forKeyedSubscript:@"description"];
      }
    }

    if (v7 == 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  [keysCopy setObject:v20 forKeyedSubscript:@"state"];
}

uint64_t __54__HFMediaAccessoryItem__decorateWithMediaSessionKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 settings];
  if (v3)
  {
    v4 = [v2 settings];

    v5 = [v4 isControllable];
  }

  else
  {
    v4 = [v2 accessory];

    v5 = [v4 isReachable];
  }

  v6 = v5;

  return v6;
}

- (void)_decorateSettingsSyncKeys:(id)keys
{
  v14 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if (([(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem]) && ![(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    v5 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateSettingsSyncingStatus", @"HFMediaAccessoryStateSettingsSyncingStatus", 1);
    [keysCopy setObject:v5 forKeyedSubscript:@"description"];

    v6 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateSettingsSyncingDescription", @"HFMediaAccessoryStateSettingsSyncingDescription", 1);
    [keysCopy setObject:v6 forKeyedSubscript:@"longErrorDescription"];

    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v10 = 136315394;
      v11 = "[HFMediaAccessoryItem _decorateSettingsSyncKeys:]";
      v12 = 2112;
      v13 = mediaProfileContainer;
      _os_log_debug_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEBUG, "%s mediaProfileContainer: %@ is Configuring", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_decorateServiceLikeItemKeys:(id)keys
{
  keysCopy = keys;
  serviceNameComponents = [(HFMediaAccessoryItem *)self serviceNameComponents];
  if (serviceNameComponents)
  {
    [keysCopy setObject:serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
    composedString = [serviceNameComponents composedString];
    if (composedString)
    {
      [keysCopy setObject:composedString forKeyedSubscript:@"title"];
    }

    serviceName = [serviceNameComponents serviceName];
    [keysCopy setObject:serviceName forKeyedSubscript:@"shortTitle"];
  }

  room = [(HFMediaAccessoryItem *)self room];
  uniqueIdentifier = [room uniqueIdentifier];
  [keysCopy safeSetObject:uniqueIdentifier forKey:@"roomIdentifier"];

  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_dateAdded = [mediaProfileContainer hf_dateAdded];
  [keysCopy safeSetObject:hf_dateAdded forKey:@"dateAdded"];

  mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  LODWORD(hf_dateAdded) = [mediaProfileContainer2 hf_hasSetFavorite];

  if (hf_dateAdded)
  {
    v12 = MEMORY[0x277CCABB0];
    mediaProfileContainer3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v14 = [v12 numberWithBool:{objc_msgSend(mediaProfileContainer3, "hf_isFavorite")}];
    [keysCopy setObject:v14 forKeyedSubscript:@"isFavorite"];
  }
}

- (void)_decorateWithMediaSystemSpecificKeys:(id)keys
{
  keysCopy = keys;
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem]|| [(HFMediaAccessoryItem *)self isHomePod])
  {
    v4 = [keysCopy objectForKeyedSubscript:@"dependentHomeKitObjects"];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    settings = [(HFMediaAccessoryItem *)self settings];
    v10 = [settings hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];
    [v8 na_safeAddObject:v10];

    [keysCopy setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
    if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
    {
      v11 = _HFLocalizedStringWithDefaultValue(@"HFMediaSystemTypeDescription", @"HFMediaSystemTypeDescription", 1);
      [keysCopy setObject:v11 forKeyedSubscript:@"detailText"];
    }
  }
}

- (void)_decorateWithSiriEndpointProfileSpecificKeys:(id)keys
{
  keysCopy = keys;
  if ([(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    v4 = [keysCopy objectForKeyedSubscript:@"dependentHomeKitObjects"];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    accessories = [(HFMediaAccessoryItem *)self accessories];
    anyObject = [accessories anyObject];
    hf_siriEndpointProfile = [anyObject hf_siriEndpointProfile];
    [v8 na_safeAddObject:hf_siriEndpointProfile];

    [keysCopy setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
  }
}

- (void)_decorateWithSymptomFixInFlightKeys:(id)keys
{
  keysCopy = keys;
  objc_opt_class();
  v3 = [keysCopy objectForKeyedSubscript:@"symptom"];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [keysCopy objectForKeyedSubscript:@"updateInProgress"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue && ([v5 type] == 1 || objc_msgSend(v5, "type") == 2 || objc_msgSend(v5, "type") == 20))
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAuthenticatingAccount", @"HFServiceDescriptionAuthenticatingAccount", 1);
    [keysCopy setObject:v8 forKeyedSubscript:@"updateInProgressTitle"];
  }
}

- (id)performStandardUpdateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [HFMediaAccessoryItemUpdateRequest alloc];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  valueSource = [(HFMediaAccessoryItem *)self valueSource];
  v8 = [(HFMediaAccessoryItemUpdateRequest *)v5 initWithMediaProfileContainer:mediaProfileContainer valueSource:valueSource];

  v9 = [(HFMediaAccessoryItemUpdateRequest *)v8 updateWithOptions:optionsCopy];

  return v9;
}

- (BOOL)_shouldDecorateDiagnosticInfoWithKeys:(id)keys cdpStatusGood:(BOOL)good
{
  keysCopy = keys;
  isAppleTV = [(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem]|| [(HFMediaAccessoryItem *)self isAppleTV];
  v8 = [keysCopy objectForKeyedSubscript:@"symptom"];

  if (v8)
  {
    isAppleTV = 0;
  }

  return isAppleTV && !good;
}

- (BOOL)_isInstallingSoftwareUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accessoriesSupportingSoftwareUpdate = [(HFMediaAccessoryItem *)self accessoriesSupportingSoftwareUpdate];
  v3 = [accessoriesSupportingSoftwareUpdate countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(accessoriesSupportingSoftwareUpdate);
        }

        if ([*(*(&v8 + 1) + 8 * i) hf_isInstallingSoftwareUpdate])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [accessoriesSupportingSoftwareUpdate countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)serviceNameComponents
{
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  hf_serviceNameComponents = [mediaProfileContainer hf_serviceNameComponents];

  return hf_serviceNameComponents;
}

- (id)iconDescriptor:(id)descriptor
{
  v5 = [descriptor objectForKeyedSubscript:@"state"];
  integerValue = [v5 integerValue];

  v7 = &HFCAPackageStateOn;
  if (integerValue != 2)
  {
    v7 = &HFCAPackageStateOff;
  }

  v8 = *v7;
  v9 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v11 = [v9 configurationWithHierarchicalColor:systemGrayColor];

  v12 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20] scale:3];
  v13 = [v12 configurationByApplyingConfiguration:v11];
  mediaAccessoryItemType = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
  if (mediaAccessoryItemType > 4)
  {
    if (mediaAccessoryItemType > 7)
    {
      if (mediaAccessoryItemType == 8)
      {
        v19 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierReceiver" state:v8];
        goto LABEL_19;
      }

      if (mediaAccessoryItemType != 9)
      {
        goto LABEL_20;
      }
    }

    else if ((mediaAccessoryItemType - 5) >= 2)
    {
      if (mediaAccessoryItemType != 7)
      {
        goto LABEL_20;
      }

      v17 = [HFImageIconDescriptor alloc];
      v18 = @"airport.extreme";
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (mediaAccessoryItemType <= 1)
  {
    if (mediaAccessoryItemType)
    {
      if (mediaAccessoryItemType != 1)
      {
        goto LABEL_20;
      }

      v17 = [HFImageIconDescriptor alloc];
      v18 = @"appletv.fill";
      goto LABEL_18;
    }

LABEL_17:
    v17 = [HFImageIconDescriptor alloc];
    v18 = @"hifispeaker.fill";
LABEL_18:
    v19 = [(HFImageIconDescriptor *)v17 initWithSystemImageNamed:v18 configuration:v13];
LABEL_19:
    v3 = v19;
    goto LABEL_20;
  }

  if ((mediaAccessoryItemType - 2) < 2)
  {
    mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v16 = [HFMediaHelper isHomePodMini:mediaProfileContainer];

    v17 = [HFImageIconDescriptor alloc];
    if (v16)
    {
      v18 = @"homepodmini.fill";
    }

    else
    {
      v18 = @"homepod.fill";
    }

    goto LABEL_18;
  }

  if (mediaAccessoryItemType == 4)
  {
    mediaProfileContainer2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v22 = [HFMediaHelper isHomePodMiniMediaSystem:mediaProfileContainer2];

    v17 = [HFImageIconDescriptor alloc];
    if (v22)
    {
      v18 = @"homepodmini.2.fill";
    }

    else
    {
      v18 = @"homepod.2.fill";
    }

    goto LABEL_18;
  }

LABEL_20:

  return v3;
}

- (BOOL)hasAnyNetworkDiagnosticsIssues
{
  accessories = [(HFMediaAccessoryItem *)self accessories];
  v3 = [accessories na_any:&__block_literal_global_440];

  return v3;
}

uint64_t __54__HFMediaAccessoryItem_hasAnyNetworkDiagnosticsIssues__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 symptomsHandler];
  v3 = [v2 hf_symptomsSortedByPriority];
  v4 = [v3 firstObject];

  v5 = [MEMORY[0x277CD1E80] hf_isNetworkDiagnosticsIssueForSymptomType:{objc_msgSend(v4, "type")}];
  return v5;
}

- (unint64_t)preferredActionOnTap:(id)tap
{
  if ([(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    return 8;
  }

  mediaAccessoryItemType = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
  if (mediaAccessoryItemType > 9)
  {
    return 8;
  }

  else
  {
    return qword_20DD97968[mediaAccessoryItemType];
  }
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  v5 = [(HFItemBuilder *)[HFMediaPlaybackActionBuilder alloc] initWithHome:homeCopy];

  v6 = MEMORY[0x277CBEB58];
  mediaProfileContainer = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v8 = [v6 setWithObject:mediaProfileContainer];
  [(HFMediaPlaybackActionBuilder *)v5 setMediaProfiles:v8];

  if (+[HFUtilities isAMac](HFUtilities, "isAMac") || +[HFUtilities isAVisionPro])
  {
    [(HFMediaPlaybackActionBuilder *)v5 setTargetPlayState:2];
    [(HFMediaPlaybackActionBuilder *)v5 setPlaybackArchive:0];
  }

  else
  {
    [(HFMediaPlaybackActionBuilder *)v5 setTargetPlayState:1];
    v9 = [[HFPlaybackArchive alloc] initWithMediaPlayerPlaybackArchive:0];
    [(HFMediaPlaybackActionBuilder *)v5 setPlaybackArchive:v9];
  }

  v10 = MEMORY[0x277D2C900];
  v11 = [MEMORY[0x277CBEB98] setWithObject:v5];
  v12 = [v10 futureWithResult:v11];

  return v12;
}

@end