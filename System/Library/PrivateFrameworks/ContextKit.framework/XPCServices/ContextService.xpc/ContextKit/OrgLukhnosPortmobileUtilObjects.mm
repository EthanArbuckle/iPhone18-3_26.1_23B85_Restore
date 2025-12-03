@interface OrgLukhnosPortmobileUtilObjects
+ (BOOL)equalsWithId:(id)id withId:(id)withId;
+ (id)toStringWithId:(id)id;
+ (int)hashCodeWithId:(id)id;
@end

@implementation OrgLukhnosPortmobileUtilObjects

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

+ (id)toStringWithId:(id)id
{
  if (id)
  {
    return [id description];
  }

  else
  {
    return @"null";
  }
}

+ (BOOL)equalsWithId:(id)id withId:(id)withId
{
  result = (id | withId) == 0;
  if (id)
  {
    if (withId)
    {
      return [id isEqual:withId];
    }
  }

  return result;
}

@end