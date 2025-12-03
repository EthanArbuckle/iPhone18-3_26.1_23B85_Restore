@interface CCToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum
- (void)enumerateEnumValuesWithBlock:(id)block;
@end

@implementation CCToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum

- (void)enumerateEnumValuesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__CCToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum_enumerateEnumValuesWithBlock___block_invoke;
  v6[3] = &unk_1E73E8EC8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(CCRepeatedUInt32 *)self enumerateUInt32ValuesWithBlock:v6];
}

uint64_t __88__CCToolKitToolTriggerDefinitionVersion1FlagsRepeatedEnum_enumerateEnumValuesWithBlock___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (a2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1939A29F4[a2];
  }

  return (*(v2 + 16))(v2, v3);
}

@end