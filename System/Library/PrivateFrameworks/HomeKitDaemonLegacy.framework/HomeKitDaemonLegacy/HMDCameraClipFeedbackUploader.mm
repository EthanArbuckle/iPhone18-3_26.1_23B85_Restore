@interface HMDCameraClipFeedbackUploader
- (void)uploadFeedbackWithCameraProfileUUID:(id)d clipModel:(id)model completionHandler:(id)handler;
@end

@implementation HMDCameraClipFeedbackUploader

- (void)uploadFeedbackWithCameraProfileUUID:(id)d clipModel:(id)model completionHandler:(id)handler
{
  v7 = MEMORY[0x277D14D90];
  handlerCopy = handler;
  dCopy = d;
  hmbModelID = [model hmbModelID];
  [v7 submitFeedbackWithCameraProfileUUID:dCopy clipUUID:hmbModelID completionHandler:handlerCopy];
}

@end