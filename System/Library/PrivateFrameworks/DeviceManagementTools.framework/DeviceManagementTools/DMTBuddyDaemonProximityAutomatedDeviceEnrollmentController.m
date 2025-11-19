@interface DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController
- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController)initWithBroadcastingProvider:(id)a3 enrollmentPrimitives:(id)a4 deviceInformationPrimitives:(id)a5 enrollmentInformationPrimitives:(id)a6 reachabilityPrimitives:(id)a7 wifiActivationPrimitives:(id)a8 wifiPrimitives:(id)a9 profileInstallationPrimitives:(id)a10 destructiveErasePrimitives:(id)a11 powerOffPrimitives:(id)a12 delegate:(id)a13;
- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentControllerDelegate)delegate;
- (NSString)remoteHostLocaleIdentifier;
- (id)makeFailureCompletionViewModelWithError:(id)a3;
- (id)makeStatusViewModelForCurrentEnrollerState;
- (id)makeSuccessfulCompletionViewModel;
- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6;
- (void)addHandlersToBroadcaster:(id)a3;
- (void)beginBroadcasting;
- (void)beginEraseAndShutdown;
- (void)beginObservingEnroller;
- (void)broadcasterEncounteredError:(id)a3;
- (void)broadcasterHasPairedTransport:(id)a3;
- (void)broadcasterUpdatedDisplayedPin:(id)a3;
- (void)dealloc;
- (void)delegateEnrollmentError:(id)a3;
- (void)delegateStatusUpdate;
- (void)delegateSuccessfullEnrollment;
- (void)endBroadcasting;
- (void)endObservingEnrollerIfNeeded;
- (void)handleServerFailureWithError:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeHandlersFromBroadcaster:(id)a3;
- (void)resetNetworking;
- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5;
- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4;
- (void)serverDidInvalidate:(id)a3;
@end

@implementation DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "%{public}@ dealloc'd", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController)initWithBroadcastingProvider:(id)a3 enrollmentPrimitives:(id)a4 deviceInformationPrimitives:(id)a5 enrollmentInformationPrimitives:(id)a6 reachabilityPrimitives:(id)a7 wifiActivationPrimitives:(id)a8 wifiPrimitives:(id)a9 profileInstallationPrimitives:(id)a10 destructiveErasePrimitives:(id)a11 powerOffPrimitives:(id)a12 delegate:(id)a13
{
  v41 = a3;
  v18 = a4;
  v39 = a5;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v42 = a8;
  v22 = a9;
  v23 = v18;
  v24 = a10;
  v25 = a11;
  v26 = v21;
  v27 = a12;
  v28 = a13;
  v43.receiver = self;
  v43.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
  v29 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v43 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_broadcastingProvider, a3);
    objc_storeWeak(&v30->_delegate, v28);
    objc_storeStrong(&v30->_deviceInformationPrimitives, v39);
    v31 = [[DMTAutomatedDeviceEnroller alloc] initWithEnrollmentPrimitives:v23 enrollmentInformationPrimitives:v20 reachabilityPrimitives:v26 activationPrimitives:v42 wifiPrimitives:v22 profileInstallationPrimitives:v24 destructiveErasePrimitives:v25 nonDestructiveErasePrimitives:0 powerOffPrimitives:v27];
    enroller = v30->_enroller;
    v30->_enroller = v31;

    v33 = [[DMTTaskOperationBuilder alloc] initWithDeviceInfoPrimitives:v19 enrollmentPrerequisiteReceiver:v30->_enroller enrollmentInitiator:v30->_enroller enrollmentStateProvider:v30->_enroller];
    operationBuilder = v30->_operationBuilder;
    v30->_operationBuilder = v33;

    v35 = objc_opt_new();
    taskServer = v30->_taskServer;
    v30->_taskServer = v35;

    [(CATTaskServer *)v30->_taskServer setDelegate:v30];
  }

  return v30;
}

- (NSString)remoteHostLocaleIdentifier
{
  v2 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
  v3 = [v2 remoteHostLocaleIdentifier];

  return v3;
}

- (void)beginBroadcasting
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive])
    {
      v4 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(a2);
        v14 = 138543362;
        v15 = v5;
        _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Ignoring %{public}@, already active", &v14, 0xCu);
      }
    }

    else
    {
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setActive:1];
      v7 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v14 = 138543362;
        v15 = v8;
        _os_log_impl(&dword_24891B000, v7, OS_LOG_TYPE_INFO, "%{public}@", &v14, 0xCu);
      }

      v9 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcastingProvider];
      v10 = [v9 broadcaster];

      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self addHandlersToBroadcaster:v10];
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setBroadcaster:v10];
      v11 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [v11 addObserver:self forKeyPath:@"broadcasting" options:3 context:@"EnrollmentControllerContext"];

      v12 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [v12 startBroadcasting];
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)endBroadcasting
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive])
    {
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setActive:0];
      v4 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(a2);
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
      }

      v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self removeHandlersFromBroadcaster:v6];

      v7 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [v7 removeObserver:self forKeyPath:@"broadcasting" context:@"EnrollmentControllerContext"];

      v8 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
      [v8 invalidate];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_endBroadcasting__block_invoke;
      block[3] = &unk_278F5DEC8;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v10 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_24891B000, v10, OS_LOG_TYPE_INFO, "Ignoring %{public}@, not active", buf, 0xCu);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)beginEraseAndShutdown
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = _DMTLogGeneral_6();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "%{public}@", &v9, 0xCu);
    }

    v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    [v6 eraseAndShutDownWithExternalError:0];

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)addHandlersToBroadcaster:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke;
  v9[3] = &unk_278F5E740;
  objc_copyWeak(&v10, &location);
  [v4 setShowPinHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_2;
  v7[3] = &unk_278F5E390;
  objc_copyWeak(&v8, &location);
  [v4 setShowErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_3;
  v5[3] = &unk_278F5E768;
  objc_copyWeak(&v6, &location);
  [v4 setPairedTransportHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterUpdatedDisplayedPin:v3];
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterEncounteredError:v3];
}

