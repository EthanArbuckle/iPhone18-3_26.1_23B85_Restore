@interface BKUIMatchVerifyPearlOperation
- (BKUIFaceIDEnrollOperationsHandler)weakHandler;
- (BKUIMatchVerifyPearlOperation)init;
- (BKUIPearlEnrollOperationsDelegate)operationsDelegate;
- (int)substateForFaceDetectionFeedBack:(int64_t)a3;
- (void)cancelMatchOperation;
- (void)matchOperation:(id)a3 failedWithReason:(int64_t)a4;
- (void)matchOperation:(id)a3 matchedWithResult:(id)a4;
- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4;
- (void)operation:(id)a3 faceDetectStateChanged:(id)a4;
- (void)operation:(id)a3 stateChanged:(int64_t)a4;
- (void)retryMatchOperation;
- (void)startMatchOperationWithDevice:(id)a3 identity:(id)a4 credential:(id)a5 withConfiguration:(unint64_t)a6 matchOperationActionBlock:(id)a7;
@end

@implementation BKUIMatchVerifyPearlOperation

- (BKUIMatchVerifyPearlOperation)init
{
  v3.receiver = self;
  v3.super_class = BKUIMatchVerifyPearlOperation;
  result = [(BKUIMatchVerifyPearlOperation *)&v3 init];
  if (result)
  {
    result->_failReason = -314159;
    *&result->_substate = 0;
    result->_lastErrorousSubState = 0;
  }

  return result;
}

- (void)retryMatchOperation
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "_matchOperation retrying match operation", v13, 2u);
  }

  v4 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  v5 = [v4 state];

  if (v5 != 4)
  {
    v6 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
    [v6 cancel];
  }

  self->_failReason = -314159;
  self->_lastErrorousSubState = 0;
  self->_substate = 0;
  matchedIdentity = self->_matchedIdentity;
  self->_matchedIdentity = 0;

  v8 = [(BKUIMatchVerifyPearlOperation *)self device];
  v9 = [(BKUIMatchVerifyPearlOperation *)self identity];
  v10 = [(BKUIMatchVerifyPearlOperation *)self credentialSet];
  v11 = [(BKUIMatchVerifyPearlOperation *)self enrollmentConfiguration];
  v12 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
  [(BKUIMatchVerifyPearlOperation *)self startMatchOperationWithDevice:v8 identity:v9 credential:v10 withConfiguration:v11 matchOperationActionBlock:v12];
}

