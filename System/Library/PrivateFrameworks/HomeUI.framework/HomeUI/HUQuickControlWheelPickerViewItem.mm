@interface HUQuickControlWheelPickerViewItem
- (BOOL)isEqual:(id)a3;
- (HUQuickControlWheelPickerViewItem)initWithHFMultiStateControlItemValue:(id)a3 text:(id)a4 isSelected:(BOOL)a5;
- (HUQuickControlWheelPickerViewItem)initWithHFTVInputControlItemValue:(id)a3;
@end

@implementation HUQuickControlWheelPickerViewItem

- (HUQuickControlWheelPickerViewItem)initWithHFTVInputControlItemValue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HUQuickControlWheelPickerViewItem;
  v5 = [(HUQuickControlWheelPickerViewItem *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      objc_storeStrong(&v5->_value, v7);
      v9 = [v8 name];
      text = v5->_text;
      v5->_text = v9;

      v5->_isSelected = [v8 isSelected];
    }
  }

  return v5;
}

- (HUQuickControlWheelPickerViewItem)initWithHFMultiStateControlItemValue:(id)a3 text:(id)a4 isSelected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HUQuickControlWheelPickerViewItem;
  v11 = [(HUQuickControlWheelPickerViewItem *)&v16 init];
  if (v11)
  {
    objc_opt_class();
    v12 = v9;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      objc_storeStrong(&v11->_value, a3);
      objc_storeStrong(&v11->_text, a4);
      v11->_isSelected = a5;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v13.receiver = self;
    v13.super_class = HUQuickControlWheelPickerViewItem;
    if ([(HUQuickControlWheelPickerViewItem *)&v13 isEqual:v5])
    {
      v6 = [(HUQuickControlWheelPickerViewItem *)self value];
      v7 = [v5 value];
      if ([v6 isEqual:v7])
      {
        v8 = [(HUQuickControlWheelPickerViewItem *)self text];
        v9 = [v5 text];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(HUQuickControlWheelPickerViewItem *)self isSelected];
          v11 = v10 ^ [v5 isSelected] ^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end