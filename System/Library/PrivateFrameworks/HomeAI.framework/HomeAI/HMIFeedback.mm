@interface HMIFeedback
+ (void)submitFeedbackWithCameraProfileUUID:(id)d clipUUID:(id)iD runRemotely:(BOOL)remotely completionHandler:(id)handler;
@end

@implementation HMIFeedback

+ (void)submitFeedbackWithCameraProfileUUID:(id)d clipUUID:(id)iD runRemotely:(BOOL)remotely completionHandler:(id)handler
{
  v18[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v17[0] = @"taskType";
  v17[1] = @"cameraProfileUUID";
  v18[0] = HMITaskTypeFeedbackTask;
  v18[1] = dCopy;
  v17[2] = @"clipUUID";
  v18[2] = iDCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  if (remotely)
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
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v13 submitTaskWithOptions:v12 progressHandler:0 completionHandler:v15];
}

@end