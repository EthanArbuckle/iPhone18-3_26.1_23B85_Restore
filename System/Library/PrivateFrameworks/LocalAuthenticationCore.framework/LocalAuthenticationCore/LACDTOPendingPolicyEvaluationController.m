@interface LACDTOPendingPolicyEvaluationController
- (BOOL)_canFinishPendingEvaluationsForRatchetState:(id)a3;
- (BOOL)_hasPendingEvaluationRecordForRequest:(id)a3;
- (BOOL)_isRatchetRestartRequest:(id)a3;
- (BOOL)_shouldPrunePendingEvaluation:(id)a3 uuid:(id)a4;
- (LACDTOPendingPolicyEvaluationController)initWithRatchetStateProvider:(id)a3 ratchetHandler:(id)a4 device:(id)a5 evaluationIdentifierFactory:(id)a6 persistentStore:(id)a7 workQueue:(id)a8;
- (id)_coolOffStartedTimestampForIdentifier:(id)a3 currentState:(id)a4;
- (void)_addPendingEvaluationRecord:(id)a3 currentState:(id)a4;
- (void)_addPendingEvaluationRecordForRequest:(id)a3 currentState:(id)a4;
- (void)_cancelPreviousNotificationForRatchetRestartWithRatchetState:(id)a3;
- (void)_checkIsRatchetStateIn:(id)a3 completion:(id)a4;
- (void)_checkShouldAddPendingEvaluationRecordForRequest:(id)a3 completion:(id)a4;
- (void)_checkShouldKeepPendingEvaluationRecordForResult:(id)a3 completion:(id)a4;
- (void)_forEachObserver:(id)a3;
- (void)_handleRatchetStateChanged:(id)a3;
- (void)_handleSwitchToCoolOffState:(id)a3;
- (void)_handleSwitchToFinalState:(id)a3;
- (void)_loadPendingEvaluations;
- (void)_postNotificationForRatchetRestartIfNeeded;
- (void)_pruneInvalidatedEvaluations;
- (void)_prunePendingEvaluationsWithUUID:(id)a3;
- (void)_registerNotificationObservers;
- (void)_removePendingEvaluationRecordForRequest:(id)a3 completion:(id)a4;
- (void)_removePendingEvaluationRecordWithIdentifier:(id)a3 completion:(id)a4;
- (void)_rescheduleNotifications;
- (void)_resetRatchetWithCompletion:(id)a3;
- (void)_restartRatchetForInvalidatedEvaluations;
- (void)_scheduleNotificationForPendingEvaluationRecord:(id)a3 after:(double)a4 validity:(double)a5;
- (void)_updatePendingEvaluationsWithUpdateBlock:(id)a3 observerFilter:(id)a4;
- (void)addObserver:(id)a3;
- (void)cancelPendingEvaluationForClient:(id)a3 ratchetIdentifier:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)handleEvent:(id)a3 sender:(id)a4;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
- (void)notificationManager:(id)a3 didReceiveUserAction:(id)a4 completionHandler:(id)a5;
- (void)policyController:(id)a3 didFinishPolicyEvaluation:(id)a4 result:(id)a5;
- (void)policyController:(id)a3 willStartPolicyEvaluation:(id)a4;
- (void)startController;
@end

@implementation LACDTOPendingPolicyEvaluationController

- (void)_postNotificationForRatchetRestartIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 hasCompletedSetup];
  v5 = [*a1 hasBeenUnlockedSinceBoot];
  v7[0] = 67109376;
  v7[1] = v4;
  v8 = 1024;
  v9 = v5;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Skipping notification for security delay restart migration: %d, unlock: %d", v7, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (LACDTOPendingPolicyEvaluationController)initWithRatchetStateProvider:(id)a3 ratchetHandler:(id)a4 device:(id)a5 evaluationIdentifierFactory:(id)a6 persistentStore:(id)a7 workQueue:(id)a8
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = LACDTOPendingPolicyEvaluationController;
  v18 = [(LACDTOPendingPolicyEvaluationController *)&v29 init];
  if (v18)
  {
    v19 = [[LACDTONotificationManager alloc] initWithReplyQueue:v17];
    notificationManager = v18->_notificationManager;
    v18->_notificationManager = v19;

    [(LACDTONotificationManager *)v18->_notificationManager setDelegate:v18];
    v21 = [[_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore alloc] initWithPersistentStore:v16 workQueue:v17];
    evaluationStore = v18->_evaluationStore;
    v18->_evaluationStore = v21;

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v18->_observers;
    v18->_observers = v23;

    v18->_shouldPostRestartRatchetPrompt = 0;
    objc_storeStrong(&v18->_ratchetStateProvider, a3);
    objc_storeStrong(&v18->_ratchetHandler, a4);
    objc_storeStrong(&v18->_device, a5);
    objc_storeStrong(&v18->_evaluationIdentifierFactory, a6);
    objc_storeStrong(&v18->_workQueue, a8);
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LACDTOPendingPolicyEvaluationController;
  [(LACDTOPendingPolicyEvaluationController *)&v4 dealloc];
}

