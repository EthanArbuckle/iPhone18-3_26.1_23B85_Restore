@interface HUQuickControlWheelPickerViewItem
- (BOOL)isEqual:(id)equal;
- (HUQuickControlWheelPickerViewItem)initWithHFMultiStateControlItemValue:(id)value text:(id)text isSelected:(BOOL)selected;
- (HUQuickControlWheelPickerViewItem)initWithHFTVInputControlItemValue:(id)value;
@end

@implementation HUQuickControlWheelPickerViewItem

- (HUQuickControlWheelPickerViewItem)initWithHFTVInputControlItemValue:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = HUQuickControlWheelPickerViewItem;
  v5 = [(HUQuickControlWheelPickerViewItem *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = valueCopy;
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
      name = [v8 name];
      text = v5->_text;
      v5->_text = name;

      v5->_isSelected = [v8 isSelected];
    }
  }

  return v5;
}

- (HUQuickControlWheelPickerViewItem)initWithHFMultiStateControlItemValue:(id)value text:(id)text isSelected:(BOOL)selected
{
  valueCopy = value;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = HUQuickControlWheelPickerViewItem;
  v11 = [(HUQuickControlWheelPickerViewItem *)&v16 init];
  if (v11)
  {
    objc_opt_class();
    v12 = valueCopy;
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
      objc_storeStrong(&v11->_value, value);
      objc_storeStrong(&v11->_text, text);
      v11->_isSelected = selected;
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v13.receiver = self;
    v13.super_class = HUQuickControlWheelPickerViewItem;
    if ([(HUQuickControlWheelPickerViewItem *)&v13 isEqual:v5])
    {
      value = [(HUQuickControlWheelPickerViewItem *)self value];
      value2 = [v5 value];
      if ([value isEqual:value2])
      {
        text = [(HUQuickControlWheelPickerViewItem *)self text];
        text2 = [v5 text];
        if ([text isEqualToString:text2])
        {
          isSelected = [(HUQuickControlWheelPickerViewItem *)self isSelected];
          v11 = isSelected ^ [v5 isSelected] ^ 1;
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