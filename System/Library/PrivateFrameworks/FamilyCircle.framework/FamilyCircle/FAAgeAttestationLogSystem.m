@interface FAAgeAttestationLogSystem
@end

@implementation FAAgeAttestationLogSystem

uint64_t ___FAAgeAttestationLogSystem_block_invoke()
{
  _FAAgeAttestationLogSystem_log = os_log_create("com.apple.family", "ageAttestation");

  return MEMORY[0x1EEE66BB8]();
}

@end