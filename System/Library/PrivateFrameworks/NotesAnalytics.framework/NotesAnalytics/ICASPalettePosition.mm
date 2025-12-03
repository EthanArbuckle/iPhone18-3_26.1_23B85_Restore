@interface ICASPalettePosition
- (ICASPalettePosition)initWithPalettePosition:(int64_t)position;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASPalettePosition

- (ICASPalettePosition)initWithPalettePosition:(int64_t)position
{
  v5.receiver = self;
  v5.super_class = ICASPalettePosition;
  result = [(ICASPalettePosition *)&v5 init];
  if (result)
  {
    result->_palettePosition = position;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  palettePosition = [(ICASPalettePosition *)self palettePosition];
  if ((palettePosition - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF1B0[palettePosition - 1];
  }
}

@end