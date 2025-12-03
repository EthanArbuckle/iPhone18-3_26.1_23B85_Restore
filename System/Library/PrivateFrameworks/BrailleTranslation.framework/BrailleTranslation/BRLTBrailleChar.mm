@interface BRLTBrailleChar
+ (id)charWithBrf:(id)brf;
+ (id)charWithUnicode:(id)unicode;
- (BOOL)isEqual:(id)equal;
- (BRLTBrailleChar)initWithBits:(unsigned __int8)bits;
- (BRLTBrailleChar)initWithBrf:(id)brf;
- (BRLTBrailleChar)initWithUnicode:(id)unicode;
- (NSString)unicode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setDot:(int)dot up:(BOOL)up;
@end

@implementation BRLTBrailleChar

- (BRLTBrailleChar)initWithBits:(unsigned __int8)bits
{
  v5.receiver = self;
  v5.super_class = BRLTBrailleChar;
  result = [(BRLTBrailleChar *)&v5 init];
  result->_bits = bits;
  return result;
}

- (BRLTBrailleChar)initWithUnicode:(id)unicode
{
  v4 = [unicode characterAtIndex:0];

  return [(BRLTBrailleChar *)self initWithUnichar:v4];
}

- (BRLTBrailleChar)initWithBrf:(id)brf
{
  v4 = [BRLTBrailleString brfToUnicode:brf];
  v5 = [(BRLTBrailleChar *)self initWithUnicode:v4];

  return v5;
}

+ (id)charWithUnicode:(id)unicode
{
  unicodeCopy = unicode;
  v4 = [[BRLTBrailleChar alloc] initWithUnicode:unicodeCopy];

  return v4;
}

+ (id)charWithBrf:(id)brf
{
  brfCopy = brf;
  v4 = [[BRLTBrailleChar alloc] initWithBrf:brfCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BRLTBrailleChar allocWithZone:zone];
  bits = self->_bits;

  return [(BRLTBrailleChar *)v4 initWithBits:bits];
}

- (NSString)unicode
{
  v4 = self->_bits | 0x2800;
  v2 = [MEMORY[0x277CCACA8] stringWithCharacters:&v4 length:1];

  return v2;
}

- (void)_setDot:(int)dot up:(BOOL)up
{
  v4 = 1 << (dot - 1);
  bits = self->_bits;
  v6 = bits & ~v4;
  v7 = bits | v4;
  if (!up)
  {
    v7 = v6;
  }

  self->_bits = v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTBrailleChar *)self isEqualToBrailleChar:equalCopy];
  }

  return v5;
}

- (id)description
{
  unicode = [(BRLTBrailleChar *)self unicode];
  v3 = [BRLTBrailleString unicodeToBestEffortBrf:unicode];

  return v3;
}

@end