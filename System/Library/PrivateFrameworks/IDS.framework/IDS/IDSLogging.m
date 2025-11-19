@interface IDSLogging
+ (OS_os_log)Accounts;
+ (OS_os_log)CFS;
+ (OS_os_log)Connection;
+ (OS_os_log)DaemonController;
+ (OS_os_log)DaemonListener;
+ (OS_os_log)DaemonProxy;
+ (OS_os_log)GUIDTRACE;
+ (OS_os_log)IDQuery;
+ (OS_os_log)IDSAccountController;
+ (OS_os_log)IDSConnection;
+ (OS_os_log)IDSConnection_oversize;
+ (OS_os_log)IDSDataChannels;
+ (OS_os_log)IDSDataChannels_oversize;
+ (OS_os_log)IDSDevice;
+ (OS_os_log)IDSDeviceConnection;
+ (OS_os_log)IDSDirectMessagingConnection;
+ (OS_os_log)IDSRealTimeEncryptionProxy;
+ (OS_os_log)IDSService;
+ (OS_os_log)IDSSession;
+ (OS_os_log)IDSiCloudSignInHack;
+ (OS_os_log)ServiceAvailability;
+ (OS_os_log)_IDSGroupSession;
+ (OS_os_log)_IDSGroupSession_oversize;
+ (OS_os_log)_IDSService;
+ (OS_os_log)_IDSSession;
+ (OS_os_log)continuity;
+ (OS_os_log)general;
+ (OS_os_log)transactionLog;
@end

@implementation IDSLogging

+ (OS_os_log)_IDSService
{
  if (qword_1ED5DDFF8 != -1)
  {
    sub_195A01A44();
  }

  v3 = qword_1ED5DDFD0;

  return v3;
}

+ (OS_os_log)ServiceAvailability
{
  if (qword_1EAEDC068 != -1)
  {
    sub_195A009E4();
  }

  v3 = qword_1EAEDC060;

  return v3;
}

+ (OS_os_log)DaemonController
{
  if (qword_1ED5DE048 != -1)
  {
    sub_195A03990();
  }

  v3 = qword_1ED5DE030;

  return v3;
}

+ (OS_os_log)IDQuery
{
  if (qword_1ED5DDF58 != -1)
  {
    sub_195A02508();
  }

  v3 = qword_1ED5DDF60;

  return v3;
}

+ (OS_os_log)IDSAccountController
{
  if (qword_1ED5DE010 != -1)
  {
    sub_195A0445C();
  }

  v3 = qword_1ED5DE020;

  return v3;
}

+ (OS_os_log)Connection
{
  if (qword_1ED5DE050 != -1)
  {
    sub_195A05174();
  }

  v3 = qword_1ED5DE038;

  return v3;
}

+ (OS_os_log)Accounts
{
  if (qword_1ED5DE008 != -1)
  {
    sub_195A05D9C();
  }

  v3 = qword_1ED5DE000;

  return v3;
}

+ (OS_os_log)IDSConnection
{
  if (qword_1ED5DDFA0 != -1)
  {
    sub_195A0CF5C();
  }

  v3 = qword_1ED5DDF98;

  return v3;
}

+ (OS_os_log)GUIDTRACE
{
  if (qword_1ED5DDEE0 != -1)
  {
    sub_195A0D034();
  }

  v3 = qword_1ED5DDEE8;

  return v3;
}

+ (OS_os_log)IDSService
{
  if (qword_1EAEDC080 != -1)
  {
    sub_195A0D7B8();
  }

  v3 = qword_1EAEDC078;

  return v3;
}

+ (OS_os_log)DaemonListener
{
  if (qword_1ED5DDFB0 != -1)
  {
    sub_195A0E094();
  }

  v3 = qword_1ED5DDFA8;

  return v3;
}

+ (OS_os_log)general
{
  if (qword_1EAEDC1C8 != -1)
  {
    sub_195B3D584();
  }

  v3 = qword_1EAEDC1C0;

  return v3;
}

+ (OS_os_log)transactionLog
{
  if (qword_1EAEDC1D8 != -1)
  {
    sub_195B3D598();
  }

  v3 = qword_1EAEDC1D0;

  return v3;
}

+ (OS_os_log)IDSConnection_oversize
{
  if (qword_1ED5DDD60 != -1)
  {
    sub_195B3D5AC();
  }

  v3 = qword_1ED5DDD68;

  return v3;
}

+ (OS_os_log)IDSDirectMessagingConnection
{
  if (qword_1ED5DDF38 != -1)
  {
    sub_195B3D5C0();
  }

  v3 = qword_1ED5DDF40;

  return v3;
}

+ (OS_os_log)continuity
{
  if (qword_1EAEDC1E8 != -1)
  {
    sub_195B3D5D4();
  }

  v3 = qword_1EAEDC1E0;

  return v3;
}

+ (OS_os_log)IDSSession
{
  if (qword_1EAEDBF78 != -1)
  {
    sub_195B3D5E8();
  }

  v3 = qword_1EAEDC1F0;

  return v3;
}

+ (OS_os_log)CFS
{
  if (qword_1EAEDC200 != -1)
  {
    sub_195B3D5FC();
  }

  v3 = qword_1EAEDC1F8;

  return v3;
}

+ (OS_os_log)_IDSGroupSession
{
  if (qword_1EAEDBF18 != -1)
  {
    sub_195B3D610();
  }

  v3 = qword_1EAEDBF20;

  return v3;
}

+ (OS_os_log)_IDSGroupSession_oversize
{
  if (qword_1EAEDBF08 != -1)
  {
    sub_195B3D624();
  }

  v3 = qword_1EAEDBF10;

  return v3;
}

+ (OS_os_log)DaemonProxy
{
  if (qword_1EAEDC210 != -1)
  {
    sub_195B3D638();
  }

  v3 = qword_1EAEDC208;

  return v3;
}

+ (OS_os_log)IDSDevice
{
  if (qword_1EAEDC220 != -1)
  {
    sub_195B3D64C();
  }

  v3 = qword_1EAEDC218;

  return v3;
}

+ (OS_os_log)IDSDeviceConnection
{
  if (qword_1EAEDC230 != -1)
  {
    sub_195B3D660();
  }

  v3 = qword_1EAEDC228;

  return v3;
}

+ (OS_os_log)IDSDataChannels
{
  if (qword_1EAEDBFB0 != -1)
  {
    sub_195B3D674();
  }

  v3 = qword_1EAEDBFC0;

  return v3;
}

+ (OS_os_log)IDSDataChannels_oversize
{
  if (qword_1EAEDBF90 != -1)
  {
    sub_195B3D688();
  }

  v3 = qword_1EAEDBF98;

  return v3;
}

+ (OS_os_log)IDSRealTimeEncryptionProxy
{
  if (qword_1EAEDC240 != -1)
  {
    sub_195B3D69C();
  }

  v3 = qword_1EAEDC238;

  return v3;
}

+ (OS_os_log)IDSiCloudSignInHack
{
  if (qword_1EAEDC250 != -1)
  {
    sub_195B3D6B0();
  }

  v3 = qword_1EAEDC248;

  return v3;
}

+ (OS_os_log)_IDSSession
{
  if (qword_1EAEDC260 != -1)
  {
    sub_195B3D6C4();
  }

  v3 = qword_1EAEDC258;

  return v3;
}

@end