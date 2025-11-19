@interface CSBiometricMatchMonitor
+ (id)sharedInstance;
- (BOOL)getLastBiometricMatchEvent:(BOOL *)a3 atTime:(unint64_t *)a4;
- (CSBiometricMatchMonitor)init;
- (CSBiometricMatchMonitorDelegate)delegate;
- (unint64_t)getBiometricMatchResultForTriggerTimeStamp:(unint64_t)a3;
- (void)device:(id)a3 matchEventOccurred:(id)a4;
- (void)startObserving;
@end

@implementation CSBiometricMatchMonitor

- (CSBiometricMatchMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)getBiometricMatchResultForTriggerTimeStamp:(unint64_t)a3
{
  if (!a3)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[CSBiometricMatchMonitor getBiometricMatchResultForTriggerTimeStamp:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s triggerTimeStamp is nil - Bailing out", buf, 0xCu);
    }

    return 0;
  }

  v14 = 0;
  v13 = 0;
  CSMachAbsoluteTimeToMachContinuousTime();
  if (![(CSBiometricMatchMonitor *)self getLastBiometricMatchEvent:&v14 atTime:&v13])
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSBiometricMatchMonitor getBiometricMatchResultForTriggerTimeStamp:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s No biometric information available", buf, 0xCu);
    }

    return 0;
  }

  CSMachAbsoluteTimeGetTimeInterval();
  v5 = v4;
  v6 = v14;
  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1 && v5 < 3.0)
  {
    if (v8)
    {
      *buf = 136315394;
      v16 = "[CSBiometricMatchMonitor getBiometricMatchResultForTriggerTimeStamp:]";
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match happened in last %f secs", buf, 0x16u);
    }

    return 1;
  }

  else
  {
    if (v8)
    {
      v12 = @"MIS-MATCH";
      v16 = "[CSBiometricMatchMonitor getBiometricMatchResultForTriggerTimeStamp:]";
      *buf = 136315650;
      if (v6)
      {
        v12 = @"MATCH";
      }

      v17 = 2112;
      v18 = *&v12;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Biometric match result: %@ happened in last %f secs", buf, 0x20u);
      LOBYTE(v6) = v14;
    }

    if (v6)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

- (void)device:(id)a3 matchEventOccurred:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v13 = 136315650;
    v14 = "[CSBiometricMatchMonitor device:matchEventOccurred:]";
    v15 = 1024;
    v16 = [v7 result];
    v17 = 2048;
    v18 = [v7 timeStamp];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEventOccurred: result = %u, timeStamp = %llu", &v13, 0x1Cu);
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 biometricMatchMonitorDidReceiveMatchAttempt:objc_msgSend(v7 atTime:{"result"), objc_msgSend(v7, "timeStamp")}];
    }
  }
}

- (BOOL)getLastBiometricMatchEvent:(BOOL *)a3 atTime:(unint64_t *)a4
{
  biometricDevice = self->_biometricDevice;
  if (!biometricDevice)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    v14 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR);
    if (!v14)
    {
      return v14;
    }

    *buf = 136315138;
    v19 = "[CSBiometricMatchMonitor getLastBiometricMatchEvent:atTime:]";
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s ERR: Biometric device is nil - Bailing out", buf, 0xCu);
LABEL_15:
    LOBYTE(v14) = 0;
    return v14;
  }

  v17 = 0;
  v7 = [(BKDevice *)biometricDevice lastMatchEventWithError:&v17];
  v8 = v17;
  v9 = CSLogContextFacilityCoreSpeech;
  v10 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      *buf = 136315394;
      v19 = "[CSBiometricMatchMonitor getLastBiometricMatchEvent:atTime:]";
      v20 = 2112;
      v21[0] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvents unavailable with error %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v11 = v9;
    v12 = [v7 result];
    v13 = [v7 timeStamp];
    *buf = 136315650;
    v19 = "[CSBiometricMatchMonitor getLastBiometricMatchEvent:atTime:]";
    v20 = 1024;
    LODWORD(v21[0]) = v12;
    WORD2(v21[0]) = 2048;
    *(v21 + 6) = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s BiometricMatchEvent: result = %u, timeStamp = %llu", buf, 0x1Cu);
  }

  if (a3)
  {
    *a3 = [v7 result];
  }

  if (a4)
  {
    *a4 = [v7 timeStamp];
  }

  LOBYTE(v14) = 1;
  return v14;
}

- (void)startObserving
{
  biometricDevice = self->_biometricDevice;
  if (biometricDevice)
  {
    [(BKDevice *)biometricDevice setDelegate:self];
  }
}

- (CSBiometricMatchMonitor)init
{
  v15.receiver = self;
  v15.super_class = CSBiometricMatchMonitor;
  v2 = [(CSBiometricMatchMonitor *)&v15 init];
  if (v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = qword_10029E158;
    v19 = qword_10029E158;
    if (!qword_10029E158)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10006D22C;
      v21 = &unk_100253580;
      v22 = &v16;
      sub_10006D22C(buf);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = qword_10029E168;
    v19 = qword_10029E168;
    if (!qword_10029E168)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10006D29C;
      v21 = &unk_100253580;
      v22 = &v16;
      sub_10006D29C(buf);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    v7 = [v5 availableDevices];
    v8 = [v7 firstObject];
    v14 = 0;
    v9 = [v3 deviceWithDescriptor:v8 error:&v14];
    v10 = v14;
    biometricDevice = v2->_biometricDevice;
    v2->_biometricDevice = v9;

    if (v10 || !v2->_biometricDevice)
    {
      v12 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[CSBiometricMatchMonitor init]";
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to create biometricdevice with error %@", buf, 0x16u);
      }
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if ((CSIsHorseman() & 1) != 0 || (+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E150 != -1)
    {
      dispatch_once(&qword_10029E150, &stru_10024FB70);
    }

    v2 = qword_10029E148;
  }

  return v2;
}

@end