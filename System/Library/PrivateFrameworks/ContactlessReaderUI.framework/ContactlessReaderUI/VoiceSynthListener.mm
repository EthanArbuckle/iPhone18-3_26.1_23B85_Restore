@interface VoiceSynthListener
- (_TtC19ContactlessReaderUI18VoiceSynthListener)init;
- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance;
@end

@implementation VoiceSynthListener

- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x68);
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  if (v7())
  {
    (*((*v6 & selfCopy->super.isa) + 0x70))(0);
    [synthesizerCopy stopSpeakingAtBoundary_];
  }

  speechString = [utteranceCopy speechString];
  v11 = sub_2440D2FB0();
  v13 = v12;

  v14 = MEMORY[0x245D57080](v11, v13);

  sub_243F6EF90(v14, 2);
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  sub_243F72F40(utteranceCopy);
}

- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  selfCopy = self;
  speechString = [utteranceCopy speechString];
  v7 = sub_2440D2FB0();
  v9 = v8;

  v10 = MEMORY[0x245D57080](v7, v9);

  sub_243F6EF90(v10, 3);
}

- (_TtC19ContactlessReaderUI18VoiceSynthListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end