@interface HMFMessageHandler
@end

@implementation HMFMessageHandler

uint64_t __44____HMFMessageHandler_expiredReceiverTarget__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"DEADBEEF-0000-0000-0000-000000000000"];
  v1 = qword_280AFC260;
  qword_280AFC260 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __47____HMFMessageHandler__canonicalizePolicyList___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HMFObjectCacheHMFMessagePolicy cachedInstanceForMessagePolicy:a2];
  [v2 addObject:v3];
}

BOOL __47____HMFMessageHandler__canonicalizePolicyList___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 < v5;
}

uint64_t __34____HMFMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Messaging.Handler", @"com.apple.HMFoundation");
  v1 = qword_280AFC270;
  qword_280AFC270 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end