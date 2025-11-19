@interface NPRemoveEmojis
@end

@implementation NPRemoveEmojis

void ___NPRemoveEmojis_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  v11 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
  [v6 addObject:v11];
}

@end