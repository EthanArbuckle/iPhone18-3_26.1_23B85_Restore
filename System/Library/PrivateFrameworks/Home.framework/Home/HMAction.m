@interface HMAction
@end

@implementation HMAction

void __53__HMAction_HFAdditions__hf_affectedAccessoryProfiles__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E03A20;
  qword_280E03A20 = v0;
}

id __54__HMAction_HFAdditions__hf_isServiceLikeItemInvolved___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

void __59__HMAction_HFAdditions__hf_affectedAccessoryRepresentables__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E03A30;
  qword_280E03A30 = v0;
}

@end