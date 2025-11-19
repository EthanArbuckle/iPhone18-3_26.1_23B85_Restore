@interface CoverViewFollowSwitch
- (_TtC8NewsFeed21CoverViewFollowSwitch)initWithCoder:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CoverViewFollowSwitch

- (_TtC8NewsFeed21CoverViewFollowSwitch)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_titleLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor) = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(v6) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  CoverViewFollowSwitch.traitCollectionDidChange(_:)(v9);
}

@end