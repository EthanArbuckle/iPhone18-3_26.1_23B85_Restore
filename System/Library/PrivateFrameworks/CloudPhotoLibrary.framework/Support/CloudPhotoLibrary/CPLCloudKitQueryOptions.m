@interface CPLCloudKitQueryOptions
- (CPLCloudKitQueryOptions)initWithRecordType:(id)a3 predicate:(id)a4 resultsLimit:(int64_t)a5;
@end

@implementation CPLCloudKitQueryOptions

- (CPLCloudKitQueryOptions)initWithRecordType:(id)a3 predicate:(id)a4 resultsLimit:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CPLCloudKitQueryOptions;
  v10 = [(CPLCloudKitQueryOptions *)&v14 init];
  if (v10)
  {
    v11 = [[CKQuery alloc] initWithRecordType:v8 predicate:v9];
    query = v10->_query;
    v10->_query = v11;

    v10->_resultsLimit = a5;
  }

  return v10;
}

@end