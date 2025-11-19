@interface JavaUtilLoggingErrorManager
+ (void)initialize;
@end

@implementation JavaUtilLoggingErrorManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3[0] = off_1003F7018;
    v3[1] = off_1003F7028;
    v3[2] = off_1003F7038;
    v2 = [IOSObjectArray newArrayWithObjects:v3 count:6 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100554A38, v2);
    atomic_store(1u, JavaUtilLoggingErrorManager__initialized);
  }
}

@end