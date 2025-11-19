@interface DNDSEventBehaviorResolver
- (BOOL)_isDisconnectedWatch:(unint64_t)a3 inReduceInterruptions:(int64_t)a4;
- (BOOL)_queue_eventSourceIsContact:(id)a3;
- (BOOL)_queue_eventSourceIsContact:(id)a3 inGroupWithIdentifier:(id)a4;
- (BOOL)_queue_eventSourceIsEmergencyContact:(id)a3;
- (BOOL)_queue_eventSourceIsFavorite:(id)a3;
- (BOOL)_queue_eventSourceIsRepeat:(id)a3 clientDetails:(id)a4 date:(id)a5;
- (BOOL)_queue_isBreakthroughAllowedForModeIdentifier:(id)a3 withConfiguration:(id)a4 application:(id)a5 sender:(id)a6 urgency:(unint64_t)a7 eventType:(unint64_t)a8 threadIdentifier:(id)a9 filterCriteria:(id)a10 notifyAnyway:(BOOL)a11 intelligentBehavior:(int64_t)a12 reason:(unint64_t *)a13;
- (BOOL)_queue_isBreakthroughAllowedForSender:(id)a3 eventType:(unint64_t)a4 clientDetails:(id)a5 date:(id)a6 reason:(unint64_t *)a7;
- (BOOL)_queue_shouldAdjustEventBehaviorForMirroring;
- (DNDSEventBehaviorResolver)initWithModeRepository:(id)a3 contactStore:(id)a4 auxiliaryStateMonitor:(id)a5 intelligentBehaviorResolver:(id)a6 IDSLocalService:(id)a7;
- (DNDSEventBehaviorResolverDataSource)dataSource;
- (id)_activeModeConfigurationForBehavior:(unint64_t)a3;
- (id)_legacyModeConfigurationForModeConfiguration:(id)a3;
- (id)_queue_adjustEventBehaviorResolutionForAuxiliaryState:(id)a3;
- (id)_queue_firstContactForPredicate:(id)a3;
- (id)_queue_resolutionForModeSemanticType:(int64_t)a3 withConfiguration:(id)a4 eventDetails:(id)a5 clientDetails:(id)a6 state:(id)a7 date:(id)a8 error:(id *)a9;
- (id)_queue_resolveBehaviorForEventDetails:(id)a3 clientDetails:(id)a4 date:(id)a5 error:(id *)a6;
- (id)resolutionForConfiguration:(id)a3 eventDetails:(id)a4 clientDetails:(id)a5 date:(id)a6 error:(id *)a7;
- (id)resolveBehaviorForEventDetails:(id)a3 clientDetails:(id)a4 date:(id)a5 error:(id *)a6;
- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4;
- (unint64_t)_queue_resolveOutcomeForEventSender:(id)a3 clientDetails:(id)a4 date:(id)a5 reason:(unint64_t *)a6;
- (void)dealloc;
@end

@implementation DNDSEventBehaviorResolver

- (DNDSEventBehaviorResolverDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (DNDSEventBehaviorResolver)initWithModeRepository:(id)a3 contactStore:(id)a4 auxiliaryStateMonitor:(id)a5 intelligentBehaviorResolver:(id)a6 IDSLocalService:(id)a7
{
  v25 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = DNDSEventBehaviorResolver;
  v17 = [(DNDSEventBehaviorResolver *)&v26 init];
  if (v17)
  {
    v18 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.EventBehaviorResolutionService"];
    queue = v17->_queue;
    v17->_queue = v18;

    objc_storeStrong(&v17->_modeRepository, a3);
    objc_storeStrong(&v17->_contactStore, a4);
    objc_storeStrong(&v17->_auxiliaryStateMonitor, a5);
    objc_storeStrong(&v17->_intelligentBehaviorResolver, a6);
    objc_storeStrong(&v17->_localService, a7);
    v20 = [objc_alloc(MEMORY[0x277CBDAF8]) initWithContactStore:v17->_contactStore];
    favorites = v17->_favorites;
    v17->_favorites = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resolutionRecord = v17->_resolutionRecord;
    v17->_resolutionRecord = v22;

    DNDSRegisterSysdiagnoseDataProvider(v17);
  }

  return v17;
}

- (void)dealloc
{
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSEventBehaviorResolver;
  [(DNDSEventBehaviorResolver *)&v3 dealloc];
}

- (id)resolveBehaviorForEventDetails:(id)a3 clientDetails:(id)a4 date:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_not_V2(self->_queue);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  queue = self->_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__DNDSEventBehaviorResolver_resolveBehaviorForEventDetails_clientDetails_date_error___block_invoke;
  v20[3] = &unk_278F8A178;
  v24 = &v32;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v25 = &v26;
  dispatch_sync(queue, v20);
  if (a6)
  {
    v17 = v27[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

void __85__DNDSEventBehaviorResolver_resolveBehaviorForEventDetails_clientDetails_date_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 _queue_resolveBehaviorForEventDetails:v3 clientDetails:v4 date:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)sysdiagnoseDataForDate:(id)a3 redacted:(BOOL)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(NSMutableArray *)self->_resolutionRecord copy];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__DNDSEventBehaviorResolver_sysdiagnoseDataForDate_redacted___block_invoke;
  v15 = &unk_278F8A1A0;
  v16 = v5;
  v7 = v5;
  v8 = [v6 bs_mapNoNulls:&v12];
  v17 = @"resolution-record";
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:{1, v12, v13, v14, v15}];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __61__DNDSEventBehaviorResolver_sysdiagnoseDataForDate_redacted___block_invoke(uint64_t a1, void *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v17[0] = @"uuid";
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [v4 UUIDString];
  v18[0] = v5;
  v17[1] = @"timestamp";
  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v18[1] = v7;
  v17[2] = @"local-date";
  v8 = MEMORY[0x277CCA968];
  v9 = [v3 date];
  v10 = [v8 localizedStringFromDate:v9 dateStyle:1 timeStyle:1];
  v18[2] = v10;
  v17[3] = @"client-identifier";
  v11 = [v3 clientIdentifier];
  v18[3] = v11;
  v17[4] = @"outcome";
  v12 = DNDSResolutionOutcomeToString([v3 outcome]);
  v18[4] = v12;
  v17[5] = @"reason";
  [v3 reason];

  v13 = DNDResolutionReasonToString();
  v18[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_queue_resolveBehaviorForEventDetails:(id)a3 clientDetails:(id)a4 date:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v13 = [(DNDSEventBehaviorResolver *)self dataSource];
  v14 = [v13 currentStateForEventBehaviorResolver:self];
  if ([v14 isActive])
  {
    v15 = -[DNDSEventBehaviorResolver _activeModeConfigurationForBehavior:](self, "_activeModeConfigurationForBehavior:", [v10 behavior]);
    v16 = DNDSLogResolver;
    if (v15)
    {
      v38 = v11;
      if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v15 mode];
        v19 = [v18 identifier];
        *buf = 138543362;
        v42 = v19;
        _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Resolving breakthrough for active mode: %{public}@.", buf, 0xCu);
      }

      v20 = [v15 mode];
      v21 = [v20 semanticType];
      v22 = [v15 configuration];
      v23 = [(DNDSEventBehaviorResolver *)self _queue_resolutionForModeSemanticType:v21 withConfiguration:v22 eventDetails:v10 clientDetails:v38 state:v14 date:v12 error:a6];

      v11 = v38;
    }

    else
    {
      if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
      {
        [DNDSEventBehaviorResolver _queue_resolveBehaviorForEventDetails:v16 clientDetails:v14 date:? error:?];
      }

      v23 = 0;
    }
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277D058E0]) initWithEventDetails:v10 interruptionSuppression:0 intelligentBehavior:0 resolutionReason:2 activeModeUUID:0];
    v25 = [v11 clientIdentifier];
    v23 = [DNDSEventBehaviorResolution resolutionForDate:v12 eventBehavior:v24 clientIdentifier:v25 outcome:1 reason:2];
  }

  v26 = [(DNDSEventBehaviorResolver *)self _queue_adjustEventBehaviorResolutionForAuxiliaryState:v23];

  if (v26)
  {
    v27 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v26;
      _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Event was resolved: resolution=%@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_resolutionRecord addObject:v26];
    if ([(NSMutableArray *)self->_resolutionRecord count]>= 0x15)
    {
      v28 = [(NSMutableArray *)self->_resolutionRecord count];
      v29 = [v12 dateByAddingTimeInterval:-180.0];
      v30 = MEMORY[0x277CCAC30];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __92__DNDSEventBehaviorResolver__queue_resolveBehaviorForEventDetails_clientDetails_date_error___block_invoke;
      v39[3] = &unk_278F8A1C8;
      v31 = v29;
      v40 = v31;
      v32 = [v30 predicateWithBlock:v39];
      [(NSMutableArray *)self->_resolutionRecord filterUsingPredicate:v32];
      v33 = v28 - [(NSMutableArray *)self->_resolutionRecord count];
      if (v33)
      {
        v34 = DNDSLogResolver;
        if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v42 = v33;
          _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Pruned %lu resolutions from record", buf, 0xCu);
        }
      }
    }
  }

  v35 = [v26 eventBehavior];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

BOOL __92__DNDSEventBehaviorResolver__queue_resolveBehaviorForEventDetails_clientDetails_date_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 date];
  v4 = [v2 compare:v3] != 1;

  return v4;
}

- (id)_queue_adjustEventBehaviorResolutionForAuxiliaryState:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventBehavior];
    if ([v6 interruptionSuppression])
    {
    }

    else
    {
      v7 = [(DNDSEventBehaviorResolver *)self _queue_shouldAdjustEventBehaviorForMirroring];

      if (v7)
      {
        v8 = [(DNDSAuxiliaryStateMonitor *)self->_auxiliaryStateMonitor isScreenShared];
        v9 = [(DNDSAuxiliaryStateMonitor *)self->_auxiliaryStateMonitor isScreenMirrored];
        v10 = [(DNDSAuxiliaryStateMonitor *)self->_auxiliaryStateMonitor isPresentationModeEnabled];
        v11 = v10;
        if (v9 || v8 || v10)
        {
          v12 = 23;
          if (!v10)
          {
            v12 = 0;
          }

          if (v8)
          {
            v12 = 22;
          }

          if (v9)
          {
            v13 = 21;
          }

          else
          {
            v13 = v12;
          }

          v14 = [v5 eventBehavior];
          v15 = objc_alloc(MEMORY[0x277D058E0]);
          v16 = [v14 eventDetails];
          v17 = [v14 activeModeUUID];
          v18 = [v15 initWithEventDetails:v16 interruptionSuppression:1 intelligentBehavior:3 resolutionReason:v13 activeModeUUID:v17];

          v19 = [v5 date];
          v20 = [v5 clientIdentifier];
          v21 = [DNDSEventBehaviorResolution resolutionForDate:v19 eventBehavior:v18 clientIdentifier:v20 outcome:2 reason:v13];

          v22 = DNDSLogResolver;
          if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
          {
            v25[0] = 67109632;
            v25[1] = v9;
            v26 = 1024;
            v27 = v8;
            v28 = 1024;
            v29 = v11;
            _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Resolution modified to accomodate auxiliary state; isScreenMirrored=%d isScreenShared=%d isPresentationModeEnabled=%d", v25, 0x14u);
          }

          v5 = v21;
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_queue_shouldAdjustEventBehaviorForMirroring
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Determined whether sharing / mirroring preferences should adjust event behavior; shouldAdjust=%d", v5, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_activeModeConfigurationForBehavior:(unint64_t)a3
{
  v5 = [(DNDSEventBehaviorResolver *)self dataSource];
  v6 = [v5 currentStateForEventBehaviorResolver:self];

  v7 = [v6 activeModeConfiguration];
  if (a3 == 1)
  {
    v8 = [(DNDSEventBehaviorResolver *)self _legacyModeConfigurationForModeConfiguration:v7];

    v7 = v8;
  }

  return v7;
}

- (id)_legacyModeConfigurationForModeConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277D05A20] defaultConfiguration];
  v6 = objc_opt_new();
  v7 = [v6 mutableCopy];

  v8 = [v3 configuration];

  v9 = [v8 senderConfiguration];
  v10 = [v9 phoneCallBypassSettings];
  [v7 setPhoneCallBypassSettings:v10];

  [v5 setSenderConfiguration:v7];
  [v5 setMinimumBreakthroughUrgency:0];
  [v4 setConfiguration:v5];

  return v4;
}

