@interface MissingPermissionABCIssue
- (id)context;
- (id)tag;
@end

@implementation MissingPermissionABCIssue

- (id)tag
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  v7 = [v3 stringWithFormat:@"MissingPermissionABCIssue/%@/%@/%@/%d", clientName, processName, clientUUID, -[MissingPermissionABCIssue permission](self, "permission")];

  return v7;
}

- (id)context
{
  v3 = MEMORY[0x277CCACA8];
  clientName = [(EntitlementABCIssue *)self clientName];
  processName = [(EntitlementABCIssue *)self processName];
  clientUUID = [(EntitlementABCIssue *)self clientUUID];
  platform = [(EntitlementABCIssue *)self platform];
  v8 = [v3 stringWithFormat:@"clientName=%@, processName=%@, clientUUID=%@, platform=%@, permission=%d, v=4", clientName, processName, clientUUID, platform, -[MissingPermissionABCIssue permission](self, "permission")];

  return v8;
}

@end