@interface FLSQLiteQuery
+ (id)queryWithString:(id)string;
@end

@implementation FLSQLiteQuery

+ (id)queryWithString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(FLSQLiteQuery);
  [(FLSQLiteQuery *)v4 setQueryString:stringCopy];

  return v4;
}

@end