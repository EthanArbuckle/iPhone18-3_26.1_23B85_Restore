@interface CaptionProvider
- (_TtC16CallIntelligence15CaptionProvider)init;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didProduceLanguageHypothesis:(id)hypothesis;
- (void)captionsClient:(id)client didStopLanguageDetectorWithError:(id)error;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
@end

@implementation CaptionProvider

- (_TtC16CallIntelligence15CaptionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_1D2E86560();
}

- (void)captionsClient:(id)client didProduceLanguageHypothesis:(id)hypothesis
{
  v6 = type metadata accessor for LanguageDetectorResult(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  hypothesisCopy = hypothesis;
  selfCopy = self;
  dominantLocale = [hypothesisCopy dominantLocale];
  sub_1D2EE3F28();

  [hypothesisCopy dominantLocaleConfidence];
  *&v10[*(v7 + 28)] = v14;
  sub_1D2E83890(v10);

  sub_1D2E87884(v10);
}

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1D2E86CEC(captions, error);
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1D2E86EFC(captions, error);
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_1D2E8710C(captionsCopy);
}

- (void)captionsClient:(id)client didStopLanguageDetectorWithError:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_1D2E87384(error);
}

@end