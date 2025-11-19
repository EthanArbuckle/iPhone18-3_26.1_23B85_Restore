@interface NSLock(MessageAdditions)
- (uint64_t)mf_waitForLock;
@end

@implementation NSLock(MessageAdditions)

- (uint64_t)mf_waitForLock
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (([a1 lockBeforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 2.0)}] & 1) == 0)
  {
    v3 = *MEMORY[0x1E695E8D0];
    do
    {
      CFRunLoopRunInMode(v3, 0.5, 0);
    }

    while (![a1 lockBeforeDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", 2.0)}]);
  }

  return [v2 drain];
}

@end