- (void)startController
{
  dispatch_assert_queue_V2(self->_workQueue);
  [(LACDTOPendingPolicyEvaluationController *)self _loadPendingEvaluations];

  [(LACDTOPendingPolicyEvaluationController *)self _registerNotificationObservers];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_observers addObject:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__LACDTOPendingPolicyEvaluationController_addObserver___block_invoke_2;
  v6[3] = &unk_1E7A97868;
  v7 = v4;
  v5 = v4;
  [(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithUpdateBlock:&__block_literal_global_31 observerFilter:v6];
}

- (void)cancelPendingEvaluationForClient:(id)a3 ratchetIdentifier:(id)a4 reason:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a5;
  evaluationIdentifierFactory = self->_evaluationIdentifierFactory;
  v12 = a6;
  v13 = [(LACDTOPolicyEvaluationIdentifierFactory *)evaluationIdentifierFactory evaluationIdentifierForClient:a3 ratchetIdentifier:a4];
  v14 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:v13];
  v15 = LACLogDTOEvaluation();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v18 = 138412802;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Canceling pending evaluation with reason: %@, identifier: %@, did find instance: %@", &v18, 0x20u);
    }

    [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:v13 completion:v12];
  }

  else
  {
    if (v16)
    {
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Skipping cancellation of pending evaluation with reason: %@, identifier: %@", &v18, 0x16u);
    }

    v12[2](v12, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleEvent:(id)a3 sender:(id)a4
{
  v8 = a3;
  if (![v8 rawValue])
  {
    v5 = [v8 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v8 value];
      [(LACDTOPendingPolicyEvaluationController *)self _handleRatchetStateChanged:v7];
    }
  }
}

- (void)policyController:(id)a3 willStartPolicyEvaluation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isInteractiveRatchetEvaluation])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__LACDTOPendingPolicyEvaluationController_policyController_willStartPolicyEvaluation___block_invoke;
    v8[3] = &unk_1E7A97890;
    objc_copyWeak(&v10, &location);
    v9 = v7;
    [(LACDTOPendingPolicyEvaluationController *)self _checkShouldAddPendingEvaluationRecordForRequest:v9 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __86__LACDTOPendingPolicyEvaluationController_policyController_willStartPolicyEvaluation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && a2)
  {
    [WeakRetained _addPendingEvaluationRecordForRequest:*(a1 + 32) currentState:v7];
  }
}

- (void)policyController:(id)a3 didFinishPolicyEvaluation:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isInteractiveRatchetEvaluation])
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__LACDTOPendingPolicyEvaluationController_policyController_didFinishPolicyEvaluation_result___block_invoke;
    v11[3] = &unk_1E7A97890;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    [(LACDTOPendingPolicyEvaluationController *)self _checkShouldKeepPendingEvaluationRecordForResult:v10 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __93__LACDTOPendingPolicyEvaluationController_policyController_didFinishPolicyEvaluation_result___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (a2)
    {
      if (([WeakRetained _hasPendingEvaluationRecordForRequest:v7] & 1) == 0)
      {
        [v6 _addPendingEvaluationRecordForRequest:*(a1 + 32) currentState:v8];
      }
    }

    else
    {
      [WeakRetained _removePendingEvaluationRecordForRequest:v7 completion:0];
    }
  }
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  if (LACDarwinNotificationsEqual(a4, @"SignificantTimeChangeNotification"))
  {
    workQueue = self->_workQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke;
    v12[3] = &unk_1E7A95380;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    v9 = v12;
LABEL_5:
    dispatch_async(workQueue, v9);
    objc_destroyWeak(v8);
    goto LABEL_6;
  }

  if (LACDarwinNotificationsEqual(a4, @"com.apple.springboard.lockstate"))
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke_2;
    block[3] = &unk_1E7A95380;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    v9 = block;
    goto LABEL_5;
  }

