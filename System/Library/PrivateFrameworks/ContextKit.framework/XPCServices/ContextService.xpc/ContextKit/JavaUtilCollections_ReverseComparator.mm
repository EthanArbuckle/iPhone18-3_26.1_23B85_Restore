@interface JavaUtilCollections_ReverseComparator
+ (void)initialize;
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation JavaUtilCollections_ReverseComparator

- (int)compareWithId:(id)a3 withId:(id)a4
{
  v6 = JavaLangComparable_class_();
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:a4] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a4 compareToWithId:a3];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554DC8, [JavaUtilCollections_ReverseComparator alloc]);
    atomic_store(1u, JavaUtilCollections_ReverseComparator__initialized);
  }
}

@end