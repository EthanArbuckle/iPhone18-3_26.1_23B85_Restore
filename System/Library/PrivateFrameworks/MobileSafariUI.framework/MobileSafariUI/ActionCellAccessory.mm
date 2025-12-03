@interface ActionCellAccessory
- (ActionCellAccessory)initWithAction:(id)action visibilityProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyContentConfiguration:(id)configuration forState:(id)state;
- (void)setPreferredSymbolConfiguration:(id)configuration;
@end

@implementation ActionCellAccessory

- (ActionCellAccessory)initWithAction:(id)action visibilityProvider:(id)provider
{
  providerCopy = provider;
  v7 = [MEMORY[0x277D75220] buttonWithType:1 primaryAction:action];
  v8 = [(ActionCellAccessory *)self initWithCustomView:v7 placement:1];
  if (v8)
  {
    v9 = _Block_copy(providerCopy);
    visibilityProvider = v8->_visibilityProvider;
    v8->_visibilityProvider = v9;

    [(UICellAccessory *)v8 setReservedLayoutWidth:30.0];
    v11 = v8;
  }

  return v8;
}

- (void)setPreferredSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_preferredSymbolConfiguration != configurationCopy)
  {
    v7 = configurationCopy;
    objc_storeStrong(&self->_preferredSymbolConfiguration, configuration);
    customView = [(ActionCellAccessory *)self customView];
    [customView setPreferredSymbolConfiguration:v7 forImageInState:0];

    configurationCopy = v7;
  }
}

- (void)applyContentConfiguration:(id)configuration forState:(id)state
{
  configurationCopy = configuration;
  stateCopy = state;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
    customView = [(ActionCellAccessory *)self customView];
    v9 = (*(self->_visibilityProvider + 2))();
    [customView setHidden:v9 ^ 1u];
    [(UICellAccessory *)self setHidden:v9 ^ 1u];
    textProperties = [v7 textProperties];
    color = [textProperties color];
    [customView setTitleColor:color forState:0];

    if ([v7 safari_usesWhiteText])
    {
      textProperties2 = [v7 textProperties];
      color2 = [textProperties2 color];
      [customView setTintColor:color2];
    }

    else
    {
      textProperties2 = [MEMORY[0x277D75348] secondaryLabelColor];
      [customView setTintColor:textProperties2];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = ActionCellAccessory;
  v4 = [(UICellAccessory *)&v8 copyWithZone:zone];
  v5 = _Block_copy(self->_visibilityProvider);
  v6 = v4[11];
  v4[11] = v5;

  [v4 setPreferredSymbolConfiguration:self->_preferredSymbolConfiguration];
  return v4;
}

@end