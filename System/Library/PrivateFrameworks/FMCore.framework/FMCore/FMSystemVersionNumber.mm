@interface FMSystemVersionNumber
- (FMSystemVersionNumber)init;
- (FMSystemVersionNumber)initWithString:(id)string;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation FMSystemVersionNumber

- (FMSystemVersionNumber)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithString:"];

  return [(FMSystemVersionNumber *)self initWithString:&stru_285D714C0];
}

- (FMSystemVersionNumber)initWithString:(id)string
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = FMSystemVersionNumber;
  v5 = [(FMSystemVersionNumber *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
    if ([v6 scanInteger:&v5->_baseNumber])
    {
      uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v16 = 0;
      [v6 scanCharactersFromSet:uppercaseLetterCharacterSet intoString:&v16];
      v8 = v16;

      baseLetter = v5->_baseLetter;
      v5->_baseLetter = v8;

      if ([v6 scanInteger:&v5->_buildNumber])
      {
        lowercaseLetterCharacterSet = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
        v15 = 0;
        [v6 scanCharactersFromSet:lowercaseLetterCharacterSet intoString:&v15];
        v11 = v15;

        suffix = v5->_suffix;
        v5->_suffix = v11;
        v13 = v11;
      }
    }
  }

  return v5;
}

- (id)description
{
  suffix = [(FMSystemVersionNumber *)self suffix];

  v4 = MEMORY[0x277CCACA8];
  baseNumber = self->_baseNumber;
  if (suffix)
  {
    baseLetter = [(FMSystemVersionNumber *)self baseLetter];
    buildNumber = self->_buildNumber;
    suffix2 = [(FMSystemVersionNumber *)self suffix];
    v9 = [v4 stringWithFormat:@"%lu%@%lu%@", baseNumber, baseLetter, buildNumber, suffix2];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu%@%lu", baseNumber, self->_baseLetter, self->_buildNumber];
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  baseNumber = [(FMSystemVersionNumber *)self baseNumber];
  if (baseNumber < [compareCopy baseNumber])
  {
LABEL_2:
    v6 = -1;
    goto LABEL_6;
  }

  baseNumber2 = [(FMSystemVersionNumber *)self baseNumber];
  if (baseNumber2 > [compareCopy baseNumber])
  {
    goto LABEL_4;
  }

  baseLetter = [(FMSystemVersionNumber *)self baseLetter];
  baseLetter2 = [compareCopy baseLetter];
  v6 = [baseLetter compare:baseLetter2];

  if (v6)
  {
    goto LABEL_6;
  }

  buildNumber = [(FMSystemVersionNumber *)self buildNumber];
  if (buildNumber < [compareCopy buildNumber])
  {
    goto LABEL_2;
  }

  buildNumber2 = [(FMSystemVersionNumber *)self buildNumber];
  if (buildNumber2 > [compareCopy buildNumber])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_6;
  }

  suffix = [(FMSystemVersionNumber *)self suffix];
  suffix2 = [compareCopy suffix];
  if (!suffix)
  {
    suffix = &stru_285D714C0;
  }

  if (suffix2)
  {
    v15 = suffix2;
  }

  else
  {
    v15 = &stru_285D714C0;
  }

  v6 = [(__CFString *)suffix compare:v15];

LABEL_6:
  return v6;
}

@end