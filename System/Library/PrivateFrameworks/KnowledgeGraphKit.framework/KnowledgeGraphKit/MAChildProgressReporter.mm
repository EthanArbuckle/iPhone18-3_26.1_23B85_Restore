@interface MAChildProgressReporter
- (MAChildProgressReporter)initWithParentProgress:(id)a3 offset:(double)a4 scale:(double)a5;
- (id)childProgressWithOffset:(double)a3 scale:(double)a4;
@end

@implementation MAChildProgressReporter

- (id)childProgressWithOffset:(double)a3 scale:(double)a4
{
  scale = self->_scale;
  v5 = [[MAChildProgressReporter alloc] initWithParentProgress:self->_parentProgress offset:self->_offset + a3 * scale scale:scale * a4];

  return v5;
}

- (MAChildProgressReporter)initWithParentProgress:(id)a3 offset:(double)a4 scale:(double)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MAChildProgressReporter;
  v10 = [(MAProgressReporter *)&v14 initForSubclasses];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 2, a3);
    v11->_offset = a4;
    v11->_scale = a5;
    v12 = [v9 throughputReportBlock];
    [(MAProgressReporter *)v11 setThroughputReportBlock:v12];
  }

  return v11;
}

@end