@interface MAParallelProgressReporter
- (MAParallelProgressReporter)initWithParallelProgress:(id)progress index:(unint64_t)index;
- (id)childProgressWithOffset:(double)offset scale:(double)scale;
@end

@implementation MAParallelProgressReporter

- (id)childProgressWithOffset:(double)offset scale:(double)scale
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:offset scale:scale];

  return v4;
}

- (MAParallelProgressReporter)initWithParallelProgress:(id)progress index:(unint64_t)index
{
  progressCopy = progress;
  v11.receiver = self;
  v11.super_class = MAParallelProgressReporter;
  initForSubclasses = [(MAProgressReporter *)&v11 initForSubclasses];
  v9 = initForSubclasses;
  if (initForSubclasses)
  {
    objc_storeStrong(initForSubclasses + 2, progress);
    v9->_index = index;
  }

  return v9;
}

@end