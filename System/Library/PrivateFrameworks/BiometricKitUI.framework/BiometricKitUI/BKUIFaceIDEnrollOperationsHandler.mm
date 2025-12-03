@interface BKUIFaceIDEnrollOperationsHandler
- (BKUIFaceIDEnrollOperationsHandler)init;
- (BKUIFaceIDEnrollOperationsHandler)initWithBKPearlEnrollmentType:(int64_t)type;
- (BKUIPearlEnrollOperationsDelegate)operationsDelegate;
- (BOOL)_completeOperationWithError:(id *)error;
- (BOOL)_matchOperationPreflightCheck:(id *)check;
- (BOOL)_validateEnrolledPoses:(id)poses;
- (BOOL)completeCurrentEnrollOperationWithError:(id *)error;
- (BOOL)isActive;
- (BOOL)shouldShowRetryUI;
- (id)bkIdentities;
- (id)getAuthContextForCredentialError:(id *)error;
- (id)getAuthContextForCredentialError:(id *)error authContext:(id *)context;
- (int64_t)glassesRequirement;
- (void)_cleanupEnroll;
- (void)_cleanupEnroll:(BOOL)enroll;
- (void)_removeIdentity;
- (void)advanceEnrollmentState;
- (void)bkIdentities;
- (void)cancelCurrentEnrollmentOperationIfUnfinished;
- (void)cancelEnroll;
- (void)cancelEnrollForRotation;
- (void)cancelEnrollPreserveIdentity;
- (void)enrollOperation:(id)operation failedWithReason:(int64_t)reason;
- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result;
- (void)enrollOperation:(id)operation percentCompleted:(int64_t)completed;
- (void)enrollOperation:(id)operation progressedWithInfo:(id)info;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)matchOperation:(id)operation failedToMatchWithUserPositionSubstate:(int)substate operationCompleteAction:(id)action;
- (void)matchUserForGlassesPhaseEnrollmentWithCompletionAction:(id)action;
- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)action;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)retryOperation;
- (void)retryPressed;
- (void)setSuspend:(BOOL)suspend;
- (void)startEnrollForEnrollmentType:(int64_t)type glassesRequirement:(int64_t)requirement identity:(id)identity operationStartedActionBlock:(id)block;
@end

@implementation BKUIFaceIDEnrollOperationsHandler

- (void)retryOperation
{
  enrollOperation = self->_enrollOperation;
  self->_enrollOperation = 0;

  [(NSMutableArray *)self->_poseStatus removeAllObjects];
  self->_canStartEnrollmentOperation = 1;
  self->_bioKitCompletionPercentage = 0.0;
  lastFaceFoundDate = self->_lastFaceFoundDate;
  self->_lastFaceFoundDate = 0;

  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "retryOperation: enrollOperationInProgress = NO", buf, 2u);
  }

  self->_enrollOperationInProgress = 0;
  self->_centerBinComplete = 0;
  if ([(BKUIFaceIDEnrollOperationsHandler *)self glassesEnforcementError])
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Retrying Glasses enrollment for enforcemnt error", v8, 2u);
    }

    [(BKUIFaceIDEnrollOperationsHandler *)self setGlassesEnforcementError:0];
    matchUserThenDoSingleEnrollmentCompletion = [(BKUIFaceIDEnrollOperationsHandler *)self matchUserThenDoSingleEnrollmentCompletion];
    [(BKUIFaceIDEnrollOperationsHandler *)self matchUserForSecondPhaseEnrollmentWithCompletionAction:matchUserThenDoSingleEnrollmentCompletion];
  }
}

- (BKUIFaceIDEnrollOperationsHandler)initWithBKPearlEnrollmentType:(int64_t)type
{
  result = [(BKUIFaceIDEnrollOperationsHandler *)self init];
  if (result)
  {
    result->_enrollmentType = type;
  }

  return result;
}

- (BKUIFaceIDEnrollOperationsHandler)init
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = BKUIFaceIDEnrollOperationsHandler;
  v2 = [(BKUIFaceIDEnrollOperationsHandler *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.biometrickitui.enrollmentStartStopQueue", v3);
    enrollStartStopQueue = v2->_enrollStartStopQueue;
    v2->_enrollStartStopQueue = v4;

    v6 = objc_opt_new();
    poseStatus = v2->_poseStatus;
    v2->_poseStatus = v6;

    v2->_canStartEnrollmentOperation = 1;
    BKDeviceClass_0 = getBKDeviceClass_0();
    v9 = [(objc_class *)getBKDeviceDescriptorClass_0() deviceDescriptorForType:2];
    v23 = 0;
    v10 = [(objc_class *)BKDeviceClass_0 deviceWithDescriptor:v9 error:&v23];
    v11 = v23;
    device = v2->_device;
    v2->_device = v10;

    if (!v2->_device || v11)
    {
      v13 = _BKUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "Failed to fetch BKDevice: %@", buf, 0xCu);
      }
    }

    v14 = objc_opt_new();
    analyticsManager = v2->_analyticsManager;
    v2->_analyticsManager = v14;

    device = [(BKUIFaceIDEnrollOperationsHandler *)v2 device];
    v22 = 0;
    v17 = [device supportsPeriocularEnrollmentWithError:&v22];
    v18 = v22;

    if (v18)
    {
      v19 = _BKUILoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "Failed to fetch if periocular is supported supportsPeriocularEnrollmentWithError failed, defaulting to NO ....error: %@", buf, 0xCu);
      }

      v2->_supportsPeriocularEnrollment = 0;
    }

    else
    {
      v2->_supportsPeriocularEnrollment = [v17 BOOLValue];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)isActive
{
  enrollOperation = self->_enrollOperation;
  if (enrollOperation)
  {
    LOBYTE(enrollOperation) = [(BKEnrollPearlOperation *)enrollOperation state]!= 4;
  }

  return enrollOperation;
}

- (void)setSuspend:(BOOL)suspend
{
  enrollOperation = self->_enrollOperation;
  if (suspend)
  {
    v13 = 0;
    [(BKEnrollPearlOperation *)enrollOperation suspendWithError:&v13];
    v5 = v13;
    if (!v5)
    {
      return;
    }

    v6 = v5;
    v7 = _BKUILoggingFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v8 = "Pearl: Failed suspending enroll";
    goto LABEL_8;
  }

  v11 = 0;
  [(BKEnrollPearlOperation *)enrollOperation resumeWithError:&v11];
  v9 = v11;
  if (!v9)
  {
    return;
  }

  v6 = v9;
  v7 = _BKUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "Pearl: Failed resuming enroll";
LABEL_8:
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_9:

  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate endEnrollFlowWithError:v6];
}

- (void)_cleanupEnroll
{
  [(BKUIFaceIDEnrollOperationsHandler *)self _cleanupEnroll:1];
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate invalidateSubstateTimer];
}

