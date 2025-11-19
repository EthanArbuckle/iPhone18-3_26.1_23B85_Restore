@interface CRKRepeatedCharacterTableEntry
- (CRKRepeatedCharacterTableEntry)initWithCharacter:(char)a3;
- (id)stringValueWithLength:(unint64_t)a3;
@end

@implementation CRKRepeatedCharacterTableEntry

- (CRKRepeatedCharacterTableEntry)initWithCharacter:(char)a3
{
  v5.receiver = self;
  v5.super_class = CRKRepeatedCharacterTableEntry;
  result = [(CRKRepeatedCharacterTableEntry *)&v5 init];
  if (result)
  {
    result->mCharacter = a3;
  }

  return result;
}

- (id)stringValueWithLength:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", self->mCharacter];
  v5 = [&stru_285643BE8 stringByPaddingToLength:a3 withString:v4 startingAtIndex:0];

  return v5;
}

@end