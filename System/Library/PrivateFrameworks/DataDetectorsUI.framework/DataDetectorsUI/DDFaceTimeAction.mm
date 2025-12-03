@interface DDFaceTimeAction
- (id)dialRequest;
- (id)notificationTitle;
@end

@implementation DDFaceTimeAction

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"FaceTime %@");
  notificationTitleTargetString = [(DDCallAction *)self notificationTitleTargetString];
  v6 = [v3 stringWithFormat:v4, notificationTitleTargetString];

  return v6;
}

- (id)dialRequest
{
  v4.receiver = self;
  v4.super_class = DDFaceTimeAction;
  dialRequest = [(DDFaceTimeAudioAction *)&v4 dialRequest];
  [dialRequest setVideo:1];

  return dialRequest;
}

@end