- (id)_queue_resolutionForModeSemanticType:(int64_t)a3 withConfiguration:(id)a4 eventDetails:(id)a5 clientDetails:(id)a6 state:(id)a7 date:(id)a8 error:(id *)a9
{
  v76 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  dispatch_assert_queue_V2(self->_queue);
  v64 = [v16 bundleIdentifier];
  v65 = [v16 sender];
  v20 = [v16 urgency];
  v61 = [v16 type];
  v63 = [v16 threadIdentifier];
  v62 = [v16 filterCriteria];
  if ([v16 behavior] == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = [v16 notifyAnyway];
  }

  v22 = [v16 platform];
  if (!v22)
  {
    v22 = DNDPlatformForCurrentDevice();
  }

  if ([(DNDSEventBehaviorResolver *)self _isDisconnectedWatch:v22 inReduceInterruptions:a3])
  {
    v23 = [objc_alloc(MEMORY[0x277D058E0]) initWithEventDetails:v16 interruptionSuppression:0 intelligentBehavior:0 resolutionReason:2 activeModeUUID:0];
    v24 = [v17 clientIdentifier];
    v25 = [DNDSEventBehaviorResolution resolutionForDate:v19 eventBehavior:v23 clientIdentifier:v24 outcome:1 reason:2];
  }

  else
  {
    v60 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v64 platform:v22];
    v26 = +[DNDSServerDomain rootSettings];
    v27 = [v26 forcedIntelligentBreakthrough];

    if (v27)
    {
      if (v27 == 1)
      {
        v28 = 2;
      }

      else
      {
        v28 = 3;
      }
    }

    else if (_os_feature_enabled_impl() && [v15 allowIntelligentManagement] == 2 && (intelligentBehaviorResolver = self->_intelligentBehaviorResolver) != 0)
    {
      v28 = [(DNDSIntelligentBehaviorResolver *)intelligentBehaviorResolver intelligentInterruptionBehaviorForClientEventDetails:v16];
    }

    else
    {
      v28 = 0;
    }

    v67 = 0;
    v30 = [v18 activeModeIdentifier];
    LOBYTE(v57) = v21;
    v31 = [(DNDSEventBehaviorResolver *)self _queue_isBreakthroughAllowedForModeIdentifier:v30 withConfiguration:v15 application:v60 sender:v65 urgency:v20 eventType:v61 threadIdentifier:v63 filterCriteria:v62 notifyAnyway:v57 intelligentBehavior:v28 reason:&v67];

    if (v67 != 26 && (v28 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v33 = 0;
    }

    else
    {
      v33 = v28;
    }

    v59 = v33;
    v34 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      v36 = DNDIntelligentInterruptionBehaviorToString();
      *buf = 138412546;
      v69 = v36;
      v70 = 2112;
      v71 = v16;
      _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Intelligent Resolver behavior: %@ for clientEventDetails: %@", buf, 0x16u);
    }

    v37 = DNDSLogResolver;
    v58 = v18;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v15;
      if (v31)
      {
        v39 = @"is";
      }

      else
      {
        v39 = @"is NOT";
      }

      v40 = v37;
      v41 = DNDResolutionReasonToString();
      *buf = 138544130;
      v69 = v39;
      v15 = v38;
      v70 = 2112;
      v71 = v41;
      v72 = 2112;
      v73 = v38;
      v74 = 2112;
      v75 = v16;
      _os_log_impl(&dword_24912E000, v40, OS_LOG_TYPE_DEFAULT, "Breakthrough %{public}@ allowed with reason: %@ for configuration %@ with event details: %@.", buf, 0x2Au);
    }

    v66 = 0;
    v42 = [(DNDSEventBehaviorResolver *)self _queue_isBreakthroughAllowedForSender:v65 eventType:v61 clientDetails:v17 date:v19 reason:&v66];
    v43 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      v44 = @"is NOT";
      if (v42)
      {
        v44 = @"is";
      }

      *buf = 138543618;
      v69 = v44;
      v70 = 2112;
      v71 = v16;
      _os_log_impl(&dword_24912E000, v43, OS_LOG_TYPE_DEFAULT, "Breakthrough %{public}@ allowed for global settings with event details: %@.", buf, 0x16u);
    }

    v45 = v31 || v42;
    v46 = v66;
    if (!v42)
    {
      v46 = v67;
    }

    if (v31)
    {
      v47 = v67;
    }

    else
    {
      v47 = v46;
    }

    v48 = v45;
    if (v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if (v48)
    {
      v50 = 0;
    }

    else if ([v64 isEqualToString:@"com.apple.cmas"])
    {
      v50 = 1;
    }

    else
    {
      v50 = [v15 suppressionType];
    }

    v51 = objc_alloc(MEMORY[0x277D058E0]);
    v52 = [v58 activeModeUUID];
    v53 = [v51 initWithEventDetails:v16 interruptionSuppression:v50 intelligentBehavior:v59 resolutionReason:v47 activeModeUUID:v52];

    v54 = [v17 clientIdentifier];
    v18 = v58;
    v25 = [DNDSEventBehaviorResolution resolutionForDate:v19 eventBehavior:v53 clientIdentifier:v54 outcome:v49 reason:v47];
  }

  v55 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)_isDisconnectedWatch:(unint64_t)a3 inReduceInterruptions:(int64_t)a4
{
  LOBYTE(v4) = 0;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 == 3 && a4 == 9)
  {
    v5 = [(IDSService *)self->_localService devices];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 deviceType] == 2 && objc_msgSend(v10, "isLocallyPaired") && (objc_msgSend(v10, "isNearby") & 1) == 0)
          {
            v4 |= [v10 isConnected] ^ 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

- (unint64_t)_queue_resolveOutcomeForEventSender:(id)a3 clientDetails:(id)a4 date:(id)a5 reason:(unint64_t *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(DNDSEventBehaviorResolver *)self dataSource];
  v14 = [v11 clientIdentifier];
  v15 = [v13 eventBehaviorResolver:self bypassSettingsForClientIdentifier:v14];

  v16 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v15;
    _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Got bypass settings: settings=%{public}@", buf, 0xCu);
  }

  v17 = [v10 isPopulated];
  if (!v15)
  {
    v22 = 0;
    goto LABEL_35;
  }

  v18 = v17;
  [v15 immediateBypassEventSourceType];
  v19 = DNDResolvedImmediateBypassEventSourceType();
  v20 = 0;
  v21 = 1;
  v28 = a6;
  if (v19 <= 2)
  {
    if (v19 == 1)
    {
      v21 = 0;
      v20 = 5;
    }

    else
    {
      v22 = 0;
      if (v19 != 2)
      {
        goto LABEL_24;
      }

      v20 = 6;
    }

    v22 = v19;
    goto LABEL_24;
  }

  if (v19 == 3)
  {
    if (v18 && [(DNDSEventBehaviorResolver *)self _queue_eventSourceIsFavorite:v10])
    {
      v21 = 0;
      v22 = 1;
      v20 = 7;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v19 == 4)
  {
    if (v18 && [(DNDSEventBehaviorResolver *)self _queue_eventSourceIsContact:v10])
    {
      v21 = 0;
      v22 = 1;
      v20 = 8;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v22 = 0;
  if (v19 == 5)
  {
    if (v18)
    {
      v23 = [v15 immediateBypassCNGroupIdentifier];
      v24 = [(DNDSEventBehaviorResolver *)self _queue_eventSourceIsContact:v10 inGroupWithIdentifier:v23];

      if (v24)
      {
        v21 = 0;
        v22 = 1;
        v20 = 9;
        goto LABEL_24;
      }
    }

LABEL_21:
    v20 = 0;
    v22 = 0;
  }

LABEL_24:
  [v15 repeatEventSourceBehaviorEnabledSetting];
  if (DNDResolvedRepeatEventSourceBehaviorEnabledSetting() == 2)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if ((v25 & v18) == 1 && [(DNDSEventBehaviorResolver *)self _queue_eventSourceIsRepeat:v10 clientDetails:v11 date:v12])
  {
    v20 = 10;
    v22 = 1;
  }

  if (((v22 != 1) & v18) == 1 && [(DNDSEventBehaviorResolver *)self _queue_eventSourceIsEmergencyContact:v10])
  {
    v20 = 11;
    v22 = 1;
LABEL_34:
    *v28 = v20;
    goto LABEL_35;
  }

  if (v22)
  {
    goto LABEL_34;
  }

LABEL_35:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_queue_eventSourceIsFavorite:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = *MEMORY[0x277CBD048];
  v28[0] = *MEMORY[0x277CBD018];
  v28[1] = v6;
  v28[2] = *MEMORY[0x277CBD098];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v8 = [v5 initWithKeysToFetch:v7];

  v9 = [MEMORY[0x277CBDA58] dnds_predicateForContactsMatchingEventSender:v4];
  [v8 setPredicate:v9];

  [v8 setUnifyResults:1];
  contactStore = self->_contactStore;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__DNDSEventBehaviorResolver__queue_eventSourceIsFavorite___block_invoke;
  v18[3] = &unk_278F8A218;
  v18[5] = &v20;
  v19 = 0;
  v18[4] = self;
  v11 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v8 error:&v19 usingBlock:v18];
  v12 = v19;
  v13 = DNDSLogResolver;
  if (v11)
  {
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v21 + 24);
      *buf = 138478083;
      v25 = v4;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Checked if event source is a favorite: source=%{private}@, favorite=%{BOOL}d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
  {
    [DNDSEventBehaviorResolver _queue_eventSourceIsFavorite:];
  }

  v15 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __58__DNDSEventBehaviorResolver__queue_eventSourceIsFavorite___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isUnified])
  {
    v6 = [v5 linkedContacts];
  }

  else
  {
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v7 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__DNDSEventBehaviorResolver__queue_eventSourceIsFavorite___block_invoke_2;
  v9[3] = &unk_278F8A1F0;
  v9[4] = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = [v6 bs_containsObjectPassingTest:v9];
  *a3 = *(*(*(a1 + 40) + 8) + 24);

  v8 = *MEMORY[0x277D85DE8];
}

