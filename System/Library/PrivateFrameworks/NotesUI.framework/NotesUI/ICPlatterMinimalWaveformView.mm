@interface ICPlatterMinimalWaveformView
- (unint64_t)numberOfSlices;
@end

@implementation ICPlatterMinimalWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[ICRecorderStyleProvider sharedStyleProvider];
  platterMinimalViewSliceCount = [v2 platterMinimalViewSliceCount];

  return platterMinimalViewSliceCount;
}

@end