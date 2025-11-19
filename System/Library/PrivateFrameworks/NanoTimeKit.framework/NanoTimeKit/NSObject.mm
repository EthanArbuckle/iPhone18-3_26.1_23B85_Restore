@interface NSObject
@end

@implementation NSObject

void __57__NSObject_NTKIntrospection__ntk_listOfDynamicProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isDynamic])
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end