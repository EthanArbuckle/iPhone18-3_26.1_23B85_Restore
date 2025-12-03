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
  v2 = [self stringKeyWithKey:? argumentKeys:?];
  hre_localizationBlock = [self hre_localizationBlock];
  [v2 setStringLocalizationBlock:hre_localizationBlock];

  return v2;
}

+ (id)hre_stringKeyWithKey:()HREAdditions arguments:
{
  v2 = [self stringKeyWithKey:? arguments:?];
  hre_localizationBlock = [self hre_localizationBlock];
  [v2 setStringLocalizationBlock:hre_localizationBlock];

  return v2;
}

@end