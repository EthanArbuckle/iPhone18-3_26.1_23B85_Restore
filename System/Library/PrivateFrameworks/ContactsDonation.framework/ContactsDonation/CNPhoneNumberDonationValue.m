@interface CNPhoneNumberDonationValue
@end

@implementation CNPhoneNumberDonationValue

uint64_t __39___CNPhoneNumberDonationValue_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) phoneNumber];
  v4 = [*(a1 + 40) phoneNumber];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __39___CNPhoneNumberDonationValue_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) label];
  v4 = [*(a1 + 40) label];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __39___CNPhoneNumberDonationValue_isEqual___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CFBE18];
  v3 = [*(a1 + 32) origin];
  v4 = [*(a1 + 40) origin];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

uint64_t __35___CNPhoneNumberDonationValue_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) phoneNumber];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __35___CNPhoneNumberDonationValue_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) label];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __35___CNPhoneNumberDonationValue_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CFBE38];
  v2 = [*(a1 + 32) origin];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end