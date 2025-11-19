@interface _MFBlockIterationHandler
- (BOOL)handleMessage:(id)a3;
- (_MFBlockIterationHandler)initWithBlock:(id)a3;
@end

@implementation _MFBlockIterationHandler

- (_MFBlockIterationHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _MFBlockIterationHandler;
  v5 = [(_MFBlockIterationHandler *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v5->_cancelled = 0;
    v8 = +[MFActivityMonitor currentMonitor];
    monitor = v5->_monitor;
    v5->_monitor = v8;
  }

  return v5;
}

- (BOOL)handleMessage:(id)a3
{
  v4 = a3;
  if (![(_MFBlockIterationHandler *)self shouldCancel])
  {
    v5 = objc_autoreleasePoolPush();
    (*(self->_block + 2))();
    objc_autoreleasePoolPop(v5);
  }

  cancelled = self->_cancelled;

  return !cancelled;
}

@end