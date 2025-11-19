@interface HFMediaAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
- (BOOL)_hasOnboarded;
- (BOOL)_isDumbSpeaker;
- (BOOL)_isHAPCapableSpeaker;
- (BOOL)_isInstallingSoftwareUpdate;
- (BOOL)_shouldDecorateDiagnosticInfoWithKeys:(id)a3 cdpStatusGood:(BOOL)a4;
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
- (HFMediaAccessoryItem)initWithValueSource:(id)a3 homeKitObject:(id)a4;
- (HFMediaAccessoryItem)initWithValueSource:(id)a3 mediaProfileContainer:(id)a4;
- (HFMediaValueSource)mediaValueSource;
- (HMHome)home;
- (NSSet)accessoriesSupportingSoftwareUpdate;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)accessories;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createControlItemsWithOptions:(id)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)iconDescriptor:(id)a3;
- (id)mediaProfileContainers;
- (id)namingComponentForHomeKitObject;
- (id)performStandardUpdateWithOptions:(id)a3;
- (id)profiles;
- (id)room;
- (id)serviceLikeBuilderInHome:(id)a3;
- (id)serviceNameComponents;
- (id)setSiriDisabled:(BOOL)a3;
- (id)settings;
- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)a3;
- (unint64_t)homePodVariant;
- (unint64_t)numberOfItemsContainedWithinGroup;
- (unint64_t)preferredActionOnTap:(id)a3;
- (void)_decorateOutcomeWithAccessorySpecificKeys:(id)a3;
- (void)_decorateServiceLikeItemKeys:(id)a3;
- (void)_decorateSettingsSyncKeys:(id)a3;
- (void)_decorateWithMediaSessionKeys:(id)a3;
- (void)_decorateWithMediaSystemSpecificKeys:(id)a3;
- (void)_decorateWithSiriEndpointProfileSpecificKeys:(id)a3;
- (void)_decorateWithSoftwareUpdateStateKeys:(id)a3;
- (void)_decorateWithSymptomFixInFlightKeys:(id)a3;
@end

@implementation HFMediaAccessoryItem

+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 hf_homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = HFLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 hf_homeKitObject];
    v13 = [v6 hf_containedProfiles];
    v21 = 136316162;
    v22 = "+[HFMediaAccessoryItem(RepresentableItem) itemWithAccessoryRepresentableObject:valueSource:]";
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "(%s) object: %@, homeKitObject: %@, accessory: %@, containedProfiles: %@", &v21, 0x34u);
  }

  if (v10)
  {
    v14 = [v10 mediaProfile];
    if (v14)
    {
      v15 = [a1 alloc];
      v16 = [v10 mediaProfile];
      v17 = [v15 initWithValueSource:v7 mediaProfileContainer:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = [a1 alloc];
    v14 = [v6 hf_homeKitObject];
    v17 = [v18 initWithValueSource:v7 mediaProfileContainer:v14];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HFAccessoryRepresentable)accessoryRepresentableObject
{
  v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  if ([v3 conformsToProtocol:&unk_28252A588])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [(HFMediaAccessoryItem *)self accessories];
    v6 = [v7 anyObject];
  }

  return v6;
}

- (HFMediaAccessoryItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_mediaProfileContainer_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:84 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessoryItem init]", v5}];

  return 0;
}

- (HFMediaAccessoryItem)initWithValueSource:(id)a3 mediaProfileContainer:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v45 = [MEMORY[0x277CCA890] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

LABEL_3:
  v51.receiver = self;
  v51.super_class = HFMediaAccessoryItem;
  v11 = [(HFMediaAccessoryItem *)&v51 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_45;
  }

  objc_storeStrong(&v11->_valueSource, a3);
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
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v20 = NSStringFromProtocol(v13);
    [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v20}];

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
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v29 = NSStringFromProtocol(v22);
    [v27 handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v29}];

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

    v36 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v38 = NSStringFromProtocol(v31);
    [v36 handleFailureInFunction:v37 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v38}];
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
      v46 = [(HFMediaAccessoryItem *)v12 isSiriEndpointAccessory];
      v47 = [(HFMediaAccessoryItem *)v12 accessories];
      v48 = [v47 anyObject];
      v49 = [v48 mediaProfile];
      v50 = [v49 hf_siriLanguageOptionsManager];
      *buf = 67109378;
      v53 = v46;
      v54 = 2112;
      v55 = v50;
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

