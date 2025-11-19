@interface MTLGPUDebugTrapErrorLog
- (void)dealloc;
@end

@implementation MTLGPUDebugTrapErrorLog

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLGPUDebugTrapErrorLog;
  [(MTLGPUDebugGPULog *)&v2 dealloc];
}

@end