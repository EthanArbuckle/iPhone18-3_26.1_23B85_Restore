@interface MTLLegacySVTrapErrorLog
- (void)dealloc;
@end

@implementation MTLLegacySVTrapErrorLog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVTrapErrorLog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

@end