@interface CRCarPlayAppPolicy
- (CRCarPlayAppPolicy)init;
- (unint64_t)bannerLaunchTypeForNotificationContentType:(id)type;
@end

@implementation CRCarPlayAppPolicy

- (CRCarPlayAppPolicy)init
{
  v5.receiver = self;
  v5.super_class = CRCarPlayAppPolicy;
  v2 = [(CRCarPlayAppPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRCarPlayAppPolicy *)v2 setCarPlayCapable:0];
    [(CRCarPlayAppPolicy *)v3 setCarPlaySupported:0];
    [(CRCarPlayAppPolicy *)v3 setCanDisplayOnCarScreen:0];
    [(CRCarPlayAppPolicy *)v3 setLaunchUsingSiri:0];
    [(CRCarPlayAppPolicy *)v3 setLaunchNotificationsUsingSiri:0];
    [(CRCarPlayAppPolicy *)v3 setSiriActivationOptions:0];
    [(CRCarPlayAppPolicy *)v3 setLaunchUsingMusicUIService:0];
    [(CRCarPlayAppPolicy *)v3 setBadgesAppIcon:0];
    [(CRCarPlayAppPolicy *)v3 setShowsNotifications:0];
    [(CRCarPlayAppPolicy *)v3 setHandlesCarIntents:0];
    [(CRCarPlayAppPolicy *)v3 setLaunchUsingTemplateUI:0];
    [(CRCarPlayAppPolicy *)v3 setSessionDependentPolicy:0];
    [(CRCarPlayAppPolicy *)v3 setApplicationCategory:0];
  }

  return v3;
}

- (unint64_t)bannerLaunchTypeForNotificationContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E6983460]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x1E6983470]];
  }

  return v4;
}

@end