@interface MAParallelProgressReporter
- (MAParallelProgressReporter)initWithParallelProgress:(id)a3 index:(unint64_t)a4;
- (id)childProgressWithOffset:(double)a3 scale:(double)a4;
@end

@implementation MAParallelProgressReporter

- (id)childProgressWithOffset:(double)a3 scale:(double)a4
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:a3 scale:a4];

  return v4;
}

- (MAParallelProgressReporter)initWithParallelProgress:(id)a3 index:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MAParallelProgressReporter;
  v8 = [(MAProgressReporter *)&v11 initForSubclasses];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, a3);
    v9->_index = a4;
  }

  return v9;
}

@end