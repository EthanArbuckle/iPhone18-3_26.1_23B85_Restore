@interface CPLCloudKitQueryOptions
- (CPLCloudKitQueryOptions)initWithRecordType:(id)type predicate:(id)predicate resultsLimit:(int64_t)limit;
@end

@implementation CPLCloudKitQueryOptions

- (CPLCloudKitQueryOptions)initWithRecordType:(id)type predicate:(id)predicate resultsLimit:(int64_t)limit
{
  typeCopy = type;
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = CPLCloudKitQueryOptions;
  v10 = [(CPLCloudKitQueryOptions *)&v14 init];
  if (v10)
  {
    v11 = [[CKQuery alloc] initWithRecordType:typeCopy predicate:predicateCopy];
    query = v10->_query;
    v10->_query = v11;

    v10->_resultsLimit = limit;
  }

  return v10;
}

@end