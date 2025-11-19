@interface SFBadgeLabel
- (_TtC12MobileSafari12SFBadgeLabel)initWithCoder:(id)a3;
- (_TtC12MobileSafari12SFBadgeLabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SFBadgeLabel

- (_TtC12MobileSafari12SFBadgeLabel)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12MobileSafari12SFBadgeLabel_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SFBadgeLabel();
  v2 = v3.receiver;
  [(SFBadgeLabel *)&v3 layoutSubviews];
  [v2 bounds];
  [v2 _setContinuousCornerRadius_];
}

- (_TtC12MobileSafari12SFBadgeLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end