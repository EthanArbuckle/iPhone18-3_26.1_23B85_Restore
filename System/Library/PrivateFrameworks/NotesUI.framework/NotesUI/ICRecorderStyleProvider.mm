@interface ICRecorderStyleProvider
+ (id)sharedStyleProvider;
- (double)platterWaveformWidthCompact;
- (id)_platterTimeLabelFontWithTextStyle:(id)style traitCollection:(id)collection;
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

- (id)_platterTimeLabelFontWithTextStyle:(id)style traitCollection:(id)collection
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:style compatibleWithTraitCollection:collection];
  v5 = MEMORY[0x1E69DB878];
  [v4 pointSize];
  v6 = [v5 monospacedDigitSystemFontOfSize:? weight:?];

  return v6;
}

- (double)platterWaveformWidthCompact
{
  platterCompactViewSliceCount = [(ICRecorderStyleProvider *)self platterCompactViewSliceCount];
  [(ICRecorderStyleProvider *)self platterWaveformSliceWidth];
  v5 = v4;
  [(ICRecorderStyleProvider *)self platterWaveformSlicePadding];
  return v6 * platterCompactViewSliceCount + platterCompactViewSliceCount * v5;
}

@end