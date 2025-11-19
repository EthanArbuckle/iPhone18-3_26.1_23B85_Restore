@interface HFLocalizableStringKey(HREAdditions)
+ (id)hre_localizationBlock;
+ (id)hre_stringKeyWithKey:()HREAdditions argumentKeys:;
+ (id)hre_stringKeyWithKey:()HREAdditions arguments:;
@end

@implementation HFLocalizableStringKey(HREAdditions)

+ (id)hre_localizationBlock
{
  if (_MergedGlobals_22 != -1)
  {
    dispatch_once(&_MergedGlobals_22, &__block_literal_global_3_5);
  }

  v1 = qword_27F5F97C0;

  return v1;
}

+ (id)hre_stringKeyWithKey:()HREAdditions argumentKeys:
{
  v2 = [a1 stringKeyWithKey:? argumentKeys:?];
  v3 = [a1 hre_localizationBlock];
  [v2 setStringLocalizationBlock:v3];

  return v2;
}

+ (id)hre_stringKeyWithKey:()HREAdditions arguments:
{
  v2 = [a1 stringKeyWithKey:? arguments:?];
  v3 = [a1 hre_localizationBlock];
  [v2 setStringLocalizationBlock:v3];

  return v2;
}

@end