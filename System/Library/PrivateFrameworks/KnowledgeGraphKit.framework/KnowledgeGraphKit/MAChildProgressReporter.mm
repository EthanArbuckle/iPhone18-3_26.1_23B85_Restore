@interface MAChildProgressReporter
- (MAChildProgressReporter)initWithParentProgress:(id)progress offset:(double)offset scale:(double)scale;
- (id)childProgressWithOffset:(double)offset scale:(double)scale;
@end

@implementation MAChildProgressReporter

- (id)childProgressWithOffset:(double)offset scale:(double)scale
{
  scale = self->_scale;
  scale = [[MAChildProgressReporter alloc] initWithParentProgress:self->_parentProgress offset:self->_offset + offset * scale scale:scale * scale];

  return scale;
}

- (MAChildProgressReporter)initWithParentProgress:(id)progress offset:(double)offset scale:(double)scale
{
  progressCopy = progress;
  v14.receiver = self;
  v14.super_class = MAChildProgressReporter;
  initForSubclasses = [(MAProgressReporter *)&v14 initForSubclasses];
  v11 = initForSubclasses;
  if (initForSubclasses)
  {
    objc_storeStrong(initForSubclasses + 2, progress);
    v11->_offset = offset;
    v11->_scale = scale;
    throughputReportBlock = [progressCopy throughputReportBlock];
    [(MAProgressReporter *)v11 setThroughputReportBlock:throughputReportBlock];
  }

  return v11;
}

@end