void __87__DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController_addHandlersToBroadcaster___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained broadcasterHasPairedTransport:v3];
}

- (void)removeHandlersFromBroadcaster:(id)a3
{
  v3 = a3;
  [v3 setShowPinHandler:0];
  [v3 setShowErrorHandler:0];
  [v3 setPairedTransportHandler:0];
}

- (void)beginObservingEnroller
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Already observing enroller, ignoring %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)endObservingEnrollerIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isObservingEnroller])
  {
    v4 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    [v4 removeObserver:self forKeyPath:@"enrollmentState" context:@"EnrollmentControllerContext"];

    v5 = *MEMORY[0x277D85DE8];

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setObservingEnroller:0];
  }

  else
  {
    v6 = _DMTLogGeneral_6();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Not observing enroller, ignoring %{public}@", &v9, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)broadcasterUpdatedDisplayedPin:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if ([(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isActive])
    {
      if (v5)
      {
        v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
        [v6 enrollmentController:self needsToDisplayPin:v5];
      }

      else
      {
        v6 = _DMTLogGeneral_6();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterUpdatedDisplayedPin:];
        }
      }
    }

    else
    {
      v7 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_24891B000, v7, OS_LOG_TYPE_INFO, "Ignoring updated Pin, no longer active", v8, 2u);
      }
    }
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)broadcasterEncounteredError:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = [v5 userInfo];
    v7 = *MEMORY[0x277CCA7E8];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (v10)
    {
      v11 = [v10 domain];
      if ([v11 isEqualToString:*MEMORY[0x277CF9518]])
      {
        v12 = [v10 code];

        if (v12 == 702)
        {
          v13 = _DMTLogGeneral_6();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterEncounteredError:v13];
          }

LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v14 = _DMTLogGeneral_6();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController broadcasterEncounteredError:v5];
    }

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endBroadcasting];
    v13 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
    [v13 enrollmentController:self hasBroadcastError:v5];
    goto LABEL_12;
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
LABEL_13:
}

- (void)broadcasterHasPairedTransport:(id)a3
{
  v8 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self beginObservingEnroller];
    v5 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self taskServer];
    [v5 connectWithClientTransport:v8];

    v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
    v7 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeStatusViewModelForCurrentEnrollerState];
    [v6 enrollmentControllerHasPaired:self withInitialViewModel:v7];
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)delegateSuccessfullEnrollment
{
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setComplete:1];
  v3 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_INFO, "Successfully enrolled", v6, 2u);
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self resetNetworking];
  v4 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeSuccessfulCompletionViewModel];
  v5 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [v5 enrollmentController:self hasCompletedWithViewModel:v4];
}

- (void)handleServerFailureWithError:(id)a3
{
  v4 = a3;
  if (![(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self isComplete])
  {
    v5 = _DMTLogGeneral_6();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:];
    }

    v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    v7 = [v6 enrollmentState];

    v8 = _DMTLogGeneral_6();
    v9 = v8;
    if (v7 >= 5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:v7];
      }

      goto LABEL_12;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController handleServerFailureWithError:v7];
    }

    if (!v4)
    {
      v9 = DMTErrorWithCodeAndUserInfo(90, 0);
      [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:v9];
LABEL_12:

      goto LABEL_13;
    }

    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:v4];
  }

LABEL_13:
}

- (void)delegateEnrollmentError:(id)a3
{
  v4 = a3;
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self setComplete:1];
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self resetNetworking];
  v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeFailureCompletionViewModelWithError:v4];

  v5 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [v5 enrollmentController:self hasCompletedWithViewModel:v6];
}

- (void)delegateStatusUpdate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "enrollmentState")}];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_24891B000, v3, OS_LOG_TYPE_DEFAULT, "Enroller changed status to: %{public}@", &v10, 0xCu);
  }

  v7 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self makeStatusViewModelForCurrentEnrollerState];
  v8 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegate];
  [v8 enrollmentController:self hasUpdatedWithViewModel:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetNetworking
{
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endBroadcasting];
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self endObservingEnrollerIfNeeded];
  v3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self taskServer];
  [v3 disconnectAllClientSessions];
}

