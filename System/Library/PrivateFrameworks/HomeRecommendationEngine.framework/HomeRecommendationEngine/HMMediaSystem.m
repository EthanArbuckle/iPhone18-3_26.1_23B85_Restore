@interface HMMediaSystem
@end

@implementation HMMediaSystem

uint64_t __64__HMMediaSystem_HRERecommendableObjectProtocol__hre_primaryType__block_invoke_2()
{
  qword_27F5F9700 = NSStringFromProtocol(&unk_28666EF10);

  return MEMORY[0x2821F96F8]();
}

id __66__HMMediaSystem_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMMediaSystem_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke_2;
  block[3] = &unk_279776268;
  block[4] = *(a1 + 32);
  if (qword_27F5F9708 != -1)
  {
    dispatch_once(&qword_27F5F9708, block);
  }

  return qword_27F5F9710;
}

void __66__HMMediaSystem_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(a1 + 32) hre_primaryType];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v1 setWithArray:v3];
  v5 = qword_27F5F9710;
  qword_27F5F9710 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HMMediaSystem_HRERecommendableObjectProtocol__hre_characteristics__block_invoke_2()
{
  qword_27F5F9720 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

uint64_t __62__HMMediaSystem_HRERecommendableObjectProtocol__hre_isVisible__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hre_isVisible];

  return v3;
}

@end