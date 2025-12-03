@interface BKUILegacyOperationsHandler
- (void)advanceEnrollmentState;
- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result;
- (void)startEnroll;
@end

@implementation BKUILegacyOperationsHandler

- (void)advanceEnrollmentState
{
  v59 = *MEMORY[0x277D85DE8];
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v4 = MEMORY[0x277CCACA8];
  [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
  v6 = (v5 * 100.0);
  operationsDelegate2 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate2 percentOfPillsCompleted];
  v9 = [v4 stringWithFormat:@"BioKit: %d%%, rings: %d%%", v6, (v8 * 100.0)];
  [operationsDelegate setProgressString:v9];

  operationsDelegate3 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate3 _updateDebugLabel];

  operationsDelegate4 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate4 percentOfPillsCompleted];
  v13 = v12;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  poseStatus = [(BKUIFaceIDEnrollOperationsHandler *)self poseStatus];
  v15 = [poseStatus countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      v18 = 0;
      do
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(poseStatus);
        }

        [*(*(&v49 + 1) + 8 * v18++) integerValue];
      }

      while (v16 != v18);
      v16 = [poseStatus countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v16);
  }

  v19 = _BKUILoggingFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    operationsDelegate5 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    state = [operationsDelegate5 state];
    [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
    v23 = (v22 * 100.0);
    operationsDelegate6 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate6 percentOfPillsCompleted];
    *buf = 134218752;
    v54 = *&v13;
    v55 = 1024;
    *v56 = state;
    *&v56[4] = 1024;
    *&v56[6] = v23;
    LOWORD(v57[0]) = 1024;
    *(v57 + 2) = (v25 * 100.0);
    _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "advanceEnrollmentState evaluate next state for advancement... percentPillsCompleted:%f state:%i BioKit: %d%%, rings: %d%%", buf, 0x1Eu);
  }

  operationsDelegate7 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  state2 = [operationsDelegate7 state];

  if (state2 == 5 && v13 >= 1.0)
  {
    v28 = _BKUILoggingFacility();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v28, OS_LOG_TYPE_DEFAULT, "Finishing 1st phase and continuing moving to 1st scan complete...", buf, 2u);
    }

    operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate8 setState:6 animated:1 afterDelay:1.0];
    goto LABEL_15;
  }

  operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  if ([operationsDelegate8 state] != 7 || v13 < 1.0)
  {
LABEL_15:

    goto LABEL_16;
  }

  [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
  v32 = v31;

  if (v32 >= 1.0)
  {
    v33 = _BKUILoggingFacility();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
      v35 = v34;
      operationsDelegate9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      state3 = [operationsDelegate9 state];
      *buf = 138412802;
      v54 = @"Legacy";
      v55 = 2048;
      *v56 = v35;
      *&v56[8] = 1024;
      v57[0] = state3 == 7;
      _os_log_impl(&dword_241B0A000, v33, OS_LOG_TYPE_DEFAULT, "Finishing %@ enroll operation... %f %i", buf, 0x1Cu);
    }

    enrollOperation = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
    state4 = [enrollOperation state];

    if (state4 != 4)
    {
      v48 = 0;
      v40 = [(BKUIFaceIDEnrollOperationsHandler *)self _completeOperationWithError:&v48];
      operationsDelegate8 = v48;
      v41 = _BKUILoggingFacility();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      if (v40)
      {
        if (v42)
        {
          *buf = 138412290;
          v54 = @"Legacy";
          _os_log_impl(&dword_241B0A000, v41, OS_LOG_TYPE_DEFAULT, "%@ enroll operation marked as completed!", buf, 0xCu);
        }

        enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
        operationsDelegate10 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        operationsDelegate12 = operationsDelegate10;
        if (!enrollmentConfiguration || (v46 = [operationsDelegate10 state], operationsDelegate12, -[BKUIFaceIDEnrollOperationsHandler operationsDelegate](self, "operationsDelegate"), operationsDelegate12 = objc_claimAutoreleasedReturnValue(), v46 == 7))
        {
          [operationsDelegate12 setState:8 animated:1 afterDelay:0.5];
LABEL_34:

          goto LABEL_15;
        }

        operationsDelegate11 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        [operationsDelegate12 setState:objc_msgSend(operationsDelegate11 animated:"state") + 1 afterDelay:{1, 0.5}];
      }

      else
      {
        if (v42)
        {
          *buf = 138412546;
          v54 = @"Legacy";
          v55 = 2112;
          *v56 = operationsDelegate8;
          _os_log_impl(&dword_241B0A000, v41, OS_LOG_TYPE_DEFAULT, "Failed to complete %@ enroll operation: %@", buf, 0x16u);
        }

        operationsDelegate12 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        operationsDelegate11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete %@ enroll: %@", @"Legacy", operationsDelegate8];
        [operationsDelegate12 setStatus:operationsDelegate11];
      }

      goto LABEL_34;
    }
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  enrolledIdentity = [resultCopy enrolledIdentity];
  if (!enrolledIdentity)
  {
    [BKUILegacyOperationsHandler enrollOperation:finishedWithEnrollResult:];
  }

  v8 = enrolledIdentity;
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate enrollOperation:operationCopy finishedWithIdentity:v8 animateImmediately:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self cleanupEnroll];
}

- (void)startEnroll
{
  [(BKUIFaceIDEnrollOperationsHandler *)self setUserSelectedUseAccessibilityEnrollment:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self startEnrollForEnrollmentType:1 glassesRequirement:0 identity:0 operationStartedActionBlock:0];
}

@end