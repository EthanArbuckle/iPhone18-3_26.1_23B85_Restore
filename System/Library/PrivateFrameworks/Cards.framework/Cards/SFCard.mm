@interface SFCard
@end

@implementation SFCard

uint64_t __49__SFCard_CRCard___interactionsByIntentDataHashes__block_invoke()
{
  _interactionsByIntentDataHashes_interactionsByIntentDataHashes = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t __41__SFCard_CRCard__loadCardWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end