@interface HUSetupCodeFieldItem
- (HUSetupCodeFieldItem)init;
- (void)setValue:(id)value;
@end

@implementation HUSetupCodeFieldItem

- (HUSetupCodeFieldItem)init
{
  v14.receiver = self;
  v14.super_class = HUSetupCodeFieldItem;
  v2 = [(HUSetupCodeFieldItem *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_active = 0;
    v2->_itemNumber = 0;
    value = v2->_value;
    v2->_value = 0;

    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    digitLabel = v3->_digitLabel;
    v3->_digitLabel = v5;

    [(UILabel *)v3->_digitLabel setAutoresizingMask:18];
    [(UILabel *)v3->_digitLabel setTextAlignment:1];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
    [(UILabel *)v3->_digitLabel setFont:v7];

    [(HUSetupCodeFieldItem *)v3 addSubview:v3->_digitLabel];
    [(UILabel *)v3->_digitLabel setClipsToBounds:0];
    [(HUSetupCodeFieldItem *)v3 setClipsToBounds:0];
    v8 = [MEMORY[0x277D75348] colorWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
    cGColor = [v8 CGColor];
    layer = [(HUSetupCodeFieldItem *)v3 layer];
    [layer setBorderColor:cGColor];

    layer2 = [(HUSetupCodeFieldItem *)v3 layer];
    [layer2 setBorderWidth:2.0];

    layer3 = [(HUSetupCodeFieldItem *)v3 layer];
    [layer3 setCornerRadius:6.0];
  }

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  value = [(HUSetupCodeFieldItem *)self value];

  if (value != valueCopy)
  {
    objc_storeStrong(&self->_value, value);
    value2 = [(HUSetupCodeFieldItem *)self value];
    stringValue = [value2 stringValue];
    digitLabel = [(HUSetupCodeFieldItem *)self digitLabel];
    [digitLabel setText:stringValue];
  }
}

@end