@interface HUPresenceOptionSelectionConfirmationPrompt
- (HUPresenceOptionSelectionConfirmationPrompt)init;
- (HUPresenceOptionSelectionConfirmationPrompt)initWithAlertTitle:(id)title alertBody:(id)body resetLocationToHomeOnConfirmation:(BOOL)confirmation;
@end

@implementation HUPresenceOptionSelectionConfirmationPrompt

- (HUPresenceOptionSelectionConfirmationPrompt)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAlertTitle_alertBody_resetLocationToHomeOnConfirmation_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:585 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceOptionSelectionConfirmationPrompt init]", v5}];

  return 0;
}

- (HUPresenceOptionSelectionConfirmationPrompt)initWithAlertTitle:(id)title alertBody:(id)body resetLocationToHomeOnConfirmation:(BOOL)confirmation
{
  titleCopy = title;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = HUPresenceOptionSelectionConfirmationPrompt;
  v11 = [(HUPresenceOptionSelectionConfirmationPrompt *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_alertTitle, title);
    objc_storeStrong(&v12->_alertBody, body);
    v12->_resetLocationToHomeOnConfirmation = confirmation;
  }

  return v12;
}

@end