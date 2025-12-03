@interface HDWorkoutSessionServer
+ (BOOL)finishAllWorkoutSessionsForClient:(id)client profile:(id)profile error:(id *)error;
+ (BOOL)finishAllWorkoutsExcludingSessions:(id)sessions profile:(id)profile error:(id *)error;
+ (id)_sessionControllerClassFromWorkoutConfiguration:(void *)configuration clientApplicationIdentifier:(void *)identifier profile:;
+ (id)recoveredSessionServerWithProfile:(id)profile sessionUUID:(id)d error:(id *)error;
+ (id)workoutConfigurationForRecoveryWithProfile:(id)profile sessionUUID:(id)d error:(id *)error;
+ (void)_finishSessionControllerForSessionEntity:(void *)entity profile:(void *)profile transaction:(uint64_t)transaction error:;
- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)error;
- (BOOL)_queue_resendWorkoutEventsToDataDestination:(uint64_t)destination error:;
- (BOOL)beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata error:(id *)error;
- (BOOL)enableAutomaticDetectionForActivityConfigurations:(id)configurations error:(id *)error;
- (BOOL)endCurrentActivityOnDate:(id)date error:(id *)error;
- (BOOL)endWithError:(id *)error;
- (BOOL)isFirstParty;
- (BOOL)isGymKit;
- (BOOL)isMirroring;
- (BOOL)pauseWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resumeWithError:(id *)error;
- (BOOL)setTargetState:(int64_t)state date:(id)date error:(id *)error;
- (BOOL)shouldStopPreviousSession;
- (BOOL)startActivityWithDate:(id)date error:(id *)error;
- (BOOL)stopActivityWithDate:(id)date error:(id *)error;
- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error;
- (BOOL)unitTest_updateLatestActivityDate:(id)date;
- (HDHealthStoreClient)client;
- (HDWorkoutDataAccumulator)workoutDataAccumulator;
- (HDWorkoutSessionServer)initWithProfile:(id)profile configuration:(id)configuration sessionUUID:(id)d;
- (HDWorkoutSessionTaskServer)taskServer;
- (HKWorkoutConfiguration)currentActivityConfiguration;
- (NSString)description;
- (id)currentWorkoutSnapshot;
- (id)taskServerConfigurationForRecoveryWithError:(id *)error;
- (int64_t)sessionType;
- (int64_t)state;
- (uint64_t)_queue_endCurrentActivityOnDate:(void *)date error:;
- (void)_processTargetStoppingStateWithDate:(uint64_t)date;
- (void)_queue_evaluateRequestedTargetStateAtDate:(uint64_t)date;
- (void)_queue_generateConfigurationUpdate:(uint64_t)update;
- (void)_queue_generateError:(uint64_t)error;
- (void)_queue_generateEvent:(uint64_t)event;
- (void)_queue_generateEventWithType:(void *)type date:;
- (void)_queue_setIsMirroring:(void *)mirroring completion:;
- (void)_queue_setTargetState:(void *)state date:(void *)date completion:;
- (void)_queue_setupSessionController;
- (void)_queue_startInvalidationTimer;
- (void)_queue_startLatestActivityUpdateTimer;
- (void)autoPauseWithDate:(id)date;
- (void)autoResumeWithDate:(id)date;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)didBeginNewActivity:(id)activity;
- (void)didDetectActivityChange:(id)change;
- (void)didDisconnectFromRemoteWithError:(id)error;
- (void)didEndCurrentActivity:(id)activity;
- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)didResignCurrentWithError:(id)error;
- (void)endHeartRateRecovery;
- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity completion:(id)completion;
- (void)finishAggregationWithDate:(id)date;
- (void)generateConfigurationUpdate:(id)update;
- (void)generateError:(id)error;
- (void)generateEvent:(id)event;
- (void)generateMetadata:(id)metadata;
- (void)invalidateTaskServer:(id)server;
- (void)notifyClientsOfGeneratedTypesUpdate:(id)update configuration:(id)configuration didUpdateActivity:(BOOL)activity earliestSampleDate:(id)date;
- (void)remoteSessionDidRecover;
- (void)sendDataToRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)sendStartMirroringRequest;
- (void)setAssociatedWorkoutBuilderEntity:(id)entity;
- (void)setTaskServer:(id)server;
- (void)setWorkoutDataAccumulator:(id)accumulator;
- (void)startMirroringToCompanionDeviceWithCompletion:(id)completion;
- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error;
- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error;
- (void)stateMachine:(id)machine persistTransition:(id)transition;
- (void)stateMachine:(id)machine willEnterState:(id)state date:(id)date error:(id)error;
- (void)stopMirroringToCompanionDeviceWithCompletion:(id)completion;
- (void)syncCurrentActivity:(id)activity completion:(id)completion;
- (void)syncSessionEvent:(int64_t)event date:(id)date;
- (void)syncWorkoutEvents:(id)events completion:(id)completion;
- (void)unitTest_generateStopEvent;
- (void)unitTest_generateWorkoutConfigurationUpdate:(id)update;
- (void)unitTest_setExtendedPauseInterval:(double)interval;
- (void)unitTest_setStopEventGenerationWaitInterval:(double)interval;
- (void)workoutDataDestination:(id)destination didInsertEvent:(id)event;
- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to;
- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion;
- (void)workoutDataDestinationRequestGeneratedTypes:(id)types;
@end

@implementation HDWorkoutSessionServer

+ (id)recoveredSessionServerWithProfile:(id)profile sessionUUID:(id)d error:(id *)error
{
  profileCopy = profile;
  dCopy = d;
  v10 = [self workoutConfigurationForRecoveryWithProfile:profileCopy sessionUUID:dCopy error:error];
  if (v10)
  {
    v11 = [[HDWorkoutSessionServer alloc] initWithProfile:profileCopy configuration:v10 sessionUUID:dCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)workoutConfigurationForRecoveryWithProfile:(id)profile sessionUUID:(id)d error:(id *)error
{
  profileCopy = profile;
  dCopy = d;
  v9 = [HDWorkoutSessionEntity lookupSessionWithIdentifier:dCopy profile:profileCopy error:error];
  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__185;
    v23 = __Block_byref_object_dispose__185;
    v24 = 0;
    v10 = objc_opt_class();
    database = [profileCopy database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__HDWorkoutSessionServer_workoutConfigurationForRecoveryWithProfile_sessionUUID_error___block_invoke;
    v16[3] = &unk_278619398;
    v18 = &v19;
    v17 = v9;
    v12 = [v10 performReadTransactionWithHealthDatabase:database error:error block:v16];

    if (v12)
    {
      v13 = v20[5];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __87__HDWorkoutSessionServer_workoutConfigurationForRecoveryWithProfile_sessionUUID_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v14 = 0;
  v6 = [v5 workoutConfigurationWithTransaction:a2 error:&v14];
  v7 = v14;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v11 = v10;
  if (!v10)
  {
    if (a3)
    {
      v12 = v7;
      *a3 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v11;
}

+ (BOOL)finishAllWorkoutSessionsForClient:(id)client profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  clientCopy = client;
  sourceManager = [profileCopy sourceManager];
  v11 = [sourceManager sourceForClient:clientCopy error:error];

  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HDWorkoutSessionServer_finishAllWorkoutSessionsForClient_profile_error___block_invoke;
  v16[3] = &unk_278614698;
  v17 = v11;
  v18 = profileCopy;
  selfCopy = self;
  v13 = profileCopy;
  v14 = v11;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:error block:v16];

  return error;
}

uint64_t __74__HDWorkoutSessionServer_finishAllWorkoutSessionsForClient_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [HDWorkoutSessionEntity sessionsForSource:*(a1 + 32) profile:*(a1 + 40) error:a3];
  v7 = v6;
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          [(HDWorkoutSessionServer *)*(a1 + 48) _finishSessionControllerForSessionEntity:v13 profile:*(a1 + 40) transaction:v5 error:a3];
          if (![v13 finishWithTransaction:v5 error:{a3, v17}])
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)_finishSessionControllerForSessionEntity:(void *)entity profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v8 = a2;
  entityCopy = entity;
  profileCopy = profile;
  v11 = objc_opt_self();
  v12 = [v8 sessionIdentifierWithTransaction:profileCopy error:transaction];
  if (v12)
  {
    v13 = [v8 workoutConfigurationWithTransaction:profileCopy error:transaction];
    workoutManager = [entityCopy workoutManager];
    biomeInterface = [workoutManager biomeInterface];
    [biomeInterface stopSessionWithIdentifier:v12 recoveredWorkoutConfiguration:v13];

    if (v13)
    {
      v16 = [v8 clientApplicationIdentifier:profileCopy error:transaction];
      if (v16)
      {
        v17 = [(HDWorkoutSessionServer *)v11 _sessionControllerClassFromWorkoutConfiguration:v13 clientApplicationIdentifier:v16 profile:entityCopy];
        recoveryIdentifier = [v17 recoveryIdentifier];
        if (recoveryIdentifier)
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __93__HDWorkoutSessionServer__finishSessionControllerForSessionEntity_profile_transaction_error___block_invoke;
          v19[3] = &unk_27862CB10;
          v21 = v17;
          v20 = entityCopy;
          [HDWorkoutSessionControllerEntity retrieveArchivedStateFromRecoveryIdentifier:recoveryIdentifier workoutSession:v8 transaction:profileCopy error:transaction block:v19];
        }
      }
    }
  }
}

+ (id)_sessionControllerClassFromWorkoutConfiguration:(void *)configuration clientApplicationIdentifier:(void *)identifier profile:
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  configurationCopy = configuration;
  identifierCopy = identifier;
  objc_opt_self();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  daemon = [identifierCopy daemon];
  pluginManager = [daemon pluginManager];
  v11 = [pluginManager pluginsConformingToProtocol:&unk_283D71678];
  allValues = [v11 allValues];

  v13 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    v27 = *v34;
    v28 = identifierCopy;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v18 = [v17 workoutSessionControllerClassesForProfile:{identifierCopy, v27}];
        v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v29 + 1) + 8 * j);
              if ([v23 supportsWorkoutConfiguration:v6 clientApplicationIdentifier:configurationCopy])
              {
                v24 = v23;

                identifierCopy = v28;
                goto LABEL_18;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v15 = v27;
        identifierCopy = v28;
      }

      v14 = [allValues countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v14);
  }

  [HDFirstPartyWorkoutSessionController supportsWorkoutConfiguration:v6 clientApplicationIdentifier:configurationCopy];
  v24 = objc_opt_class();
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __93__HDWorkoutSessionServer__finishSessionControllerForSessionEntity_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) willFinishSessionWithRecoveryData:v6 profile:*(a1 + 32)];
    }
  }
}

