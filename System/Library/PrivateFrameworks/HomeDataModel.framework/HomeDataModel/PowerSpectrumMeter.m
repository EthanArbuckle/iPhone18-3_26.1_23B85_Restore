@interface PowerSpectrumMeter
- (_TtC13HomeDataModel18PowerSpectrumMeter)init;
- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4;
@end

@implementation PowerSpectrumMeter

- (_TtC13HomeDataModel18PowerSpectrumMeter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    sub_1D1741B10(0, &qword_1EC6445D8, 0x1E6986548);
    sub_1D17EC890();
    v4 = sub_1D1E675FC();
  }

  v7 = a3;
  v8 = self;
  sub_1D17EC360(v4);
}

@end