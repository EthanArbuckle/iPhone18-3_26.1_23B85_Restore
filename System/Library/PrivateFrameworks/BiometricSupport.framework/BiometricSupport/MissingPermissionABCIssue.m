@interface MissingPermissionABCIssue
- (id)context;
- (id)tag;
@end

@implementation MissingPermissionABCIssue

- (id)tag
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(EntitlementABCIssue *)self clientName];
  v5 = [(EntitlementABCIssue *)self processName];
  v6 = [(EntitlementABCIssue *)self clientUUID];
  v7 = [v3 stringWithFormat:@"MissingPermissionABCIssue/%@/%@/%@/%d", v4, v5, v6, -[MissingPermissionABCIssue permission](self, "permission")];

  return v7;
}

- (id)context
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(EntitlementABCIssue *)self clientName];
  v5 = [(EntitlementABCIssue *)self processName];
  v6 = [(EntitlementABCIssue *)self clientUUID];
  v7 = [(EntitlementABCIssue *)self platform];
  v8 = [v3 stringWithFormat:@"clientName=%@, processName=%@, clientUUID=%@, platform=%@, permission=%d, v=4", v4, v5, v6, v7, -[MissingPermissionABCIssue permission](self, "permission")];

  return v8;
}

@end