@interface ICASPaletteEngagementType
- (ICASPaletteEngagementType)initWithPaletteEngagementType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASPaletteEngagementType

- (ICASPaletteEngagementType)initWithPaletteEngagementType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASPaletteEngagementType;
  result = [(ICASPaletteEngagementType *)&v5 init];
  if (result)
  {
    result->_paletteEngagementType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  if ([(ICASPaletteEngagementType *)self paletteEngagementType])
  {
    return @"movePalette";
  }

  else
  {
    return @"unknown";
  }
}

@end