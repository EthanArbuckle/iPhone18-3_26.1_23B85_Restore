@interface NSObject(MainThreadMessaging)
- (uint64_t)mf_performOnewaySelectorInMainThread:()MainThreadMessaging withObject:withObject:;
@end

@implementation NSObject(MainThreadMessaging)

- (uint64_t)mf_performOnewaySelectorInMainThread:()MainThreadMessaging withObject:withObject:
{
  v8 = [self methodSignatureForSelector:{a5, a4}];
  if (!v8)
  {
    [NSObject(MainThreadMessaging) mf_performOnewaySelectorInMainThread:a3 withObject:a2 withObject:self];
  }

  numberOfArguments = [v8 numberOfArguments];
  v10 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
  [v10 retainArguments];
  [v10 setTarget:self];
  [v10 setSelector:a3];
  if (numberOfArguments >= 3)
  {
    [v10 setArgument:&v13 atIndex:2];
    if (numberOfArguments != 3)
    {
      [v10 setArgument:&v12 atIndex:3];
    }
  }

  return [v10 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:0];
}

@end