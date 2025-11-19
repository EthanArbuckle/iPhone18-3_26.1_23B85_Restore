@interface TDNamedArtworkProduction
- (void)setDateOfLastChange:(id)a3;
@end

@implementation TDNamedArtworkProduction

- (void)setDateOfLastChange:(id)a3
{
  if (![(TDNamedArtworkProduction *)self hasCustomDateOfLastChange])
  {

    [(TDNamedArtworkProduction *)self setPrimitiveValue:a3 forKey:@"dateOfLastChange"];
  }
}

@end