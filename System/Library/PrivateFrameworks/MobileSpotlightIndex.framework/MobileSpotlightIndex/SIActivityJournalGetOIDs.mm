@interface SIActivityJournalGetOIDs
@end

@implementation SIActivityJournalGetOIDs

void ___SIActivityJournalGetOIDs_block_invoke(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 > 0x3D)
  {
    return;
  }

  if (((1 << v2) & 0x300FE000F0007800) != 0)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (((1 << v2) & 0x40000000060000) != 0)
  {
    v5 = 0;
LABEL_4:
    v6 = *(a2 + 3);
    if (v6)
    {
      Value = CFDictionaryGetValue(*(a1 + 40), HIDWORD(v6));
      if (!Value)
      {
        v8 = *MEMORY[0x1E695E480];
        v9 = SIUINT64SetCreate();
        CFDictionarySetValue(*(a1 + 40), HIDWORD(v6), v9);
        CFRelease(v9);
        Value = CFDictionaryGetValue(*(a1 + 40), HIDWORD(v6));
      }

      if (v5 == *(a1 + 48))
      {

        SIUINT64SetRemoveValue(Value, v6);
      }

      else
      {
        v10 = (Value + 16);

        SIValueSet<unsigned long long>::SIValueSetInsert(v10, v6);
      }
    }

    return;
  }

  if (v2 == 23)
  {
    v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], *(a2 + 4), 0x8000100u);
    if (v11)
    {
      v12 = v11;
      if (!CFDictionaryGetValue(*(a1 + 32), a2[7]))
      {
        CFDictionarySetValue(*(a1 + 32), a2[7], v12);
      }

      CFRelease(v12);
    }
  }
}

@end