@interface MALegacyProgressReporter
- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time;
- (MALegacyProgressReporter)initWithProgressBlock:(id)block;
- (id)childProgressWithOffset:(double)offset scale:(double)scale;
@end

@implementation MALegacyProgressReporter

- (id)childProgressWithOffset:(double)offset scale:(double)scale
{
  v4 = [[MAChildProgressReporter alloc] initWithParentProgress:self offset:offset scale:scale];

  return v4;
}

- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time
{
  if (self->_isCancelled)
  {
    return 1;
  }

  else if (progress == 1.0 || time - self->_lastProgressCallTime >= 0.01)
  {
    self->_lastProgressCallTime = time;
    progressBlock = self->_progressBlock;
    (*(self->_progressBlock + 2))();
    return self->_isCancelled;
  }

  else
  {
    return 0;
  }
}

- (MALegacyProgressReporter)initWithProgressBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MALegacyProgressReporter;
  initForSubclasses = [(MAProgressReporter *)&v9 initForSubclasses];
  if (initForSubclasses)
  {
    v6 = _Block_copy(blockCopy);
    progressBlock = initForSubclasses->_progressBlock;
    initForSubclasses->_progressBlock = v6;

    initForSubclasses->_isCancelled = 0;
    initForSubclasses->_lastProgressCallTime = 0.0;
  }

  return initForSubclasses;
}

@end