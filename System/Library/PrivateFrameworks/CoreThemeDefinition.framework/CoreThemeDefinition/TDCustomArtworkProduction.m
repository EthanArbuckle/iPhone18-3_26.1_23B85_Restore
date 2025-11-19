@interface TDCustomArtworkProduction
- (void)setDateOfLastChange:(id)a3;
@end

@implementation TDCustomArtworkProduction

- (void)setDateOfLastChange:(id)a3
{
  if (![(TDCustomArtworkProduction *)self hasCustomDateOfLastChange])
  {

    [(TDCustomArtworkProduction *)self setPrimitiveValue:a3 forKey:@"dateOfLastChange"];
  }
}

@end