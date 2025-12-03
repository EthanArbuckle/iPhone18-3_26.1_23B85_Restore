@interface JavaLangVoid
+ (void)initialize;
@end

@implementation JavaLangVoid

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssign(&JavaLangVoid_TYPE_, +[IOSClass voidClass]);
    atomic_store(1u, JavaLangVoid__initialized);
  }
}

@end