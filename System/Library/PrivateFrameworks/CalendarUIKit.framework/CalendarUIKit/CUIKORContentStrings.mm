@interface CUIKORContentStrings
- (NSArray)nonNilComponents;
@end

@implementation CUIKORContentStrings

- (NSArray)nonNilComponents
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  titleString = [(CUIKORContentStrings *)self titleString];

  if (titleString)
  {
    titleString2 = [(CUIKORContentStrings *)self titleString];
    [v3 addObject:titleString2];
  }

  locationString = [(CUIKORContentStrings *)self locationString];

  if (locationString)
  {
    locationString2 = [(CUIKORContentStrings *)self locationString];
    [v3 addObject:locationString2];
  }

  timeString = [(CUIKORContentStrings *)self timeString];

  if (timeString)
  {
    timeString2 = [(CUIKORContentStrings *)self timeString];
    [v3 addObject:timeString2];
  }

  v10 = [v3 copy];

  return v10;
}

@end