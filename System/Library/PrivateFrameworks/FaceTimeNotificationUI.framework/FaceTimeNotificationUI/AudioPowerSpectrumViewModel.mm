@interface AudioPowerSpectrumViewModel
- (_TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel)init;
- (void)dealloc;
- (void)frequencyController:(id)a3 spectrumChanged:(id)a4 forParticipantWithStreamToken:(int64_t)a5;
- (void)updateTelephonySpectrum;
@end

@implementation AudioPowerSpectrumViewModel

- (void)dealloc
{
  v2 = self;
  sub_24AA695C4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for AudioPowerSpectrumViewModel();
  [(AudioPowerSpectrumViewModel *)&v3 dealloc];
}

- (void)frequencyController:(id)a3 spectrumChanged:(id)a4 forParticipantWithStreamToken:(int64_t)a5
{
  sub_24AA442A0(0, &unk_27EF863E0, 0x277CCABB0);
  v8 = sub_24AAB5024();
  v9 = a3;
  v10 = self;
  sub_24AA6A080(v8, a5);
}

- (void)updateTelephonySpectrum
{
  v2 = self;
  sub_24AA699A0();
}

- (_TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end