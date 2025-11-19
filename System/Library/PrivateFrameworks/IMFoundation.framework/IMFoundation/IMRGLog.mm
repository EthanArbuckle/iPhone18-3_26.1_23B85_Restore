@interface IMRGLog
+ (OS_os_log)ACKTracker;
+ (OS_os_log)FTMessageDelivery_oversized;
+ (OS_os_log)GDR;
+ (OS_os_log)GDR_oversized;
+ (OS_os_log)IDSService;
+ (OS_os_log)IDSService_oversized;
+ (OS_os_log)IMMacNotificationCenterManager;
+ (OS_os_log)NRPairing;
+ (OS_os_log)NSUUID;
+ (OS_os_log)OTRStore;
+ (OS_os_log)accountCleanup;
+ (OS_os_log)accountEnabled;
+ (OS_os_log)accountSync;
+ (OS_os_log)accountUpdate;
+ (OS_os_log)accountsDebugging;
+ (OS_os_log)activeID;
+ (OS_os_log)appleCare;
+ (OS_os_log)classKeys;
+ (OS_os_log)dataProtectionClass;
+ (OS_os_log)deviceHeartbeat;
+ (OS_os_log)deviceIDMap;
+ (OS_os_log)deviceState;
+ (OS_os_log)engram;
+ (OS_os_log)eventTracing;
+ (OS_os_log)healthDebug;
+ (OS_os_log)healthDebugging;
+ (OS_os_log)iCloud;
+ (OS_os_log)iMessageSpam;
+ (OS_os_log)internalCleanup;
+ (OS_os_log)isActive;
+ (OS_os_log)keyRoll;
+ (OS_os_log)keychain;
+ (OS_os_log)keychainManager;
+ (OS_os_log)liveMigration;
+ (OS_os_log)messageDelivery_oversized;
+ (OS_os_log)migration;
+ (OS_os_log)nonce;
+ (OS_os_log)pairedDeviceRepo;
+ (OS_os_log)pairedIdentities;
+ (OS_os_log)pairing;
+ (OS_os_log)pairingIdentities;
+ (OS_os_log)pairingProtocolDebug;
+ (OS_os_log)phoneRepair;
+ (OS_os_log)pushToken;
+ (OS_os_log)queryRetry;
+ (OS_os_log)regeneration;
+ (OS_os_log)registration;
+ (OS_os_log)registrationAuthKit;
+ (OS_os_log)registrationListener;
+ (OS_os_log)registration_oversized;
+ (OS_os_log)reloadAccounts;
+ (OS_os_log)serverBag;
+ (OS_os_log)signInController;
+ (OS_os_log)sms;
+ (OS_os_log)spamReporting;
+ (OS_os_log)sub_services;
+ (OS_os_log)sysdiagnose_keyTransparency;
+ (OS_os_log)sysdiagnose_oversized;
+ (OS_os_log)timing;
+ (OS_os_log)uniqueID;
+ (OS_os_log)vm;
+ (OS_os_log)voicemailSync;
+ (OS_os_log)warning;
+ (OS_os_log)watchPairing;
@end

@implementation IMRGLog

+ (OS_os_log)registration
{
  if (qword_1ED517568 != -1)
  {
    sub_19598B070();
  }

  v3 = qword_1ED517560;

  return v3;
}

+ (OS_os_log)timing
{
  if (qword_1ED517508 != -1)
  {
    sub_19598B400();
  }

  v3 = qword_1ED517510;

  return v3;
}

+ (OS_os_log)sms
{
  if (qword_1ED5172F0 != -1)
  {
    sub_1959D5BE8();
  }

  v3 = qword_1ED5172B0;

  return v3;
}

+ (OS_os_log)signInController
{
  if (qword_1ED5170A8 != -1)
  {
    sub_1959903D8();
  }

  v3 = qword_1ED5170B0;

  return v3;
}

+ (OS_os_log)accountEnabled
{
  if (qword_1ED517490 != -1)
  {
    sub_195991F84();
  }

  v3 = qword_1ED517488;

  return v3;
}

