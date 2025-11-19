@interface DebugPersonalizationArticleTableViewCell
- (_TtC8NewsFeed40DebugPersonalizationArticleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation DebugPersonalizationArticleTableViewCell

- (_TtC8NewsFeed40DebugPersonalizationArticleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1D68DA674(a3, a4, v6);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1D68DB680();
}

@end