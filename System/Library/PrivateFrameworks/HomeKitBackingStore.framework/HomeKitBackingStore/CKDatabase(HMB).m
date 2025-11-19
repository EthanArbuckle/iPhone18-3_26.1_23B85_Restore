@interface CKDatabase(HMB)
- (id)hmbDescription;
@end

@implementation CKDatabase(HMB)

- (id)hmbDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 container];
  v4 = [v3 containerID];
  v5 = [v4 hmbDescription];
  [a1 scope];
  v6 = CKDatabaseScopeString();
  v7 = [v2 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

@end