- (void)_cleanupEnroll:(BOOL)enroll
{
  enrollCopy = enroll;
  enrollOperation = self->_enrollOperation;
  if (enrollOperation)
  {
    [(BKEnrollPearlOperation *)enrollOperation setDelegate:0];
    v6 = self->_enrollOperation;
    self->_enrollOperation = 0;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setIdleTimerDisabled:0];
  }

  [(SFClient *)self->_sharingclient invalidate];
  sharingclient = self->_sharingclient;
  self->_sharingclient = 0;

  if (enrollCopy)
  {
    [(LAContext *)self->_authContext invalidate];
    authContext = self->_authContext;
    self->_authContext = 0;
  }

  v10 = _BKUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "_cleanupEnroll: enrollOperationInProgress = NO", v11, 2u);
  }

  self->_enrollOperationInProgress = 0;
}

- (BOOL)completeCurrentEnrollOperationWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(BKEnrollPearlOperation *)self->_enrollOperation completeWithError:?];
  if (v5)
  {
    self->_userSelectedUseAccessibilityEnrollment = 1;
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      enrollOperation = self->_enrollOperation;
      v13 = 138412546;
      v14 = enrollOperation;
      v15 = 2048;
      enrollmentType = [(BKEnrollPearlOperation *)enrollOperation enrollmentType];
      v8 = "sucessfully completed enroll operation:%@, type:%li";
LABEL_6:
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, v8, &v13, 0x16u);
    }
  }

  else
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_enrollOperation;
      v10 = *error;
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      enrollmentType = v10;
      v8 = "Failed to complete current enroll operation:%@, error:%@";
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)cancelCurrentEnrollmentOperationIfUnfinished
{
  if ([(BKEnrollPearlOperation *)self->_enrollOperation state]!= 4)
  {
    enrollOperation = self->_enrollOperation;

    [(BKEnrollPearlOperation *)enrollOperation cancel];
  }
}

- (void)cancelEnrollForRotation
{
  enrollStartStopQueue = self->_enrollStartStopQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BKUIFaceIDEnrollOperationsHandler_cancelEnrollForRotation__block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_sync(enrollStartStopQueue, block);
}

void __60__BKUIFaceIDEnrollOperationsHandler_cancelEnrollForRotation__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 operationsDelegate];
  v4 = [v2 needsCancellationForState:{objc_msgSend(v3, "state")}];

  v5 = [*(a1 + 32) operationsDelegate];
  v6 = [v5 getEnrollview];
  [v6 percentOfPillsCompleted];
  v8 = v7;

  v9 = _BKUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) operationsDelegate];
    v11 = [v10 state];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8 >= 1.0];
    v21[0] = 67109634;
    v21[1] = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotation: currentState[%u]demandsCancellation: %@, hasPartialPillCompletion: %@", v21, 0x1Cu);
  }

  if (v8 >= 1.0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v4;
  }

  v15 = _BKUILoggingFacility();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14 == 1)
  {
    if (v16)
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_241B0A000, v15, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotation early exit", v21, 2u);
    }
  }

  else
  {
    if (v16)
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_241B0A000, v15, OS_LOG_TYPE_DEFAULT, "cancelEnrollForRotation: cancelling now", v21, 2u);
    }

    v17 = [*(a1 + 32) operationsDelegate];
    v18 = [v17 getEnrollview];
    [v18 setState:0 completion:0];

    [*(a1 + 32) _removeIdentity];
    [*(a1 + 32) _cleanupEnroll:0];
    [*(*(a1 + 32) + 72) removeAllObjects];
    *(*(a1 + 32) + 120) = 0;
    v19 = *(a1 + 32);
    v15 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)startEnrollForEnrollmentType:(int64_t)type glassesRequirement:(int64_t)requirement identity:(id)identity operationStartedActionBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  blockCopy = block;
  LODWORD(block) = self->_enrollOperationInProgress;
  v12 = _BKUILoggingFacility();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (block == 1)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "startEnrollForEnrollmentType: enrollOperationInProgress = YES - Enroll already in progress", buf, 2u);
    }
  }

  else
  {
    v28 = blockCopy;
    if (v13)
    {
      *buf = 138412802;
      selfCopy = self;
      v38 = 2048;
      typeCopy = type;
      v40 = 2112;
      v41 = identityCopy;
      _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "%@ Starting Enroll... type:%li identity:%@ enrollOperationInProgress = YES", buf, 0x20u);
    }

    analyticsManager = [(BKUIFaceIDEnrollOperationsHandler *)self analyticsManager];
    v34[0] = @"inBuddy";
    v27 = identityCopy;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[BKUIFaceIDEnrollOperationsHandler inbuddy](self, "inbuddy")}];
    v35[0] = v15;
    v34[1] = @"enrollmentType";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v35[1] = v16;
    v34[2] = @"enrollmentState";
    v17 = MEMORY[0x277CCABB0];
    enrollOperation = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
    v19 = [v17 numberWithInteger:{objc_msgSend(enrollOperation, "state")}];
    v35[2] = v19;
    v34[3] = @"enrollmentNeedsGlasses";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:requirement];
    v35[3] = v20;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v21 = v26 = requirement;
    [analyticsManager traceEvent:@"com.apple.BKUI.FaceIDEnrollmentStarted" withPayload:v21];

    identityCopy = v27;
    self->_bioKitCompletionPercentage = 0.0;
    self->_enrollOperationInProgress = 1;
    operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    view = [operationsDelegate view];
    [view setNeedsLayout];

    enrollStartStopQueue = self->_enrollStartStopQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke;
    block[3] = &unk_278D09E70;
    block[4] = self;
    typeCopy2 = type;
    v30 = v27;
    v33 = v26;
    blockCopy = v28;
    v31 = v28;
    dispatch_sync(enrollStartStopQueue, block);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) credential];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v3 != 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Has credential: %d", &buf, 8u);
  }

  v4 = *(a1 + 32);
  v33 = 0;
  v5 = [v4 getAuthContextForCredentialError:&v33];
  v6 = v33;
  v7 = _BKUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v5 != 0;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Has credentialSet: %d", &buf, 8u);
  }

  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_77;
  aBlock[3] = &unk_278D09DF8;
  aBlock[4] = *(a1 + 32);
  objc_copyWeak(v31, &location);
  v31[1] = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v28 = v8;
  v31[2] = v9;
  v10 = v5;
  v29 = v10;
  v30 = *(a1 + 48);
  v11 = _Block_copy(aBlock);
  if (v6)
  {
    objc_initWeak(&buf, *(a1 + 32));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_2_88;
    block[3] = &unk_278D09B20;
    objc_copyWeak(&v23, &buf);
    v22 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&buf);
  }

  else
  {
    v12 = _AXSVoiceOverTouchEnabled();
    v13 = objc_alloc_init(MEMORY[0x277CF1BE8]);
    v14 = _BKUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v12 != 0;
      v16 = v12 == 0;
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v16;
      v35 = 1024;
      v36 = v15;
      _os_log_impl(&dword_241B0A000, v14, OS_LOG_TYPE_DEFAULT, "Setting attention detection to %d because VoiceOver is %d", &buf, 0xEu);
    }

    else
    {
      v16 = v12 == 0;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v16];
    [v13 setAttentionDetectionEnabled:v17];

    objc_initWeak(&buf, *(a1 + 32));
    v18 = [*(a1 + 32) device];
    v19 = getuid();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_85;
    v24[3] = &unk_278D09E48;
    objc_copyWeak(&v26, &buf);
    v25 = v11;
    [v18 setProtectedConfiguration:v13 forUser:v19 credentialSet:v10 reply:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&buf);
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_77(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained device];
  v25 = 0;
  v4 = [v3 createEnrollOperationWithError:&v25];
  v5 = v25;
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = v4;

  [*(*(a1 + 32) + 128) setEnrollmentType:*(a1 + 72)];
  if (*(a1 + 72) != 1)
  {
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "Set enroll operation enrollment type to augment identity: %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 128) setAugmentedIdentity:*(a1 + 40)];
    [*(*(a1 + 32) + 128) setPeriocularGlassesRequirement:*(a1 + 80)];
  }

  [*(*(a1 + 32) + 128) setCredentialSet:*(a1 + 48)];
  [*(*(a1 + 32) + 128) setUserID:getuid()];
  [*(*(a1 + 32) + 128) setClientToComplete:1];
  v10 = *(*(a1 + 32) + 128);
  if (!v10 || v5)
  {
    v11 = _BKUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create enroll operation: %@", buf, 0xCu);
    }
  }

  else
  {
    [v10 setDelegate:WeakRetained];
  }

  v12 = *(a1 + 32);
  v24 = v5;
  v13 = [v12 _startOperationWithError:&v24];
  v14 = v24;

  if (v13)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_2;
    v19[3] = &unk_278D09DD0;
    v15 = *(a1 + 32);
    v21 = *(a1 + 72);
    v19[4] = v15;
    v19[5] = WeakRetained;
    v20 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v19);
    v16 = v20;
  }

  else
  {
    v17 = _BKUILoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&dword_241B0A000, v17, OS_LOG_TYPE_DEFAULT, "Failed to start enroll: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_78;
    block[3] = &unk_278D09A38;
    block[4] = WeakRetained;
    v23 = v14;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v16 = v23;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_78(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start enroll: %@", *(a1 + 40)];
  [v2 setStatus:v3];

  v4 = [*(a1 + 32) operationsDelegate];
  [v4 endEnrollFlowWithError:*(a1 + 40)];
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = objc_alloc_init(getSFClientClass());
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  [*(*(a1 + 32) + 8) activateAssertionWithIdentifier:@"com.apple.sharing.PreventProxCards"];
  if (*(a1 + 56) == 1 || [*(a1 + 40) isEnrollmentAugmentationOnly])
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      v7 = [*(a1 + 40) operationsDelegate];
      v8 = [v7 state];

      if (v8 == 2)
      {
        v10 = [*(a1 + 32) operationsDelegate];
        [v10 setState:3 animated:1];
      }

      return;
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      return;
    }
  }

  v9 = *(v6 + 16);

  v9();
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_85(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 || (a2 & 1) == 0)
  {
    v7 = _BKUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Failed to disable attention detection with VoiceOver, reason: %@", buf, 0xCu);
    }
  }

  v8 = WeakRetained[4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_86;
  block[3] = &unk_278D09E20;
  v11 = *(a1 + 32);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __122__BKUIFaceIDEnrollOperationsHandler_startEnrollForEnrollmentType_glassesRequirement_identity_operationStartedActionBlock___block_invoke_2_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained operationsDelegate];
  [v2 endEnrollFlowWithError:*(a1 + 32)];
}

- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(BKUIMatchVerifyPearlOperation);
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchOperation:v5];

  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  [matchOperation setOperationsDelegate:operationsDelegate];

  [(BKUIFaceIDEnrollOperationsHandler *)self setGlassesEnforcementError:0];
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchUserThenDoSingleEnrollmentCompletion:actionCopy];
  v28 = 0;
  LODWORD(matchOperation) = [(BKUIFaceIDEnrollOperationsHandler *)self _matchOperationPreflightCheck:&v28];
  v8 = v28;
  if (matchOperation)
  {
    if ([(BKUIFaceIDEnrollOperationsHandler *)self inbuddy]&& [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration]== 3 && +[BKUIPasscodeEntryController isDevicePasscodeSet]&& !v8)
    {
      dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
      [(BKUIFaceIDEnrollOperationsHandler *)self setExternalizedAuthContext:0];
      [(BKUIFaceIDEnrollOperationsHandler *)self setCredential:0];
      objc_initWeak(&location, self);
      v9 = [BKUIPasscodeEntryController alloc];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke;
      v24[3] = &unk_278D09EC0;
      objc_copyWeak(&v26, &location);
      v25 = actionCopy;
      v10 = [(BKUIPasscodeEntryController *)v9 initWithVerifiedPasscodeAction:v24];
      v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
      operationsDelegate2 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      [operationsDelegate2 presentViewController:v11 animated:1 completion:0];

      v13 = &v26;
    }

    else
    {
      if ([(BKUIFaceIDEnrollOperationsHandler *)self isEnrollmentAugmentationOnly])
      {
        operationsDelegate3 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        substate = [operationsDelegate3 substate];

        if (substate != 15)
        {
          operationsDelegate4 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
          [operationsDelegate4 setState:3 animated:1];
        }
      }

      objc_initWeak(&location, self);
      matchOperation2 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
      device = [(BKUIFaceIDEnrollOperationsHandler *)self device];
      identity = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
      enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_4;
      v21[3] = &unk_278D09EE8;
      objc_copyWeak(&v23, &location);
      v21[4] = self;
      v22 = actionCopy;
      [matchOperation2 startMatchOperationWithDevice:device identity:identity credential:v8 withConfiguration:enrollmentConfiguration matchOperationActionBlock:v21];

      v13 = &v23;
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained setCredential:v3];
    v6 = [v5 operationsDelegate];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_2;
    v9[3] = &unk_278D09E98;
    v9[4] = v5;
    v10 = *(a1 + 32);
    [v6 dismissViewControllerAnimated:1 completion:v9];

    v7 = v10;
  }

  else
  {
    v7 = [WeakRetained operationsDelegate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_3;
    v8[3] = &unk_278D09978;
    v8[4] = v5;
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }
}

void __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-1 userInfo:0];
  [v2 endEnrollFlowWithError:v1];
}

void __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    if (([WeakRetained supportsPeriocularEnrollment] & 1) != 0 || objc_msgSend(v5, "enrollmentType") != 3)
    {
      [v5 startEnrollForEnrollmentType:objc_msgSend(v5 glassesRequirement:"enrollmentType") identity:0 operationStartedActionBlock:{v3, *(a1 + 40)}];
    }

    else
    {
      v6 = _BKUILoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __114__BKUIFaceIDEnrollOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_4_cold_1();
      }

      v7 = [v5 operationsDelegate];
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-4 userInfo:0];
      [v7 endEnrollFlowWithError:v8];
    }
  }

  else
  {
    v9 = [WeakRetained matchOperation];
    v10 = [*(a1 + 32) matchOperation];
    [v5 matchOperation:v9 failedToMatchWithUserPositionSubstate:objc_msgSend(v10 operationCompleteAction:{"lastErrorousSubState"), *(a1 + 40)}];
  }
}

