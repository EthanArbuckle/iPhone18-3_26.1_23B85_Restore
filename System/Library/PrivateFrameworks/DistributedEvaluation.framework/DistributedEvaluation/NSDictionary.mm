@interface NSDictionary
@end

@implementation NSDictionary

void __71__NSDictionary_DESExtensions___fides_objectByReplacingValue_withValue___block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = [a3 _fides_objectByReplacingValue:v5 withValue:v6];
  [v4 setValue:v8 forKey:v7];
}

@end