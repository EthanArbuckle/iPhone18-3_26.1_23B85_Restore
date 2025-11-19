@interface ICASPalettePosition
- (ICASPalettePosition)initWithPalettePosition:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASPalettePosition

- (ICASPalettePosition)initWithPalettePosition:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASPalettePosition;
  result = [(ICASPalettePosition *)&v5 init];
  if (result)
  {
    result->_palettePosition = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASPalettePosition *)self palettePosition];
  if ((v3 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF1B0[v3 - 1];
  }
}

@end