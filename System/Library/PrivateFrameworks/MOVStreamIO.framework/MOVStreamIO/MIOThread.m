@interface MIOThread
- (MIOThread)init;
- (MIOThread)initWithName:(id)a3 block:(id)a4;
- (void)waitWithTimeout:(double)a3;
@end

@implementation MIOThread

- (MIOThread)init
{
  v6.receiver = self;
  v6.super_class = MIOThread;
  v2 = [(MIOThread *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    waitSema = v2->_waitSema;
    v2->_waitSema = v3;
  }

  return v2;
}

- (MIOThread)initWithName:(id)a3 block:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MIOThread;
  v7 = [(MIOThread *)&v13 initWithBlock:a4];
  v8 = v7;
  if (v7)
  {
    [(MIOThread *)v7 setName:v6];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mio.thread.%@", v6];
    v10 = os_log_create([v9 UTF8String], "PointsOfInterest");
    perfLogHandle = v8->_perfLogHandle;
    v8->_perfLogHandle = v10;
  }

  return v8;
}

- (void)waitWithTimeout:(double)a3
{
  waitSema = self->_waitSema;
  v4 = dispatch_time(0, (a3 * 1000000.0));

  dispatch_semaphore_wait(waitSema, v4);
}

@end