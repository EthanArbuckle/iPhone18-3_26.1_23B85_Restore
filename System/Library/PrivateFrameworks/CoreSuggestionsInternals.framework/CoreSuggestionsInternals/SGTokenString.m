@interface SGTokenString
+ (id)stringWithString:(id)a3 range:(_NSRange)a4 confidence:(int)a5;
- (_NSRange)range;
- (const)UTF8String;
- (const)_fastCStringContents:(BOOL)a3;
- (const)_fastCharacterContents;
- (unint64_t)fastestEncoding;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
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

- (const)_fastCStringContents:(BOOL)a3
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

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > *(self + 7) >> 1)
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
        *a3++ = v9;
        --length;
      }

      while (length);
    }
  }

  else
  {

    memcpy(a3, &self->_contents + 2 * location, 2 * length);
  }
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  if (a3 >= *(self + 7) >> 1)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  p_contents = &self->_contents;
  if (*(self + 28))
  {
    return *(p_contents + a3);
  }

  else
  {
    return *(p_contents + a3);
  }
}

+ (id)stringWithString:(id)a3 range:(_NSRange)a4 confidence:(int)a5
{
  length = a4.length;
  location = a4.location;
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  if ([a3 length] >> 31)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  v11 = [a3 canBeConvertedToEncoding:1];
  v12 = [class_createInstance(a1 (objc_msgSend(a3];
  *(v12 + 8) = location;
  *(v12 + 16) = length;
  *(v12 + 24) = a5;
  *(v12 + 28) = *(v12 + 28) & 0xFE | v11;
  *(v12 + 28) = *(v12 + 28) & 1 | (2 * [a3 length]);
  if ((v11 ^ 1))
  {
    [a3 getCharacters:v12 + 32];
  }

  else
  {
    [a3 getBytes:v12 + 32 maxLength:0 usedLength:*(v12 + 28) >> 1 encoding:0 options:? range:? remainingRange:?];
  }

  return v12;
}

@end