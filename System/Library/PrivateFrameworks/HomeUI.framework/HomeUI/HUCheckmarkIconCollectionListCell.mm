@interface HUCheckmarkIconCollectionListCell
- (UICellAccessory)checkmarkCellAccessory;
- (id)_buildAccessories;
- (void)updateUIWithAnimation:(BOOL)a3;
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
    v7 = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    v8 = [v6 initWithCustomView:v7 placement:1];
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
  v3 = [(HUIconCollectionListCell *)&v8 _buildAccessories];
  v4 = [v3 mutableCopy];

  if (![(HUCheckmarkIconCollectionListCell *)self hidesCheckmark])
  {
    v5 = [(HUCheckmarkIconCollectionListCell *)self checkmarkCellAccessory];
    [v4 addObject:v5];
  }

  v6 = [v4 copy];

  return v6;
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = HUCheckmarkIconCollectionListCell;
  [(HUIconCollectionListCell *)&v15 updateUIWithAnimation:a3];
  if (![(HUCheckmarkIconCollectionListCell *)self hidesCheckmark])
  {
    v4 = [(HUIconCollectionListCell *)self item];
    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v7 = [v6 BOOLValue];

    v8 = [(HUIconCollectionListCell *)self item];
    v9 = [v8 latestResults];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (v10)
    {
      v11 = [v10 integerValue] == 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    [v12 setChecked:v11];

    if ([(HUCheckmarkIconCollectionListCell *)self disablesCheckmark])
    {
      v13 = 1;
    }

    else
    {
      v13 = [(HUIconCollectionListCell *)self isDisabled]| v7;
    }

    v14 = [(HUCheckmarkIconCollectionListCell *)self checkmarkAccessoryView];
    [v14 setDisabled:v13 & 1];
  }
}

@end