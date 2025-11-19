@interface FindMyDeviceHelperXPCServer
- (BOOL)isEntitled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FMDAccessoryAudioController)accessoryAudioController;
- (FMDMessageAudioController)messageAudioController;
- (id)_disableBiometricID;
- (id)getManagedLostModeFileURL;
- (id)getNeedsLocateAckLostModeFileURL;
- (void)_stopPlayingForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5;
- (void)_stopSoundTimerFired:(id)a3;
- (void)_updateLostModeInfo:(id)a3 toFile:(id)a4 completion:(id)a5;
- (void)disableBiometricIDWithCompletion:(id)a3;
- (void)invalidateStopSoundTimer;
- (void)setTimeoutForDuration:(double)a3;
- (void)startPlayingSoundForAccessory:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7;
- (void)startPlayingSoundForMessage:(id)a3 completion:(id)a4;
- (void)stopPlayingForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5;
- (void)stopSoundMessageWithCompletion:(id)a3;
- (void)updateManagedLostModeInfo:(id)a3 completion:(id)a4;
- (void)updateNeedsLocateAckLostModeInfo:(id)a3 completion:(id)a4;
- (void)waitForRoutableAccessory:(id)a3 timeout:(double)a4 completion:(id)a5;
@end

@implementation FindMyDeviceHelperXPCServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceHelperXPCInterface];
  [v12 setClasses:v11 forSelector:"startPlayingSoundForAccessory:duration:rampUpDuration:channels:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"stopPlayingForAccessory:rampDownDuration:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"waitForRoutableAccessory:timeout:completion:" argumentIndex:0 ofReply:0];
  [v12 setClasses:v11 forSelector:"startPlayingSoundForMessage:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"stopSoundMessageWithCompletion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"didAddLocalFindableAccessory:completion:" argumentIndex:0 ofReply:1];
  [v12 setClasses:v11 forSelector:"didRemoveLocalFindableAccessory:completion:" argumentIndex:0 ofReply:1];
  [v5 setExportedInterface:v12];
  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)startPlayingSoundForAccessory:(id)a3 duration:(double)a4 rampUpDuration:(double)a5 channels:(id)a6 completion:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = +[NSXPCConnection currentConnection];
  v17 = [v16 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v17 && ([&__kCFBooleanTrue isEqual:v17] & 1) != 0)
  {
    v18 = sub_1000070C0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v38 = v13;
      v39 = 2048;
      v40 = a4;
      v41 = 2048;
      v42 = a5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Start playing sound for accessory: %@ duration: %f rampUpDuration: %f", buf, 0x20u);
    }

    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007FA4;
      block[3] = &unk_1000152C0;
      v33 = a5;
      block[4] = self;
      v30 = v13;
      v31 = v14;
      v34 = a4;
      v32 = v15;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (v15)
    {
      v26 = [NSError alloc];
      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"Accessory cannot be nil";
      v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v28 = [v26 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v27];
      (*(v15 + 2))(v15, v28);
    }
  }

  else
  {
    v19 = NSStringFromSelector(a2);
    v20 = [NSString stringWithFormat:@"Entitlement not found for %@", v19];

    v21 = [NSError alloc];
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_100017B40;
    }

    v43 = NSLocalizedFailureReasonErrorKey;
    v44 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v24 = [v21 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v23];

    v25 = sub_1000070C0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v15)
    {
      (*(v15 + 2))(v15, v24);
    }
  }
}

- (void)stopPlayingForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v12 && ([&__kCFBooleanTrue isEqual:v12] & 1) != 0)
  {
    [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:v9 rampDownDuration:v10 completion:a4];
  }

  else
  {
    v13 = NSStringFromSelector(a2);
    v14 = [NSString stringWithFormat:@"Entitlement not found for %@", v13];

    v15 = [NSError alloc];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_100017B40;
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v15 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v17];

    v19 = sub_1000070C0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v10)
    {
      v10[2](v10, v18);
    }
  }
}

- (void)_stopPlayingForAccessory:(id)a3 rampDownDuration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_1000070C0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stop playing sound for accessory: %@ rampDownDuration: %f", buf, 0x16u);
  }

  if (v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008590;
    v14[3] = &unk_100015310;
    v17 = a4;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else if (v9)
  {
    v11 = [NSError alloc];
    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"Accessory cannot be nil";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v12];
    (*(v9 + 2))(v9, v13);
  }
}

