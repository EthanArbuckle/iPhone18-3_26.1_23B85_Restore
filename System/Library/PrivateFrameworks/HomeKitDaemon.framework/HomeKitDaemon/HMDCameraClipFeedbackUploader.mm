@interface HMDCameraClipFeedbackUploader
- (void)uploadFeedbackWithCameraProfileUUID:(id)a3 clipModel:(id)a4 completionHandler:(id)a5;
@end

@implementation HMDCameraClipFeedbackUploader

- (void)uploadFeedbackWithCameraProfileUUID:(id)a3 clipModel:(id)a4 completionHandler:(id)a5
{
  v7 = MEMORY[0x277D14D90];
  v8 = a5;
  v9 = a3;
  v10 = [a4 hmbModelID];
  [v7 submitFeedbackWithCameraProfileUUID:v9 clipUUID:v10 completionHandler:v8];
}

@end