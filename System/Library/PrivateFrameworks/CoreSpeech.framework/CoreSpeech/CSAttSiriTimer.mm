@interface CSAttSiriTimer
- (CSAttSiriTimer)initWithQueue:(id)queue;
- (void)cancelTimer;
- (void)setTimerForSecs:(double)secs completionBlock:(id)block;
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

- (void)setTimerForSecs:(double)secs completionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8FC4;
  block[3] = &unk_100251038;
  block[4] = self;
  v10 = blockCopy;
  secsCopy = secs;
  v8 = blockCopy;
  dispatch_async(queue, block);
}

- (CSAttSiriTimer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSAttSiriTimer;
  v5 = [(CSAttSiriTimer *)&v9 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
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