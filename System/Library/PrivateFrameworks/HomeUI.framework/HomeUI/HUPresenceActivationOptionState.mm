@interface HUPresenceActivationOptionState
- (BOOL)isSelected;
- (HUPresenceActivationOptionState)init;
- (HUPresenceActivationOptionState)initWithUserOptionItemProvider:(id)a3 activationOptionItem:(id)a4;
- (unint64_t)activationGranularity;
- (void)setSelected:(BOOL)a3;
@end

@implementation HUPresenceActivationOptionState

- (HUPresenceActivationOptionState)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUserOptionItemProvider_activationOptionItem_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:533 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceActivationOptionState init]", v5}];

  return 0;
}

- (HUPresenceActivationOptionState)initWithUserOptionItemProvider:(id)a3 activationOptionItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUPresenceActivationOptionState;
  v9 = [(HUPresenceActivationOptionState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userOptionItemProvider, a3);
    objc_storeStrong(&v10->_activationOptionItem, a4);
  }

  return v10;
}

- (unint64_t)activationGranularity
{
  v2 = [(HUPresenceActivationOptionState *)self activationOptionItem];
  v3 = [v2 activationGranularity];

  return v3;
}

- (BOOL)isSelected
{
  v2 = [(HUPresenceActivationOptionState *)self activationOptionItem];
  v3 = [v2 isSelected];

  return v3;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUPresenceActivationOptionState *)self activationOptionItem];
  [v4 setSelected:v3];
}

@end