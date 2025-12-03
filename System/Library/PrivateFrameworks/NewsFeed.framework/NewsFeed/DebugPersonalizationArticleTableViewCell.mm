@interface DebugPersonalizationArticleTableViewCell
- (_TtC8NewsFeed40DebugPersonalizationArticleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation DebugPersonalizationArticleTableViewCell

- (_TtC8NewsFeed40DebugPersonalizationArticleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1D68DA674(style, identifier, v6);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1D68DB680();
}

@end