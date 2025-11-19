@interface MRSingleShotTimer
- (MRSingleShotTimer)initWithInterval:(double)a3 queue:(id)a4 block:(id)a5;
- (void)invalidateWithReason:(id)a3;
@end

@implementation MRSingleShotTimer

- (MRSingleShotTimer)initWithInterval:(double)a3 queue:(id)a4 block:(id)a5
{
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = MRSingleShotTimer;
  v11 = [(MRSingleShotTimer *)&v25 init];
  if (v11)
  {
    v12 = +[NSDate now];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [(NSDate *)v11->_startDate dateByAddingTimeInterval:a3];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    v11->_interval = a3;
    v16 = [v10 copy];
    block = v11->_block;
    v11->_block = v16;

    objc_storeStrong(&v11->_queue, a4);
    objc_initWeak(&location, v11);
    v18 = [MSVTimer alloc];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100139D90;
    v22[3] = &unk_1004B8280;
    objc_copyWeak(&v23, &location);
    v19 = [v18 initWithInterval:0 repeats:v9 queue:v22 block:a3];
    timer = v11->_timer;
    v11->_timer = v19;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)invalidateWithReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_retainBlock(v5->_block);
  timer = v5->_timer;
  v5->_timer = 0;

  block = v5->_block;
  v5->_block = 0;

  objc_sync_exit(v5);
  if (v6)
  {
    queue = v5->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100139ECC;
    v10[3] = &unk_1004B8B50;
    v12 = v6;
    v11 = v4;
    dispatch_async(queue, v10);
  }
}

@end