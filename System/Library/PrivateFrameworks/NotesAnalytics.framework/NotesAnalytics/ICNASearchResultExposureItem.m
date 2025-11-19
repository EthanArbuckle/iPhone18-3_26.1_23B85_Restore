@interface ICNASearchResultExposureItem
- (ICNASearchResultExposureItem)initWithSearchString:(id)a3;
- (void)updateWithTopHitResultCount:(unint64_t)a3 nonTopHitResultCount:(unint64_t)a4 attachmentSectionCount:(unint64_t)a5;
@end

@implementation ICNASearchResultExposureItem

- (ICNASearchResultExposureItem)initWithSearchString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICNASearchResultExposureItem;
  v6 = [(ICNASearchResultExposureItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchString, a3);
  }

  return v7;
}

- (void)updateWithTopHitResultCount:(unint64_t)a3 nonTopHitResultCount:(unint64_t)a4 attachmentSectionCount:(unint64_t)a5
{
  [(ICNASearchResultExposureItem *)self setTopHitResultCount:a3];
  [(ICNASearchResultExposureItem *)self setNonTopHitResultCount:a4];

  [(ICNASearchResultExposureItem *)self setAttachmentSectionCount:a5];
}

@end