@interface NTBestOfSectionTransformation
- (NTBestOfSectionTransformation)initWithGroupingService:(id)service limit:(unint64_t)limit fallbackTransformation:(id)transformation;
- (id)transformFeedItems:(id)items;
@end

@implementation NTBestOfSectionTransformation

- (NTBestOfSectionTransformation)initWithGroupingService:(id)service limit:(unint64_t)limit fallbackTransformation:(id)transformation
{
  serviceCopy = service;
  transformationCopy = transformation;
  v14.receiver = self;
  v14.super_class = NTBestOfSectionTransformation;
  v11 = [(NTBestOfSectionTransformation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_groupingService, service);
    v12->_limit = limit;
    objc_storeStrong(&v12->_fallbackTransformation, transformation);
  }

  return v12;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  groupingService = [(NTBestOfSectionTransformation *)self groupingService];
  v6 = [groupingService bestOfFeedItems:itemsCopy limit:{-[NTBestOfSectionTransformation limit](self, "limit")}];

  if (!v6)
  {
    v7 = NTSharedLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25BF21000, v7, OS_LOG_TYPE_DEFAULT, "Failed to produce Best Of group, falling back to default transformation", v10, 2u);
    }

    fallbackTransformation = [(NTBestOfSectionTransformation *)self fallbackTransformation];
    v6 = [fallbackTransformation transformFeedItems:itemsCopy];
  }

  return v6;
}

@end