LABEL_6:
  objc_destroyWeak(&location);
}

void __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _rescheduleNotifications];
    WeakRetained = v2;
  }
}

void __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _postNotificationForRatchetRestartIfNeeded];
    WeakRetained = v2;
  }
}

- (void)_registerNotificationObservers
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 addObserver:self notification:@"SignificantTimeChangeNotification"];

  v4 = +[LACDarwinNotificationCenter sharedInstance];
  [v4 addObserver:self notification:@"com.apple.springboard.lockstate"];
}

- (void)_rescheduleNotifications
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__LACDTOPendingPolicyEvaluationController__rescheduleNotifications__block_invoke;
  v3[3] = &unk_1E7A978B8;
  objc_copyWeak(&v4, &location);
  [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693850 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __67__LACDTOPendingPolicyEvaluationController__rescheduleNotifications__block_invoke(uint64_t a1, char a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [WeakRetained[3] pendingEvaluations];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            [v7 _cancelPreviousNotificationForPendingEvaluationRecord:v13 scheduledOnly:0];
            v14 = 0.0;
            if ([v5 rawValue] == 1)
            {
              [v5 duration];
              v14 = v15;
            }

            [v5 resetDuration];
            [v7 _scheduleNotificationForPendingEvaluationRecord:v13 after:v14 validity:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v10);
      }

      [v7[3] persistEvaluations];
      v17 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7[3] pendingEvaluations];
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Updated pending evaluations after significant time change: %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Did not update pending evaluations after significant time change because we are not in the state of interest", buf, 2u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)notificationManager:(id)a3 didReceiveUserAction:(id)a4 completionHandler:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = LACLogDTONotifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - will handle notification action %{public}@", &v11, 0x16u);
  }

  if ([v7 isEqualToString:@"com.apple.coreauthd.notifications.action.securityDelay.dismiss"])
  {
    [(LACDTOPendingPolicyEvaluationController *)self _pruneInvalidatedEvaluations];
  }

  else if ([v7 isEqualToString:@"com.apple.coreauthd.notifications.action.securityDelay.start"])
  {
    [(LACDTOPendingPolicyEvaluationController *)self _restartRatchetForInvalidatedEvaluations];
  }

  v8[2](v8);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_checkShouldAddPendingEvaluationRecordForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__LACDTOPendingPolicyEvaluationController__checkShouldAddPendingEvaluationRecordForRequest_completion___block_invoke;
  v10[3] = &unk_1E7A978E0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693868 completion:v10];
}

void __103__LACDTOPendingPolicyEvaluationController__checkShouldAddPendingEvaluationRecordForRequest_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) identifier];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Does not need pending evaluation record for '%@' for current ratchet state: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_checkShouldKeepPendingEvaluationRecordForResult:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isSuccess])
  {
    v8 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 identifier];
      *buf = 138412290;
      v20 = v9;
      v10 = "Does not need pending evaluation record for '%@' after success";
LABEL_8:
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else
  {
    v11 = [v6 error];
    if (!v11 || (v12 = v11, [v6 error], v13 = objc_claimAutoreleasedReturnValue(), v14 = +[LACError error:hasCode:](LACError, "error:hasCode:", v13, -2), v13, v12, !v14))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __103__LACDTOPendingPolicyEvaluationController__checkShouldKeepPendingEvaluationRecordForResult_completion___block_invoke;
      v16[3] = &unk_1E7A978E0;
      v17 = v6;
      v18 = v7;
      [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693880 completion:v16];

      goto LABEL_11;
    }

    v8 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 identifier];
      *buf = 138412290;
      v20 = v9;
      v10 = "Does not need pending evaluation record for '%@' after user cancel";
      goto LABEL_8;
    }
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