- (void)waitForRoutableAccessory:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = sub_1000070C0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v9;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wait for routable accessories: %@ timeout: %f", buf, 0x16u);
  }

  v12 = +[NSXPCConnection currentConnection];
  v13 = [v12 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v13 && ([&__kCFBooleanTrue isEqual:v13] & 1) != 0)
  {
    v14 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008998;
    block[3] = &unk_100015310;
    v26 = a4;
    v23 = v9;
    v24 = self;
    v25 = v10;
    dispatch_after(v14, &_dispatch_main_q, block);

    v15 = v23;
  }

  else
  {
    v16 = NSStringFromSelector(a2);
    v15 = [NSString stringWithFormat:@"Entitlement not found for %@", v16];

    v17 = [NSError alloc];
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &stru_100017B40;
    }

    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v20 = [v17 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v19];

    v21 = sub_1000070C0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v10)
    {
      (*(v10 + 2))(v10, v20);
    }
  }
}

- (void)setTimeoutForDuration:(double)a3
{
  v5 = sub_1000070C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSThread currentThread];
    v11 = 134218240;
    v12 = a3;
    v13 = 1024;
    v14 = [v6 isMainThread];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set timeout for duration: %f inMainThread: %d", &v11, 0x12u);
  }

  v7 = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [v7 invalidate];

  v8 = [NSTimer timerWithTimeInterval:self target:"_stopSoundTimerFired:" selector:0 userInfo:0 repeats:a3];
  [(FindMyDeviceHelperXPCServer *)self setStopSoundTimer:v8];

  v9 = +[NSRunLoop currentRunLoop];
  v10 = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [v9 addTimer:v10 forMode:NSRunLoopCommonModes];
}

- (void)_stopSoundTimerFired:(id)a3
{
  v4 = sub_1000070C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound timer fired", v6, 2u);
  }

  v5 = [(FindMyDeviceHelperXPCServer *)self currentAccessory];
  [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:v5 rampDownDuration:0 completion:0.5];
}

- (void)invalidateStopSoundTimer
{
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating stop sound timer", v5, 2u);
  }

  v4 = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [v4 invalidate];

  [(FindMyDeviceHelperXPCServer *)self setStopSoundTimer:0];
}

- (FMDAccessoryAudioController)accessoryAudioController
{
  accessoryAudioController = self->_accessoryAudioController;
  if (!accessoryAudioController)
  {
    v4 = objc_alloc_init(FMDAccessoryAudioController);
    v5 = self->_accessoryAudioController;
    self->_accessoryAudioController = v4;

    [(FMDAccessoryAudioController *)self->_accessoryAudioController setDelegate:self];
    accessoryAudioController = self->_accessoryAudioController;
  }

  return accessoryAudioController;
}

- (FMDMessageAudioController)messageAudioController
{
  messageAudioController = self->_messageAudioController;
  if (!messageAudioController)
  {
    v4 = objc_alloc_init(FMDMessageAudioController);
    v5 = self->_messageAudioController;
    self->_messageAudioController = v4;

    messageAudioController = self->_messageAudioController;
  }

  return messageAudioController;
}

- (void)disableBiometricIDWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[FindMyDeviceHelperXPCServer disableBiometricIDWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  v7 = +[NSXPCConnection currentConnection];
  v8 = [v7 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v8 && ([&__kCFBooleanTrue isEqual:v8] & 1) != 0)
  {
    v9 = [(FindMyDeviceHelperXPCServer *)self _disableBiometricID];
    if (v5)
    {
      v5[2](v5, v9);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v9 = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = [NSError alloc];
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &stru_100017B40;
    }

    v16 = NSLocalizedFailureReasonErrorKey;
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v13];

    v15 = sub_1000070C0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v5)
    {
      v5[2](v5, v14);
    }
  }
}

- (void)updateNeedsLocateAckLostModeInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[FindMyDeviceHelperXPCServer updateNeedsLocateAckLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (v7)
    {
      if ([v7 lostModeType] == 5)
      {
        v10 = [(FindMyDeviceHelperXPCServer *)self getNeedsLocateAckLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:v7 toFile:v10 completion:v8];
        goto LABEL_25;
      }

      v21 = [v7 lostModeType];
      v22 = NSStringFromSelector(a2);
      v10 = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", v21, v22];

      v23 = [NSError alloc];
      if (v10)
      {
        v24 = v10;
      }

      else
      {
        v24 = &stru_100017B40;
      }

      v26 = NSLocalizedFailureReasonErrorKey;
      v27 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = [v23 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v25];

      v16 = sub_1000070C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }

    else
    {
      v17 = NSStringFromSelector(a2);
      v10 = [NSString stringWithFormat:@"LostMode info not passed to %@", v17];

      v18 = [NSError alloc];
      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = &stru_100017B40;
      }

      v28 = NSLocalizedFailureReasonErrorKey;
      v29 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v15 = [v18 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v20];

      v16 = sub_1000070C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &stru_100017B40;
    }

    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = [v12 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v14];

    v16 = sub_1000070C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }
  }

  if (v8)
  {
    v8[2](v8, v15);
  }

LABEL_25:
}

- (void)updateManagedLostModeInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[FindMyDeviceHelperXPCServer updateManagedLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (v7)
    {
      if ([v7 lostModeType] == 3)
      {
        v10 = [(FindMyDeviceHelperXPCServer *)self getManagedLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:v7 toFile:v10 completion:v8];
        goto LABEL_25;
      }

      v21 = [v7 lostModeType];
      v22 = NSStringFromSelector(a2);
      v10 = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", v21, v22];

      v23 = [NSError alloc];
      if (v10)
      {
        v24 = v10;
      }

      else
      {
        v24 = &stru_100017B40;
      }

      v26 = NSLocalizedFailureReasonErrorKey;
      v27 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = [v23 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v25];

      v16 = sub_1000070C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }

    else
    {
      v17 = NSStringFromSelector(a2);
      v10 = [NSString stringWithFormat:@"LostMode info not passed to %@", v17];

      v18 = [NSError alloc];
      if (v10)
      {
        v19 = v10;
      }

      else
      {
        v19 = &stru_100017B40;
      }

      v28 = NSLocalizedFailureReasonErrorKey;
      v29 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v15 = [v18 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v20];

      v16 = sub_1000070C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000B120();
      }
    }
  }

  else
  {
    v11 = NSStringFromSelector(a2);
    v10 = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &stru_100017B40;
    }

    v30 = NSLocalizedFailureReasonErrorKey;
    v31 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v15 = [v12 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v14];

    v16 = sub_1000070C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }
  }

  if (v8)
  {
    v8[2](v8, v15);
  }

LABEL_25:
}

- (void)startPlayingSoundForMessage:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[FindMyDeviceHelperXPCServer startPlayingSoundForMessage:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    v10 = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    v11 = +[NSXPCConnection currentConnection];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100009D24;
    v19[3] = &unk_100014478;
    v20 = v10;
    v12 = v10;
    [v11 setInvalidationHandler:v19];

    [(__CFString *)v12 playSoundWithMessage:v7 completion:v8];
    v13 = v20;
  }

  else
  {
    v14 = NSStringFromSelector(a2);
    v12 = [NSString stringWithFormat:@"Entitlement not found for %@", v14];

    v15 = [NSError alloc];
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = &stru_100017B40;
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [v15 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v17];

    v18 = sub_1000070C0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v8)
    {
      v8[2](v8, v13);
    }
  }
}

- (void)stopSoundMessageWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FindMyDeviceHelperXPCServer stopSoundMessageWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    v7 = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    [(__CFString *)v7 stopSoundWithCompletion:v5];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    v7 = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = [NSError alloc];
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = &stru_100017B40;
    }

    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 initWithDomain:@"com.apple.icloud.FindMyDevice" code:6 userInfo:v11];

    v13 = sub_1000070C0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000B120();
    }

    if (v5)
    {
      v5[2](v5, v12);
    }
  }
}

