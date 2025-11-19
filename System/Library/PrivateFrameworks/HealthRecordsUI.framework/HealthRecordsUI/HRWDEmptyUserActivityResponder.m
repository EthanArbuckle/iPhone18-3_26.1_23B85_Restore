@interface HRWDEmptyUserActivityResponder
+ (id)emptyUserActivityResponder;
@end

@implementation HRWDEmptyUserActivityResponder

+ (id)emptyUserActivityResponder
{
  if (emptyUserActivityResponder_onceToken != -1)
  {
    +[HRWDEmptyUserActivityResponder emptyUserActivityResponder];
  }

  v3 = emptyUserActivityResponder__emptyUserActivityResponder;

  return v3;
}

void __60__HRWDEmptyUserActivityResponder_emptyUserActivityResponder__block_invoke()
{
  v0 = objc_alloc_init(HRWDEmptyUserActivityResponder);
  v1 = emptyUserActivityResponder__emptyUserActivityResponder;
  emptyUserActivityResponder__emptyUserActivityResponder = v0;
}

@end