BOOL __58__DNDSEventBehaviorResolver__queue_eventSourceIsFavorite___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 56) entriesForContact:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_queue_eventSourceIsContact:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v27[0] = *MEMORY[0x277CBD098];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v7 = [v5 initWithKeysToFetch:v6];

  v8 = [MEMORY[0x277CBDA58] dnds_predicateForContactsMatchingEventSender:v4];
  [v7 setPredicate:v8];

  [v7 setUnifyResults:0];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  contactStore = self->_contactStore;
  v17[4] = &v19;
  v18 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__DNDSEventBehaviorResolver__queue_eventSourceIsContact___block_invoke;
  v17[3] = &unk_278F8A240;
  v10 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v7 error:&v18 usingBlock:v17];
  v11 = v18;
  v12 = DNDSLogResolver;
  if (v10)
  {
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v20 + 24);
      *buf = 138478083;
      v24 = v4;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Checked if event source is a contact: source=%{private}@, contact=%{BOOL}d", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
  {
    [DNDSEventBehaviorResolver _queue_eventSourceIsContact:];
  }

  v14 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __57__DNDSEventBehaviorResolver__queue_eventSourceIsContact___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = *(*(*(result + 32) + 8) + 24);
  return result;
}

- (BOOL)_queue_eventSourceIsContact:(id)a3 inGroupWithIdentifier:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([v6 isPopulated])
  {
    contactStore = self->_contactStore;
    v9 = [MEMORY[0x277CBDA58] predicateForContactsInGroupWithIdentifier:v7];
    v11 = *MEMORY[0x277CBD048];
    v43[0] = *MEMORY[0x277CBD018];
    v10 = v43[0];
    v43[1] = v11;
    v44 = *MEMORY[0x277CBD098];
    v12 = v44;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
    v14 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v9 keysToFetch:v13 error:0];

    v15 = [v14 bs_mapNoNulls:&__block_literal_global_2];
    v16 = [v15 bs_flatten];

    v17 = objc_alloc(MEMORY[0x277CBDA70]);
    v42[0] = v10;
    v42[1] = v12;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    v19 = [v17 initWithKeysToFetch:v18];

    v20 = [MEMORY[0x277CBDA58] dnds_predicateForContactsMatchingEventSender:v6];
    [v19 setPredicate:v20];

    [v19 setUnifyResults:0];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v21 = self->_contactStore;
    v32 = &v34;
    v33 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __79__DNDSEventBehaviorResolver__queue_eventSourceIsContact_inGroupWithIdentifier___block_invoke_2;
    v30[3] = &unk_278F8A218;
    v22 = v16;
    v31 = v22;
    v23 = [(CNContactStore *)v21 enumerateContactsWithFetchRequest:v19 error:&v33 usingBlock:v30];
    v24 = v33;
    v25 = DNDSLogResolver;
    if (v23)
    {
      if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v35 + 24);
        *buf = 138478083;
        v39 = v6;
        v40 = 1024;
        v41 = v26;
        _os_log_impl(&dword_24912E000, v25, OS_LOG_TYPE_DEFAULT, "Checked if event source is a group contact: source=%{private}@, contact=%{BOOL}d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
    {
      [DNDSEventBehaviorResolver _queue_eventSourceIsContact:inGroupWithIdentifier:];
    }

    v27 = *(v35 + 24);

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

id __79__DNDSEventBehaviorResolver__queue_eventSourceIsContact_inGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isUnified])
  {
    v3 = [v2 linkedContacts];
  }

  else
  {
    v7[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void __79__DNDSEventBehaviorResolver__queue_eventSourceIsContact_inGroupWithIdentifier___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__DNDSEventBehaviorResolver__queue_eventSourceIsContact_inGroupWithIdentifier___block_invoke_3;
  v8[3] = &unk_278F8A1F0;
  v9 = v5;
  v7 = v5;
  *(*(*(a1 + 40) + 8) + 24) = [v6 bs_containsObjectPassingTest:v8];
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __79__DNDSEventBehaviorResolver__queue_eventSourceIsContact_inGroupWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)_queue_eventSourceIsRepeat:(id)a3 clientDetails:(id)a4 date:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if ([v8 isPopulated])
  {
    v11 = [v10 dateByAddingTimeInterval:-180.0];
    resolutionRecord = self->_resolutionRecord;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__DNDSEventBehaviorResolver__queue_eventSourceIsRepeat_clientDetails_date___block_invoke;
    v19[3] = &unk_278F8A288;
    v13 = v11;
    v20 = v13;
    v21 = v9;
    v14 = v8;
    v22 = v14;
    v15 = [(NSMutableArray *)resolutionRecord bs_containsObjectPassingTest:v19];
    v16 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Checked if event source is a repeat: source=%{private}@, repeat=%{BOOL}d", buf, 0x12u);
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __75__DNDSEventBehaviorResolver__queue_eventSourceIsRepeat_clientDetails_date___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 date];
  v6 = [v3 compare:v5] != 1;

  v7 = [v4 clientIdentifier];
  v8 = [*(v2 + 40) clientIdentifier];
  v9 = [v7 isEqualToString:v8];

  v10 = [v4 eventBehavior];

  v11 = [v10 eventDetails];
  v12 = [v11 sender];
  LODWORD(v2) = [v12 isEqual:*(v2 + 48)];

  return v6 & v9 & v2;
}

