@interface TDThemeLook
- (BOOL)supportsContrastAdjustment;
- (void)setSupportsContrastAdjustment:(BOOL)adjustment;
@end

@implementation TDThemeLook

- (void)setSupportsContrastAdjustment:(BOOL)adjustment
{
  if (*(&self->super._identifier + 4) != adjustment)
  {
    [(TDThemeLook *)self willChangeValueForKey:@"supportsContrastAdjustment"];
    *(&self->super._identifier + 4) = adjustment;

    [(TDThemeLook *)self didChangeValueForKey:@"supportsContrastAdjustment"];
  }
}

- (BOOL)supportsContrastAdjustment
{
  [(TDThemeLook *)self willAccessValueForKey:@"supportsContrastAdjustment"];
  v3 = *(&self->super._identifier + 4);
  [(TDThemeLook *)self didAccessValueForKey:@"supportsContrastAdjustment"];
  return v3;
}

@end