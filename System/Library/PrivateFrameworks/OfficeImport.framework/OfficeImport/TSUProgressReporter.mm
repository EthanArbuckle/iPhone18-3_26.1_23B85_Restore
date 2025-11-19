@interface TSUProgressReporter
- (TSUProgressReporter)initWithTotalUnitCount:(int64_t)a3;
@end

@implementation TSUProgressReporter

- (TSUProgressReporter)initWithTotalUnitCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = TSUProgressReporter;
  v4 = [(TSUProgressReporter *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:a3];
    progress = v4->_progress;
    v4->_progress = v5;
  }

  return v4;
}

@end