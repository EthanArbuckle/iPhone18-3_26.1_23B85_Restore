@interface HUCheckmarkIconCollectionListCell
- (UICellAccessory)checkmarkCellAccessory;
- (id)_buildAccessories;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUCheckmarkIconCollectionListCell

- (UICellAccessory)checkmarkCellAccessory
{
  checkmarkCellAccessory = self->_checkmarkCellAccessory;
  if (!checkmarkCellAccessory)
  {
    self->_hidesCheckmark = 0;
    self->_disablesCheckmark = 0;
    v4 = objc_alloc_init(HUCheckmarkAccessoryView);
    checkmarkAccessoryView = self->_checkmarkAccessoryView;
    self->_checkmarkAccessoryView = v4;

    v6 = objc_alloc(MEMORY[0x277D75250]);
    checkmarkAccessoryView = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    v8 = [v6 initWithCustomView:checkmarkAccessoryView placement:1];
    v9 = self->_checkmarkCellAccessory;
    self->_checkmarkCellAccessory = v8;

    checkmarkCellAccessory = self->_checkmarkCellAccessory;
  }

  return checkmarkCellAccessory;
}

- (id)_buildAccessories
{
  v8.receiver = self;
  v8.super_class = HUCheckmarkIconCollectionListCell;
  _buildAccessories = [(HUIconCollectionListCell *)&v8 _buildAccessories];
  v4 = [_buildAccessories mutableCopy];

  if (![(HUCheckmarkIconCollectionListCell *)self hidesCheckmark])
  {
    checkmarkCellAccessory = [(HUCheckmarkIconCollectionListCell *)self checkmarkCellAccessory];
    [v4 addObject:checkmarkCellAccessory];
  }

  v6 = [v4 copy];

  return v6;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v15.receiver = self;
  v15.super_class = HUCheckmarkIconCollectionListCell;
  [(HUIconCollectionListCell *)&v15 updateUIWithAnimation:animation];
  if (![(HUCheckmarkIconCollectionListCell *)self hidesCheckmark])
  {
    item = [(HUIconCollectionListCell *)self item];
    latestResults = [item latestResults];
    v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v6 BOOLValue];

    item2 = [(HUIconCollectionListCell *)self item];
    latestResults2 = [item2 latestResults];
    v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (v10)
    {
      v11 = [v10 integerValue] == 2;
    }

    else
    {
      v11 = 0;
    }

    checkmarkAccessoryView = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    [checkmarkAccessoryView setChecked:v11];

    if ([(HUCheckmarkIconCollectionListCell *)self disablesCheckmark])
    {
      v13 = 1;
    }

    else
    {
      v13 = [(HUIconCollectionListCell *)self isDisabled]| bOOLValue;
    }

    checkmarkAccessoryView2 = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    [checkmarkAccessoryView2 setDisabled:v13 & 1];
  }
}

@end