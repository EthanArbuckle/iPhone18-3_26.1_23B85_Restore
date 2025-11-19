@interface HKMedicalRecord
@end

@implementation HKMedicalRecord

BOOL __40__HKMedicalRecord_HealthUI__displayName__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 codingSystem];
  v3 = [MEMORY[0x1E696C238] textSystem];
  v4 = v2 == v3;

  return v4;
}

BOOL __40__HKMedicalRecord_HealthUI__displayName__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 displayString];
  v3 = [v2 length] != 0;

  return v3;
}

@end