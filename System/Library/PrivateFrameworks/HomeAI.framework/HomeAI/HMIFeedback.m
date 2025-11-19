@interface HMIFeedback
+ (void)submitFeedbackWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 runRemotely:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation HMIFeedback

+ (void)submitFeedbackWithCameraProfileUUID:(id)a3 clipUUID:(id)a4 runRemotely:(BOOL)a5 completionHandler:(id)a6
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v17[0] = @"taskType";
  v17[1] = @"cameraProfileUUID";
  v18[0] = HMITaskTypeFeedbackTask;
  v18[1] = v9;
  v17[2] = @"clipUUID";
  v18[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  if (a5)
  {
    +[HMITaskService taskServiceClient];
  }

  else
  {
    +[HMITaskService taskService];
  }
  v13 = ;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMIFeedback_submitFeedbackWithCameraProfileUUID_clipUUID_runRemotely_completionHandler___block_invoke;
  v15[3] = &unk_278753FB8;
  v16 = v11;
  v14 = v11;
  [v13 submitTaskWithOptions:v12 progressHandler:0 completionHandler:v15];
}

@end