@interface HUPresenceOptionSelectionConfirmationPrompt
- (HUPresenceOptionSelectionConfirmationPrompt)init;
- (HUPresenceOptionSelectionConfirmationPrompt)initWithAlertTitle:(id)a3 alertBody:(id)a4 resetLocationToHomeOnConfirmation:(BOOL)a5;
@end

@implementation HUPresenceOptionSelectionConfirmationPrompt

- (HUPresenceOptionSelectionConfirmationPrompt)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAlertTitle_alertBody_resetLocationToHomeOnConfirmation_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:585 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceOptionSelectionConfirmationPrompt init]", v5}];

  return 0;
}

- (HUPresenceOptionSelectionConfirmationPrompt)initWithAlertTitle:(id)a3 alertBody:(id)a4 resetLocationToHomeOnConfirmation:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HUPresenceOptionSelectionConfirmationPrompt;
  v11 = [(HUPresenceOptionSelectionConfirmationPrompt *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_alertTitle, a3);
    objc_storeStrong(&v12->_alertBody, a4);
    v12->_resetLocationToHomeOnConfirmation = a5;
  }

  return v12;
}

@end