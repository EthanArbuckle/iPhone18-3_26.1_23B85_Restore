@interface ITKAssert
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8;
+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7;
@end

@implementation ITKAssert

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 alertMessage:(id)a7 format:(id)a8
{
  v8 = a6;
  v9 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CCACA8];
  v13 = a8;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&v30];

  v15 = os_log_create("com.apple.VisionKit", "Assert");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = a3;
    v25 = 2080;
    v26 = a4;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&dword_254BF2000, v15, OS_LOG_TYPE_ERROR, "Failed assertion (%s) in %s: %@", buf, 0x20u);
  }

  if (v9)
  {
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ITKAssert handleFailedAssertWithCondition:v14 functionName:v16 simulateCrash:? showAlert:? alertMessage:? format:?];
    }
  }

  if (v8)
  {
    isInternalBuild = itk_isInternalBuild();
    v18 = [MEMORY[0x277CCAC38] processInfo];
    v19 = [v18 environment];
    v20 = [v19 objectForKeyedSubscript:@"SuppressAssertionAlerts"];
    v21 = [v20 BOOLValue];

    if (isInternalBuild && (v21 & 1) == 0 && !v9)
    {
      v22 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [ITKAssert handleFailedAssertWithCondition:v14 functionName:v22 simulateCrash:? showAlert:? alertMessage:? format:?];
      }
    }
  }
}

+ (void)handleFailedAssertWithCondition:(const char *)a3 functionName:(const char *)a4 simulateCrash:(BOOL)a5 showAlert:(BOOL)a6 format:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = MEMORY[0x277CCACA8];
  v13 = a7;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&v15];

  [a1 handleFailedAssertWithCondition:a3 functionName:a4 simulateCrash:v8 showAlert:v7 alertMessage:@"You encountered a serious bug in Notes. Will you please file a Radar?" format:{@"%@", v14}];
}

+ (void)handleFailedAssertWithCondition:(uint64_t)a1 functionName:(NSObject *)a2 simulateCrash:showAlert:alertMessage:format:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_254BF2000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

@end