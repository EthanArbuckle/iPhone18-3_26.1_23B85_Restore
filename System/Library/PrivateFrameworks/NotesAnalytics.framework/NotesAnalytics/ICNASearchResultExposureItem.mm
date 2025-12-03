@interface ICNASearchResultExposureItem
- (ICNASearchResultExposureItem)initWithSearchString:(id)string;
- (void)updateWithTopHitResultCount:(unint64_t)count nonTopHitResultCount:(unint64_t)resultCount attachmentSectionCount:(unint64_t)sectionCount;
@end

@implementation ICNASearchResultExposureItem

- (ICNASearchResultExposureItem)initWithSearchString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ICNASearchResultExposureItem;
  v6 = [(ICNASearchResultExposureItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchString, string);
  }

  return v7;
}

- (void)updateWithTopHitResultCount:(unint64_t)count nonTopHitResultCount:(unint64_t)resultCount attachmentSectionCount:(unint64_t)sectionCount
{
  [(ICNASearchResultExposureItem *)self setTopHitResultCount:count];
  [(ICNASearchResultExposureItem *)self setNonTopHitResultCount:resultCount];

  [(ICNASearchResultExposureItem *)self setAttachmentSectionCount:sectionCount];
}

@end