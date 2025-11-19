@interface DADiagnosticsPSController
+ (id)dumpRuntimeStateSpecifiers;
+ (id)linkSpecifier;
- (BOOL)saveFileAtPath:(id)a3 toDirectory:(id)a4 withExtension:(id)a5 error:(id *)a6;
- (id)BOOLeanPropertyWithSpecifier:(id)a3;
- (id)diagnosticSpecifiers;
- (id)specifiers;
- (void)_dismissSavingDataAlert;
- (void)_presentNotesController;
- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)handleClearAllLogsForSpecifier:(id)a3;
- (void)handleDumpRuntimeStateForSpecifier:(id)a3;
- (void)handleSaveAllLogsForSpecifier:(id)a3;
- (void)handleSaveAllLogsStep2;
- (void)purgeFileAtPath:(id)a3;
- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4;
- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4 dismissedSelector:(SEL)a5;
- (void)saveLogsWithNotes:(id)a3;
- (void)setBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)suspend;
@end

@implementation DADiagnosticsPSController

+ (id)linkSpecifier
{
  if ([objc_opt_class() diagnosticsVisible])
  {
    v2 = MEMORY[0x277D3FAD8];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DIAG_LINK_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
    v5 = [v2 preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dumpRuntimeStateSpecifiers
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:&stru_285ACAC78];
  [v2 addObject:v3];

  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DIAG_DUMP_RUNTIME_STATE" value:&stru_285ACAC78 table:@"Diagnostic"];
  v7 = [v4 buttonSpecifierWithTitle:v6 target:0 action:sel_handleDumpRuntimeStateForSpecifier_ confirmationInfo:0];
  [v2 addObject:v7];

  return v2;
}

- (id)diagnosticSpecifiers
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [objc_opt_class() dumpRuntimeStateSpecifiers];
  if (v3)
  {
    [v2 addObjectsFromArray:v3];
  }

  [v3 lastObject];

  return v2;
}

- (id)specifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(DADiagnosticsPSController *)self diagnosticSpecifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = MEMORY[0x277D3FCB8];
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_storeWeak((*(*(&v16 + 1) + 8 * v8++) + *v7), self);
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D3FC48];
  v10 = *(&self->super.super.super.super.super.isa + v9);
  *(&self->super.super.super.super.super.isa + v9) = v3;
  v11 = v3;

  v12 = *(&self->super.super.super.super.super.isa + v9);
  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  v6 = a3;
  simpleAlert = self->_simpleAlert;
  if (simpleAlert == v6)
  {
    self->_simpleAlert = 0;

    simpleConfirmSheetDismissedSEL = self->_simpleConfirmSheetDismissedSEL;
    if (simpleConfirmSheetDismissedSEL)
    {
      v9 = self->_simpleConfirmSheetDismissedSEL;
      [(DADiagnosticsPSController *)self performSelector:simpleConfirmSheetDismissedSEL withObject:0 afterDelay:1.0];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DADiagnosticsPSController;
    [(DADiagnosticsPSController *)&v10 alertView:v6 clickedButtonAtIndex:a4];
  }
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  savingDataAlert = self->_savingDataAlert;
  if (savingDataAlert == a3)
  {
    self->_savingDataAlert = 0;

    [(DADiagnosticsPSController *)self performSelector:sel_handleSaveAllLogsStep2 withObject:0 afterDelay:0.0];
  }
}

- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4 dismissedSelector:(SEL)a5
{
  v8 = MEMORY[0x277D75118];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Diagnostic"];
  v14 = [v11 initWithTitle:v10 message:v9 delegate:self cancelButtonTitle:v13 otherButtonTitles:0];

  simpleAlert = self->_simpleAlert;
  self->_simpleAlert = v14;

  if (a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = 0;
  }

  self->_simpleConfirmSheetDismissedSEL = v16;
  v17 = self->_simpleAlert;

  [(UIAlertView *)v17 show];
}