- (BOOL)_queue_eventSourceIsEmergencyContact:(id)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ([v4 isPopulated])
  {
    v5 = objc_alloc(MEMORY[0x277CBDA70]);
    v6 = *MEMORY[0x277CBD048];
    v29[0] = *MEMORY[0x277CBD018];
    v29[1] = v6;
    v7 = *MEMORY[0x277CBD098];
    v29[2] = *MEMORY[0x277CBCFA0];
    v29[3] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    v9 = [v5 initWithKeysToFetch:v8];

    v10 = [MEMORY[0x277CBDA58] dnds_predicateForContactsMatchingEventSender:v4];
    [v9 setPredicate:v10];

    [v9 setUnifyResults:1];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    contactStore = self->_contactStore;
    v19[4] = &v21;
    v20 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__DNDSEventBehaviorResolver__queue_eventSourceIsEmergencyContact___block_invoke;
    v19[3] = &unk_278F8A240;
    v12 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v9 error:&v20 usingBlock:v19];
    v13 = v20;
    v14 = DNDSLogResolver;
    if (v12)
    {
      if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v22 + 24);
        *buf = 138478083;
        v26 = v4;
        v27 = 1024;
        v28 = v15;
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Checked if event source is an emergency contact: source=%{private}@, emergencyContact=%{BOOL}d", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
    {
      [DNDSEventBehaviorResolver _queue_eventSourceIsEmergencyContact:];
    }

    v16 = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __66__DNDSEventBehaviorResolver__queue_eventSourceIsEmergencyContact___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isUnified])
  {
    v6 = [v5 linkedContacts];
  }

  else
  {
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  v7 = v6;
  *(*(*(a1 + 32) + 8) + 24) = [v6 bs_containsObjectPassingTest:&__block_literal_global_69];
  *a3 = *(*(*(a1 + 32) + 8) + 24);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__DNDSEventBehaviorResolver__queue_eventSourceIsEmergencyContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 callAlert];
  v3 = [v2 ignoreMute];

  return v3;
}

