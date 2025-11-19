@interface NTKFaceSupportNotificationActionEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportNotificationActionEvent)initWithBundleIdentifier:(id)a3 action:(int64_t)a4 delayFromPresentation:(double)a5;
@end

@implementation NTKFaceSupportNotificationActionEvent

- (NTKFaceSupportNotificationActionEvent)initWithBundleIdentifier:(id)a3 action:(int64_t)a4 delayFromPresentation:(double)a5
{
  v8 = a3;
  v9 = [v8 length];
  if (a5 <= 0.0 || (a4 - 4) < 0xFFFFFFFFFFFFFFFDLL || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKFaceSupportNotificationActionEvent;
    v13 = [(NTKFaceSupportNotificationActionEvent *)&v18 init];
    v14 = v13;
    if (v13)
    {
      v15 = [v8 copy];
      bundleIdentifier = v14->_bundleIdentifier;
      v14->_bundleIdentifier = v15;

      v14->_action = a4;
      v14->_delayFromPresentation = a5;
    }

    self = v14;
    v12 = self;
  }

  return v12;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [(NTKFaceSupportNotificationActionEvent *)self bundleIdentifier];
  v4 = [(NTKFaceSupportNotificationActionEvent *)self action];
  [(NTKFaceSupportNotificationActionEvent *)self delayFromPresentation];
  v6 = v5;
  v12[0] = v3;
  v11[0] = @"bundle_identifier";
  v11[1] = @"action_invoked";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v12[1] = v7;
  v11[2] = @"delay_from_presentation";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end