- (void)matchUserForGlassesPhaseEnrollmentWithCompletionAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(BKUIMatchVerifyPearlOperation);
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchOperation:v5];

  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  [matchOperation setOperationsDelegate:operationsDelegate];

  v18 = 0;
  LOBYTE(matchOperation) = [(BKUIFaceIDEnrollOperationsHandler *)self _matchOperationPreflightCheck:&v18];
  v8 = v18;
  if (matchOperation)
  {
    objc_initWeak(&location, self);
    matchOperation2 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
    device = [(BKUIFaceIDEnrollOperationsHandler *)self device];
    identity = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__BKUIFaceIDEnrollOperationsHandler_matchUserForGlassesPhaseEnrollmentWithCompletionAction___block_invoke;
    v14[3] = &unk_278D09EE8;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = actionCopy;
    [matchOperation2 startMatchOperationWithDevice:device identity:identity credential:v8 withConfiguration:enrollmentConfiguration matchOperationActionBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = _BKUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BKUIFaceIDEnrollOperationsHandler matchUserForGlassesPhaseEnrollmentWithCompletionAction:];
    }
  }
}

void __92__BKUIFaceIDEnrollOperationsHandler_matchUserForGlassesPhaseEnrollmentWithCompletionAction___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (v7)
  {
    [WeakRetained startEnrollForEnrollmentType:3 glassesRequirement:1 identity:v7 operationStartedActionBlock:*(a1 + 40)];
  }

  else
  {
    v5 = [WeakRetained matchOperation];
    v6 = [*(a1 + 32) matchOperation];
    [v4 matchOperation:v5 failedToMatchWithUserPositionSubstate:objc_msgSend(v6 operationCompleteAction:{"lastErrorousSubState"), *(a1 + 40)}];
  }
}

- (BOOL)_matchOperationPreflightCheck:(id *)check
{
  v26 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__BKUIFaceIDEnrollOperationsHandler__matchOperationPreflightCheck___block_invoke;
  aBlock[3] = &unk_278D09F10;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    credential = [(BKUIFaceIDEnrollOperationsHandler *)self credential];
    *buf = 67109120;
    v25 = credential != 0;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Has credential: %d", buf, 8u);
  }

  v22 = 0;
  v8 = [(BKUIFaceIDEnrollOperationsHandler *)self getAuthContextForCredentialError:&v22];
  v9 = v22;
  v10 = _BKUILoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v25 = v8 != 0;
    _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "Has credentialSet: %d", buf, 8u);
  }

  device = [(BKUIFaceIDEnrollOperationsHandler *)self device];

  if (device)
  {
    goto LABEL_6;
  }

  BKDeviceClass_0 = getBKDeviceClass_0();
  v15 = [(objc_class *)getBKDeviceDescriptorClass_0() deviceDescriptorForType:2];
  v21 = 0;
  v16 = [(objc_class *)BKDeviceClass_0 deviceWithDescriptor:v15 error:&v21];
  v17 = v21;
  [(BKUIFaceIDEnrollOperationsHandler *)self setDevice:v16];

  if (!v17)
  {
LABEL_6:
    v12 = v8;
    *check = v8;
    v13 = 1;
  }

  else
  {
    v18 = _BKUILoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BKUIFaceIDEnrollOperationsHandler _matchOperationPreflightCheck:];
    }

    v5[2](v5, v17);
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __67__BKUIFaceIDEnrollOperationsHandler__matchOperationPreflightCheck___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeIdentity];
  v2 = *(a1 + 32);
  v3 = v2[16];

  return [v2 enrollOperation:v3 failedWithReason:2];
}

- (void)cancelEnrollPreserveIdentity
{
  [(BKUIFaceIDEnrollOperationsHandler *)self _cleanupEnroll:0];
  matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  [matchOperation cancelMatchOperation];

  [(NSMutableArray *)self->_poseStatus removeAllObjects];
  self->_bioKitCompletionPercentage = 0.0;
  lastFaceFoundDate = self->_lastFaceFoundDate;
  self->_lastFaceFoundDate = 0;
}

- (void)cancelEnroll
{
  [(BKUIFaceIDEnrollOperationsHandler *)self _removeIdentity];

  [(BKUIFaceIDEnrollOperationsHandler *)self cancelEnrollPreserveIdentity];
}

