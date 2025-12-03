@interface MRSingleShotTimer
- (MRSingleShotTimer)initWithInterval:(double)interval queue:(id)queue block:(id)block;
- (void)invalidateWithReason:(id)reason;
@end

@implementation MRSingleShotTimer

- (MRSingleShotTimer)initWithInterval:(double)interval queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = MRSingleShotTimer;
  v11 = [(MRSingleShotTimer *)&v25 init];
  if (v11)
  {
    v12 = +[NSDate now];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [(NSDate *)v11->_startDate dateByAddingTimeInterval:interval];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    v11->_interval = interval;
    v16 = [blockCopy copy];
    block = v11->_block;
    v11->_block = v16;

    objc_storeStrong(&v11->_queue, queue);
    objc_initWeak(&location, v11);
    v18 = [MSVTimer alloc];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100139D90;
    v22[3] = &unk_1004B8280;
    objc_copyWeak(&v23, &location);
    v19 = [v18 initWithInterval:0 repeats:queueCopy queue:v22 block:interval];
    timer = v11->_timer;
    v11->_timer = v19;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)invalidateWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_retainBlock(selfCopy->_block);
  timer = selfCopy->_timer;
  selfCopy->_timer = 0;

  block = selfCopy->_block;
  selfCopy->_block = 0;

  objc_sync_exit(selfCopy);
  if (v6)
  {
    queue = selfCopy->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100139ECC;
    v10[3] = &unk_1004B8B50;
    v12 = v6;
    v11 = reasonCopy;
    dispatch_async(queue, v10);
  }
}

@end