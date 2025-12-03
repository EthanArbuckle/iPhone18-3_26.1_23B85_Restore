@interface SFOneStepBookmarkingButton
- (SFOneStepBookmarkingButton)initWithCoder:(id)coder;
- (SFTooltip)tooltip;
- (id)didChangeShowingContextMenu;
- (void)setDidChangeShowingContextMenu:(id)menu;
@end

@implementation SFOneStepBookmarkingButton

- (SFOneStepBookmarkingButton)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu);
  *v3 = CGRectMake;
  v3[1] = 0;
  *(self + OBJC_IVAR___SFOneStepBookmarkingButton__isShowingContextMenu) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (id)didChangeShowingContextMenu
{
  v2 = *(self + OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu + 8);
  v5[4] = *(self + OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BBDC974;
  v5[3] = &block_descriptor_63;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (void)setDidChangeShowingContextMenu:(id)menu
{
  v4 = _Block_copy(menu);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___SFOneStepBookmarkingButton_didChangeShowingContextMenu);
  *v6 = sub_18BBDCE14;
  v6[1] = v5;
}

- (SFTooltip)tooltip
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v3 + 8))(v5, v2);
  v6 = objc_allocWithZone(SFTooltip);
  v7 = sub_18BC20B98();

  initWithText_ = [v6 initWithText_];

  return initWithText_;
}

@end