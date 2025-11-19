@interface NSRecursiveLock(HMFLock)
- (void)performBlock:()HMFLock;
@end

@implementation NSRecursiveLock(HMFLock)

- (void)performBlock:()HMFLock
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = a1;
    [v5 lock];
    v6[2](v6);
    [v5 unlock];

    v4 = v6;
  }
}

@end