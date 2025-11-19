@interface PNCopyStrippedNumberWithoutPauses
@end

@implementation PNCopyStrippedNumberWithoutPauses

CFCharacterSetRef ___PNCopyStrippedNumberWithoutPauses_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x277CBECE8], @",;");
  _PNCopyStrippedNumberWithoutPauses_pauses = result;
  return result;
}

@end