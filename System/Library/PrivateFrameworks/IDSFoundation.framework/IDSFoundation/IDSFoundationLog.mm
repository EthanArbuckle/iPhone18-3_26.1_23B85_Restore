@interface IDSFoundationLog
+ (OS_os_log)BTLink;
+ (OS_os_log)ClientChannel;
+ (OS_os_log)ClientChannelAgent;
+ (OS_os_log)ClientChannelManager;
+ (OS_os_log)ConnectivityMonitor;
+ (OS_os_log)ContactsUtilities;
+ (OS_os_log)CrossLayerLogging;
+ (OS_os_log)DiagnosticInfoHandler;
+ (OS_os_log)FTGL;
+ (OS_os_log)FeatureToggler;
+ (OS_os_log)GFTGL;
+ (OS_os_log)GlobalLink;
+ (OS_os_log)GlobalLink_oversize;
+ (OS_os_log)GroupSessionDataCryptor;
+ (OS_os_log)GroupSessionKeyValueDelivery;
+ (OS_os_log)GroupStatus_oversized;
+ (OS_os_log)IDSDSession;
+ (OS_os_log)IDSFirewall;
+ (OS_os_log)IDSMessageStore;
+ (OS_os_log)IDSNWLink;
+ (OS_os_log)IDSOffGridMessenger;
+ (OS_os_log)IDSOffGridStateManager;
+ (OS_os_log)IDSOffGridStateManager_oversized;
+ (OS_os_log)IDSPinnedIdentity;
+ (OS_os_log)IDSSKStatusClient;
+ (OS_os_log)IDSServerMessaging;
+ (OS_os_log)IDSSession;
+ (OS_os_log)IDSUDPLink;
+ (OS_os_log)IPsecLink;
+ (OS_os_log)KeyTransparency;
+ (OS_os_log)Metrics;
+ (OS_os_log)Multiplexer;
+ (OS_os_log)NWPathUtils;
+ (OS_os_log)NonFTGL;
+ (OS_os_log)OTRController;
+ (OS_os_log)PeerLookup_DBCache;
+ (OS_os_log)QRAllocator;
+ (OS_os_log)QRAllocator_oversized;
+ (OS_os_log)QRProto;
+ (OS_os_log)QRProto_oversize;
+ (OS_os_log)RealTimeEncryptionController;
+ (OS_os_log)RealTimeEncryptionController_oversize;
+ (OS_os_log)ServerMaterialExchange;
+ (OS_os_log)ServerMaterialExchange_oversize;
+ (OS_os_log)SessionController;
+ (OS_os_log)SimulatorProxy;
+ (OS_os_log)StableEncryptionController;
+ (OS_os_log)Stun;
+ (OS_os_log)System;
+ (OS_os_log)TransportLevelAgent;
+ (OS_os_log)UTunConnection;
+ (OS_os_log)UTunPeer;
+ (OS_os_log)accountIdentity;
+ (OS_os_log)bonjourDeliveryController;
+ (OS_os_log)cloudKit;
+ (OS_os_log)delivery;
+ (OS_os_log)deliveryController;
+ (OS_os_log)delivery_keyTransparency;
+ (OS_os_log)delivery_oversized;
+ (OS_os_log)encryptionController;
+ (OS_os_log)groupCrypto;
+ (OS_os_log)interface;
+ (OS_os_log)localDeliveryQueue;
+ (OS_os_log)opportunistic;
+ (OS_os_log)query;
+ (OS_os_log)socketPairConnection;
+ (OS_os_log)stewieMessaging;
+ (OS_os_log)stewieProvisioning;
+ (OS_os_log)utilities;
+ (OS_os_log)utunController;
+ (OS_os_log)xpc;
@end

@implementation IDSFoundationLog

+ (OS_os_log)delivery
{
  if (qword_1EB2B8798 != -1)
  {
    sub_1A7B09824();
  }

  v3 = qword_1EB2B87A0;

  return v3;
}

+ (OS_os_log)UTunConnection
{
  if (qword_1EB2B8880 != -1)
  {
    sub_1A7B00238();
  }

  v3 = qword_1EB2B8888;

  return v3;
}

+ (OS_os_log)Multiplexer
{
  if (qword_1EB2B8930 != -1)
  {
    sub_1A7E1E828();
  }

  v3 = qword_1EB2B8938;

  return v3;
}

+ (OS_os_log)IDSOffGridStateManager
{
  if (qword_1EB2BBC30 != -1)
  {
    sub_1A7B038BC();
  }

  v3 = qword_1EB2BBC28;

  return v3;
}

+ (OS_os_log)IDSSKStatusClient
{
  if (qword_1EB2B8970 != -1)
  {
    sub_1A7E1E56C();
  }

  v3 = qword_1EB2B8978;

  return v3;
}

