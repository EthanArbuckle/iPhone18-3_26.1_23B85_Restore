@interface GEOAppleRating(MURatingPercentageViewModel)
- (id)categoryTitle;
@end

@implementation GEOAppleRating(MURatingPercentageViewModel)

- (id)categoryTitle
{
  if ([self ratingType])
  {
    [self localizedTitle];
  }

  else
  {
    _MULocalizedStringFromThisBundle(@"Overall [Placecard]");
  }
  v2 = ;

  return v2;
}

@end