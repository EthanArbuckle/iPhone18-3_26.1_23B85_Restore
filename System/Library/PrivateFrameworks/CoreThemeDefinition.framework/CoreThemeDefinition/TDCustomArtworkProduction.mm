@interface TDCustomArtworkProduction
- (void)setDateOfLastChange:(id)change;
@end

@implementation TDCustomArtworkProduction

- (void)setDateOfLastChange:(id)change
{
  if (![(TDCustomArtworkProduction *)self hasCustomDateOfLastChange])
  {

    [(TDCustomArtworkProduction *)self setPrimitiveValue:change forKey:@"dateOfLastChange"];
  }
}

@end