@interface MBAErrorCoding
+ (id)launderError:(id)error;
@end

@implementation MBAErrorCoding

+ (id)launderError:(id)error
{
  v3 = [error copy];
  v4 = objc_opt_class();
  object_setClass(v3, v4);

  return v3;
}

@end