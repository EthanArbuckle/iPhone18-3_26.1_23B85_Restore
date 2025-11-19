@interface SwapEnd
@end

@implementation SwapEnd

void __benchmark_SwapEnd_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = *(a1 + 40);
      if (!*(v5 + 2044))
      {
LABEL_10:
        v11 = *(a1 + 56);
        v12 = *(a1 + 48);
        (*(a1 + 32))();
        v9 = v4;
LABEL_14:
        CFRelease(v9);
        return;
      }

      v6 = 0;
      while (1)
      {
        v7 = CFStringCreateWithCString(v2, *(*(v5 + 2032) + 8 * v6), 0x600u);
        valuePtr = 0;
        v8 = CFNumberCreate(v2, kCFNumberLongLongType, &valuePtr);
        v9 = v8;
        if (!v7 || v8 == 0)
        {
          break;
        }

        CFDictionarySetValue(v4, v7, v8);
        CFRelease(v9);
        CFRelease(v7);
        ++v6;
        v5 = *(a1 + 40);
        if (v6 >= *(v5 + 2044))
        {
          goto LABEL_10;
        }
      }

      CFRelease(v4);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v9)
      {
        goto LABEL_14;
      }
    }
  }
}

@end