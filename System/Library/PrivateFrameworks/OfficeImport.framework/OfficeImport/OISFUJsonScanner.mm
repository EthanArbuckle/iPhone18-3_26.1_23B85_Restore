@interface OISFUJsonScanner
- (BOOL)parseConstantString:(const char *)string;
- (OISFUJsonScanner)initWithString:(id)string;
- (id)parseArrayWithMaxDepth:(int)depth;
- (id)parseDictionaryWithMaxDepth:(int)depth;
- (id)parseFalse;
- (id)parseHexCharacter;
- (id)parseNull;
- (id)parseNumber;
- (id)parseObjectWithMaxDepth:(int)depth;
- (id)parseString;
- (id)parseTrue;
- (unsigned)nextCharacter;
- (void)appendCharactersInRange:(_NSRange)range toString:(id)string;
- (void)dealloc;
- (void)skipWhitespace;
@end

@implementation OISFUJsonScanner

- (OISFUJsonScanner)initWithString:(id)string
{
  v8.receiver = self;
  v8.super_class = OISFUJsonScanner;
  v4 = [(OISFUJsonScanner *)&v8 init];
  if (v4)
  {
    v4->mString = string;
    v5 = [string length];
    v4->mLength = v5;
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    v4->mCharacters = v6;
    [string getCharacters:v6];
    v4->mWhitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4->mDecimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  }

  return v4;
}

- (void)dealloc
{
  free(self->mCharacters);

  v3.receiver = self;
  v3.super_class = OISFUJsonScanner;
  [(OISFUJsonScanner *)&v3 dealloc];
}

- (unsigned)nextCharacter
{
  mOffset = self->mOffset;
  if (mOffset >= self->mLength)
  {
    return 0;
  }

  mCharacters = self->mCharacters;
  self->mOffset = mOffset + 1;
  return mCharacters[mOffset];
}

- (void)skipWhitespace
{
  mOffset = self->mOffset;
  if (mOffset < self->mLength)
  {
    v9 = v3;
    v10 = v2;
    v11 = v4;
    v12 = v5;
    do
    {
      if (![(NSCharacterSet *)self->mWhitespaceCharacterSet characterIsMember:self->mCharacters[mOffset], v9, v10, v11, v12])
      {
        break;
      }

      mLength = self->mLength;
      mOffset = self->mOffset + 1;
      self->mOffset = mOffset;
    }

    while (mOffset < mLength);
  }
}