+ (BOOL)finishAllWorkoutsExcludingSessions:(id)sessions profile:(id)profile error:(id *)error
{
  sessionsCopy = sessions;
  profileCopy = profile;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HDWorkoutSessionServer_finishAllWorkoutsExcludingSessions_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v15 = sessionsCopy;
  v16 = profileCopy;
  selfCopy = self;
  v11 = profileCopy;
  v12 = sessionsCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

uint64_t __75__HDWorkoutSessionServer_finishAllWorkoutsExcludingSessions_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [HDWorkoutSessionEntity sessionsExcludingIdentifiers:*(a1 + 32) profile:*(a1 + 40) error:a3];
  v7 = v6;
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [(HDWorkoutSessionServer *)*(a1 + 48) _finishSessionControllerForSessionEntity:v13 profile:*(a1 + 40) transaction:v5 error:a3];
          if (![v13 finishWithTransaction:v5 error:{a3, v20}])
          {

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v8 count];
      *buf = 134217984;
      v25 = v16;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "Finished %ld unrecovered sessions.", buf, 0xCu);
    }

    v17 = 1;
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HDWorkoutSessionServer)initWithProfile:(id)profile configuration:(id)configuration sessionUUID:(id)d
{
  v208 = *MEMORY[0x277D85DE8];
  obj = profile;
  configurationCopy = configuration;
  dCopy = d;
  v189.receiver = self;
  v189.super_class = HDWorkoutSessionServer;
  v8 = [(HDWorkoutSessionServer *)&v189 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, obj);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277CCD738]);
    v13 = [v12 initWithName:@"sessionserver-observers" loggingCategory:*MEMORY[0x277CCC330]];
    observers = v9->_observers;
    v9->_observers = v13;

    objc_storeStrong(&v9->_workoutConfiguration, configuration);
    objc_storeStrong(&v9->_identifier, d);
    firstActivityConfiguration = v9->_firstActivityConfiguration;
    v9->_firstActivityConfiguration = 0;

    v9->_numberOfHeartbeatFailures = 0;
    v9->_currentStateLock._os_unfair_lock_opaque = 0;
    v16 = *&_defaultUnitTestStopEventWaitInterval;
    if (!_HDIsUnitTesting)
    {
      v16 = 20.0;
    }

    v9->_stopEventGenerationWaitInterval = v16;
    v9->_extendedPauseTimeout = 900.0;
    if ([(HDWorkoutSessionServer *)v9 sessionType]!= 1)
    {
      v175 = dCopy;
      v17 = objc_opt_self();
      v18 = objc_alloc(MEMORY[0x277CCDA28]);
      v19 = [MEMORY[0x277CCDA28] nameForOwner:v17 UUID:v175 tag:0];

      v20 = [v18 initWithName:v19];
      v182 = [v20 addStateWithIndex:1 label:@"NotStarted"];
      v186 = [v20 addStateWithIndex:2 label:@"CheckingAllowedPrepare"];
      v21 = [v20 addStateWithIndex:3 label:@"CheckingAllowedStart"];
      v22 = [v20 addStateWithIndex:4 label:@"Preparing"];
      v23 = [v20 addStateWithIndex:5 label:@"Starting"];
      v184 = [v20 addStateWithIndex:6 label:@"Prepared"];
      v24 = [v20 addStateWithIndex:7 label:@"Running"];
      v25 = [v20 addStateWithIndex:8 label:@"Paused"];
      v26 = [v20 addStateWithIndex:9 label:@"AutoPaused"];
      v181 = [v20 addStateWithIndex:10 label:@"ExtendedPause"];
      v27 = [v20 addStateWithIndex:11 label:@"AwaitingStopEvent"];
      v174 = [v20 addStateWithIndex:12 label:@"AwaitingFinalData"];
      v176 = [v20 addStateWithIndex:13 label:@"FinalizeActivity"];
      v177 = [v20 addStateWithIndex:14 label:@"Stopped"];
      v179 = [v20 addStateWithIndex:15 label:@"StoppedHeartRateRecovery"];
      v178 = [v20 addStateWithIndex:16 label:@"HeartRateRecovery"];
      v28 = [v20 addStateWithIndex:17 label:@"Finished"];
      v29 = [v20 addStateTransitionFrom:v186 to:v22 event:100 label:@"allow-session"];
      v30 = [v20 addStateTransitionFrom:v21 to:v23 event:100 label:@"allow-session"];
      v31 = [v20 addStateTransitionFrom:v22 to:v184 event:101 label:@"become-current"];
      v32 = [v20 addStateTransitionFrom:v23 to:v24 event:101 label:@"become-current"];
      v33 = [v20 addStateTransitionFrom:v24 to:v26 event:103 label:@"auto-pause"];
      v34 = [v20 addStateTransitionFrom:v26 to:v24 event:104 label:@"auto-resume"];
      v35 = [v20 addStateTransitionFrom:v27 to:v174 event:105 label:@"receive-stop-event"];
      v36 = [v20 addStateTransitionFrom:v174 to:v176 event:106 label:@"retrieved-final-data"];
      v37 = [v20 addStateTransitionFrom:v179 to:v177 event:107 label:@"end-heart-recovery"];
      v38 = [v20 addStateTransitionFrom:v178 to:v28 event:107 label:@"end-heart-recovery"];
      v39 = [v20 addStateTransitionFrom:v186 to:v28 event:102 label:@"resign-current"];
      v40 = [v20 addStateTransitionFrom:v21 to:v28 event:102 label:@"resign-current"];
      v41 = [v20 addStateTransitionFrom:v22 to:v28 event:102 label:@"resign-current"];
      v42 = [v20 addStateTransitionFrom:v23 to:v28 event:102 label:@"resign-current"];
      v43 = [v20 addStateTransitionFrom:v184 to:v28 event:102 label:@"resign-current"];
      v44 = [v20 addStateTransitionFrom:v24 to:v27 event:102 label:@"resign-current"];
      v45 = [v20 addStateTransitionFrom:v26 to:v27 event:102 label:@"resign-current"];
      v46 = [v20 addStateTransitionFrom:v25 to:v28 event:102 label:@"resign-current"];
      v47 = [v20 addStateTransitionFrom:v181 to:v28 event:102 label:@"resign-current"];
      v48 = [v20 addStateTransitionFrom:v177 to:v28 event:102 label:@"resign-current"];
      v49 = [v20 addStateTransitionFrom:v179 to:v28 event:102 label:@"resign-current"];
      v50 = [v20 addStateTransitionFrom:v178 to:v28 event:102 label:@"resign-current"];
      v51 = [v20 addStateTransitionFrom:v182 to:v186 event:5 label:@"target-prepared"];
      v52 = [v20 addStateTransitionFrom:v182 to:v21 event:2 label:@"target-running"];
      v53 = [v20 addStateTransitionFrom:v182 to:v21 event:4 label:@"target-paused"];
      v54 = [v20 addStateTransitionFrom:v182 to:v21 event:6 label:@"target-stopped"];
      v55 = [v20 addStateTransitionFrom:v182 to:v28 event:3 label:@"target-ended"];
      v56 = [v20 addStateTransitionFrom:v186 to:v21 event:2 label:@"target-running"];
      v57 = [v20 addStateTransitionFrom:v186 to:v21 event:4 label:@"target-paused"];
      v58 = [v20 addStateTransitionFrom:v186 to:v21 event:6 label:@"target-stopped"];
      v59 = [v20 addStateTransitionFrom:v186 to:v28 event:3 label:@"target-ended"];
      v60 = [v20 addStateTransitionFrom:v21 to:v23 event:4 label:@"target-paused"];
      v61 = [v20 addStateTransitionFrom:v21 to:v23 event:6 label:@"target-stopped"];
      v62 = [v20 addStateTransitionFrom:v21 to:v28 event:3 label:@"target-ended"];
      v63 = [v20 addStateTransitionFrom:v22 to:v23 event:2 label:@"target-running"];
      v64 = [v20 addStateTransitionFrom:v22 to:v23 event:4 label:@"target-paused"];
      v65 = [v20 addStateTransitionFrom:v22 to:v23 event:6 label:@"target-stopped"];
      v66 = [v20 addStateTransitionFrom:v22 to:v28 event:3 label:@"target-ended"];
      v67 = [v20 addStateTransitionFrom:v184 to:v24 event:2 label:@"target-running"];
      v68 = [v20 addStateTransitionFrom:v184 to:v24 event:4 label:@"target-paused"];
      v69 = [v20 addStateTransitionFrom:v184 to:v24 event:6 label:@"target-stopped"];
      v70 = [v20 addStateTransitionFrom:v184 to:v28 event:3 label:@"target-ended"];
      v71 = [v20 addStateTransitionFrom:v23 to:v28 event:3 label:@"target-ended"];
      v72 = [v20 addStateTransitionFrom:v24 to:v25 event:4 label:@"target-paused"];
      v73 = [v20 addStateTransitionFrom:v26 to:v25 event:4 label:@"target-paused"];
      v74 = [v20 addStateTransitionFrom:v25 to:v181 event:108 label:@"target-extended-paused"];
      v75 = [v20 addStateTransitionFrom:v25 to:v24 event:2 label:@"target-running"];
      v76 = [v20 addStateTransitionFrom:v181 to:v24 event:2 label:@"target-running"];
      v77 = [v20 addStateTransitionFrom:v24 to:v27 event:6 label:@"target-stopped"];
      v78 = [v20 addStateTransitionFrom:v25 to:v27 event:6 label:@"target-stopped"];
      v79 = [v20 addStateTransitionFrom:v26 to:v27 event:6 label:@"target-stopped"];
      v80 = [v20 addStateTransitionFrom:v181 to:v27 event:6 label:@"target-stopped"];
      v81 = [v20 addStateTransitionFrom:v24 to:v27 event:3 label:@"target-ended"];
      v82 = [v20 addStateTransitionFrom:v25 to:v27 event:3 label:@"target-ended"];
      v83 = [v20 addStateTransitionFrom:v26 to:v27 event:3 label:@"target-ended"];
      v84 = [v20 addStateTransitionFrom:v181 to:v27 event:3 label:@"target-ended"];
      v85 = [v20 addStateTransitionFrom:v177 to:v28 event:3 label:@"target-ended"];
      v86 = [v20 addStateTransitionFrom:v179 to:v178 event:3 label:@"target-ended"];
      v87 = [v20 addStateTransitionFrom:v176 to:v179 event:6 label:@"target-stop"];
      v88 = [v20 addStateTransitionFrom:v176 to:v178 event:3 label:@"target-end"];

      stateMachine = v9->_stateMachine;
      v9->_stateMachine = v20;

      [(HKStateMachine *)v9->_stateMachine setDelegate:v9];
      v90 = v175;
      v91 = objc_opt_self();
      v92 = objc_alloc(MEMORY[0x277CCDA28]);
      v93 = [MEMORY[0x277CCDA28] nameForOwner:v91 UUID:v90 tag:@"target"];

      v94 = [v92 initWithName:v93];
      v95 = [v94 addStateWithIndex:1 label:@"NotStarted"];
      v96 = [v94 addStateWithIndex:2 label:@"Running"];
      v97 = [v94 addStateWithIndex:3 label:@"Ended"];
      v98 = [v94 addStateWithIndex:4 label:@"Paused"];
      v99 = [v94 addStateWithIndex:5 label:@"Prepared"];
      v100 = [v94 addStateWithIndex:6 label:@"Stopped"];
      v101 = [v94 addStateTransitionFrom:v95 to:v96 event:2 label:@"running"];
      v102 = [v94 addStateTransitionFrom:v95 to:v98 event:4 label:@"paused"];
      v103 = [v94 addStateTransitionFrom:v95 to:v97 event:3 label:@"ended"];
      v104 = [v94 addStateTransitionFrom:v95 to:v99 event:5 label:@"prepared"];
      v105 = [v94 addStateTransitionFrom:v95 to:v100 event:6 label:@"stopped"];
      v106 = [v94 addStateTransitionFrom:v99 to:v96 event:2 label:@"running"];
      v107 = [v94 addStateTransitionFrom:v99 to:v98 event:4 label:@"paused"];
      v108 = [v94 addStateTransitionFrom:v99 to:v97 event:3 label:@"ended"];
      v109 = [v94 addStateTransitionFrom:v99 to:v100 event:6 label:@"stopped"];
      v110 = [v94 addStateTransitionFrom:v96 to:v98 event:4 label:@"paused"];
      v111 = [v94 addStateTransitionFrom:v96 to:v97 event:3 label:@"ended"];
      v112 = [v94 addStateTransitionFrom:v96 to:v100 event:6 label:@"stopped"];
      v113 = [v94 addStateTransitionFrom:v96 to:v96 event:2 label:@"running"];
      v114 = [v94 addStateTransitionFrom:v98 to:v96 event:2 label:@"running"];
      v115 = [v94 addStateTransitionFrom:v98 to:v97 event:3 label:@"ended"];
      v116 = [v94 addStateTransitionFrom:v98 to:v100 event:6 label:@"stopped"];
      v117 = [v94 addStateTransitionFrom:v98 to:v98 event:4 label:@"paused"];
      v118 = [v94 addStateTransitionFrom:v100 to:v97 event:3 label:@"ended"];
      v119 = [v94 addStateTransitionFrom:v100 to:v100 event:6 label:@"stopped"];

      targetStateMachine = v9->_targetStateMachine;
      v9->_targetStateMachine = v94;

      [(HKStateMachine *)v9->_targetStateMachine setDelegate:v9];
    }

    _HKInitializeLogging();
    v121 = objc_alloc(MEMORY[0x277CCD2B0]);
    v122 = [v121 initWithProcessor:v9 sourceProtocol:&unk_283CBA250 destinationProtocol:&unk_283CD7C50 loggingCategory:*MEMORY[0x277CCC330]];
    workoutDataFlowLink = v9->_workoutDataFlowLink;
    v9->_workoutDataFlowLink = v122;

    _HKInitializeLogging();
    v124 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v125 = v124;
      v126 = objc_opt_class();
      v127 = NSStringFromClass(v126);
      v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v129 = MEMORY[0x277CCACA8];
      [(HKWorkoutConfiguration *)v9->_workoutConfiguration activityType];
      v130 = _HKWorkoutActivityNameForActivityType();
      v130 = [v129 stringWithFormat:@"activity=%@", v130];
      [v128 addObject:v130];

      v132 = MEMORY[0x277CCACA8];
      [(HKWorkoutConfiguration *)v9->_workoutConfiguration locationType];
      v133 = _HKWorkoutSessionLocationTypeName();
      v133 = [v132 stringWithFormat:@"location=%@", v133];
      [v128 addObject:v133];

      fitnessMachineSessionUUID = [(HKWorkoutConfiguration *)v9->_workoutConfiguration fitnessMachineSessionUUID];
      if (fitnessMachineSessionUUID)
      {
        v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"ftm_session=%@", fitnessMachineSessionUUID];
        [v128 addObject:v135];
      }

      if ([(HKWorkoutConfiguration *)v9->_workoutConfiguration activityType]== HKWorkoutActivityTypeSwimming)
      {
        v137 = MEMORY[0x277CCACA8];
        [(HKWorkoutConfiguration *)v9->_workoutConfiguration swimmingLocationType];
        v138 = _HKWorkoutSwimmingLocationTypeName();
        v138 = [v137 stringWithFormat:@"swimming_location=%@", v138];
        [v128 addObject:v138];
      }

      lapLength = [(HKWorkoutConfiguration *)v9->_workoutConfiguration lapLength];
      if (lapLength)
      {
        v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"lap_length=%@", lapLength];
        [v128 addObject:v140];
      }

      predictionSessionUUID = [(HKWorkoutConfiguration *)v9->_workoutConfiguration predictionSessionUUID];
      if (predictionSessionUUID)
      {
        v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"prediction_uuiud=%@", predictionSessionUUID];
        [v128 addObject:v142];
      }

      v144 = [v128 componentsJoinedByString:{@", "}];

      *buf = 138544130;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v127;
      *&buf[22] = 2048;
      v204 = v9;
      LOWORD(v205) = 2114;
      *(&v205 + 2) = v144;
      _os_log_impl(&dword_228986000, v125, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0, #init) %{public}@:%p { %{public}@ }", buf, 0x2Au);
    }

    if ([(HDWorkoutSessionServer *)v9 sessionType]== 1)
    {
      goto LABEL_34;
    }

    identifier = v9->_identifier;
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v190 = 0;
    v147 = [HDWorkoutSessionEntity lookupSessionWithIdentifier:identifier profile:WeakRetained error:&v190];
    v148 = v190;
    persistentEntity = v9->_persistentEntity;
    v9->_persistentEntity = v147;

    if (v9->_persistentEntity)
    {
      v196[0] = 0;
      v196[1] = v196;
      v196[2] = 0x3032000000;
      v196[3] = __Block_byref_object_copy__185;
      v196[4] = __Block_byref_object_dispose__185;
      v197 = 0;
      v194[0] = 0;
      v194[1] = v194;
      v194[2] = 0x3032000000;
      v194[3] = __Block_byref_object_copy__185;
      v194[4] = __Block_byref_object_dispose__185;
      v195 = 0;
      v192[0] = 0;
      v192[1] = v192;
      v192[2] = 0x3032000000;
      v192[3] = __Block_byref_object_copy__185;
      v192[4] = __Block_byref_object_dispose__185;
      v193 = 0;
      v150 = objc_opt_class();
      v151 = objc_loadWeakRetained(&v9->_profile);
      database = [v151 database];
      v191 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __48__HDWorkoutSessionServer__recoverPersistedState__block_invoke;
      v204 = &unk_27862CB60;
      *&v205 = v9;
      *(&v205 + 1) = v196;
      v206 = v194;
      v207 = v192;
      v153 = [v150 performReadTransactionWithHealthDatabase:database error:&v191 block:buf];
      v154 = v191;

      if (v153)
      {
        v155 = v9->_queue;
        *block = MEMORY[0x277D85DD0];
        *&block[8] = 3221225472;
        *&block[16] = __48__HDWorkoutSessionServer__recoverPersistedState__block_invoke_2;
        v199 = &unk_27861A1D0;
        v200 = v9;
        v201 = v196;
        v202 = v194;
        dispatch_sync(v155, block);
      }

      else
      {
        _HKInitializeLogging();
        v156 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *block = 138543618;
          *&block[4] = v9;
          *&block[12] = 2114;
          *&block[14] = v154;
          _os_log_error_impl(&dword_228986000, v156, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recover persisted session state: %{public}@", block, 0x16u);
        }
      }

      _Block_object_dispose(v192, 8);
      _Block_object_dispose(v194, 8);

      _Block_object_dispose(v196, 8);
      if (v153)
      {
        v157 = v148;
LABEL_33:

LABEL_34:
        v166 = [HDWorkoutSessionRapportSyncController alloc];
        v167 = objc_loadWeakRetained(&v9->_profile);
        rapportMessenger = [v167 rapportMessenger];
        v169 = [(HDWorkoutSessionRapportSyncController *)v166 initWithRapportMessenger:rapportMessenger sessionServer:v9];
        syncController = v9->_syncController;
        v9->_syncController = v169;

        v171 = v9->_queue;
        v187[0] = MEMORY[0x277D85DD0];
        v187[1] = 3221225472;
        v187[2] = __68__HDWorkoutSessionServer_initWithProfile_configuration_sessionUUID___block_invoke;
        v187[3] = &unk_278613968;
        v188 = v9;
        dispatch_sync(v171, v187);

        goto LABEL_35;
      }

      if (v148)
      {
        goto LABEL_27;
      }

      v148 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failed to recover persisted state for session %@", v9->_identifier}];
    }

    if (!v148)
    {
LABEL_29:
      v160 = v9->_identifier;
      workoutConfiguration = v9->_workoutConfiguration;
      v161 = objc_loadWeakRetained(&v9->_profile);
      *block = v148;
      v162 = [HDWorkoutSessionEntity createSessionWithIdentifier:v160 source:0 configuration:workoutConfiguration state:1 profile:v161 error:block];
      v157 = *block;

      v163 = v9->_persistentEntity;
      v9->_persistentEntity = v162;

      if (!v9->_persistentEntity)
      {
        _HKInitializeLogging();
        v164 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v9;
          *&buf[12] = 2114;
          *&buf[14] = v157;
          _os_log_error_impl(&dword_228986000, v164, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create workout session entity: %{public}@", buf, 0x16u);
        }
      }

      v165 = v9->_queue;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __55__HDWorkoutSessionServer__loadOrCreatePersistentEntity__block_invoke;
      v204 = &unk_278613968;
      *&v205 = v9;
      dispatch_sync(v165, buf);
      goto LABEL_33;
    }

