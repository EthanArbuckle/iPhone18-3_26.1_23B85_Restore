@interface CSCrownPressSelfLoggerWatch
- (CSCrownPressSelfLoggerWatch)init;
- (void)CSSiriAssertionMonitor:(id)a3 didReceiveBacklightOnEnabled:(BOOL)a4 atHostTime:(unint64_t)a5;
- (void)_handleDidStartStreamWithContext:(id)a3 withOption:(id)a4 successfully:(BOOL)a5;
- (void)dealloc;
- (void)setup;
- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7;
@end

@implementation CSCrownPressSelfLoggerWatch

- (void)CSSiriAssertionMonitor:(id)a3 didReceiveBacklightOnEnabled:(BOOL)a4 atHostTime:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD020;
  block[3] = &unk_100253028;
  v7 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)a3 didStartStreamWithContext:(id)a4 successfully:(BOOL)a5 option:(id)a6 withEventUUID:(id)a7
{
  v10 = a4;
  v11 = a6;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DD118;
  v15[3] = &unk_100252420;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)_handleDidStartStreamWithContext:(id)a3 withOption:(id)a4 successfully:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if (v5)
  {
    v14 = v8;
    v9 = [a3 isHomePressed];
    v8 = v14;
    if (v9)
    {
      if (self->_listeningEnabled)
      {
        v10 = [(CSCrownPressSelfLoggerWatch *)self displayWakeHostTime];
        v11 = [v14 startRecordingHostTime];
        v8 = v14;
        v12 = v10 > v11;
      }

      else
      {
        v12 = 1;
      }

      v13 = [v8 requestMHUUID];
      [(CSCrownPressSelfLoggerWatch *)self _emitCrownPressedEventwithMHUUID:v13 didUseAOM:v12];

      v8 = v14;
    }
  }
}

- (void)setup
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD418;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v3 unregisterObserver:self];

  v4 = +[CSSiriAssertionMonitor sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = CSCrownPressSelfLoggerWatch;
  [(CSCrownPressSelfLoggerWatch *)&v5 dealloc];
}

- (CSCrownPressSelfLoggerWatch)init
{
  v7.receiver = self;
  v7.super_class = CSCrownPressSelfLoggerWatch;
  v2 = [(CSCrownPressSelfLoggerWatch *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
    v4 = dispatch_queue_create("CSCrownPressSelfLoggerWatch queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_listeningEnabled = 0;
  }

  return v2;
}

@end