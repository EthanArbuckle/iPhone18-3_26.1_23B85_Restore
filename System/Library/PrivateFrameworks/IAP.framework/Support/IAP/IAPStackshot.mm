@interface IAPStackshot
+ (id)sharedInstance;
- (IAPStackshot)init;
- (id)startTimer:(double)a3 withInfo:(id)a4;
- (void)_saveStackshot:(id)a3;
- (void)_stackshotThread;
@end

@implementation IAPStackshot

+ (id)sharedInstance
{
  if (qword_10012B920 != -1)
  {
    sub_1000E1D50();
  }

  return qword_10012B918;
}

- (IAPStackshot)init
{
  v4.receiver = self;
  v4.super_class = IAPStackshot;
  result = [(IAPStackshot *)&v4 init];
  v3 = result;
  if (!result)
  {
    return v3;
  }

  if (((result + 16) & 3) == 0)
  {
    result->_timerID = 0;
    [NSThread detachNewThreadSelector:"_stackshotThread" toTarget:result withObject:0];
    return v3;
  }

  __break(0x5516u);
  return result;
}

- (id)startTimer:(double)a3 withInfo:(id)a4
{
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*(self + 1))
    {
      v5 = self;
      v6 = [[NSTimer alloc] initWithFireDate:+[NSDate dateWithTimeIntervalSinceNow:](NSDate interval:"dateWithTimeIntervalSinceNow:" target:a3) selector:self userInfo:"_saveStackshot:" repeats:{a4, 0, 0.0}];
      [v5[1] addTimer:v6 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      NSLog(@"ERROR - %s:%s - %d no run loop", a2, a4, a3, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPStackshot.m", "[IAPStackshot startTimer:withInfo:]", 53);
      v6 = 0;
    }

    return v6;
  }

  return self;
}

- (void)_stackshotThread
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v3 = objc_alloc_init(NSPort);
  v4 = +[NSRunLoop currentRunLoop];
  p_stackshotRunLoop = &self->_stackshotRunLoop;
  if ((p_stackshotRunLoop & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *p_stackshotRunLoop = v4;
    [(NSRunLoop *)v4 addPort:v3 forMode:NSDefaultRunLoopMode];

    NSLog(@"_stackshotThread started (%hhx)", *p_stackshotRunLoop);
    CFRunLoopRun();
    NSLog(@"_stackshotThread ended (%hhx)", *p_stackshotRunLoop);
  }
}

- (void)_saveStackshot:(id)a3
{
  [a3 userInfo];
  WriteStackshotReport_async();
  if ((&self->_stackshotRunLoop & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    NSLog(@"saveStackshot(%hhx): %@", self->_stackshotRunLoop, [a3 userInfo]);
  }
}

@end