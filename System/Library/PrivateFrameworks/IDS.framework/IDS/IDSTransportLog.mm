@interface IDSTransportLog
+ (OS_os_log)IDSConnection;
+ (OS_os_log)IDSDataChannels;
+ (OS_os_log)IDSDeviceConnection;
+ (OS_os_log)IDSLocalSetup;
+ (OS_os_log)IDSReportSpam;
+ (OS_os_log)IDSService;
+ (OS_os_log)NRPairing;
+ (OS_os_log)QRAllocator;
@end

@implementation IDSTransportLog

+ (OS_os_log)IDSConnection
{
  if (qword_1ED5DDD50 != -1)
  {
    sub_195B3D50C();
  }

  v3 = qword_1ED5DDD58;

  return v3;
}

+ (OS_os_log)IDSService
{
  if (qword_1ED5DDED0 != -1)
  {
    sub_195B3D4E4();
  }

  v3 = qword_1ED5DDED8;

  return v3;
}

+ (OS_os_log)QRAllocator
{
  if (qword_1EAEDC198 != -1)
  {
    sub_195B3D4F8();
  }

  v3 = qword_1EAEDC190;

  return v3;
}

+ (OS_os_log)IDSDeviceConnection
{
  if (qword_1EAEDC1A8 != -1)
  {
    sub_195B3D520();
  }

  v3 = qword_1EAEDC1A0;

  return v3;
}

+ (OS_os_log)IDSDataChannels
{
  if (qword_1EAEDBFB8 != -1)
  {
    sub_195B3D534();
  }

  v3 = qword_1EAEDBFC8;

  return v3;
}

+ (OS_os_log)IDSLocalSetup
{
  if (qword_1EAEDC1B8 != -1)
  {
    sub_195B3D548();
  }

  v3 = qword_1EAEDC1B0;

  return v3;
}

+ (OS_os_log)IDSReportSpam
{
  if (qword_1EAEDBF80 != -1)
  {
    sub_195B3D55C();
  }

  v3 = qword_1EAEDBF88;

  return v3;
}

+ (OS_os_log)NRPairing
{
  if (qword_1EAEDBF68 != -1)
  {
    sub_195B3D570();
  }

  v3 = qword_1EAEDBF70;

  return v3;
}

@end