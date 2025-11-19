@interface JavaUtilObjects
+ (BOOL)equalsWithId:(id)a3 withId:(id)a4;
+ (id)toStringWithId:(id)a3;
+ (id)toStringWithId:(id)a3 withNSString:(id)a4;
+ (int)compareWithId:(id)a3 withId:(id)a4 withJavaUtilComparator:(id)a5;
+ (int)hashCodeWithId:(id)a3;
@end

@implementation JavaUtilObjects

+ (int)compareWithId:(id)a3 withId:(id)a4 withJavaUtilComparator:(id)a5
{
  if (a3 == a4)
  {
    return 0;
  }

  if (!a5)
  {
    JreThrowNullPointerException();
  }

  return [a5 compareWithId:? withId:?];
}

+ (BOOL)equalsWithId:(id)a3 withId:(id)a4
{
  if (a3)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return a4 == 0;
  }
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

+ (id)toStringWithId:(id)a3 withNSString:(id)a4
{
  if (a3)
  {
    return [a3 description];
  }

  else
  {
    return a4;
  }
}

@end