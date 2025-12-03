@interface GKConnection
+ (BOOL)isRelayEnabled;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)externalAddressForCDXSelfConnectionData:(id)data;
+ (id)externalAddressForSelfConnectionData:(id)data;
- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD;
- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD;
- (GKConnection)initWithParticipantID:(id)d;
- (OpaqueGCKSession)gckSession;
- (id)eventDelegate;
- (id)getLocalConnectionDataForLocalGaming;
- (id)networkStatistics;
- (id)networkStatisticsDictionaryForGCKStats:(void *)stats;
- (opaqueRTCReporting)reportingAgent;
- (unsigned)gckPID;
- (void)cancelConnectParticipant:(id)participant;
- (void)connect;
- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info;
- (void)getLocalConnectionDataWithCompletionHandler:(id)handler;
- (void)preRelease;
- (void)setEventDelegate:(id)delegate;
- (void)setParticipantID:(id)d forPeerID:(id)iD;
- (void)setReportingAgent:(opaqueRTCReporting *)agent;
@end

@implementation GKConnection

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_self() == self)
  {
    selfCopy = objc_opt_self();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (GKConnection)initWithParticipantID:(id)d
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)preRelease
{
  v2.receiver = self;
  v2.super_class = GKConnection;
  [(GKConnection *)&v2 doesNotRecognizeSelector:a2];
}

- (OpaqueGCKSession)gckSession
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (opaqueRTCReporting)reportingAgent
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)setReportingAgent:(opaqueRTCReporting *)agent
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setEventDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (id)eventDelegate
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (unsigned)gckPID
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)connect
{
  v2.receiver = self;
  v2.super_class = GKConnection;
  [(GKConnection *)&v2 doesNotRecognizeSelector:a2];
}

- (void)getLocalConnectionDataWithCompletionHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (BOOL)convertParticipantID:(id)d toPeerID:(id *)iD
{
  v5.receiver = self;
  v5.super_class = GKConnection;
  [(GKConnection *)&v5 doesNotRecognizeSelector:a2, iD];
  return 0;
}

- (BOOL)convertPeerID:(id)d toParticipantID:(id *)iD
{
  v5.receiver = self;
  v5.super_class = GKConnection;
  [(GKConnection *)&v5 doesNotRecognizeSelector:a2, iD];
  return 0;
}

- (void)setParticipantID:(id)d forPeerID:(id)iD
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2, iD];
}

- (void)connectParticipantsWithConnectionData:(id)data withSessionInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2, info];
}

- (void)cancelConnectParticipant:(id)participant
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (id)networkStatisticsDictionaryForGCKStats:(void *)stats
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)networkStatistics
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (id)getLocalConnectionDataForLocalGaming
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

+ (id)externalAddressForSelfConnectionData:(id)data
{
  v5 = *MEMORY[0x277D85DE8];
  result = [data subdataWithRange:{5, 4}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)externalAddressForCDXSelfConnectionData:(id)data
{
  v5 = *MEMORY[0x277D85DE8];
  result = [data subdataWithRange:{1, 4}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isRelayEnabled
{
  if ((isRelayEnabled_relayEnabledCached & 1) == 0)
  {
    isRelayEnabled_relayEnabled = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] ^ 1;
    isRelayEnabled_relayEnabledCached = 1;
    if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
    {
      +[GKConnection isRelayEnabled];
    }
  }

  return isRelayEnabled_relayEnabled;
}

@end