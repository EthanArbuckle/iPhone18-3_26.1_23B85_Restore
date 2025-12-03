@interface TonePlayer
- (_TtC28FitnessIntelligenceInference10TonePlayer)init;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
@end

@implementation TonePlayer

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  playingCopy = playing;
  selfCopy = self;
  sub_20CCCAC50(successfully);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  occurCopy = occur;
  selfCopy = self;
  errorCopy = error;
  sub_20CCCAEE0(error);
}

- (_TtC28FitnessIntelligenceInference10TonePlayer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_player) = 0;
  v3 = OBJC_IVAR____TtC28FitnessIntelligenceInference10TonePlayer_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for TonePlayer();
  return [(TonePlayer *)&v6 init];
}

@end