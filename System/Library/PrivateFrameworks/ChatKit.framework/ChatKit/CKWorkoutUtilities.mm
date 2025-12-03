@interface CKWorkoutUtilities
+ (BOOL)_presentWorkoutRemoteViewServiceOnHostViewController:(id)controller withWorkoutData:(id)data;
+ (void)_launchWorkoutPreviewWithWorkoutData:(id)data;
@end

@implementation CKWorkoutUtilities

+ (void)_launchWorkoutPreviewWithWorkoutData:(id)data
{
  dataCopy = data;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getWorkoutKitXPCServiceHelperClass_softClass;
  v11 = getWorkoutKitXPCServiceHelperClass_softClass;
  if (!getWorkoutKitXPCServiceHelperClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getWorkoutKitXPCServiceHelperClass_block_invoke;
    v7[3] = &unk_1E72EB968;
    v7[4] = &v8;
    __getWorkoutKitXPCServiceHelperClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  sharedInstance = [v4 sharedInstance];
  [sharedInstance presentWorkoutCompositionData:dataCopy completion:&__block_literal_global_31];
}

void __59__CKWorkoutUtilities__launchWorkoutPreviewWithWorkoutData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Workout preview completionHandler called with error : %@", &v5, 0xCu);
  }
}

+ (BOOL)_presentWorkoutRemoteViewServiceOnHostViewController:(id)controller withWorkoutData:(id)data
{
  controllerCopy = controller;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v7 = getWKUIRemoteViewServiceAdaptorClass_softClass;
  v25 = getWKUIRemoteViewServiceAdaptorClass_softClass;
  if (!getWKUIRemoteViewServiceAdaptorClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getWKUIRemoteViewServiceAdaptorClass_block_invoke;
    v20 = &unk_1E72EB968;
    v21 = &v22;
    __getWKUIRemoteViewServiceAdaptorClass_block_invoke(buf);
    v7 = v23[3];
  }

  v8 = v7;
  _Block_object_dispose(&v22, 8);
  v9 = objc_alloc_init(v7);
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Workout thumbnail tapped. Presenting workout preview", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__CKWorkoutUtilities__presentWorkoutRemoteViewServiceOnHostViewController_withWorkoutData___block_invoke;
  v14[3] = &unk_1E72EB8D0;
  v15 = v9;
  v16 = controllerCopy;
  v11 = controllerCopy;
  v12 = v9;
  [v12 presentRemoteViewControllerOnHostController:v11 workoutPlanData:dataCopy dismissHandler:v14 completionHandler:&__block_literal_global_36];

  return 1;
}

uint64_t __91__CKWorkoutUtilities__presentWorkoutRemoteViewServiceOnHostViewController_withWorkoutData___block_invoke(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Workout preview cancel tapped", v4, 2u);
  }

  return [*(a1 + 32) dismissRemoteViewControllerOnHostController:*(a1 + 40)];
}

void __91__CKWorkoutUtilities__presentWorkoutRemoteViewServiceOnHostViewController_withWorkoutData___block_invoke_34(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Workout preview completionHandler called with error : %@", &v5, 0xCu);
  }
}

@end