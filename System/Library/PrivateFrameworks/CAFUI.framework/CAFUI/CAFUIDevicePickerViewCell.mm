@interface CAFUIDevicePickerViewCell
- (BOOL)isSelected;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setSelected:(BOOL)selected;
@end

@implementation CAFUIDevicePickerViewCell

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  CAFUIDevicePickerViewCell.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  return [(CAFUIDevicePickerViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIDevicePickerViewCell();
  v4 = v8.receiver;
  [(CAFUIDevicePickerViewCell *)&v8 setSelected:selectedCopy];
  v5 = *&v4[OBJC_IVAR____TtC5CAFUI25CAFUIDevicePickerViewCell_avatarView];
  isSelected = [v4 isSelected];
  v7 = 1.0;
  if (isSelected)
  {
    v7 = 0.25;
  }

  [v5 setAlpha_];
}

@end