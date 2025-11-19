@interface MARootProgressReporter
- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4;
- (MARootProgressReporter)init;
- (MARootProgressReporter)initWithProgressBlock:(id)a3;
- (id)childProgressWithOffset:(double)a3 scale:(double)a4;
@end

@implementation MARootProgressReporter

- (id)childProgressWithOffset:(double)a3 scale:(double)a4
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:a3 scale:a4];

  return v4;
}

- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4
{
  v7 = [(MARootProgressReporter *)self isCancelled];
  if (!v7)
  {
    self->_progress = a3;
    if (a3 == 1.0 || a4 - self->_lastProgressCallTime >= 0.01)
    {
      self->_lastProgressCallTime = a4;
      (*(self->_progressBlock + 2))(a3);
    }
  }

  return v7;
}

- (MARootProgressReporter)init
{
  v6.receiver = self;
  v6.super_class = MARootProgressReporter;
  v2 = [(MAProgressReporter *)&v6 initForSubclasses];
  v3 = v2;
  if (v2)
  {
    v4 = v2[4];
    v2[4] = &__block_literal_global;

    v3[5] = 0;
    *(v3 + 24) = 0;
    v3[2] = 0;
  }

  return v3;
}

- (MARootProgressReporter)initWithProgressBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MARootProgressReporter;
  v5 = [(MAProgressReporter *)&v9 initForSubclasses];
  if (v5)
  {
    v6 = _Block_copy(v4);
    progressBlock = v5->_progressBlock;
    v5->_progressBlock = v6;

    v5->_progress = 0.0;
    v5->_isCancelled = 0;
    v5->_lastProgressCallTime = 0.0;
  }

  return v5;
}

@end