@interface PowerSpectrumMeter
- (_TtC13HomeDataModel18PowerSpectrumMeter)init;
- (void)audioPowerSpectrumMeter:(id)meter didUpdateAudioPowerSpectrums:(id)spectrums;
@end

@implementation PowerSpectrumMeter

- (_TtC13HomeDataModel18PowerSpectrumMeter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)audioPowerSpectrumMeter:(id)meter didUpdateAudioPowerSpectrums:(id)spectrums
{
  spectrumsCopy = spectrums;
  if (spectrums)
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    sub_1D1741B10(0, &qword_1EC6445D8, 0x1E6986548);
    sub_1D17EC890();
    spectrumsCopy = sub_1D1E675FC();
  }

  meterCopy = meter;
  selfCopy = self;
  sub_1D17EC360(spectrumsCopy);
}

@end