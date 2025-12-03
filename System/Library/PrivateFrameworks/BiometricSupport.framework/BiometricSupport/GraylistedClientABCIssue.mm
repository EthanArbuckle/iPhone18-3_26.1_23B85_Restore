@interface GraylistedClientABCIssue
+ (void)reportClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter;
- (id)context;
- (id)tag;
@end

@implementation GraylistedClientABCIssue

+ (void)reportClient:(id)client withProcessName:(id)name clientUUID:(id)d platform:(id)platform forReporter:(id)reporter
{
  clientCopy = client;
  nameCopy = name;
  dCopy = d;
  platformCopy = platform;
  reporterCopy = reporter;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"GraylistedClient/%@/%@", clientCopy, nameCopy];
  v16 = [reporterCopy issueForTag:nameCopy];

  if (!v16)
  {
    v17 = [(EntitlementABCIssue *)[GraylistedClientABCIssue alloc] initWithClient:clientCopy processName:nameCopy clientUUID:dCopy platform:platformCopy forReporter:reporterCopy];
    [reporterCopy addIssue:v17];
    [(EntitlementABCIssue *)v17 report];
    [reporterCopy rescheduleTimer];
  }
}

- (id)tag
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  v7 = [v3 stringWithFormat:@"GraylistedClient/%@/%@/%@", clientName, processName, clientUUID];

  return v7;
}

- (id)context
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  platform = [(EntitlementABCIssue *)self platform];
  v8 = [v3 stringWithFormat:@"clientName=%@, processName=%@, clientUUID=%@, platform=%@, v=4", clientName, processName, clientUUID, platform];

  return v8;
}

@end