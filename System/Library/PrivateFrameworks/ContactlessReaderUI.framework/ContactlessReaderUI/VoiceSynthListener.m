@interface VoiceSynthListener
- (_TtC19ContactlessReaderUI18VoiceSynthListener)init;
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
@end

@implementation VoiceSynthListener

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x68);
  v8 = a3;
  v9 = a4;
  v15 = self;
  if (v7())
  {
    (*((*v6 & v15->super.isa) + 0x70))(0);
    [v8 stopSpeakingAtBoundary_];
  }

  v10 = [v9 speechString];
  v11 = sub_2440D2FB0();
  v13 = v12;

  v14 = MEMORY[0x245D57080](v11, v13);

  sub_243F6EF90(v14, 2);
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243F72F40(v7);
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v5 = a4;
  v11 = self;
  v6 = [v5 speechString];
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