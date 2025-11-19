@interface DebugFormatSnapshotView
- (_TtC8NewsFeed23DebugFormatSnapshotView)initWithCoder:(id)a3;
- (_TtC8NewsFeed23DebugFormatSnapshotView)initWithFrame:(CGRect)a3;
@end

@implementation DebugFormatSnapshotView

- (_TtC8NewsFeed23DebugFormatSnapshotView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_isSelected) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_onTap;
  sub_1D606FC88(0, &qword_1EDF3B450, MEMORY[0x1E69D8770]);
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed23DebugFormatSnapshotView_children) = MEMORY[0x1E69E7CC0];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed23DebugFormatSnapshotView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end