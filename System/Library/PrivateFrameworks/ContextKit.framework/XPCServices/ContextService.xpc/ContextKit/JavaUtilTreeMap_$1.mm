@interface JavaUtilTreeMap_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation JavaUtilTreeMap_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  return [id compareToWithId:withId];
}

@end