LABEL_27:
    _HKInitializeLogging();
    v158 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v148;
      _os_log_error_impl(&dword_228986000, v158, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup existing workout session entity: %{public}@", buf, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_35:

  v172 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_queue_startInvalidationTimer
{
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = MEMORY[0x277CCC330];
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning invalidation timer.", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithQueue:*(self + 16) completion:&__block_literal_global_717];
    v5 = *(self + 96);
    *(self + 96) = v4;

    v6 = *(self + 96);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__HDWorkoutSessionServer__queue_startInvalidationTimer__block_invoke_2;
    v21[3] = &unk_278616F38;
    objc_copyWeak(&v22, &location);
    [v6 startWithTimeoutInterval:v21 handler:300.0];
    [*(self + 104) invalidate];
    v7 = *(self + 104);
    *(self + 104) = 0;

    if (*(self + 272))
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      daemon = [WeakRetained daemon];
      processStateManager = [daemon processStateManager];
      v11 = [processStateManager processIdentifierForApplicationIdentifier:*(self + 272)];

      if (v11 == -1)
      {
        _HKInitializeLogging();
        v17 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
        {
          v19 = *(self + 272);
          *buf = 138543362;
          selfCopy = v19;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Unable to get pid for %{public}@", buf, 0xCu);
        }
      }

      else
      {
        _HKInitializeLogging();
        v12 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
        {
          v13 = *(self + 272);
          *buf = 138543362;
          selfCopy = v13;
          _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "Taking reconnection assertion for process %{public}@", buf, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277CEEEA8]);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __55__HDWorkoutSessionServer__queue_startInvalidationTimer__block_invoke_722;
        v20[3] = &unk_27862CCC0;
        v20[4] = self;
        v15 = [v14 initWithPID:v11 flags:3 reason:19 name:@"HealthKit Background Workout (Reconnect)" withHandler:v20];
        v16 = *(self + 104);
        *(self + 104) = v15;
      }
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(_HKExpiringCompletionTimer *)self->_invalidationTimer invalidate];
  [(BKSProcessAssertion *)self->_invalidationAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDWorkoutSessionServer;
  [(HDWorkoutSessionServer *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(HDWorkoutSessionServer *)self identifier];
  hk_shortRepresentation = [identifier hk_shortRepresentation];
  [(HDWorkoutSessionServer *)self state];
  v8 = _HKWorkoutSessionServerStateToString();
  [(HDWorkoutSessionServer *)self sessionType];
  v9 = HKWorkoutSessionTypeToString();
  v10 = [v3 stringWithFormat:@"<%@-%@ [%@] [%@]>", v5, hk_shortRepresentation, v8, v9];

  return v10;
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_currentStateLock);
  currentStateLock_currentState = self->_currentStateLock_currentState;
  os_unfair_lock_unlock(&self->_currentStateLock);
  return currentStateLock_currentState;
}

- (BOOL)isGymKit
{
  fitnessMachineSessionUUID = [(HKWorkoutConfiguration *)self->_workoutConfiguration fitnessMachineSessionUUID];
  v3 = fitnessMachineSessionUUID != 0;

  return v3;
}

- (HDHealthStoreClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);
  client = [WeakRetained client];

  return client;
}

- (void)setTaskServer:(id)server
{
  serverCopy = server;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDWorkoutSessionServer_setTaskServer___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = serverCopy;
  v6 = serverCopy;
  dispatch_sync(queue, v7);
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

void __40__HDWorkoutSessionServer_setTaskServer___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  objc_storeWeak((*(a1 + 32) + 280), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    if (!v2)
    {
      goto LABEL_27;
    }

    dispatch_assert_queue_V2(*(v2 + 16));
    WeakRetained = objc_loadWeakRetained((v2 + 280));
    v4 = [WeakRetained client];
    v5 = [v4 process];

    v6 = [v5 applicationIdentifier];
    v7 = [v6 copy];
    v8 = *(v2 + 272);
    *(v2 + 272) = v7;

    v9 = objc_loadWeakRetained((v2 + 280));
    v10 = [v9 clientSource];
    v11 = [v10 copy];
    v12 = *(v2 + 296);
    *(v2 + 296) = v11;

    v13 = [v5 applicationIdentifier];
    v14 = [v5 bundleIdentifier];
    v15 = *(v2 + 296);
    v16 = *(v2 + 24);
    v17 = MEMORY[0x277CCC330];
    if (v16 != v14 && (!v14 || ![v16 isEqualToString:v14]) || (v18 = *(v2 + 272), v18 != v13) && (!v13 || (objc_msgSend(v18, "isEqualToString:", v13) & 1) == 0))
    {
      _HKInitializeLogging();
      v19 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v2 + 272);
        *buf = 138543874;
        v53 = v2;
        v54 = 2114;
        v55 = v20;
        v56 = 2114;
        v57 = v13;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Client application identifier change: %{public}@ -> %{public}@", buf, 0x20u);
      }

      _HKInitializeLogging();
      v21 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v2 + 24);
        *buf = 138543874;
        v53 = v2;
        v54 = 2114;
        v55 = v22;
        v56 = 2114;
        v57 = v14;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Client process bundle identifier change: %{public}@ -> %{public}@", buf, 0x20u);
      }

      v23 = *(v2 + 112);
      v24 = objc_opt_class();
      v25 = objc_loadWeakRetained((v2 + 8));
      v26 = [v25 database];
      v44 = 0;
      *&v45 = MEMORY[0x277D85DD0];
      *(&v45 + 1) = 3221225472;
      v46 = __55__HDWorkoutSessionServer__queue_cacheClientIdentifiers__block_invoke;
      v47 = &unk_27861B120;
      v48 = v2;
      v43 = v15;
      v49 = v15;
      v27 = v14;
      v50 = v27;
      v28 = v13;
      v51 = v28;
      LOBYTE(v24) = [v24 performWriteTransactionWithHealthDatabase:v26 error:&v44 block:&v45];
      v42 = v44;

      v17 = MEMORY[0x277CCC330];
      if ((v24 & 1) == 0)
      {
        _HKInitializeLogging();
        v29 = *v17;
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v2;
          _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record client process bundle identifier and source. Client may not correctly recover after a full crash.", buf, 0xCu);
        }
      }

      v30 = [v27 copy];
      v31 = *(v2 + 24);
      *(v2 + 24) = v30;

      v32 = [v28 copy];
      v33 = *(v2 + 272);
      *(v2 + 272) = v32;

      v15 = v43;
    }

    v34 = *(a1 + 32);
    if (v34)
    {
      _HKInitializeLogging();
      v35 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v45) = 138543362;
        *(&v45 + 4) = v34;
        _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping invalidation timer.", &v45, 0xCu);
      }

      [*(v34 + 96) invalidate];
      [*(v34 + 104) invalidate];
      v36 = *(v34 + 104);
      *(v34 + 104) = 0;

      v37 = *(a1 + 32);
    }

    else
    {
LABEL_27:
      v37 = 0;
    }

    [(HDWorkoutSessionServer *)v37 _queue_setupSessionController];
    v38 = *(a1 + 32);
    v39 = *MEMORY[0x277D85DE8];

    [(HDWorkoutSessionServer *)v38 _queue_startLatestActivityUpdateTimer];
  }

  else
  {
    v40 = *MEMORY[0x277D85DE8];
    v41 = *(a1 + 32);

    [(HDWorkoutSessionServer *)v41 _queue_startInvalidationTimer];
  }
}

- (void)_queue_setupSessionController
{
  v59 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (![self sessionType])
    {
      dispatch_assert_queue_V2(*(self + 16));
      v45 = [HDWorkoutSessionConfiguration alloc];
      identifier = [self identifier];
      v42 = *(self + 264);
      WeakRetained = objc_loadWeakRetained((self + 280));
      sessionType = [WeakRetained sessionType];
      v43 = objc_loadWeakRetained((self + 280));
      client = [v43 client];
      v3 = *(self + 24);
      v4 = *(self + 272);
      v5 = objc_loadWeakRetained((self + 280));
      requiresCoreLocationAssertion = [v5 requiresCoreLocationAssertion];
      v7 = objc_loadWeakRetained((self + 280));
      supportsAppRelaunchForRecovery = [v7 supportsAppRelaunchForRecovery];
      v9 = objc_loadWeakRetained((self + 280));
      supports3rdPartyAOT = [v9 supports3rdPartyAOT];
      BYTE3(v40) = [self isFirstParty];
      BYTE2(v40) = supports3rdPartyAOT;
      BYTE1(v40) = supportsAppRelaunchForRecovery;
      LOBYTE(v40) = requiresCoreLocationAssertion;
      v11 = [HDWorkoutSessionConfiguration initWithSessionIdentifier:v45 workoutConfiguration:"initWithSessionIdentifier:workoutConfiguration:sessionType:client:processBundleIdentifier:applicationIdentifier:requiresCoreLocationAssertion:supportsAppRelaunchForRecovery:supports3rdPartyAOT:enableWorkoutChangeDetection:activityConfigurations:" sessionType:identifier client:v42 processBundleIdentifier:sessionType applicationIdentifier:client requiresCoreLocationAssertion:v3 supportsAppRelaunchForRecovery:v4 supports3rdPartyAOT:v40 enableWorkoutChangeDetection:*(self + 304) activityConfigurations:?];

      v12 = *(self + 88);
      if (v12)
      {
        [v12 workoutSessionServer:self didChangeConfiguration:v11];
      }

      else
      {
        v13 = *(self + 264);
        v14 = *(self + 272);
        v15 = objc_loadWeakRetained((self + 8));
        v16 = [HDWorkoutSessionServer _sessionControllerClassFromWorkoutConfiguration:v13 clientApplicationIdentifier:v14 profile:v15];

        _HKInitializeLogging();
        v17 = MEMORY[0x277CCC330];
        v18 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = NSStringFromClass(v16);
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating session controller of class %{public}@", buf, 0x16u);
        }

        recoveryIdentifier = [(objc_class *)v16 recoveryIdentifier];
        v22 = recoveryIdentifier;
        if (recoveryIdentifier)
        {
          v47 = 0;
          v23 = recoveryIdentifier;
          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = __Block_byref_object_copy__185;
          v52 = __Block_byref_object_dispose__185;
          v53 = 0;
          v24 = objc_loadWeakRetained((self + 8));
          database = [v24 database];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __85__HDWorkoutSessionServer__retrieveSessionControllerStateForRecoveryIdentifier_error___block_invoke;
          v55 = &unk_278615F88;
          v26 = v23;
          v56 = v26;
          selfCopy = self;
          v58 = &v48;
          v27 = [(HDHealthEntity *)HDWorkoutSessionControllerEntity performReadTransactionWithHealthDatabase:database error:&v47 block:buf];

          if (v27)
          {
            v28 = v49[5];
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          _Block_object_dispose(&v48, 8);
          v30 = v47;
          v31 = v30;
          if (!v29)
          {
            if (v30)
            {
              _HKInitializeLogging();
              v32 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = v31;
                _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve recovery state with error: %{public}@", buf, 0x16u);
              }
            }
          }
        }

        else
        {
          v29 = 0;
        }

        v33 = [v16 alloc];
        v34 = objc_loadWeakRetained((self + 8));
        v35 = [v33 initWithProfile:v34 sessionConfiguration:v11 sessionStateController:self recoveryState:v29];
        v36 = *(self + 88);
        *(self + 88) = v35;

        [*(self + 88) workoutSessionServer:self didTransitionFromState:1 toState:objc_msgSend(self date:{"state"), 0}];
        currentGeneratedTypes = [*(self + 88) currentGeneratedTypes];
        dataSourceConfiguration = [*(self + 88) dataSourceConfiguration];
        [self notifyClientsOfGeneratedTypesUpdate:currentGeneratedTypes configuration:dataSourceConfiguration didUpdateActivity:0 earliestSampleDate:0];
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startLatestActivityUpdateTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting latest activity update timer.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v3 = self[22];
    if (v3)
    {
      dispatch_source_cancel(v3);
    }

    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self[2]);
    v5 = self[22];
    self[22] = v4;

    v6 = self[22];
    v7 = dispatch_walltime(0, 180000000000);
    dispatch_source_set_timer(v6, v7, 0x29E8D60800uLL, 0x3B9ACA00uLL);
    v8 = self[22];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __63__HDWorkoutSessionServer__queue_startLatestActivityUpdateTimer__block_invoke;
    handler[3] = &unk_278616F38;
    objc_copyWeak(&v11, buf);
    dispatch_source_set_event_handler(v8, handler);
    dispatch_activate(self[22]);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __40__HDWorkoutSessionServer_setTaskServer___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (void)invalidateTaskServer:(id)server
{
  serverCopy = server;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDWorkoutSessionServer_invalidateTaskServer___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = serverCopy;
  v6 = serverCopy;
  dispatch_sync(queue, v7);
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

void __47__HDWorkoutSessionServer_invalidateTaskServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  v3 = *(a1 + 40);

  if (WeakRetained == v3)
  {
    objc_storeWeak((*(a1 + 32) + 280), 0);
    v4 = *(a1 + 32);

    [(HDWorkoutSessionServer *)v4 _queue_startInvalidationTimer];
  }
}

void __47__HDWorkoutSessionServer_invalidateTaskServer___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (void)setAssociatedWorkoutBuilderEntity:(id)entity
{
  v21 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  persistentEntity = self->_persistentEntity;
  v6 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v16 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HDWorkoutSessionServer_setAssociatedWorkoutBuilderEntity___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v9 = entityCopy;
  v15 = v9;
  v10 = [v6 performWriteTransactionWithHealthDatabase:database error:&v16 block:v14];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save associated workout builder entity: %{public}@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setWorkoutDataAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWorkoutSessionServer_setWorkoutDataAccumulator___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = accumulatorCopy;
  v6 = accumulatorCopy;
  dispatch_async(queue, v7);
}

void __52__HDWorkoutSessionServer_setWorkoutDataAccumulator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) workoutSessionServer:*(a1 + 32) accumulatorDidChange:*(a1 + 40)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 80);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HDWorkoutSessionServer_setWorkoutDataAccumulator___block_invoke_2;
  v5[3] = &unk_27862CB38;
  v5[4] = v3;
  v6 = v2;
  [v4 notifyObservers:v5];
}

void __52__HDWorkoutSessionServer_setWorkoutDataAccumulator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutSession:*(a1 + 32) didUpdateDataAccumulator:*(a1 + 40)];
  }
}

- (id)currentWorkoutSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__185;
  v10 = __Block_byref_object_dispose__185;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HDWorkoutSessionServer_currentWorkoutSnapshot__block_invoke;
  v5[3] = &unk_278617198;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__HDWorkoutSessionServer_currentWorkoutSnapshot__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) client];
  v3 = [v2 process];

  if ([v3 isExtension])
  {
    [v3 containerAppBundleIdentifier];
  }

  else
  {
    [v3 applicationIdentifier];
  }
  v25 = ;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [*(a1 + 32) workoutDataAccumulator];
  v6 = [v5 startDate];

  v7 = [*(a1 + 32) workoutDataAccumulator];
  v8 = [v7 currentEvents];

  if (v6)
  {
    _HKCalculateWorkoutDuration();
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v26 = v3;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v8;
  v11 = [v8 reverseObjectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      v17 = [v16 workoutEventType];
      v18 = v17 == 1;
      if (v17 == 1 || [v16 workoutEventType] == 2)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v18 = 0;
        if (v13)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v23) = v18;
  v19 = [objc_alloc(MEMORY[0x277CCDD60]) _initWithSessionIdentifier:*(*(a1 + 32) + 256) workoutConfiguration:*(*(a1 + 32) + 264) sessionServerState:objc_msgSend(*(a1 + 32) isSessionActive:"state") sessionType:objc_msgSend(*(a1 + 32) sessionError:"isActive") isBuilderPaused:objc_msgSend(*(a1 + 32) applicationIdentifier:"sessionType") elapsedTime:*(*(a1 + 32) + 152) snapshotDate:v10 builderStartDate:{v23, v25, v4, v6}];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)sessionType
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);
  sessionType = [WeakRetained sessionType];

  return sessionType;
}