+ (OS_os_log)utunController
{
  if (qword_1EB2B8560 != -1)
  {
    sub_1A7E1E4F4();
  }

  v3 = qword_1EB2B8568;

  return v3;
}

+ (OS_os_log)socketPairConnection
{
  if (qword_1EB2B8590 != -1)
  {
    sub_1A7E1E4A4();
  }

  v3 = qword_1EB2B8598;

  return v3;
}

+ (OS_os_log)IDSMessageStore
{
  if (qword_1EB2B89B0 != -1)
  {
    sub_1A7E1E74C();
  }

  v3 = qword_1EB2B89B8;

  return v3;
}

+ (OS_os_log)CrossLayerLogging
{
  if (qword_1ED5DF768 != -1)
  {
    sub_1A7E1E788();
  }

  v3 = qword_1ED5DF770;

  return v3;
}

+ (OS_os_log)PeerLookup_DBCache
{
  if (qword_1EB2B8900 != -1)
  {
    sub_1A7E1E918();
  }

  v3 = qword_1EB2B8908;

  return v3;
}

+ (OS_os_log)delivery_oversized
{
  if (qword_1EB2B8778 != -1)
  {
    sub_1A7E1E440();
  }

  v3 = qword_1EB2B8780;

  return v3;
}

+ (OS_os_log)KeyTransparency
{
  if (qword_1EB2BB588 != -1)
  {
    sub_1A7E1E760();
  }

  v3 = qword_1EB2BB590;

  return v3;
}

+ (OS_os_log)xpc
{
  if (qword_1ED5DF780 != -1)
  {
    sub_1A7B0D36C();
  }

  v3 = qword_1ED5DF788;

  return v3;
}

+ (OS_os_log)localDeliveryQueue
{
  if (qword_1EB2BBFA8 != -1)
  {
    sub_1A7E1E490();
  }

  v3 = qword_1EB2BBFA0;

  return v3;
}

+ (OS_os_log)UTunPeer
{
  if (qword_1EB2B8870 != -1)
  {
    sub_1A7E1E47C();
  }

  v3 = qword_1EB2B8878;

  return v3;
}

+ (OS_os_log)cloudKit
{
  if (qword_1EB2BBF88 != -1)
  {
    sub_1A7E1E404();
  }

  v3 = qword_1EB2BBF80;

  return v3;
}

+ (OS_os_log)accountIdentity
{
  if (qword_1EB2B87A8 != -1)
  {
    sub_1A7E1E418();
  }

  v3 = qword_1EB2B87B0;

  return v3;
}

+ (OS_os_log)groupCrypto
{
  if (qword_1EB2BBF98 != -1)
  {
    sub_1A7E1E42C();
  }

  v3 = qword_1EB2BBF90;

  return v3;
}

+ (OS_os_log)delivery_keyTransparency
{
  if (qword_1EB2B8788 != -1)
  {
    sub_1A7E1E454();
  }

  v3 = qword_1EB2B8790;

  return v3;
}

+ (OS_os_log)query
{
  if (qword_1EB2B85D0 != -1)
  {
    sub_1A7E1E468();
  }

  v3 = qword_1EB2B85D8;

  return v3;
}

+ (OS_os_log)OTRController
{
  if (qword_1EB2BBFB8 != -1)
  {
    sub_1A7E1E4B8();
  }

  v3 = qword_1EB2BBFB0;

  return v3;
}

+ (OS_os_log)encryptionController
{
  if (qword_1EB2BBFC8 != -1)
  {
    sub_1A7E1E4CC();
  }

  v3 = qword_1EB2BBFC0;

  return v3;
}

+ (OS_os_log)BTLink
{
  if (qword_1EB2BBFD8 != -1)
  {
    sub_1A7E1E4E0();
  }

  v3 = qword_1EB2BBFD0;

  return v3;
}

+ (OS_os_log)deliveryController
{
  if (qword_1EB2BBFE8 != -1)
  {
    sub_1A7E1E508();
  }

  v3 = qword_1EB2BBFE0;

  return v3;
}

+ (OS_os_log)stewieProvisioning
{
  if (qword_1EB2B8570 != -1)
  {
    sub_1A7E1E51C();
  }

  v3 = qword_1EB2B8578;

  return v3;
}

+ (OS_os_log)stewieMessaging
{
  if (qword_1EB2B8580 != -1)
  {
    sub_1A7E1E530();
  }

  v3 = qword_1EB2B8588;

  return v3;
}

+ (OS_os_log)IDSOffGridMessenger
{
  if (qword_1EB2BB5B8 != -1)
  {
    sub_1A7E1E544();
  }

  v3 = qword_1EB2BB5C0;

  return v3;
}

