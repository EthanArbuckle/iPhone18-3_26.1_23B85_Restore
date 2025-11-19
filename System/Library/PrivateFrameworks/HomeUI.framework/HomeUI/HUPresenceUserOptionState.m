@interface HUPresenceUserOptionState
- (HUPresenceUserOptionState)init;
- (HUPresenceUserOptionState)initWithActivationGranularity:(unint64_t)a3 selected:(BOOL)a4 locationAvailable:(BOOL)a5;
@end

@implementation HUPresenceUserOptionState

- (HUPresenceUserOptionState)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithActivationGranularity_selected_locationAvailable_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:566 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceUserOptionState init]", v5}];

  return 0;
}

- (HUPresenceUserOptionState)initWithActivationGranularity:(unint64_t)a3 selected:(BOOL)a4 locationAvailable:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = HUPresenceUserOptionState;
  result = [(HUPresenceUserOptionState *)&v9 init];
  if (result)
  {
    result->_activationGranularity = a3;
    result->_selected = a4;
    result->_locationAvailable = a5;
  }

  return result;
}

@end