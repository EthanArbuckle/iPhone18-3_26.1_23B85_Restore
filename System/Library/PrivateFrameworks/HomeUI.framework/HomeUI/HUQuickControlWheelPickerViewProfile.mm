@interface HUQuickControlWheelPickerViewProfile
- (HUQuickControlWheelPickerViewProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setDefaultStyleProperties;
- (void)_setMultiStateStyleProperties;
- (void)setStyle:(unint64_t)style;
@end

@implementation HUQuickControlWheelPickerViewProfile

- (HUQuickControlWheelPickerViewProfile)init
{
  v5.receiver = self;
  v5.super_class = HUQuickControlWheelPickerViewProfile;
  v2 = [(HUQuickControlWheelPickerViewProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUQuickControlWheelPickerViewProfile *)v2 setStyle:0];
    [(HUQuickControlWheelPickerViewProfile *)v3 setShowOffState:0];
  }

  return v3;
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  if (style == 1)
  {
    [(HUQuickControlWheelPickerViewProfile *)self _setMultiStateStyleProperties];
  }

  else if (!style)
  {
    [(HUQuickControlWheelPickerViewProfile *)self _setDefaultStyleProperties];
  }
}

- (void)_setDefaultStyleProperties
{
  [(HUQuickControlWheelPickerViewProfile *)self setBorderWidth:2.0];
  systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
  [(HUQuickControlWheelPickerViewProfile *)self setBorderColor:systemLightGrayColor];

  [(HUQuickControlWheelPickerViewProfile *)self setCornerRadius:20.0];
  [(HUQuickControlWheelPickerViewProfile *)self setSizeToFitTextWidth:1];
  [(HUQuickControlWheelPickerViewProfile *)self setUppercaseRowTitles:0];
  [(HUQuickControlWheelPickerViewProfile *)self borderWidth];
  [(HUQuickControlWheelPickerViewProfile *)self setSelectedRowBorderWidth:?];

  [(HUQuickControlWheelPickerViewProfile *)self setSelectedRowCornerRadius:8.0];
}

- (void)_setMultiStateStyleProperties
{
  [(HUQuickControlWheelPickerViewProfile *)self _setDefaultStyleProperties];
  [(HUQuickControlWheelPickerViewProfile *)self setBorderWidth:0.0];
  [(HUQuickControlWheelPickerViewProfile *)self setUppercaseRowTitles:1];

  [(HUQuickControlWheelPickerViewProfile *)self setSelectedRowCornerRadius:16.0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HUQuickControlWheelPickerViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v7 copyWithZone:zone];
  [(HUQuickControlWheelPickerViewProfile *)self borderWidth];
  [v4 setBorderWidth:?];
  borderColor = [(HUQuickControlWheelPickerViewProfile *)self borderColor];
  [v4 setBorderColor:borderColor];

  [(HUQuickControlWheelPickerViewProfile *)self cornerRadius];
  [v4 setCornerRadius:?];
  [v4 setSizeToFitTextWidth:{-[HUQuickControlWheelPickerViewProfile sizeToFitTextWidth](self, "sizeToFitTextWidth")}];
  [v4 setUppercaseRowTitles:{-[HUQuickControlWheelPickerViewProfile uppercaseRowTitles](self, "uppercaseRowTitles")}];
  [(HUQuickControlWheelPickerViewProfile *)self selectedRowBorderWidth];
  [v4 setSelectedRowBorderWidth:?];
  [(HUQuickControlWheelPickerViewProfile *)self selectedRowCornerRadius];
  [v4 setSelectedRowCornerRadius:?];
  [v4 setShowOffState:{-[HUQuickControlWheelPickerViewProfile showOffState](self, "showOffState")}];
  [v4 setStyle:{-[HUQuickControlWheelPickerViewProfile style](self, "style")}];
  return v4;
}

@end