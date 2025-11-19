@interface CCSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum
- (void)enumerateEnumValuesWithBlock:(id)a3;
@end

@implementation CCSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum

- (void)enumerateEnumValuesWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__CCSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum_enumerateEnumValuesWithBlock___block_invoke;
  v6[3] = &unk_1E73E8EC8;
  v7 = v4;
  v5 = v4;
  [(CCRepeatedUInt32 *)self enumerateUInt32ValuesWithBlock:v6];
}

uint64_t __94__CCSiriCompanionContextAudioContentMediaCategoriesRepeatedEnum_enumerateEnumValuesWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 >= 6)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  return (*(v2 + 16))(v2, a2);
}

@end