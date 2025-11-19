@interface IDSBlockRetryHandler
- (IDSBlockRetryHandler)initWithQueue:(id)a3 backoffProvider:(id)a4 block:(id)a5;
- (id)_isFinishedBlock;
- (void)_deferToQueue:(id)a3 after:(double)a4 block:(id)a5;
- (void)_run;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation IDSBlockRetryHandler

- (void)stop
{
  scheduledBlock = self->_scheduledBlock;
  if (scheduledBlock)
  {
    dispatch_block_cancel(scheduledBlock);
    v4 = self->_scheduledBlock;
    self->_scheduledBlock = 0;
  }

  [(IDSBlockRetryHandler *)self setIsRunning:0];
}

- (void)dealloc
{
  scheduledBlock = self->_scheduledBlock;
  if (scheduledBlock)
  {
    dispatch_block_cancel(scheduledBlock);
  }

  v4.receiver = self;
  v4.super_class = IDSBlockRetryHandler;
  [(IDSBlockRetryHandler *)&v4 dealloc];
}

- (void)start
{
  [(IDSBlockRetryHandler *)self stop];
  [(IDSBlockRetryHandler *)self setAttempts:0];
  [(IDSBlockRetryHandler *)self setIsRunning:1];

  [(IDSBlockRetryHandler *)self _run];
}

- (void)_run
{
  v3 = [(IDSBlockRetryHandler *)self attempts];
  [(IDSBlockRetryHandler *)self setAttempts:[(IDSBlockRetryHandler *)self attempts]+ 1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D81C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  v4 = dispatch_block_create(0, block);
  v5 = v4;
  if (v3)
  {
    [(IDSBlockRetryHandler *)self setScheduledBlock:v4];
    v6 = [(IDSBlockRetryHandler *)self backoffProvider];
    v7 = v6[2](v6, [(IDSBlockRetryHandler *)self attempts]);
    v8 = [(IDSBlockRetryHandler *)self queue];
    [(IDSBlockRetryHandler *)self _deferToQueue:v8 after:v5 block:v7];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (id)_isFinishedBlock
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DB0C;
  v5[3] = &unk_100BD9EB8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (IDSBlockRetryHandler)initWithQueue:(id)a3 backoffProvider:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = IDSBlockRetryHandler;
  v12 = [(IDSBlockRetryHandler *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    v14 = objc_retainBlock(v10);
    backoffProvider = v13->_backoffProvider;
    v13->_backoffProvider = v14;

    v16 = objc_retainBlock(v11);
    block = v13->_block;
    v13->_block = v16;

    v13->_attempts = 0;
    v13->_isRunning = 0;
  }

  return v13;
}

- (void)_deferToQueue:(id)a3 after:(double)a4 block:(id)a5
{
  v6 = (a4 * 1000000000.0);
  v7 = a5;
  queue = a3;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queue, v7);
}

@end