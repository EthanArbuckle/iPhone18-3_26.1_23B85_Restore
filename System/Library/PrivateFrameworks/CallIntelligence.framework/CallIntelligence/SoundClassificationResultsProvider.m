@interface SoundClassificationResultsProvider
- (_TtC16CallIntelligence34SoundClassificationResultsProvider)init;
- (void)mediaAnalyzer:(id)a3 didEnable:(BOOL)a4 error:(id)a5;
- (void)mediaAnalyzer:(id)a3 didProduceMediaAnalysisResult:(id)a4 streamToken:(int64_t)a5;
- (void)mediaAnalyzerServerDidDie:(id)a3;
@end

@implementation SoundClassificationResultsProvider

- (_TtC16CallIntelligence34SoundClassificationResultsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mediaAnalyzer:(id)a3 didEnable:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1D2EA238C(a4, a5);
}

- (void)mediaAnalyzer:(id)a3 didProduceMediaAnalysisResult:(id)a4 streamToken:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D2EA2678(v9, a5);
}

- (void)mediaAnalyzerServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D2EA28B0();
}

@end