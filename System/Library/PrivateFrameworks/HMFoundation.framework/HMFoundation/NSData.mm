@interface NSData
@end

@implementation NSData

uint64_t __40__NSData_HMFoundation__shortDescription__block_invoke()
{
  _MergedGlobals_56 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"<>"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __36__NSData_HMFoundation__hmf_isZeroed__block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    while (!*a2++)
    {
      if (!--a4)
      {
        return result;
      }
    }

    *(*(*(result + 32) + 8) + 24) = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t __57__NSData_HMFoundation__hmf_hexadecimalStringWithOptions___block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a2++;
    v4 = v5;
    if (v5 < 0xA0)
    {
      v6 = 48;
    }

    else if (*(result + 40))
    {
      v6 = 87;
    }

    else
    {
      v6 = 55;
    }

    v7 = *(*(result + 32) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + 1;
    *v8 = v6 + (v4 >> 4);
    v9 = v4 & 0xF;
    if (v9 < 0xA)
    {
      v10 = 48;
    }

    else if (*(result + 40))
    {
      v10 = 87;
    }

    else
    {
      v10 = 55;
    }

    v11 = v10 + v9;
    v12 = *(*(result + 32) + 8);
    v13 = *(v12 + 24);
    *(v12 + 24) = v13 + 1;
    *v13 = v11;
  }

  return result;
}

uint64_t __68__NSData_FastEncoding__hmf_offsetForKeyValue_forDictionaryAtOffset___block_invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *a3;
  v4 = [*(a1 + 32) hmf_readObjectAtOffset:&v7];
  v5 = [*(a1 + 40) compare:v4];

  return v5;
}

uint64_t __58__NSData_FastEncoding__hmf_containsObject_forSetAtOffset___block_invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = *a3;
  v4 = [*(a1 + 32) hmf_readObjectAtOffset:&v11];
  v5 = [v4 hash];
  v6 = *(a1 + 40);
  v7 = v6 > v5;
  if (v6 >= v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

@end