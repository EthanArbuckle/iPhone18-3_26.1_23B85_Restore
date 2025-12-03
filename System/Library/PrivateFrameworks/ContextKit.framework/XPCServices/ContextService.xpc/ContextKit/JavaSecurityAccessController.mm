@interface JavaSecurityAccessController
+ (id)doPrivilegedWithCombinerWithJavaSecurityPrivilegedAction:(id)action;
+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)action;
+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)action withJavaSecurityAccessControlContext:(id)context;
+ (id)getContext;
@end

@implementation JavaSecurityAccessController

+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)action
{
  if (!action)
  {
    JreThrowNullPointerException();
  }

  return [action run];
}

+ (id)doPrivilegedWithJavaSecurityPrivilegedAction:(id)action withJavaSecurityAccessControlContext:(id)context
{
  if (!action)
  {
    JreThrowNullPointerException();
  }

  return [action run];
}

+ (id)doPrivilegedWithCombinerWithJavaSecurityPrivilegedAction:(id)action
{
  if (!action)
  {
    JreThrowNullPointerException();
  }

  return [action run];
}

+ (id)getContext
{
  v2 = new_JavaSecurityAccessControlContext_initWithJavaSecurityProtectionDomainArray_();

  return v2;
}

@end