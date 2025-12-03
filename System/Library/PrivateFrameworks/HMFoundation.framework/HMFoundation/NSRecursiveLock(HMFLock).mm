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
    selfCopy = self;
    [selfCopy lock];
    v6[2](v6);
    [selfCopy unlock];

    v4 = v6;
  }
}

@end