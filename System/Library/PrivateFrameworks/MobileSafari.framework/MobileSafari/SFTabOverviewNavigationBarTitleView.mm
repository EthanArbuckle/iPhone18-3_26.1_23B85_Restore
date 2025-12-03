@interface SFTabOverviewNavigationBarTitleView
- (void)cancelRetitling;
- (void)contentDidChange;
- (void)layoutSubviews;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SFTabOverviewNavigationBarTitleView

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
  v2 = v3.receiver;
  [(_UINavigationBarTitleView *)&v3 contentDidChange];
  [v2 setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
  v2 = v3.receiver;
  [(SFTabOverviewNavigationBarTitleView *)&v3 layoutSubviews];
  sub_18BAEE4BC();
  sub_18BAEE7F4();
}

- (void)cancelRetitling
{
  selfCopy = self;
  sub_18BAEE994();
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v18[0] = *(&self->super.super.super + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v18[1] = v3;
  v4 = *(&self->super.super._layerRetained + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v18[2] = *(&self->super.super._swiftAnimationInfo + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v18[3] = v4;
  v19 = *(&self->super.super._window + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v12 = v18[0];
  v13 = 1;
  v14 = *(&self->super.super.super + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 3);
  v5 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 3);
  v6 = *(&self->super.super._swiftAnimationInfo + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 3);
  v7 = *(&self->super.super._layerRetained + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 3);
  *&v17[13] = v19;
  *v17 = v7;
  v16 = v6;
  v15 = v5;
  selfCopy = self;
  sub_18B9EA6E8(v18, &v11);
  sub_18BAEF2DC(&v12);
  sub_18B9EA744(&v12);
  v9 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling);
  v10 = sub_18BC1E1A8();
  v9(v10);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_18BAEEC2C(editingCopy);
}

@end