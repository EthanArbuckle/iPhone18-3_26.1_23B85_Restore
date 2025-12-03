@interface NSObject(ChatKit)
+ (uint64_t)__ck_isKindOfClass:()ChatKit;
@end

@implementation NSObject(ChatKit)

+ (uint64_t)__ck_isKindOfClass:()ChatKit
{
  if ([self isEqual:?])
  {
    return 1;
  }

  return [self isSubclassOfClass:a3];
}

@end