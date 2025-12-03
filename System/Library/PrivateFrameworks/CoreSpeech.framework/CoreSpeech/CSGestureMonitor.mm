@interface CSGestureMonitor
+ (id)sharedInstance;
- (BOOL)isTriggerHandheld;
@end

@implementation CSGestureMonitor

- (BOOL)isTriggerHandheld
{
  v2 = +[CSGestureMonitor sharedInstance];
  v3 = mach_absolute_time();
  wakeGestureTimestamp = [v2 wakeGestureTimestamp];
  if (wakeGestureTimestamp <= [v2 dismissalTimestamp])
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[CSGestureMonitor isTriggerHandheld]";
      v11 = "%s Tagging as FarField as user dismissed";
      v12 = v10;
      v13 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v15, v13);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  [CSFTimeUtils hostTimeToSeconds:v3 - wakeGestureTimestamp];
  v6 = v5;
  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO);
  if (v6 >= 8.0)
  {
    if (v8)
    {
      v15 = 136315394;
      v16 = "[CSGestureMonitor isTriggerHandheld]";
      v17 = 2048;
      v18 = v6;
      v11 = "%s Tagging as farfield as last user interaction %f secs back";
      v12 = v7;
      v13 = 22;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v8)
  {
    v15 = 136315394;
    v16 = "[CSGestureMonitor isTriggerHandheld]";
    v17 = 2048;
    v18 = v6;
    v9 = 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Tagging as handheld as user interacted in last %f secs", &v15, 0x16u);
  }

  else
  {
    v9 = 1;
  }

LABEL_11:

  return v9;
}

+ (id)sharedInstance
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    if (qword_10029E188 != -1)
    {
      dispatch_once(&qword_10029E188, &stru_10024FC58);
    }

    v2 = qword_10029E180;
  }

  return v2;
}

@end