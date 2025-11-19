@interface SectionDayBackgroundView
- (_TtC9MomentsUI24SectionDayBackgroundView)initWithCoder:(id)a3;
- (void)handleTraitChange;
- (void)layoutSubviews;
@end

@implementation SectionDayBackgroundView

- (_TtC9MomentsUI24SectionDayBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_startColor;
  v5 = objc_opt_self();
  *(&self->super.super.super.super.isa + v4) = [v5 clearColor];
  v6 = OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_endColor;
  *(&self->super.super.super.super.isa + v6) = [v5 clearColor];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SectionDayBackgroundView();
  v2 = v4.receiver;
  [(SectionDayBackgroundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9MomentsUI24SectionDayBackgroundView_gradient];
  [v2 bounds];
  [v3 setFrame_];
}

- (void)handleTraitChange
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x98);
  v3 = self;
  v2();
}

@end