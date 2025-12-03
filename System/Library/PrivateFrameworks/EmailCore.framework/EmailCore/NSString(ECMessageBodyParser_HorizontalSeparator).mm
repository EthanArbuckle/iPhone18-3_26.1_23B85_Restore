@interface NSString(ECMessageBodyParser_HorizontalSeparator)
- (BOOL)ec_isHorizontalSeparator;
@end

@implementation NSString(ECMessageBodyParser_HorizontalSeparator)

- (BOOL)ec_isHorizontalSeparator
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if ((v2 - 201) < 0xFFFFFFFFFFFFFF3ALL)
  {
    result = 0;
LABEL_8:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = v2;
  _fastCharacterContents = [self _fastCharacterContents];
  if (!_fastCharacterContents)
  {
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[23] = v7;
    v9[24] = v7;
    v9[21] = v7;
    v9[22] = v7;
    v9[19] = v7;
    v9[20] = v7;
    v9[17] = v7;
    v9[18] = v7;
    v9[15] = v7;
    v9[16] = v7;
    v9[13] = v7;
    v9[14] = v7;
    v9[11] = v7;
    v9[12] = v7;
    v9[9] = v7;
    v9[10] = v7;
    v9[7] = v7;
    v9[8] = v7;
    v9[5] = v7;
    v9[6] = v7;
    v9[3] = v7;
    v9[4] = v7;
    v9[1] = v7;
    v9[2] = v7;
    v9[0] = v7;
    [self getCharacters:v9 range:{0, v4}];
    result = bufferIsHorizontalSeparator(v9, v9 + 2 * v4);
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277D85DE8];

  return bufferIsHorizontalSeparator(_fastCharacterContents, &_fastCharacterContents[2 * v4]);
}

@end