@interface CSHostLauncherDarwin
+ (id)propertyDictForDarwin;
+ (id)sharedInstance;
- (BOOL)wakeHostForVoiceTrigger;
- (CSHostLauncherDarwin)init;
- (void)dealloc;
@end

@implementation CSHostLauncherDarwin

- (BOOL)wakeHostForVoiceTrigger
{
  v3 = +[CSUtils deviceIdentifier];
  v4 = [v3 dataUsingEncoding:4];

  if (v4)
  {
    v12 = 1;
    v5 = [NSMutableData dataWithBytes:&v12 length:1];
    [v5 appendBytes:objc_msgSend(v4 length:{"bytes"), 25}];
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 length];
      *buf = 136315650;
      v14 = "[CSHostLauncherDarwin wakeHostForVoiceTrigger]";
      v15 = 2050;
      v16 = v8;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Sending HID report (length = %{public}lu) to host with deviceId info (%{public}@)", buf, 0x20u);
    }

    device = self->_device;
    [v5 bytes];
    [v5 length];
    IOHIDUserDeviceHandleReport();
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[CSHostLauncherDarwin wakeHostForVoiceTrigger]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to fetch local deviceId, abort", buf, 0xCu);
    }
  }

  return v4 != 0;
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    IOHIDUserDeviceCancel(device);
  }

  v4.receiver = self;
  v4.super_class = CSHostLauncherDarwin;
  [(CSHostLauncherDarwin *)&v4 dealloc];
}

- (CSHostLauncherDarwin)init
{
  if (!+[CSUtils isDarwinOS])
  {
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = CSHostLauncherDarwin;
  self = [(CSHostLauncherDarwin *)&v12 init];
  if (self)
  {
    v3 = dispatch_queue_create("HID event callback queue", 0);
    hidCallbackQueue = self->_hidCallbackQueue;
    self->_hidCallbackQueue = v3;

    v5 = +[CSHostLauncherDarwin propertyDictForDarwin];
    v6 = IOHIDUserDeviceCreate();
    self->_device = v6;
    if (v6)
    {
      IOHIDUserDeviceSetDispatchQueue(v6, self->_hidCallbackQueue);
      device = self->_device;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10010882C;
      handler[3] = &unk_100253C20;
      v11 = self;
      IOHIDUserDeviceSetCancelHandler(device, handler);
      IOHIDUserDeviceActivate(self->_device);
      NSLog(@"Created HID device successfully");

      goto LABEL_5;
    }

    NSLog(@"Error : Failed in creating device");

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

LABEL_5:
  self = self;
  v8 = self;
LABEL_8:

  return v8;
}

+ (id)propertyDictForDarwin
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDataCreate(kCFAllocatorDefault, byte_1001AA288, 25);
  if (v3)
  {
    CFDictionarySetValue(Mutable, @"ReportDescriptor", v3);
  }

  valuePtr = 4000000;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v4)
  {
    CFDictionarySetValue(Mutable, @"RequestTimeout", v4);
  }

  CFDictionarySetValue(Mutable, @"HIDRelaySupport", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"HIDRelayUSBInterface", @"SiriHIDDevice");
  v5 = [(__CFDictionary *)Mutable copy];

  return v5;
}

+ (id)sharedInstance
{
  if (qword_10029E398 != -1)
  {
    dispatch_once(&qword_10029E398, &stru_100251A88);
  }

  v3 = qword_10029E390;

  return v3;
}

@end