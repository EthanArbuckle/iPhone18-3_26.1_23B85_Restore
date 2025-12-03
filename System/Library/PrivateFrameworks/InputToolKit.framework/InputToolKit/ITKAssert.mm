@interface ITKAssert
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format;
+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format;
@end

@implementation ITKAssert

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert alertMessage:(id)message format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v29 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v14 = [[v12 alloc] initWithFormat:formatCopy arguments:&v30];

  v15 = os_log_create("com.apple.VisionKit", "Assert");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    conditionCopy = condition;
    v25 = 2080;
    nameCopy = name;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&dword_254BF2000, v15, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (crashCopy)
  {
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ITKAssert handleFailedAssertWithCondition:v14 functionName:v16 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (alertCopy)
  {
    isInternalBuild = itk_isInternalBuild();
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v20 = [environment objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    bOOLValue = [v20 BOOLValue];

    if (isInternalBuild && (bOOLValue & 1) == 0 && !crashCopy)
    {
      v22 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ITKAssert handleFailedAssertWithCondition:v14 functionName:v22 simulateCrash:? showAlert:? alertMessage:? format:?];
      }
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)condition functionName:(const char *)name simulateCrash:(BOOL)crash showAlert:(BOOL)alert format:(id)format
{
  alertCopy = alert;
  crashCopy = crash;
  v12 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v14 = [[v12 alloc] initWithFormat:formatCopy arguments:&v15];

  [self handleFailedAssertWithCondition:condition functionName:name simulateCrash:crashCopy showAlert:alertCopy alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_254BF2000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end