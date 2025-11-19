@interface NPTrimNonLetters
@end

@implementation NPTrimNonLetters

void ___NPTrimNonLetters_block_invoke()
{
  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v0 = [v2 invertedSet];
  v1 = _NPTrimNonLetters_nonLetterCharacterSet;
  _NPTrimNonLetters_nonLetterCharacterSet = v0;
}

@end