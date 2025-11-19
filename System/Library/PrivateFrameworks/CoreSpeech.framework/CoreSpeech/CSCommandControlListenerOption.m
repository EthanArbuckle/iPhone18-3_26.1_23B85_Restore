@interface CSCommandControlListenerOption
+ (id)defaultOption;
@end

@implementation CSCommandControlListenerOption

+ (id)defaultOption
{
  v2 = objc_alloc_init(CSCommandControlListenerOption);

  return v2;
}

@end