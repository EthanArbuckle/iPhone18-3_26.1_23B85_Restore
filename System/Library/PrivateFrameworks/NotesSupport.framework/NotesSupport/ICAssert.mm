@interface ICAssert
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format;
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format;
@end

@implementation ICAssert

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v42 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v16 = [[v14 alloc] initWithFormat:formatCopy arguments:&v43];

  v17 = os_log_create("com.apple.notes", "Assert");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    conditionCopy = condition;
    v38 = 2080;
    nameCopy = name;
    v40 = 2112;
    v41 = v16;
    _os_log_error_impl(&dword_1D4576000, v17, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (crashCopy)
  {
    v18 = os_log_create("com.apple.notes", "SimulatedCrash");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ICAssert handleFailedAssertWithCondition:v16 functionName:v18 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (alertCopy)
  {
    v35 = crashCopy;
    v19 = messageCopy;
    nameCopy2 = name;
    conditionCopy2 = condition;
    v22 = +[ICUtilities showInternalInstallUI];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v25 = ICNotesAppBundleIdentifier();
    v26 = [bundleIdentifier isEqualToString:v25];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];
    v29 = [environment objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    v30 = ([v29 BOOLValue] & 1) != 0 || +[ICDeviceSupport isRunningUnitTests](ICDeviceSupport, "isRunningUnitTests");

    messageCopy = v19;
    if ((v22 & v26) == 1 && !v30)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Notes TTR: %@", v16];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed assertion (%s) in %s:\n%@", conditionCopy2, nameCopy2, v16];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I got this alert right after I...\n\n%@", v32];
      if (!v35)
      {
        v34 = os_log_create("com.apple.notes", "SimulatedCrash");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [ICAssert handleFailedAssertWithCondition:v16 functionName:v34 simulateCrash:? showAlert:? alertMessage:? format:?];
        }
      }

      [ICRadarUtilities promptUserToFileBugWithAlertMessage:messageCopy bugTitle:v31 bugDescription:v33];
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v12 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v14 = [[v12 alloc] initWithFormat:formatCopy arguments:&v15];

  [self handleFailedAssertWithCondition:condition functionName:name simulateCrash:crashCopy showAlert:alertCopy alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1D4576000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end