+ (OS_os_log)watchPairing
{
  if (qword_1EAED8BC8 != -1)
  {
    sub_195993D14();
  }

  v3 = qword_1EAED8BD0;

  return v3;
}

+ (OS_os_log)deviceState
{
  if (qword_1EAED87F0 != -1)
  {
    sub_1959D59A4();
  }

  v3 = qword_1EAED87F8;

  return v3;
}

+ (OS_os_log)GDR
{
  if (qword_1EAED89F0 != -1)
  {
    sub_1959D588C();
  }

  v3 = qword_1EAED89F8;

  return v3;
}

+ (OS_os_log)keychainManager
{
  if (qword_1EAED8DC8 != -1)
  {
    sub_1959D5A80();
  }

  v3 = qword_1EAED8DA0;

  return v3;
}

+ (OS_os_log)deviceHeartbeat
{
  if (qword_1EAED8800 != -1)
  {
    sub_1959D597C();
  }

  v3 = qword_1EAED8808;

  return v3;
}

+ (OS_os_log)messageDelivery_oversized
{
  if (qword_1EAED8A10 != -1)
  {
    sub_1959D5AA8();
  }

  v3 = qword_1EAED8A18;

  return v3;
}

+ (OS_os_log)healthDebugging
{
  if (qword_1EAED87C0 != -1)
  {
    sub_1959D59CC();
  }

  v3 = qword_1EAED87C8;

  return v3;
}

+ (OS_os_log)keychain
{
  if (qword_1EAED8770 != -1)
  {
    sub_1959D5A6C();
  }

  v3 = qword_1EAED8778;

  return v3;
}

+ (OS_os_log)activeID
{
  if (qword_1ED517328 != -1)
  {
    sub_195998338();
  }

  v3 = qword_1ED517330;

  return v3;
}

+ (OS_os_log)IDSService_oversized
{
  if (qword_1ED517340 != -1)
  {
    sub_1959987A0();
  }

  v3 = qword_1ED517338;

  return v3;
}

+ (OS_os_log)NSUUID
{
  if (qword_1ED5172C0 != -1)
  {
    sub_195998538();
  }

  v3 = qword_1ED517290;

  return v3;
}

+ (OS_os_log)registration_oversized
{
  if (qword_1EAED86F0 != -1)
  {
    sub_1959D5828();
  }

  v3 = qword_1EAED86F8;

  return v3;
}

+ (OS_os_log)warning
{
  if (qword_1ED517150 != -1)
  {
    sub_1959D583C();
  }

  v3 = qword_1ED517158;

  return v3;
}

+ (OS_os_log)ACKTracker
{
  if (qword_1EAED9100 != -1)
  {
    sub_1959D5850();
  }

  v3 = qword_1EAED90F8;

  return v3;
}

+ (OS_os_log)engram
{
  if (qword_1EAED9110 != -1)
  {
    sub_1959D5864();
  }

  v3 = qword_1EAED9108;

  return v3;
}

+ (OS_os_log)FTMessageDelivery_oversized
{
  if (qword_1EAED8A00 != -1)
  {
    sub_1959D5878();
  }

  v3 = qword_1EAED8A08;

  return v3;
}

+ (OS_os_log)GDR_oversized
{
  if (qword_1EAED89E0 != -1)
  {
    sub_1959D58A0();
  }

  v3 = qword_1EAED89E8;

  return v3;
}

+ (OS_os_log)IDSService
{
  if (qword_1EAED8C28 != -1)
  {
    sub_1959D58B4();
  }

  v3 = qword_1EAED8C30;

  return v3;
}

+ (OS_os_log)NRPairing
{
  if (qword_1EAED8A78 != -1)
  {
    sub_1959D58C8();
  }

  v3 = qword_1EAED8A80;

  return v3;
}

+ (OS_os_log)OTRStore
{
  if (qword_1EAED9120 != -1)
  {
    sub_1959D58DC();
  }

  v3 = qword_1EAED9118;

  return v3;
}

