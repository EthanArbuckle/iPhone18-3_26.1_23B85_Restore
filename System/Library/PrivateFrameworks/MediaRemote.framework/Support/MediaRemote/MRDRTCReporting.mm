@interface MRDRTCReporting
+ (id)sharedInstance;
- (MRDRTCReporting)init;
- (OS_dispatch_queue)rtcQueue;
- (void)reportRoutePickerInteractionWithDuration:(double)duration success:(BOOL)success;
- (void)sendMessage:(id)message;
- (void)startConfiguration;
@end

@implementation MRDRTCReporting

+ (id)sharedInstance
{
  if (qword_1005296E0 != -1)
  {
    sub_1003B0090();
  }

  v3 = qword_1005296D8;

  return v3;
}

- (MRDRTCReporting)init
{
  v6.receiver = self;
  v6.super_class = MRDRTCReporting;
  v2 = [(MRDRTCReporting *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pendingMessages = v2->_pendingMessages;
    v2->_pendingMessages = v3;

    *&v2->_configurationStarted = 0;
  }

  return v2;
}

- (OS_dispatch_queue)rtcQueue
{
  rtcQueue = self->_rtcQueue;
  if (!rtcQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.MediaRemote.RTCReporting", v4);
    v6 = self->_rtcQueue;
    self->_rtcQueue = v5;

    rtcQueue = self->_rtcQueue;
  }

  return rtcQueue;
}

- (void)startConfiguration
{
  rtcQueue = [(MRDRTCReporting *)self rtcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A09D0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(rtcQueue, block);
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  rtcQueue = [(MRDRTCReporting *)self rtcQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A0F94;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(rtcQueue, v7);
}

- (void)reportRoutePickerInteractionWithDuration:(double)duration success:(BOOL)success
{
  successCopy = success;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v8 = [NSNumber numberWithLongLong:llround(duration * 1000.0)];
  [v7 setObject:v8 forKeyedSubscript:@"MRTotalRequestTime"];

  v9 = [NSNumber numberWithInt:!successCopy];
  [v7 setObject:v9 forKeyedSubscript:@"MXErrorStatus"];

  v11[0] = kRTCReportingMessageParametersCategory;
  v11[1] = kRTCReportingMessageParametersType;
  v12[0] = &off_1004E0BA8;
  v12[1] = &off_1004E0BA8;
  v11[2] = kRTCReportingMessageParametersPayload;
  v12[2] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [(MRDRTCReporting *)self sendMessage:v10];
}

@end