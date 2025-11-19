@interface IAPEventLogger
+ (void)LogMsg:(int)a3 WithStr:(id)a4;
@end

@implementation IAPEventLogger

+ (void)LogMsg:(int)a3 WithStr:(id)a4
{
  if (qword_100031E38 != -1)
  {
    sub_10001B808();
  }

  if (qword_100031E28)
  {
    if (a3 > 2)
    {
      v6 = "IapLoggerEventTypeUnknown";
    }

    else
    {
      v6 = (&off_10002D9C0)[a3];
    }

    asl_set(qword_100031E30, "IapLoggerEventType", v6);
    if (asl_log(qword_100031E28, qword_100031E30, 4, "%s", [a4 cStringUsingEncoding:1]))
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