@interface __HMFBooleanTrue
+ (id)new;
@end

@implementation __HMFBooleanTrue

+ (id)new
{
  if (_MergedGlobals_77 != -1)
  {
    dispatch_once(&_MergedGlobals_77, &__block_literal_global_49);
  }

  v3 = qword_280AFC710;

  return v3;
}

@end