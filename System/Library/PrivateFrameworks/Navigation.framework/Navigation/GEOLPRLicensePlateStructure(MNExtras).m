@interface GEOLPRLicensePlateStructure(MNExtras)
- (id)supportedAlphabeticCharacterSet;
- (id)supportedNumericCharacterSet;
@end

@implementation GEOLPRLicensePlateStructure(MNExtras)

- (id)supportedNumericCharacterSet
{
  v2 = [a1 hasSupportedPlateNumerics];
  v3 = MEMORY[0x1E696AB08];
  if (v2)
  {
    v4 = [a1 supportedPlateNumerics];
    v5 = [v3 characterSetWithCharactersInString:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  }

  return v5;
}

- (id)supportedAlphabeticCharacterSet
{
  v2 = [a1 hasSupportedPlateAlphabetLetters];
  v3 = MEMORY[0x1E696AB08];
  if (v2)
  {
    v4 = [a1 supportedPlateAlphabetLetters];
    v5 = [v3 characterSetWithCharactersInString:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AB08] letterCharacterSet];
  }

  return v5;
}

@end