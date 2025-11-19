@interface NSUUID
@end

@implementation NSUUID

void __41__NSUUID_CRDT_Additions__CR_unserialized__block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = CR_unserialized_unserialized;
  CR_unserialized_unserialized = v0;
}

void __33__NSUUID_NSUUIDAdditions__TTZero__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&_block_invoke_zeroBytes];
  v1 = TTZero_zero;
  TTZero_zero = v0;
}

void __33__NSUUID_CRDT_Additions__CR_zero__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&_block_invoke_zeroBytes_0];
  v1 = CR_zero_zero;
  CR_zero_zero = v0;
}

void __36__NSUUID_CRDT_Additions__CR_unknown__block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = CR_unknown_unserialized;
  CR_unknown_unserialized = v0;
}

@end