- (void)startMatchOperationWithDevice:(id)a3 identity:(id)a4 credential:(id)a5 withConfiguration:(unint64_t)a6 matchOperationActionBlock:(id)a7
{
  v58 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = _Block_copy(a7);
  matchOperationDidMatch = self->_matchOperationDidMatch;
  self->_matchOperationDidMatch = v16;

  objc_storeStrong(&self->_device, a3);
  objc_storeStrong(&self->_credentialSet, a5);
  objc_storeStrong(&self->_identity, a4);
  self->_enrollmentConfiguration = a6;
  v18 = _BKUILoggingFacility();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    v56 = 2048;
    v57 = a6;
    _os_log_impl(&dword_241B0A000, v18, OS_LOG_TYPE_DEFAULT, "startMatchOperationWithDevice: device:%@ identity:%@ credentails::%@ config:%lu", buf, 0x2Au);
  }

  v48 = 0;
  v41 = v13;
  v19 = [v13 identitiesWithError:&v48];
  v20 = v48;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v22)
  {
    v23 = v15;
    v24 = v14;
    v25 = 0;
    v26 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v25 += [*(*(&v44 + 1) + 8 * i) hasPeriocularEnrollment];
      }

      v22 = [v21 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v22);
    v22 = v25 == 1;
    v14 = v24;
    v15 = v23;
  }

  if (v20)
  {
    identity = _BKUILoggingFacility();
    if (os_log_type_enabled(identity, OS_LOG_TYPE_ERROR))
    {
      [BKUIMatchVerifyPearlOperation startMatchOperationWithDevice:v20 identity:identity credential:? withConfiguration:? matchOperationActionBlock:?];
    }

    v29 = v41;
    goto LABEL_15;
  }

  v29 = v41;
  if (a6 == 4)
  {
    if ((([v21 count] > 1) & v22) == 1)
    {
      v20 = [v21 firstObject];
      if (([v20 hasPeriocularEnrollment] & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }
  }

  else if (a6 == 3 && (([v21 count] > 1) & v22) == 1)
  {
    v20 = [v21 firstObject];
    if ([v20 hasPeriocularEnrollment])
    {
LABEL_24:
      v34 = [v21 lastObject];
LABEL_38:
      identity = self->_identity;
      self->_identity = v34;
LABEL_15:

      goto LABEL_16;
    }

LABEL_37:
    v34 = [v21 firstObject];
    goto LABEL_38;
  }

LABEL_16:
  v43 = 0;
  v30 = [v29 createMatchOperationWithError:&v43];
  v31 = v43;
  matchOperation = self->_matchOperation;
  self->_matchOperation = v30;

  if (v31)
  {
    v33 = _BKUILoggingFacility();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v31;
      _os_log_impl(&dword_241B0A000, v33, OS_LOG_TYPE_DEFAULT, "_matchOperation createMatchOperation Error:%@", buf, 0xCu);
    }
  }

  else
  {
    v35 = self->_matchOperation;
    if (v35)
    {
      [(BKMatchPearlOperation *)v35 setPreAugmentationCheck:1];
      [(BKMatchPearlOperation *)self->_matchOperation setPreAugmentationCheckIdentity:self->_identity];
      [(BKMatchPearlOperation *)self->_matchOperation setPurpose:6];
      [(BKMatchPearlOperation *)self->_matchOperation setCredentialSet:v15];
      [(BKMatchPearlOperation *)self->_matchOperation setStopOnSuccess:1];
      [(BKMatchPearlOperation *)self->_matchOperation setDelegate:self];
      [(BKMatchPearlOperation *)self->_matchOperation setShouldAutoRetry:1];
      v35 = self->_matchOperation;
    }

    v42 = 0;
    v36 = [(BKMatchPearlOperation *)v35 startWithError:&v42];
    v31 = v42;
    if (v36)
    {
      [(BKUIMatchVerifyPearlOperation *)self setFailReason:-314159];
      goto LABEL_34;
    }

    v37 = _BKUILoggingFacility();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v31;
      _os_log_impl(&dword_241B0A000, v37, OS_LOG_TYPE_DEFAULT, "_matchOperation failed to start with Error:%@", buf, 0xCu);
    }

    [(BKMatchPearlOperation *)self->_matchOperation setDelegate:0];
    [(BKUIMatchVerifyPearlOperation *)self setFailReason:-9999];
  }

  v38 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (v38)
  {
    v39 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
    v39[2](v39, 0);
  }

LABEL_34:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)matchOperation:(id)a3 matchedWithResult:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 feedback];
  v7 = _BKUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    lastErrorousSubState = self->_lastErrorousSubState;
    substate = self->_substate;
    v10 = [v5 identity];
    *buf = 138413058;
    v19 = v5;
    v20 = 1024;
    v21 = lastErrorousSubState;
    v22 = 1024;
    v23 = substate;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "_matchOperation matchedWithResult BKMatchResultInfo:%@ lastSubState:%u converted substate %u identity %@", buf, 0x22u);
  }

  v11 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (v11)
  {
    v12 = [v5 identity];

    if (v12)
    {
      v13 = [v5 identity];
      [(BKUIMatchVerifyPearlOperation *)self setMatchedIdentity:v13];
    }

    else
    {
      [(BKUIMatchVerifyPearlOperation *)self setFailReason:1];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BKUIMatchVerifyPearlOperation_matchOperation_matchedWithResult___block_invoke;
    block[3] = &unk_278D09DA8;
    block[4] = self;
    v17 = v6;
    v16 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __66__BKUIMatchVerifyPearlOperation_matchOperation_matchedWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) substateForFaceDetectionFeedBack:*(a1 + 48)];
  *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
  *(*(a1 + 32) + 16) = v2;
  v3 = *(a1 + 32);
  if (!v3[3] && !v3[4])
  {
    v4 = [*(a1 + 40) identity];

    v3 = *(a1 + 32);
    if (!v4)
    {
      v3[3] = 11;
      *(*(a1 + 32) + 16) = 11;
      v3 = *(a1 + 32);
    }
  }

  v6 = [v3 matchOperationDidMatch];
  v5 = [*(a1 + 40) identity];
  v6[2](v6, v5);
}

