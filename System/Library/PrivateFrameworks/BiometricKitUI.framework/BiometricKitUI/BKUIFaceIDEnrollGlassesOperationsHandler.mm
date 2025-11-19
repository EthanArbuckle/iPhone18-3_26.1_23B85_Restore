@interface BKUIFaceIDEnrollGlassesOperationsHandler
- (BOOL)showAddGlassesButton;
- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)a3;
@end

@implementation BKUIFaceIDEnrollGlassesOperationsHandler

- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)a3
{
  v4 = a3;
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchUserThenDoSingleEnrollmentCompletion:v4];
  v5 = objc_alloc_init(BKUIMatchVerifyPearlOperation);
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchOperation:v5];

  v6 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v7 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  [v7 setOperationsDelegate:v6];

  v19 = 0;
  LOBYTE(v7) = [(BKUIFaceIDEnrollOperationsHandler *)self _matchOperationPreflightCheck:&v19];
  v8 = v19;
  if (v7)
  {
    if ([(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration]== 4)
    {
      v9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      [v9 setState:3 animated:1];
    }

    objc_initWeak(&location, self);
    v10 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
    v11 = [(BKUIFaceIDEnrollOperationsHandler *)self device];
    v12 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    v13 = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke;
    v15[3] = &unk_278D09A10;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [v10 startMatchOperationWithDevice:v11 identity:v12 credential:v8 withConfiguration:v13 matchOperationActionBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = _BKUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BKUIFaceIDEnrollGlassesOperationsHandler matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:];
    }
  }
}

void __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v6 = [WeakRetained matchOperation];
    v7 = [v5 matchOperation];
    [v5 matchOperation:v6 failedToMatchWithUserPositionSubstate:objc_msgSend(v7 operationCompleteAction:{"lastErrorousSubState"), *(a1 + 32)}];

LABEL_14:
    goto LABEL_15;
  }

  if (([WeakRetained supportsPeriocularEnrollment] & 1) == 0)
  {
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_1();
    }

    v9 = [v5 operationsDelegate];
    v10 = MEMORY[0x277CCA9B8];
    v11 = -4;
    goto LABEL_10;
  }

  if (([v3 hasPeriocularEnrollment] & 1) == 0)
  {
    v13 = _BKUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_2();
    }

    v6 = [v5 matchOperation];
    [v5 matchOperation:v6 failedToMatchWithUserPositionSubstate:11 operationCompleteAction:*(a1 + 32)];
    goto LABEL_14;
  }

  if (([v3 canAddPeriocularEnrollment] & 1) == 0)
  {
    v14 = _BKUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_3();
    }

    v9 = [v5 operationsDelegate];
    v10 = MEMORY[0x277CCA9B8];
    v11 = -6;
LABEL_10:
    v12 = [v10 errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:v11 userInfo:0];
    [v9 endEnrollFlowWithError:v12];

    goto LABEL_15;
  }

  [v5 startEnrollForEnrollmentType:objc_msgSend(v5 glassesRequirement:"enrollmentType") identity:objc_msgSend(v5 operationStartedActionBlock:{"glassesRequirement"), v3, *(a1 + 32)}];
LABEL_15:
}

- (BOOL)showAddGlassesButton
{
  if (![(BKUIFaceIDEnrollOperationsHandler *)self supportsPeriocularEnrollment])
  {
    return 0;
  }

  v3 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
  if ([v3 canAddPeriocularEnrollment])
  {
    v4 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    if ([v4 hasPeriocularEnrollment])
    {
      v5 = [(BKUIFaceIDEnrollOperationsHandler *)self glassesFound];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end