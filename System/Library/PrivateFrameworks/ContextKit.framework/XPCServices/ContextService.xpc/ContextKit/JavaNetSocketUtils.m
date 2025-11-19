@interface JavaNetSocketUtils
+ (void)setCreatedWithJavaNetSocket:(id)a3;
@end

@implementation JavaNetSocketUtils

+ (void)setCreatedWithJavaNetSocket:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  atomic_store(1u, a3 + 16);
}

@end