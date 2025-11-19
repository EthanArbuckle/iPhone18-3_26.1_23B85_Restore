@interface ACAccount(HMDRemoteLoginUtilities)
- (id)description;
@end

@implementation ACAccount(HMDRemoteLoginUtilities)

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 username];
  v4 = [a1 aa_altDSID];
  v5 = [v2 stringWithFormat:@"[ACAccount: %@/%@]", v3, v4];

  return v5;
}

@end