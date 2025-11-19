@interface MBAErrorCoding
+ (id)launderError:(id)a3;
@end

@implementation MBAErrorCoding

+ (id)launderError:(id)a3
{
  v3 = [a3 copy];
  v4 = objc_opt_class();
  object_setClass(v3, v4);

  return v3;
}

@end