void __103__LACDTOPendingPolicyEvaluationController__checkShouldKeepPendingEvaluationRecordForResult_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogDTOEvaluation();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) identifier];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      v9 = "Does need pending evaluation record for '%@' for current ratchet state: %@";
LABEL_6:
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
    }
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) identifier];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v9 = "Does not need pending evaluation record for '%@' for current ratchet state: %@";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleRatchetStateChanged:(id)a3
{
  v5 = a3;
  v4 = [v5 uuid];
  [(LACDTOPendingPolicyEvaluationController *)self _prunePendingEvaluationsWithUUID:v4];

  [(LACDTOPendingPolicyEvaluationController *)self _handleSwitchToCoolOffState:v5];
  [(LACDTOPendingPolicyEvaluationController *)self _handleSwitchToFinalState:v5];
  [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForRatchetRestartWithRatchetState:v5];
}

- (void)_handleSwitchToCoolOffState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 rawValue] == 1)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __71__LACDTOPendingPolicyEvaluationController__handleSwitchToCoolOffState___block_invoke;
    v13 = &unk_1E7A97908;
    objc_copyWeak(&v16, &location);
    v14 = v4;
    v6 = v5;
    v15 = v6;
    [(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithBlock:&v10];
    v7 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations:v10];
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Updated pending evaluations after switch to cool off state: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x1E69E9840];
}

BOOL __71__LACDTOPendingPolicyEvaluationController__handleSwitchToCoolOffState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) duration];
  v6 = v5;
  [*(a1 + 32) resetDuration];
  [WeakRetained _scheduleNotificationForPendingEvaluationRecord:v3 after:v6 validity:v7];

  v8 = [v3 coolOffStarted];

  if (!v8)
  {
    [v3 setCoolOffStarted:*(a1 + 40)];
  }

  return v8 == 0;
}

- (void)_handleSwitchToFinalState:(id)a3
{
  v4 = a3;
  if ([(LACDTOPendingPolicyEvaluationController *)self _canFinishPendingEvaluationsForRatchetState:v4])
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 500000000);
    workQueue = self->_workQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__LACDTOPendingPolicyEvaluationController__handleSwitchToFinalState___block_invoke;
    v7[3] = &unk_1E7A97930;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = v4;
    dispatch_after(v5, workQueue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69__LACDTOPendingPolicyEvaluationController__handleSwitchToFinalState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] pendingEvaluations];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = *(a1 + 32);
          [*(a1 + 40) resetDuration];
          [v10 _scheduleNotificationForPendingEvaluationRecord:v9 after:0.0 validity:v11];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isRatchetRestartRequest:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 hasSuffix:@"com.apple.coreauthd.dto.request.identifier.restart"];

  return v4;
}

- (BOOL)_hasPendingEvaluationRecordForRequest:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:v4])
  {
    v5 = [v4 payload];
    v6 = [v5 objectForKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
  }

  else
  {
    v5 = [v4 identifier];
    v22[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  v7 = v6;

  if ([v7 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:*(*(&v17 + 1) + 8 * i), v17];
          v12 &= v14 != 0;
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_addPendingEvaluationRecordForRequest:(id)a3 currentState:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 uuid];
  v38 = v6;
  v39 = v9;
  v40 = v7;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:v6])
  {
    v10 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v52;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v51 + 1) + 8 * i);
          if ([v16 isInvalidated])
          {
            [v16 identifier];
            v17 = v10;
            v19 = v18 = v8;
            v20 = [(LACDTOPendingPolicyEvaluationController *)self _coolOffStartedTimestampForIdentifier:v19 currentState:v40];

            v8 = v18;
            v10 = v17;
            [v16 setNotificationScheduledAt:0];
            [v16 setRatchetUUID:v39];
            [v16 setCoolOffStarted:v20];
            [v16 setIsInvalidated:0];
            [v8 addObject:v16];
            v21 = [v16 identifier];
            [v17 addObject:v21];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v13);
    }

    v22 = [v38 payload];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    v28 = v25;

    [v28 setObject:v10 forKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
    [v38 updatePayload:v28];
  }

  else
  {
    v26 = [v6 identifier];
    v27 = [(LACDTOPendingPolicyEvaluationController *)self _coolOffStartedTimestampForIdentifier:v26 currentState:v7];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke;
    v46[3] = &unk_1E7A97958;
    v47 = v26;
    v48 = v6;
    v49 = v9;
    v50 = v27;
    v28 = v27;
    v10 = v26;
    v29 = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke(v46);
    [v8 addObject:v29];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = v8;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v42 + 1) + 8 * j);
        [(LACDTOPendingPolicyEvaluationController *)self _addPendingEvaluationRecord:v35 currentState:v40, v38];
        v36 = [v35 coolOffStarted];

        if (v36)
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke_2;
          v41[3] = &unk_1E7A97980;
          v41[4] = v35;
          [(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithBlock:v41];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v32);
  }

  [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
  v37 = *MEMORY[0x1E69E9840];
}

