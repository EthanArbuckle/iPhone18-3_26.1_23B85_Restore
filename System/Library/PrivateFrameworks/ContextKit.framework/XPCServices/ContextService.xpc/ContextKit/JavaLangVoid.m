@interface JavaLangVoid
+ (void)initialize;
@end

@implementation JavaLangVoid

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssign(&JavaLangVoid_TYPE_, +[IOSClass voidClass]);
    atomic_store(1u, JavaLangVoid__initialized);
  }
}

@end