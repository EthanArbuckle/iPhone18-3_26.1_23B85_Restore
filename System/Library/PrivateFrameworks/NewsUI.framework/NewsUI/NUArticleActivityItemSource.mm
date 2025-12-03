@interface NUArticleActivityItemSource
- (NUArticleActivityItemSource)initWithHeadline:(id)headline;
@end

@implementation NUArticleActivityItemSource

- (NUArticleActivityItemSource)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  v9.receiver = self;
  v9.super_class = NUArticleActivityItemSource;
  v6 = [(NUArticleActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, headline);
  }

  return v7;
}

@end