- (HFMediaAccessoryItem)initWithValueSource:(id)a3 homeKitObject:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItem.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

LABEL_3:
  objc_opt_class();
  v9 = v8;
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

  v15 = [v11 mediaProfile];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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
    v29 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v24 = NSStringFromProtocol(v18);
    [v29 handleFailureInFunction:v23 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v24}];

LABEL_18:
    v22 = 0;
  }

  v25 = [(HFMediaAccessoryItem *)self initWithValueSource:v7 mediaProfileContainer:v22];
  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFMediaAccessoryItem *)self valueSource];
  v5 = [(HFMediaAccessoryItem *)self copyWithValueSource:v4];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v5 = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:v5 withName:@"mediaProfile"];

  v7 = [(HFItem *)self latestResults];
  v8 = [v7 objectForKey:@"childItems"];
  v9 = [v3 appendObject:v8 withName:@"controlItems"];

  v10 = [v3 build];

  return v10;
}

- (HFMediaValueSource)mediaValueSource
{
  v3 = [(HFMediaAccessoryItem *)self valueSource];
  if ([v3 conformsToProtocol:&unk_28254A888])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v6 = [v7 hf_mediaValueSource];
  }

  return v6;
}

- (id)createControlItemsWithOptions:(id)a3
{
  v4 = objc_opt_new();
  if ([(HFMediaAccessoryItem *)self supportsMediaQuickControls])
  {
    v5 = [HFMediaControlItem alloc];
    v6 = [(HFMediaAccessoryItem *)self mediaValueSource];
    v7 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v8 = [(HFMediaControlItem *)v5 initWithValueSource:v6 mediaProfileContainer:v7 mediaAccessoryItemType:[(HFMediaAccessoryItem *)self mediaAccessoryItemType] displayResults:0];
    [v4 na_safeAddObject:v8];
  }

  v9 = [(HFMediaAccessoryItem *)self home];
  v10 = [v9 hf_currentUserIsAdministrator];

  if (v10)
  {
    if ([(HFMediaAccessoryItem *)self supportsAlarmQuickControls])
    {
      v11 = [HFHomePodAlarmControlItem alloc];
      v12 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v13 = [(HFHomePodAlarmControlItem *)v11 initWithMediaProfileContainer:v12 displayResults:0];
      [v4 na_safeAddObject:v13];
    }

    if ([(HFMediaAccessoryItem *)self supportsTimerQuickControls])
    {
      v14 = [HFHomePodTimerControlItem alloc];
      v15 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v16 = [(HFHomePodTimerControlItem *)v14 initWithMediaProfileContainer:v15 displayResults:0];
      [v4 na_safeAddObject:v16];
    }
  }

  return v4;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryItem *)self performStandardUpdateWithOptions:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HFMediaAccessoryItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277E02848;
  v10 = v4;
  v11 = self;
  v6 = v4;
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
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_parentRoom];

  return v3;
}

- (HFMediaAccessoryCommonSettingsManager)commonSettingsManager
{
  v2 = [(HFMediaAccessoryItem *)self accessories];
  v3 = [v2 anyObject];

  v4 = [v3 mediaProfile];
  v5 = [v4 hf_mediaAccessoryCommonSettingsManager];

  return v5;
}

