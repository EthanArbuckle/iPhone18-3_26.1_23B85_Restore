@interface FMSystemVersionNumber
- (FMSystemVersionNumber)init;
- (FMSystemVersionNumber)initWithString:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation FMSystemVersionNumber

- (FMSystemVersionNumber)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Use initWithString:"];

  return [(FMSystemVersionNumber *)self initWithString:&stru_285D714C0];
}

- (FMSystemVersionNumber)initWithString:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FMSystemVersionNumber;
  v5 = [(FMSystemVersionNumber *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC80] scannerWithString:v4];
    if ([v6 scanInteger:&v5->_baseNumber])
    {
      v7 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v16 = 0;
      [v6 scanCharactersFromSet:v7 intoString:&v16];
      v8 = v16;

      baseLetter = v5->_baseLetter;
      v5->_baseLetter = v8;

      if ([v6 scanInteger:&v5->_buildNumber])
      {
        v10 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
        v15 = 0;
        [v6 scanCharactersFromSet:v10 intoString:&v15];
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
  v3 = [(FMSystemVersionNumber *)self suffix];

  v4 = MEMORY[0x277CCACA8];
  baseNumber = self->_baseNumber;
  if (v3)
  {
    v6 = [(FMSystemVersionNumber *)self baseLetter];
    buildNumber = self->_buildNumber;
    v8 = [(FMSystemVersionNumber *)self suffix];
    v9 = [v4 stringWithFormat:@"%lu%@%lu%@", baseNumber, v6, buildNumber, v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu%@%lu", baseNumber, self->_baseLetter, self->_buildNumber];
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(FMSystemVersionNumber *)self baseNumber];
  if (v5 < [v4 baseNumber])
  {
LABEL_2:
    v6 = -1;
    goto LABEL_6;
  }

  v7 = [(FMSystemVersionNumber *)self baseNumber];
  if (v7 > [v4 baseNumber])
  {
    goto LABEL_4;
  }

  v8 = [(FMSystemVersionNumber *)self baseLetter];
  v9 = [v4 baseLetter];
  v6 = [v8 compare:v9];

  if (v6)
  {
    goto LABEL_6;
  }

  v11 = [(FMSystemVersionNumber *)self buildNumber];
  if (v11 < [v4 buildNumber])
  {
    goto LABEL_2;
  }

  v12 = [(FMSystemVersionNumber *)self buildNumber];
  if (v12 > [v4 buildNumber])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_6;
  }

  v13 = [(FMSystemVersionNumber *)self suffix];
  v14 = [v4 suffix];
  if (!v13)
  {
    v13 = &stru_285D714C0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &stru_285D714C0;
  }

  v6 = [(__CFString *)v13 compare:v15];

LABEL_6:
  return v6;
}

@end