- (void)_removeIdentity
{
  v12 = *MEMORY[0x277D85DE8];
  identity = [(BKUIFaceIDEnrollOperationsHandler *)self identity];

  if (identity && ![(BKUIFaceIDEnrollOperationsHandler *)self isEnrollmentAugmentationOnly])
  {
    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identity2 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
      *buf = 138412290;
      v11 = identity2;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Removing identity: %@", buf, 0xCu);
    }

    [(BKUIFaceIDEnrollOperationsHandler *)self setCanStartEnrollmentOperation:0];
    device = [(BKUIFaceIDEnrollOperationsHandler *)self device];
    identity3 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__BKUIFaceIDEnrollOperationsHandler__removeIdentity__block_invoke;
    v9[3] = &unk_278D09F60;
    v9[4] = self;
    [device removeIdentity:identity3 reply:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__BKUIFaceIDEnrollOperationsHandler__removeIdentity__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BKUIFaceIDEnrollOperationsHandler__removeIdentity__block_invoke_2;
  block[3] = &unk_278D09F38;
  v6 = *(a1 + 32);
  v10 = a2;
  block[4] = v6;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__BKUIFaceIDEnrollOperationsHandler__removeIdentity__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCanStartEnrollmentOperation:1];
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 updateButtonsVisibility];

  if (*(a1 + 48) != 1 || *(a1 + 40))
  {
    v3 = _BKUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Failed removing identity: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)advanceEnrollmentState
{
  v66 = *MEMORY[0x277D85DE8];
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v4 = MEMORY[0x277CCACA8];
  v5 = (self->_bioKitCompletionPercentage * 100.0);
  operationsDelegate2 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate2 percentOfPillsCompleted];
  v8 = [v4 stringWithFormat:@"BioKit: %d%%, rings: %d%%", v5, (v7 * 100.0)];
  [operationsDelegate setProgressString:v8];

  operationsDelegate3 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate3 _updateDebugLabel];

  operationsDelegate4 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate4 percentOfPillsCompleted];
  v12 = v11;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = self->_poseStatus;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v57;
    do
    {
      v17 = 0;
      do
      {
        if (*v57 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v56 + 1) + 8 * v17++) integerValue];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v15);
  }

  v18 = _BKUILoggingFacility();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    operationsDelegate5 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    state = [operationsDelegate5 state];
    v21 = (self->_bioKitCompletionPercentage * 100.0);
    operationsDelegate6 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate6 percentOfPillsCompleted];
    *buf = 134218752;
    v61 = v12;
    v62 = 1024;
    *v63 = state;
    *&v63[4] = 1024;
    *&v63[6] = v21;
    LOWORD(v64[0]) = 1024;
    *(v64 + 2) = (v23 * 100.0);
    _os_log_impl(&dword_241B0A000, v18, OS_LOG_TYPE_DEFAULT, "advanceEnrollmentState evaluate next state for advancement... percentPillsCompleted:%f state:%i BioKit: %d%%, rings: %d%%", buf, 0x1Eu);
  }

  operationsDelegate7 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  state2 = [operationsDelegate7 state];

  if (state2 == 5 && v12 >= 1.0)
  {
    v26 = _BKUILoggingFacility();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_DEFAULT, "Finishing 1st enroll operation...", buf, 2u);
    }

    enrollOperation = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
    state3 = [enrollOperation state];

    if (state3 != 4)
    {
      enrollOperation2 = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
      v55 = 0;
      v30 = [enrollOperation2 completeWithError:&v55];
      operationsDelegate10 = v55;

      v32 = _BKUILoggingFacility();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v33)
        {
          *buf = 0;
          _os_log_impl(&dword_241B0A000, v32, OS_LOG_TYPE_DEFAULT, "1st Enroll  operation marked as completed!", buf, 2u);
        }

        if ([(BKUIFaceIDEnrollOperationsHandler *)self isEnrollmentAugmentationOnly])
        {
          isEnrollmentAugmentationOnly = [(BKUIFaceIDEnrollOperationsHandler *)self isEnrollmentAugmentationOnly];
          operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
          operationsDelegate9 = operationsDelegate8;
          if (isEnrollmentAugmentationOnly)
          {
            v37 = 0.5;
          }

          else
          {
            v37 = 0.1;
          }
        }

        else
        {
          operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
          operationsDelegate9 = operationsDelegate8;
          v37 = 1.0;
        }

        v50 = 6;
        goto LABEL_47;
      }

      if (v33)
      {
        *buf = 138412290;
        v61 = *&operationsDelegate10;
        _os_log_impl(&dword_241B0A000, v32, OS_LOG_TYPE_DEFAULT, "Failed to complete 1st enroll: %@", buf, 0xCu);
      }

      operationsDelegate9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete 1st enroll: %@", operationsDelegate10, v53];
      goto LABEL_39;
    }
  }

  else
  {
    operationsDelegate10 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    if ([operationsDelegate10 state] != 7 || v12 < 1.0)
    {
      goto LABEL_49;
    }

    bioKitCompletionPercentage = self->_bioKitCompletionPercentage;

    if (bioKitCompletionPercentage >= 1.0)
    {
      if ([(BKUIFaceIDEnrollOperationsHandler *)self supportsPeriocularEnrollment])
      {
        v39 = @"extended";
      }

      else
      {
        v39 = &stru_2853BB280;
      }

      v40 = _BKUILoggingFacility();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_bioKitCompletionPercentage;
        operationsDelegate11 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        state4 = [operationsDelegate11 state];
        *buf = 138412802;
        v61 = *&v39;
        v62 = 2048;
        *v63 = v41;
        *&v63[8] = 1024;
        v64[0] = state4 == 7;
        _os_log_impl(&dword_241B0A000, v40, OS_LOG_TYPE_DEFAULT, "Finishing %@ enroll operation... %f %i", buf, 0x1Cu);
      }

      if ([(BKEnrollPearlOperation *)self->_enrollOperation state]!= 4)
      {
        v54 = 0;
        v44 = [(BKUIFaceIDEnrollOperationsHandler *)self _completeOperationWithError:&v54];
        operationsDelegate10 = v54;
        v45 = _BKUILoggingFacility();
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
        if (v44)
        {
          if (v46)
          {
            *buf = 138412290;
            v61 = *&v39;
            _os_log_impl(&dword_241B0A000, v45, OS_LOG_TYPE_DEFAULT, "%@ enroll operation marked as completed!", buf, 0xCu);
          }

          enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
          operationsDelegate12 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
          operationsDelegate9 = operationsDelegate12;
          if (!enrollmentConfiguration || (v49 = [operationsDelegate12 state], operationsDelegate9, -[BKUIFaceIDEnrollOperationsHandler operationsDelegate](self, "operationsDelegate"), operationsDelegate9 = objc_claimAutoreleasedReturnValue(), v49 == 7))
          {
            v37 = 0.5;
            operationsDelegate8 = operationsDelegate9;
            v50 = 8;
LABEL_47:
            [operationsDelegate8 setState:v50 animated:1 afterDelay:v37];
            goto LABEL_48;
          }

          operationsDelegate13 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
          [operationsDelegate9 setState:objc_msgSend(operationsDelegate13 animated:"state") + 1 afterDelay:{1, 0.5}];
LABEL_40:

LABEL_48:
LABEL_49:

          goto LABEL_50;
        }

        if (v46)
        {
          *buf = 138412546;
          v61 = *&v39;
          v62 = 2112;
          *v63 = operationsDelegate10;
          _os_log_impl(&dword_241B0A000, v45, OS_LOG_TYPE_DEFAULT, "Failed to complete %@ enroll operation: %@", buf, 0x16u);
        }

        operationsDelegate9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete %@ enroll: %@", v39, operationsDelegate10];
        operationsDelegate13 = LABEL_39:;
        [operationsDelegate9 setStatus:operationsDelegate13];
        goto LABEL_40;
      }
    }
  }

LABEL_50:
  v52 = *MEMORY[0x277D85DE8];
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__BKUIFaceIDEnrollOperationsHandler_operation_faceDetectStateChanged___block_invoke;
  v7[3] = &unk_278D09A38;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __70__BKUIFaceIDEnrollOperationsHandler_operation_faceDetectStateChanged___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) tooCloseToCamera])
  {
    v2 = [*(a1 + 40) operationsDelegate];
    [v2 setStatus:@"Too close to camera"];
    v3 = 0;
    v4 = 0;
    v5 = 1;
    goto LABEL_16;
  }

  if ([*(a1 + 32) tooFarFromCamera])
  {
    v2 = [*(a1 + 40) operationsDelegate];
    [v2 setStatus:@"Too far from camera"];
    v3 = 0;
    v4 = 0;
    v5 = 2;
    goto LABEL_16;
  }

  if ([*(a1 + 32) multipleFaces])
  {
    v2 = [*(a1 + 40) operationsDelegate];
    [v2 setStatus:@"Multiple faces in view"];
    v3 = 0;
    v4 = 0;
    v5 = 4;
    goto LABEL_16;
  }

  if ([*(a1 + 32) flare])
  {
    v2 = [*(a1 + 40) operationsDelegate];
    [v2 setStatus:@"Bright light on camera"];
    v3 = 0;
    v4 = 0;
    v5 = 7;
    goto LABEL_16;
  }

  if ([*(a1 + 32) partiallyOutOfView])
  {
    v6 = [*(a1 + 40) operationsDelegate];
    v2 = v6;
    v7 = @"Face not fully visible";
LABEL_11:
    [v6 setStatus:v7];
    v3 = 0;
    v5 = 9;
    v4 = 1;
    goto LABEL_16;
  }

  if ([*(a1 + 32) occlusion])
  {
    v2 = [*(a1 + 40) operationsDelegate];
    [v2 setStatus:@"Face is occluded"];
    v3 = 0;
    v4 = 0;
    v5 = 8;
  }

  else
  {
    v8 = [*(a1 + 32) faceDetected];
    v6 = [*(a1 + 40) operationsDelegate];
    v2 = v6;
    if (!v8)
    {
      v7 = @"No face in view";
      goto LABEL_11;
    }

    [v6 setStatus:@"Face found!"];
    v4 = 0;
    v5 = 0;
    v3 = 1;
  }

