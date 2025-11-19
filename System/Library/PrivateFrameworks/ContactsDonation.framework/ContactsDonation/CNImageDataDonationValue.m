@interface CNImageDataDonationValue
@end

@implementation CNImageDataDonationValue

uint64_t __37___CNImageDataDonationValue_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) imageData];
  v4 = [*(a1 + 40) imageData];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __37___CNImageDataDonationValue_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) origin];
  v4 = [*(a1 + 40) origin];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __33___CNImageDataDonationValue_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) imageData];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __33___CNImageDataDonationValue_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) origin];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end