_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation *__94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke(uint64_t a1)
{
  v2 = [[_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation alloc] initWithIdentifier:*(a1 + 32)];
  v3 = [*(a1 + 40) options];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1063];
  v5 = [v3 objectForKeyedSubscript:v4];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCallbackReason:v5];

  v6 = [*(a1 + 40) options];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1064];
  v8 = [v6 objectForKeyedSubscript:v7];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCallbackURL:v8];

  [(LACDTOMutablePendingPolicyEvaluation *)v2 setNotificationScheduledAt:0];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setRatchetUUID:*(a1 + 48)];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCoolOffStarted:*(a1 + 56)];

  return v2;
}

- (id)_coolOffStartedTimestampForIdentifier:(id)a3 currentState:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:v6];
  if (v8)
  {
    v9 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AB78];
      v11 = [v8 coolOffStarted];
      v12 = [v10 localizedStringFromDate:v11 dateStyle:0 timeStyle:3];
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ is using the existing cool off timestamp: %@", &v19, 0x16u);
    }

    v13 = [v8 coolOffStarted];
  }

  else if ([v7 rawValue] == 1)
  {
    v13 = [MEMORY[0x1E695DF00] now];
    v14 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x1E696AB78] localizedStringFromDate:v13 dateStyle:0 timeStyle:3];
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ will use the current time for cool off timestamp: %@", &v19, 0x16u);
    }
  }

  else
  {
    v16 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ has no cool off timestamp yet", &v19, 0xCu);
    }

    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_addPendingEvaluationRecord:(id)a3 currentState:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 isInvalidated];
  v9 = LACLogDTOEvaluation();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [v6 identifier];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Not adding new pending evaluation with identifier: %@, the evaluation is invalidated", buf, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      v12 = [v6 identifier];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Will add new pending evaluation with identifier: %@", buf, 0xCu);
    }

    if ([v7 rawValue] != 1 && objc_msgSend(v7, "rawValue") != 2)
    {
      [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForPendingEvaluationRecord:v6 scheduledOnly:0];
    }

    if ([v7 rawValue] == 1)
    {
      [v7 duration];
      v14 = v13;
      [v7 resetDuration];
      [(LACDTOPendingPolicyEvaluationController *)self _scheduleNotificationForPendingEvaluationRecord:v6 after:v14 validity:v15];
    }

    [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore addPendingEvaluation:v6];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecord_currentState___block_invoke;
    v17[3] = &unk_1E7A979A8;
    v17[4] = self;
    [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removePendingEvaluationRecordForRequest:(id)a3 completion:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = a4;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:v6])
  {
    v7 = [v6 payload];
    v19 = [v7 objectForKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
  }

  else
  {
    v8 = [v6 identifier];
    v33[0] = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  if ([v19 count])
  {
    v9 = dispatch_group_create();
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__8;
    v30[4] = __Block_byref_object_dispose__8;
    v31 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v19;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          dispatch_group_enter(v9);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke;
          v23[3] = &unk_1E7A979D0;
          v25 = v30;
          v24 = v9;
          [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:v14 completion:v23];
        }

        v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v11);
    }

    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke_2;
    block[3] = &unk_1E7A979F8;
    v21 = v18;
    v22 = v30;
    dispatch_group_notify(v9, workQueue, block);

    _Block_object_dispose(v30, 8);
  }

  else
  {
    (*(v18 + 2))(v18, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)_removePendingEvaluationRecordWithIdentifier:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E7A95A10;
  v8 = v7;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:v6];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Will remove pending evaluation with identifier: %@", buf, 0xCu);
  }

  [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore removePendingEvaluationWith:v6];
  [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForPendingEvaluationRecord:v10 scheduledOnly:1];
  v12 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v13 = [v12 count] == 0;

  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_31;
    v18[3] = &unk_1E7A979A8;
    v18[4] = self;
    [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v18];
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_2;
    v15[3] = &unk_1E7A97A20;
    objc_copyWeak(&v17, buf);
    v16 = v9;
    [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693898 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_5:
    (*(v9 + 2))(v9, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && a2 && ([WeakRetained[3] pendingEvaluations], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v8 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 0;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Reseting Ratchet as there are no pending evaluations", v9, 2u);
    }

    [v5 _resetRatchetWithCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_updatePendingEvaluationsWithUpdateBlock:(id)a3 observerFilter:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v6[2](v6, v12))
        {
          objc_initWeak(&location, self);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __99__LACDTOPendingPolicyEvaluationController__updatePendingEvaluationsWithUpdateBlock_observerFilter___block_invoke;
          v15[3] = &unk_1E7A97A68;
          v16 = v14;
          objc_copyWeak(&v17, &location);
          v15[4] = v12;
          [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v15];
          objc_destroyWeak(&v17);

          objc_destroyWeak(&location);
          v9 = 1;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    if (v9)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __99__LACDTOPendingPolicyEvaluationController__updatePendingEvaluationsWithUpdateBlock_observerFilter___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v4 pendingEvaluationController:WeakRetained updatedPendingEvaluation:*(a1 + 32)];
  }
}