LABEL_16:

  if ([*(a1 + 32) faceDetected])
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = *(a1 + 40);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(*(a1 + 40) + 72) count];
  v13 = *(a1 + 40);
  if (v12)
  {
    v14 = [v13[9] objectAtIndexedSubscript:8];
    [*(a1 + 40) setCenterBinComplete:{objc_msgSend(v14, "integerValue") == 3}];
  }

  else
  {
    [v13 setCenterBinComplete:0];
  }

  v15 = [*(a1 + 40) operationsDelegate];
  v16 = [v15 state];

  if ((v3 & [*(a1 + 32) faceDetected]) == 1 && v16 == 3)
  {
    if (([*(a1 + 40) centerBinComplete] & 1) == 0)
    {
      v17 = [*(a1 + 40) operationsDelegate];
      v18 = v17;
      v19 = 4;
LABEL_29:
      [v17 setState:v19 animated:1];
LABEL_53:

      goto LABEL_54;
    }
  }

  else
  {
    if (v16 == 4)
    {
      if (*(*(a1 + 40) + 40))
      {
        v20 = [MEMORY[0x277CBEAA8] date];
        [v20 timeIntervalSinceDate:*(*(a1 + 40) + 40)];
        v22 = v21;

        if (v22 > 2.0)
        {
          v17 = [*(a1 + 40) operationsDelegate];
          v18 = v17;
          v19 = 3;
          goto LABEL_29;
        }
      }

      goto LABEL_45;
    }

    if ((v16 & 0xFFFFFFFD) == 5)
    {
      if (*(*(a1 + 40) + 40))
      {
        v23 = [MEMORY[0x277CBEAA8] date];
        [v23 timeIntervalSinceDate:*(*(a1 + 40) + 40)];
        if (v24 <= 1.15)
        {
        }

        else
        {
          v25 = [*(a1 + 40) operationsDelegate];
          v26 = [v25 getEnrollview];
          [v26 percentOfPillsCompleted];
          v28 = v27;

          if (v28 < 1.0)
          {
            v29 = [*(a1 + 40) operationsDelegate];
            [v29 setState:3 animated:1];

            v30 = [*(a1 + 40) operationsDelegate];
            v31 = [v30 audioManager];
            v32 = [*(a1 + 40) operationsDelegate];
            [v31 triggerSoundHapticForTransitionToSubstate:9 fromSubstate:{objc_msgSend(v32, "substate")}];

            v18 = [*(a1 + 40) operationsDelegate];
            [v18 setSubstate:9];
            goto LABEL_53;
          }
        }
      }

      goto LABEL_45;
    }
  }

  v33 = v3 ^ 1;
  if (v16 != 3)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0 && [*(a1 + 40) centerBinComplete] && objc_msgSend(*(a1 + 32), "faceDetected"))
  {
    v34 = [*(a1 + 40) operationsDelegate];
    if ([v34 previousState] == 5)
    {

LABEL_44:
      v18 = [*(a1 + 40) operationsDelegate];
      v37 = [*(a1 + 40) operationsDelegate];
      [v18 setState:objc_msgSend(v37 animated:{"previousState"), 1}];

      goto LABEL_53;
    }

    v35 = [*(a1 + 40) operationsDelegate];
    v36 = [v35 previousState];

    if (v36 == 7)
    {
      goto LABEL_44;
    }
  }

LABEL_45:
  v38 = *(a1 + 40);
  if (v38[5])
  {
    v39 = 0;
  }

  else
  {
    v39 = v4;
  }

  if ((v39 & 1) == 0)
  {
    v40 = [v38 operationsDelegate];
    v41 = [v40 substate];

    v42 = [*(a1 + 40) operationsDelegate];
    v18 = v42;
    if (v41)
    {
      v43 = 4.0;
    }

    else
    {
      v43 = 1.25;
    }

    [v42 setSubstate:v5 animated:1 afterDelay:v43];
    goto LABEL_53;
  }

LABEL_54:
  if (([*(a1 + 32) occlusion] & 1) == 0)
  {
    v44 = [*(a1 + 40) operationsDelegate];
    v45 = [v44 getEnrollview];
    [v45 updateWithFaceState:*(a1 + 32)];

    [*(a1 + 40) advanceEnrollmentState];
    v46 = *(a1 + 40);
    if (v46[15] >= 1.0)
    {
      v47 = [v46 operationsDelegate];
      [v47 refreshEscapeHatchForCurrentState];
    }
  }
}

- (void)enrollOperation:(id)operation percentCompleted:(int64_t)completed
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_percentCompleted___block_invoke;
  v4[3] = &unk_278D09F88;
  v4[4] = self;
  v4[5] = completed;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  enrolledIdentity = [resultCopy enrolledIdentity];
  if (!enrolledIdentity)
  {
    [BKUIFaceIDEnrollOperationsHandler enrollOperation:finishedWithEnrollResult:];
  }

  v9 = enrolledIdentity;
  if ([resultCopy glassesDetected] && !objc_msgSend(operationCopy, "periocularGlassesRequirement") && objc_msgSend(operationCopy, "enrollmentType") == 3)
  {
    v10 = _BKUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "glasses found!", v12, 2u);
    }

    [(BKUIFaceIDEnrollOperationsHandler *)self setGlassesFound:1];
  }

  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate enrollOperation:operationCopy finishedWithIdentity:v9 animateImmediately:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self _cleanupEnroll];
}

- (void)enrollOperation:(id)operation failedWithReason:(int64_t)reason
{
  operationCopy = operation;
  if ((reason & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    [(BKUIFaceIDEnrollOperationsHandler *)self setGlassesEnforcementError:1];
    if (reason == 11)
    {
      if ([(BKUIFaceIDEnrollOperationsHandler *)self glassesRequirement]== 2)
      {
        v7 = 12;
      }

      else
      {
        v7 = 13;
      }
    }

    else
    {
      v7 = 14;
    }

    v8 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke;
    block[3] = &unk_278D09FB0;
    block[4] = self;
    v11 = v7;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  else if (reason != 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_3;
    v9[3] = &unk_278D09F88;
    v9[4] = self;
    v9[5] = reason;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 setState:3 animated:1];

  v3 = [*(a1 + 32) operationsDelegate];
  [v3 setSubstate:*(a1 + 40) animated:1 afterDelay:0.0];

  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_2;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) operationsDelegate];
  [v1 refreshEscapeHatchForCurrentState];
}