- (BOOL)isSiriEndpointAccessory
{
  v2 = [(HFMediaAccessoryItem *)self accessories];
  v3 = [v2 anyObject];

  LOBYTE(v2) = [v3 hf_isSiriEndpoint];
  return v2;
}

- (BOOL)_hasOnboarded
{
  v2 = [(HFMediaAccessoryItem *)self accessories];
  v3 = [v2 anyObject];

  LOBYTE(v2) = [v3 hf_needsOnboarding];
  return v2 ^ 1;
}

- (BOOL)isAnnounceEnabled
{
  v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v4 = [v3 hf_settingsValueManager];
  if (![(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    if (v4)
    {
      v8 = [v3 settings];
      v6 = [v8 hf_accessorySettingAtKeyPath:@"root.announce.enabled"];

      objc_opt_class();
      v9 = [v4 valueForSetting:v6];
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

  v5 = [(HFMediaAccessoryItem *)self commonSettingsManager];
  v6 = [v5 settingValueForKeyPath:HFAnnounceEnabledKeyPath];

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
  v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v4 = [v3 hf_settingsValueManager];
  if (![(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    if (v4)
    {
      v8 = [v3 settings];
      v6 = [v8 hf_accessorySettingAtKeyPath:@"root.audioAnalysis.enabled"];

      objc_opt_class();
      v9 = [v4 valueForSetting:v6];
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
        v19 = v3;
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

  v5 = [(HFMediaAccessoryItem *)self commonSettingsManager];
  v6 = [v5 settingValueForKeyPath:HFAudioAnalysisEnabledKeyPath];

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
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 mediaProfiles];

  return v3;
}

- (id)settings
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 settings];

  return v3;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryItem *)self homeKitObject];
  if ([v5 conformsToProtocol:&unk_282584A38])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [objc_alloc(objc_opt_class()) initWithValueSource:v4 mediaProfileContainer:v7];
  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)a3
{
  v5 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v6 = [v5 hf_settingsValueManager];

  v7 = [v6 pendingWrites];
  v8 = [v7 count];

  if (v8)
  {
    a3 = 2;
  }

  else
  {
    v9 = [(HFMediaAccessoryItem *)self mediaValueSource];
    v10 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v11 = [v10 hf_mediaRouteIdentifier];
    v12 = [v9 hasPendingWritesForRouteID:v11];

    if (v12)
    {
      a3 = 2;
    }
  }

  return a3;
}

- (HMHome)home
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_home];

  return v3;
}

- (id)accessories
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 accessories];

  return v3;
}

- (id)mediaProfileContainers
{
  v2 = [(HFMediaAccessoryItem *)self profiles];
  v3 = [v2 allObjects];
  v4 = [v3 na_map:&__block_literal_global_319];

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

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    v5 = [HFMediaSystemBuilder alloc];
    v6 = [(HFMediaAccessoryItem *)self homeKitObject];
    v7 = [(HFMediaSystemBuilder *)v5 initWithExistingObject:v6 inHome:v4];
  }

  else
  {
    objc_opt_class();
    v8 = [(HFMediaAccessoryItem *)self homeKitObject];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    v10 = [v6 accessory];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(HFMediaAccessoryItem *)self homeKitObject];
    }

    v13 = v12;

    v7 = [[HFAccessoryBuilder alloc] initWithExistingObject:v13 inHome:v4];
    v4 = v13;
  }

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFMediaAccessoryItem *)self homeKitObject];
  v3 = [HFNamingComponents namingComponentFromHomeKitObject:v2];

  return v3;
}

- (BOOL)isItemGroup
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)numberOfItemsContainedWithinGroup
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 numberOfItemsContainedWithinGroup];

  return v3;
}

