@interface OcclusionTutorialController.TopView
- (_TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView)initWithCoder:(id)a3;
- (_TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OcclusionTutorialController.TopView

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for OcclusionTutorialController.TopView();
  v4 = v9.receiver;
  v5 = a3;
  [(OcclusionTutorialController.TopView *)&v9 traitCollectionDidChange:v5];
  v6 = sub_252041CB8();
  v7 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v7)
  {
    v8 = v7;
    [v6 setFont_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___spacerLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___leftBudImageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView____lazy_storage___rightBudImageView) = 0;
  v4 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_leftStatusMarkImage;
  *(&self->super.super.super.isa + v4) = sub_25204216C();
  v5 = OBJC_IVAR____TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView_rightStatusMarkImage;
  *(&self->super.super.super.isa + v5) = sub_252042328();
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (_TtCC13HearingModeUI27OcclusionTutorialControllerP33_BB0ED88BAA1A46658A630804B4A339A37TopView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end