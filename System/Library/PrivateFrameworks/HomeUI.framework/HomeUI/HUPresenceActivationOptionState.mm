@interface HUPresenceActivationOptionState
- (BOOL)isSelected;
- (HUPresenceActivationOptionState)init;
- (HUPresenceActivationOptionState)initWithUserOptionItemProvider:(id)provider activationOptionItem:(id)item;
- (unint64_t)activationGranularity;
- (void)setSelected:(BOOL)selected;
@end

@implementation HUPresenceActivationOptionState

- (HUPresenceActivationOptionState)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithUserOptionItemProvider_activationOptionItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:533 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceActivationOptionState init]", v5}];

  return 0;
}

- (HUPresenceActivationOptionState)initWithUserOptionItemProvider:(id)provider activationOptionItem:(id)item
{
  providerCopy = provider;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = HUPresenceActivationOptionState;
  v9 = [(HUPresenceActivationOptionState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userOptionItemProvider, provider);
    objc_storeStrong(&v10->_activationOptionItem, item);
  }

  return v10;
}

- (unint64_t)activationGranularity
{
  activationOptionItem = [(HUPresenceActivationOptionState *)self activationOptionItem];
  activationGranularity = [activationOptionItem activationGranularity];

  return activationGranularity;
}

- (BOOL)isSelected
{
  activationOptionItem = [(HUPresenceActivationOptionState *)self activationOptionItem];
  isSelected = [activationOptionItem isSelected];

  return isSelected;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  activationOptionItem = [(HUPresenceActivationOptionState *)self activationOptionItem];
  [activationOptionItem setSelected:selectedCopy];
}

@end