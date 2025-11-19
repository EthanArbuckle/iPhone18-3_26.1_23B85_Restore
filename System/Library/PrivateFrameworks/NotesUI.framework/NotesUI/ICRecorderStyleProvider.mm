@interface ICRecorderStyleProvider
+ (id)sharedStyleProvider;
- (double)platterWaveformWidthCompact;
- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4;
@end

@implementation ICRecorderStyleProvider

+ (id)sharedStyleProvider
{
  if (sharedStyleProvider_onceToken != -1)
  {
    +[ICRecorderStyleProvider sharedStyleProvider];
  }

  v3 = sharedStyleProvider__sharedStyleProvider;

  return v3;
}

uint64_t __46__ICRecorderStyleProvider_sharedStyleProvider__block_invoke()
{
  sharedStyleProvider__sharedStyleProvider = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)_platterTimeLabelFontWithTextStyle:(id)a3 traitCollection:(id)a4
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a4];
  v5 = MEMORY[0x1E69DB878];
  [v4 pointSize];
  v6 = [v5 monospacedDigitSystemFontOfSize:? weight:?];

  return v6;
}

- (double)platterWaveformWidthCompact
{
  v3 = [(ICRecorderStyleProvider *)self platterCompactViewSliceCount];
  [(ICRecorderStyleProvider *)self platterWaveformSliceWidth];
  v5 = v4;
  [(ICRecorderStyleProvider *)self platterWaveformSlicePadding];
  return v6 * v3 + v3 * v5;
}

@end