- (void)runSimpleAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = *MEMORY[0x277D76620];
  v7 = a4;
  alertHeader = a3;
  if ([v6 isSuspended])
  {
    v9 = 0;
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, alertHeader, v7, 0, 0, 0, &v9);
  }

  else
  {
    [(DADiagnosticsPSController *)self runSimpleAlertWithTitle:alertHeader message:v7 dismissedSelector:0];
  }
}

- (void)setBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v8 = a4;
  v6 = [a3 BOOLValue];
  v7 = [v8 identifier];
  if ([v7 isEqualToString:DiagnosticsEnabledKey])
  {
    [(DADiagnosticsPSController *)self setLoggingEnabled:v6 forSpecifier:v8];
  }
}

- (id)BOOLeanPropertyWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 isEqualToString:DiagnosticsEnabledKey])
  {
    v6 = [(DADiagnosticsPSController *)self isLoggingEnabledForSpecifier:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (void)handleDumpRuntimeStateForSpecifier:(id)a3
{
  v3 = MEMORY[0x24C1D24D0](@"dataaccessd", a2, a3);
  if ((v3 & 0x80000000) == 0)
  {

    kill(v3, 31);
  }
}

- (BOOL)saveFileAtPath:(id)a3 toDirectory:(id)a4 withExtension:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = MEMORY[0x277CCAA00];
  v11 = a4;
  v12 = [v10 defaultManager];
  v13 = [v9 lastPathComponent];
  v14 = [v11 stringByAppendingPathComponent:v13];

  if (a5)
  {
    v15 = [v14 pathExtension];
    if ([v15 isEqual:@"log"])
    {
LABEL_5:

      goto LABEL_6;
    }

    v16 = [v14 pathExtension];
    v17 = [v16 isEqual:@"gz"];

    if ((v17 & 1) == 0)
    {
      [v14 stringByAppendingPathExtension:@"log"];
      v14 = v15 = v14;
      goto LABEL_5;
    }
  }

LABEL_6:
  v22 = 0;
  [v12 copyItemAtPath:v9 toPath:v14 error:&v22];
  v18 = v22;
  v19 = v18;
  if (a6 && v18)
  {
    v20 = v18;
    *a6 = v19;
  }

  return v19 == 0;
}

- (void)saveLogsWithNotes:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DADiagnosticsPSController *)self pathsOfAllLogFiles];
  v6 = validPathsForPaths(v5);

  v7 = [MEMORY[0x277CCA8F8] calendarDate];
  v8 = [v7 descriptionWithCalendarFormat:@"%Y-%m-%d-%H%M%S"];

  v9 = NSHomeDirectory();
  v10 = MEMORY[0x277CCACA8];
  v11 = [(DADiagnosticsPSController *)self savedLogsDirectoryNameForSpecifier:0];
  v12 = [v10 stringWithFormat:@"Library/Logs/CrashReporter/%@/Logs-%@", v11, v8];
  v13 = [v9 stringByAppendingPathComponent:v12];

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log Notes [%@]\n==========================================================\n%@\n==========================================================\n", v8, v4];

  if (v13)
  {
    v16 = [v13 stringByAppendingPathComponent:@"Notes.log"];
    [v15 writeToFile:v16 atomically:1 encoding:4 error:0];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v6;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v38;
LABEL_4:
      v21 = 0;
      while (1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if (![(DADiagnosticsPSController *)self saveFileAtPath:*(*(&v37 + 1) + 8 * v21) toDirectory:v13 withExtension:@"log" error:0])
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v19)
          {
            goto LABEL_4;
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = v17;
          v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v34;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v34 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [(DADiagnosticsPSController *)self purgeFileAtPath:*(*(&v33 + 1) + 8 * i)];
              }

              v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v24);
          }

          break;
        }
      }
    }

    v6 = v29;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DADiagnosticsPSController_saveLogsWithNotes___block_invoke;
  block[3] = &unk_278F21738;
  v31 = v13;
  v32 = self;
  v27 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v28 = *MEMORY[0x277D85DE8];
}

