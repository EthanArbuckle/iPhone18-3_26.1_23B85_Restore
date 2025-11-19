@interface __HMFBooleanFalse
+ (id)new;
@end

@implementation __HMFBooleanFalse

+ (id)new
{
  if (qword_280AFC718 != -1)
  {
    dispatch_once(&qword_280AFC718, &__block_literal_global_115);
  }

  v3 = qword_280AFC720;

  return v3;
}

@end