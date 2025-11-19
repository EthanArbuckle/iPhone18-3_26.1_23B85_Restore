@interface BRLTBrailleChar
+ (id)charWithBrf:(id)a3;
+ (id)charWithUnicode:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BRLTBrailleChar)initWithBits:(unsigned __int8)a3;
- (BRLTBrailleChar)initWithBrf:(id)a3;
- (BRLTBrailleChar)initWithUnicode:(id)a3;
- (NSString)unicode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setDot:(int)a3 up:(BOOL)a4;
@end

@implementation BRLTBrailleChar

- (BRLTBrailleChar)initWithBits:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = BRLTBrailleChar;
  result = [(BRLTBrailleChar *)&v5 init];
  result->_bits = a3;
  return result;
}

- (BRLTBrailleChar)initWithUnicode:(id)a3
{
  v4 = [a3 characterAtIndex:0];

  return [(BRLTBrailleChar *)self initWithUnichar:v4];
}

- (BRLTBrailleChar)initWithBrf:(id)a3
{
  v4 = [BRLTBrailleString brfToUnicode:a3];
  v5 = [(BRLTBrailleChar *)self initWithUnicode:v4];

  return v5;
}

+ (id)charWithUnicode:(id)a3
{
  v3 = a3;
  v4 = [[BRLTBrailleChar alloc] initWithUnicode:v3];

  return v4;
}

+ (id)charWithBrf:(id)a3
{
  v3 = a3;
  v4 = [[BRLTBrailleChar alloc] initWithBrf:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BRLTBrailleChar allocWithZone:a3];
  bits = self->_bits;

  return [(BRLTBrailleChar *)v4 initWithBits:bits];
}

- (NSString)unicode
{
  v4 = self->_bits | 0x2800;
  v2 = [MEMORY[0x277CCACA8] stringWithCharacters:&v4 length:1];

  return v2;
}

- (void)_setDot:(int)a3 up:(BOOL)a4
{
  v4 = 1 << (a3 - 1);
  bits = self->_bits;
  v6 = bits & ~v4;
  v7 = bits | v4;
  if (!a4)
  {
    v7 = v6;
  }

  self->_bits = v7;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRLTBrailleChar *)self isEqualToBrailleChar:v4];
  }

  return v5;
}

- (id)description
{
  v2 = [(BRLTBrailleChar *)self unicode];
  v3 = [BRLTBrailleString unicodeToBestEffortBrf:v2];

  return v3;
}

@end