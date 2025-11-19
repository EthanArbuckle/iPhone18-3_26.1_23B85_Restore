@interface DBIconImageView
- (CPUIDimmingEffectView)dimmingView;
- (_TtC9DashBoard15DBIconImageView)initWithFrame:(CGRect)a3;
- (void)cleanupMaskViewAfterCrossfade;
- (void)iconImageInfoDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDimmingView:(id)a3;
- (void)setupMaskForCrossfade;
@end

@implementation DBIconImageView

- (CPUIDimmingEffectView)dimmingView
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setDimmingView:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)setupMaskForCrossfade
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView);
  v5 = self;
  [(DBIconImageView *)v5 addSubview:v4];
  [*(&self->super.super.super.super.isa + v3) setHidden_];
}

- (void)cleanupMaskViewAfterCrossfade
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView);
  v5 = self;
  [v4 setHidden_];
  [*(&self->super.super.super.super.isa + v3) removeFromSuperview];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(SBIconImageView *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v4 = *&v2[v3];
  [v2 bounds];
  [v4 setFrame_];

  v5 = *&v2[OBJC_IVAR____TtC9DashBoard15DBIconImageView_crossfadeMaskView];
  [v2 bounds];
  [v5 setFrame_];
}

- (void)iconImageInfoDidChange
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(SBIconImageView *)&v6 iconImageInfoDidChange];
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v4 = [*&v2[v3] layer];
  [v2 iconImageInfo];
  [v4 setCornerRadius_];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SBIconImageView *)&v5 prepareForReuse];
  v3 = OBJC_IVAR____TtC9DashBoard15DBIconImageView_dimmingView;
  swift_beginAccess();
  v4 = *&v2[v3];
  [v4 setHidden_];
}

- (_TtC9DashBoard15DBIconImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end