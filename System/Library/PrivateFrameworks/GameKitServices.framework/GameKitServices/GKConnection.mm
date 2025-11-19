@interface GKConnection
+ (BOOL)isRelayEnabled;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)externalAddressForCDXSelfConnectionData:(id)a3;
+ (id)externalAddressForSelfConnectionData:(id)a3;
- (BOOL)convertParticipantID:(id)a3 toPeerID:(id *)a4;
- (BOOL)convertPeerID:(id)a3 toParticipantID:(id *)a4;
- (GKConnection)initWithParticipantID:(id)a3;
- (OpaqueGCKSession)gckSession;
- (id)eventDelegate;
- (id)getLocalConnectionDataForLocalGaming;
- (id)networkStatistics;
- (id)networkStatisticsDictionaryForGCKStats:(void *)a3;
- (opaqueRTCReporting)reportingAgent;
- (unsigned)gckPID;
- (void)cancelConnectParticipant:(id)a3;
- (void)connect;
- (void)connectParticipantsWithConnectionData:(id)a3 withSessionInfo:(id)a4;
- (void)getLocalConnectionDataWithCompletionHandler:(id)a3;
- (void)preRelease;
- (void)setEventDelegate:(id)a3;
- (void)setParticipantID:(id)a3 forPeerID:(id)a4;
- (void)setReportingAgent:(opaqueRTCReporting *)a3;
@end

@implementation GKConnection

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (GKConnection)initWithParticipantID:(id)a3
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

- (void)setReportingAgent:(opaqueRTCReporting *)a3
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (void)setEventDelegate:(id)a3
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

- (void)getLocalConnectionDataWithCompletionHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (BOOL)convertParticipantID:(id)a3 toPeerID:(id *)a4
{
  v5.receiver = self;
  v5.super_class = GKConnection;
  [(GKConnection *)&v5 doesNotRecognizeSelector:a2, a4];
  return 0;
}

- (BOOL)convertPeerID:(id)a3 toParticipantID:(id *)a4
{
  v5.receiver = self;
  v5.super_class = GKConnection;
  [(GKConnection *)&v5 doesNotRecognizeSelector:a2, a4];
  return 0;
}

- (void)setParticipantID:(id)a3 forPeerID:(id)a4
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2, a4];
}

- (void)connectParticipantsWithConnectionData:(id)a3 withSessionInfo:(id)a4
{
  v4.receiver = self;
  v4.super_class = GKConnection;
  [(GKConnection *)&v4 doesNotRecognizeSelector:a2, a4];
}

- (void)cancelConnectParticipant:(id)a3
{
  v3.receiver = self;
  v3.super_class = GKConnection;
  [(GKConnection *)&v3 doesNotRecognizeSelector:a2];
}

- (id)networkStatisticsDictionaryForGCKStats:(void *)a3
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

+ (id)externalAddressForSelfConnectionData:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  result = [a3 subdataWithRange:{5, 4}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)externalAddressForCDXSelfConnectionData:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  result = [a3 subdataWithRange:{1, 4}];
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