- (BOOL)isFirstParty
{
  if ([MEMORY[0x277CCDCD8] isFirstPartyForIdentifier:self->_applicationIdentifier])
  {
    return 1;
  }

  client = self->_client;
  v5 = *MEMORY[0x277CCBBA0];

  return [(HDHealthStoreClient *)client hasEntitlement:v5];
}

- (BOOL)shouldStopPreviousSession
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);
  shouldStopPreviousSession = [WeakRetained shouldStopPreviousSession];

  return shouldStopPreviousSession;
}

- (HKWorkoutConfiguration)currentActivityConfiguration
{
  workoutConfiguration = [(HKWorkoutActivity *)self->_currentActivity workoutConfiguration];
  workoutConfiguration = workoutConfiguration;
  if (!workoutConfiguration)
  {
    workoutConfiguration = self->_workoutConfiguration;
  }

  v5 = workoutConfiguration;

  return workoutConfiguration;
}

uint64_t __55__HDWorkoutSessionServer__loadOrCreatePersistentEntity__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 144) enterAtState:1];
  v2 = *(*(a1 + 32) + 136);

  return [v2 enterAtState:1];
}

uint64_t __48__HDWorkoutSessionServer__recoverPersistedState__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1[4] + 112) requestedTargetStateWithTransaction:v5 error:a3];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[5] + 8) + 40))
  {
    v9 = [*(a1[4] + 112) stateWithTransaction:v5 error:a3];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(a1[6] + 8) + 40))
    {
      v12 = [*(a1[4] + 112) isMirroringInTransaction:v5 error:a3];
      v13 = v12;
      if (!v12)
      {
        v20 = 0;
LABEL_74:

        goto LABEL_75;
      }

      *(a1[4] + 64) = [v12 BOOLValue];
      v14 = *(a1[4] + 112);
      v109 = 0;
      v15 = [v14 failureErrorInTransaction:v5 error:&v109];
      v16 = v109;
      v17 = a1[4];
      v18 = *(v17 + 152);
      *(v17 + 152) = v15;

      if (v16)
      {
        if (a3)
        {
          v19 = v16;
          v20 = 0;
          *a3 = v16;
        }

        else
        {
          _HKLogDroppedError();
          v20 = 0;
        }

        goto LABEL_73;
      }

      v21 = *(a1[4] + 112);
      v108 = 0;
      v22 = [v21 requestedStartDateInTransaction:v5 error:&v108];
      v23 = v108;
      v24 = a1[4];
      v25 = *(v24 + 192);
      *(v24 + 192) = v22;

      v26 = a1[4];
      if (!*(v26 + 192) && v23)
      {
        if (a3)
        {
          v27 = v23;
          v20 = 0;
          *a3 = v23;
        }

        else
        {
          _HKLogDroppedError();
          v20 = 0;
        }

        goto LABEL_72;
      }

      v28 = *(v26 + 112);
      v107 = 0;
      v29 = [v28 startDateInTransaction:v5 error:&v107];
      v30 = v107;
      v31 = a1[4];
      v32 = *(v31 + 40);
      *(v31 + 40) = v29;

      v33 = a1[4];
      if (!*(v33 + 40) && v30)
      {
        if (a3)
        {
          v34 = v30;
          v20 = 0;
          *a3 = v30;
        }

        else
        {
          _HKLogDroppedError();
          v20 = 0;
        }

        goto LABEL_71;
      }

      v35 = *(v33 + 112);
      v106 = 0;
      v36 = [v35 requestedEndDateInTransaction:v5 error:&v106];
      v37 = v106;
      v38 = a1[4];
      v39 = *(v38 + 200);
      *(v38 + 200) = v36;

      v40 = a1[4];
      if (!*(v40 + 200) && v37)
      {
        if (a3)
        {
          v41 = v37;
          v20 = 0;
          *a3 = v37;
        }

        else
        {
          _HKLogDroppedError();
          v20 = 0;
        }

        goto LABEL_70;
      }

      v42 = *(v40 + 112);
      v105 = 0;
      v43 = [v42 clientBundleIdentifier:v5 error:&v105];
      v44 = v105;
      v45 = a1[4];
      v46 = *(v45 + 24);
      *(v45 + 24) = v43;

      if (*(a1[4] + 24) || !v44)
      {

        v48 = *(a1[4] + 112);
        v104 = 0;
        v49 = [v48 clientApplicationIdentifier:v5 error:&v104];
        v44 = v104;
        v50 = a1[4];
        v51 = *(v50 + 272);
        *(v50 + 272) = v49;

        v52 = a1[4];
        if (*(v52 + 272) || !v44)
        {
          v53 = [*(v52 + 112) sourceWithTransaction:v5 error:a3];
          if (v53)
          {
            WeakRetained = objc_loadWeakRetained((a1[4] + 8));
            v54 = [WeakRetained sourceManager];
            v55 = v53;
            v56 = v54;
            v99 = v55;
            v57 = [v54 clientSourceForSourceEntity:? error:?];
            v58 = a1[4];
            v59 = *(v58 + 296);
            *(v58 + 296) = v57;

            v60 = a1[4];
            if (*(v60 + 296))
            {
              v61 = *(v60 + 112);
              v103 = 0;
              v97 = [v61 latestActivityDateInTransaction:v5 error:&v103];
              v62 = v103;
              v63 = *(a1[7] + 8);
              v64 = *(v63 + 40);
              *(v63 + 40) = v97;

              if (*(*(a1[7] + 8) + 40) || !v62)
              {
                v98 = v62;
                v67 = *(a1[4] + 112);
                v102 = 0;
                v94 = [v67 currentActivityWithTransaction:v5 error:&v102];
                v68 = v102;
                v69 = a1[4];
                v70 = *(v69 + 56);
                *(v69 + 56) = v94;

                v71 = v68;
                v72 = a1[4];
                if (*(v72 + 56) || !v68)
                {
                  v95 = v68;
                  v74 = *(v72 + 112);
                  v101 = 0;
                  v92 = [v74 activityConfigurationsWithTransaction:v5 error:&v101];
                  v75 = v101;
                  v76 = a1[4];
                  v77 = *(v76 + 304);
                  *(v76 + 304) = v92;

                  v78 = a1[4];
                  if (*(v78 + 304) || !v75)
                  {
                    v93 = v75;
                    v82 = *(v78 + 112);
                    v100 = 0;
                    v91 = [v82 firstActivityConfigurationWithTransaction:v5 error:&v100];
                    v83 = v100;
                    v84 = a1[4];
                    v85 = *(v84 + 208);
                    *(v84 + 208) = v91;

                    v86 = v83;
                    if (*(a1[4] + 208))
                    {
                      v87 = 1;
                    }

                    else
                    {
                      v87 = v83 == 0;
                    }

                    v20 = v87;
                    v53 = v99;
                    if (!v87)
                    {
                      if (a3)
                      {
                        v86 = v86;
                        *a3 = v86;
                      }

                      else
                      {
                        v89 = v86;
                        _HKLogDroppedError();
                        v86 = v89;
                      }
                    }

                    v81 = v93;
                  }

                  else
                  {
                    v79 = v75;
                    v53 = v99;
                    if (a3)
                    {
                      v80 = v79;
                      v20 = 0;
                      *a3 = v80;
                      v81 = v80;
                    }

                    else
                    {
                      v81 = v79;
                      _HKLogDroppedError();
                      v20 = 0;
                    }
                  }

                  v73 = v95;
                  v66 = v98;
                }

                else
                {
                  v53 = v99;
                  if (a3)
                  {
                    v73 = v71;
                    v20 = 0;
                    *a3 = v73;
                  }

                  else
                  {
                    v88 = v71;
                    _HKLogDroppedError();
                    v73 = v88;
                    v20 = 0;
                  }

                  v66 = v98;
                }
              }

              else
              {
                if (a3)
                {
                  v65 = v62;
                  v20 = 0;
                  *a3 = v62;
                  v66 = v62;
                }

                else
                {
                  v66 = v62;
                  _HKLogDroppedError();
                  v20 = 0;
                }

                v53 = v99;
              }
            }

            else
            {
              v20 = 0;
              v53 = v99;
            }
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_69;
        }

        if (a3)
        {
          goto LABEL_26;
        }
      }

      else if (a3)
      {
LABEL_26:
        v47 = v44;
        v20 = 0;
        *a3 = v44;
LABEL_69:

LABEL_70:
LABEL_71:

LABEL_72:
LABEL_73:

        goto LABEL_74;
      }

      _HKLogDroppedError();
      v20 = 0;
      goto LABEL_69;
    }
  }

  v20 = 0;
LABEL_75:

  return v20;
}

void __48__HDWorkoutSessionServer__recoverPersistedState__block_invoke_2(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1[4] + 160) = 1;
  [*(a1[4] + 144) enterAtState:{objc_msgSend(*(*(a1[5] + 8) + 40), "integerValue")}];
  [*(a1[4] + 136) enterAtState:{objc_msgSend(*(*(a1[6] + 8) + 40), "integerValue")}];
  *(a1[4] + 160) = 0;
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = *(v3 + 136);
    v5 = v2;
    v6 = [v4 currentState];
    [v6 index];
    v7 = _HKWorkoutSessionServerStateToString();
    v8 = *(a1[4] + 40);
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Recovered with state %{public}@ with start date %{public}@", &v10, 0x20u);
  }

  [(HDWorkoutSessionServer *)a1[4] _queue_setupSessionController];
  [(HDWorkoutSessionServer *)a1[4] _queue_startLatestActivityUpdateTimer];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)taskServerConfigurationForRecoveryWithError:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x277CCDC98]);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDWorkoutSessionServer_taskServerConfigurationForRecoveryWithError___block_invoke;
  v9[3] = &unk_278613920;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(queue, v9);
  v7 = v6;

  return v6;
}

uint64_t __70__HDWorkoutSessionServer_taskServerConfigurationForRecoveryWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSessionUUID:*(*(a1 + 40) + 256)];
  [*(a1 + 32) setWorkoutConfiguration:*(*(a1 + 40) + 264)];
  [*(a1 + 32) setCurrentActivity:*(*(a1 + 40) + 56)];
  [*(a1 + 32) setActivityConfigurations:*(*(a1 + 40) + 304)];
  [*(a1 + 32) setSupportsAppRelaunchForRecovery:1];
  v2 = [*(a1 + 40) sessionType];
  v3 = *(a1 + 32);

  return [v3 setSessionType:v2];
}

- (BOOL)_queue_resendWorkoutEventsToDataDestination:(uint64_t)destination error:
{
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__185;
    v15 = __Block_byref_object_dispose__185;
    v16 = 0;
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__HDWorkoutSessionServer__queue_resendWorkoutEventsToDataDestination_error___block_invoke;
    v10[3] = &unk_278619398;
    v10[4] = self;
    v10[5] = &v11;
    v8 = [(HDHealthEntity *)HDWorkoutSessionEntity performReadTransactionWithHealthDatabase:database error:destination block:v10];

    if (v8)
    {
      [v5 addWorkoutEvents:v12[5] dataSource:self];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __76__HDWorkoutSessionServer__queue_resendWorkoutEventsToDataDestination_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(a1 + 32) + 112) workoutEventsInTransaction:a2 error:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to
{
  destinationCopy = destination;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HDWorkoutSessionServer_workoutDataDestination_requestsDataFrom_to___block_invoke;
  v9[3] = &unk_278613920;
  v9[4] = self;
  v10 = destinationCopy;
  v8 = destinationCopy;
  dispatch_async(queue, v9);
}

void __69__HDWorkoutSessionServer_workoutDataDestination_requestsDataFrom_to___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [(HDWorkoutSessionServer *)v2 _queue_resendWorkoutEventsToDataDestination:v3 error:&v9];
  v5 = v9;
  if (!v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send persisted workout events to data destination upon request: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestination:(id)destination requestsFinalDataFrom:(id)from to:(id)to completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HDWorkoutSessionServer_workoutDataDestination_requestsFinalDataFrom_to_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v14 = destinationCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = destinationCopy;
  dispatch_async(queue, block);
}

void __85__HDWorkoutSessionServer_workoutDataDestination_requestsFinalDataFrom_to_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [(HDWorkoutSessionServer *)v2 _queue_resendWorkoutEventsToDataDestination:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

- (void)workoutDataDestination:(id)destination didInsertEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (self->_isMirroring)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = eventCopy;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending background runtime request for event: %{public}@.", buf, 0x16u);
    }

    syncController = self->_syncController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__HDWorkoutSessionServer_workoutDataDestination_didInsertEvent___block_invoke;
    v9[3] = &unk_2786130B0;
    v9[4] = self;
    [(HDWorkoutSessionRapportSyncController *)syncController sendBackgroundRuntimeRequestWithCompletion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__HDWorkoutSessionServer_workoutDataDestination_didInsertEvent___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send background runtime request to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)workoutDataDestinationRequestGeneratedTypes:(id)types
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDWorkoutSessionServer_workoutDataDestinationRequestGeneratedTypes___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __70__HDWorkoutSessionServer_workoutDataDestinationRequestGeneratedTypes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[11];
  if (v3)
  {
    v5 = [v3 currentGeneratedTypes];
    v4 = [*(*(a1 + 32) + 88) dataSourceConfiguration];
    [v2 notifyClientsOfGeneratedTypesUpdate:v5 configuration:v4 didUpdateActivity:0 earliestSampleDate:0];
  }
}

- (void)stateMachine:(id)machine persistTransition:(id)transition
{
  v26 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  transitionCopy = transition;
  persistentEntity = self->_persistentEntity;
  v9 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__HDWorkoutSessionServer_stateMachine_persistTransition___block_invoke;
  v17[3] = &unk_278615D40;
  v12 = machineCopy;
  v18 = v12;
  selfCopy = self;
  v13 = transitionCopy;
  v20 = v13;
  LOBYTE(v9) = [v9 performWriteTransactionWithHealthDatabase:database error:&v21 block:v17];
  v14 = v21;

  if ((v9 & 1) == 0)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v14;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update persisted session state: %{public}@.", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HDWorkoutSessionServer_stateMachine_persistTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7 == v6[17])
  {
    v9 = v6[14];
    v10 = [*(a1 + 48) toState];
    v11 = [v9 setState:objc_msgSend(v10 transaction:"index") error:{v5, a3}];
LABEL_6:
    v8 = v11;

    goto LABEL_7;
  }

  if (v7 == v6[18])
  {
    v12 = v6[14];
    v10 = [*(a1 + 48) toState];
    v11 = [v12 setRequestedTargetState:objc_msgSend(v10 transaction:"index") error:{v5, a3}];
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)_processTargetStoppingStateWithDate:(uint64_t)date
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (date && !*(date + 200) && !*(date + 48))
  {
    v5 = *(date + 112);
    v6 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained((date + 8));
    database = [WeakRetained database];
    v19 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HDWorkoutSessionServer__processTargetStoppingStateWithDate___block_invoke;
    v17[3] = &unk_278613218;
    v17[4] = date;
    v9 = v4;
    v18 = v9;
    v10 = [v6 performWriteTransactionWithHealthDatabase:database error:&v19 block:v17];
    v11 = v19;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        dateCopy = date;
        v22 = 2114;
        v23 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update requested end date: %{public}@.", buf, 0x16u);
      }
    }

    objc_storeStrong((date + 200), a2);
    v13 = *(date + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HDWorkoutSessionServer__processTargetStoppingStateWithDate___block_invoke_587;
    block[3] = &unk_278613920;
    block[4] = date;
    v16 = v9;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __62__HDWorkoutSessionServer__processTargetStoppingStateWithDate___block_invoke_587(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = [v2 endDate];

    if (!v3)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);

      [(HDWorkoutSessionServer *)v4 _queue_endCurrentActivityOnDate:v5 error:0];
    }
  }
}

