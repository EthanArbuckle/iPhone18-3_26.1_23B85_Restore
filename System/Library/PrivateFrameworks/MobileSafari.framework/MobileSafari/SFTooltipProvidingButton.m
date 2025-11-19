@interface SFTooltipProvidingButton
- (SFTooltip)tooltip;
@end

@implementation SFTooltipProvidingButton

- (SFTooltip)tooltip
{
  tooltipTextProvider = self->_tooltipTextProvider;
  if (tooltipTextProvider && (tooltipTextProvider[2](tooltipTextProvider, a2), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [[SFTooltip alloc] initWithText:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end