- (NSSet)accessoriesSupportingSoftwareUpdate
{
  v2 = [(HFMediaAccessoryItem *)self accessories];
  v3 = [v2 na_filter:&__block_literal_global_326_1];

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
  v3 = [(HFMediaAccessoryItem *)self allowsAppleMusicAccount];
  if (v3)
  {
    v4 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v5 = [v4 hf_supportsMediaActions];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isHomePodMediaSystem
{
  objc_opt_class();
  v3 = [(HFMediaAccessoryItem *)self homeKitObject];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isHomePod];

  return v4;
}

- (unint64_t)homePodVariant
{
  if ([(HFMediaAccessoryItem *)self isHomePod])
  {
    v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v4 = [v3 hf_backingAccessory];
    v5 = [v4 homePodVariant];
  }

  else
  {
    if (![(HFMediaAccessoryItem *)self isHomePodMediaSystem])
    {
      return 0;
    }

    v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v4 = [v3 accessories];
    v6 = [v4 anyObject];
    v5 = [v6 homePodVariant];
  }

  return v5;
}

- (BOOL)supportsSoftwareUpdate
{
  if ([(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    return 1;
  }

  v4 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v5 = [v4 hf_backingAccessory];
  v6 = [v5 supportsSoftwareUpdateV2];

  return v6;
}

- (BOOL)supportsMultiUser
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_supportsMultiUser];

  return v3;
}

- (BOOL)isStandaloneHomePod
{
  v3 = [(HFMediaAccessoryItem *)self isHomePod];
  if (v3)
  {
    LOBYTE(v3) = ![(HFMediaAccessoryItem *)self isContainedWithinItemGroup];
  }

  return v3;
}

- (BOOL)isHomePodStereoPair
{
  v3 = [(HFMediaAccessoryItem *)self isHomePodMediaSystem];
  if (v3)
  {
    LOBYTE(v3) = ![(HFMediaAccessoryItem *)self isContainedWithinItemGroup];
  }

  return v3;
}

- (BOOL)isHomePodAndIsInMediaSystem
{
  v3 = [(HFMediaAccessoryItem *)self isHomePod];
  if (v3)
  {

    LOBYTE(v3) = [(HFMediaAccessoryItem *)self isContainedWithinMediaSystem];
  }

  return v3;
}

- (BOOL)isContainedWithinMediaSystem
{
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    return 0;
  }

  v4 = [(HFMediaAccessoryItem *)self room];
  v5 = [v4 home];
  v6 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v7 = [v6 hf_backingAccessory];
  v8 = [v5 hf_mediaSystemForAccessory:v7];
  v3 = v8 != 0;

  return v3;
}

- (BOOL)isAppleTV
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isAppleTV];

  return v4;
}

- (BOOL)isAirPort
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isAirPortExpressSpeaker];

  return v4;
}

- (BOOL)_isDumbSpeaker
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isDumbSpeaker];

  return v4;
}

- (BOOL)_isHAPCapableSpeaker
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 mediaProfile];
  v5 = [v4 capability] == 1;

  return v5;
}

- (BOOL)isAudioReceiver
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_backingAccessory];
  v4 = [v3 hf_isAudioReceiver];

  return v4;
}

- (BOOL)isSiriDisabled
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v4 = [v3 hf_settingsValueManager];

  v5 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v6 = [v5 hf_backingAccessory];
  v7 = [v6 hf_isSiriEndpoint];

  if (v7)
  {
    v8 = [(HFMediaAccessoryItem *)self commonSettingsManager];
    v9 = [v8 settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];

    if (v9)
    {
      v10 = [v9 BOOLValue] ^ 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  else if (v4)
  {
    v11 = [(HFMediaAccessoryItem *)self settings];
    v9 = [v11 hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];

    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v19 = 138412802;
      v20 = v18;
      v21 = 2080;
      v22 = "[HFMediaAccessoryItem isSiriDisabled]";
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "%@:%s heySiriSetting = %@", &v19, 0x20u);
    }

    objc_opt_class();
    v13 = [v4 valueForSetting:v9];
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

- (id)setSiriDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v6 = [v5 hf_backingAccessory];
  v7 = [v6 hf_isSiriEndpoint];

  v8 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 hf_backingAccessory];
    v11 = [v10 uniqueIdentifier];

    v12 = [(HFMediaAccessoryItem *)self commonSettingsManager];
    v13 = [(HFMediaAccessoryItem *)self home];
    v14 = [v13 uniqueIdentifier];
    v15 = HFAllowHeySiriSettingKeyPath;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:!v3];
    v17 = [v12 updateAccessorySettingWithHomeIdentifier:v14 accessoryIdentifier:v11 keyPath:v15 rawSettingValue:v16];
  }

  else
  {
    v11 = [v8 hf_settingsValueManager];

    v18 = [(HFMediaAccessoryItem *)self settings];
    v12 = [v18 hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:!v3];
    v17 = [v11 changeValueForSetting:v12 toValue:v13];
  }

  return v17;
}

