@interface CSAttSiriTimer
- (CSAttSiriTimer)initWithQueue:(id)a3;
- (void)cancelTimer;
- (void)setTimerForSecs:(double)a3 completionBlock:(id)a4;
@end

@implementation CSAttSiriTimer

- (void)cancelTimer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8E50;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setTimerForSecs:(double)a3 completionBlock:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8FC4;
  block[3] = &unk_100251038;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

- (CSAttSiriTimer)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSAttSiriTimer;
  v5 = [(CSAttSiriTimer *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = dispatch_queue_create("com.apple.corespeech.attsiri-timer", 0);
    }

    queue = v5->_queue;
    v5->_queue = v6;
  }

  return v5;
}

@end