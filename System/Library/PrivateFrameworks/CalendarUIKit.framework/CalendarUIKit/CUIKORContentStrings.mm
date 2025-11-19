@interface CUIKORContentStrings
- (NSArray)nonNilComponents;
@end

@implementation CUIKORContentStrings

- (NSArray)nonNilComponents
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v4 = [(CUIKORContentStrings *)self titleString];

  if (v4)
  {
    v5 = [(CUIKORContentStrings *)self titleString];
    [v3 addObject:v5];
  }

  v6 = [(CUIKORContentStrings *)self locationString];

  if (v6)
  {
    v7 = [(CUIKORContentStrings *)self locationString];
    [v3 addObject:v7];
  }

  v8 = [(CUIKORContentStrings *)self timeString];

  if (v8)
  {
    v9 = [(CUIKORContentStrings *)self timeString];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

@end