- (BOOL)isDoorbellChimeEnabled
{
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [HFMediaHelper isDoorbellChimeEnabled:v2];

  return v3;
}

- (BOOL)supportsMediaQuickControls
{
  v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v4 = [v3 hf_mediaValueSource];

  if (v4)
  {
    v5 = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
    if (v5 <= 9)
    {
      v6 = 0x1F6u >> v5;
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
  v3 = [(HFMediaAccessoryItem *)self supportsCoordinationForAlarmsAndTimers];
  if (v3)
  {
    LOBYTE(v3) = [(HFMediaAccessoryItem *)self isStandaloneHomePod]|| [(HFMediaAccessoryItem *)self isHomePodStereoPair]|| [(HFMediaAccessoryItem *)self isSiriEndpointAccessory]&& [(HFMediaAccessoryItem *)self supportsCoordinationForAlarmsAndTimers];
  }

  return v3;
}

- (BOOL)supportsCoordinationForAlarmsAndTimers
{
  if ([(HFMediaAccessoryItem *)self isHomePod])
  {
    v3 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v4 = [v3 hf_backingAccessory];
    v5 = [v4 softwareVersion];
    v6 = [v5 hf_canSupportCoordination];

    return v6;
  }

  else if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
  {
    v8 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v9 = [v8 accessories];
    v10 = [v9 na_all:&__block_literal_global_329_0];

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
  v3 = [(HFMediaAccessoryItem *)self isHomePod];
  if (v3)
  {
    v4 = [(HFMediaAccessoryItem *)self accessories];
    v5 = [v4 allObjects];
    v6 = [v5 firstObject];

    LOBYTE(v4) = [v6 supportsCompanionInitiatedObliterate];
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (void)_decorateOutcomeWithAccessorySpecificKeys:(id)a3
{
  v11 = a3;
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
    v8 = [v7 imageIdentifier];
    [v11 setObject:v8 forKeyedSubscript:@"iconNames"];
  }

  [v11 setObject:v5 forKeyedSubscript:@"icon"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFMediaAccessoryItem preferredActionOnTap:](self, "preferredActionOnTap:", v11)}];
  [v11 setObject:v9 forKeyedSubscript:@"controlItemPurpose"];

  if ([(HFMediaAccessoryItem *)self shouldShowMutedMicIcon])
  {
    v10 = [v11 objectForKeyedSubscript:@"descriptionBadge"];

    if (!v10)
    {
      [v11 setObject:&unk_282525380 forKeyedSubscript:@"descriptionBadge"];
    }
  }
}

- (BOOL)shouldShowMutedMicIcon
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HFMediaAccessoryItem *)self isSiriDisabled];
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v21 = 138413058;
    v22 = v15;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = v3;
    v27 = 1024;
    LODWORD(v28) = [(HFMediaAccessoryItem *)self isSiriDisabled];
    _os_log_debug_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEBUG, "%@:%s shouldShowMutedMicIcon = %{BOOL}d AND  self.isSiriDisabled = %{BOOL}d", &v21, 0x22u);
  }

  v5 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v6 = [v5 accessories];

  v7 = [v6 na_all:&__block_literal_global_337_0];
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v17 = [(HFMediaAccessoryItem *)self home];
    v18 = [v17 audioAnalysisClassifierOptions];
    v19 = [(HFMediaAccessoryItem *)self isAudioAnalysisEnabled];
    v21 = 138413314;
    v22 = v16;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = v7;
    v27 = 2048;
    v28 = v18;
    v29 = 1024;
    v30 = v19;
    _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "%@:%s supportsAudioAnalysis = %{BOOL}d AND self.home.audioAnalysisClassifierOptions = %lu, isAudioAnalysisEnabled = %{BOOL}d", &v21, 0x2Cu);
  }

  if (v7)
  {
    v9 = [(HFMediaAccessoryItem *)self home];
    v10 = [v9 audioAnalysisClassifierOptions];

    v11 = v10 == 0 && v3;
    if (v10 && v3)
    {
      v11 = ![(HFMediaAccessoryItem *)self isAudioAnalysisEnabled];
    }
  }

  else
  {
    v11 = v3;
  }

  v12 = HFLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v21 = 138412802;
    v22 = v20;
    v23 = 2080;
    v24 = "[HFMediaAccessoryItem shouldShowMutedMicIcon]";
    v25 = 1024;
    v26 = v11;
    _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "%@:%s Returning  shouldShowMutedMicIcon = %{BOOL}d", &v21, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_decorateWithSoftwareUpdateStateKeys:(id)a3
{
  v15 = a3;
  if ([(HFMediaAccessoryItem *)self supportsSoftwareUpdate])
  {
    v4 = [(HFMediaAccessoryItem *)self valueSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v7 = [v6 hf_home];
      v8 = [v7 hf_currentUserIsOwner];

      if (v8)
      {
        v9 = [(HFMediaAccessoryItem *)self accessoriesSupportingSoftwareUpdate];
        v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_340_0];

        if (([v10 supportsSoftwareUpdateV2] & 1) == 0 && !-[HFMediaAccessoryItem isHomePod](self, "isHomePod") && !-[HFMediaAccessoryItem isHomePodMediaSystem](self, "isHomePodMediaSystem"))
        {
LABEL_17:

          goto LABEL_18;
        }

        if ([v10 hf_isReadyToInstallSoftwareUpdate])
        {
          [v15 setObject:&unk_282525398 forKeyedSubscript:@"badge"];
          [v15 setObject:&unk_2825253B0 forKeyedSubscript:@"descriptionBadge"];
          v11 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionUpdateAvailable", @"HFMediaAccessoryStateDescriptionUpdateAvailable", 1);
          [v15 setObject:v11 forKeyedSubscript:@"detailedControlDescription"];
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
              [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
            }

            goto LABEL_17;
          }

          v12 = @"HFFirmwareUpdateDownloadingDescription";
        }

        v13 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);
        if (v13)
        {
          v14 = v13;
          [v15 setObject:v13 forKeyedSubscript:@"description"];
          [v15 setObject:v14 forKeyedSubscript:@"detailedControlDescription"];
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

- (void)_decorateWithMediaSessionKeys:(id)a3
{
  v21 = a3;
  v4 = [(HFMediaAccessoryItem *)self mediaValueSource];
  v5 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v6 = [v5 hf_mediaRouteIdentifier];
  v7 = [v4 lastPlaybackStateForProfileForRouteID:v6];

  v8 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v9 = [v8 mediaProfiles];
  v10 = [v9 na_any:&__block_literal_global_356_1];

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

  v11 = [(HFMediaAccessoryItem *)self isItemInActionBuilder];
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

    v15 = v11 | v10;
    if (v11)
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
    if (!v11)
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
    if (v11)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }

    goto LABEL_28;
  }

  if (v11)
  {
    goto LABEL_23;
  }

  v12 = @"HFMediaAccessoryStateDescriptionLoading";
LABEL_28:
  v16 = _HFLocalizedStringWithDefaultValue(v12, v12, 1);
LABEL_29:
  if ([(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    [v21 setObject:v16 forKeyedSubscript:@"description"];
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
      v18 = [v21 objectForKeyedSubscript:@"description"];

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

        [v21 setObject:v19 forKeyedSubscript:@"description"];
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
  [v21 setObject:v20 forKeyedSubscript:@"state"];
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

- (void)_decorateSettingsSyncKeys:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem]) && ![(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    v5 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateSettingsSyncingStatus", @"HFMediaAccessoryStateSettingsSyncingStatus", 1);
    [v4 setObject:v5 forKeyedSubscript:@"description"];

    v6 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateSettingsSyncingDescription", @"HFMediaAccessoryStateSettingsSyncingDescription", 1);
    [v4 setObject:v6 forKeyedSubscript:@"longErrorDescription"];

    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
      v10 = 136315394;
      v11 = "[HFMediaAccessoryItem _decorateSettingsSyncKeys:]";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEBUG, "%s mediaProfileContainer: %@ is Configuring", &v10, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_decorateServiceLikeItemKeys:(id)a3
{
  v15 = a3;
  v4 = [(HFMediaAccessoryItem *)self serviceNameComponents];
  if (v4)
  {
    [v15 setObject:v4 forKeyedSubscript:@"serviceNameComponents"];
    v5 = [v4 composedString];
    if (v5)
    {
      [v15 setObject:v5 forKeyedSubscript:@"title"];
    }

    v6 = [v4 serviceName];
    [v15 setObject:v6 forKeyedSubscript:@"shortTitle"];
  }

  v7 = [(HFMediaAccessoryItem *)self room];
  v8 = [v7 uniqueIdentifier];
  [v15 safeSetObject:v8 forKey:@"roomIdentifier"];

  v9 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v10 = [v9 hf_dateAdded];
  [v15 safeSetObject:v10 forKey:@"dateAdded"];

  v11 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  LODWORD(v10) = [v11 hf_hasSetFavorite];

  if (v10)
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v14 = [v12 numberWithBool:{objc_msgSend(v13, "hf_isFavorite")}];
    [v15 setObject:v14 forKeyedSubscript:@"isFavorite"];
  }
}

- (void)_decorateWithMediaSystemSpecificKeys:(id)a3
{
  v12 = a3;
  if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem]|| [(HFMediaAccessoryItem *)self isHomePod])
  {
    v4 = [v12 objectForKeyedSubscript:@"dependentHomeKitObjects"];
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

    v9 = [(HFMediaAccessoryItem *)self settings];
    v10 = [v9 hf_accessorySettingAtKeyPath:@"root.siri.allowHeySiri"];
    [v8 na_safeAddObject:v10];

    [v12 setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
    if ([(HFMediaAccessoryItem *)self isHomePodMediaSystem])
    {
      v11 = _HFLocalizedStringWithDefaultValue(@"HFMediaSystemTypeDescription", @"HFMediaSystemTypeDescription", 1);
      [v12 setObject:v11 forKeyedSubscript:@"detailText"];
    }
  }
}

- (void)_decorateWithSiriEndpointProfileSpecificKeys:(id)a3
{
  v12 = a3;
  if ([(HFMediaAccessoryItem *)self isSiriEndpointAccessory])
  {
    v4 = [v12 objectForKeyedSubscript:@"dependentHomeKitObjects"];
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

    v9 = [(HFMediaAccessoryItem *)self accessories];
    v10 = [v9 anyObject];
    v11 = [v10 hf_siriEndpointProfile];
    [v8 na_safeAddObject:v11];

    [v12 setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];
  }
}

- (void)_decorateWithSymptomFixInFlightKeys:(id)a3
{
  v9 = a3;
  objc_opt_class();
  v3 = [v9 objectForKeyedSubscript:@"symptom"];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v9 objectForKeyedSubscript:@"updateInProgress"];
  v7 = [v6 BOOLValue];

  if (v7 && ([v5 type] == 1 || objc_msgSend(v5, "type") == 2 || objc_msgSend(v5, "type") == 20))
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAuthenticatingAccount", @"HFServiceDescriptionAuthenticatingAccount", 1);
    [v9 setObject:v8 forKeyedSubscript:@"updateInProgressTitle"];
  }
}

