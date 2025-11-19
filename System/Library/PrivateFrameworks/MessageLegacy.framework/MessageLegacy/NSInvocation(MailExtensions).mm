@interface NSInvocation(MailExtensions)
+ (void)mf_invocationWithSelector:()MailExtensions target:;
+ (void)mf_invocationWithSelector:()MailExtensions target:object1:object2:;
+ (void)mf_invocationWithSelector:()MailExtensions target:object:;
@end

@implementation NSInvocation(MailExtensions)

+ (void)mf_invocationWithSelector:()MailExtensions target:
{
  v7 = [a4 methodSignatureForSelector:?];
  if (!v7)
  {
    return 0;
  }

  v8 = [a1 invocationWithMethodSignature:v7];
  [v8 retainArguments];
  [v8 setSelector:a3];
  [v8 setTarget:a4];
  return v8;
}

+ (void)mf_invocationWithSelector:()MailExtensions target:object:
{
  v7 = a5;
  v5 = [a1 mf_invocationWithSelector:? target:?];
  if ([objc_msgSend(v5 "methodSignature")] >= 3)
  {
    [v5 setArgument:&v7 atIndex:2];
  }

  return v5;
}

+ (void)mf_invocationWithSelector:()MailExtensions target:object1:object2:
{
  v8 = a6;
  v6 = [a1 mf_invocationWithSelector:? target:? object:?];
  if ([objc_msgSend(v6 "methodSignature")] >= 4)
  {
    [v6 setArgument:&v8 atIndex:3];
  }

  return v6;
}

@end