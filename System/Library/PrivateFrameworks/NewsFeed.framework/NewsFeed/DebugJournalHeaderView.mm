@interface DebugJournalHeaderView
- (_TtC8NewsFeed22DebugJournalHeaderView)initWithCoder:(id)a3;
- (_TtC8NewsFeed22DebugJournalHeaderView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DebugJournalHeaderView

- (_TtC8NewsFeed22DebugJournalHeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_1D726207C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1D7212DE0(v3, v4);
}

- (_TtC8NewsFeed22DebugJournalHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed22DebugJournalHeaderView_showHideLabel;
  sub_1D725D04C();
  *(&self->super.super.super.super.isa + v4) = sub_1D725D01C();
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D7212F94();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DebugJournalHeaderView *)&v3 prepareForReuse];
  sub_1D725D02C();
}

@end