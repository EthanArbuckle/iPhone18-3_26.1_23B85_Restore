@interface CUICatalog(LIRepSelection)
- (id)_LI_iconImageWithName:()LIRepSelection size:scale:idiom:subtype:gamut:layoutDirection:;
@end

@implementation CUICatalog(LIRepSelection)

- (id)_LI_iconImageWithName:()LIRepSelection size:scale:idiom:subtype:gamut:layoutDirection:
{
  v18 = a6;
  v19 = [a1 iconImageWithName:v18 scaleFactor:a7 deviceIdiom:a8 deviceSubtype:a9 displayGamut:a10 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:a2 desiredSize:{a3, 0}];
  if (!v19 && a7 <= 5 && ((1 << a7) & 0x34) != 0)
  {
    v19 = [a1 iconImageWithName:v18 scaleFactor:1 deviceIdiom:a8 deviceSubtype:a9 displayGamut:a10 layoutDirection:0 sizeClassHorizontal:a4 sizeClassVertical:a2 desiredSize:{a3, 0}];
  }

  return v19;
}

@end