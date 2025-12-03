@interface JavaUtilObjects
+ (BOOL)equalsWithId:(id)id withId:(id)withId;
+ (id)toStringWithId:(id)id;
+ (id)toStringWithId:(id)id withNSString:(id)string;
+ (int)compareWithId:(id)id withId:(id)withId withJavaUtilComparator:(id)comparator;
+ (int)hashCodeWithId:(id)id;
@end

@implementation JavaUtilObjects

+ (int)compareWithId:(id)id withId:(id)withId withJavaUtilComparator:(id)comparator
{
  if (id == withId)
  {
    return 0;
  }

  if (!comparator)
  {
    JreThrowNullPointerException();
  }

  return [comparator compareWithId:? withId:?];
}

+ (BOOL)equalsWithId:(id)id withId:(id)withId
{
  if (id)
  {
    return [id isEqual:withId];
  }

  else
  {
    return withId == 0;
  }
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

+ (id)toStringWithId:(id)id withNSString:(id)string
{
  if (id)
  {
    return [id description];
  }

  else
  {
    return string;
  }
}

@end