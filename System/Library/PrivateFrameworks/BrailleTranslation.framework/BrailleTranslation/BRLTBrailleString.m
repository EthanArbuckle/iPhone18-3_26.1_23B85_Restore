@interface BRLTBrailleString
+ (BOOL)isValidBRF:(id)a3;
+ (id)brfToUnicode:(id)a3;
+ (id)dinToUnicode:(id)a3;
+ (id)unicodeToBestEffortBrf:(id)a3;
+ (id)unicodeToDin:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBrailleString:(id)a3;
- (BRLTBrailleString)initWithBrailleChars:(id)a3;
- (BRLTBrailleString)initWithBrf:(id)a3;
- (BRLTBrailleString)initWithUnicode:(id)a3;
- (NSArray)brailleChars;
- (NSString)unicode;
- (id)bestEffortBrf;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BRLTBrailleString

- (BRLTBrailleString)initWithBrailleChars:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRLTBrailleString;
  v5 = [(BRLTBrailleString *)&v9 init];
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  brailleChars = v5->_brailleChars;
  v5->_brailleChars = v6;

  return v5;
}

- (BRLTBrailleString)initWithUnicode:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v4 length])
  {
    v6 = 0;
    do
    {
      v7 = +[BRLTBrailleChar charWithUnichar:](BRLTBrailleChar, "charWithUnichar:", [v4 characterAtIndex:v6]);
      [v5 addObject:v7];

      ++v6;
    }

    while (v6 < [v4 length]);
  }

  v8 = [(BRLTBrailleString *)self initWithBrailleChars:v5];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BRLTBrailleString allocWithZone:a3];
  brailleChars = self->_brailleChars;

  return [(BRLTBrailleString *)v4 initWithBrailleChars:brailleChars];
}

- (NSString)unicode
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_brailleChars;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) unicode];
        [v3 appendString:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BRLTBrailleString)initWithBrf:(id)a3
{
  v4 = [a3 uppercaseString];
  v5 = [BRLTBrailleString brfToUnicode:v4];
  v6 = [(BRLTBrailleString *)self initWithUnicode:v5];

  return v6;
}

- (NSArray)brailleChars
{
  v2 = [(NSMutableArray *)self->_brailleChars copy];

  return v2;
}

+ (id)dinToUnicode:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = 0;
    v5 = &stru_2853FD1A8;
    do
    {
      v6 = [v3 characterAtIndex:v4];
      if (v6 == 32)
      {
        LOWORD(v7) = 10240;
      }

      else
      {
        v8 = qword_241E38350[v6];
        v7 = 10240;
        do
        {
          v7 += 1 << (~(10 * (v8 / 0xA)) + v8);
          v9 = v8 > 9;
          v8 /= 0xAuLL;
        }

        while (v9);
      }

      v13 = v7;
      v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&v13 length:1];
      v11 = [(__CFString *)v5 stringByAppendingString:v10];

      ++v4;
      v5 = v11;
    }

    while ([v3 length] > v4);
  }

  else
  {
    v11 = &stru_2853FD1A8;
  }

  return v11;
}

+ (id)unicodeToDin:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  for (i = 0; i != 256; ++i)
  {
    if (i == 32)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = qword_241E38350[i];
      do
      {
        v6 += (1 << (~(10 * (v7 / 0xA)) + v7));
        v8 = v7 > 9;
        v7 /= 0xAuLL;
      }

      while (v8);
    }

    v16[v6] = i;
  }

  if ([v3 length])
  {
    v9 = 0;
    v10 = &stru_2853FD1A8;
    do
    {
      v11 = [v4 characterAtIndex:v9];
      v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v16[(v11 - 10240)] length:1];
      v13 = [(__CFString *)v10 stringByAppendingString:v12];

      ++v9;
      v10 = v13;
    }

    while ([v4 length] > v9);
  }

  else
  {
    v13 = &stru_2853FD1A8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)brfToUnicode:(id)a3
{
  v4 = [a3 uppercaseString];
  v5 = [a1 brfTable];
  v6 = malloc_type_malloc(2 * [v4 length], 0x1000040BDFB0063uLL);
  if ([v4 length])
  {
    v7 = 0;
    do
    {
      v8 = [v4 substringWithRange:{v7, 1}];
      v6[v7] = [v5 rangeOfString:v8] + 10240;

      ++v7;
    }

    while ([v4 length] > v7);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithCharacters:v6 length:{objc_msgSend(v4, "length")}];
  free(v6);

  return v9;
}

+ (BOOL)isValidBRF:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__BRLTBrailleString_isValidBRF___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isValidBRF__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isValidBRF__onceToken, block);
  }

  v5 = [v4 uppercaseString];

  v6 = [v5 rangeOfCharacterFromSet:isValidBRF__nonBrfSet] == 0x7FFFFFFFFFFFFFFFLL;
  return v6;
}

void __32__BRLTBrailleString_isValidBRF___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) brfTable];
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v5];
  v2 = isValidBRF__brfSet;
  isValidBRF__brfSet = v1;

  v3 = [isValidBRF__brfSet invertedSet];
  v4 = isValidBRF__nonBrfSet;
  isValidBRF__nonBrfSet = v3;
}

+ (id)unicodeToBestEffortBrf:(id)a3
{
  v3 = a3;
  if (unicodeToBestEffortBrf__onceToken != -1)
  {
    +[BRLTBrailleString unicodeToBestEffortBrf:];
  }

  v4 = [MEMORY[0x277CCAB68] string];
  if ([v3 length])
  {
    v5 = 0;
    do
    {
      v6 = [v3 characterAtIndex:v5];
      v7 = v6 - 10240;
      if (v7 >= 0x40)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - 10240;
      }

      if (v7 >= 0x40)
      {
        v9 = v3;
      }

      else
      {
        v9 = unicodeToBestEffortBrf__brfTable;
      }

      v10 = [v9 substringWithRange:{v8, 1}];
      [v4 appendString:v10];

      ++v5;
    }

    while (v5 < [v3 length]);
  }

  return v4;
}

uint64_t __44__BRLTBrailleString_unicodeToBestEffortBrf___block_invoke()
{
  v0 = unicodeToBestEffortBrf__brfTable;
  unicodeToBestEffortBrf__brfTable = @" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ,*5<-U8V.%[$+X!&;:4\\0Z7(_?W]#Y)=";

  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ, *5<-U8V.%[$+X!&:4\\0Z7(_?W]#Y)="}];;
  v2 = unicodeToBestEffortBrf__brfSet;
  unicodeToBestEffortBrf__brfSet = v1;

  unicodeToBestEffortBrf__nonBrfSet = [unicodeToBestEffortBrf__brfSet invertedSet];

  return MEMORY[0x2821F96F8]();
}

- (id)bestEffortBrf
{
  v2 = [(BRLTBrailleString *)self unicode];
  v3 = [BRLTBrailleString unicodeToBestEffortBrf:v2];

  return v3;
}

- (BOOL)isEqualToBrailleString:(id)a3
{
  brailleChars = self->_brailleChars;
  v4 = [a3 brailleChars];
  LOBYTE(brailleChars) = [(NSMutableArray *)brailleChars isEqualToArray:v4];

  return brailleChars;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTBrailleString *)self isEqualToBrailleString:v4];
  }

  return v5;
}

@end