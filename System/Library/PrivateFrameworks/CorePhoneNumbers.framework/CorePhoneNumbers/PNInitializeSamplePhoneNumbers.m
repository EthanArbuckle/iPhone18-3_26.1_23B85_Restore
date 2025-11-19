@interface PNInitializeSamplePhoneNumbers
@end

@implementation PNInitializeSamplePhoneNumbers

void ___PNInitializeSamplePhoneNumbers_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sSamplePhoneNumbers = Mutable;

  CFDictionarySetValue(Mutable, @"us", @"14085551212");
}

@end