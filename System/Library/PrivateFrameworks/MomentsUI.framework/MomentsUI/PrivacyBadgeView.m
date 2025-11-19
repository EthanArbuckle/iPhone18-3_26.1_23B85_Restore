@interface PrivacyBadgeView
- (_TtC9MomentsUI16PrivacyBadgeView)initWithCoder:(id)a3;
- (_TtC9MomentsUI16PrivacyBadgeView)initWithEffect:(id)a3;
@end

@implementation PrivacyBadgeView

- (_TtC9MomentsUI16PrivacyBadgeView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_iconView;
  v5 = CGRectMake_0();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for PrivacyBadgeIconView()) initWithFrame_];
  v9 = OBJC_IVAR____TtC9MomentsUI16PrivacyBadgeView_label;
  closure #1 in variable initialization expression of PrivacyBadgeView.label();
  *(&self->super.super.super.super.isa + v9) = v10;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC9MomentsUI16PrivacyBadgeView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end