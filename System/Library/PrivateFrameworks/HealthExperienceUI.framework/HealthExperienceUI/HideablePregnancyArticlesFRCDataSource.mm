@interface HideablePregnancyArticlesFRCDataSource
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation HideablePregnancyArticlesFRCDataSource

- (void)pregnancyModelDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  HideablePregnancyArticlesFRCDataSource.pregnancyModelDidUpdate(_:)(updateCopy);
}

@end