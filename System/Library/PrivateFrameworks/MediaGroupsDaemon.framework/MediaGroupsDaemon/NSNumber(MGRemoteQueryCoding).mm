@interface NSNumber(MGRemoteQueryCoding)
+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding;
@end

@implementation NSNumber(MGRemoteQueryCoding)

+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end