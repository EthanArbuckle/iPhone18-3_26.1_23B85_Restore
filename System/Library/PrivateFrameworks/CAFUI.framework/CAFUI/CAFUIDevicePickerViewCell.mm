@interface CAFUIDevicePickerViewCell
- (BOOL)isSelected;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation CAFUIDevicePickerViewCell

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUIDevicePickerViewCell.didUpdateFocus(in:with:)(v6, v7);
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  return [(CAFUIDevicePickerViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  v4 = v8.receiver;
  [(CAFUIDevicePickerViewCell *)&v8 setSelected:v3];
  v5 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView];
  v6 = [v4 isSelected];
  v7 = 1.0;
  if (v6)
  {
    v7 = 0.25;
  }

  [v5 setAlpha_];
}

@end