@interface MFAACreateCertDataFromSerialNumber
@end

@implementation MFAACreateCertDataFromSerialNumber

const __CFArray *__MFAACreateCertDataFromSerialNumber_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), *(a1 + 48));
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result == 2)
    {
      result = CFArrayGetValueAtIndex(v3, 1);
      if (result)
      {
        result = CFDataCreateCopy(*MEMORY[0x277CBECE8], result);
        *(*(*(a1 + 40) + 8) + 24) = result;
      }
    }
  }

  return result;
}

@end