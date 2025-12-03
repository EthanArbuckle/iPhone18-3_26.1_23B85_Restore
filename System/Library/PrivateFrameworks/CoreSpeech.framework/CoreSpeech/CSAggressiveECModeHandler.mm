@interface CSAggressiveECModeHandler
- (CSAggressiveECModeHandler)init;
- (void)notifySiriSessionStateTTSOngoing:(BOOL)ongoing;
- (void)setAttendingState:(BOOL)state;
- (void)setAudioSessionState:(id)state;
- (void)siriDismissed;
@end

@implementation CSAggressiveECModeHandler

- (void)siriDismissed
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000522C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifySiriSessionStateTTSOngoing:(BOOL)ongoing
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011A1D0;
  v4[3] = &unk_100253BF8;
  ongoingCopy = ongoing;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)setAudioSessionState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011A348;
  v7[3] = &unk_100253C48;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

- (void)setAttendingState:(BOOL)state
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011A7C8;
  v4[3] = &unk_100253BF8;
  stateCopy = state;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (CSAggressiveECModeHandler)init
{
  v8.receiver = self;
  v8.super_class = CSAggressiveECModeHandler;
  v2 = [(CSAggressiveECModeHandler *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AggressiveECModeHandler queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    *&v2->_readThisOrVoiceOverSessionActive = 0;
    v2->_aggressiveEchoCancellationApplied = 0;
    v2->_echoCancellationReason = 0;
    v5 = [[CSAttSiriAudioSessionStateClient alloc] initWithDelegate:v2];
    siriStateClient = v2->_siriStateClient;
    v2->_siriStateClient = v5;
  }

  return v2;
}

@end