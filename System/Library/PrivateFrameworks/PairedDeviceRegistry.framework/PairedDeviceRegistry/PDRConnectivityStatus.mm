@interface PDRConnectivityStatus
+ (BOOL)getDropoutCounter:(unint64_t *)counter;
+ (unint64_t)currentConnectivity;
@end

@implementation PDRConnectivityStatus

+ (unint64_t)currentConnectivity
{
  v2 = objc_opt_class();

  return [v2 currentConnectivity];
}

+ (BOOL)getDropoutCounter:(unint64_t *)counter
{
  currentConnectivity = [objc_opt_class() currentConnectivity];
  if (counter)
  {
    *counter = currentConnectivity & 0x7FFFFFFFFFFFFFFFLL;
  }

  return currentConnectivity >> 63;
}

@end