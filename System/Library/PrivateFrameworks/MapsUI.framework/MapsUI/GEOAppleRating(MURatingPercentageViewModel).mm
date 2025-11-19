@interface GEOAppleRating(MURatingPercentageViewModel)
- (id)categoryTitle;
@end

@implementation GEOAppleRating(MURatingPercentageViewModel)

- (id)categoryTitle
{
  if ([a1 ratingType])
  {
    [a1 localizedTitle];
  }

  else
  {
    _MULocalizedStringFromThisBundle(@"Overall [Placecard]");
  }
  v2 = ;

  return v2;
}

@end