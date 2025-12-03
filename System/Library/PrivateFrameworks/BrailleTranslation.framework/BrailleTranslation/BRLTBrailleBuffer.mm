@interface BRLTBrailleBuffer
- (BRLTBrailleBuffer)initWithBrailleString:(id)string;
- (BRLTBrailleString)brailleString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)deleteBrailleChar;
- (void)insertBrailleChar:(id)char modifiers:(id)modifiers inputMode:(unint64_t)mode;
@end

@implementation BRLTBrailleBuffer

- (BRLTBrailleBuffer)initWithBrailleString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = BRLTBrailleBuffer;
  v5 = [(BRLTBrailleBuffer *)&v9 init];
  if (stringCopy)
  {
    v6 = [stringCopy copy];
  }

  else
  {
    v6 = objc_alloc_init(BRLTBrailleString);
  }

  brailleString = v5->_brailleString;
  v5->_brailleString = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithBrailleString:", self->_brailleString}];
  *(result + 2) = self->_cursor;
  return result;
}

- (void)insertBrailleChar:(id)char modifiers:(id)modifiers inputMode:(unint64_t)mode
{
  charCopy = char;
  brailleString = self->_brailleString;
  modifiersCopy = modifiers;
  brailleChars = [(BRLTBrailleString *)brailleString brailleChars];
  v11 = [brailleChars mutableCopy];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:8];
  v13 = [modifiersCopy containsObject:v12];

  if (!v13)
  {
    goto LABEL_4;
  }

  if (mode == 2)
  {
    [charCopy setDot7:1];
LABEL_4:
    [v11 insertObject:charCopy atIndex:self->_cursor];
    goto LABEL_6;
  }

  v14 = [[BRLTBrailleChar alloc] initWithUnicode:@"⠠"];
  [v11 insertObject:charCopy atIndex:self->_cursor];
  [v11 insertObject:v14 atIndex:self->_cursor++];

LABEL_6:
  v15 = [[BRLTBrailleString alloc] initWithBrailleChars:v11];
  v16 = self->_brailleString;
  self->_brailleString = v15;

  ++self->_cursor;
}

- (void)deleteBrailleChar
{
  brailleChars = [(BRLTBrailleString *)self->_brailleString brailleChars];
  v7 = [brailleChars mutableCopy];

  if ([v7 count])
  {
    cursor = self->_cursor;
    if (cursor)
    {
      [v7 removeObjectAtIndex:cursor - 1];
      v5 = [[BRLTBrailleString alloc] initWithBrailleChars:v7];
      brailleString = self->_brailleString;
      self->_brailleString = v5;

      --self->_cursor;
    }
  }
}

- (BRLTBrailleString)brailleString
{
  v2 = [(BRLTBrailleString *)self->_brailleString copy];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRLTBrailleBuffer;
  v4 = [(BRLTBrailleBuffer *)&v8 description];
  v5 = [(BRLTBrailleString *)self->_brailleString description];
  v6 = [v3 stringWithFormat:@"%@: string<%@>, cursor<%ld>", v4, v5, self->_cursor];

  return v6;
}

@end