- (uint64_t)_queue_endCurrentActivityOnDate:(void *)date error:
{
  v5 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    v6 = *(self + 56);
    if (v6)
    {
      startDate = [v6 startDate];
      v8 = [startDate hk_isBeforeDate:v5];

      if (v8)
      {
        if ([self isActive])
        {
          v9 = *(self + 56);
          [v9 _setEndDate:v5];
          [*(self + 88) endCurrentActivity:v9];
          v10 = *(self + 56);
          *(self + 56) = 0;
          goto LABEL_13;
        }

        v11 = MEMORY[0x277CCA9B8];
        v12 = @"No active session to end current activity";
      }

      else
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = @"Activity end date before start date";
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = @"No current activity to end";
    }

    v13 = [v11 hk_error:3 description:v12];
    [(HDWorkoutSessionServer *)self _queue_generateError:v13];
    v10 = v13;
    if (v10)
    {
      if (date)
      {
        v14 = v10;
        self = 0;
        *date = v10;
      }

      else
      {
        _HKLogDroppedError();
        self = 0;
      }

      v9 = v10;
      goto LABEL_16;
    }

    v9 = 0;
LABEL_13:
    self = 1;
LABEL_16:
  }

  return self;
}

- (void)stateMachine:(id)machine willEnterState:(id)state date:(id)date error:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  stateCopy = state;
  dateCopy = date;
  errorCopy = error;
  targetStateMachine = self->_targetStateMachine;
  index = [stateCopy index];
  if (targetStateMachine == machineCopy)
  {
    if (index == 6 || index == 3)
    {
      [(HDWorkoutSessionServer *)self _processTargetStoppingStateWithDate:dateCopy];
    }

    else if (index == 2)
    {
      v28 = dateCopy;
      if (!self->_startDate && !self->_requestedStartDate)
      {
        persistentEntity = self->_persistentEntity;
        v30 = objc_opt_class();
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        database = [WeakRetained database];
        v42 = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HDWorkoutSessionServer__processTargetRunningStateWithDate___block_invoke;
        v48 = &unk_278613218;
        selfCopy = self;
        v50 = v28;
        v32 = v30;
        v33 = database;
        v37 = [v32 performWriteTransactionWithHealthDatabase:database error:&v42 block:buf];
        v34 = v42;

        if ((v37 & 1) == 0)
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
          {
            *v43 = 138543618;
            selfCopy2 = self;
            v45 = 2114;
            v46 = v34;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update start date: %{public}@.", v43, 0x16u);
          }
        }

        objc_storeStrong(&self->_requestedStartDate, date);
      }
    }
  }

  else if (index == 7 && !self->_startDate)
  {
    requestedStartDate = self->_requestedStartDate;
    if (!requestedStartDate)
    {
      requestedStartDate = dateCopy;
    }

    v17 = requestedStartDate;
    v18 = self->_persistentEntity;
    v19 = objc_opt_class();
    v20 = objc_loadWeakRetained(&self->_profile);
    database2 = [v20 database];
    v41 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __65__HDWorkoutSessionServer_stateMachine_willEnterState_date_error___block_invoke;
    v39[3] = &unk_278613218;
    v39[4] = self;
    v22 = v17;
    v40 = v22;
    v23 = [v19 performWriteTransactionWithHealthDatabase:database2 error:&v41 block:v39];
    v24 = v41;

    if ((v23 & 1) == 0)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update start date: %{public}@.", buf, 0x16u);
      }
    }

    startDate = self->_startDate;
    self->_startDate = v22;
    v27 = v22;
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error
{
  v74 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (self->_stateMachine == machine)
  {
    index = [state index];
    if (index > 7)
    {
      if ((index - 15) < 2)
      {
        startDate = self->_startDate;
        if (startDate)
        {
          v32 = *MEMORY[0x277CCE5B8];
          [(NSDate *)startDate timeIntervalSinceNow];
          if (v32 >= -v33 || self->_failureError)
          {
            [(HKStateMachine *)self->_stateMachine enqueueEvent:107 date:dateCopy error:0 completion:&__block_literal_global_589];
          }
        }
      }

      else if (index == 8)
      {
        _HKInitializeLogging();
        v41 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = self;
          _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting Extended Pause timer.", &buf, 0xCu);
        }

        objc_initWeak(location, self);
        extendedPauseTimer = self->_extendedPauseTimer;
        if (extendedPauseTimer)
        {
          dispatch_source_cancel(extendedPauseTimer);
        }

        v43 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
        p_extendedPauseTimer = &self->_extendedPauseTimer;
        v44 = self->_extendedPauseTimer;
        self->_extendedPauseTimer = v43;

        v46 = (self->_extendedPauseTimeout * 1000000000.0);
        v47 = *p_extendedPauseTimer;
        v48 = dispatch_walltime(0, v46);
        dispatch_source_set_timer(v47, v48, v46, 0x3B9ACA00uLL);
        v49 = *p_extendedPauseTimer;
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v70 = __56__HDWorkoutSessionServer__queue_startExtendedPauseTimer__block_invoke;
        v71 = &unk_278616F38;
        objc_copyWeak(&v72, location);
        dispatch_source_set_event_handler(v49, &buf);
        dispatch_activate(*p_extendedPauseTimer);
        objc_destroyWeak(&v72);
        objc_destroyWeak(location);
      }

      else if (index == 17)
      {
        stopDate = self->_stopDate;
        if (!stopDate)
        {
          stopDate = self->_requestedEndDate;
          if (!stopDate)
          {
            stopDate = dateCopy;
          }
        }

        v15 = stopDate;
        dispatch_assert_queue_V2(self->_queue);
        _HKInitializeLogging();
        v16 = MEMORY[0x277CCC330];
        v17 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = self;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping latest activity update timer.", &buf, 0xCu);
        }

        latestActivityUpdateTimer = self->_latestActivityUpdateTimer;
        if (latestActivityUpdateTimer)
        {
          dispatch_source_cancel(latestActivityUpdateTimer);
          v19 = self->_latestActivityUpdateTimer;
          self->_latestActivityUpdateTimer = 0;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v70 = 0x3032000000;
        v71 = __Block_byref_object_copy__185;
        v72 = __Block_byref_object_dispose__185;
        v73 = 0;
        persistentEntity = self->_persistentEntity;
        v21 = objc_opt_class();
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        database = [WeakRetained database];
        location[0] = MEMORY[0x277D85DD0];
        location[1] = 3221225472;
        location[2] = __79__HDWorkoutSessionServer__queue_deleteSessionAndFinishAssociatedBuilderAtDate___block_invoke;
        location[3] = &unk_278619398;
        location[5] = &buf;
        v66 = 0;
        location[4] = self;
        v24 = [v21 performWriteTransactionWithHealthDatabase:database error:&v66 block:location];
        v63 = v66;

        if ((v24 & 1) == 0)
        {
          _HKInitializeLogging();
          v25 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            *v67 = 138543362;
            selfCopy3 = self;
            _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete session entity when finishing.", v67, 0xCu);
          }
        }

        if (*(*(&buf + 1) + 40))
        {
          _HKInitializeLogging();
          v26 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *v67 = 138543362;
            selfCopy3 = self;
            _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing associated builder.", v67, 0xCu);
          }

          v27 = *(*(&buf + 1) + 40);
          v28 = objc_loadWeakRetained(&self->_profile);
          [HDWorkoutBuilderServer finishDetachedBuilderForEntity:v27 sessionEndDate:v15 profile:v28];
        }

        else
        {
          _HKInitializeLogging();
          v50 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *v67 = 138543362;
            selfCopy3 = self;
            _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: No associated builder entity found during finish; workout will not be automatically saved.", v67, 0xCu);
          }
        }

        if (self->_sendHeartBeatFailureAnalytics)
        {
          v51 = objc_loadWeakRetained(&self->_profile);
          workoutManager = [v51 workoutManager];
          mirroringManager = [workoutManager mirroringManager];

          if (self->_startDate)
          {
            [(NSDate *)v15 timeIntervalSinceDate:?];
            v55 = v54;
          }

          else
          {
            v55 = -1.0;
          }

          analyticsCollector = [mirroringManager analyticsCollector];
          v57 = objc_loadWeakRetained(&self->_profile);
          daemon = [v57 daemon];
          analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
          numberOfHeartbeatFailures = self->_numberOfHeartbeatFailures;
          isFirstParty = [(HDWorkoutSessionServer *)self isFirstParty];
          identifier = [(HDWorkoutSessionServer *)self identifier];
          [analyticsCollector submitHeartBeatFailuresWithCoordinator:analyticsSubmissionCoordinator numOfHeartbeatFailures:numberOfHeartbeatFailures workoutDuration:isFirstParty isFirstParty:identifier sessionID:v55];
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else if ((index - 2) < 2)
    {
      v64 = 0;
      v29 = [(HDWorkoutSessionServer *)self _queue_clientApplicationCanStartWorkoutSessionWithError:&v64];
      v30 = v64;
      if (v29)
      {
        [(HKStateMachine *)self->_stateMachine enqueueEvent:100 date:dateCopy error:0 completion:&__block_literal_global_591];
      }

      else
      {
        [(HDWorkoutSessionServer *)self didResignCurrentWithError:v30];
      }
    }

    else if (index == 4)
    {
      v34 = *MEMORY[0x277D10AA0];
      v35 = @"Slow preparing";
      v36 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithCompletion:&__block_literal_global_742];
      tailSpinTimer = self->_tailSpinTimer;
      self->_tailSpinTimer = v36;

      v38 = self->_tailSpinTimer;
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v70 = __74__HDWorkoutSessionServer__scheduleTailSpinTimeoutForCategory_description___block_invoke_2;
      v71 = &unk_278613920;
      v39 = v34;
      v72 = v39;
      v40 = @"Slow preparing";
      v73 = @"Slow preparing";
      [(_HKExpiringCompletionTimer *)v38 startWithTimeoutInterval:&buf handler:8.0];
    }

    else if (index == 7 && self->_extendedPauseTimer)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping Extended Pause timer.", &buf, 0xCu);
      }

      dispatch_source_cancel(self->_extendedPauseTimer);
      v13 = self->_extendedPauseTimer;
      self->_extendedPauseTimer = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stateMachine:(id)machine didTransition:(id)transition fromState:(id)state toState:(id)toState date:(id)date error:(id)error
{
  v58 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  stateCopy = state;
  toStateCopy = toState;
  dateCopy = date;
  errorCopy = error;
  machineCopy = machine;
  os_unfair_lock_lock(&self->_currentStateLock);
  currentState = [(HKStateMachine *)self->_stateMachine currentState];
  self->_currentStateLock_currentState = [currentState index];

  os_unfair_lock_unlock(&self->_currentStateLock);
  targetStateMachine = self->_targetStateMachine;

  _HKInitializeLogging();
  v22 = *MEMORY[0x277CCC330];
  v23 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT);
  if (targetStateMachine != machineCopy)
  {
    if (transitionCopy)
    {
      if (!v23)
      {
        goto LABEL_11;
      }

      *buf = 138543618;
      selfCopy5 = self;
      v56 = 2114;
      v57 = transitionCopy;
      v24 = "%{public}@: (#w0) %{public}@.";
    }

    else
    {
      if (!v23)
      {
        goto LABEL_11;
      }

      *buf = 138543618;
      selfCopy5 = self;
      v56 = 2114;
      v57 = toStateCopy;
      v24 = "%{public}@: (#w0) Enter at %{public}@.";
    }

    _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
LABEL_11:
    if (dateCopy)
    {
      if (stateCopy)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dateCopy = [MEMORY[0x277CBEAA8] date];
      if (stateCopy)
      {
LABEL_13:
        index = [stateCopy index];
        index2 = [toStateCopy index];
        if (index == 4)
        {
          [(_HKExpiringCompletionTimer *)self->_tailSpinTimer invalidate];
          tailSpinTimer = self->_tailSpinTimer;
          self->_tailSpinTimer = 0;
        }

LABEL_17:
        if (index2 == 7)
        {
          if ((index & 0xFFFFFFFFFFFFFFFDLL) == 8)
          {
            [(HDWorkoutSessionServer *)self _queue_generateEventWithType:dateCopy date:?];
LABEL_23:
            if (!self->_isMirroring)
            {
LABEL_44:
              [(HDWorkoutSessionController *)self->_sessionController workoutSessionServer:self didTransitionFromState:index toState:index2 date:dateCopy, v46];
              observers = self->_observers;
              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke_610;
              v48[3] = &unk_27862CB88;
              v48[4] = self;
              v50 = index2;
              v51 = index;
              dateCopy = dateCopy;
              v49 = dateCopy;
              [(HKObserverSet *)observers notifyObservers:v48];
              if (errorCopy)
              {
                [(HDWorkoutSessionServer *)self _queue_generateError:errorCopy];
              }

              [(HDWorkoutSessionServer *)self _queue_evaluateRequestedTargetStateAtDate:dateCopy];

              goto LABEL_47;
            }

LABEL_40:
            _HKInitializeLogging();
            v42 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy5 = self;
              _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending session state update", buf, 0xCu);
            }

            syncController = self->_syncController;
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke_609;
            v52[3] = &unk_2786130B0;
            v52[4] = self;
            [(HDWorkoutSessionRapportSyncController *)syncController sendStateUpdate:index2 date:dateCopy completion:v52, v46];
            if (HKWorkoutSessionStateFromServerState() == 3)
            {
              [(HDWorkoutSessionServer *)self stopMirroringToCompanionDeviceWithCompletion:0];
            }

            goto LABEL_44;
          }
        }

        else if (index2 == 11)
        {
          if ((index & 0xFFFFFFFFFFFFFFFDLL) == 8)
          {
            date = [MEMORY[0x277CBEAA8] date];
            [(HDWorkoutSessionServer *)self _queue_generateEventWithType:date date:?];

            goto LABEL_23;
          }

          v31 = dispatch_time(0, (self->_stopEventGenerationWaitInterval * 1000000000.0));
          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke;
          block[3] = &unk_278613968;
          block[4] = self;
          dispatch_after(v31, queue, block);
        }

        else if (stateCopy && index2 == 8)
        {
          [(HDWorkoutSessionServer *)self _queue_generateEventWithType:dateCopy date:?];
        }

        if ((index2 - 17) <= 0xFFFFFFFFFFFFFFFDLL && (index - 15) <= 1)
        {
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          [WeakRetained nanoSyncManager];
          v34 = v47 = toStateCopy;
          [v34 syncHealthDataWithOptions:1 reason:@"syncing after heart rate recovery" completion:&__block_literal_global_600_0];

          v46 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
          v35 = objc_loadWeakRetained(&self->_profile);
          cloudSyncManager = [v35 cloudSyncManager];
          v37 = index;
          v38 = transitionCopy;
          v39 = stateCopy;
          v40 = errorCopy;
          v41 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v46];
          [cloudSyncManager syncWithRequest:v41 reason:@"Heart rate recovery completed" completion:&__block_literal_global_608_0];

          errorCopy = v40;
          stateCopy = v39;
          transitionCopy = v38;
          index = v37;

          toStateCopy = v47;
        }

        if (!self->_isMirroring)
        {
          goto LABEL_44;
        }

        if (index2 == 4)
        {
          [(HDWorkoutSessionServer *)self sendStartMirroringRequest];
        }

        goto LABEL_40;
      }
    }

    index2 = [toStateCopy index];
    index = 1;
    goto LABEL_17;
  }

  if (transitionCopy)
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    *buf = 138543618;
    selfCopy5 = self;
    v56 = 2114;
    v57 = transitionCopy;
    v25 = "%{public}@: (#w0) Target State: %{public}@.";
  }

  else
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    *buf = 138543618;
    selfCopy5 = self;
    v56 = 2114;
    v57 = toStateCopy;
    v25 = "%{public}@: (#w0) Target State Initialized at %{public}@.";
  }

  _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