- (BOOL)_canFinishPendingEvaluationsForRatchetState:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__LACDTOPendingPolicyEvaluationController__canFinishPendingEvaluationsForRatchetState___block_invoke;
  v7[3] = &unk_1E7A97A90;
  v8 = v3;
  v4 = v3;
  v5 = [&unk_1F26938B0 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

BOOL __87__LACDTOPendingPolicyEvaluationController__canFinishPendingEvaluationsForRatchetState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  result = v6 == [*(a1 + 32) rawValue];
  *a4 = result;
  return result;
}

- (void)_cancelPreviousNotificationForRatchetRestartWithRatchetState:(id)a3
{
  if ([a3 rawValue] >= 1)
  {
    notificationManager = self->_notificationManager;

    [(LACDTONotificationManager *)notificationManager cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:&__block_literal_global_50];
  }
}

void __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = LACLogDTOEvaluation();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke_cold_1(v3, v6, v7, v8, v9, v10, v11, v12);
      }

      WeakRetained[48] = 1;
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Posted notification for security delay restart", v13, 2u);
      }
    }
  }
}

- (void)_scheduleNotificationForPendingEvaluationRecord:(id)a3 after:(double)a4 validity:(double)a5
{
  v8 = a3;
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a4];
  if (([v8 isNotificationScheduledForDate:v9] & 1) == 0 && (objc_msgSend(v8, "hasNotifiedUserAboutCompletion") & 1) == 0)
  {
    [v8 setNotificationScheduledAt:v9];
    objc_initWeak(&location, self);
    notificationManager = self->_notificationManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke;
    v11[3] = &unk_1E7A97AB8;
    objc_copyWeak(v13, &location);
    v12 = v8;
    v13[1] = *&a4;
    [(LACDTONotificationManager *)notificationManager scheduleSecurityDelayFinishedNotificationForPendingEvaluation:v12 after:v11 validity:a4 completion:a5];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      v5 = (a1 + 32);
      [v6 setNotificationScheduledAt:0];
      v7 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke_cold_1(v5, v3, v7);
      }
    }

    else
    {
      v7 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v11 = 138543618;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Scheduled notification for evaluation: %{public}@ after: %.2f secs", &v11, 0x16u);
      }
    }

    [WeakRetained[3] persistEvaluations];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_checkIsRatchetStateIn:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  ratchetStateProvider = self->_ratchetStateProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__LACDTOPendingPolicyEvaluationController__checkIsRatchetStateIn_completion___block_invoke;
  v11[3] = &unk_1E7A97AE0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateWithCompletion:v11];
}

void __77__LACDTOPendingPolicyEvaluationController__checkIsRatchetStateIn_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "rawValue")}];
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) containsObject:v6], v7);
  }
}

