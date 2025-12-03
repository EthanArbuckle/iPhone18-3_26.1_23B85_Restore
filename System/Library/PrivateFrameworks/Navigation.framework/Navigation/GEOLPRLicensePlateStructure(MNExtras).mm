@interface GEOLPRLicensePlateStructure(MNExtras)
- (id)supportedAlphabeticCharacterSet;
- (id)supportedNumericCharacterSet;
@end

@implementation GEOLPRLicensePlateStructure(MNExtras)

- (id)supportedNumericCharacterSet
{
  hasSupportedPlateNumerics = [self hasSupportedPlateNumerics];
  v3 = MEMORY[0x1E696AB08];
  if (hasSupportedPlateNumerics)
  {
    supportedPlateNumerics = [self supportedPlateNumerics];
    decimalDigitCharacterSet = [v3 characterSetWithCharactersInString:supportedPlateNumerics];
  }

  else
  {
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  }

  return decimalDigitCharacterSet;
}

- (id)supportedAlphabeticCharacterSet
{
  hasSupportedPlateAlphabetLetters = [self hasSupportedPlateAlphabetLetters];
  v3 = MEMORY[0x1E696AB08];
  if (hasSupportedPlateAlphabetLetters)
  {
    supportedPlateAlphabetLetters = [self supportedPlateAlphabetLetters];
    letterCharacterSet = [v3 characterSetWithCharactersInString:supportedPlateAlphabetLetters];
  }

  else
  {
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  }

  return letterCharacterSet;
}

@end