- (id)performStandardUpdateWithOptions:(id)a3
{
  v4 = a3;
  v5 = [HFMediaAccessoryItemUpdateRequest alloc];
  v6 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v7 = [(HFMediaAccessoryItem *)self valueSource];
  v8 = [(HFMediaAccessoryItemUpdateRequest *)v5 initWithMediaProfileContainer:v6 valueSource:v7];

  v9 = [(HFMediaAccessoryItemUpdateRequest *)v8 updateWithOptions:v4];

  return v9;
}

- (BOOL)_shouldDecorateDiagnosticInfoWithKeys:(id)a3 cdpStatusGood:(BOOL)a4
{
  v6 = a3;
  v7 = [(HFMediaAccessoryItem *)self isHomePod]|| [(HFMediaAccessoryItem *)self isHomePodMediaSystem]|| [(HFMediaAccessoryItem *)self isAppleTV];
  v8 = [v6 objectForKeyedSubscript:@"symptom"];

  if (v8)
  {
    v7 = 0;
  }

  return v7 && !a4;
}

- (BOOL)_isInstallingSoftwareUpdate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HFMediaAccessoryItem *)self accessoriesSupportingSoftwareUpdate];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hf_isInstallingSoftwareUpdate])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v3 = [v2 hf_serviceNameComponents];

  return v3;
}