- (id)parseHexCharacter
{
  v3 = 0;
  v4 = 4;
  while (1)
  {
    nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
    v6 = nextCharacter - 48;
    if ((nextCharacter - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v3 = (16 * v3) | v6;
    if (!--v4)
    {
      v8 = v3;
      return [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
    }
  }

  if ((nextCharacter - 97) <= 5)
  {
    v6 = nextCharacter - 87;
    goto LABEL_7;
  }

  if ((nextCharacter - 65) <= 5)
  {
    v6 = nextCharacter - 55;
    goto LABEL_7;
  }

  return 0;
}

- (void)appendCharactersInRange:(_NSRange)range toString:(id)string
{
  if (range.length)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&self->mCharacters[range.location] length:range.length freeWhenDone:0];
    [string appendString:v5];
  }
}

- (id)parseString
{
  if ([(OISFUJsonScanner *)self nextCharacter]!= 34)
  {
    return 0;
  }

  mOffset = self->mOffset;
  string = [MEMORY[0x277CCAB68] string];
  while (2)
  {
    v5 = 0;
    while (1)
    {
      nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
      if (nextCharacter == 34)
      {
        [(OISFUJsonScanner *)self appendCharactersInRange:mOffset toString:v5, string];
        return string;
      }

      v7 = nextCharacter;
      if (nextCharacter == 92)
      {
        break;
      }

      result = 0;
      if (v7 >= 0x20)
      {
        ++v5;
        if (v7 - 127 >= 0x21)
        {
          continue;
        }
      }

      return result;
    }

    [(OISFUJsonScanner *)self appendCharactersInRange:mOffset toString:v5, string];
    nextCharacter2 = [(OISFUJsonScanner *)self nextCharacter];
    result = 0;
    if (nextCharacter2 <= 101)
    {
      if (nextCharacter2 > 91)
      {
        if (nextCharacter2 == 92)
        {
          v10 = @"\\"";
        }

        else
        {
          if (nextCharacter2 != 98)
          {
            return result;
          }

          v10 = @"\b";
        }
      }

      else
      {
        v10 = @"";
        if (nextCharacter2 != 34)
        {
          if (nextCharacter2 != 47)
          {
            return result;
          }

          v10 = @"/";
        }
      }

      goto LABEL_30;
    }

    if (nextCharacter2 <= 113)
    {
      if (nextCharacter2 == 102)
      {
        v10 = @"\f";
      }

      else
      {
        if (nextCharacter2 != 110)
        {
          return result;
        }

        v10 = @"\n";
      }

      goto LABEL_30;
    }

    switch(nextCharacter2)
    {
      case 'r':
        v10 = @"\r";
        goto LABEL_30;
      case 't':
        v10 = @"\t";
LABEL_30:
        [string appendString:v10];
        mOffset = self->mOffset;
        continue;
      case 'u':
        result = [(OISFUJsonScanner *)self parseHexCharacter];
        v10 = result;
        if (result)
        {
          goto LABEL_30;
        }

        break;
    }

    return result;
  }
}

- (id)parseDictionaryWithMaxDepth:(int)depth
{
  nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
  result = 0;
  v7 = __OFSUB__(depth, 1);
  v8 = (depth - 1);
  if (v8 < 0 == v7 && nextCharacter == 123)
  {
    [(OISFUJsonScanner *)self skipWhitespace];
    mOffset = self->mOffset;
    if (mOffset < self->mLength && self->mCharacters[mOffset] == 125)
    {
      self->mOffset = mOffset + 1;
      v10 = MEMORY[0x277CBEAC0];

      return [v10 dictionary];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      result = [(OISFUJsonScanner *)self parseString];
      if (result)
      {
        v12 = result;
        while (1)
        {
          [(OISFUJsonScanner *)self skipWhitespace];
          if ([(OISFUJsonScanner *)self nextCharacter]!= 58)
          {
            return 0;
          }

          [(OISFUJsonScanner *)self skipWhitespace];
          result = [(OISFUJsonScanner *)self parseObjectWithMaxDepth:v8];
          if (!result)
          {
            return result;
          }

          [dictionary setObject:result forKey:v12];
          [(OISFUJsonScanner *)self skipWhitespace];
          nextCharacter2 = [(OISFUJsonScanner *)self nextCharacter];
          if (nextCharacter2 != 44)
          {
            break;
          }

          [(OISFUJsonScanner *)self skipWhitespace];
          result = [(OISFUJsonScanner *)self parseString];
          v12 = result;
          if (!result)
          {
            return result;
          }
        }

        if (nextCharacter2 == 125)
        {
          return dictionary;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)parseArrayWithMaxDepth:(int)depth
{
  nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
  result = 0;
  v7 = __OFSUB__(depth, 1);
  v8 = (depth - 1);
  if (v8 < 0 == v7 && nextCharacter == 91)
  {
    [(OISFUJsonScanner *)self skipWhitespace];
    mOffset = self->mOffset;
    if (mOffset < self->mLength && self->mCharacters[mOffset] == 93)
    {
      self->mOffset = mOffset + 1;
      v10 = MEMORY[0x277CBEA60];

      return [v10 array];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      result = [(OISFUJsonScanner *)self parseObjectWithMaxDepth:v8];
      if (result)
      {
        v12 = result;
        while (1)
        {
          [array addObject:v12];
          [(OISFUJsonScanner *)self skipWhitespace];
          nextCharacter2 = [(OISFUJsonScanner *)self nextCharacter];
          if (nextCharacter2 != 44)
          {
            break;
          }

          [(OISFUJsonScanner *)self skipWhitespace];
          result = [(OISFUJsonScanner *)self parseObjectWithMaxDepth:v8];
          v12 = result;
          if (!result)
          {
            return result;
          }
        }

        if (nextCharacter2 == 93)
        {
          return array;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)parseConstantString:(const char *)string
{
  if (!*string)
  {
    return 1;
  }

  v4 = string + 1;
  do
  {
    result = [(OISFUJsonScanner *)self nextCharacter]== *(v4 - 1);
    if (!result)
    {
      break;
    }
  }

  while (*v4++);
  return result;
}

- (id)parseNull
{
  if (![(OISFUJsonScanner *)self parseConstantString:"null"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEB68];

  return [v2 null];
}

- (id)parseTrue
{
  if (![(OISFUJsonScanner *)self parseConstantString:"true"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithBool:1];
}

- (id)parseFalse
{
  if (![(OISFUJsonScanner *)self parseConstantString:"false"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithBool:0];
}

- (id)parseNumber
{
  mOffset = self->mOffset;
  nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
  if (nextCharacter == 45)
  {
    nextCharacter = [(OISFUJsonScanner *)self nextCharacter];
  }

  if ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:nextCharacter])
  {
    do
    {
      nextCharacter2 = [(OISFUJsonScanner *)self nextCharacter];
      if (!nextCharacter2)
      {
        goto LABEL_17;
      }

      v6 = nextCharacter2;
    }

    while ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:nextCharacter2]);
    if (v6 == 46)
    {
      if (![(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:[(OISFUJsonScanner *)self nextCharacter]])
      {
        return 0;
      }

      do
      {
        nextCharacter3 = [(OISFUJsonScanner *)self nextCharacter];
        if (!nextCharacter3)
        {
          goto LABEL_17;
        }

        v6 = nextCharacter3;
      }

      while ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:nextCharacter3]);
    }

    if ((v6 & 0xFFFFFFDF) != 0x45)
    {
LABEL_17:
      --self->mOffset;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&self->mCharacters[mOffset] length:self->mOffset - mOffset freeWhenDone:0];
      v12 = [MEMORY[0x277CCA980] decimalNumberWithString:v11 locale:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @".", *MEMORY[0x277CBE6A8])}];

      return v12;
    }

    nextCharacter4 = [(OISFUJsonScanner *)self nextCharacter];
    if (nextCharacter4 == 45 || (nextCharacter5 = nextCharacter4, nextCharacter4 == 43))
    {
      nextCharacter5 = [(OISFUJsonScanner *)self nextCharacter];
    }

    if ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:nextCharacter5])
    {
      do
      {
        nextCharacter6 = [(OISFUJsonScanner *)self nextCharacter];
      }

      while (nextCharacter6 && [(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:nextCharacter6]);
      goto LABEL_17;
    }
  }

  return 0;
}

- (id)parseObjectWithMaxDepth:(int)depth
{
  [(OISFUJsonScanner *)self skipWhitespace];
  v5 = (depth - 1);
  if (depth < 1)
  {
    return 0;
  }

  v6 = self->mCharacters[self->mOffset];
  if (v6 > 0x6D)
  {
    switch(v6)
    {
      case 'n':

        return [(OISFUJsonScanner *)self parseNull];
      case 't':

        return [(OISFUJsonScanner *)self parseTrue];
      case '{':

        return [(OISFUJsonScanner *)self parseDictionaryWithMaxDepth:v5];
      default:
LABEL_22:

        return [(OISFUJsonScanner *)self parseNumber];
    }
  }

  else
  {
    switch(v6)
    {
      case '""':

        return [(OISFUJsonScanner *)self parseString];
      case '[':

        return [(OISFUJsonScanner *)self parseArrayWithMaxDepth:v5];
      case 'f':

        return [(OISFUJsonScanner *)self parseFalse];
      default:
        goto LABEL_22;
    }
  }
}

@end