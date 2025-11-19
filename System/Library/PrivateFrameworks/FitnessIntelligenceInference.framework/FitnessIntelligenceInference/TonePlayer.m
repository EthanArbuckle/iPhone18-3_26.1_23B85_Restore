@interface TonePlayer
- (_TtC28FitnessIntelligenceInference10TonePlayer)init;
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
@end

@implementation TonePlayer

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_20CCCAC50(a4);
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_20CCCAEE0(a4);
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