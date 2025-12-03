@interface JavaUtilCollections_ReverseComparator
+ (void)initialize;
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation JavaUtilCollections_ReverseComparator

- (int)compareWithId:(id)id withId:(id)withId
{
  v6 = JavaLangComparable_class_();
  if (!withId)
  {
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:withId] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [withId compareToWithId:id];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554DC8, [JavaUtilCollections_ReverseComparator alloc]);
    atomic_store(1u, JavaUtilCollections_ReverseComparator__initialized);
  }
}

@end