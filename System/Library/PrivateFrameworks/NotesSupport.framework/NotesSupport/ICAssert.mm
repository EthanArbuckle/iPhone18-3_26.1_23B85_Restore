@interface ICAssert
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8;
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7;
@end

@implementation ICAssert

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8
{
  v9 = a6;
  v10 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = MEMORY[0x1E696AEC0];
  v15 = a8;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&v43];

  v17 = os_log_create("com.apple.notes", "Assert");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v37 = a3;
    v38 = 2080;
    v39 = a4;
    v40 = 2112;
    v41 = v16;
    _os_log_error_impl(&dword_1D4576000, v17, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (v10)
  {
    v18 = os_log_create("com.apple.notes", "SimulatedCrash");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ICAssert handleFailedAssertWithCondition:v16 functionName:v18 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (v9)
  {
    v35 = v10;
    v19 = v13;
    v20 = a4;
    v21 = a3;
    v22 = +[ICUtilities showInternalInstallUI];
    v23 = [MEMORY[0x1E696AAE8] mainBundle];
    v24 = [v23 bundleIdentifier];
    v25 = ICNotesAppBundleIdentifier();
    v26 = [v24 isEqualToString:v25];

    v27 = [MEMORY[0x1E696AE30] processInfo];
    v28 = [v27 environment];
    v29 = [v28 objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    v30 = ([v29 BOOLValue] & 1) != 0 || +[ICDeviceSupport isRunningUnitTests](ICDeviceSupport, "isRunningUnitTests");

    v13 = v19;
    if ((v22 & v26) == 1 && !v30)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notes TTR: %@", v16];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed assertion (%s) in %s:\n%@", v21, v20, v16];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I got this alert right after I...\n\n%@", v32];
      if (!v35)
      {
        v34 = os_log_create("com.apple.notes", "SimulatedCrash");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [ICAssert handleFailedAssertWithCondition:v16 functionName:v34 simulateCrash:? showAlert:? alertMessage:? format:?];
        }
      }

      [ICRadarUtilities promptUserToFileBugWithAlertMessage:v13 bugTitle:v31 bugDescription:v33];
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = a7;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&v15];

  [a1 handleFailedAssertWithCondition:a3 functionName:a4 simulateCrash:v8 showAlert:v7 alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1D4576000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end