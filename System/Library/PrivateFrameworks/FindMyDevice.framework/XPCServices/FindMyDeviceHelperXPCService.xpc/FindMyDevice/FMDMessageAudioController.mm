@interface FMDMessageAudioController
- (id)_fillVibrationPattern:(id)a3 toDuration:(double)a4;
- (void)_stopSound;
- (void)playSoundWithMessage:(id)a3 completion:(id)a4;
- (void)startObserving;
- (void)stopObserving;
- (void)stopSoundWithCompletion:(id)a3;
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

- (void)playSoundWithMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v9 = [v6 soundName];
  v10 = [v8 URLForResource:v9 withExtension:@"caf"];

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
    if ([v6 vibrate])
    {
      v18 = [(FMDMessageAudioController *)self _vibrationPattern];
      v19 = -[FMDMessageAudioController _fillVibrationPattern:toDuration:](self, "_fillVibrationPattern:toDuration:", v18, [v6 soundDuration]);

      v36[0] = @"Intensity";
      v36[1] = @"VibePattern";
      v37[0] = &off_100018280;
      v37[1] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
      [v12 setVibrationPattern:v20];
    }

    v21 = [(FMDMessageAudioController *)self stopSoundTimer];
    [v21 cancel];

    objc_initWeak(buf, self);
    v22 = [FMDispatchTimer alloc];
    v23 = &_dispatch_main_q;
    v24 = [v6 soundDuration];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100002DF0;
    v31[3] = &unk_100014EC8;
    objc_copyWeak(&v32, buf);
    v25 = [v22 initWithQueue:&_dispatch_main_q timeout:v31 completion:v24];
    [(FMDMessageAudioController *)self setStopSoundTimer:v25];

    v26 = sub_1000070C0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Playing sound...", v30, 2u);
    }

    v27 = [[FMDLoopPlayer alloc] initWithPlayer:v12];
    [(FMDMessageAudioController *)self setLoopPlayer:v27];

    v28 = [(FMDMessageAudioController *)self loopPlayer];
    [v28 playURL:v10];

    v29 = [(FMDMessageAudioController *)self stopSoundTimer];
    [v29 start];

    if (v7)
    {
      v7[2](v7, 0);
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

  if (v7)
  {
    v34 = NSLocalizedFailureReasonErrorKey;
    v35 = @"Error getting sound URL";
    v17 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v12 = [NSError errorWithDomain:@"FMDMessageAudioControllerErrorDomain" code:-1 userInfo:v17];

    (v7)[2](v7, v12);
LABEL_18:
  }
}

- (void)stopSoundWithCompletion:(id)a3
{
  v5 = a3;
  [(FMDMessageAudioController *)self _stopSound];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)_stopSound
{
  v3 = [(FMDMessageAudioController *)self loopPlayer];

  if (v3)
  {
    [(FMDMessageAudioController *)self stopObserving];
    v4 = sub_1000070C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping any sound that may be playing", v8, 2u);
    }

    v5 = [(FMDMessageAudioController *)self loopPlayer];
    [v5 stop];

    [(FMDMessageAudioController *)self setLoopPlayer:0];
    v6 = +[FMXPCTransactionManager sharedInstance];
    [v6 endTransaction:@"PlayingSound"];

    v7 = [(FMDMessageAudioController *)self stopSoundTimer];
    [v7 cancel];

    [(FMDMessageAudioController *)self setStopSoundTimer:0];
  }
}

- (id)_fillVibrationPattern:(id)a3 toDuration:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if (a4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v7];
      [v6 addObject:v9];

      v10 = [v5 objectAtIndexedSubscript:v7 + 1];
      [v6 addObject:v10];
      v8 += [v10 integerValue];
      v7 += 2;
      if (v7 >= [v5 count])
      {
        v7 = 0;
      }
    }

    while (v8 < 1000 * a4);
  }

  v11 = [v6 copy];

  return v11;
}

@end