@interface SFTabOverviewLargeTitleView
- (void)cancelEditingButtonReceivedTap;
- (void)shareButtonReceivedTap;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation SFTabOverviewLargeTitleView

- (void)shareButtonReceivedTap
{
  v2 = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___SFTabOverviewLargeTitleView_shareButton);
  v4 = self;
  sub_18BC1E1A8();
  v2(v3);
}

- (void)cancelEditingButtonReceivedTap
{
  v2 = self;
  sub_18B99FB28();
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v3 = self + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration;
  v4 = *(&self->super.super._viewDelegate + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v5 = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 24);
  v24 = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 8);
  v25[0] = v5;
  *(v25 + 9) = *(&self->super.super._unsatisfiableConstraintsLoggingSuspensionCount + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 1);
  v6 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v7 = *(&self->super.super._layerRetained + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v20 = *(&self->super.super._swiftAnimationInfo + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v21 = v7;
  v8 = *(&self->super.super._layerRetained + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v9 = *(&self->super.super._viewDelegate + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v22 = *(&self->super.super._window + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v23 = v9;
  v10 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v19[0] = *(&self->super.super.super + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v19[1] = v10;
  v11 = *(&self->super.super._viewFlags + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 24);
  v16[6] = v24;
  v16[7] = v11;
  v16[2] = v20;
  v16[3] = v8;
  v16[4] = v22;
  v16[5] = v4;
  v17 = *(&self->super.super._minimumSafeAreaInsets.top + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v16[0] = v19[0];
  v16[1] = v6;
  v18 = 1;
  v12 = self;
  sub_18B9A2574(v19, &v15);
  sub_18B9A2438(v16);
  sub_18B9A25AC(v16);
  v13 = *(v3 + 2);
  v14 = sub_18BC1E1A8();
  v13(v14);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18B9A1C2C(v4);
}

@end