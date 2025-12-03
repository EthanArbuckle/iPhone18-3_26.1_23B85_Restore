@interface FindMyDeviceHelperXPCServer
- (BOOL)isEntitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FMDAccessoryAudioController)accessoryAudioController;
- (FMDMessageAudioController)messageAudioController;
- (id)_disableBiometricID;
- (id)getManagedLostModeFileURL;
- (id)getNeedsLocateAckLostModeFileURL;
- (void)_stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
- (void)_stopSoundTimerFired:(id)fired;
- (void)_updateLostModeInfo:(id)info toFile:(id)file completion:(id)completion;
- (void)disableBiometricIDWithCompletion:(id)completion;
- (void)invalidateStopSoundTimer;
- (void)setTimeoutForDuration:(double)duration;
- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion;
- (void)startPlayingSoundForMessage:(id)message completion:(id)completion;
- (void)stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion;
- (void)stopSoundMessageWithCompletion:(id)completion;
- (void)updateManagedLostModeInfo:(id)info completion:(id)completion;
- (void)updateNeedsLocateAckLostModeInfo:(id)info completion:(id)completion;
- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion;
@end

@implementation FindMyDeviceHelperXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = connectionCopy;
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
  [connectionCopy setExportedInterface:v12];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)startPlayingSoundForAccessory:(id)accessory duration:(double)duration rampUpDuration:(double)upDuration channels:(id)channels completion:(id)completion
{
  accessoryCopy = accessory;
  channelsCopy = channels;
  completionCopy = completion;
  v16 = +[NSXPCConnection currentConnection];
  v17 = [v16 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v17 && ([&__kCFBooleanTrue isEqual:v17] & 1) != 0)
  {
    v18 = sub_1000070C0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v38 = accessoryCopy;
      v39 = 2048;
      durationCopy = duration;
      v41 = 2048;
      upDurationCopy = upDuration;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Start playing sound for accessory: %@ duration: %f rampUpDuration: %f", buf, 0x20u);
    }

    if (accessoryCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007FA4;
      block[3] = &unk_1000152C0;
      upDurationCopy2 = upDuration;
      block[4] = self;
      v30 = accessoryCopy;
      v31 = channelsCopy;
      durationCopy2 = duration;
      v32 = completionCopy;
      dispatch_async(&_dispatch_main_q, block);
    }

    else if (completionCopy)
    {
      v26 = [NSError alloc];
      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"Accessory cannot be nil";
      v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v28 = [v26 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v27];
      (*(completionCopy + 2))(completionCopy, v28);
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }
}

- (void)stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceHelperXPCService.access"];

  if (v12 && ([&__kCFBooleanTrue isEqual:v12] & 1) != 0)
  {
    [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:accessoryCopy rampDownDuration:completionCopy completion:duration];
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (void)_stopPlayingForAccessory:(id)accessory rampDownDuration:(double)duration completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v10 = sub_1000070C0();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = accessoryCopy;
    v22 = 2048;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stop playing sound for accessory: %@ rampDownDuration: %f", buf, 0x16u);
  }

  if (accessoryCopy)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008590;
    v14[3] = &unk_100015310;
    durationCopy2 = duration;
    v14[4] = self;
    v15 = accessoryCopy;
    v16 = completionCopy;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else if (completionCopy)
  {
    v11 = [NSError alloc];
    v18 = NSLocalizedFailureReasonErrorKey;
    v19 = @"Accessory cannot be nil";
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 initWithDomain:@"com.apple.icloud.FindMyDevice" code:1 userInfo:v12];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

- (void)waitForRoutableAccessory:(id)accessory timeout:(double)timeout completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  v11 = sub_1000070C0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = accessoryCopy;
    v31 = 2048;
    timeoutCopy = timeout;
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
    timeoutCopy2 = timeout;
    v23 = accessoryCopy;
    selfCopy = self;
    v25 = completionCopy;
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

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }
}

- (void)setTimeoutForDuration:(double)duration
{
  v5 = sub_1000070C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSThread currentThread];
    v11 = 134218240;
    durationCopy = duration;
    v13 = 1024;
    isMainThread = [v6 isMainThread];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set timeout for duration: %f inMainThread: %d", &v11, 0x12u);
  }

  stopSoundTimer = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [stopSoundTimer invalidate];

  v8 = [NSTimer timerWithTimeInterval:self target:"_stopSoundTimerFired:" selector:0 userInfo:0 repeats:duration];
  [(FindMyDeviceHelperXPCServer *)self setStopSoundTimer:v8];

  v9 = +[NSRunLoop currentRunLoop];
  stopSoundTimer2 = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [v9 addTimer:stopSoundTimer2 forMode:NSRunLoopCommonModes];
}

