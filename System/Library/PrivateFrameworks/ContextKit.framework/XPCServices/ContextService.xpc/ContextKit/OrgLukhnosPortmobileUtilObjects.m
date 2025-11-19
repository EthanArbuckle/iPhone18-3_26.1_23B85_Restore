@interface OrgLukhnosPortmobileUtilObjects
+ (BOOL)equalsWithId:(id)a3 withId:(id)a4;
+ (id)toStringWithId:(id)a3;
+ (int)hashCodeWithId:(id)a3;
@end

@implementation OrgLukhnosPortmobileUtilObjects

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

+ (id)toStringWithId:(id)a3
{
  if (a3)
  {
    return [a3 description];
  }

  else
  {
    return @"null";
  }
}

+ (BOOL)equalsWithId:(id)a3 withId:(id)a4
{
  result = (a3 | a4) == 0;
  if (a3)
  {
    if (a4)
    {
      return [a3 isEqual:a4];
    }
  }

  return result;
}

@end