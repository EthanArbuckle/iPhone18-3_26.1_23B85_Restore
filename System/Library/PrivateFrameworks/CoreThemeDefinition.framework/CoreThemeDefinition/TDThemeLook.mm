@interface TDThemeLook
- (BOOL)supportsContrastAdjustment;
- (void)setSupportsContrastAdjustment:(BOOL)a3;
@end

@implementation TDThemeLook

- (void)setSupportsContrastAdjustment:(BOOL)a3
{
  if (*(&self->super._identifier + 4) != a3)
  {
    [(TDThemeLook *)self willChangeValueForKey:@"supportsContrastAdjustment"];
    *(&self->super._identifier + 4) = a3;

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