@interface NSString
@end

@implementation NSString

uint64_t __50__NSString__DPTArguments__dp_numbersFromCSVString__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) numberFromString:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void __57__NSString__DPTArguments__dp_numbersVectorsFromCSVString__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 componentsSeparatedByCharactersInSet:{v5, 0}];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) numberFromString:*(*(&v13 + 1) + 8 * v10)];
        if (v11)
        {
          [v4 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) addObject:v4];
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __53__NSString__DPTArguments__dp_bitVectorsFromCSVString__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dp_binaryBytesData];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __55__NSString__DPTArguments__dp_floatVectorsFromCSVString__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dp_floatVectorBytesData];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void __54__NSString__DPTArguments__dp_wordRecordsFromCSVString__block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 componentsSeparatedByCharactersInSet:*(a1 + 32)];
  v3 = [v10 count] == 2;
  v4 = v10;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v10 objectAtIndexedSubscript:0];
    v7 = [v5 numberFromString:v6];

    v8 = [v10 objectAtIndexedSubscript:1];
    v9 = [_DPWordRecord word:v8 atPosition:v7];
    if (v9)
    {
      [*(a1 + 48) addObject:v9];
    }

    v4 = v10;
  }
}

@end