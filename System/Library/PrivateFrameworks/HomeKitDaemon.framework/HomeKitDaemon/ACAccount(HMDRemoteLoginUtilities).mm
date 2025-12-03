@interface ACAccount(HMDRemoteLoginUtilities)
- (id)description;
@end

@implementation ACAccount(HMDRemoteLoginUtilities)

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  username = [self username];
  aa_altDSID = [self aa_altDSID];
  v5 = [v2 stringWithFormat:@"[ACAccount: %@/%@]", username, aa_altDSID];

  return v5;
}

@end