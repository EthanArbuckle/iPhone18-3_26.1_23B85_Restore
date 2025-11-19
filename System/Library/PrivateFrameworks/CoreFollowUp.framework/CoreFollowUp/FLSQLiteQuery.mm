@interface FLSQLiteQuery
+ (id)queryWithString:(id)a3;
@end

@implementation FLSQLiteQuery

+ (id)queryWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FLSQLiteQuery);
  [(FLSQLiteQuery *)v4 setQueryString:v3];

  return v4;
}

@end