@interface MFMessageDisplayMetricsRegular
- (double)headerBottomPadding;
- (double)topToSenderBaseline;
@end

@implementation MFMessageDisplayMetricsRegular

- (double)topToSenderBaseline
{
  [(MFMessageDisplayMetrics *)self _scaledFloatWithValue:*MEMORY[0x277D76918] fontStyle:34.0];
  v4 = v3;
  if (![(MFMessageDisplayMetrics *)self hasGenerousMargins])
  {
    return v4;
  }

  [(MFMessageDisplayMetrics *)self layoutMargins];
  return v4 + v5 * 0.4;
}

- (double)headerBottomPadding
{
  v2 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_7 forKey:@"messageRegularDisplayMetrics.bodyFont"];

  v4 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__MFMessageDisplayMetricsRegular_headerBottomPadding__block_invoke_2;
  v9[3] = &unk_278181B68;
  v5 = v3;
  v10 = v5;
  [v4 cachedFloat:v9 forKey:@"messageRegularDisplayMetrics.headerBottomPadding"];
  v7 = v6;

  return v7;
}

id __53__MFMessageDisplayMetricsRegular_headerBottomPadding__block_invoke()
{
  v0 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0x10000 options:0];
  v1 = [MEMORY[0x277D74300] fontWithDescriptor:v0 size:0.0];

  return v1;
}

uint64_t __53__MFMessageDisplayMetricsRegular_headerBottomPadding__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _scaledValueForValue:56.0];
  [*(a1 + 32) lineHeight];

  return UIRoundToViewScale();
}

@end