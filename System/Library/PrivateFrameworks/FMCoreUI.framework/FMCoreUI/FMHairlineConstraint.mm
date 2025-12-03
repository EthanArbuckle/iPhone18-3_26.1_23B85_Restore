@interface FMHairlineConstraint
- (double)pixelHeight;
- (void)setPixelHeight:(double)height;
@end

@implementation FMHairlineConstraint

- (double)pixelHeight
{
  [(FMHairlineConstraint *)self constant];
  v3 = v2;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v3 * v5;

  return v6;
}

- (void)setPixelHeight:(double)height
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(FMHairlineConstraint *)self setConstant:height / v5];
}

@end