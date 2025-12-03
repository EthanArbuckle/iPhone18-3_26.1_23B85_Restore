@interface CSCrownPressSelfLoggerWatch
- (CSCrownPressSelfLoggerWatch)init;
- (void)CSSiriAssertionMonitor:(id)monitor didReceiveBacklightOnEnabled:(BOOL)enabled atHostTime:(unint64_t)time;
- (void)_handleDidStartStreamWithContext:(id)context withOption:(id)option successfully:(BOOL)successfully;
- (void)dealloc;
- (void)setup;
- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
@end

@implementation CSCrownPressSelfLoggerWatch

- (void)CSSiriAssertionMonitor:(id)monitor didReceiveBacklightOnEnabled:(BOOL)enabled atHostTime:(unint64_t)time
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD020;
  block[3] = &unk_100253028;
  enabledCopy = enabled;
  block[4] = self;
  block[5] = time;
  dispatch_async(queue, block);
}

- (void)siriClientBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  optionCopy = option;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DD118;
  v15[3] = &unk_100252420;
  v15[4] = self;
  v16 = contextCopy;
  v17 = optionCopy;
  successfullyCopy = successfully;
  v13 = optionCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

- (void)_handleDidStartStreamWithContext:(id)context withOption:(id)option successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  optionCopy = option;
  if (successfullyCopy)
  {
    v14 = optionCopy;
    isHomePressed = [context isHomePressed];
    optionCopy = v14;
    if (isHomePressed)
    {
      if (self->_listeningEnabled)
      {
        displayWakeHostTime = [(CSCrownPressSelfLoggerWatch *)self displayWakeHostTime];
        startRecordingHostTime = [v14 startRecordingHostTime];
        optionCopy = v14;
        v12 = displayWakeHostTime > startRecordingHostTime;
      }

      else
      {
        v12 = 1;
      }

      requestMHUUID = [optionCopy requestMHUUID];
      [(CSCrownPressSelfLoggerWatch *)self _emitCrownPressedEventwithMHUUID:requestMHUUID didUseAOM:v12];

      optionCopy = v14;
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