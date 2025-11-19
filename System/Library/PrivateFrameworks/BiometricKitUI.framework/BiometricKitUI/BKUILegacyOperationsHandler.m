@interface BKUILegacyOperationsHandler
- (void)advanceEnrollmentState;
- (void)enrollOperation:(id)a3 finishedWithEnrollResult:(id)a4;
- (void)startEnroll;
@end

@implementation BKUILegacyOperationsHandler

- (void)advanceEnrollmentState
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v4 = MEMORY[0x277CCACA8];
  [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
  v6 = (v5 * 100.0);
  v7 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [v7 percentOfPillsCompleted];
  v9 = [v4 stringWithFormat:@"BioKit: %d%%, rings: %d%%", v6, (v8 * 100.0)];
  [v3 setProgressString:v9];

  v10 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [v10 _updateDebugLabel];

  v11 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [v11 percentOfPillsCompleted];
  v13 = v12;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = [(BKUIFaceIDEnrollOperationsHandler *)self poseStatus];
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
          objc_enumerationMutation(v14);
        }

        [*(*(&v49 + 1) + 8 * v18++) integerValue];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v16);
  }

  v19 = _BKUILoggingFacility();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    v21 = [v20 state];
    [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
    v23 = (v22 * 100.0);
    v24 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [v24 percentOfPillsCompleted];
    *buf = 134218752;
    v54 = *&v13;
    v55 = 1024;
    *v56 = v21;
    *&v56[4] = 1024;
    *&v56[6] = v23;
    LOWORD(v57[0]) = 1024;
    *(v57 + 2) = (v25 * 100.0);
    _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "advanceEnrollmentState evaluate next state for advancement... percentPillsCompleted:%f state:%i BioKit: %d%%, rings: %d%%", buf, 0x1Eu);
  }

  v26 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v27 = [v26 state];

  if (v27 == 5 && v13 >= 1.0)
  {
    v28 = _BKUILoggingFacility();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v28, OS_LOG_TYPE_DEFAULT, "Finishing 1st phase and continuing moving to 1st scan complete...", buf, 2u);
    }

    v29 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [v29 setState:6 animated:1 afterDelay:1.0];
    goto LABEL_15;
  }

  v29 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  if ([v29 state] != 7 || v13 < 1.0)
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
      v36 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      v37 = [v36 state];
      *buf = 138412802;
      v54 = @"Legacy";
      v55 = 2048;
      *v56 = v35;
      *&v56[8] = 1024;
      v57[0] = v37 == 7;
      _os_log_impl(&dword_241B0A000, v33, OS_LOG_TYPE_DEFAULT, "Finishing %@ enroll operation... %f %i", buf, 0x1Cu);
    }

    v38 = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
    v39 = [v38 state];

    if (v39 != 4)
    {
      v48 = 0;
      v40 = [(BKUIFaceIDEnrollOperationsHandler *)self _completeOperationWithError:&v48];
      v29 = v48;
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

        v43 = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
        v44 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        v45 = v44;
        if (!v43 || (v46 = [v44 state], v45, -[BKUIFaceIDEnrollOperationsHandler operationsDelegate](self, "operationsDelegate"), v45 = objc_claimAutoreleasedReturnValue(), v46 == 7))
        {
          [v45 setState:8 animated:1 afterDelay:0.5];
LABEL_34:

          goto LABEL_15;
        }

        v47 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        [v45 setState:objc_msgSend(v47 animated:"state") + 1 afterDelay:{1, 0.5}];
      }

      else
      {
        if (v42)
        {
          *buf = 138412546;
          v54 = @"Legacy";
          v55 = 2112;
          *v56 = v29;
          _os_log_impl(&dword_241B0A000, v41, OS_LOG_TYPE_DEFAULT, "Failed to complete %@ enroll operation: %@", buf, 0x16u);
        }

        v45 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete %@ enroll: %@", @"Legacy", v29];
        [v45 setStatus:v47];
      }

      goto LABEL_34;
    }
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)enrollOperation:(id)a3 finishedWithEnrollResult:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 enrolledIdentity];
  if (!v7)
  {
    [BKUILegacyOperationsHandler enrollOperation:finishedWithEnrollResult:];
  }

  v8 = v7;
  v9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [v9 enrollOperation:v10 finishedWithIdentity:v8 animateImmediately:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self cleanupEnroll];
}

- (void)startEnroll
{
  [(BKUIFaceIDEnrollOperationsHandler *)self setUserSelectedUseAccessibilityEnrollment:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self startEnrollForEnrollmentType:1 glassesRequirement:0 identity:0 operationStartedActionBlock:0];
}

@end