@interface CaptionProvider
- (_TtC16CallIntelligence15CaptionProvider)init;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didProduceLanguageHypothesis:(id)a4;
- (void)captionsClient:(id)a3 didStopLanguageDetectorWithError:(id)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
@end

@implementation CaptionProvider

- (_TtC16CallIntelligence15CaptionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captionsServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D2E86560();
}

- (void)captionsClient:(id)a3 didProduceLanguageHypothesis:(id)a4
{
  v6 = type metadata accessor for LanguageDetectorResult(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4;
  v12 = self;
  v13 = [v11 dominantLocale];
  sub_1D2EE3F28();

  [v11 dominantLocaleConfidence];
  *&v10[*(v7 + 28)] = v14;
  sub_1D2E83890(v10);

  sub_1D2E87884(v10);
}

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1D2E86CEC(a4, a5);
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1D2E86EFC(a4, a5);
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1D2E8710C(v8);
}

- (void)captionsClient:(id)a3 didStopLanguageDetectorWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1D2E87384(a4);
}

@end