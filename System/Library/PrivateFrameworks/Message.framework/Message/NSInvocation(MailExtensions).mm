@interface NSInvocation(MailExtensions)
+ (id)log;
+ (id)mf_invocationWithSelector:()MailExtensions target:;
+ (id)mf_invocationWithSelector:()MailExtensions target:object1:object2:;
+ (id)mf_invocationWithSelector:()MailExtensions target:object:;
@end

@implementation NSInvocation(MailExtensions)

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NSInvocation_MailExtensions__log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_36 != -1)
  {
    dispatch_once(&log_onceToken_36, block);
  }

  v1 = log_log_36;

  return v1;
}

+ (id)mf_invocationWithSelector:()MailExtensions target:
{
  v6 = a4;
  v7 = [v6 methodSignatureForSelector:a3];
  if (v7)
  {
    v8 = [a1 invocationWithMethodSignature:v7];
    [v8 retainArguments];
    [v8 setSelector:a3];
    [v8 setTarget:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mf_invocationWithSelector:()MailExtensions target:object:
{
  v12 = a5;
  v8 = [a1 mf_invocationWithSelector:a3 target:a4];
  v9 = [v8 methodSignature];
  v10 = [v9 numberOfArguments];

  if (v10 >= 3)
  {
    [v8 setArgument:&v12 atIndex:2];
  }

  return v8;
}

+ (id)mf_invocationWithSelector:()MailExtensions target:object1:object2:
{
  v14 = a6;
  v10 = [a1 mf_invocationWithSelector:a3 target:a4 object:a5];
  v11 = [v10 methodSignature];
  v12 = [v11 numberOfArguments];

  if (v12 >= 4)
  {
    [v10 setArgument:&v14 atIndex:3];
  }

  return v10;
}

@end