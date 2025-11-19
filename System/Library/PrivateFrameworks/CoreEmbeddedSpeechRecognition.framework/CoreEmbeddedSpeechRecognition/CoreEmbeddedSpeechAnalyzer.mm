@interface CoreEmbeddedSpeechAnalyzer
+ (void)forceCooldownIfIdle;
+ (void)resetCache;
+ (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
+ (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (CoreEmbeddedSpeechAnalyzer)initWithDelegate:(id)a3 instanceUUID:(char *)a4;
- (CoreEmbeddedSpeechRecognizerDelegate)delegate;
- (void)addAudioPacket:(id)a3;
- (void)addAudioPacket:(id)a3 packetRecordedTime:(id)a4 packetReadyUpstreamTime:(id)a5;
- (void)dealloc;
- (void)finishAudio;
- (void)invalidate;
- (void)pauseRecognition;
- (void)preheatSpeechRecognitionWithAssetConfig:(id)a3 preheatSource:(id)a4 modelOverrideURL:(id)a5;
- (void)requestEagerResult;
- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)setDelegate:(id)a3;
- (void)startMissingAssetDownload;
- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandlerWithInfo:(id)a4;
- (void)stopAudioDecoding;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
@end

@implementation CoreEmbeddedSpeechAnalyzer

- (void)addAudioPacket:(id)a3 packetRecordedTime:(id)a4 packetReadyUpstreamTime:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v7 = sub_226098978();
  v8 = v6;
  CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:packetRecordedTime:packetReadyUpstreamTime:)(v7, v6, a4, a5);
  sub_225EF5990(v7, v8);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
}

- (CoreEmbeddedSpeechRecognizerDelegate)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = CoreEmbeddedSpeechAnalyzer.delegate.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_225F7F848();
  MEMORY[0x277D82BD8](self);
}

- (CoreEmbeddedSpeechAnalyzer)initWithDelegate:(id)a3 instanceUUID:(char *)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return CoreEmbeddedSpeechAnalyzer.init(delegate:instanceUUID:)(a3, a4);
}

- (void)dealloc
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_225F81CB8();
}

- (void)preheatSpeechRecognitionWithAssetConfig:(id)a3 preheatSource:(id)a4 modelOverrideURL:(id)a5
{
  v41 = a5;
  v43 = a4;
  v40 = a3;
  v42 = self;
  v38 = a4;
  v39 = a5;
  swift_getObjectType();
  v5 = v40;
  v6 = v43;
  v7 = v41;
  v8 = v42;
  if (v43)
  {
    v37 = v38;
    v32 = v38;
    v33 = sub_226099A08();
    v34 = v9;

    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v27 = v36;
  v28 = v35;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64);
  v29 = &v20;
  v30 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20, v11, v12, v13);
  v31 = &v20 - v30;
  if (v14)
  {
    v26 = v39;
    v25 = v39;
    v23 = sub_226098948();
    v20 = *(v23 - 8);
    v22 = v20;
    v15 = *(v20 + 64);
    v24 = &v20;
    MEMORY[0x28223BE20](v25, &v20, v16, v17);
    v21 = &v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226098908();
    (*(v22 + 32))(v31, v21, v23);
    (*(v22 + 56))(v31, 0, 1, v23);
  }

  else
  {
    v19 = sub_226098948();
    (*(*(v19 - 8) + 56))(v31, 1);
  }

  CoreEmbeddedSpeechAnalyzer.preheatSpeechRecognition(with:preheatSource:modelOverrideURL:)(v40, v28, v27, v31);
  sub_22601F334(v31);
}

- (void)startSpeechRecognitionWithParameters:(id)a3 didStartHandlerWithInfo:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  CoreEmbeddedSpeechAnalyzer.startSpeechRecognition(with:didStartHandlerWithInfo:)(a3, sub_22601FFA4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)addAudioPacket:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v5 = sub_226098978();
  v6 = v4;
  CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:)(v5, v4);
  sub_225EF5990(v5, v6);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)pauseRecognition
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.pauseRecognition()();
  MEMORY[0x277D82BD8](self);
}

- (void)resumeRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](self);
  v14 = sub_226099A08();
  v18 = v6;
  v13 = sub_226099A08();
  postfixText = v7;
  v8 = sub_226099A08();
  v9._countAndFlagsBits = v13;
  v9._object = postfixText;
  v10._countAndFlagsBits = v8;
  v11._countAndFlagsBits = v14;
  v10._object = v12;
  v11._object = v18;
  CoreEmbeddedSpeechAnalyzer.resumeRecognition(withPrefixText:postfixText:selectedText:)(v11, v9, v10);

  MEMORY[0x277D82BD8](a5);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  *&v24 = a6;
  *(&v24 + 1) = a7;
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](v24);
  MEMORY[0x277D82BE0](*(&v24 + 1));
  MEMORY[0x277D82BE0](a8);
  MEMORY[0x277D82BE0](a9);
  MEMORY[0x277D82BE0](a10);
  MEMORY[0x277D82BE0](self);
  if (a3)
  {
    v20.value._countAndFlagsBits = sub_226099A08();
    v20.value._object = v10;
    MEMORY[0x277D82BD8](a3);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    v18.value._countAndFlagsBits = sub_226099A08();
    v18.value._object = v11;
    MEMORY[0x277D82BD8](a4);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a5)
  {
    abortCommandSuppression.is_nil = a5;
    undoEvent.value._countAndFlagsBits = sub_226099A08();
    undoEvent.value._object = v12;
    MEMORY[0x277D82BD8](a5);
    selectedText = undoEvent;
  }

  else
  {
    selectedText = 0;
  }

  abortCommandSuppression.value.super.super.isa = selectedText.value._object;
  cursorInVisibleText.value.super.super.isa = a8;
  cursorInVisibleText.is_nil = a9;
  favorCommandSuppression.value.super.super.isa = a10;
  CoreEmbeddedSpeechAnalyzer.updateVoiceCommandContext(withPrefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(v21, v19, selectedText, v24, cursorInVisibleText, favorCommandSuppression, abortCommandSuppression, *&undoEvent.value._countAndFlagsBits);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a10);
  MEMORY[0x277D82BD8](a9);
  MEMORY[0x277D82BD8](a8);
  MEMORY[0x277D82BD8](*(&v24 + 1));
  MEMORY[0x277D82BD8](v24);
}

- (void)finishAudio
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.finishAudio()();
  MEMORY[0x277D82BD8](self);
}

- (void)stopAudioDecoding
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.stopAudioDecoding()();
  MEMORY[0x277D82BD8](self);
}

- (void)requestEagerResult
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.requestEagerResult()();
  MEMORY[0x277D82BD8](self);
}

- (void)startMissingAssetDownload
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.startMissingAssetDownload()();
  MEMORY[0x277D82BD8](self);
}

+ (void)forceCooldownIfIdle
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.forceCooldownIfIdle()();
}

+ (void)resetCache
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.resetCache()();
}

- (void)invalidate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.invalidate()();
  MEMORY[0x277D82BD8](self);
}

+ (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v5 = sub_226099A08();
  v6 = v4;
  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.send(speechCorrectionInfo:interactionIdentifier:)(a3, v5, v6);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
}

+ (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = sub_226099A08();
    v6 = v4;
    MEMORY[0x277D82BD8](a4);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.send(visualContextAndCorrectionsInfo:interactionIdentifier:)(a3, v7, v8);

  MEMORY[0x277D82BD8](a3);
}

@end