- (id)iconDescriptor:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"state"];
  v6 = [v5 integerValue];

  v7 = &HFCAPackageStateOn;
  if (v6 != 2)
  {
    v7 = &HFCAPackageStateOff;
  }

  v8 = *v7;
  v9 = MEMORY[0x277D755D0];
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  v11 = [v9 configurationWithHierarchicalColor:v10];

  v12 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20] scale:3];
  v13 = [v12 configurationByApplyingConfiguration:v11];
  v14 = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
  if (v14 > 4)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v19 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:@"HFCAPackageIconIdentifierReceiver" state:v8];
        goto LABEL_19;
      }

      if (v14 != 9)
      {
        goto LABEL_20;
      }
    }

    else if ((v14 - 5) >= 2)
    {
      if (v14 != 7)
      {
        goto LABEL_20;
      }

      v17 = [HFImageIconDescriptor alloc];
      v18 = @"airport.extreme";
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 != 1)
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

  if ((v14 - 2) < 2)
  {
    v15 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v16 = [HFMediaHelper isHomePodMini:v15];

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

  if (v14 == 4)
  {
    v21 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
    v22 = [HFMediaHelper isHomePodMiniMediaSystem:v21];

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
  v2 = [(HFMediaAccessoryItem *)self accessories];
  v3 = [v2 na_any:&__block_literal_global_440];

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

- (unint64_t)preferredActionOnTap:(id)a3
{
  if ([(HFMediaAccessoryItem *)self isItemInActionBuilder])
  {
    return 8;
  }

  v4 = [(HFMediaAccessoryItem *)self mediaAccessoryItemType];
  if (v4 > 9)
  {
    return 8;
  }

  else
  {
    return qword_20DD97968[v4];
  }
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFItemBuilder *)[HFMediaPlaybackActionBuilder alloc] initWithHome:v4];

  v6 = MEMORY[0x277CBEB58];
  v7 = [(HFMediaAccessoryItem *)self mediaProfileContainer];
  v8 = [v6 setWithObject:v7];
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