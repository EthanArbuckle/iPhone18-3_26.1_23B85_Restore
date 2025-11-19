@interface JavaLangMath_NoImagePreloadHolder
+ (void)initialize;
@end

@implementation JavaLangMath_NoImagePreloadHolder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaUtilRandom_init();
    JreStrongAssignAndConsume(&qword_100554EC0, v2);
    atomic_store(1u, JavaLangMath_NoImagePreloadHolder__initialized);
  }
}

@end