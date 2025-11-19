@interface MALegacyProgressReporter
- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4;
- (MALegacyProgressReporter)initWithProgressBlock:(id)a3;
- (id)childProgressWithOffset:(double)a3 scale:(double)a4;
@end

@implementation MALegacyProgressReporter

- (id)childProgressWithOffset:(double)a3 scale:(double)a4
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:a3 scale:a4];

  return v4;
}

- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4
{
  if (self->_isCancelled)
  {
    return 1;
  }

  else if (a3 == 1.0 || a4 - self->_lastProgressCallTime >= 0.01)
  {
    self->_lastProgressCallTime = a4;
    progressBlock = self->_progressBlock;
    (*(self->_progressBlock + 2))();
    return self->_isCancelled;
  }

  else
  {
    return 0;
  }
}

- (MALegacyProgressReporter)initWithProgressBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MALegacyProgressReporter;
  v5 = [(MAProgressReporter *)&v9 initForSubclasses];
  if (v5)
  {
    v6 = _Block_copy(v4);
    progressBlock = v5->_progressBlock;
    v5->_progressBlock = v6;

    v5->_isCancelled = 0;
    v5->_lastProgressCallTime = 0.0;
  }

  return v5;
}

@end