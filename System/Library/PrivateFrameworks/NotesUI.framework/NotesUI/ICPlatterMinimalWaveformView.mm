@interface ICPlatterMinimalWaveformView
- (unint64_t)numberOfSlices;
@end

@implementation ICPlatterMinimalWaveformView

- (unint64_t)numberOfSlices
{
  v2 = +[ICRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 platterMinimalViewSliceCount];

  return v3;
}

@end