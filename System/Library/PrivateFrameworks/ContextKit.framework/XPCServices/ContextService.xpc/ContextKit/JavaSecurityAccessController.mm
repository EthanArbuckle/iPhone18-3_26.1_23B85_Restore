@interface JavaSecurityAccessController
+ (id)doPrivilegedWithCombinerWithJavaSecurityPrivilegedAction:(id)a3;
+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)a3;
+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)a3 withJavaSecurityAccessControlContext:(id)a4;
+ (id)getContext;
@end

@implementation JavaSecurityAccessController

+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 run];
}

+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)a3 withJavaSecurityAccessControlContext:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 run];
}

+ (id)doPrivilegedWithCombinerWithJavaSecurityPrivilegedAction:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 run];
}

+ (id)getContext
{
  v2 = new_JavaSecurityAccessControlContext_initWithJavaSecurityProtectionDomainArray_();

  return v2;
}

@end