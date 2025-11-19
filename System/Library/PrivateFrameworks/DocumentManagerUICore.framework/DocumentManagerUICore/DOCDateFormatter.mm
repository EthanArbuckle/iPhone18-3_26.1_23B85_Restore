@interface DOCDateFormatter
+ (id)longDateStringFromDate:(id)a3;
+ (id)sharedLongDateFormatter;
@end

@implementation DOCDateFormatter

+ (id)sharedLongDateFormatter
{
  if (sharedLongDateFormatter_onceToken[0] != -1)
  {
    +[DOCDateFormatter sharedLongDateFormatter];
  }

  v3 = sharedLongDateFormatter_shared;

  return v3;
}

uint64_t __43__DOCDateFormatter_sharedLongDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = sharedLongDateFormatter_shared;
  sharedLongDateFormatter_shared = v0;

  [sharedLongDateFormatter_shared setDateStyle:3];
  v2 = sharedLongDateFormatter_shared;

  return [v2 setTimeStyle:1];
}

+ (id)longDateStringFromDate:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedLongDateFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

@end