- (id)makeStatusViewModelForCurrentEnrollerState
{
  v15 = [DMTEnrollmentStatusViewModel alloc];
  v3 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v4 = [v3 organizationName];
  v5 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v6 = [v5 organizationType];
  v7 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  v8 = [v7 deviceClass];
  v9 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v10 = [v9 enrollmentState];
  v11 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v12 = [v11 networkName];
  v13 = [(DMTEnrollmentStatusViewModel *)v15 initWithOrganizationName:v4 organizationType:v6 localizedDeviceClass:v8 enrollmentState:v10 networkName:v12];

  return v13;
}

- (id)makeSuccessfulCompletionViewModel
{
  v3 = [DMTEnrollmentCompletionViewModel alloc];
  v4 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v5 = [v4 organizationName];
  v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v7 = [v6 organizationType];
  v8 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v9 = [v8 mdmServerName];
  v10 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  v11 = [v10 deviceClass];
  v12 = [(DMTEnrollmentCompletionViewModel *)v3 initSuccessfulEnrollmentInOrganizationName:v5 organizationType:v7 mdmServerName:v9 localizedDeviceClass:v11];

  return v12;
}

- (id)makeFailureCompletionViewModelWithError:(id)a3
{
  v4 = a3;
  v5 = [DMTEnrollmentCompletionViewModel alloc];
  v6 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self deviceInformationPrimitives];
  v7 = [v6 deviceClass];
  v8 = [(DMTEnrollmentCompletionViewModel *)v5 initForEnrollmentFailureWithError:v4 localizedDeviceClass:v7];

  return v8;
}

- (void)server:(id)a3 clientSession:(id)a4 didInterruptWithError:(id)a5
{
  v6 = a5;
  v7 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController server:clientSession:didInterruptWithError:];
  }

  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:v6];
}

- (void)server:(id)a3 clientSessionDidDisconnect:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_24891B000, v6, OS_LOG_TYPE_INFO, "Client Session did disconnect: %{public}@", &v9, 0xCu);
  }

  v7 = DMTErrorWithCodeAndUserInfo(91, 0);
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)serverDidInvalidate:(id)a3
{
  v4 = _DMTLogGeneral_6();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Task Server invalidated", v6, 2u);
  }

  v5 = DMTErrorWithCodeAndUserInfo(90, 0);
  [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self handleServerFailureWithError:v5];
}

- (id)server:(id)a3 clientSession:(id)a4 operationForRequest:(id)a5 error:(id *)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self operationBuilder];
  LODWORD(a6) = [v9 validateRequest:v8 error:a6];

  if (a6)
  {
    v10 = _DMTLogGeneral_6();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_24891B000, v10, OS_LOG_TYPE_INFO, "Creating operation for request: %{public}@", &v17, 0xCu);
    }

    v13 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self operationBuilder];
    v14 = [v13 taskOperationForRequest:v8];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 != @"EnrollmentControllerContext")
  {
    v28.receiver = self;
    v28.super_class = DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController;
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)&v28 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_24;
  }

  v13 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self broadcaster];
  if (v13 == v11)
  {
    v14 = [v10 isEqualToString:@"broadcasting"];

    if (!v14)
    {
      goto LABEL_16;
    }

    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (([v13 isEqualToNumber:v15] & 1) == 0)
    {
      v16 = _DMTLogGeneral_6();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        if ([v13 BOOLValue])
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        v20 = [v15 BOOLValue];
        *buf = 138543874;
        v21 = @"NO";
        if (v20)
        {
          v21 = @"YES";
        }

        v30 = v18;
        v31 = 2114;
        v32 = v19;
        v33 = 2114;
        v34 = v21;
        _os_log_impl(&dword_24891B000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: isBroadcasting changed from %{public}@ to %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_16:
  v22 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  if (v22 != v11)
  {
LABEL_17:

    goto LABEL_24;
  }

  v23 = [v10 isEqualToString:@"enrollmentState"];

  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
  v25 = [v24 enrollmentState];

  if (v25 == 14)
  {
    v22 = [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self enroller];
    v26 = [v22 enrollmentError];
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateEnrollmentError:v26];

    goto LABEL_17;
  }

  if (v25 == 10)
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateSuccessfullEnrollment];
  }

  else
  {
    [(DMTBuddyDaemonProximityAutomatedDeviceEnrollmentController *)self delegateStatusUpdate];
  }

LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
}

- (DMTBuddyDaemonProximityAutomatedDeviceEnrollmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)broadcasterUpdatedDisplayedPin:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "%{public}@ was asked to dismiss the Pin, since we can't tell this apart from successful pairings, we'll ignore it", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)broadcasterEncounteredError:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 verboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Broadcaster has encountered error, forwarding to delegate: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleServerFailureWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Handling server failure: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)handleServerFailureWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2(&dword_24891B000, v2, v3, "Tearing down due to enrollment state: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleServerFailureWithError:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "Current enrollment state is: %{public}@, ignoring failure, we're already independent", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)server:clientSession:didInterruptWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Client Session interrupted: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end