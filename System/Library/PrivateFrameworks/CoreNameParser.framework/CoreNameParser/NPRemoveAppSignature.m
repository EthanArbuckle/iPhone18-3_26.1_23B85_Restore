@interface NPRemoveAppSignature
@end

@implementation NPRemoveAppSignature

uint64_t ___NPRemoveAppSignature_block_invoke(uint64_t a1)
{
  _NPRemoveAppSignature_appSignatureRegex = [MEMORY[0x277CCAC68] regularExpressionWithPattern:*(a1 + 32) options:1 error:0];

  return MEMORY[0x2821F96F8]();
}

@end