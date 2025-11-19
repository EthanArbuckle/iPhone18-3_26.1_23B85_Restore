@interface XPCInterface
+ (id)CTCSCreateXPCTransportInterface;
+ (id)CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords;
+ (id)CTCSGetExpectedClassesForOptionsOverXPCInterface;
+ (void)CTCSSetExpectedClassesForXPCBrokerInterface:(id)a3;
@end

@implementation XPCInterface

+ (id)CTCSGetExpectedClassesForOptionsOverXPCInterface
{
  if (qword_100080790 != -1)
  {
    sub_100055794();
  }

  v3 = qword_100080798;

  return v3;
}

+ (id)CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords
{
  if (qword_1000807A0 != -1)
  {
    sub_1000557A8();
  }

  v3 = qword_1000807A8;

  return v3;
}

+ (void)CTCSSetExpectedClassesForXPCBrokerInterface:(id)a3
{
  v3 = a3;
  v4 = +[XPCInterface CTCSExpectedXPCInterfaceClassesForAllActiveDataSetRecords];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveAllActiveDataSetRecordsWithActiveFlag:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveListOfPreferredNetworkEntriesInternallyWithCompletion:ipV4NwSignature:ipv6NwSignature:wifiSSID:showCurrentEntry:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerStoreThreadNetworkCredentialActiveDataSet:credentialsDataSet:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerStoreThreadNetworkCredentialActiveDataSetInternally:network:credentialsDataSet:waitForSync:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerStoreCachedAODasPreferredNetwork:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsValidateAODInternally:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerDeletePreferredNetworkWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerCleanKeychainThreadNetworksWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrievePreferredNetworkWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrievePreferredNetworkInternallyWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveActiveDataSetRecordWithXPANId:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsIsPreferredNetworkForActiveOperationalDataset:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveIsPreferredNetworkAvailable:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:extendedPANId:ipV4NwSignature:ipv6NwSignature:wifiSSID:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId:completion:" argumentIndex:0 ofReply:1];
  [v3 setClasses:v4 forSelector:"ctcsUpdatePreferredNetworkInternallyWithCompletion:" argumentIndex:0 ofReply:1];
}

+ (id)CTCSCreateXPCTransportInterface
{
  if (qword_1000807B8 != -1)
  {
    sub_1000557BC();
  }

  v3 = qword_1000807B0;

  return v3;
}

@end