@interface MARootProgressReporter
- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time;
- (MARootProgressReporter)init;
- (MARootProgressReporter)initWithProgressBlock:(id)block;
- (id)childProgressWithOffset:(double)offset scale:(double)scale;
@end

@implementation MARootProgressReporter

- (id)childProgressWithOffset:(double)offset scale:(double)scale
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:offset scale:scale];

  return v4;
}

- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time
{
  isCancelled = [(MARootProgressReporter *)self isCancelled];
  if (!isCancelled)
  {
    self->_progress = progress;
    if (progress == 1.0 || time - self->_lastProgressCallTime >= 0.01)
    {
      self->_lastProgressCallTime = time;
      (*(self->_progressBlock + 2))(progress);
    }
  }

  return isCancelled;
}

- (MARootProgressReporter)init
{
  v6.receiver = self;
  v6.super_class = MARootProgressReporter;
  initForSubclasses = [(MAProgressReporter *)&v6 initForSubclasses];
  v3 = initForSubclasses;
  if (initForSubclasses)
  {
    v4 = initForSubclasses[4];
    initForSubclasses[4] = &__block_literal_global;

    v3[5] = 0;
    *(v3 + 24) = 0;
    v3[2] = 0;
  }

  return v3;
}

- (MARootProgressReporter)initWithProgressBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MARootProgressReporter;
  initForSubclasses = [(MAProgressReporter *)&v9 initForSubclasses];
  if (initForSubclasses)
  {
    v6 = _Block_copy(blockCopy);
    progressBlock = initForSubclasses->_progressBlock;
    initForSubclasses->_progressBlock = v6;

    initForSubclasses->_progress = 0.0;
    initForSubclasses->_isCancelled = 0;
    initForSubclasses->_lastProgressCallTime = 0.0;
  }

  return initForSubclasses;
}

@end