- (BOOL)_queue_isBreakthroughAllowedForModeIdentifier:(id)a3 withConfiguration:(id)a4 application:(id)a5 sender:(id)a6 urgency:(unint64_t)a7 eventType:(unint64_t)a8 threadIdentifier:(id)a9 filterCriteria:(id)a10 notifyAnyway:(BOOL)a11 intelligentBehavior:(int64_t)a12 reason:(unint64_t *)a13
{
  v140 = *MEMORY[0x277D85DE8];
  v108 = a3;
  v114 = a4;
  v18 = a5;
  v19 = a6;
  v110 = a9;
  v109 = a10;
  dispatch_assert_queue_V2(self->_queue);
  v20 = [v18 platform];
  if (v20 != DNDPlatformForCurrentDevice())
  {
    v21 = objc_autoreleasePoolPush();
    v22 = objc_alloc_init(DNDSApplicationIdentifierMapper);
    v23 = [(DNDSApplicationIdentifierMapper *)v22 applicationIdentifierForTargetPlatform:DNDPlatformForCurrentDevice() withSourceApplicationIdentifier:v18];

    objc_autoreleasePoolPop(v21);
    v18 = v23;
  }

  v113 = [v18 bundleID];
  v112 = [(DNDSEventBehaviorResolver *)self dataSource];
  v105 = [v112 eventBehaviorResolver:self isAvailabilityActiveForBundleIdentifier:v113];
  if (!v19)
  {
    v24 = 0;
    goto LABEL_16;
  }

  v24 = [v19 mutableCopy];
  v25 = [MEMORY[0x277CBDA58] dnds_predicateForContactsMatchingEventSender:v19];
  v26 = [(DNDSEventBehaviorResolver *)self _queue_firstContactForPredicate:v25];
  v27 = [v26 identifier];

  v28 = [v19 contactIdentifier];

  if (!v28)
  {
    v31 = DNDSLogResolver;
    if (!os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138543618;
    v129 = v27;
    v130 = 2112;
    v131 = v19;
    v33 = "Filled out missing contact identifier: %{public}@ from sender: %@ to determine breakthrough.";
LABEL_13:
    v34 = v31;
    v35 = 22;
    goto LABEL_14;
  }

  v29 = [v19 contactIdentifier];
  v30 = [v29 isEqualToString:v27];

  v31 = DNDSLogResolver;
  v32 = os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT);
  if ((v30 & 1) == 0)
  {
    if (!v32)
    {
      goto LABEL_15;
    }

    *buf = 138543618;
    v129 = v27;
    v130 = 2112;
    v131 = v19;
    v33 = "Updated contact identifier to %{public}@ from sender: %@ to determine breakthrough.";
    goto LABEL_13;
  }

  if (v32)
  {
    *buf = 138412290;
    v129 = v19;
    v33 = "No change to contact identifier from sender: %@ to determine breakthrough.";
    v34 = v31;
    v35 = 12;
LABEL_14:
    _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
  }

LABEL_15:
  [v24 setContactIdentifier:v27];

LABEL_16:
  v36 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    v38 = DNDStringFromClientEventUrgency();
    v39 = DNDStringFromClientEventType();
    *buf = 138413570;
    v129 = v114;
    v130 = 2114;
    v131 = v113;
    v132 = 2112;
    v133 = v24;
    v134 = 2114;
    v135 = v38;
    v136 = 2114;
    v137 = v39;
    v138 = 2114;
    v139 = v110;
    _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "Resolving breakthrough through for configuration: %@ with event details application: %{public}@, sender: %@, urgency: %{public}@, eventType: %{public}@, threadIdentifier: %{public}@", buf, 0x3Eu);
  }

  v40 = a8 - 1;
  v41 = a8 - 1 < 4;
  v42 = [v24 isPopulated];
  if (a8 - 1 < 4)
  {
    if (v110)
    {
      v41 = 1;
    }

    else
    {
      v41 = v42;
    }
  }

  if ([v114 suppressionMode] == 2 && objc_msgSend(v112, "currentUILockStateForEventBehaviorResolver:", self) == 1)
  {
    v43 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v43, OS_LOG_TYPE_INFO, "Allowing breakthrough because the device is unlocked", buf, 2u);
    }

    *a13 = 3;
    v44 = 1;
    goto LABEL_157;
  }

  v45 = [v18 bundleID];

  if (!v45)
  {
    goto LABEL_31;
  }

  v111 = [v112 eventBehaviorResolver:self appPredicateForApplicationIdentifier:v18 modeIdentifier:v108];
  if (!v111)
  {
    if ([v18 platform] == 3)
    {
      v46 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v113 platform:1];
      v111 = [v112 eventBehaviorResolver:self appPredicateForApplicationIdentifier:v46 modeIdentifier:v108];

      goto LABEL_32;
    }

LABEL_31:
    v111 = 0;
  }

