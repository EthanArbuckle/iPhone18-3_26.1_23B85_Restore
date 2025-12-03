@interface CKDatabase(HMB)
- (id)hmbDescription;
@end

@implementation CKDatabase(HMB)

- (id)hmbDescription
{
  v2 = MEMORY[0x277CCACA8];
  container = [self container];
  containerID = [container containerID];
  hmbDescription = [containerID hmbDescription];
  [self scope];
  v6 = CKDatabaseScopeString();
  v7 = [v2 stringWithFormat:@"%@/%@", hmbDescription, v6];

  return v7;
}

@end