void __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_3(uint64_t a1)
{
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_3_cold_1(a1);
  }

  [*(a1 + 32) _removeIdentity];
  v3 = [*(a1 + 32) operationsDelegate];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enroll failed with reason %d", *(a1 + 40)];
  [v3 setStatus:v4];

  v5 = [*(a1 + 32) operationsDelegate];
  v6 = [v5 getEnrollview];
  [v6 setFailed];

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.biokit" code:*(a1 + 40) userInfo:0];
  v8 = [*(a1 + 32) operationsDelegate];
  [v8 endEnrollFlowWithError:v7];
}

- (void)matchOperation:(id)operation failedToMatchWithUserPositionSubstate:(int)substate operationCompleteAction:(id)action
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __114__BKUIFaceIDEnrollOperationsHandler_matchOperation_failedToMatchWithUserPositionSubstate_operationCompleteAction___block_invoke;
  v5[3] = &unk_278D09FB0;
  v5[4] = self;
  substateCopy = substate;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __114__BKUIFaceIDEnrollOperationsHandler_matchOperation_failedToMatchWithUserPositionSubstate_operationCompleteAction___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) operationsDelegate];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enroll failed with last substate %d", *(a1 + 40)];
  [v2 setStatus:v3];

  v4 = [*(a1 + 32) matchOperation];
  v5 = [v4 failReason];

  v6 = *(a1 + 32);
  if (v5 == -9999)
  {
    if ([v6 isEnrollmentAugmentationOnly])
    {
      v7 = 2;
    }

    else
    {
      v7 = 6;
    }

    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 67109120;
      v18 = v9;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "PearlMatchOperation: BKUIMatchVerifyFailReasonStartFailed failed to start match operation error = %d .... showing RetryUI", buf, 8u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.biokit" code:v7 userInfo:0];
    v11 = [*(a1 + 32) operationsDelegate];
    [v11 endEnrollFlowWithError:v10];
  }

  else
  {
    v12 = [v6 matchOperation];
    v13 = [*(a1 + 32) matchOperation];
    [v12 moveEnrollStateToNeedsPositioning:{objc_msgSend(v13, "lastErrorousSubState")}];

    if (([*(a1 + 32) shouldShowRetryUI] & 1) == 0)
    {
      v14 = [*(a1 + 32) matchOperation];
      [v14 retryMatchOperation];
    }

    v10 = _BKUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 67109120;
      v18 = v15;
      _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "PearlMatchOperation: failedToMatchWithUserPositionSubstate to enroll, error = %d .... showing RetryUI start retry", buf, 8u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateEnrolledPoses:(id)poses
{
  v23 = *MEMORY[0x277D85DE8];
  posesCopy = poses;
  v4 = [posesCopy count];
  if (v4 != 3)
  {
    v11 = v4;
    v12 = _BKUILoggingFacility();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 134218240;
    v18 = v11;
    v19 = 2048;
    v20 = 3;
    v13 = "Error: Unexpected number of enrolled poses, there are %lu rows, expected %lu";
LABEL_11:
    _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x16u);
    goto LABEL_12;
  }

  v5 = [posesCopy objectAtIndexedSubscript:0];
  v6 = [v5 count];

  if (v6 != 3)
  {
    v12 = _BKUILoggingFacility();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = 134218240;
    v18 = v6;
    v19 = 2048;
    v20 = 3;
    v13 = "Error: Unexpected number of enrolled poses, there are %lu cols, expected %lu";
    goto LABEL_11;
  }

  v7 = 0;
  while (1)
  {
    v8 = [posesCopy objectAtIndexedSubscript:v7];
    v9 = [v8 count];

    if (v9 != 3)
    {
      break;
    }

    if (++v7 == 3)
    {
      v10 = 1;
      goto LABEL_13;
    }
  }

  v12 = _BKUILoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [posesCopy objectAtIndexedSubscript:v7];
    v17 = 134218496;
    v18 = v7;
    v19 = 2048;
    v20 = [v16 count];
    v21 = 2048;
    v22 = 3;
    _os_log_impl(&dword_241B0A000, v12, OS_LOG_TYPE_DEFAULT, "Error: Unexpected number of enrolled poses, row %lu has %lu cols, expected %lu!", &v17, 0x20u);
  }

LABEL_12:

  v10 = 0;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)enrollOperation:(id)operation progressedWithInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BKUIFaceIDEnrollOperationsHandler_enrollOperation_progressedWithInfo___block_invoke;
  v7[3] = &unk_278D09A38;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __72__BKUIFaceIDEnrollOperationsHandler_enrollOperation_progressedWithInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrolledPoses];
  if ([*(a1 + 40) _validateEnrolledPoses:v2])
  {
    [*(*(a1 + 40) + 72) removeAllObjects];
    v3 = *(*(a1 + 40) + 72);
    v4 = [v2 objectAtIndexedSubscript:1];
    v5 = [v4 objectAtIndexedSubscript:2];
    [v3 addObject:v5];

    v6 = *(*(a1 + 40) + 72);
    v7 = [v2 objectAtIndexedSubscript:0];
    v8 = [v7 objectAtIndexedSubscript:2];
    [v6 addObject:v8];

    v9 = *(*(a1 + 40) + 72);
    v10 = [v2 objectAtIndexedSubscript:0];
    v11 = [v10 objectAtIndexedSubscript:1];
    [v9 addObject:v11];

    v12 = *(*(a1 + 40) + 72);
    v13 = [v2 objectAtIndexedSubscript:0];
    v14 = [v13 objectAtIndexedSubscript:0];
    [v12 addObject:v14];

    v15 = *(*(a1 + 40) + 72);
    v16 = [v2 objectAtIndexedSubscript:1];
    v17 = [v16 objectAtIndexedSubscript:0];
    [v15 addObject:v17];

    v18 = *(*(a1 + 40) + 72);
    v19 = [v2 objectAtIndexedSubscript:2];
    v20 = [v19 objectAtIndexedSubscript:0];
    [v18 addObject:v20];

    v21 = *(*(a1 + 40) + 72);
    v22 = [v2 objectAtIndexedSubscript:2];
    v23 = [v22 objectAtIndexedSubscript:1];
    [v21 addObject:v23];

    v24 = *(*(a1 + 40) + 72);
    v25 = [v2 objectAtIndexedSubscript:2];
    v26 = [v25 objectAtIndexedSubscript:2];
    [v24 addObject:v26];

    v27 = *(*(a1 + 40) + 72);
    v28 = [v2 objectAtIndexedSubscript:1];
    v29 = [v28 objectAtIndexedSubscript:1];
    [v27 addObject:v29];

    v30 = [*(*(a1 + 40) + 72) objectAtIndexedSubscript:8];
    v31 = [v30 integerValue];

    if (v31 != 3)
    {
LABEL_21:
      v47 = [*(a1 + 40) operationsDelegate];
      v48 = [v47 getEnrollview];
      [v48 updateWithProgress:*(a1 + 32)];

      [*(a1 + 40) advanceEnrollmentState];
      goto LABEL_22;
    }

    v32 = [*(a1 + 40) operationsDelegate];
    v33 = [v32 state];
    if (v33 != 3)
    {
      v31 = [*(a1 + 40) operationsDelegate];
      if ([v31 state] != 4)
      {
        goto LABEL_7;
      }
    }

    v34 = [*(a1 + 40) operationsDelegate];
    if ([v34 previousState] != 5)
    {
      v35 = [*(a1 + 40) operationsDelegate];
      v36 = [v35 previousState];

      if (v33 != 3)
      {
      }

      if (v36 == 7)
      {
        goto LABEL_21;
      }

      if ([*(a1 + 32) percentageCompleted] != 100)
      {
        v37 = [MEMORY[0x277D75418] currentDevice];
        v38 = [v37 bkui_IsInternalInstall];

        if (v38)
        {
          v39 = _BKUILoggingFacility();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            _os_log_impl(&dword_241B0A000, v39, OS_LOG_TYPE_DEFAULT, "enroll progress not complete on first pose ...", v49, 2u);
          }

          v40 = [BKUIAlertController alertControllerWithTitle:@"BioCapture Error" message:@"(Internal) Center bin complete without enroll completion. Please run /usr/libexec/seputil --get TRBC > trbc.trace and attach the resulting file to a radar against Pearl ID // New Bugs." preferredStyle:1];
          v41 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:0];
          [v40 addAction:v41];

          v42 = [*(a1 + 40) operationsDelegate];
          [v42 presentViewController:v40 animated:1 completion:0];
        }
      }

      v43 = [*(a1 + 40) operationsDelegate];
      [v43 clearPendingStateWorkItems];

      v44 = [*(*(a1 + 40) + 128) enrollmentType];
      v45 = [*(a1 + 40) operationsDelegate];
      v32 = v45;
      if (v44 == 1)
      {
        v46 = 5;
      }

      else
      {
        v46 = 7;
      }

      [v45 setState:v46 animated:1];
      goto LABEL_20;
    }

    if (v33 != 3)
    {
LABEL_7:
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
}

