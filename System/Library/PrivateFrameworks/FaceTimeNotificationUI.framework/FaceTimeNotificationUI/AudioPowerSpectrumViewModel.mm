@interface AudioPowerSpectrumViewModel
- (_TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel)init;
- (void)dealloc;
- (void)frequencyController:(id)controller spectrumChanged:(id)changed forParticipantWithStreamToken:(int64_t)token;
- (void)updateTelephonySpectrum;
@end

@implementation AudioPowerSpectrumViewModel

- (void)dealloc
{
  selfCopy = self;
  sub_24AA695C4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for AudioPowerSpectrumViewModel();
  [(AudioPowerSpectrumViewModel *)&v3 dealloc];
}

- (void)frequencyController:(id)controller spectrumChanged:(id)changed forParticipantWithStreamToken:(int64_t)token
{
  sub_24AA442A0(0, &unk_27EF863E0, 0x277CCABB0);
  v8 = sub_24AAB5024();
  controllerCopy = controller;
  selfCopy = self;
  sub_24AA6A080(v8, token);
}

- (void)updateTelephonySpectrum
{
  selfCopy = self;
  sub_24AA699A0();
}

- (_TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end