@interface NSURLResponse(NSURLResponse_TSUAdditions)
- (uint64_t)tsu_isHTTPSuccess;
@end

@implementation NSURLResponse(NSURLResponse_TSUAdditions)

- (uint64_t)tsu_isHTTPSuccess
{
  v2 = objc_opt_class();
  v3 = TSUDynamicCast(v2, self);
  v4 = v3;
  if (v3)
  {
    tsu_isSuccess = [v3 tsu_isSuccess];
  }

  else
  {
    tsu_isSuccess = 0;
  }

  return tsu_isSuccess;
}

@end