- (id)getAuthContextForCredentialError:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  credential = [(BKUIFaceIDEnrollOperationsHandler *)self credential];
  if (credential)
  {

LABEL_4:
    credential2 = [(BKUIFaceIDEnrollOperationsHandler *)self credential];

    LAContextClass = getLAContextClass();
    if (credential2)
    {
      v9 = objc_opt_new();
      authContext = self->_authContext;
      self->_authContext = v9;
    }

    else
    {
      v11 = [LAContextClass alloc];
      authContext = [(BKUIFaceIDEnrollOperationsHandler *)self externalizedAuthContext];
      v12 = [v11 initWithExternalizedContext:authContext];
      v13 = self->_authContext;
      self->_authContext = v12;
    }

    [(LAContext *)self->_authContext setUiDelegate:self];
    v14 = self->_authContext;
    v27 = &unk_2853CC9A8;
    v28[0] = &unk_2853CC9C0;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v24 = 0;
    v16 = [(LAContext *)v14 evaluatePolicy:1007 options:v15 error:&v24];
    v17 = v24;

    if (v17)
    {
      v18 = _BKUILoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_241B0A000, v18, OS_LOG_TYPE_DEFAULT, "BKUIPearl: Error evaluating policy: %@", buf, 0xCu);
      }

      if (error)
      {
        v19 = v17;
        externalizedContext = 0;
        *error = v17;
      }

      else
      {
        externalizedContext = 0;
      }
    }

    else
    {
      externalizedContext = [(LAContext *)self->_authContext externalizedContext];
    }

    goto LABEL_15;
  }

  externalizedAuthContext = [(BKUIFaceIDEnrollOperationsHandler *)self externalizedAuthContext];

  if (externalizedAuthContext)
  {
    goto LABEL_4;
  }

  if (self->_authContext)
  {
    v23 = _BKUILoggingFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_DEFAULT, "Using cached authentication context", buf, 2u);
    }

    externalizedContext = [(LAContext *)self->_authContext externalizedContext];
  }

  else
  {
    externalizedContext = 0;
  }

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];

  return externalizedContext;
}

- (BOOL)_completeOperationWithError:(id *)error
{
  enrollOperation = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
  LOBYTE(error) = [enrollOperation completeWithError:error];

  return error;
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  replyCopy = reply;
  if (event == 2)
  {
    v9 = [params objectForKey:&unk_2853CC9D8];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      authContext = self->_authContext;
      credential = [(BKUIFaceIDEnrollOperationsHandler *)self credential];
      v13 = [credential dataUsingEncoding:4];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__BKUIFaceIDEnrollOperationsHandler_event_params_reply___block_invoke;
      v14[3] = &unk_278D09FD8;
      v15 = replyCopy;
      [(LAContext *)authContext setCredential:v13 forProcessedEvent:2 credentialType:-1 reply:v14];
    }
  }
}

- (BOOL)shouldShowRetryUI
{
  if ([(BKUIFaceIDEnrollOperationsHandler *)self glassesEnforcementError])
  {
    return 1;
  }

  matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  if (matchOperation)
  {
    matchOperation2 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
    matchedIdentity = [matchOperation2 matchedIdentity];
    if (matchedIdentity)
    {
      v3 = 0;
    }

    else
    {
      matchOperation3 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
      v3 = [matchOperation3 failReason] == 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BKUIPearlEnrollOperationsDelegate)operationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_operationsDelegate);

  return WeakRetained;
}

- (void)retryPressed
{
  if ([(BKUIFaceIDEnrollOperationsHandler *)self glassesEnforcementError])
  {

    [(BKUIFaceIDEnrollOperationsHandler *)self retryOperation];
  }

  else
  {
    matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
    [matchOperation retryMatchOperation];

    operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate setSubstate:0 animated:1 afterDelay:0.0];
  }
}

- (id)getAuthContextForCredentialError:(id *)error authContext:(id *)context
{
  v6 = [(BKUIFaceIDEnrollOperationsHandler *)self getAuthContextForCredentialError:error];
  *context = self->_authContext;

  return v6;
}

- (int64_t)glassesRequirement
{
  if ([(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration]== 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)bkIdentities
{
  device = [(BKUIFaceIDEnrollOperationsHandler *)self device];
  v7 = 0;
  v3 = [device identitiesWithError:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = _BKUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BKUIFaceIDEnrollOperationsHandler *)v4 bkIdentities];
    }
  }

  return v3;
}

- (void)_matchOperationPreflightCheck:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__BKUIFaceIDEnrollOperationsHandler_enrollOperation_failedWithReason___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)bkIdentities
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [self description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "unable to fetch number of identities error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end