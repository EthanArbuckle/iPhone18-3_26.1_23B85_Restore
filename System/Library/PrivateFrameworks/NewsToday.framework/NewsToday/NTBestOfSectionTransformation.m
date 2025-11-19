@interface NTBestOfSectionTransformation
- (NTBestOfSectionTransformation)initWithGroupingService:(id)a3 limit:(unint64_t)a4 fallbackTransformation:(id)a5;
- (id)transformFeedItems:(id)a3;
@end

@implementation NTBestOfSectionTransformation

- (NTBestOfSectionTransformation)initWithGroupingService:(id)a3 limit:(unint64_t)a4 fallbackTransformation:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NTBestOfSectionTransformation;
  v11 = [(NTBestOfSectionTransformation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_groupingService, a3);
    v12->_limit = a4;
    objc_storeStrong(&v12->_fallbackTransformation, a5);
  }

  return v12;
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  v5 = [(NTBestOfSectionTransformation *)self groupingService];
  v6 = [v5 bestOfFeedItems:v4 limit:{-[NTBestOfSectionTransformation limit](self, "limit")}];

  if (!v6)
  {
    v7 = NTSharedLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25BF21000, v7, OS_LOG_TYPE_DEFAULT, "Failed to produce Best Of group, falling back to default transformation", v10, 2u);
    }

    v8 = [(NTBestOfSectionTransformation *)self fallbackTransformation];
    v6 = [v8 transformFeedItems:v4];
  }

  return v6;
}

@end