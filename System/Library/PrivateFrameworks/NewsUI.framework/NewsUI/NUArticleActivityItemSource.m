@interface NUArticleActivityItemSource
- (NUArticleActivityItemSource)initWithHeadline:(id)a3;
@end

@implementation NUArticleActivityItemSource

- (NUArticleActivityItemSource)initWithHeadline:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUArticleActivityItemSource;
  v6 = [(NUArticleActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, a3);
  }

  return v7;
}

@end