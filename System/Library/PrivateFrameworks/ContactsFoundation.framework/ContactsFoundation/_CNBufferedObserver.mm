@interface _CNBufferedObserver
+ (id)bufferObserver:(id)a3 schedulerProvider:(id)a4;
- (_CNBufferedObserver)initWithObserver:(id)a3 scheduler:(id)a4;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNBufferedObserver

- (void)observerDidComplete
{
  observerScheduler = self->_observerScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42___CNBufferedObserver_observerDidComplete__block_invoke;
  v3[3] = &unk_1E6ED5830;
  v3[4] = self;
  [(CNSuspendableSchedulerDecorator *)observerScheduler performBlock:v3];
}

+ (id)bufferObserver:(id)a3 schedulerProvider:(id)a4
{
  v5 = a3;
  v6 = [a4 newSerialSchedulerWithName:@"com.apple.contacts.reactive.replay-subject.observer"];
  v7 = [CNSuspendableSchedulerDecorator suspendedSchedulerWithScheduler:v6];
  v8 = [[_CNBufferedObserver alloc] initWithObserver:v5 scheduler:v7];

  return v8;
}

- (_CNBufferedObserver)initWithObserver:(id)a3 scheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNBufferedObserver;
  v9 = [(_CNBufferedObserver *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, a3);
    objc_storeStrong(&v10->_observerScheduler, a4);
    v11 = v10;
  }

  return v10;
}

- (void)observerDidReceiveResult:(id)a3
{
  v4 = a3;
  observerScheduler = self->_observerScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CNBufferedObserver_observerDidReceiveResult___block_invoke;
  v7[3] = &unk_1E6ED5168;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CNSuspendableSchedulerDecorator *)observerScheduler performBlock:v7];
}

- (void)observerDidFailWithError:(id)a3
{
  v4 = a3;
  observerScheduler = self->_observerScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CNBufferedObserver_observerDidFailWithError___block_invoke;
  v7[3] = &unk_1E6ED5168;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CNSuspendableSchedulerDecorator *)observerScheduler performBlock:v7];
}

@end