@interface WaveformController
- (_TtC13MediaControls18WaveformController)init;
- (void)audioAnalyzer:(id)analyzer didUpdateWaveform:(id)waveform;
@end

@implementation WaveformController

- (void)audioAnalyzer:(id)analyzer didUpdateWaveform:(id)waveform
{
  waveformCopy = waveform;
  selfCopy = self;
  sub_1A22D2CF8(waveformCopy, 1);
}

- (_TtC13MediaControls18WaveformController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end