+ (OS_os_log)IDSOffGridStateManager_oversized
{
  if (qword_1EB2B8990 != -1)
  {
    sub_1A7E1E558();
  }

  v3 = qword_1EB2B8998;

  return v3;
}

+ (OS_os_log)opportunistic
{
  if (qword_1EB2B85E0 != -1)
  {
    sub_1A7E1E580();
  }

  v3 = qword_1EB2B85E8;

  return v3;
}

+ (OS_os_log)bonjourDeliveryController
{
  if (qword_1EB2BBFF8 != -1)
  {
    sub_1A7E1E594();
  }

  v3 = qword_1EB2BBFF0;

  return v3;
}

+ (OS_os_log)utilities
{
  if (qword_1ED5DF6F8 != -1)
  {
    sub_1A7E1E5A8();
  }

  v3 = qword_1ED5DF700;

  return v3;
}

+ (OS_os_log)IPsecLink
{
  if (qword_1EB2BC008 != -1)
  {
    sub_1A7E1E5BC();
  }

  v3 = qword_1EB2BC000;

  return v3;
}

+ (OS_os_log)IDSSession
{
  if (qword_1EB2BC018 != -1)
  {
    sub_1A7E1E5D0();
  }

  v3 = qword_1EB2BC010;

  return v3;
}

+ (OS_os_log)IDSDSession
{
  if (qword_1EB2B8A00 != -1)
  {
    sub_1A7E1E5E4();
  }

  v3 = qword_1EB2B8A08;

  return v3;
}

+ (OS_os_log)GroupStatus_oversized
{
  if (qword_1EB2BC028 != -1)
  {
    sub_1A7E1E5F8();
  }

  v3 = qword_1EB2BC020;

  return v3;
}

+ (OS_os_log)QRAllocator
{
  if (qword_1EB2B88F0 != -1)
  {
    sub_1A7E1E60C();
  }

  v3 = qword_1EB2B88F8;

  return v3;
}

+ (OS_os_log)QRAllocator_oversized
{
  if (qword_1EB2B88E0 != -1)
  {
    sub_1A7E1E620();
  }

  v3 = qword_1EB2B88E8;

  return v3;
}

+ (OS_os_log)Stun
{
  if (qword_1EB2B88A0 != -1)
  {
    sub_1A7E1E634();
  }

  v3 = qword_1EB2B88A8;

  return v3;
}

+ (OS_os_log)ServerMaterialExchange
{
  if (qword_1EB2BC038 != -1)
  {
    sub_1A7E1E648();
  }

  v3 = qword_1EB2BC030;

  return v3;
}

+ (OS_os_log)ServerMaterialExchange_oversize
{
  if (qword_1EB2BC048 != -1)
  {
    sub_1A7E1E65C();
  }

  v3 = qword_1EB2BC040;

  return v3;
}

+ (OS_os_log)Metrics
{
  if (qword_1EB2B8940 != -1)
  {
    sub_1A7E1E670();
  }

  v3 = qword_1EB2B8948;

  return v3;
}

+ (OS_os_log)GlobalLink
{
  if (qword_1EB2B8A50 != -1)
  {
    sub_1A7E1E684();
  }

  v3 = qword_1EB2B8A58;

  return v3;
}

+ (OS_os_log)GlobalLink_oversize
{
  if (qword_1EB2B8A40 != -1)
  {
    sub_1A7E1E698();
  }

  v3 = qword_1EB2B8A48;

  return v3;
}

+ (OS_os_log)FTGL
{
  if (qword_1EB2BC058 != -1)
  {
    sub_1A7E1E6AC();
  }

  v3 = qword_1EB2BC050;

  return v3;
}

+ (OS_os_log)GFTGL
{
  if (qword_1EB2B8A60 != -1)
  {
    sub_1A7E1E6C0();
  }

  v3 = qword_1EB2B8A68;

  return v3;
}

+ (OS_os_log)NonFTGL
{
  if (qword_1EB2B8910 != -1)
  {
    sub_1A7E1E6D4();
  }

  v3 = qword_1EB2B8918;

  return v3;
}

+ (OS_os_log)SessionController
{
  if (qword_1EB2B88B0 != -1)
  {
    sub_1A7E1E6E8();
  }

  v3 = qword_1EB2B88B8;

  return v3;
}

+ (OS_os_log)RealTimeEncryptionController
{
  if (qword_1EB2BB578 != -1)
  {
    sub_1A7E1E6FC();
  }

  v3 = qword_1EB2BB580;

  return v3;
}

+ (OS_os_log)RealTimeEncryptionController_oversize
{
  if (qword_1EB2B88C0 != -1)
  {
    sub_1A7E1E710();
  }

  v3 = qword_1EB2B88C8;

  return v3;
}