LABEL_31:
  currentState2 = [(HKStateMachine *)self->_stateMachine currentState];

  if (currentState2)
  {
    [(HDWorkoutSessionServer *)self _queue_evaluateRequestedTargetStateAtDate:dateCopy];
  }

LABEL_47:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_queue_evaluateRequestedTargetStateAtDate:(uint64_t)date
{
  date = a2;
  if (date)
  {
    dispatch_assert_queue_V2(*(date + 16));
    if (!date)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    currentState = [*(date + 144) currentState];
    index = [currentState index];

    v6 = *(date + 136);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__HDWorkoutSessionServer__queue_evaluateRequestedTargetStateAtDate___block_invoke;
    v7[3] = &unk_27861DCA0;
    v7[4] = date;
    v7[5] = index;
    [v6 enqueueEvent:index date:date error:0 completion:v7];
  }
}

- (void)_queue_generateEventWithType:(void *)type date:
{
  if (self)
  {
    v5 = self[2];
    typeCopy = type;
    dispatch_assert_queue_V2(v5);
    v7 = objc_alloc(MEMORY[0x277CCDE58]);
    identifier = [self identifier];
    v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:typeCopy duration:0.0];

    v10 = [v7 initWithEventType:a2 sessionId:identifier dateInterval:v9 metadata:0];
    [(HDWorkoutSessionServer *)self _queue_generateEvent:v10];
  }
}

void __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 11)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 120);
      v8 = 138543618;
      v9 = v3;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Failed to receive CM stop event with expected interval (%0.2lfs); generating simulated stop event", &v8, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CBEAA8] date];
    [(HDWorkoutSessionServer *)v5 _queue_generateEventWithType:v6 date:?];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke_598(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      v8 = [v4 localizedDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to sync after heart rate recovery: %{public}@", &v9, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke_606(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      v8 = [v4 localizedDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to cloud sync after heart rate recovery: %{public}@", &v9, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendStartMirroringRequest
{
  if (self)
  {
    *(self + 216) = 1;
    WeakRetained = objc_loadWeakRetained((self + 8));
    workoutManager = [WeakRetained workoutManager];
    mirroringManager = [workoutManager mirroringManager];

    analyticsCollector = [mirroringManager analyticsCollector];
    [analyticsCollector startMirroring];

    v6 = *(self + 72);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HDWorkoutSessionServer_sendStartMirroringRequest__block_invoke;
    v8[3] = &unk_278616020;
    v8[4] = self;
    v9 = mirroringManager;
    v7 = mirroringManager;
    [v6 sendMirroringStartRequestWithCompletion:v8];
  }
}

void __82__HDWorkoutSessionServer_stateMachine_didTransition_fromState_toState_date_error___block_invoke_609(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send session updates to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_generateError:(uint64_t)error
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    dispatch_assert_queue_V2(*(error + 16));
    v4 = *(error + 112);
    v5 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained((error + 8));
    database = [WeakRetained database];
    v20 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__HDWorkoutSessionServer__queue_generateError___block_invoke;
    v18[3] = &unk_278613218;
    v18[4] = error;
    v8 = v3;
    v19 = v8;
    v9 = [v5 performWriteTransactionWithHealthDatabase:database error:&v20 block:v18];
    v10 = v20;

    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        errorCopy = error;
        v23 = 2114;
        v24 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record workout session failure: %{public}@", buf, 0x16u);
      }
    }

    v12 = [v8 copy];
    v13 = *(error + 152);
    *(error + 152) = v12;

    v14 = *(error + 80);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__HDWorkoutSessionServer__queue_generateError___block_invoke_711;
    v16[3] = &unk_27862CB38;
    v16[4] = error;
    v17 = v8;
    [v14 notifyObservers:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)setTargetState:(int64_t)state date:(id)date error:(id *)error
{
  dateCopy = date;
  dispatch_assert_queue_not_V2(self->_queue);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__185;
  v25 = __Block_byref_object_dispose__185;
  v26 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDWorkoutSessionServer_setTargetState_date_error___block_invoke;
  block[3] = &unk_27862CBB0;
  block[4] = self;
  stateCopy = state;
  v10 = dateCopy;
  v17 = v10;
  v18 = &v27;
  v19 = &v21;
  dispatch_sync(queue, block);
  if (v28[3])
  {
    v11 = 1;
  }

  else
  {
    v12 = v22[5];
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        v14 = v12;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v11 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11 & 1;
}

void __52__HDWorkoutSessionServer_setTargetState_date_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__HDWorkoutSessionServer_setTargetState_date_error___block_invoke_2;
  v4[3] = &unk_2786160E0;
  v5 = *(a1 + 48);
  v4[4] = v3;
  [(HDWorkoutSessionServer *)v3 _queue_setTargetState:v1 date:v2 completion:v4];
}

void __52__HDWorkoutSessionServer_setTargetState_date_error___block_invoke_2(uint64_t *a1, char a2, void *a3)
{
  v6 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    [(HDWorkoutSessionServer *)a1[4] _queue_generateError:v6];
  }
}

- (void)_queue_setTargetState:(void *)state date:(void *)date completion:
{
  stateCopy = state;
  dateCopy = date;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    currentState = [*(self + 144) currentState];
    index = [currentState index];

    if (index == a2)
    {
      dateCopy[2](dateCopy, 1, 0);
    }

    else
    {
      [*(self + 144) enqueueEvent:a2 date:stateCopy error:0 completion:dateCopy];
    }
  }
}

- (void)didBecomeCurrent
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDWorkoutSessionServer_didBecomeCurrent__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__HDWorkoutSessionServer_didBecomeCurrent__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [MEMORY[0x277CBEAA8] date];
  [v1 enqueueEvent:101 date:v2 error:0 completion:&__block_literal_global_612];
}

- (void)didResignCurrentWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWorkoutSessionServer_didResignCurrentWithError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

void __52__HDWorkoutSessionServer_didResignCurrentWithError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 136);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWorkoutSessionServer_didResignCurrentWithError___block_invoke_2;
  v7[3] = &unk_278616020;
  v7[4] = v3;
  v8 = v2;
  v6 = v2;
  [v5 enqueueEvent:102 date:v6 error:v4 completion:v7];
}

- (BOOL)prepareWithError:(id *)error
{
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(error) = [(HDWorkoutSessionServer *)self setTargetState:5 date:date error:error];

  return error;
}

- (BOOL)startActivityWithDate:(id)date error:(id *)error
{
  if (date)
  {

    return [(HDWorkoutSessionServer *)self setTargetState:2 date:date error:error];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [(HDWorkoutSessionServer *)self setTargetState:2 date:date error:error];

    return v8;
  }
}

- (BOOL)stopActivityWithDate:(id)date error:(id *)error
{
  if (date)
  {

    return [(HDWorkoutSessionServer *)self setTargetState:6 date:date error:error];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v8 = [(HDWorkoutSessionServer *)self setTargetState:6 date:date error:error];

    return v8;
  }
}

- (BOOL)endWithError:(id *)error
{
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(error) = [(HDWorkoutSessionServer *)self setTargetState:3 date:date error:error];

  return error;
}

- (BOOL)pauseWithError:(id *)error
{
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(error) = [(HDWorkoutSessionServer *)self setTargetState:4 date:date error:error];

  return error;
}

- (BOOL)resumeWithError:(id *)error
{
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(error) = [(HDWorkoutSessionServer *)self setTargetState:2 date:date error:error];

  return error;
}

- (void)autoPauseWithDate:(id)date
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDWorkoutSessionServer_autoPauseWithDate___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __44__HDWorkoutSessionServer_autoPauseWithDate___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [MEMORY[0x277CBEAA8] date];
  [v1 enqueueEvent:103 date:v2 error:0 completion:&__block_literal_global_616];
}

- (void)autoResumeWithDate:(id)date
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDWorkoutSessionServer_autoResumeWithDate___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __45__HDWorkoutSessionServer_autoResumeWithDate___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [MEMORY[0x277CBEAA8] date];
  [v1 enqueueEvent:104 date:v2 error:0 completion:&__block_literal_global_618];
}

- (void)endHeartRateRecovery
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDWorkoutSessionServer_endHeartRateRecovery__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__HDWorkoutSessionServer_endHeartRateRecovery__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [MEMORY[0x277CBEAA8] date];
  [v1 enqueueEvent:107 date:v2 error:0 completion:&__block_literal_global_620];
}

- (void)finishAggregationWithDate:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDWorkoutSessionServer_finishAggregationWithDate___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(queue, v7);
}

- (void)generateEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDWorkoutSessionServer_generateEvent___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_generateEvent:(uint64_t)event
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (event)
  {
    dispatch_assert_queue_V2(*(event + 16));
    _HKInitializeLogging();
    v4 = MEMORY[0x277CCC330];
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      eventCopy4 = event;
      v41 = 2114;
      v42 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@: Generated event: %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((event + 8));
    database = [WeakRetained database];
    v38 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke;
    v36[3] = &unk_278613218;
    v36[4] = event;
    v8 = v3;
    v37 = v8;
    v9 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:&v38 block:v36];
    v10 = v38;

    if (!v9)
    {
      _HKInitializeLogging();
      v11 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        eventCopy4 = event;
        v41 = 2114;
        v42 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist workout event: %{public}@", buf, 0x16u);
      }
    }

    v12 = *(event + 80);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke_705;
    v34[3] = &unk_27862CB38;
    v34[4] = event;
    v13 = v8;
    v35 = v13;
    [v12 notifyObservers:v34];
    v14 = *(event + 32);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke_2;
    v31[3] = &unk_278613880;
    v15 = v13;
    v32 = v15;
    eventCopy3 = event;
    [v14 sendToDestinationProcessors:v31];
    if ([v15 eventType] == 1)
    {
      v16 = *(event + 16);
      v17 = v15;
      dispatch_assert_queue_V2(v16);
      v18 = *(event + 200);
      if (v18)
      {
        v19 = v18;
        dateInterval = *(event + 48);
        *(event + 48) = v19;
      }

      else
      {
        dateInterval = [v17 dateInterval];
        endDate = [dateInterval endDate];
        v22 = *(event + 48);
        *(event + 48) = endDate;
      }

      v23 = *(event + 136);
      dateInterval2 = [v17 dateInterval];

      startDate = [dateInterval2 startDate];
      [v23 enqueueEvent:105 date:startDate error:0 completion:&__block_literal_global_714];
    }

    if (*(event + 64) == 1)
    {
      v26 = [MEMORY[0x277CCDC68] _workoutEventWithInternalEvent:v15];
      if (v26)
      {
        _HKInitializeLogging();
        v27 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          eventCopy4 = event;
          v41 = 2114;
          v42 = v26;
          _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending update for event: %{public}@", buf, 0x16u);
        }

        v28 = *(event + 72);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke_708;
        v30[3] = &unk_2786130B0;
        v30[4] = event;
        [v28 sendEventUpdate:v26 completion:v30];
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)generateError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDWorkoutSessionServer_generateError___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)generateMetadata:(id)metadata
{
  metadataCopy = metadata;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HDWorkoutSessionServer_generateMetadata___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  dispatch_async(queue, v7);
}

void __43__HDWorkoutSessionServer_generateMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    v4 = *(v1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__HDWorkoutSessionServer__queue_generateMetadata___block_invoke;
    v5[3] = &unk_278613880;
    v6 = v2;
    v7 = v1;
    [v4 sendToDestinationProcessors:v5];
  }
}

- (void)generateConfigurationUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDWorkoutSessionServer_generateConfigurationUpdate___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_sync(queue, v7);
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)_queue_generateConfigurationUpdate:(uint64_t)update
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (update)
  {
    dispatch_assert_queue_V2(*(update + 16));
    _HKInitializeLogging();
    v4 = MEMORY[0x277CCC330];
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      updateCopy2 = update;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_INFO, "%{public}@: Generated configuration update : %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((update + 8));
    database = [WeakRetained database];
    v19 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__HDWorkoutSessionServer__queue_generateConfigurationUpdate___block_invoke;
    v17[3] = &unk_278613218;
    v17[4] = update;
    v8 = v3;
    v18 = v8;
    v9 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:&v19 block:v17];
    v10 = v19;

    if (!v9)
    {
      _HKInitializeLogging();
      v11 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        updateCopy2 = update;
        v22 = 2114;
        v23 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist workout configuration update: %{public}@", buf, 0x16u);
      }
    }

    v12 = *(update + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HDWorkoutSessionServer__queue_generateConfigurationUpdate___block_invoke_712;
    v14[3] = &unk_278613880;
    v15 = v8;
    updateCopy3 = update;
    [v12 sendToDestinationProcessors:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HDWorkoutSessionServer_generateConfigurationUpdate___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (void)didBeginNewActivity:(id)activity
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke;
  v16[3] = &unk_278613218;
  v16[4] = self;
  v7 = activityCopy;
  v17 = v7;
  v8 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:&v18 block:v16];
  v9 = v18;

  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist current activity: %{public}@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_625;
  block[3] = &unk_278613920;
  block[4] = self;
  v15 = v7;
  v12 = v7;
  dispatch_sync(queue, block);
  HKDispatchAsyncOnGlobalConcurrentQueue();

  v13 = *MEMORY[0x277D85DE8];
}

void __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_625(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_2;
  v10[3] = &unk_278613880;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v11 = v3;
  v12 = v4;
  [v2 sendToDestinationProcessors:v10];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 80);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_3;
  v8[3] = &unk_27862CB38;
  v8[4] = v6;
  v9 = v5;
  [v7 notifyObservers:v8];
}

void __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutSession:*(a1 + 32) didBeginActivity:*(a1 + 40)];
  }
}

void __46__HDWorkoutSessionServer_didBeginNewActivity___block_invoke_4()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (void)didEndCurrentActivity:(id)activity
{
  v21 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[4] = self;
  v16 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke;
  v15[3] = &unk_278616048;
  v7 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:database error:&v16 block:v15];
  v8 = v16;

  if (!v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist current activity: %{public}@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_631;
  v13[3] = &unk_278613920;
  v13[4] = self;
  v14 = activityCopy;
  v11 = activityCopy;
  dispatch_sync(queue, v13);
  HKDispatchAsyncOnGlobalConcurrentQueue();

  v12 = *MEMORY[0x277D85DE8];
}

