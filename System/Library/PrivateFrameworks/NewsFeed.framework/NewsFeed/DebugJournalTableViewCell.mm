@interface DebugJournalTableViewCell
- (_TtC8NewsFeed25DebugJournalTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed25DebugJournalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DebugJournalTableViewCell

- (_TtC8NewsFeed25DebugJournalTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D7256380(v4, v5);
}

- (_TtC8NewsFeed25DebugJournalTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(DebugJournalTableViewCell *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_stripView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView];
  [v2 bounds];
  [v4 setFrame_];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(DebugJournalTableViewCell *)&v4 prepareForReuse];
  v3 = OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView;
  [*&v2[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView] setHidden_];
  [*&v2[v3] stopAnimating];
}

@end