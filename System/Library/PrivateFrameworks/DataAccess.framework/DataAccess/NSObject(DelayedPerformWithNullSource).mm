@interface NSObject(DelayedPerformWithNullSource)
- (void)da_addNullRunLoopSourceAndPerformSelector:()DelayedPerformWithNullSource withObject:afterDelay:inModes:;
@end

@implementation NSObject(DelayedPerformWithNullSource)

- (void)da_addNullRunLoopSourceAndPerformSelector:()DelayedPerformWithNullSource withObject:afterDelay:inModes:
{
  v10 = a6;
  v12 = a5;
  Current = CFRunLoopGetCurrent();
  addNullRunLoopSourceForRunLoopAndModes(Current, v10);
  [self performSelector:a4 withObject:v12 afterDelay:v10 inModes:a2];
}

@end