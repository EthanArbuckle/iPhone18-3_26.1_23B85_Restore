@interface CoreEmbeddedSpeechAnalyzer
+ (void)forceCooldownIfIdle;
+ (void)resetCache;
+ (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
+ (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (CoreEmbeddedSpeechAnalyzer)initWithDelegate:(id)delegate instanceUUID:(char *)d;
- (CoreEmbeddedSpeechRecognizerDelegate)delegate;
- (void)addAudioPacket:(id)packet;
- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime;
- (void)dealloc;
- (void)finishAudio;
- (void)invalidate;
- (void)pauseRecognition;
- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l;
- (void)requestEagerResult;
- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)setDelegate:(id)delegate;
- (void)startMissingAssetDownload;
- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info;
- (void)stopAudioDecoding;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation CoreEmbeddedSpeechAnalyzer

- (void)addAudioPacket:(id)packet packetRecordedTime:(id)time packetReadyUpstreamTime:(id)upstreamTime
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](packet);
  MEMORY[0x277D82BE0](time);
  MEMORY[0x277D82BE0](upstreamTime);
  MEMORY[0x277D82BE0](self);
  v7 = sub_226098978();
  v8 = v6;
  CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:packetRecordedTime:packetReadyUpstreamTime:)(v7, v6, time, upstreamTime);
  sub_225EF5990(v7, v8);
  MEMORY[0x277D82BD8](packet);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](upstreamTime);
  MEMORY[0x277D82BD8](time);
}

- (CoreEmbeddedSpeechRecognizerDelegate)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = CoreEmbeddedSpeechAnalyzer.delegate.getter();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setDelegate:(id)delegate
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_225F7F848();
  MEMORY[0x277D82BD8](self);
}

- (CoreEmbeddedSpeechAnalyzer)initWithDelegate:(id)delegate instanceUUID:(char *)d
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return CoreEmbeddedSpeechAnalyzer.init(delegate:instanceUUID:)(delegate, d);
}

- (void)dealloc
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_225F81CB8();
}

- (void)preheatSpeechRecognitionWithAssetConfig:(id)config preheatSource:(id)source modelOverrideURL:(id)l
{
  lCopy = l;
  sourceCopy = source;
  configCopy = config;
  selfCopy = self;
  sourceCopy2 = source;
  lCopy2 = l;
  swift_getObjectType();
  v5 = configCopy;
  v6 = sourceCopy;
  v7 = lCopy;
  v8 = selfCopy;
  if (sourceCopy)
  {
    v37 = sourceCopy2;
    v32 = sourceCopy2;
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
    v26 = lCopy2;
    v25 = lCopy2;
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

  CoreEmbeddedSpeechAnalyzer.preheatSpeechRecognition(with:preheatSource:modelOverrideURL:)(configCopy, v28, v27, v31);
  sub_22601F334(v31);
}

- (void)startSpeechRecognitionWithParameters:(id)parameters didStartHandlerWithInfo:(id)info
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](parameters);
  v6 = _Block_copy(info);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  CoreEmbeddedSpeechAnalyzer.startSpeechRecognition(with:didStartHandlerWithInfo:)(parameters, sub_22601FFA4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](parameters);
}

- (void)addAudioPacket:(id)packet
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](packet);
  MEMORY[0x277D82BE0](self);
  v5 = sub_226098978();
  v6 = v4;
  CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:)(v5, v4);
  sub_225EF5990(v5, v6);
  MEMORY[0x277D82BD8](packet);
  MEMORY[0x277D82BD8](self);
}

- (void)pauseRecognition
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  CoreEmbeddedSpeechAnalyzer.pauseRecognition()();
  MEMORY[0x277D82BD8](self);
}

- (void)resumeRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](text);
  MEMORY[0x277D82BE0](postfixText);
  MEMORY[0x277D82BE0](selectedText);
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

  MEMORY[0x277D82BD8](selectedText);

  MEMORY[0x277D82BD8](postfixText);

  MEMORY[0x277D82BD8](text);
  MEMORY[0x277D82BD8](self);
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  *&v24 = active;
  *(&v24 + 1) = visibleText;
  swift_getObjectType();
  MEMORY[0x277D82BE0](text);
  MEMORY[0x277D82BE0](postfixText);
  MEMORY[0x277D82BE0](selectedText);
  MEMORY[0x277D82BE0](v24);
  MEMORY[0x277D82BE0](*(&v24 + 1));
  MEMORY[0x277D82BE0](suppression);
  MEMORY[0x277D82BE0](commandSuppression);
  MEMORY[0x277D82BE0](event);
  MEMORY[0x277D82BE0](self);
  if (text)
  {
    v20.value._countAndFlagsBits = sub_226099A08();
    v20.value._object = v10;
    MEMORY[0x277D82BD8](text);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (postfixText)
  {
    v18.value._countAndFlagsBits = sub_226099A08();
    v18.value._object = v11;
    MEMORY[0x277D82BD8](postfixText);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (selectedText)
  {
    abortCommandSuppression.is_nil = selectedText;
    undoEvent.value._countAndFlagsBits = sub_226099A08();
    undoEvent.value._object = v12;
    MEMORY[0x277D82BD8](selectedText);
    selectedText = undoEvent;
  }

  else
  {
    selectedText = 0;
  }

  abortCommandSuppression.value.super.super.isa = selectedText.value._object;
  cursorInVisibleText.value.super.super.isa = suppression;
  cursorInVisibleText.is_nil = commandSuppression;
  favorCommandSuppression.value.super.super.isa = event;
  CoreEmbeddedSpeechAnalyzer.updateVoiceCommandContext(withPrefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(v21, v19, selectedText, v24, cursorInVisibleText, favorCommandSuppression, abortCommandSuppression, *&undoEvent.value._countAndFlagsBits);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](event);
  MEMORY[0x277D82BD8](commandSuppression);
  MEMORY[0x277D82BD8](suppression);
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

+ (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](info);
  MEMORY[0x277D82BE0](identifier);
  v5 = sub_226099A08();
  v6 = v4;
  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.send(speechCorrectionInfo:interactionIdentifier:)(info, v5, v6);

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](info);
}

+ (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](info);
  MEMORY[0x277D82BE0](identifier);
  if (identifier)
  {
    v5 = sub_226099A08();
    v6 = v4;
    MEMORY[0x277D82BD8](identifier);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  static CoreEmbeddedSpeechAnalyzer.send(visualContextAndCorrectionsInfo:interactionIdentifier:)(info, v7, v8);

  MEMORY[0x277D82BD8](info);
}

@end