@interface HMCharacteristicMetadata
@end

@implementation HMCharacteristicMetadata

void __53__HMCharacteristicMetadata_HFAdditions__hf_isInteger__block_invoke_2()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF6E8];
  v7[0] = *MEMORY[0x277CCF6C0];
  v7[1] = v1;
  v2 = *MEMORY[0x277CCF6D8];
  v7[2] = *MEMORY[0x277CCF6D0];
  v7[3] = v2;
  v7[4] = *MEMORY[0x277CCF6E0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = qword_280E03098;
  qword_280E03098 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end