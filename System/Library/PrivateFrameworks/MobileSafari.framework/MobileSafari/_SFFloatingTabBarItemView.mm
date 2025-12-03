@interface _SFFloatingTabBarItemView
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation _SFFloatingTabBarItemView

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 2);
  v4 = *(&self->super.super._responderFlags + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v5 = *(&self->super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v6 = *(&self->super._cachedTraitCollection + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v7 = *(&self->super._swiftAnimationInfo + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v11[0] = *(&self->super.super.super.isa + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v11[1] = 1;
  v11[2] = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  selfCopy = self;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BA1288C(v11);
  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling);
  v9 = sub_18BC1E1A8();
  v8(v9);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_18BA134C0(editingCopy);
}

@end