+ (OS_os_log)StableEncryptionController
{
  if (qword_1EB2BC068 != -1)
  {
    sub_1A7E1E724();
  }

  v3 = qword_1EB2BC060;

  return v3;
}

+ (OS_os_log)GroupSessionDataCryptor
{
  if (qword_1EB2B8A30 != -1)
  {
    sub_1A7E1E738();
  }

  v3 = qword_1EB2B8A38;

  return v3;
}

+ (OS_os_log)FeatureToggler
{
  if (qword_1EB2BC078 != -1)
  {
    sub_1A7E1E774();
  }

  v3 = qword_1EB2BC070;

  return v3;
}

+ (OS_os_log)IDSUDPLink
{
  if (qword_1EB2B8950 != -1)
  {
    sub_1A7E1E79C();
  }

  v3 = qword_1EB2B8958;

  return v3;
}

+ (OS_os_log)IDSNWLink
{
  if (qword_1EB2B89A0 != -1)
  {
    sub_1A7E1E7B0();
  }

  v3 = qword_1EB2B89A8;

  return v3;
}

+ (OS_os_log)QRProto
{
  if (qword_1EB2BC088 != -1)
  {
    sub_1A7E1E7C4();
  }

  v3 = qword_1EB2BC080;

  return v3;
}

+ (OS_os_log)QRProto_oversize
{
  if (qword_1EB2B88D0 != -1)
  {
    sub_1A7E1E7D8();
  }

  v3 = qword_1EB2B88D8;

  return v3;
}

+ (OS_os_log)interface
{
  if (qword_1EB2BC098 != -1)
  {
    sub_1A7E1E7EC();
  }

  v3 = qword_1EB2BC090;

  return v3;
}

+ (OS_os_log)ConnectivityMonitor
{
  if (qword_1EB2BC0A8 != -1)
  {
    sub_1A7E1E800();
  }

  v3 = qword_1EB2BC0A0;

  return v3;
}

+ (OS_os_log)TransportLevelAgent
{
  if (qword_1EB2B8890 != -1)
  {
    sub_1A7E1E814();
  }

  v3 = qword_1EB2B8898;

  return v3;
}

+ (OS_os_log)IDSServerMessaging
{
  if (qword_1EB2BC0B8 != -1)
  {
    sub_1A7E1E83C();
  }

  v3 = qword_1EB2BC0B0;

  return v3;
}

+ (OS_os_log)ClientChannel
{
  if (qword_1EB2B8AB0 != -1)
  {
    sub_1A7E1E850();
  }

  v3 = qword_1EB2B8AB8;

  return v3;
}

+ (OS_os_log)ClientChannelAgent
{
  if (qword_1EB2B8AA0 != -1)
  {
    sub_1A7E1E864();
  }

  v3 = qword_1EB2B8AA8;

  return v3;
}

+ (OS_os_log)ClientChannelManager
{
  if (qword_1EB2B8A90 != -1)
  {
    sub_1A7E1E878();
  }

  v3 = qword_1EB2B8A98;

  return v3;
}

+ (OS_os_log)IDSFirewall
{
  if (qword_1EB2B89D8 != -1)
  {
    sub_1A7E1E88C();
  }

  v3 = qword_1EB2B89E0;

  return v3;
}

+ (OS_os_log)NWPathUtils
{
  if (qword_1EB2BC0C8 != -1)
  {
    sub_1A7E1E8A0();
  }

  v3 = qword_1EB2BC0C0;

  return v3;
}

+ (OS_os_log)GroupSessionKeyValueDelivery
{
  if (qword_1EB2BC0D8 != -1)
  {
    sub_1A7E1E8B4();
  }

  v3 = qword_1EB2BC0D0;

  return v3;
}

+ (OS_os_log)System
{
  if (qword_1EB2BC0E8 != -1)
  {
    sub_1A7E1E8C8();
  }

  v3 = qword_1EB2BC0E0;

  return v3;
}

+ (OS_os_log)SimulatorProxy
{
  if (qword_1EB2BC0F8 != -1)
  {
    sub_1A7E1E8DC();
  }

  v3 = qword_1EB2BC0F0;

  return v3;
}

+ (OS_os_log)ContactsUtilities
{
  if (qword_1EB2B8A80 != -1)
  {
    sub_1A7E1E8F0();
  }

  v3 = qword_1EB2B8A88;

  return v3;
}

+ (OS_os_log)IDSPinnedIdentity
{
  if (qword_1EB2BB5A8 != -1)
  {
    sub_1A7E1E904();
  }

  v3 = qword_1EB2BB5B0;

  return v3;
}

+ (OS_os_log)DiagnosticInfoHandler
{
  if (qword_1EB2B8A70 != -1)
  {
    sub_1A7E1E92C();
  }

  v3 = qword_1EB2B8A78;

  return v3;
}

@end