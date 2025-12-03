@interface LibcoreUtilObjects
+ (BOOL)equalWithId:(id)id withId:(id)withId;
+ (int)hashCodeWithId:(id)id;
@end

@implementation LibcoreUtilObjects

+ (BOOL)equalWithId:(id)id withId:(id)withId
{
  if (id == withId)
  {
    return 1;
  }

  if (id)
  {
    return [id isEqual:withId];
  }

  return 0;
}

+ (int)hashCodeWithId:(id)id
{
  if (id)
  {
    return [id hash];
  }

  else
  {
    return 0;
  }
}

@end