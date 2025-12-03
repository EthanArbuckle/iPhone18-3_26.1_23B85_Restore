@interface OSADiagnosticsReporterSupport
+ (void)handleDiagnosticLog:(int64_t)log logPath:(id)path completion:(id)completion;
+ (void)initAlertDelegate;
@end

@implementation OSADiagnosticsReporterSupport

+ (void)initAlertDelegate
{
  if (DiagnosticsReporterServicesLibraryCore())
  {
    OSADiagnosticsReporterClass = getOSADiagnosticsReporterClass();
    initAlertDelegate_OSADiagnosticsReporterClass = OSADiagnosticsReporterClass;

    [OSADiagnosticsReporterClass initAlertDelegate];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "DiagnosticsReporterServices.framework is unavailable", v3, 2u);
  }
}

+ (void)handleDiagnosticLog:(int64_t)log logPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  if (OSAIsFeedbackPromptingEnabled())
  {
    if (DiagnosticsReporterServicesLibraryCore())
    {
      handleDiagnosticLog_logPath_completion__OSADiagnosticsReporterClass = getOSADiagnosticsReporterClass();
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v9 = getDiagnosticsReporterLaunchOptionsClass_softClass;
      v18 = getDiagnosticsReporterLaunchOptionsClass_softClass;
      if (!getDiagnosticsReporterLaunchOptionsClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getDiagnosticsReporterLaunchOptionsClass_block_invoke;
        v14[3] = &unk_1E7A271B0;
        v14[4] = &v15;
        __getDiagnosticsReporterLaunchOptionsClass_block_invoke(v14);
        v9 = v16[3];
      }

      v10 = v9;
      _Block_object_dispose(&v15, 8);
      handleDiagnosticLog_logPath_completion__DiagnosticsReporterLaunchOptionsClass = v9;
      if (objc_opt_class() && objc_opt_class())
      {
        v11 = objc_opt_new();
        [v11 setLog_path:pathCopy];
        v12 = MEMORY[0x1B2703360](completionCopy);
        v13 = v12;
        if (!completionCopy)
        {

          v13 = &__block_literal_global_0;
        }

        [handleDiagnosticLog_logPath_completion__OSADiagnosticsReporterClass launchAppWith:log options:v11 completion:v13];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[OSADiagnosticsReporterSupport handleDiagnosticLog:logPath:completion:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "DiagnosticsReporterServices.framework is unavailable", v14, 2u);
    }
  }
}

void __72__OSADiagnosticsReporterSupport_handleDiagnosticLog_logPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __72__OSADiagnosticsReporterSupport_handleDiagnosticLog_logPath_completion___block_invoke_cold_1(v2);
  }
}

void __72__OSADiagnosticsReporterSupport_handleDiagnosticLog_logPath_completion___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to launch DR with error: %@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end