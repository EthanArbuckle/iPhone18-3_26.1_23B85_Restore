@interface MTLGPUDebugStackOverflowErrorLog
- (void)dealloc;
@end

@implementation MTLGPUDebugStackOverflowErrorLog

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugStackOverflowErrorLog;
  [(MTLGPUDebugGPULog *)&v2 dealloc];
}

@end