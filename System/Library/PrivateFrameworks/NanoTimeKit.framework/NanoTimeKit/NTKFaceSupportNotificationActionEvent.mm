@interface NTKFaceSupportNotificationActionEvent
- (NSDictionary)ntkfs_analyticsJSONRepresentation;
- (NTKFaceSupportNotificationActionEvent)initWithBundleIdentifier:(id)identifier action:(int64_t)action delayFromPresentation:(double)presentation;
@end

@implementation NTKFaceSupportNotificationActionEvent

- (NTKFaceSupportNotificationActionEvent)initWithBundleIdentifier:(id)identifier action:(int64_t)action delayFromPresentation:(double)presentation
{
  identifierCopy = identifier;
  v9 = [identifierCopy length];
  if (presentation <= 0.0 || (action - 4) < 0xFFFFFFFFFFFFFFFDLL || v9 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKFaceSupportNotificationActionEvent;
    v13 = [(NTKFaceSupportNotificationActionEvent *)&v18 init];
    v14 = v13;
    if (v13)
    {
      v15 = [identifierCopy copy];
      bundleIdentifier = v14->_bundleIdentifier;
      v14->_bundleIdentifier = v15;

      v14->_action = action;
      v14->_delayFromPresentation = presentation;
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)ntkfs_analyticsJSONRepresentation
{
  v12[3] = *MEMORY[0x277D85DE8];
  bundleIdentifier = [(NTKFaceSupportNotificationActionEvent *)self bundleIdentifier];
  action = [(NTKFaceSupportNotificationActionEvent *)self action];
  [(NTKFaceSupportNotificationActionEvent *)self delayFromPresentation];
  v6 = v5;
  v12[0] = bundleIdentifier;
  v11[0] = @"bundle_identifier";
  v11[1] = @"action_invoked";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:action];
  v12[1] = v7;
  v11[2] = @"delay_from_presentation";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end