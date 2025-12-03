@interface HUPresenceUserOptionState
- (HUPresenceUserOptionState)init;
- (HUPresenceUserOptionState)initWithActivationGranularity:(unint64_t)granularity selected:(BOOL)selected locationAvailable:(BOOL)available;
@end

@implementation HUPresenceUserOptionState

- (HUPresenceUserOptionState)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithActivationGranularity_selected_locationAvailable_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:566 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceUserOptionState init]", v5}];

  return 0;
}

- (HUPresenceUserOptionState)initWithActivationGranularity:(unint64_t)granularity selected:(BOOL)selected locationAvailable:(BOOL)available
{
  v9.receiver = self;
  v9.super_class = HUPresenceUserOptionState;
  result = [(HUPresenceUserOptionState *)&v9 init];
  if (result)
  {
    result->_activationGranularity = granularity;
    result->_selected = selected;
    result->_locationAvailable = available;
  }

  return result;
}

@end