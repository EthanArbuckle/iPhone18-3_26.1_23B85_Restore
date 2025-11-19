@interface HMMediaProfile
@end

@implementation HMMediaProfile

uint64_t __65__HMMediaProfile_HRERecommendableObjectProtocol__hre_primaryType__block_invoke_2()
{
  qword_27F5F96D0 = NSStringFromProtocol(&unk_28666EF10);

  return MEMORY[0x2821F96F8]();
}

id __67__HMMediaProfile_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMMediaProfile_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke_2;
  block[3] = &unk_279776268;
  block[4] = *(a1 + 32);
  if (qword_27F5F96D8 != -1)
  {
    dispatch_once(&qword_27F5F96D8, block);
  }

  return qword_27F5F96E0;
}

void __67__HMMediaProfile_HRERecommendableObjectProtocol__hre_matchingTypes__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(a1 + 32) hre_primaryType];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v1 setWithArray:v3];
  v5 = qword_27F5F96E0;
  qword_27F5F96E0 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HMMediaProfile_HRERecommendableObjectProtocol__hre_characteristics__block_invoke_2()
{
  qword_27F5F96F0 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];

  return MEMORY[0x2821F96F8]();
}

@end