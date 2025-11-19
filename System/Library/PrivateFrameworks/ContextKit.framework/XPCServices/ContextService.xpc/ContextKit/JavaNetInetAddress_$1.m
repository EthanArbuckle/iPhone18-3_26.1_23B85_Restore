@interface JavaNetInetAddress_$1
- (void)dealloc;
- (void)run;
@end

@implementation JavaNetInetAddress_$1

- (void)run
{
  if (sub_1001CBA70(self->val$destinationAddress_, self->val$sourceAddress_, self->val$timeout_))
  {
    v3 = self->val$isReachable_;
    if (v3)
    {
      [(JavaUtilConcurrentAtomicAtomicBoolean *)v3 setWithBoolean:1];
      while (1)
      {
        v4 = self->val$latch_;
        if (!v4)
        {
          break;
        }

        if ([(JavaUtilConcurrentCountDownLatch *)v4 getCount]< 1)
        {
          goto LABEL_8;
        }

        [(JavaUtilConcurrentCountDownLatch *)self->val$latch_ countDown];
      }
    }

    JreThrowNullPointerException();
  }

LABEL_8:
  v5 = self->val$latch_;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilConcurrentCountDownLatch *)v5 countDown];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetInetAddress__1;
  [(JavaLangThread *)&v3 dealloc];
}

@end