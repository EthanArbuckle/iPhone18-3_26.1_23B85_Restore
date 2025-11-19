@interface DalvikSystemBlockGuard
+ (void)initialize;
@end

@implementation DalvikSystemBlockGuard

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&DalvikSystemBlockGuard_LAX_POLICY_, [DalvikSystemBlockGuard__1 alloc]);
    v2 = [DalvikSystemBlockGuard__2 alloc];
    JavaLangThreadLocal_init(v2);
    JreStrongAssignAndConsume(&qword_100554FF8, v2);
    atomic_store(1u, DalvikSystemBlockGuard__initialized);
  }
}

@end