+ (OS_os_log)accountCleanup
{
  if (qword_1EAED88A0 != -1)
  {
    sub_1959D58F0();
  }

  v3 = qword_1EAED88A8;

  return v3;
}

+ (OS_os_log)accountSync
{
  if (qword_1EAED8890 != -1)
  {
    sub_1959D5904();
  }

  v3 = qword_1EAED8898;

  return v3;
}

+ (OS_os_log)accountUpdate
{
  if (qword_1EAED8880 != -1)
  {
    sub_1959D5918();
  }

  v3 = qword_1EAED8888;

  return v3;
}

+ (OS_os_log)accountsDebugging
{
  if (qword_1EAED8870 != -1)
  {
    sub_1959D592C();
  }

  v3 = qword_1EAED8878;

  return v3;
}

+ (OS_os_log)appleCare
{
  if (qword_1EAED9130 != -1)
  {
    sub_1959D5940();
  }

  v3 = qword_1EAED9128;

  return v3;
}

+ (OS_os_log)classKeys
{
  if (qword_1EAED9140 != -1)
  {
    sub_1959D5954();
  }

  v3 = qword_1EAED9138;

  return v3;
}

+ (OS_os_log)dataProtectionClass
{
  if (qword_1EAED8820 != -1)
  {
    sub_1959D5968();
  }

  v3 = qword_1EAED8828;

  return v3;
}

+ (OS_os_log)deviceIDMap
{
  if (qword_1EAED9150 != -1)
  {
    sub_1959D5990();
  }

  v3 = qword_1EAED9148;

  return v3;
}

+ (OS_os_log)healthDebug
{
  if (qword_1EAED87D0 != -1)
  {
    sub_1959D59B8();
  }

  v3 = qword_1EAED87D8;

  return v3;
}

+ (OS_os_log)iCloud
{
  if (qword_1EAED8A30 != -1)
  {
    sub_1959D59E0();
  }

  v3 = qword_1EAED8A38;

  return v3;
}

+ (OS_os_log)IMMacNotificationCenterManager
{
  if (qword_1EAED9160 != -1)
  {
    sub_1959D59F4();
  }

  v3 = qword_1EAED9158;

  return v3;
}

+ (OS_os_log)iMessageSpam
{
  if (qword_1EAED9170 != -1)
  {
    sub_1959D5A08();
  }

  v3 = qword_1EAED9168;

  return v3;
}

+ (OS_os_log)spamReporting
{
  if (qword_1EAED9180 != -1)
  {
    sub_1959D5A1C();
  }

  v3 = qword_1EAED9178;

  return v3;
}

+ (OS_os_log)internalCleanup
{
  if (qword_1EAED87B0 != -1)
  {
    sub_1959D5A30();
  }

  v3 = qword_1EAED87B8;

  return v3;
}

+ (OS_os_log)isActive
{
  if (qword_1EAED9190 != -1)
  {
    sub_1959D5A44();
  }

  v3 = qword_1EAED9188;

  return v3;
}

+ (OS_os_log)keyRoll
{
  if (qword_1EAED91A0 != -1)
  {
    sub_1959D5A58();
  }

  v3 = qword_1EAED9198;

  return v3;
}

+ (OS_os_log)liveMigration
{
  if (qword_1EAED8760 != -1)
  {
    sub_1959D5A94();
  }

  v3 = qword_1EAED8768;

  return v3;
}

+ (OS_os_log)migration
{
  if (qword_1EAED8750 != -1)
  {
    sub_1959D5ABC();
  }

  v3 = qword_1EAED8758;

  return v3;
}

+ (OS_os_log)nonce
{
  if (qword_1EAED8AD8 != -1)
  {
    sub_1959D5AD0();
  }

  v3 = qword_1EAED8AE0;

  return v3;
}

