@interface HMFFuture(HMDUtilities)
- (id)naFuture;
@end

@implementation HMFFuture(HMDUtilities)

- (id)naFuture
{
  v2 = objc_alloc_init(MEMORY[0x277D2C900]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HMFFuture_HMDUtilities__naFuture__block_invoke;
  v10[3] = &unk_278678B70;
  v11 = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMFFuture_HMDUtilities__naFuture__block_invoke_2;
  v8[3] = &unk_278689CD8;
  v3 = v11;
  v9 = v3;
  v4 = [self then:v10 orRecover:v8];
  v5 = v9;
  v6 = v3;

  return v3;
}

@end