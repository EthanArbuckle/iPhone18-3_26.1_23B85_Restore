@interface DDFaceTimeAction
- (id)dialRequest;
- (id)notificationTitle;
@end

@implementation DDFaceTimeAction

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"FaceTime %@");
  v5 = [(DDCallAction *)self notificationTitleTargetString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)dialRequest
{
  v4.receiver = self;
  v4.super_class = DDFaceTimeAction;
  v2 = [(DDFaceTimeAudioAction *)&v4 dialRequest];
  [v2 setVideo:1];

  return v2;
}

@end