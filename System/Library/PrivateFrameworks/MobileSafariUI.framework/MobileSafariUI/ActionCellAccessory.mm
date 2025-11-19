@interface ActionCellAccessory
- (ActionCellAccessory)initWithAction:(id)a3 visibilityProvider:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyContentConfiguration:(id)a3 forState:(id)a4;
- (void)setPreferredSymbolConfiguration:(id)a3;
@end

@implementation ActionCellAccessory

- (ActionCellAccessory)initWithAction:(id)a3 visibilityProvider:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D75220] buttonWithType:1 primaryAction:a3];
  v8 = [(ActionCellAccessory *)self initWithCustomView:v7 placement:1];
  if (v8)
  {
    v9 = _Block_copy(v6);
    visibilityProvider = v8->_visibilityProvider;
    v8->_visibilityProvider = v9;

    [(UICellAccessory *)v8 setReservedLayoutWidth:30.0];
    v11 = v8;
  }

  return v8;
}

- (void)setPreferredSymbolConfiguration:(id)a3
{
  v5 = a3;
  if (self->_preferredSymbolConfiguration != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_preferredSymbolConfiguration, a3);
    v6 = [(ActionCellAccessory *)self customView];
    [v6 setPreferredSymbolConfiguration:v7 forImageInState:0];

    v5 = v7;
  }
}

- (void)applyContentConfiguration:(id)a3 forState:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
    v8 = [(ActionCellAccessory *)self customView];
    v9 = (*(self->_visibilityProvider + 2))();
    [v8 setHidden:v9 ^ 1u];
    [(UICellAccessory *)self setHidden:v9 ^ 1u];
    v10 = [v7 textProperties];
    v11 = [v10 color];
    [v8 setTitleColor:v11 forState:0];

    if ([v7 safari_usesWhiteText])
    {
      v12 = [v7 textProperties];
      v13 = [v12 color];
      [v8 setTintColor:v13];
    }

    else
    {
      v12 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 setTintColor:v12];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = ActionCellAccessory;
  v4 = [(UICellAccessory *)&v8 copyWithZone:a3];
  v5 = _Block_copy(self->_visibilityProvider);
  v6 = v4[11];
  v4[11] = v5;

  [v4 setPreferredSymbolConfiguration:self->_preferredSymbolConfiguration];
  return v4;
}

@end