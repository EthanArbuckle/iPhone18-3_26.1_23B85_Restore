@interface AsynchronousSocketCloseMonitor
+ (void)initialize;
+ (void)signalBlockedThreads:(int)threads;
- (AsynchronousSocketCloseMonitor)initWithFileDescriptor:(int)descriptor;
- (void)dealloc;
@end

@implementation AsynchronousSocketCloseMonitor

- (AsynchronousSocketCloseMonitor)initWithFileDescriptor:(int)descriptor
{
  v8.receiver = self;
  v8.super_class = AsynchronousSocketCloseMonitor;
  v4 = [(AsynchronousSocketCloseMonitor *)&v8 init];
  if (v4)
  {
    pthread_mutex_lock(&stru_1005539D8);
    v5 = pthread_self();
    v4->mFd = descriptor;
    v6 = qword_100557010;
    v4->mPrev = 0;
    v4->mNext = v6;
    v4->mThread = v5;
    if (v6)
    {
      *(v6 + 8) = v4;
    }

    qword_100557010 = v4;
    pthread_mutex_unlock(&stru_1005539D8);
  }

  return v4;
}

- (void)dealloc
{
  pthread_mutex_lock(&stru_1005539D8);
  mPrev = self->mPrev;
  mNext = self->mNext;
  if (mNext)
  {
    mNext->mPrev = mPrev;
  }

  if (mPrev)
  {
    p_mNext = &mPrev->mNext;
  }

  else
  {
    p_mNext = &qword_100557010;
  }

  *p_mNext = self->mNext;
  pthread_mutex_unlock(&stru_1005539D8);
  v6.receiver = self;
  v6.super_class = AsynchronousSocketCloseMonitor;
  [(AsynchronousSocketCloseMonitor *)&v6 dealloc];
}

+ (void)signalBlockedThreads:(int)threads
{
  pthread_mutex_lock(&stru_1005539D8);
  for (i = qword_100557010; i; i = *(i + 16))
  {
    if (*(i + 32) == threads)
    {
      pthread_kill(*(i + 24), 31);
    }
  }

  pthread_mutex_unlock(&stru_1005539D8);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4.__sigaction_u.__sa_handler = nullsub_15;
    *&v4.sa_mask = 0;
    if (sigaction(31, &v4, 0) == -1)
    {
      v2 = __error();
      v3 = [NSString stringWithFormat:@"setting blocked thread signal handler failed: %s", strerror(*v2)];
      JavaLangSystem_logEWithNSString_(v3);
    }
  }
}

@end