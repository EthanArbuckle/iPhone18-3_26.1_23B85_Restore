@interface KVSpanMatchQuery
- (KVSpanMatchQuery)initWithQuery:(id)a3;
@end

@implementation KVSpanMatchQuery

- (KVSpanMatchQuery)initWithQuery:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KVSpanMatchQuery;
  v6 = [(KVSpanMatchQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, a3);
  }

  return v7;
}

@end