@interface SGTokenString
+ (id)stringWithString:(id)string range:(_NSRange)range confidence:(int)confidence;
- (_NSRange)range;
- (const)UTF8String;
- (const)_fastCStringContents:(BOOL)contents;
- (const)_fastCharacterContents;
- (unint64_t)fastestEncoding;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation SGTokenString

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)fastestEncoding
{
  if (*(self + 28))
  {
    return 1;
  }

  else
  {
    return 10;
  }
}

- (const)_fastCharacterContents
{
  if (*(self + 28))
  {
    return 0;
  }

  else
  {
    return &self->_contents;
  }
}

- (const)_fastCStringContents:(BOOL)contents
{
  if (*(self + 28))
  {
    return &self->_contents;
  }

  else
  {
    return 0;
  }
}

- (const)UTF8String
{
  if (*(self + 28))
  {
    return &self->_contents;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SGTokenString;
  return [(SGTokenString *)&v5 UTF8String];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > *(self + 7) >> 1)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if (*(self + 28))
  {
    if (length)
    {
      v8 = &self->_contents + location;
      do
      {
        v9 = *v8++;
        *characters++ = v9;
        --length;
      }

      while (length);
    }
  }

  else
  {

    memcpy(characters, &self->_contents + 2 * location, 2 * length);
  }
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (index >= *(self + 7) >> 1)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  p_contents = &self->_contents;
  if (*(self + 28))
  {
    return *(p_contents + index);
  }

  else
  {
    return *(p_contents + index);
  }
}

+ (id)stringWithString:(id)string range:(_NSRange)range confidence:(int)confidence
{
  length = range.length;
  location = range.location;
  if (!string)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if ([string length] >> 31)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v11 = [string canBeConvertedToEncoding:1];
  v12 = [class_createInstance(self (objc_msgSend(string];
  *(v12 + 8) = location;
  *(v12 + 16) = length;
  *(v12 + 24) = confidence;
  *(v12 + 28) = *(v12 + 28) & 0xFE | v11;
  *(v12 + 28) = *(v12 + 28) & 1 | (2 * [string length]);
  if ((v11 ^ 1))
  {
    [string getCharacters:v12 + 32];
  }

  else
  {
    [string getBytes:v12 + 32 maxLength:0 usedLength:*(v12 + 28) >> 1 encoding:0 options:? range:? remainingRange:?];
  }

  return v12;
}

@end