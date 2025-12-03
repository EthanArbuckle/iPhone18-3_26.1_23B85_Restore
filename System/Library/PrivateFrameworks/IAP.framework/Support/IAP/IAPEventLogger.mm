@interface IAPEventLogger
+ (void)LogMsg:(int)msg WithStr:(id)str;
@end

@implementation IAPEventLogger

+ (void)LogMsg:(int)msg WithStr:(id)str
{
  if (qword_100031E38 != -1)
  {
    sub_10001B808();
  }

  if (qword_100031E28)
  {
    if (msg > 2)
    {
      v6 = "IapLoggerEventTypeUnknown";
    }

    else
    {
      v6 = (&off_10002D9C0)[msg];
    }

    asl_set(qword_100031E30, "IapLoggerEventType", v6);
    if (asl_log(qword_100031E28, qword_100031E30, 4, "%s", [str cStringUsingEncoding:1]))
    {
      syslog(3, "Error writing to the Event Log file. status=%d");
    }
  }

  else
  {
    syslog(3, "Could not write to the Event Log file");
  }
}

@end