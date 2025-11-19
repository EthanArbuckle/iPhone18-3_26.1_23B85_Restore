@interface LegacyEntitlementABCIssue
+ (void)reportClient:(id)a3 withProcessName:(id)a4 clientUUID:(id)a5 platform:(id)a6 forReporter:(id)a7;
- (id)context;
- (id)tag;
@end

@implementation LegacyEntitlementABCIssue

+ (void)reportClient:(id)a3 withProcessName:(id)a4 clientUUID:(id)a5 platform:(id)a6 forReporter:(id)a7
{
  v18 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"LegacyEntitlement/%@/%@", v18, v11];
  v16 = [v14 issueForTag:v15];

  if (!v16)
  {
    v17 = [[LegacyEntitlementABCIssue alloc] initWithClient:v18 processName:v11 clientUUID:v12 platform:v13 forReporter:v14];
    [v14 addIssue:v17];
    [(EntitlementABCIssue *)v17 report];
    [v14 rescheduleTimer];
  }
}

- (id)tag
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(EntitlementABCIssue *)self clientName];
  v5 = [(EntitlementABCIssue *)self processName];
  v6 = [(EntitlementABCIssue *)self clientUUID];
  v7 = [v3 stringWithFormat:@"LegacyEntitlement/%@/%@/%@", v4, v5, v6];

  return v7;
}

- (id)context
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(EntitlementABCIssue *)self clientName];
  v5 = [(EntitlementABCIssue *)self processName];
  v6 = [(EntitlementABCIssue *)self clientUUID];
  v7 = [(EntitlementABCIssue *)self platform];
  v8 = [v3 stringWithFormat:@"clientName=%@, processName=%@, clientUUID=%@, platform=%@, v=4", v4, v5, v6, v7];

  return v8;
}

@end