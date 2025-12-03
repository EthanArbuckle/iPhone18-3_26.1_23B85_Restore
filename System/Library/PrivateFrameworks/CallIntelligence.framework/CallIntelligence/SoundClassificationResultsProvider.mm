@interface SoundClassificationResultsProvider
- (_TtC16CallIntelligence34SoundClassificationResultsProvider)init;
- (void)mediaAnalyzer:(id)analyzer didEnable:(BOOL)enable error:(id)error;
- (void)mediaAnalyzer:(id)analyzer didProduceMediaAnalysisResult:(id)result streamToken:(int64_t)token;
- (void)mediaAnalyzerServerDidDie:(id)die;
@end

@implementation SoundClassificationResultsProvider

- (_TtC16CallIntelligence34SoundClassificationResultsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mediaAnalyzer:(id)analyzer didEnable:(BOOL)enable error:(id)error
{
  analyzerCopy = analyzer;
  selfCopy = self;
  errorCopy = error;
  sub_1D2EA238C(enable, error);
}

- (void)mediaAnalyzer:(id)analyzer didProduceMediaAnalysisResult:(id)result streamToken:(int64_t)token
{
  analyzerCopy = analyzer;
  resultCopy = result;
  selfCopy = self;
  sub_1D2EA2678(resultCopy, token);
}

- (void)mediaAnalyzerServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_1D2EA28B0();
}

@end