- (void)_stopSoundTimerFired:(id)fired
{
  v4 = sub_1000070C0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stop sound timer fired", v6, 2u);
  }

  currentAccessory = [(FindMyDeviceHelperXPCServer *)self currentAccessory];
  [(FindMyDeviceHelperXPCServer *)self _stopPlayingForAccessory:currentAccessory rampDownDuration:0 completion:0.5];
}

- (void)invalidateStopSoundTimer
{
  v3 = sub_1000070C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating stop sound timer", v5, 2u);
  }

  stopSoundTimer = [(FindMyDeviceHelperXPCServer *)self stopSoundTimer];
  [stopSoundTimer invalidate];

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

- (void)disableBiometricIDWithCompletion:(id)completion
{
  completionCopy = completion;
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
    _disableBiometricID = [(FindMyDeviceHelperXPCServer *)self _disableBiometricID];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _disableBiometricID);
    }
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    _disableBiometricID = [NSString stringWithFormat:@"Entitlement not found for %@", v10];

    v11 = [NSError alloc];
    if (_disableBiometricID)
    {
      v12 = _disableBiometricID;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)updateNeedsLocateAckLostModeInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[FindMyDeviceHelperXPCServer updateNeedsLocateAckLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (infoCopy)
    {
      if ([infoCopy lostModeType] == 5)
      {
        getNeedsLocateAckLostModeFileURL = [(FindMyDeviceHelperXPCServer *)self getNeedsLocateAckLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:infoCopy toFile:getNeedsLocateAckLostModeFileURL completion:completionCopy];
        goto LABEL_25;
      }

      lostModeType = [infoCopy lostModeType];
      v22 = NSStringFromSelector(a2);
      getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", lostModeType, v22];

      v23 = [NSError alloc];
      if (getNeedsLocateAckLostModeFileURL)
      {
        v24 = getNeedsLocateAckLostModeFileURL;
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
      getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"LostMode info not passed to %@", v17];

      v18 = [NSError alloc];
      if (getNeedsLocateAckLostModeFileURL)
      {
        v19 = getNeedsLocateAckLostModeFileURL;
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
    getNeedsLocateAckLostModeFileURL = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (getNeedsLocateAckLostModeFileURL)
    {
      v13 = getNeedsLocateAckLostModeFileURL;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }

LABEL_25:
}

- (void)updateManagedLostModeInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[FindMyDeviceHelperXPCServer updateManagedLostModeInfo:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    if (infoCopy)
    {
      if ([infoCopy lostModeType] == 3)
      {
        getManagedLostModeFileURL = [(FindMyDeviceHelperXPCServer *)self getManagedLostModeFileURL];
        [(FindMyDeviceHelperXPCServer *)self _updateLostModeInfo:infoCopy toFile:getManagedLostModeFileURL completion:completionCopy];
        goto LABEL_25;
      }

      lostModeType = [infoCopy lostModeType];
      v22 = NSStringFromSelector(a2);
      getManagedLostModeFileURL = [NSString stringWithFormat:@"LostMode type (%ld) passed to %@ is not valid", lostModeType, v22];

      v23 = [NSError alloc];
      if (getManagedLostModeFileURL)
      {
        v24 = getManagedLostModeFileURL;
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
      getManagedLostModeFileURL = [NSString stringWithFormat:@"LostMode info not passed to %@", v17];

      v18 = [NSError alloc];
      if (getManagedLostModeFileURL)
      {
        v19 = getManagedLostModeFileURL;
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
    getManagedLostModeFileURL = [NSString stringWithFormat:@"Entitlement not found for %@", v11];

    v12 = [NSError alloc];
    if (getManagedLostModeFileURL)
    {
      v13 = getManagedLostModeFileURL;
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }

LABEL_25:
}

- (void)startPlayingSoundForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v9 = sub_1000070C0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[FindMyDeviceHelperXPCServer startPlayingSoundForMessage:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    messageAudioController = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    v11 = +[NSXPCConnection currentConnection];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100009D24;
    v19[3] = &unk_100014478;
    v20 = messageAudioController;
    v12 = messageAudioController;
    [v11 setInvalidationHandler:v19];

    [(__CFString *)v12 playSoundWithMessage:messageCopy completion:completionCopy];
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }
}

- (void)stopSoundMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_1000070C0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[FindMyDeviceHelperXPCServer stopSoundMessageWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  if ([(FindMyDeviceHelperXPCServer *)self isEntitled])
  {
    messageAudioController = [(FindMyDeviceHelperXPCServer *)self messageAudioController];
    [(__CFString *)messageAudioController stopSoundWithCompletion:completionCopy];
  }

  else
  {
    v8 = NSStringFromSelector(a2);
    messageAudioController = [NSString stringWithFormat:@"Entitlement not found for %@", v8];

    v9 = [NSError alloc];
    if (messageAudioController)
    {
      v10 = messageAudioController;
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)_updateLostModeInfo:(id)info toFile:(id)file completion:(id)completion
{
  infoCopy = info;
  fileCopy = file;
  completionCopy = completion;
  lostModeEnabled = [infoCopy lostModeEnabled];
  v12 = sub_1000070C0();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (lostModeEnabled)
  {
    selfCopy = self;
    if (v13)
    {
      sub_10000B2A8();
    }

    v53[0] = @"lostModeEnabled";
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy lostModeEnabled]);
    v54[0] = v14;
    v53[1] = @"lostModeType";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [infoCopy lostModeType]);
    v54[1] = v15;
    v53[2] = @"disableSlideToUnlock";
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy disableSlideToUnlock]);
    v54[2] = v16;
    v53[3] = @"lostModeMessage";
    message = [infoCopy message];
    v46 = fileCopy;
    v18 = message;
    if (message)
    {
      v19 = message;
    }

    else
    {
      v19 = &stru_100017B40;
    }

    v54[3] = v19;
    v53[4] = @"lostModeOwnerNumber";
    phoneNumber = [infoCopy phoneNumber];
    v21 = phoneNumber;
    if (phoneNumber)
    {
      v22 = phoneNumber;
    }

    else
    {
      v22 = &stru_100017B40;
    }

    v54[4] = v22;
    v53[5] = @"lostModeFacetimeCapable";
    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [infoCopy facetimeCapable]);
    v54[5] = v23;
    v53[6] = @"lostModeFootnoteTextPrefKey";
    footnoteText = [infoCopy footnoteText];
    v25 = footnoteText;
    if (footnoteText)
    {
      v26 = footnoteText;
    }

    else
    {
      v26 = &stru_100017B40;
    }

    v54[6] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:7];

    fileCopy = v46;
    uRLByDeletingLastPathComponent = [v46 URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v30 = +[NSFileManager defaultManager];
    v31 = [v30 fileExistsAtPath:path];

    if ((v31 & 1) == 0)
    {
      v32 = +[NSFileManager defaultManager];
      v50 = 0;
      [v32 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v50];
      v33 = v50;

      if (v33)
      {
        v34 = sub_1000070C0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10000B31C();
        }

        fileCopy = v46;
      }
    }

    v35 = [NSPropertyListSerialization dataWithPropertyList:v27 format:200 options:0 error:0];
    v49 = 0;
    [v35 writeToURL:fileCopy options:268435457 error:&v49];
    _disableBiometricID = v49;
    if (!_disableBiometricID)
    {
      v37 = [NSNumber numberWithBool:1];
      v48 = 0;
      [fileCopy setResourceValue:v37 forKey:NSURLIsExcludedFromBackupKey error:&v48];
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
        v52 = infoCopy;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Lost mode info written on disk - %@", buf, 0xCu);
      }

      _disableBiometricID = [(FindMyDeviceHelperXPCServer *)selfCopy _disableBiometricID];

      fileCopy = v46;
    }
  }

  else
  {
    if (v13)
    {
      sub_10000B1F0();
    }

    v27 = +[NSFileManager defaultManager];
    path2 = [fileCopy path];
    v42 = [v27 fileExistsAtPath:path2];

    if (v42)
    {
      v43 = sub_1000070C0();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B264(v43);
      }

      v47 = 0;
      [v27 removeItemAtURL:fileCopy error:&v47];
      _disableBiometricID = v47;
    }

    else
    {
      _disableBiometricID = 0;
    }
  }

  v44 = +[FMDFMIPSharedStateManager sharedInstance];
  [v44 recalculateLostMode];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, _disableBiometricID);
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
  disableBiometricID = [(EmbeddedOSSupport *)v3 disableBiometricID];

  v5 = sub_1000070C0();
  v6 = v5;
  if (disableBiometricID)
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

  return disableBiometricID;
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