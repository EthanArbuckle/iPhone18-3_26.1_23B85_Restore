@interface NSLocale(FCAdditions)
+ (id)fc_preferredLanguageCodes;
@end

@implementation NSLocale(FCAdditions)

+ (id)fc_preferredLanguageCodes
{
  if (qword_1EDB278D0 != -1)
  {
    dispatch_once(&qword_1EDB278D0, &__block_literal_global_156);
  }

  v1 = _MergedGlobals_200;

  return v1;
}

@end