- (void)matchOperation:(id)a3 failedWithReason:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = _BKUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    lastErrorousSubState = self->_lastErrorousSubState;
    v11 = 134218240;
    v12 = a4;
    v13 = 1024;
    v14 = lastErrorousSubState;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "_matchOperation failedWithReason with BKMatchFailReason:%li lastSubState:%i", &v11, 0x12u);
  }

  [(BKMatchPearlOperation *)self->_matchOperation setDelegate:0];
  [(BKUIMatchVerifyPearlOperation *)self setFailReason:a4];
  v8 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (v8)
  {
    v9 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
    v9[2](v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int)substateForFaceDetectionFeedBack:(int64_t)a3
{
  if ((a3 - 2) > 9)
  {
    return 0;
  }

  else
  {
    return dword_241B72960[a3 - 2];
  }
}

- (void)matchOperation:(id)a3 providedFeedback:(int64_t)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BKUIMatchVerifyPearlOperation_matchOperation_providedFeedback___block_invoke;
  block[3] = &unk_278D09DA8;
  v9 = v6;
  v10 = a4;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__BKUIMatchVerifyPearlOperation_matchOperation_providedFeedback___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) failReason] == -314159)
  {
    v2 = [*(a1 + 32) matchedIdentity];

    if (!v2)
    {
      v3 = [*(a1 + 32) substateForFaceDetectionFeedBack:*(a1 + 48)];
      v4 = _BKUILoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v8 = 138412802;
        v9 = v5;
        v10 = 2048;
        v11 = v6;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "matchOperation providedFeedback with operation:%@ lastSubState:%li converted substate %u", &v8, 0x1Cu);
      }

      *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
      *(*(a1 + 32) + 16) = v3;
      if ([*(a1 + 32) substate])
      {
        [*(a1 + 32) moveEnrollStateToNeedsPositioning:{objc_msgSend(*(a1 + 32), "substate")}];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateUIAtNeedsPosition];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 operationsDelegate];
    [v4 setSubstate:objc_msgSend(*(a1 + 32) animated:"currentUIDelegateDisplaySubState") afterDelay:{1, 0.0}];

    v9 = [*(a1 + 32) operationsDelegate];
    [v9 refreshEscapeHatchForCurrentState];
  }

  else
  {
    [v3 setDelegateUIAtNeedsPosition:1];
    v5 = [*(a1 + 32) operationsDelegate];
    v6 = [v5 state];

    if (v6 == 6)
    {
      v7 = [*(a1 + 32) operationsDelegate];
      [v7 setState:5 animated:1];
    }

    v8 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_2;
    block[3] = &unk_278D09978;
    block[4] = *(a1 + 32);
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 setState:3 animated:1];

  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_3;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 setSubstate:objc_msgSend(*(a1 + 32) animated:"currentUIDelegateDisplaySubState") afterDelay:{1, 0.1}];

  v3 = [*(a1 + 32) operationsDelegate];
  [v3 refreshEscapeHatchForCurrentState];
}

- (void)operation:(id)a3 faceDetectStateChanged:(id)a4
{
  v5 = [a4 faceDetected];

  [(BKUIMatchVerifyPearlOperation *)self setFaceDetected:v5];
}

- (void)operation:(id)a3 stateChanged:(int64_t)a4
{
  if ([(BKUIMatchVerifyPearlOperation *)self failReason]== -314159)
  {
    v6 = [(BKUIMatchVerifyPearlOperation *)self matchedIdentity];

    if (a4 == 5 && !v6 && ![(BKUIMatchVerifyPearlOperation *)self faceDetected])
    {
      [(BKUIMatchVerifyPearlOperation *)self moveEnrollStateToNeedsPositioning:0];
      v7 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
      v10 = 0;
      [v7 startNewMatchAttemptWithError:&v10];
      v8 = v10;

      if (v8)
      {
        v9 = _BKUILoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BKUIMatchVerifyPearlOperation operation:v8 stateChanged:v9];
        }
      }
    }
  }
}

- (void)cancelMatchOperation
{
  v3 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  [v3 setDelegate:0];

  v4 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  [v4 cancel];
}

- (BKUIFaceIDEnrollOperationsHandler)weakHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHandler);

  return WeakRetained;
}

- (BKUIPearlEnrollOperationsDelegate)operationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_operationsDelegate);

  return WeakRetained;
}

- (void)startMatchOperationWithDevice:(uint64_t)a1 identity:(NSObject *)a2 credential:withConfiguration:matchOperationActionBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "unable to fetch identities for user:%@ matching may be unreliable and users may run in to Face ID not available", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)operation:(void *)a1 stateChanged:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "_matchOperation stateChanged == HOLD + !Face ... startNewMatchAttemptWithError errored out :%@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end