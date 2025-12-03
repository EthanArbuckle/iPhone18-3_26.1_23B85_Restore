@interface FMDMessageAudioController
- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration;
- (void)_stopSound;
- (void)playSoundWithMessage:(id)message completion:(id)completion;
- (void)startObserving;
- (void)stopObserving;
- (void)stopSoundWithCompletion:(id)completion;
@end

@implementation FMDMessageAudioController

- (void)startObserving
{
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start Observing for button changes", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000027EC, kStopLostModeAlarmNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)stopObserving
{
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop Observing for button changes", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kStopLostModeAlarmNotification, 0);
}

- (void)playSoundWithMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  soundName = [messageCopy soundName];
  v10 = [v8 URLForResource:soundName withExtension:@"caf"];

  if (v10)
  {
    [(FMDMessageAudioController *)self _stopSound];
    v11 = +[FMXPCTransactionManager sharedInstance];
    [v11 beginTransaction:@"PlayingSound"];

    v12 = objc_alloc_init(AVQueuePlayer);
    [v12 _setClientName:@"LocatePhone"];
    [v12 _setClientPriority:10];
    v13 = +[AVAudioSession auxiliarySession];
    v33 = 0;
    [v13 setCategory:AVAudioSessionCategoryFindMyPhone error:&v33];
    v14 = v33;
    if (v14)
    {
      v15 = sub_1000070C0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to set attribute to AVAudioSessionCategoryFindMyPhone on AVAudioSession: %@", buf, 0xCu);
      }
    }

    else
    {
      [v12 setAudioSession:v13];
    }

    [(FMDMessageAudioController *)self startObserving];
    if ([messageCopy vibrate])
    {
      _vibrationPattern = [(FMDMessageAudioController *)self _vibrationPattern];
      v19 = -[FMDMessageAudioController _fillVibrationPattern:toDuration:](self, "_fillVibrationPattern:toDuration:", _vibrationPattern, [messageCopy soundDuration]);

      v36[0] = @"Intensity";
      v36[1] = @"VibePattern";
      v37[0] = &off_100018280;
      v37[1] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      [v12 setVibrationPattern:v20];
    }

    stopSoundTimer = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer cancel];

    objc_initWeak(buf, self);
    v22 = [FMDispatchTimer alloc];
    v23 = &_dispatch_main_q;
    soundDuration = [messageCopy soundDuration];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100002DF0;
    v31[3] = &unk_100014EC8;
    objc_copyWeak(&v32, buf);
    v25 = [v22 initWithQueue:&_dispatch_main_q timeout:v31 completion:soundDuration];
    [(FMDMessageAudioController *)self setStopSoundTimer:v25];

    v26 = sub_1000070C0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Playing sound...", v30, 2u);
    }

    v27 = [[FMDLoopPlayer alloc] initWithPlayer:v12];
    [(FMDMessageAudioController *)self setLoopPlayer:v27];

    loopPlayer = [(FMDMessageAudioController *)self loopPlayer];
    [loopPlayer playURL:v10];

    stopSoundTimer2 = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer2 start];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);

    goto LABEL_18;
  }

  v16 = sub_1000070C0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10000A94C(v16);
  }

  if (completionCopy)
  {
    v34 = NSLocalizedFailureReasonErrorKey;
    v35 = @"Error getting sound URL";
    v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v12 = [NSError errorWithDomain:@"FMDMessageAudioControllerErrorDomain" code:-1 userInfo:v17];

    (completionCopy)[2](completionCopy, v12);
LABEL_18:
  }
}

- (void)stopSoundWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDMessageAudioController *)self _stopSound];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (void)_stopSound
{
  loopPlayer = [(FMDMessageAudioController *)self loopPlayer];

  if (loopPlayer)
  {
    [(FMDMessageAudioController *)self stopObserving];
    v4 = sub_1000070C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping any sound that may be playing", v8, 2u);
    }

    loopPlayer2 = [(FMDMessageAudioController *)self loopPlayer];
    [loopPlayer2 stop];

    [(FMDMessageAudioController *)self setLoopPlayer:0];
    v6 = +[FMXPCTransactionManager sharedInstance];
    [v6 endTransaction:@"PlayingSound"];

    stopSoundTimer = [(FMDMessageAudioController *)self stopSoundTimer];
    [stopSoundTimer cancel];

    [(FMDMessageAudioController *)self setStopSoundTimer:0];
  }
}

- (id)_fillVibrationPattern:(id)pattern toDuration:(double)duration
{
  patternCopy = pattern;
  v6 = objc_alloc_init(NSMutableArray);
  if (duration >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [patternCopy objectAtIndexedSubscript:v7];
      [v6 addObject:v9];

      v10 = [patternCopy objectAtIndexedSubscript:v7 + 1];
      [v6 addObject:v10];
      v8 += [v10 integerValue];
      v7 += 2;
      if (v7 >= [patternCopy count])
      {
        v7 = 0;
      }
    }

    while (v8 < 1000 * duration);
  }

  v11 = [v6 copy];

  return v11;
}

@end