@interface ICPlatterLeadingWaveformView
- (double)_sliceScale;
- (double)slicePadding;
- (double)sliceWidth;
- (id)accessibilityLabel;
- (unint64_t)numberOfSlices;
@end

@implementation ICPlatterLeadingWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[ICRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 platterCompactViewSliceCount];

  return v3;
}

- (double)sliceWidth
{
  v7.receiver = self;
  v7.super_class = ICPlatterLeadingWaveformView;
  [(ICPlatterWaveformView *)&v7 sliceWidth];
  v4 = v3;
  [(ICPlatterLeadingWaveformView *)self _sliceScale];
  return v4 * v5;
}

- (double)slicePadding
{
  v7.receiver = self;
  v7.super_class = ICPlatterLeadingWaveformView;
  [(ICPlatterWaveformView *)&v7 slicePadding];
  v4 = v3;
  [(ICPlatterLeadingWaveformView *)self _sliceScale];
  return v4 * v5;
}

- (double)_sliceScale
{
  v3 = +[ICRecorderStyleProvider sharedStyleProvider];
  [v3 platterWaveformSliceScaleFactorForExpandedMode];
  v5 = v4;

  result = 1.0;
  if (self->_style)
  {
    return v5;
  }

  return result;
}

- (id)accessibilityLabel
{
  if (self->_style)
  {
    v2 = @"AX_WAVEFORM";
  }

  else
  {
    v2 = @"AX_JINDO_WAVEFORM";
  }

  v3 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v2, @"Waveform", 0, 1);

  return v3;
}

@end