void __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_631(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_2;
  v10[3] = &unk_278613880;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v11 = v3;
  v12 = v4;
  [v2 sendToDestinationProcessors:v10];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 80);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_3;
  v8[3] = &unk_27862CB38;
  v8[4] = v6;
  v9 = v5;
  [v7 notifyObservers:v8];
}

void __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutSession:*(a1 + 32) didEndActivity:*(a1 + 40)];
  }
}

void __48__HDWorkoutSessionServer_didEndCurrentActivity___block_invoke_4()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (void)didDetectActivityChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HDWorkoutSessionServer_didDetectActivityChange___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(queue, v7);
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

void __50__HDWorkoutSessionServer_didDetectActivityChange___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HDWorkoutSessionServer_didDetectActivityChange___block_invoke_2;
  v5[3] = &unk_278613880;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 sendToDestinationProcessors:v5];
}

void __50__HDWorkoutSessionServer_didDetectActivityChange___block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDWorkoutManagerStateDidChange" object:0];
}

- (HDWorkoutDataAccumulator)workoutDataAccumulator
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);
  workoutDataAccumulator = [WeakRetained workoutDataAccumulator];

  return workoutDataAccumulator;
}

- (BOOL)storeSessionControllerState:(id)state forRecoveryIdentifier:(id)identifier error:(id *)error
{
  stateCopy = state;
  identifierCopy = identifier;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__185;
  v27 = __Block_byref_object_dispose__185;
  v28 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HDWorkoutSessionServer_storeSessionControllerState_forRecoveryIdentifier_error___block_invoke;
  block[3] = &unk_278622020;
  v21 = &v29;
  block[4] = self;
  v11 = stateCopy;
  v19 = v11;
  v12 = identifierCopy;
  v20 = v12;
  v22 = &v23;
  dispatch_sync(queue, block);
  v13 = v24[5];
  v14 = v13;
  if (v13)
  {
    if (error)
    {
      v15 = v13;
      *error = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v16;
}

void __82__HDWorkoutSessionServer_storeSessionControllerState_forRecoveryIdentifier_error___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  obj = v7;
  v8 = v2;
  v9 = v4;
  if (v3)
  {
    dispatch_assert_queue_V2(*(v3 + 16));
    WeakRetained = objc_loadWeakRetained((v3 + 8));
    v11 = [WeakRetained database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__HDWorkoutSessionServer__queue_storeSessionControllerState_forRecoveryIdentifier_error___block_invoke;
    v18[3] = &unk_278615D40;
    v19 = v9;
    v20 = v8;
    v21 = v3;
    v12 = [(HDHealthEntity *)HDWorkoutSessionControllerEntity performWriteTransactionWithHealthDatabase:v11 error:&obj block:v18];
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(v6, obj);
  *(*(*(a1 + 56) + 8) + 24) = v12;
  v13 = *(a1 + 32);
  v14 = *(v13 + 80);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDWorkoutSessionServer_storeSessionControllerState_forRecoveryIdentifier_error___block_invoke_2;
  v15[3] = &unk_27862CB38;
  v15[4] = v13;
  v16 = *(a1 + 48);
  [v14 notifyObservers:v15];
}

void __82__HDWorkoutSessionServer_storeSessionControllerState_forRecoveryIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 workoutSession:*(a1 + 32) didUpdateControllerStateForRecoveryIdentifier:*(a1 + 40)];
  }
}

- (void)notifyClientsOfGeneratedTypesUpdate:(id)update configuration:(id)configuration didUpdateActivity:(BOOL)activity earliestSampleDate:(id)date
{
  v33 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  configurationCopy = configuration;
  dateCopy = date;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v31 = 2114;
    v32 = updateCopy;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Generated types updated: %{public}@", buf, 0x16u);
  }

  startDate = [(HKWorkoutActivity *)self->_currentActivity startDate];
  startDate = startDate;
  if (startDate || (startDate = self->_startDate) != 0 || (startDate = self->_requestedStartDate) != 0 || (startDate = dateCopy) != 0)
  {
    date = startDate;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v17 = date;

  workoutDataFlowLink = self->_workoutDataFlowLink;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __113__HDWorkoutSessionServer_notifyClientsOfGeneratedTypesUpdate_configuration_didUpdateActivity_earliestSampleDate___block_invoke;
  v23[3] = &unk_27861A3A0;
  v24 = configurationCopy;
  v25 = updateCopy;
  activityCopy = activity;
  selfCopy2 = self;
  v27 = v17;
  v19 = v17;
  v20 = updateCopy;
  v21 = configurationCopy;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __113__HDWorkoutSessionServer_notifyClientsOfGeneratedTypesUpdate_configuration_didUpdateActivity_earliestSampleDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didUpdateGeneratedTypesWithConfiguration:*(a1 + 32) sampleTypes:*(a1 + 40) dataSource:*(a1 + 48) didUpdateActivity:*(a1 + 64) date:*(a1 + 56)];
  }
}

BOOL __85__HDWorkoutSessionServer__retrieveSessionControllerStateForRecoveryIdentifier_error___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = *(a1[5] + 112);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HDWorkoutSessionServer__retrieveSessionControllerStateForRecoveryIdentifier_error___block_invoke_2;
  v7[3] = &unk_27862CBD8;
  v7[4] = a1[6];
  return [HDWorkoutSessionControllerEntity retrieveArchivedStateFromRecoveryIdentifier:v4 workoutSession:v5 transaction:a2 error:a3 block:v7];
}

- (BOOL)beginNewActivityWithConfiguration:(id)configuration date:(id)date metadata:(id)metadata error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dateCopy = date;
  metadataCopy = metadata;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__185;
  v37 = __Block_byref_object_dispose__185;
  v38 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HDWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke;
  block[3] = &unk_27862CC00;
  block[4] = self;
  v14 = configurationCopy;
  v28 = v14;
  v31 = &v33;
  v15 = dateCopy;
  v29 = v15;
  v32 = &v39;
  v16 = metadataCopy;
  v30 = v16;
  dispatch_sync(queue, block);
  v17 = v34[5];
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (self->_isMirroring)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending current activity update", buf, 0xCu);
    }

    syncController = self->_syncController;
    currentActivity = self->_currentActivity;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __80__HDWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke_645;
    v26[3] = &unk_2786130B0;
    v26[4] = self;
    [(HDWorkoutSessionRapportSyncController *)syncController sendCurrentActivityUpdate:currentActivity completion:v26];
  }

  v23 = *(v40 + 24);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __80__HDWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCDBE8] _workoutWithActivityType:objc_msgSend(*(*(a1 + 32) + 264) acceptsSubActivityType:{"activityType"), objc_msgSend(*(a1 + 40), "activityType")}])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 56))
    {
      v3 = *(a1 + 48);
      v4 = *(*(a1 + 64) + 8);
      obj = *(v4 + 40);
      v5 = [(HDWorkoutSessionServer *)v2 _queue_endCurrentActivityOnDate:v3 error:&obj];
      objc_storeStrong((v4 + 40), obj);
      if (!v5)
      {
LABEL_18:
        v31 = *MEMORY[0x277D85DE8];
        return;
      }

      v2 = *(a1 + 32);
    }

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 64) + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    v13 = v7;
    v14 = v6;
    v50 = v8;
    if (!v2)
    {
      v18 = 0;
      goto LABEL_17;
    }

    dispatch_assert_queue_V2(*(v2 + 16));
    if ([*(v2 + 40) hk_isAfterDate:v14])
    {
      v15 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Activity start date before session start"];
      [(HDWorkoutSessionServer *)v2 _queue_generateError:v15];
      v16 = v15;
      v17 = v16;
      v18 = v16 == 0;
      if (v16)
      {
        v19 = v16;
        v11 = v17;
      }

LABEL_32:

      goto LABEL_17;
    }

    v28 = [v2 state];
    if ((v28 - 7) >= 4 && v28 != 5)
    {
      v42 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"No active session to begin new activity"];
      [(HDWorkoutSessionServer *)v2 _queue_generateError:v42];
      v43 = v42;
      v17 = v43;
      v18 = v43 == 0;
      if (v43)
      {
        v44 = v43;
        v11 = v17;
      }

      goto LABEL_32;
    }

    if (!*(v2 + 208) && [*(v2 + 304) count])
    {
      v32 = [v13 activityType];
      v33 = [*(v2 + 304) firstObject];
      LODWORD(v32) = v32 == [v33 activityType];

      if (!v32)
      {
        v45 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"First activity configuration does not match with the list of configurations"];
        [(HDWorkoutSessionServer *)v2 _queue_generateError:v45];
        v46 = v45;
        v17 = v46;
        v18 = v46 == 0;
        if (v46)
        {
          v47 = v46;
          v11 = v17;
        }

        goto LABEL_32;
      }

      v34 = [*(v2 + 304) firstObject];
      v35 = [v34 suggestedActivityUUID];
      [v13 setSuggestedActivityUUID:v35];

      WeakRetained = objc_loadWeakRetained((v2 + 8));
      v37 = [WeakRetained database];
      v54 = 0;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __87__HDWorkoutSessionServer__queue_beginNewActivityWithConfiguration_date_metadata_error___block_invoke;
      v52[3] = &unk_278613218;
      v52[4] = v2;
      v53 = v13;
      v48 = [(HDHealthEntity *)HDWorkoutSessionEntity performWriteTransactionWithHealthDatabase:v37 error:&v54 block:v52];
      v49 = v54;

      v38 = MEMORY[0x277CCC330];
      if (!v48)
      {
        _HKInitializeLogging();
        v39 = *v38;
        if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v56 = v2;
          v57 = 2114;
          v58 = v49;
          _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist first activity configuration : %{public}@", buf, 0x16u);
        }
      }

      objc_storeStrong((v2 + 208), v7);
      _HKInitializeLogging();
      v40 = *v38;
      if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(v2 + 208);
        *buf = 138543618;
        v56 = v2;
        v57 = 2114;
        v58 = v41;
        _os_log_impl(&dword_228986000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: First activity configuration %{public}@", buf, 0x16u);
      }
    }

    v29 = [objc_alloc(MEMORY[0x277CCDBF0]) initWithWorkoutConfiguration:v13 startDate:v14 endDate:0 metadata:v50];
    v30 = *(v2 + 56);
    *(v2 + 56) = v29;

    [*(v2 + 88) beginNewActivity:*(v2 + 56)];
    v18 = 1;
LABEL_17:

    objc_storeStrong(v10, v11);
    *(*(*(a1 + 72) + 8) + 24) = v18;
    goto LABEL_18;
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:{objc_msgSend(*(a1 + 40), "activityType")}];
  v22 = [v20 hk_error:3 format:{@"Cannot add subactivity of type %@", v21}];
  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  v25 = *(a1 + 32);
  v26 = *(*(*(a1 + 64) + 8) + 40);
  v27 = *MEMORY[0x277D85DE8];

  [(HDWorkoutSessionServer *)v25 _queue_generateError:v26];
}

void __80__HDWorkoutSessionServer_beginNewActivityWithConfiguration_date_metadata_error___block_invoke_645(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send current activity to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)endCurrentActivityOnDate:(id)date error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__185;
  v34 = __Block_byref_object_dispose__185;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__185;
  v28 = __Block_byref_object_dispose__185;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HDWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke;
  block[3] = &unk_27862CC28;
  v21 = &v30;
  block[4] = self;
  v8 = dateCopy;
  v20 = v8;
  v22 = &v36;
  v23 = &v24;
  dispatch_sync(queue, block);
  v9 = v25[5];
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (self->_isMirroring && v31[5])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Sending current activity end", buf, 0xCu);
    }

    syncController = self->_syncController;
    v14 = v31[5];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HDWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_646;
    v18[3] = &unk_2786130B0;
    v18[4] = self;
    [(HDWorkoutSessionRapportSyncController *)syncController sendCurrentActivityUpdate:v14 completion:v18];
  }

  v15 = *(v37 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __57__HDWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) _deepCopy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(a1[6] + 8) + 40) _setEndDate:a1[5]];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [(HDWorkoutSessionServer *)v5 _queue_endCurrentActivityOnDate:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[7] + 8) + 24) = v8;
}

void __57__HDWorkoutSessionServer_endCurrentActivityOnDate_error___block_invoke_646(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to send current activity to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)enableAutomaticDetectionForActivityConfigurations:(id)configurations error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [configurationsCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(configurationsCopy);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        suggestedActivityUUID = [v10 suggestedActivityUUID];
        v12 = suggestedActivityUUID == 0;

        if (v12)
        {
          uUID = [MEMORY[0x277CCAD78] UUID];
          [v10 setSuggestedActivityUUID:uUID];
        }
      }

      v7 = [configurationsCopy countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  _HKInitializeLogging();
  v14 = MEMORY[0x277CCC330];
  v15 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = configurationsCopy;
    _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Enabling automatic detection for configurations %{public}@", buf, 0x16u);
  }

  persistentEntity = self->_persistentEntity;
  v17 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v40 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __82__HDWorkoutSessionServer_enableAutomaticDetectionForActivityConfigurations_error___block_invoke;
  v38[3] = &unk_278613218;
  v38[4] = self;
  v20 = configurationsCopy;
  v39 = v20;
  LOBYTE(v17) = [v17 performWriteTransactionWithHealthDatabase:database error:&v40 block:v38];
  v21 = v40;

  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v22 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to persist activity configurations: %{public}@", buf, 0x16u);
    }

    v23 = v21;
    v24 = v23;
    if (v23)
    {
      if (error)
      {
        v25 = v23;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v46 = 0;
  queue = self->_queue;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __82__HDWorkoutSessionServer_enableAutomaticDetectionForActivityConfigurations_error___block_invoke_648;
  v34 = &unk_27861F190;
  v37 = buf;
  selfCopy = self;
  v27 = v20;
  v36 = v27;
  dispatch_sync(queue, &v31);
  v28 = *(*&buf[8] + 24);
  if (!v28)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"Not supported with the current workout session", v31, v32, v33, v34, selfCopy}];
  }

  _Block_object_dispose(buf, 8);
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

void __82__HDWorkoutSessionServer_enableAutomaticDetectionForActivityConfigurations_error___block_invoke_648(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 88) enableAutomaticDetectionForActivityConfigurations:a1[5]];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = a1[5];
    v3 = (a1[4] + 304);

    objc_storeStrong(v3, v2);
  }
}

- (void)startMirroringToCompanionDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__HDWorkoutSessionServer_startMirroringToCompanionDeviceWithCompletion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v11 = completionCopy;
  v5 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HDWorkoutSessionServer_startMirroringToCompanionDeviceWithCompletion___block_invoke_2;
  block[3] = &unk_278614E28;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

uint64_t __72__HDWorkoutSessionServer_startMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__HDWorkoutSessionServer_startMirroringToCompanionDeviceWithCompletion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 >= 11)
  {
    v3 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Cannot start mirroring for a workout session that is ended or ending."];
    (*(v3 + 16))(v3, 0);
    v4 = *MEMORY[0x277D85DE8];

    return;
  }

  v5 = v2;
  v6 = *(a1 + 32);
  if (*(v6 + 64) == 1)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Session is already mirroring, ignoring mirroring start request", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  [(HDWorkoutSessionServer *)v6 _queue_setIsMirroring:*(a1 + 40) completion:?];
  if (v5 < 5)
  {
LABEL_13:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *(a1 + 32);
  v10 = *MEMORY[0x277D85DE8];

  [(HDWorkoutSessionServer *)v9 sendStartMirroringRequest];
}