LABEL_32:
  v47 = objc_autoreleasePoolPush();
  v125 = 0;
  v48 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v113 allowPlaceholder:1 error:&v125];
  v49 = v125;
  if (v49)
  {
    v50 = DNDSLogResolver;
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
    {
      [DNDSEventBehaviorResolver _queue_isBreakthroughAllowedForModeIdentifier:v113 withConfiguration:v50 application:v49 sender:? urgency:? eventType:? threadIdentifier:? filterCriteria:? notifyAnyway:? intelligentBehavior:? reason:?];
    }
  }

  if (v48 && [v48 isWebApp])
  {
    v51 = [v48 localizedName];
    v52 = [v48 infoDictionary];
    v53 = [v52 objectForKey:@"WKPushBundleMetadata" ofClass:objc_opt_class()];

    v54 = [v53 objectForKey:@"manifestId"];
    v55 = v54;
    v106 = 0;
    if (v51 && v54)
    {
      v106 = [objc_alloc(MEMORY[0x277D05AC8]) initWithWebIdentifier:v54 givenName:v51];
    }
  }

  else
  {
    v106 = 0;
  }

  objc_autoreleasePoolPop(v47);
  if (v41)
  {
    v104 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
    if (v40 >= 4)
    {
      v103 = v104;
    }

    else
    {
      v103 = [v114 contactsWithExceptions];
    }

    v62 = [v114 applicationConfigurationType];
    v63 = [v114 senderConfigurationType];
    if (v62)
    {
      if (v62 != 2)
      {
        if (v62 != 1)
        {
          v99 = 0;
          v102 = 0;
          v100 = 0;
          v101 = 0;
          goto LABEL_75;
        }

        if ([v114 exceptionForApplicationIdentifier:v18] == 1)
        {
          v102 = 0;
          v99 = 1;
          v100 = 0x100000000;
          v101 = 13;
LABEL_75:
          v65 = [v114 senderConfigurationType];
          if (v65)
          {
            if (v65 == 2)
            {
              LOBYTE(v71) = 0;
              LODWORD(v73) = 0;
              v74 = 0;
              v72 = 1;
              v69 = 12;
            }

            else if (v65 == 1)
            {
              v123 = 0u;
              v124 = 0u;
              v121 = 0u;
              v122 = 0u;
              v66 = v103;
              v67 = [v66 countByEnumeratingWithState:&v121 objects:v127 count:16];
              if (v67)
              {
                v68 = *v122;
                v69 = 18;
                while (2)
                {
                  for (i = 0; i != v67; ++i)
                  {
                    if (*v122 != v68)
                    {
                      objc_enumerationMutation(v66);
                    }

                    if ([*(*(&v121 + 1) + 8 * i) matchesContactHandle:v24])
                    {
                      v72 = 0;
                      v71 = 1;
                      goto LABEL_101;
                    }
                  }

                  v67 = [v66 countByEnumeratingWithState:&v121 objects:v127 count:16];
                  if (v67)
                  {
                    continue;
                  }

                  break;
                }
              }

              v71 = 0;
              v72 = 1;
              v69 = 12;
LABEL_101:

              v74 = 0;
              LODWORD(v73) = v71;
            }

            else
            {
              LOBYTE(v71) = 0;
              LODWORD(v73) = 0;
              v72 = 0;
              v69 = 0;
              v74 = 0;
            }
          }

          else
          {
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v75 = v103;
            v73 = [v75 countByEnumeratingWithState:&v117 objects:v126 count:16];
            if (v73)
            {
              v76 = *v118;
              v69 = 18;
              while (2)
              {
                for (j = 0; j != v73; ++j)
                {
                  if (*v118 != v76)
                  {
                    objc_enumerationMutation(v75);
                  }

                  if ([*(*(&v117 + 1) + 8 * j) matchesContactHandle:v24])
                  {
                    LODWORD(v73) = 1;
                    goto LABEL_99;
                  }
                }

                v73 = [v75 countByEnumeratingWithState:&v117 objects:v126 count:16];
                if (v73)
                {
                  continue;
                }

                break;
              }
            }

            v69 = 12;
LABEL_99:

            LOBYTE(v71) = 0;
            v72 = v73;
            v74 = v73;
          }

          if (v62 == 2)
          {
            v78 = 1;
          }

          else
          {
            v78 = v102;
          }

          v79 = 12;
          if (v63 != 2 || v62 != 2)
          {
            v79 = v101;
          }

          v80 = v63 == 2;
          if (v63 == 2)
          {
            v60 = v79;
          }

          else
          {
            v60 = v69;
          }

          if (v63 == 2)
          {
            v59 = v78;
          }

          else
          {
            v59 = v72;
          }

          if (!v80)
          {
            v81 = v99 | v73;
            v82 = v73 | v99 ^ 1;
            v83 = v82 == 0;
            v84 = v82 ? v69 : v101;
            v85 = v83 ? v102 : v72;
            v86 = v81 == 1;
            v87 = v81 == 1 ? v84 : v69;
            v88 = v86 ? v85 : v72;
            if (v62 != 2)
            {
              v60 = v87;
              v59 = v88;
            }
          }

          LOBYTE(v61) = v100 | v74;
          v58 = BYTE4(v100) | v71;
          goto LABEL_129;
        }
      }

      v99 = 0;
      v100 = 0;
      v102 = 1;
    }

    else
    {
      if (![v114 exceptionForApplicationIdentifier:v18])
      {
        v99 = 1;
        v101 = 13;
        v102 = 1;
        v100 = 1;
        goto LABEL_75;
      }

      v99 = 0;
      v102 = 0;
      v100 = 0;
    }

    v101 = 12;
    goto LABEL_75;
  }

  v56 = [v114 applicationConfigurationType];
  if (v56)
  {
    if (v56 == 2)
    {
      v58 = 0;
      LOBYTE(v61) = 0;
      v59 = 1;
      v60 = 12;
    }

    else if (v56 == 1)
    {
      v57 = [v114 exceptionForApplicationIdentifier:v18];
      v58 = v57 == 1;
      v59 = v57 != 1;
      if (v57 == 1)
      {
        v60 = 13;
      }

      else
      {
        v60 = 12;
      }

      if (v106 && [v114 exceptionForWebApplicationIdentifier:?] == 1)
      {
        LOBYTE(v61) = 0;
        v59 = 0;
        v58 = 1;
        v60 = 13;
      }

      else
      {
        LOBYTE(v61) = 0;
      }
    }

    else
    {
      v58 = 0;
      LOBYTE(v61) = 0;
      v60 = 0;
      v59 = 0;
    }
  }

  else
  {
    v64 = [v114 exceptionForApplicationIdentifier:v18];
    v61 = v64 == 0;
    if (v64)
    {
      v60 = 12;
    }

    else
    {
      v60 = 13;
    }

    if (v106 && ![v114 exceptionForWebApplicationIdentifier:?])
    {
      v58 = 0;
      LOBYTE(v61) = 1;
      v60 = 13;
      v59 = 1;
    }

    else
    {
      v58 = 0;
      v59 = v61;
    }
  }