+ (OS_os_log)pairedDeviceRepo
{
  if (qword_1EAED91B0 != -1)
  {
    sub_1959D5AE4();
  }

  v3 = qword_1EAED91A8;

  return v3;
}

+ (OS_os_log)pairedIdentities
{
  if (qword_1EAED91C0 != -1)
  {
    sub_1959D5AF8();
  }

  v3 = qword_1EAED91B8;

  return v3;
}

+ (OS_os_log)pairing
{
  if (qword_1EAED91D0 != -1)
  {
    sub_1959D5B0C();
  }

  v3 = qword_1EAED91C8;

  return v3;
}

+ (OS_os_log)pairingIdentities
{
  if (qword_1EAED91E0 != -1)
  {
    sub_1959D5B20();
  }

  v3 = qword_1EAED91D8;

  return v3;
}

+ (OS_os_log)pairingProtocolDebug
{
  if (qword_1EAED8740 != -1)
  {
    sub_1959D5B34();
  }

  v3 = qword_1EAED8748;

  return v3;
}

+ (OS_os_log)phoneRepair
{
  if (qword_1EAED8730 != -1)
  {
    sub_1959D5B48();
  }

  v3 = qword_1EAED8738;

  return v3;
}

+ (OS_os_log)pushToken
{
  if (qword_1EAED8720 != -1)
  {
    sub_1959D5B5C();
  }

  v3 = qword_1EAED8728;

  return v3;
}

+ (OS_os_log)queryRetry
{
  if (qword_1EAED91F0 != -1)
  {
    sub_1959D5B70();
  }

  v3 = qword_1EAED91E8;

  return v3;
}

+ (OS_os_log)regeneration
{
  if (qword_1EAED9200 != -1)
  {
    sub_1959D5B84();
  }

  v3 = qword_1EAED91F8;

  return v3;
}

+ (OS_os_log)registrationAuthKit
{
  if (qword_1EAED8710 != -1)
  {
    sub_1959D5B98();
  }

  v3 = qword_1EAED8718;

  return v3;
}

+ (OS_os_log)registrationListener
{
  if (qword_1EAED8700 != -1)
  {
    sub_1959D5BAC();
  }

  v3 = qword_1EAED8708;

  return v3;
}

+ (OS_os_log)reloadAccounts
{
  if (qword_1EAED9210 != -1)
  {
    sub_1959D5BC0();
  }

  v3 = qword_1EAED9208;

  return v3;
}

+ (OS_os_log)serverBag
{
  if (qword_1ED517360 != -1)
  {
    sub_1959D5BD4();
  }

  v3 = qword_1ED517368;

  return v3;
}

+ (OS_os_log)sub_services
{
  if (qword_1EAED86B0 != -1)
  {
    sub_1959D5BFC();
  }

  v3 = qword_1EAED86B8;

  return v3;
}

+ (OS_os_log)sysdiagnose_oversized
{
  if (qword_1EAED8690 != -1)
  {
    sub_1959D5C10();
  }

  v3 = qword_1EAED8698;

  return v3;
}

+ (OS_os_log)sysdiagnose_keyTransparency
{
  if (qword_1EAED86A0 != -1)
  {
    sub_1959D5C24();
  }

  v3 = qword_1EAED86A8;

  return v3;
}

+ (OS_os_log)uniqueID
{
  if (qword_1EAED9220 != -1)
  {
    sub_1959D5C38();
  }

  v3 = qword_1EAED9218;

  return v3;
}

+ (OS_os_log)voicemailSync
{
  if (qword_1EAED9230 != -1)
  {
    sub_1959D5C4C();
  }

  v3 = qword_1EAED9228;

  return v3;
}

+ (OS_os_log)vm
{
  if (qword_1EAED9240 != -1)
  {
    sub_1959D5C60();
  }

  v3 = qword_1EAED9238;

  return v3;
}

+ (OS_os_log)eventTracing
{
  if (qword_1EAED87E0 != -1)
  {
    sub_1959D5C74();
  }

  v3 = qword_1EAED87E8;

  return v3;
}

@end