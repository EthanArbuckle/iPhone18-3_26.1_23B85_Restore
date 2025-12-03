@interface LoadingTableViewCell
- (_TtC8NewsFeed20LoadingTableViewCell)initWithCoder:(id)coder;
- (_TtC8NewsFeed20LoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation LoadingTableViewCell

- (_TtC8NewsFeed20LoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D6B32BFC(v4, v5);
}

- (_TtC8NewsFeed20LoadingTableViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(LoadingTableViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed20LoadingTableViewCell_activityIndicatorView];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

@end