- (void)_queue_setIsMirroring:(void *)mirroring completion:
{
  v21 = *MEMORY[0x277D85DE8];
  mirroringCopy = mirroring;
  if (self)
  {
    v6 = *(self + 112);
    v7 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    v16 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HDWorkoutSessionServer__queue_setIsMirroring_completion___block_invoke;
    v14[3] = &unk_27862CC78;
    v14[4] = self;
    v15 = a2;
    v10 = [v7 performWriteTransactionWithHealthDatabase:database error:&v16 block:v14];
    v11 = v16;

    if ((v10 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v19 = 2114;
        v20 = v11;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Failed to persist mirroring state with error: %{public}@", buf, 0x16u);
      }
    }

    *(self + 64) = a2;
    if (mirroringCopy)
    {
      mirroringCopy[2](mirroringCopy, v10, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__HDWorkoutSessionServer_sendStartMirroringRequest__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *v11 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    *&v11[4] = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Started mirroring with success: %{public}@, error: %{public}@", v11, 0x20u);
  }

  v9 = [*(a1 + 40) analyticsCollector];
  [v9 startedMirroring];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopMirroringToCompanionDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke;
  aBlock[3] = &unk_2786130D8;
  v11 = completionCopy;
  v5 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2;
  block[3] = &unk_278614E28;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

uint64_t __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    [(HDWorkoutSessionServer *)v2 _queue_setIsMirroring:*(a1 + 40) completion:?];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v4 = [WeakRetained workoutManager];
    v5 = [v4 mirroringManager];

    v6 = [v5 analyticsCollector];
    [v6 stopMirroring];

    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke_664;
    v14[3] = &unk_278616020;
    v14[4] = v7;
    v15 = v5;
    v9 = v5;
    [v8 sendMirroringStopRequestWithCompletion:v14];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Session is not mirroring, ignoring mirroring stop request", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Session is not mirroring."];
    (*(v12 + 16))(v12, 0, v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __71__HDWorkoutSessionServer_stopMirroringToCompanionDeviceWithCompletion___block_invoke_664(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *v15 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    *&v15[4] = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Stopped mirroring with success: %{public}@, error: %{public}@", v15, 0x20u);
  }

  v9 = [*(a1 + 40) analyticsCollector];
  [v9 stoppedMirroring];

  v10 = [*(a1 + 40) analyticsCollector];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v12 = [WeakRetained daemon];
  v13 = [v12 analyticsSubmissionCoordinator];
  [v10 submitMirroringMetricsWithCoordinator:v13 isFirstParty:{objc_msgSend(*(a1 + 32), "isFirstParty")}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)didDisconnectFromRemoteWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HDWorkoutSessionServer_setIsMirroring___block_invoke;
    block[3] = &unk_278618990;
    block[4] = self;
    v11 = 0;
    dispatch_async(queue, block);
  }

  v6 = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HDWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(v6, v8);
}

void __59__HDWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__HDWorkoutSessionServer_didDisconnectFromRemoteWithError___block_invoke_2;
  v2[3] = &unk_278620F08;
  v3 = *(a1 + 40);
  [v1 sendToDestinationProcessors:v2];
}

- (void)sendDataToRemoteWorkoutSession:(id)session completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  if ([sessionCopy length])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HDWorkoutSessionServer_sendDataToRemoteWorkoutSession_completion___block_invoke;
    block[3] = &unk_278616D18;
    block[4] = self;
    v14 = completionCopy;
    v13 = sessionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Data is nil. Nothing to send", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:11 description:@"No data to send."];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__HDWorkoutSessionServer_sendDataToRemoteWorkoutSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v2)
  {
    if (*(v2 + 64))
    {

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v5 = [WeakRetained workoutManager];
      v8 = [v5 mirroringManager];

      v6 = [v8 analyticsCollector];
      [v6 sendData];

      [*(*(a1 + 32) + 72) sendDataToRemoteWorkoutSession:*(a1 + 40) completion:*(a1 + 48)];
      v7 = [v8 analyticsCollector];
      [v7 sentData];
    }

    else
    {
      v8 = v3;
      v7 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Workout session is not currently mirroring to the companion device."];
      (*(v8 + 2))(v8, 0, v7);
    }
  }

  else
  {
    v8 = v3;
  }
}

- (void)didReceiveDataFromRemoteWorkoutSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HDWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke;
  block[3] = &unk_278616D18;
  v12 = sessionCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = sessionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __76__HDWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));

  if (WeakRetained)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = objc_opt_class();
      v7 = *(*(a1 + 32) + 24);
      *buf = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v8 = v6;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Notifying client %@ of received data ", buf, 0x16u);
    }

    v9 = *(*(a1 + 32) + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__HDWorkoutSessionServer_didReceiveDataFromRemoteWorkoutSession_completion___block_invoke_671;
    v14[3] = &unk_27862CC50;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v9 sendToDestinationProcessors:v14];

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 48);
    v13 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Session client is not set up."];
    (*(v11 + 16))(v11, 0);
    v12 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)isMirroring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__HDWorkoutSessionServer_isMirroring__block_invoke;
  v5[3] = &unk_278613990;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)syncCurrentActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  workoutDataFlowLink = self->_workoutDataFlowLink;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDWorkoutSessionServer_syncCurrentActivity_completion___block_invoke;
  v10[3] = &unk_278620F08;
  v11 = activityCopy;
  v8 = activityCopy;
  completionCopy = completion;
  [(HKDataFlowLink *)workoutDataFlowLink sendToDestinationProcessors:v10];
  completionCopy[2](completionCopy, 1, 0);
}

- (void)syncWorkoutEvents:(id)events completion:(id)completion
{
  v4 = MEMORY[0x277CCA9B8];
  completionCopy = completion;
  v6 = [v4 hk_error:3 description:@"Cannot add events from remote session"];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)syncSessionEvent:(int64_t)event date:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDWorkoutSessionServer_syncSessionEvent_date___block_invoke;
  block[3] = &unk_278614E78;
  v10 = dateCopy;
  eventCopy = event;
  block[4] = self;
  v8 = dateCopy;
  dispatch_async(queue, block);
}

void __48__HDWorkoutSessionServer_syncSessionEvent_date___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 280));

  if (WeakRetained)
  {
    v3 = *(a1[4] + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__HDWorkoutSessionServer_syncSessionEvent_date___block_invoke_675;
    v8[3] = &unk_278620F30;
    v4 = a1[5];
    v10 = a1[6];
    v9 = v4;
    [v3 sendToDestinationProcessors:v8];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      *buf = 138543362;
      v12 = v7;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Workout session client is not set up.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remoteSessionDidRecover
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HDWorkoutSessionServer_remoteSessionDidRecover__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__HDWorkoutSessionServer_remoteSessionDidRecover__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));

  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = *MEMORY[0x277D85DE8];

    [v3 sendToDestinationProcessors:&__block_literal_global_678];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Workout session client is not set up.", &v8, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)unitTest_setStopEventGenerationWaitInterval:(double)interval
{
  if (interval >= 0.0)
  {
    v6[6] = v3;
    v6[7] = v4;
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__HDWorkoutSessionServer_unitTest_setStopEventGenerationWaitInterval___block_invoke;
    v6[3] = &unk_2786138F8;
    v6[4] = self;
    *&v6[5] = interval;
    dispatch_sync(queue, v6);
  }
}

double __70__HDWorkoutSessionServer_unitTest_setStopEventGenerationWaitInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 120) = result;
  return result;
}

- (void)unitTest_generateStopEvent
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDWorkoutSessionServer_unitTest_generateStopEvent__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __52__HDWorkoutSessionServer_unitTest_generateStopEvent__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] date];
  [(HDWorkoutSessionServer *)v1 _queue_generateEventWithType:v2 date:?];
}

- (void)unitTest_generateWorkoutConfigurationUpdate:(id)update
{
  updateCopy = update;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HDWorkoutSessionServer_unitTest_generateWorkoutConfigurationUpdate___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)unitTest_updateLatestActivityDate:(id)date
{
  dateCopy = date;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDWorkoutSessionServer_unitTest_updateLatestActivityDate___block_invoke;
  block[3] = &unk_27861F190;
  v9 = dateCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dateCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __60__HDWorkoutSessionServer_unitTest_updateLatestActivityDate___block_invoke(void *a1)
{
  v2 = *(a1[4] + 112);
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v5 = [WeakRetained database];
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HDWorkoutSessionServer_unitTest_updateLatestActivityDate___block_invoke_2;
  v8[3] = &unk_278613218;
  v6 = a1[5];
  v8[4] = a1[4];
  v9 = v6;
  LOBYTE(v3) = [v3 performWriteTransactionWithHealthDatabase:v5 error:&v10 block:v8];
  v7 = v10;
  *(*(a1[6] + 8) + 24) = v3;
}

- (void)unitTest_setExtendedPauseInterval:(double)interval
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HDWorkoutSessionServer_unitTest_setExtendedPauseInterval___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_sync(queue, v4);
}

double __60__HDWorkoutSessionServer_unitTest_setExtendedPauseInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 128) = result;
  return result;
}

- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity completion:(id)completion
{
  if (activity)
  {
    sessionController = self->_sessionController;
    completionCopy = completion;
    [(HDWorkoutSessionController *)sessionController fakeActivityDetection:detection workoutActivity:activity];
    (*(completion + 2))(completionCopy, 1, 0);
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    completionCopy2 = completion;
    completionCopy = [v9 hk_error:3 description:@"Workout Activity is nil"];
    (*(completion + 2))(completionCopy2, 0);
  }
}

void __68__HDWorkoutSessionServer__queue_evaluateRequestedTargetStateAtDate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v6;
      v11 = HKWorkoutSessionStateToString();
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_debug_impl(&dword_228986000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to make progress toward requested target state %{public}@: %{public}@", &v12, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __79__HDWorkoutSessionServer__queue_deleteSessionAndFinishAssociatedBuilderAtDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*(a1 + 32) + 112);
  v19 = 0;
  v7 = [v6 associatedBuilderWithTransaction:v5 error:&v19];
  v8 = v19;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 == 0;
  }

  if (!v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup associated builder while finishing session: %{public}@", buf, 0x16u);
    }
  }

  v13 = *(*(a1 + 32) + 112);
  v14 = [v5 databaseForEntity:v13];
  v15 = [v13 deleteFromDatabase:v14 error:a3];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 addWorkoutEvents:v5 dataSource:{*(a1 + 40), v7, v8}];

  v6 = *MEMORY[0x277D85DE8];
}

void __47__HDWorkoutSessionServer__queue_generateEvent___block_invoke_708(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to send current activity to remote device: %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL __55__HDWorkoutSessionServer__queue_cacheClientIdentifiers__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v7 = [WeakRetained sourceManager];
  v8 = [v7 sourceEntityForClientSource:a1[5] createOrUpdateIfNecessary:1 error:a3];

  if (v8)
  {
    v9 = [*(a1[4] + 112) setSource:v8 transaction:v5 error:a3];
    v10 = MEMORY[0x277CCC330];
    if ((v9 & 1) == 0)
    {
      _HKInitializeLogging();
      v11 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v16 = a1[4];
        v19 = 138543362;
        v20 = v16;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record client source. Client may not be able to recover correctly after a full crash.", &v19, 0xCu);
      }
    }

    if (([*(a1[4] + 112) setClientBundleIdentifier:a1[6] transaction:v5 error:a3] & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[4];
        v19 = 138543362;
        v20 = v17;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record client process bundle identifier. Client may not be correctly relaunched after a full crash.", &v19, 0xCu);
      }
    }

    if (([*(a1[4] + 112) setClientApplicationIdentifier:a1[7] transaction:v5 error:a3] & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        v19 = 138543362;
        v20 = v18;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record client application identifier. Client may not be able to recover this workout after a crash.", &v19, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void __55__HDWorkoutSessionServer__queue_startInvalidationTimer__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = WeakRetained;
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidation timer fired; finishing session for client loss.", buf, 0xCu);
    }

    v2 = [MEMORY[0x277CBEAA8] date];
    [(HDWorkoutSessionServer *)WeakRetained _queue_setTargetState:v2 date:&__block_literal_global_725 completion:?];

    [WeakRetained[13] invalidate];
    v3 = WeakRetained[13];
    WeakRetained[13] = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__HDWorkoutSessionServer__queue_startInvalidationTimer__block_invoke_722(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 272);
      v6 = 138543362;
      v7 = v5;
      _os_log_error_impl(&dword_228986000, v3, OS_LOG_TYPE_ERROR, "Failed to acquire reconnection assertion for : %{public}@", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __56__HDWorkoutSessionServer__queue_startExtendedPauseTimer__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v9;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Extended Pause timer fired.", buf, 0xCu);
    }

    if ([v9 state]== 8)
    {
      isa = v9[17].isa;
      v5 = [MEMORY[0x277CBEAA8] date];
      [(objc_class *)isa enqueueEvent:108 date:v5 error:0 completion:&__block_literal_global_727];
    }

    v2 = v9;
    WeakRetained = v9[23].isa;
    if (WeakRetained)
    {
      dispatch_source_cancel(WeakRetained);
      v6 = v9[23].isa;
      v9[23].isa = 0;

      v2 = v9;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

void __63__HDWorkoutSessionServer__queue_startLatestActivityUpdateTimer__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 14);
    v2 = objc_opt_class();
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    v4 = [v3 database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__HDWorkoutSessionServer__queue_latestActivityUpdateTimerDidFire__block_invoke;
    v10[3] = &unk_278616048;
    v10[4] = WeakRetained;
    v11 = 0;
    v5 = [v2 performWriteTransactionWithHealthDatabase:v4 error:&v11 block:v10];
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v13 = WeakRetained;
        v14 = 2114;
        v15 = v6;
        _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update latest activity date in workout session entity: %{public}@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_clientApplicationCanStartWorkoutSessionWithError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(HDHealthStoreClient *)self->_client hasEntitlement:*MEMORY[0x277CCB890]])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier = self->_applicationIdentifier;
      v24 = 138543618;
      selfCopy4 = self;
      v26 = 2114;
      v27 = applicationIdentifier;
      v7 = "%{public}@: Workout session allowed to start for %{public}@ because it has private entitlement";
LABEL_7:
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, v7, &v24, 0x16u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (self->_isRecovering)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_applicationIdentifier;
      v24 = 138543618;
      selfCopy4 = self;
      v26 = 2114;
      v27 = v8;
      v7 = "%{public}@: Workout session allowed to start for %{public}@ because it is in recovery";
      goto LABEL_7;
    }

LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  workoutManager = [WeakRetained workoutManager];
  v11 = [workoutManager allowBackgroundStartForApplicationIdentifier:self->_applicationIdentifier];

  if (v11)
  {
    goto LABEL_9;
  }

  v15 = objc_loadWeakRetained(&self->_profile);
  daemon = [v15 daemon];
  processStateManager = [daemon processStateManager];

  if ([processStateManager isApplicationFrontBoardVisibleForBundleIdentifier:self->_applicationIdentifier])
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_applicationIdentifier;
      v24 = 138543618;
      selfCopy4 = self;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout session allowed to start for %{public}@", &v24, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hk_error:14 description:@"Client application cannot start a workout session while in the background"];
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v24 = 138543618;
      selfCopy4 = self;
      v26 = 2114;
      v27 = v20;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", &v24, 0x16u);
    }

    v22 = v20;
    v12 = v22 == 0;
    if (v22)
    {
      if (error)
      {
        v23 = v22;
        *error = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HDWorkoutSessionTaskServer)taskServer
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);

  return WeakRetained;
}

@end