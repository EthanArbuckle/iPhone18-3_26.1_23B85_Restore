@interface TDNamedArtworkProduction
- (void)setDateOfLastChange:(id)change;
@end

@implementation TDNamedArtworkProduction

- (void)setDateOfLastChange:(id)change
{
  if (![(TDNamedArtworkProduction *)self hasCustomDateOfLastChange])
  {

    [(TDNamedArtworkProduction *)self setPrimitiveValue:change forKey:@"dateOfLastChange"];
  }
}

@end