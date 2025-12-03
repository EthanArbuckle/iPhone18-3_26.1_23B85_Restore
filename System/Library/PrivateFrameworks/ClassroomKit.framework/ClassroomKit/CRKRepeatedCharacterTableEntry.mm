@interface CRKRepeatedCharacterTableEntry
- (CRKRepeatedCharacterTableEntry)initWithCharacter:(char)character;
- (id)stringValueWithLength:(unint64_t)length;
@end

@implementation CRKRepeatedCharacterTableEntry

- (CRKRepeatedCharacterTableEntry)initWithCharacter:(char)character
{
  v5.receiver = self;
  v5.super_class = CRKRepeatedCharacterTableEntry;
  result = [(CRKRepeatedCharacterTableEntry *)&v5 init];
  if (result)
  {
    result->mCharacter = character;
  }

  return result;
}

- (id)stringValueWithLength:(unint64_t)length
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", self->mCharacter];
  v5 = [&stru_285643BE8 stringByPaddingToLength:length withString:v4 startingAtIndex:0];

  return v5;
}

@end