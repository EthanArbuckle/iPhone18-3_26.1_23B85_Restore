@interface DDSourceAppendSourceContent
@end

@implementation DDSourceAppendSourceContent

void ___DDSourceAppendSourceContent_block_invoke(void *a1, const __CFString *a2, __int16 *a3, uint64_t a4)
{
  DDLookupTrieInsertKeyWithExtra(*(a1[5] + 56), a2, a1[6], a3);
  if (a4)
  {
    if (a2)
    {
      v7 = a1[4];
      if (v7)
      {
        v8 = *(v7 + 16);

        v8();
      }
    }
  }
}

void ___DDSourceAppendSourceContent_block_invoke_2(uint64_t a1, CFStringRef theString, __int16 *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 64);
  if (!v7)
  {
    v7 = malloc_type_calloc(1uLL, 0x38uLL, 0x1022040E9E2EC27uLL);
    *v7 |= 0x1000u;
    v7[2] = 0;
    v7[4] = 0;
    *(v6 + 64) = v7;
  }

  DDLookupTrieInsertKeyWithExtra(v7, theString, v5, a3);
}

@end