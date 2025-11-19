@interface DNDContact
@end

@implementation DNDContact

void __35__DNDContact_Contacts__keysToFetch__block_invoke()
{
  v7[8] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBCFC0];
  v7[0] = *MEMORY[0x277CBD018];
  v7[1] = v0;
  v1 = *MEMORY[0x277CBD000];
  v7[2] = *MEMORY[0x277CBD098];
  v7[3] = v1;
  v2 = *MEMORY[0x277CBCFF8];
  v7[4] = *MEMORY[0x277CBD058];
  v7[5] = v2;
  v3 = *MEMORY[0x277CBD090];
  v7[6] = *MEMORY[0x277CBD078];
  v7[7] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v5 = keysToFetch_keys;
  keysToFetch_keys = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end