@interface TSUProgressReporter
- (TSUProgressReporter)initWithTotalUnitCount:(int64_t)count;
@end

@implementation TSUProgressReporter

- (TSUProgressReporter)initWithTotalUnitCount:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = TSUProgressReporter;
  v4 = [(TSUProgressReporter *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:count];
    progress = v4->_progress;
    v4->_progress = v5;
  }

  return v4;
}

@end