- (void)_forEachObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = MEMORY[0x1E695DEC8];
  v6 = [(NSHashTable *)self->_observers allObjects];
  v7 = [v5 arrayWithArray:v6];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_resetRatchetWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  ratchetHandler = self->_ratchetHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__LACDTOPendingPolicyEvaluationController__resetRatchetWithCompletion___block_invoke;
  v7[3] = &unk_1E7A957C0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(LACDTORatchetHandler *)ratchetHandler resetRatchetWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__LACDTOPendingPolicyEvaluationController__resetRatchetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    if (!v4)
    {
      [WeakRetained[4] ratchetStateWithCompletion:&__block_literal_global_53];
    }
  }
}

- (void)_restartRatchetForInvalidatedEvaluations
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * v7) isInvalidated])
        {

          v9 = LACLogDTOEvaluation();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Restarting security delay for invalidated evaluations", v11, 2u);
          }

          [(LACDTORatchetHandler *)self->_ratchetHandler restartRatchetWithIdentifier:@"com.apple.coreauthd.dto.request.identifier.restart"];
          goto LABEL_15;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Not restarting security delay - no invalidated evaluations", v11, 2u);
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_loadPendingEvaluations
{
  objc_initWeak(&location, self);
  ratchetStateProvider = self->_ratchetStateProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke;
  v4[3] = &unk_1E7A95B78;
  objc_copyWeak(&v5, &location);
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      v16 = *(WeakRetained + 3);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54;
      v17[3] = &unk_1E7A97B08;
      objc_copyWeak(&v19, (a1 + 32));
      v18 = v5;
      [v16 loadPersistedEvaluationsWithCompletion:v17];

      objc_destroyWeak(&v19);
    }
  }
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LACLogDTOEvaluation();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v28 = v5;
        v19 = 0;
        v29 = 0;
        v20 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            if ([v22 isInvalidated])
            {
              [WeakRetained[3] addPendingEvaluation:v22];
            }

            else
            {
              v23 = [*(a1 + 32) uuid];
              v24 = [WeakRetained _shouldPrunePendingEvaluation:v22 uuid:v23];

              if (v24)
              {
                v25 = [*(a1 + 32) uuid];

                v19 = 1;
                if (!v25)
                {
                  [v22 setIsInvalidated:1];
                  [WeakRetained[3] addPendingEvaluation:v22];
                  v29 = 1;
                }
              }

              else
              {
                v26 = [v22 ratchetUUID];

                if (!v26)
                {
                  v27 = [*(a1 + 32) uuid];
                  [v22 setRatchetUUID:v27];
                }

                [WeakRetained _addPendingEvaluationRecord:v22 currentState:*(a1 + 32)];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v18);

        if (v29)
        {
          [WeakRetained _scheduleNotificationForRatchetRestart];
        }

        v6 = 0;
        v5 = v28;
        if (v19)
        {
          [WeakRetained[3] persistEvaluations];
        }
      }

      else
      {
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_pruneInvalidatedEvaluations
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "Pruning invalidated evaluations", buf, 2u);
  }

  v4 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v5 = [v4 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isInvalidated])
        {
          evaluationStore = self->_evaluationStore;
          v14 = [v12 identifier];
          [(LACDTOPendingPolicyEvaluationStoreType *)evaluationStore removePendingEvaluationWith:v14];

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);

    if (v9)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_prunePendingEvaluationsWithUUID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v4;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Pruning pending evaluations with uuid: %{public}@", buf, 0xCu);
  }

  v6 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v7 = [v6 copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([(LACDTOPendingPolicyEvaluationController *)self _shouldPrunePendingEvaluation:v14 uuid:v4, v18])
        {
          v15 = [v14 identifier];
          [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:v15 completion:&__block_literal_global_57];
        }

        else
        {
          v16 = [v14 ratchetUUID];

          if (!v16)
          {
            [v14 setRatchetUUID:v4];
            v11 = 1;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);

    if (v11)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPrunePendingEvaluation:(id)a3 uuid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 ratchetUUID];

  if (v7)
  {
    v8 = [v5 ratchetUUID];
    v9 = [v6 isEqualToString:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = v6 == 0;
  }

  return v9;
}

void __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Did not post notification for security delay restart error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Did not schedule notification for evaluation: %{public}@ due to error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Unable to load pending evaluations, ratchet state failure: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Unable to load pending evaluations with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end