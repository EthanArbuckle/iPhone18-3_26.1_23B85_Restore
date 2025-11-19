@interface JavaUtilTreeMap_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation JavaUtilTreeMap_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 compareToWithId:a4];
}

@end