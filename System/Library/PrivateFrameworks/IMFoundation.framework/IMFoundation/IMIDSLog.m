@interface IMIDSLog
+ (OS_os_log)URLLoading;
+ (OS_os_log)XPC;
+ (OS_os_log)activityMonitor;
+ (OS_os_log)daemon;
+ (OS_os_log)daemon_oversized;
+ (OS_os_log)dataDetector;
+ (OS_os_log)encryption;
+ (OS_os_log)security;
+ (OS_os_log)timer;
@end

@implementation IMIDSLog

+ (OS_os_log)daemon_oversized
{
  if (qword_1EAED8830 != -1)
  {
    sub_1959D6114();
  }

  v3 = qword_1EAED8838;

  return v3;
}

+ (OS_os_log)timer
{
  if (qword_1EAED8D90 != -1)
  {
    sub_1959D6178();
  }

  v3 = qword_1EAED8D98;

  return v3;
}

+ (OS_os_log)encryption
{
  if (qword_1EAED8DE8 != -1)
  {
    sub_1959D60EC();
  }

  v3 = qword_1EAED8DF0;

  return v3;
}

+ (OS_os_log)security
{
  if (qword_1EAED86C0 != -1)
  {
    sub_1959D6150();
  }

  v3 = qword_1EAED86C8;

  return v3;
}

+ (OS_os_log)URLLoading
{
  if (qword_1ED5171C8 != -1)
  {
    sub_1959D6164();
  }

  v3 = qword_1ED5171C0;

  return v3;
}

+ (OS_os_log)daemon
{
  if (qword_1EAED8840 != -1)
  {
    sub_1959D6100();
  }

  v3 = qword_1EAED8848;

  return v3;
}

+ (OS_os_log)dataDetector
{
  if (qword_1EAED8CE8 != -1)
  {
    sub_1959D6128();
  }

  v3 = qword_1EAED8CF0;

  return v3;
}

+ (OS_os_log)activityMonitor
{
  if (qword_1EAED8860 != -1)
  {
    sub_1959D613C();
  }

  v3 = qword_1EAED8868;

  return v3;
}

+ (OS_os_log)XPC
{
  if (qword_1EAED8A68 != -1)
  {
    sub_1959D618C();
  }

  v3 = qword_1EAED8A70;

  return v3;
}

@end