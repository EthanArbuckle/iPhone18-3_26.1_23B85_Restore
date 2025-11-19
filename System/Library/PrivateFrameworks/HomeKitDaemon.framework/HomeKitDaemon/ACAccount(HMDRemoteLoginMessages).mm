@interface ACAccount(HMDRemoteLoginMessages)
- (id)messagePayload;
@end

@implementation ACAccount(HMDRemoteLoginMessages)

- (id)messagePayload
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"kRemoteLoginAccount";
  v0 = encodeRootObject();
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

@end