void __47__DADiagnosticsPSController_saveLogsWithNotes___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DIAG_LOG_SAVED_MESSAGE" value:&stru_285ACAC78 table:@"Diagnostic"];
  v5 = [*(a1 + 32) lastPathComponent];
  v9 = [v2 stringWithFormat:v4, v5];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"DIAG_LOG_SAVED_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
  [v6 runSimpleAlertWithTitle:v8 message:v9];
}

- (void)_presentNotesController
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DIAG_NOTES_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
  v6 = objc_opt_class();
  v11 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:v6 cell:1 edit:objc_opt_class()];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v11 setProperty:v8 forKey:*MEMORY[0x277D400B8]];

  [v11 setProperty:self forKey:@"kDADiagnosticSaveNotesDelegate"];
  v9 = *&v11[*MEMORY[0x277D3FC98]];
  v10 = objc_opt_new();
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 1;
  [v10 setParentController:self];
  [v10 setSpecifier:v11];
  objc_storeWeak(&v11[*MEMORY[0x277D3FCB8]], self);
  [(DADiagnosticsPSController *)self pushController:v10];
}

- (void)handleSaveAllLogsStep2
{
  v3 = [(DADiagnosticsPSController *)self pathsOfAllLogFiles];
  v8 = validPathsForPaths(v3);

  if ([v8 count])
  {
    [(DADiagnosticsPSController *)self _presentNotesController];
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DIAG_NO_LOGS_TO_SAVE_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"DIAGS_NO_LOGS_TO_SAVE_MESSAGE" value:&stru_285ACAC78 table:@"Diagnostic"];
    [(DADiagnosticsPSController *)self runSimpleAlertWithTitle:v5 message:v7];
  }
}

- (void)_dismissSavingDataAlert
{
  [(UIAlertView *)self->_savingDataAlert dismissWithClickedButtonIndex:0 animated:1];
  [*MEMORY[0x277D76620] setIgnoresInteractionEvents:0];
  v3 = [(DADiagnosticsPSController *)self rootController];
  [v3 taskFinished:self];
}

- (void)handleSaveAllLogsForSpecifier:(id)a3
{
  v4 = a3;
  v14 = [(DADiagnosticsPSController *)self rootController];
  [(DADiagnosticsPSController *)self handleDumpRuntimeStateForSpecifier:v4];

  [v14 addTask:self];
  v5 = objc_alloc(MEMORY[0x277D75118]);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DIAG_SAVING_ADDITIONAL_DATA_TITLE" value:&stru_285ACAC78 table:@"Diagnostic"];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DIAG_SAVING_ADDITIONAL_DATA_MESSAGE" value:&stru_285ACAC78 table:@"Diagnostic"];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_285ACAC78 table:@"Diagnostic"];
  v12 = [v5 initWithTitle:v7 message:v9 delegate:self cancelButtonTitle:v11 otherButtonTitles:0];
  savingDataAlert = self->_savingDataAlert;
  self->_savingDataAlert = v12;

  [(UIAlertView *)self->_savingDataAlert show];
  [*MEMORY[0x277D76620] setIgnoresInteractionEvents:1];
  [(DADiagnosticsPSController *)self performSelector:sel__dismissSavingDataAlert withObject:0 afterDelay:4.0];
}

- (void)suspend
{
  if (([*MEMORY[0x277D76620] isSuspendedEventsOnly] & 1) == 0)
  {
    v3 = [(DADiagnosticsPSController *)self navigationController];
    [v3 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)handleClearAllLogsForSpecifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(DADiagnosticsPSController *)self pathsOfAllLogFiles];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(DADiagnosticsPSController *)self purgeFileAtPath:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)purgeFileAtPath:(id)a3
{
  v5 = a3;
  v3 = [v5 lastPathComponent];
  if ([v3 isEqualToString:@"dataaccess.log"])
  {
    truncate([v5 fileSystemRepresentation], 0);
  }

  else
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 removeItemAtPath:v5 error:0];
  }
}

@end