- (void)_updateLostModeInfo:(id)a3 toFile:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 lostModeEnabled];
  v12 = sub_1000070C0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    v45 = self;
    if (v13)
    {
      sub_10000B2A8();
    }

    v53[0] = @"lostModeEnabled";
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 lostModeEnabled]);
    v54[0] = v14;
    v53[1] = @"lostModeType";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 lostModeType]);
    v54[1] = v15;
    v53[2] = @"disableSlideToUnlock";
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 disableSlideToUnlock]);
    v54[2] = v16;
    v53[3] = @"lostModeMessage";
    v17 = [v8 message];
    v46 = v9;
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_100017B40;
    }

    v54[3] = v19;
    v53[4] = @"lostModeOwnerNumber";
    v20 = [v8 phoneNumber];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_100017B40;
    }

    v54[4] = v22;
    v53[5] = @"lostModeFacetimeCapable";
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 facetimeCapable]);
    v54[5] = v23;
    v53[6] = @"lostModeFootnoteTextPrefKey";
    v24 = [v8 footnoteText];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_100017B40;
    }

    v54[6] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:7];

    v9 = v46;
    v28 = [v46 URLByDeletingLastPathComponent];
    v29 = [v28 path];
    v30 = +[NSFileManager defaultManager];
    v31 = [v30 fileExistsAtPath:v29];

    if ((v31 & 1) == 0)
    {
      v32 = +[NSFileManager defaultManager];
      v50 = 0;
      [v32 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:&v50];
      v33 = v50;

      if (v33)
      {
        v34 = sub_1000070C0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10000B31C();
        }

        v9 = v46;
      }
    }

    v35 = [NSPropertyListSerialization dataWithPropertyList:v27 format:200 options:0 error:0];
    v49 = 0;
    [v35 writeToURL:v9 options:268435457 error:&v49];
    v36 = v49;
    if (!v36)
    {
      v37 = [NSNumber numberWithBool:1];
      v48 = 0;
      [v9 setResourceValue:v37 forKey:NSURLIsExcludedFromBackupKey error:&v48];
      v38 = v48;

      if (v38)
      {
        v39 = sub_1000070C0();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_10000B3A0(v46, v38, v39);
        }
      }

      v40 = sub_1000070C0();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Lost mode info written on disk - %@", buf, 0xCu);
      }

      v36 = [(FindMyDeviceHelperXPCServer *)v45 _disableBiometricID];

      v9 = v46;
    }
  }

  else
  {
    if (v13)
    {
      sub_10000B1F0();
    }

    v27 = +[NSFileManager defaultManager];
    v41 = [v9 path];
    v42 = [v27 fileExistsAtPath:v41];

    if (v42)
    {
      v43 = sub_1000070C0();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B264(v43);
      }

      v47 = 0;
      [v27 removeItemAtURL:v9 error:&v47];
      v36 = v47;
    }

    else
    {
      v36 = 0;
    }
  }

  v44 = +[FMDFMIPSharedStateManager sharedInstance];
  [v44 recalculateLostMode];

  if (v10)
  {
    v10[2](v10, v36);
  }
}

- (id)_disableBiometricID
{
  v2 = sub_1000070C0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling Biometry ID...", buf, 2u);
  }

  v3 = objc_alloc_init(EmbeddedOSSupport);
  v4 = [(EmbeddedOSSupport *)v3 disableBiometricID];

  v5 = sub_1000070C0();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000B44C();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disabled Biometry ID success.", v8, 2u);
  }

  return v4;
}

- (id)getManagedLostModeFileURL
{
  v2 = qword_10001EB98;
  if (!qword_10001EB98)
  {
    v3 = [FMSharedFileContainer alloc];
    v4 = [v3 initWithIdentifier:off_10001E7A0];
    v5 = [v4 url];
    v6 = [v5 fm_preferencesPathURLForDomain:off_10001E790];
    v7 = qword_10001EB98;
    qword_10001EB98 = v6;

    v2 = qword_10001EB98;
  }

  return v2;
}

- (id)getNeedsLocateAckLostModeFileURL
{
  v2 = qword_10001EBA0;
  if (!qword_10001EBA0)
  {
    v3 = [FMSharedFileContainer alloc];
    v4 = [v3 initWithIdentifier:off_10001E7A0];
    v5 = [v4 url];
    v6 = [v5 fm_preferencesPathURLForDomain:off_10001E798];
    v7 = qword_10001EBA0;
    qword_10001EBA0 = v6;

    v2 = qword_10001EBA0;
  }

  return v2;
}

- (BOOL)isEntitled
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v3)
  {
    v4 = [&__kCFBooleanTrue isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.icloud.findmydeviced.access"];

  if (v6)
  {
    v7 = [&__kCFBooleanTrue isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 | v7;

  return v8 & 1;
}

@end