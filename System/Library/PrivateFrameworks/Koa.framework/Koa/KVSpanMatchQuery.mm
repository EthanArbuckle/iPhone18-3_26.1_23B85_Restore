@interface KVSpanMatchQuery
- (KVSpanMatchQuery)initWithQuery:(id)query;
@end

@implementation KVSpanMatchQuery

- (KVSpanMatchQuery)initWithQuery:(id)query
{
  queryCopy = query;
  v9.receiver = self;
  v9.super_class = KVSpanMatchQuery;
  v6 = [(KVSpanMatchQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
  }

  return v7;
}

@end