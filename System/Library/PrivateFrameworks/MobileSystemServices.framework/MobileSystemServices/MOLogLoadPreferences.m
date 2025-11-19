@interface MOLogLoadPreferences
@end

@implementation MOLogLoadPreferences

BOOL ___MOLogLoadPreferences_block_invoke(uint64_t a1)
{
  CFPreferencesSynchronize(*MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF030]);
  result = _MOLogGetPreferenceIntValue(*(*(a1 + 32) + 16), (*(a1 + 32) + 44));
  v3 = *(a1 + 32);
  if (!result)
  {
    v5 = *(v3 + 48);
LABEL_6:
    *(v3 + 44) = v5;
    return result;
  }

  v4 = *(v3 + 44);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 < 8)
    {
      return result;
    }

    v5 = 7;
    goto LABEL_6;
  }

  *(v3 + 44) = 0;
  return result;
}

@end