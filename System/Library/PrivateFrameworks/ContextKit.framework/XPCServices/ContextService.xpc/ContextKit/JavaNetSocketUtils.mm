@interface JavaNetSocketUtils
+ (void)setCreatedWithJavaNetSocket:(id)socket;
@end

@implementation JavaNetSocketUtils

+ (void)setCreatedWithJavaNetSocket:(id)socket
{
  if (!socket)
  {
    JreThrowNullPointerException();
  }

  atomic_store(1u, socket + 16);
}

@end