@interface CNDonationAgentXPCMethodScope
@end

@implementation CNDonationAgentXPCMethodScope

void __38___CNDonationAgentXPCMethodScope_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
  [WeakRetained finishWithError:v1];
}

void __38___CNDonationAgentXPCMethodScope_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
  [WeakRetained finishWithError:v1];
}

void __38___CNDonationAgentXPCMethodScope_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithError:v3];
}

@end