LABEL_129:
  if (a12 >= 2)
  {
    v89 = a12 == 2 ? v58 : 0;
    if ((v89 & 1) == 0 && ((a12 == 3) & v61) == 0)
    {
      v60 = 26;
      v59 = a12 == 2;
    }
  }

  if (v109 && v59 && v111)
  {
    v90 = objc_alloc_init(MEMORY[0x277D05A78]);
    v115 = 0;
    v116 = 0;
    v91 = [v90 validatePredicate:v111 compileTimeIssues:&v116 runTimeIssues:&v115];
    v92 = v116;
    v93 = v115;
    if (v91)
    {
      v59 = [v111 evaluateWithObject:v109];
      if (!v59)
      {
        v60 = 25;
      }
    }

    else
    {
      v94 = DNDSLogResolver;
      if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
      {
        if (v92)
        {
          v98 = v92;
        }

        else
        {
          v98 = v93;
        }

        *buf = 138543874;
        v129 = v98;
        v130 = 2112;
        v131 = v113;
        v132 = 2112;
        v133 = v108;
        _os_log_error_impl(&dword_24912E000, v94, OS_LOG_TYPE_ERROR, "Notification filter predicate from App Context did not validate, issues=%{public}@ bundleIdentifier=%@ modeIdentifier=%@", buf, 0x20u);
      }

      LOBYTE(v59) = 1;
    }
  }

  if ((a11 & v105) != 0)
  {
    v60 = 20;
  }

  v44 = a11 & v105 | v59;
  if (a7 == 1)
  {
    v95 = [v114 minimumBreakthroughUrgency];
    if (v95)
    {
      v60 = 19;
    }

    v44 |= v95 != 0;
  }

  else if (a7 == 2)
  {
    [v114 minimumBreakthroughUrgency];
    v44 = 1;
    v60 = 19;
  }

  if (a13)
  {
    *a13 = v60;
  }

LABEL_157:
  v96 = *MEMORY[0x277D85DE8];
  return v44 & 1;
}

- (BOOL)_queue_isBreakthroughAllowedForSender:(id)a3 eventType:(unint64_t)a4 clientDetails:(id)a5 date:(id)a6 reason:(unint64_t *)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138412290;
    *&v19[4] = v12;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Resolving global breakthrough for sender: %@", v19, 0xCu);
  }

  v16 = 0;
  if (v12)
  {
    if (a4 == 1)
    {
      *v19 = 0;
      v16 = [(DNDSEventBehaviorResolver *)self _queue_resolveOutcomeForEventSender:v12 clientDetails:v13 date:v14 reason:v19]== 1;
      if (a7)
      {
        *a7 = *v19;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_queue_firstContactForPredicate:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_10;
  }

  contactStore = self->_contactStore;
  v6 = *MEMORY[0x277CBD098];
  v14[0] = *MEMORY[0x277CBD018];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v13 = 0;
  v8 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v4 keysToFetch:v7 error:&v13];
  v9 = v13;

  if (v9)
  {
    if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
    {
      [DNDSEventBehaviorResolver _queue_firstContactForPredicate:];
    }
  }

  else if ([v8 count])
  {
    v10 = [v8 firstObject];
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)resolutionForConfiguration:(id)a3 eventDetails:(id)a4 clientDetails:(id)a5 date:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  dispatch_assert_queue_not_V2(self->_queue);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DNDSEventBehaviorResolver_Testing__resolutionForConfiguration_eventDetails_clientDetails_date_error___block_invoke;
  block[3] = &unk_278F8A2D0;
  v29 = &v37;
  block[4] = self;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v30 = &v31;
  dispatch_sync(queue, block);
  if (a7)
  {
    v21 = v32[5];
    if (v21)
    {
      *a7 = v21;
    }
  }

  v22 = v38[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v22;
}

void __103__DNDSEventBehaviorResolver_Testing__resolutionForConfiguration_eventDetails_clientDetails_date_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = *(a1[10] + 8);
  obj = *(v7 + 40);
  v8 = [v2 _queue_resolutionForModeSemanticType:0 withConfiguration:v3 eventDetails:v4 clientDetails:v5 state:0 date:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[9] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)_queue_resolveBehaviorForEventDetails:(void *)a1 clientDetails:(void *)a2 date:error:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 activeModeIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v3, OS_LOG_TYPE_ERROR, "Couldn't find mode configuration for active mode: %{public}@.", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_eventSourceIsFavorite:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error looking up favorite contacts: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_eventSourceIsContact:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error looking up contacts: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_eventSourceIsContact:inGroupWithIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error looking up group contacts: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_eventSourceIsEmergencyContact:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error looking up emergency contacts: error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_isBreakthroughAllowedForModeIdentifier:(void *)a3 withConfiguration:application:sender:urgency:eventType:threadIdentifier:filterCriteria:notifyAnyway:intelligentBehavior:reason:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve an LSApplicationRecord for bundleIdentifier:%@; error=%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_isBreakthroughAllowedForModeIdentifier:(uint64_t)a3 withConfiguration:(uint64_t)a4 application:sender:urgency:eventType:threadIdentifier:filterCriteria:notifyAnyway:intelligentBehavior:reason:.cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_begin_catch(a1);
  v7 = DNDSLogResolver;
  if (os_log_type_enabled(DNDSLogResolver, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = a3;
    v13 = 2112;
    v14 = a4;
    _os_log_error_impl(&dword_24912E000, v7, OS_LOG_TYPE_ERROR, "Notification filter predicate from App Context threw during evaluation, exception=%{public}@ bundleIdentifier=%@ modeIdentifier=%@", &v9, 0x20u);
  }

  objc_end_catch();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_firstContactForPredicate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Failed to lookup contact in address book. predicate=%{public}@, error=%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end