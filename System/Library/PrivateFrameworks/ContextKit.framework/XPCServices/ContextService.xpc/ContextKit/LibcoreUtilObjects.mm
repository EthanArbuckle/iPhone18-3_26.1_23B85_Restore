@interface LibcoreUtilObjects
+ (BOOL)equalWithId:(id)a3 withId:(id)a4;
+ (int)hashCodeWithId:(id)a3;
@end

@implementation LibcoreUtilObjects

+ (BOOL)equalWithId:(id)a3 withId:(id)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  if (a3)
  {
    return [a3 isEqual:a4];
  }

  return 0;
}

+ (int)hashCodeWithId:(id)a3
{
  if (a3)
  {
    return [a3 hash];
  }

  else
  {
    return 0;
  }
}

@end