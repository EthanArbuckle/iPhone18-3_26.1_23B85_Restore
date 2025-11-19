@interface MTLLegacySVStackOverflowErrorLog
- (void)dealloc;
@end

@implementation MTLLegacySVStackOverflowErrorLog

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVStackOverflowErrorLog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

@end