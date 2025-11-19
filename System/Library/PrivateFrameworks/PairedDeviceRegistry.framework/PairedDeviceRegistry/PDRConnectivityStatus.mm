@interface PDRConnectivityStatus
+ (BOOL)getDropoutCounter:(unint64_t *)a3;
+ (unint64_t)currentConnectivity;
@end

@implementation PDRConnectivityStatus

+ (unint64_t)currentConnectivity
{
  v2 = objc_opt_class();

  return [v2 currentConnectivity];
}

+ (BOOL)getDropoutCounter:(unint64_t *)a3
{
  v4 = [objc_opt_class() currentConnectivity];
  if (a3)
  {
    *a3 = v4 & 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4 >> 63;
}

@end