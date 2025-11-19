@interface CESRSpeechParameters
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CESRSpeechParameters)initWithCoder:(id)a3;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40 activeUserInfo:(id)a41;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40 activeUserInfo:(id)a41 messagesContext:(id)a42;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 sharedUserIds:(id)a30 enableEmojiRecognition:(BOOL)a31 enableAutoPunctuation:(BOOL)a32;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 sharedUserIds:(id)a30 enableEmojiRecognition:(BOOL)a31 enableAutoPunctuation:(BOOL)a32 enableVoiceCommands:(BOOL)a33;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 interactionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29;
- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 interactionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 maximumRecognitionDuration:(double)a22 endpointStart:(double)a23 inputOrigin:(id)a24 location:(id)a25 jitGrammar:(id)a26 deliverEagerPackage:(BOOL)a27 disableDeliveringAsrFeatures:(BOOL)a28;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CESRSpeechParameters

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40 activeUserInfo:(id)a41
{
  LOBYTE(v44) = a39;
  *(&v43 + 3) = __PAIR16__(a32, a31);
  *(&v43 + 1) = __PAIR16__(a30, a29);
  LOBYTE(v43) = a28;
  *(&v42 + 7) = __PAIR16__(a22, a21);
  *(&v42 + 5) = __PAIR16__(a20, a19);
  *(&v42 + 3) = __PAIR16__(a18, a17);
  *(&v42 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v42) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a38 codec:a9 narrowband:a10 detectUtterances:a11 censorSpeech:a12 farField:a13 secureOfflineOnly:v42 shouldStoreAudioOnDevice:a25 continuousListening:a26 shouldHandleCapitalization:a27 isSpeechAPIRequest:v43 maximumRecognitionDuration:a33 endpointStart:a34 inputOrigin:a35 location:a36 jitGrammar:a37 deliverEagerPackage:v44 disableDeliveringAsrFeatures:a40 enableEmojiRecognition:a41 enableAutoPunctuation:0 enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40
{
  LOBYTE(v43) = a39;
  *(&v42 + 3) = __PAIR16__(a32, a31);
  *(&v42 + 1) = __PAIR16__(a30, a29);
  LOBYTE(v42) = a28;
  *(&v41 + 7) = __PAIR16__(a22, a21);
  *(&v41 + 5) = __PAIR16__(a20, a19);
  *(&v41 + 3) = __PAIR16__(a18, a17);
  *(&v41 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v41) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a38 codec:a9 narrowband:a10 detectUtterances:a11 censorSpeech:a12 farField:a13 secureOfflineOnly:v41 shouldStoreAudioOnDevice:a25 continuousListening:a26 shouldHandleCapitalization:a27 isSpeechAPIRequest:v42 maximumRecognitionDuration:a33 endpointStart:a34 inputOrigin:a35 location:a36 jitGrammar:a37 deliverEagerPackage:v43 disableDeliveringAsrFeatures:a40 enableEmojiRecognition:0 enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39
{
  LOBYTE(v42) = a39;
  *(&v41 + 3) = __PAIR16__(a32, a31);
  *(&v41 + 1) = __PAIR16__(a30, a29);
  LOBYTE(v41) = a28;
  *(&v40 + 7) = __PAIR16__(a22, a21);
  *(&v40 + 5) = __PAIR16__(a20, a19);
  *(&v40 + 3) = __PAIR16__(a18, a17);
  *(&v40 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v40) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a38 codec:a9 narrowband:a10 detectUtterances:a11 censorSpeech:a12 farField:a13 secureOfflineOnly:v40 shouldStoreAudioOnDevice:a25 continuousListening:a26 shouldHandleCapitalization:a27 isSpeechAPIRequest:v41 maximumRecognitionDuration:a33 endpointStart:a34 inputOrigin:a35 location:a36 jitGrammar:a37 deliverEagerPackage:v42 disableDeliveringAsrFeatures:0 enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38
{
  LOBYTE(v41) = 0;
  *(&v40 + 3) = __PAIR16__(a32, a31);
  *(&v40 + 1) = __PAIR16__(a30, a29);
  LOBYTE(v40) = a28;
  *(&v39 + 7) = __PAIR16__(a22, a21);
  *(&v39 + 5) = __PAIR16__(a20, a19);
  *(&v39 + 3) = __PAIR16__(a18, a17);
  *(&v39 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v39) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a38 codec:a9 narrowband:a10 detectUtterances:a11 censorSpeech:a12 farField:a13 secureOfflineOnly:v39 shouldStoreAudioOnDevice:a25 continuousListening:a26 shouldHandleCapitalization:a27 isSpeechAPIRequest:v40 maximumRecognitionDuration:a33 endpointStart:a34 inputOrigin:a35 location:a36 jitGrammar:a37 deliverEagerPackage:v41 disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37
{

  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a23 overrides:a24 modelOverrideURL:0.0 originalAudioFileURL:? codec:? narrowband:? detectUtterances:? censorSpeech:? farField:? secureOfflineOnly:? shouldStoreAudioOnDevice:? continuousListening:? shouldHandleCapitalization:? isSpeechAPIRequest:? maximumRecognitionDuration:? endpointStart:? inputOrigin:? location:? jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 sharedUserIds:(id)a30 enableEmojiRecognition:(BOOL)a31 enableAutoPunctuation:(BOOL)a32 enableVoiceCommands:(BOOL)a33
{
  *(&v35 + 3) = __PAIR16__(a33, a32);
  BYTE2(v35) = a31;
  LOWORD(v35) = __PAIR16__(a29, a28);
  *(&v34 + 7) = __PAIR16__(a22, a21);
  *(&v34 + 5) = __PAIR16__(a20, a19);
  *(&v34 + 3) = __PAIR16__(a18, a17);
  *(&v34 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v34) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a9 codec:a10 narrowband:a11 detectUtterances:a12 censorSpeech:a13 farField:v34 secureOfflineOnly:a25 shouldStoreAudioOnDevice:a26 continuousListening:a27 shouldHandleCapitalization:v35 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32
{
  *(&v34 + 3) = __PAIR16__(a32, a31);
  *(&v34 + 1) = __PAIR16__(a30, a29);
  LOBYTE(v34) = a28;
  *(&v33 + 7) = __PAIR16__(a22, a21);
  *(&v33 + 5) = __PAIR16__(a20, a19);
  *(&v33 + 3) = __PAIR16__(a18, a17);
  *(&v33 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v33) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a9 codec:a10 narrowband:a11 detectUtterances:a12 censorSpeech:a13 farField:v33 secureOfflineOnly:a25 shouldStoreAudioOnDevice:a26 continuousListening:a27 shouldHandleCapitalization:v34 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 sharedUserIds:(id)a30 enableEmojiRecognition:(BOOL)a31 enableAutoPunctuation:(BOOL)a32
{
  BYTE4(v34) = 0;
  WORD1(v34) = __PAIR16__(a32, a31);
  LOWORD(v34) = __PAIR16__(a29, a28);
  *(&v33 + 7) = __PAIR16__(a22, a21);
  *(&v33 + 5) = __PAIR16__(a20, a19);
  *(&v33 + 3) = __PAIR16__(a18, a17);
  *(&v33 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v33) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a9 codec:a10 narrowband:a11 detectUtterances:a12 censorSpeech:a13 farField:v33 secureOfflineOnly:a25 shouldStoreAudioOnDevice:a26 continuousListening:a27 shouldHandleCapitalization:v34 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 interactionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29
{
  BYTE4(v31) = 0;
  LODWORD(v31) = __PAIR16__(a29, a28);
  *(&v30 + 7) = __PAIR16__(a22, a21);
  *(&v30 + 5) = __PAIR16__(a20, a19);
  *(&v30 + 3) = __PAIR16__(a18, a17);
  *(&v30 + 1) = __PAIR16__(a16, a15);
  LOBYTE(v30) = a14;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a23 modelOverrideURL:a24 originalAudioFileURL:a9 codec:a10 narrowband:a11 detectUtterances:a12 censorSpeech:a13 farField:v30 secureOfflineOnly:a25 shouldStoreAudioOnDevice:a26 continuousListening:a27 shouldHandleCapitalization:v31 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 interactionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 maximumRecognitionDuration:(double)a22 endpointStart:(double)a23 inputOrigin:(id)a24 location:(id)a25 jitGrammar:(id)a26 deliverEagerPackage:(BOOL)a27 disableDeliveringAsrFeatures:(BOOL)a28
{
  BYTE4(v31) = 0;
  LODWORD(v31) = __PAIR16__(a28, a27);
  LOBYTE(v30) = 0;
  HIWORD(v29) = __PAIR16__(a21, a20);
  WORD2(v29) = __PAIR16__(a19, a18);
  WORD1(v29) = __PAIR16__(a17, a16);
  LOWORD(v29) = __PAIR16__(a15, a14);
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:a3 dictationUIInteractionIdentifier:a4 task:a5 loggingContext:a6 applicationName:a7 profile:a8 overrides:a22 modelOverrideURL:a23 originalAudioFileURL:a9 codec:a10 narrowband:a11 detectUtterances:a12 censorSpeech:a13 farField:v29 secureOfflineOnly:v30 shouldStoreAudioOnDevice:a24 continuousListening:a25 shouldHandleCapitalization:a26 isSpeechAPIRequest:v31 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:0 deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (void)encodeWithCoder:(id)a3
{
  language = self->_language;
  v23 = a3;
  [v23 encodeObject:language forKey:@"CESRSpeechParameters::language"];
  [v23 encodeObject:self->_requestIdentifier forKey:@"CESRSpeechParameters::requestIdentifier"];
  [v23 encodeObject:self->_dictationUIInteractionIdentifier forKey:@"CESRSpeechParameters::dictationUIInteractionIdentifier"];
  [v23 encodeObject:self->_task forKey:@"CESRSpeechParameters::task"];
  [v23 encodeObject:self->_loggingContext forKey:@"CESRSpeechParameters::loggingContext"];
  [v23 encodeObject:self->_applicationName forKey:@"CESRSpeechParameters::applicationName"];
  [v23 encodeObject:self->_profile forKey:@"CESRSpeechParameters::profile"];
  [v23 encodeObject:self->_overrides forKey:@"CESRSpeechParameters::overrides"];
  [v23 encodeObject:self->_modelOverrideURL forKey:@"CESRSpeechParameters::modelOverrideURL"];
  [v23 encodeObject:self->_originalAudioFileURL forKey:@"CESRSpeechParameters::originalAudioFileURL"];
  [v23 encodeObject:self->_codec forKey:@"CESRSpeechParameters::codec"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_narrowband];
  [v23 encodeObject:v5 forKey:@"CESRSpeechParameters::narrowband"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_detectUtterances];
  [v23 encodeObject:v6 forKey:@"CESRSpeechParameters::detectUtterances"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_censorSpeech];
  [v23 encodeObject:v7 forKey:@"CESRSpeechParameters::censorSpeech"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_farField];
  [v23 encodeObject:v8 forKey:@"CESRSpeechParameters::farField"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_secureOfflineOnly];
  [v23 encodeObject:v9 forKey:@"CESRSpeechParameters::secureOfflineOnly"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStoreAudioOnDevice];
  [v23 encodeObject:v10 forKey:@"CESRSpeechParameters::shouldStoreAudioOnDevice"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousListening];
  [v23 encodeObject:v11 forKey:@"CESRSpeechParameters::continuousListening"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldHandleCapitalization];
  [v23 encodeObject:v12 forKey:@"CESRSpeechParameters::shouldHandleCapitalization"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSpeechAPIRequest];
  [v23 encodeObject:v13 forKey:@"CESRSpeechParameters::isSpeechAPIRequest"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  [v23 encodeObject:v14 forKey:@"CESRSpeechParameters::maximumRecognitionDuration"];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endpointStart];
  [v23 encodeObject:v15 forKey:@"CESRSpeechParameters::endpointStart"];

  [v23 encodeObject:self->_inputOrigin forKey:@"CESRSpeechParameters::inputOrigin"];
  [v23 encodeObject:self->_location forKey:@"CESRSpeechParameters::location"];
  [v23 encodeObject:self->_jitGrammar forKey:@"CESRSpeechParameters::jitGrammar"];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_deliverEagerPackage];
  [v23 encodeObject:v16 forKey:@"CESRSpeechParameters::deliverEagerPackage"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_disableDeliveringAsrFeatures];
  [v23 encodeObject:v17 forKey:@"CESRSpeechParameters::disableDeliveringAsrFeatures"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableEmojiRecognition];
  [v23 encodeObject:v18 forKey:@"CESRSpeechParameters::enableEmojiRecognition"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableAutoPunctuation];
  [v23 encodeObject:v19 forKey:@"CESRSpeechParameters::enableAutoPunctuation"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableVoiceCommands];
  [v23 encodeObject:v20 forKey:@"CESRSpeechParameters::enableVoiceCommands"];

  [v23 encodeObject:self->_sharedUserInfos forKey:@"CESRSpeechParameters::sharedUserInfos"];
  [v23 encodeObject:self->_prefixText forKey:@"CESRSpeechParameters::prefixText"];
  [v23 encodeObject:self->_postfixText forKey:@"CESRSpeechParameters::postfixText"];
  [v23 encodeObject:self->_selectedText forKey:@"CESRSpeechParameters::selectedText"];
  [v23 encodeObject:self->_powerContext forKey:@"CESRSpeechParameters::powerContext"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognitionStart];
  [v23 encodeObject:v21 forKey:@"CESRSpeechParameters::recognitionStart"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateVoiceCommandCandidates];
  [v23 encodeObject:v22 forKey:@"CESRSpeechParameters::shouldGenerateVoiceCommandCandidates"];

  [v23 encodeObject:self->_asrId forKey:@"CESRSpeechParameters::asrId"];
  [v23 encodeObject:self->_activeUserInfo forKey:@"CESRSpeechParameters::activeUserInfo"];
  [v23 encodeObject:self->_messagesContext forKey:@"CESRSpeechParameters::messagesContext"];
}

- (CESRSpeechParameters)initWithCoder:(id)a3
{
  v3 = a3;
  v85 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::language"];
  v84 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::requestIdentifier"];
  v86 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::dictationUIInteractionIdentifier"];
  v77 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::task"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v76 = [v3 decodeObjectOfClasses:v6 forKey:@"CESRSpeechParameters::loggingContext"];

  v75 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::applicationName"];
  v83 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::profile"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v74 = [v3 decodeObjectOfClasses:v10 forKey:@"CESRSpeechParameters::overrides"];

  v73 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::modelOverrideURL"];
  v64 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::originalAudioFileURL"];
  v63 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::codec"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::narrowband"];
  v72 = [v11 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::detectUtterances"];
  v71 = [v12 BOOLValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::censorSpeech"];
  v70 = [v13 BOOLValue];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::farField"];
  v69 = [v14 BOOLValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::secureOfflineOnly"];
  v68 = [v15 BOOLValue];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldStoreAudioOnDevice"];
  v67 = [v16 BOOLValue];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::continuousListening"];
  v66 = [v17 BOOLValue];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldHandleCapitalization"];
  v65 = [v18 BOOLValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::isSpeechAPIRequest"];
  v62 = [v19 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::maximumRecognitionDuration"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::endpointStart"];
  [v23 doubleValue];
  v25 = v24;

  v82 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::inputOrigin"];
  v81 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::location"];
  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  v58 = [v3 decodeObjectOfClasses:v28 forKey:@"CESRSpeechParameters::jitGrammar"];

  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::deliverEagerPackage"];
  v61 = [v29 BOOLValue];

  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::disableDeliveringAsrFeatures"];
  v60 = [v30 BOOLValue];

  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableEmojiRecognition"];
  v59 = [v31 BOOLValue];

  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableAutoPunctuation"];
  v57 = [v32 BOOLValue];

  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableVoiceCommands"];
  v56 = [v33 BOOLValue];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v80 = [v3 decodeObjectOfClasses:v36 forKey:@"CESRSpeechParameters::sharedUserInfos"];

  v55 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::prefixText"];
  v54 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::postfixText"];
  v53 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::selectedText"];
  v52 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::powerContext"];
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::recognitionStart"];
  [v37 doubleValue];
  v39 = v38;

  v40 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldGenerateVoiceCommandCandidates"];
  LOBYTE(v9) = [v40 BOOLValue];

  v51 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::asrId"];
  v41 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::activeUserInfo"];
  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  v45 = [v3 decodeObjectOfClasses:v44 forKey:@"CESRSpeechParameters::messagesContext"];

  LOBYTE(v50) = v9;
  BYTE4(v49) = v56;
  BYTE3(v49) = v57;
  BYTE2(v49) = v59;
  BYTE1(v49) = v60;
  LOBYTE(v49) = v61;
  LOBYTE(v48) = v62;
  HIBYTE(v47) = v65;
  BYTE6(v47) = v66;
  BYTE5(v47) = v67;
  BYTE4(v47) = v68;
  BYTE3(v47) = v69;
  BYTE2(v47) = v70;
  BYTE1(v47) = v71;
  LOBYTE(v47) = v72;
  v79 = [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" requestIdentifier:v85 dictationUIInteractionIdentifier:v84 task:v86 loggingContext:v77 applicationName:v76 profile:v75 overrides:v22 modelOverrideURL:v25 originalAudioFileURL:v39 codec:v83 narrowband:v74 detectUtterances:v73 censorSpeech:v64 farField:v63 secureOfflineOnly:v47 shouldStoreAudioOnDevice:v48 continuousListening:v82 shouldHandleCapitalization:v81 isSpeechAPIRequest:v58 maximumRecognitionDuration:v49 endpointStart:v80 inputOrigin:v55 location:v54 jitGrammar:v53 deliverEagerPackage:v52 disableDeliveringAsrFeatures:v50 enableEmojiRecognition:v51 enableAutoPunctuation:v41 enableVoiceCommands:v45 sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];

  return v79;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v55 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      narrowband = self->_narrowband;
      if (narrowband != [(CESRSpeechParameters *)v5 narrowband])
      {
        goto LABEL_50;
      }

      detectUtterances = self->_detectUtterances;
      if (detectUtterances != [(CESRSpeechParameters *)v5 detectUtterances])
      {
        goto LABEL_50;
      }

      censorSpeech = self->_censorSpeech;
      if (censorSpeech != [(CESRSpeechParameters *)v5 censorSpeech])
      {
        goto LABEL_50;
      }

      farField = self->_farField;
      if (farField != [(CESRSpeechParameters *)v5 farField])
      {
        goto LABEL_50;
      }

      secureOfflineOnly = self->_secureOfflineOnly;
      if (secureOfflineOnly != [(CESRSpeechParameters *)v5 secureOfflineOnly])
      {
        goto LABEL_50;
      }

      shouldStoreAudioOnDevice = self->_shouldStoreAudioOnDevice;
      if (shouldStoreAudioOnDevice != [(CESRSpeechParameters *)v5 shouldStoreAudioOnDevice])
      {
        goto LABEL_50;
      }

      continuousListening = self->_continuousListening;
      if (continuousListening != [(CESRSpeechParameters *)v5 continuousListening])
      {
        goto LABEL_50;
      }

      shouldHandleCapitalization = self->_shouldHandleCapitalization;
      if (shouldHandleCapitalization != [(CESRSpeechParameters *)v5 shouldHandleCapitalization])
      {
        goto LABEL_50;
      }

      isSpeechAPIRequest = self->_isSpeechAPIRequest;
      if (isSpeechAPIRequest != [(CESRSpeechParameters *)v5 isSpeechAPIRequest])
      {
        goto LABEL_50;
      }

      maximumRecognitionDuration = self->_maximumRecognitionDuration;
      [(CESRSpeechParameters *)v5 maximumRecognitionDuration];
      if (maximumRecognitionDuration != v16)
      {
        goto LABEL_50;
      }

      endpointStart = self->_endpointStart;
      [(CESRSpeechParameters *)v5 endpointStart];
      if (endpointStart != v18)
      {
        goto LABEL_50;
      }

      deliverEagerPackage = self->_deliverEagerPackage;
      if (deliverEagerPackage != [(CESRSpeechParameters *)v5 deliverEagerPackage])
      {
        goto LABEL_50;
      }

      v20 = self;
      disableDeliveringAsrFeatures = self->_disableDeliveringAsrFeatures;
      if (disableDeliveringAsrFeatures != [(CESRSpeechParameters *)v5 disableDeliveringAsrFeatures])
      {
        goto LABEL_50;
      }

      enableEmojiRecognition = v20->_enableEmojiRecognition;
      if (enableEmojiRecognition == [(CESRSpeechParameters *)v5 enableEmojiRecognition]&& (enableAutoPunctuation = v20->_enableAutoPunctuation, enableAutoPunctuation == [(CESRSpeechParameters *)v5 enableAutoPunctuation]) && (enableVoiceCommands = v20->_enableVoiceCommands, enableVoiceCommands == [(CESRSpeechParameters *)v5 enableVoiceCommands]) && (recognitionStart = v20->_recognitionStart, [(CESRSpeechParameters *)v5 recognitionStart], recognitionStart == v26) && (shouldGenerateVoiceCommandCandidates = v20->_shouldGenerateVoiceCommandCandidates, shouldGenerateVoiceCommandCandidates == [(CESRSpeechParameters *)v5 shouldGenerateVoiceCommandCandidates]))
      {
        v28 = [(CESRSpeechParameters *)v5 language];
        language = v20->_language;
        if (language == v28 || [(NSString *)language isEqual:v28])
        {
          v30 = [(CESRSpeechParameters *)v5 requestIdentifier];
          requestIdentifier = v20->_requestIdentifier;
          if (requestIdentifier == v30 || [(NSString *)requestIdentifier isEqual:v30])
          {
            v32 = [(CESRSpeechParameters *)v5 dictationUIInteractionIdentifier];
            dictationUIInteractionIdentifier = v20->_dictationUIInteractionIdentifier;
            if (dictationUIInteractionIdentifier == v32 || [(NSString *)dictationUIInteractionIdentifier isEqual:v32])
            {
              v34 = [(CESRSpeechParameters *)v5 task];
              task = v20->_task;
              if (task == v34 || [(NSString *)task isEqual:v34])
              {
                v36 = [(CESRSpeechParameters *)v5 loggingContext];
                loggingContext = v20->_loggingContext;
                if (loggingContext == v36 || [(NSArray *)loggingContext isEqual:v36])
                {
                  v38 = [(CESRSpeechParameters *)v5 applicationName];
                  applicationName = v20->_applicationName;
                  if (applicationName == v38 || [(NSString *)applicationName isEqual:v38])
                  {
                    v40 = [(CESRSpeechParameters *)v5 profile];
                    profile = v20->_profile;
                    if (profile == v40 || [(NSData *)profile isEqual:v40])
                    {
                      v42 = [(CESRSpeechParameters *)v5 overrides];
                      overrides = v20->_overrides;
                      v89 = v42;
                      if (overrides == v42 || [(NSDictionary *)overrides isEqual:v42])
                      {
                        v44 = [(CESRSpeechParameters *)v5 modelOverrideURL];
                        modelOverrideURL = v20->_modelOverrideURL;
                        v88 = v44;
                        if (modelOverrideURL == v44 || [(NSURL *)modelOverrideURL isEqual:v44])
                        {
                          v46 = [(CESRSpeechParameters *)v5 originalAudioFileURL];
                          originalAudioFileURL = v20->_originalAudioFileURL;
                          v87 = v46;
                          if (originalAudioFileURL == v46 || [(NSURL *)originalAudioFileURL isEqual:v46])
                          {
                            v48 = [(CESRSpeechParameters *)v5 codec];
                            codec = v20->_codec;
                            v86 = v48;
                            if (codec == v48 || [(NSString *)codec isEqual:v48])
                            {
                              v50 = [(CESRSpeechParameters *)v5 inputOrigin];
                              inputOrigin = v20->_inputOrigin;
                              v85 = v50;
                              if (inputOrigin == v50 || [(NSString *)inputOrigin isEqual:v50])
                              {
                                v52 = [(CESRSpeechParameters *)v5 location];
                                location = v20->_location;
                                v84 = v52;
                                if (location == v52 || ([(CLLocation *)location distanceFromLocation:v52], v54 == 0.0))
                                {
                                  v57 = [(CESRSpeechParameters *)v5 jitGrammar];
                                  jitGrammar = v20->_jitGrammar;
                                  v83 = v57;
                                  if (jitGrammar == v57 || [(NSArray *)jitGrammar isEqual:v57])
                                  {
                                    v59 = [(CESRSpeechParameters *)v5 sharedUserInfos];
                                    sharedUserInfos = v20->_sharedUserInfos;
                                    v82 = v59;
                                    if (sharedUserInfos == v59 || [(NSArray *)sharedUserInfos isEqual:v59])
                                    {
                                      v61 = [(CESRSpeechParameters *)v5 prefixText];
                                      prefixText = v20->_prefixText;
                                      v81 = v61;
                                      if (prefixText == v61 || [(NSString *)prefixText isEqual:v61])
                                      {
                                        v63 = [(CESRSpeechParameters *)v5 postfixText];
                                        postfixText = v20->_postfixText;
                                        v80 = v63;
                                        if (postfixText == v63 || [(NSString *)postfixText isEqual:v63])
                                        {
                                          v65 = [(CESRSpeechParameters *)v5 selectedText];
                                          selectedText = v20->_selectedText;
                                          v79 = v65;
                                          if (selectedText == v65 || [(NSString *)selectedText isEqual:v65])
                                          {
                                            v67 = [(CESRSpeechParameters *)v5 powerContext];
                                            powerContext = v20->_powerContext;
                                            v78 = v67;
                                            if (powerContext == v67 || [(AFPowerContextPolicy *)powerContext isEqual:v67])
                                            {
                                              v69 = [(CESRSpeechParameters *)v5 asrId];
                                              asrId = v20->_asrId;
                                              v77 = v69;
                                              if (asrId == v69 || [(NSUUID *)asrId isEqual:v69])
                                              {
                                                v71 = [(CESRSpeechParameters *)v5 activeUserInfo];
                                                activeUserInfo = v20->_activeUserInfo;
                                                v76 = v71;
                                                if (activeUserInfo == v71 || [(AFASRSharedUserInfo *)activeUserInfo isEqual:v71])
                                                {
                                                  v73 = [(CESRSpeechParameters *)v5 messagesContext];
                                                  messagesContext = v20->_messagesContext;
                                                  v75 = v73;
                                                  v55 = messagesContext == v73 || [(NSArray *)messagesContext isEqual:v73];
                                                }

                                                else
                                                {
                                                  v55 = 0;
                                                }
                                              }

                                              else
                                              {
                                                v55 = 0;
                                              }
                                            }

                                            else
                                            {
                                              v55 = 0;
                                            }
                                          }

                                          else
                                          {
                                            v55 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v55 = 0;
                                        }
                                      }

                                      else
                                      {
                                        v55 = 0;
                                      }
                                    }

                                    else
                                    {
                                      v55 = 0;
                                    }
                                  }

                                  else
                                  {
                                    v55 = 0;
                                  }
                                }

                                else
                                {
                                  v55 = 0;
                                }
                              }

                              else
                              {
                                v55 = 0;
                              }
                            }

                            else
                            {
                              v55 = 0;
                            }
                          }

                          else
                          {
                            v55 = 0;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }
                      }

                      else
                      {
                        v55 = 0;
                      }
                    }

                    else
                    {
                      v55 = 0;
                    }
                  }

                  else
                  {
                    v55 = 0;
                  }
                }

                else
                {
                  v55 = 0;
                }
              }

              else
              {
                v55 = 0;
              }
            }

            else
            {
              v55 = 0;
            }
          }

          else
          {
            v55 = 0;
          }
        }

        else
        {
          v55 = 0;
        }
      }

      else
      {
LABEL_50:
        v55 = 0;
      }
    }

    else
    {
      v55 = 0;
    }
  }

  return v55;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_requestIdentifier hash]^ v3;
  v5 = [(NSString *)self->_dictationUIInteractionIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_task hash];
  v7 = [(NSArray *)self->_loggingContext hash];
  v8 = v7 ^ [(NSString *)self->_applicationName hash];
  v9 = v6 ^ v8 ^ [(NSData *)self->_profile hash];
  v10 = [(NSDictionary *)self->_overrides hash];
  v11 = v10 ^ [(NSURL *)self->_modelOverrideURL hash];
  v12 = v11 ^ [(NSURL *)self->_originalAudioFileURL hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_codec hash];
  v61 = [MEMORY[0x277CCABB0] numberWithBool:self->_narrowband];
  v14 = [v61 hash];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:self->_detectUtterances];
  v15 = v14 ^ [v60 hash];
  v59 = [MEMORY[0x277CCABB0] numberWithBool:self->_censorSpeech];
  v16 = v13 ^ v15 ^ [v59 hash];
  v58 = [MEMORY[0x277CCABB0] numberWithBool:self->_farField];
  v17 = [v58 hash];
  v57 = [MEMORY[0x277CCABB0] numberWithBool:self->_secureOfflineOnly];
  v18 = v17 ^ [v57 hash];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStoreAudioOnDevice];
  v19 = v18 ^ [v56 hash];
  v55 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousListening];
  v20 = v16 ^ v19 ^ [v55 hash];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldHandleCapitalization];
  v21 = [v54 hash];
  v53 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSpeechAPIRequest];
  v22 = v21 ^ [v53 hash];
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  v23 = v22 ^ [v52 hash];
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endpointStart];
  v24 = v23 ^ [v51 hash];
  v25 = v20 ^ v24 ^ [(NSString *)self->_inputOrigin hash];
  v26 = [(CLLocation *)self->_location hash];
  v27 = v26 ^ [(NSArray *)self->_jitGrammar hash];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_deliverEagerPackage];
  v29 = v27 ^ [v28 hash];
  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_disableDeliveringAsrFeatures];
  v31 = v29 ^ [v30 hash];
  v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableEmojiRecognition];
  v33 = v31 ^ [v32 hash];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableAutoPunctuation];
  v35 = v33 ^ [v34 hash];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableVoiceCommands];
  v37 = v25 ^ v35 ^ [v36 hash];
  v38 = [(NSArray *)self->_sharedUserInfos hash];
  v39 = v38 ^ [(NSString *)self->_prefixText hash];
  v40 = v39 ^ [(NSString *)self->_postfixText hash];
  v41 = v40 ^ [(NSString *)self->_selectedText hash];
  v42 = v41 ^ [(AFPowerContextPolicy *)self->_powerContext hash];
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognitionStart];
  v44 = v42 ^ [v43 hash];
  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateVoiceCommandCandidates];
  v46 = v44 ^ [v45 hash];
  v47 = v46 ^ [(NSUUID *)self->_asrId hash];
  v48 = v37 ^ v47 ^ [(AFASRSharedUserInfo *)self->_activeUserInfo hash];
  v49 = [(NSArray *)self->_messagesContext hash];

  return v48 ^ v49;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v130[40] = *MEMORY[0x277D85DE8];
  v112 = objc_alloc(MEMORY[0x277CCACA8]);
  v129.receiver = self;
  v129.super_class = CESRSpeechParameters;
  v128 = [(CESRSpeechParameters *)&v129 description];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v127 = [(NSString *)self->_language description];
  v126 = [v4 initWithFormat:@"language = %@", v127];
  v130[0] = v126;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v125 = [(NSString *)self->_requestIdentifier description];
  v124 = [v5 initWithFormat:@"requestIdentifier = %@", v125];
  v130[1] = v124;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v123 = [(NSString *)self->_dictationUIInteractionIdentifier description];
  v122 = [v6 initWithFormat:@"dictationUIInteractionIdentifier = %@", v123];
  v130[2] = v122;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v121 = [(NSString *)self->_task description];
  v120 = [v7 initWithFormat:@"task = %@", v121];
  v130[3] = v120;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v119 = [(NSArray *)self->_loggingContext description];
  v118 = [v8 initWithFormat:@"loggingContext = %@", v119];
  v130[4] = v118;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v117 = [(NSString *)self->_applicationName description];
  v116 = [v9 initWithFormat:@"applicationName = %@", v117];
  v130[5] = v116;
  v115 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"profile = (%ld bytes)", -[NSData length](self->_profile, "length")];
  v130[6] = v115;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v114 = [(NSDictionary *)self->_overrides description];
  v111 = [v10 initWithFormat:@"overrides = %@", v114];
  v130[7] = v111;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v110 = [(NSURL *)self->_modelOverrideURL description];
  v109 = [v11 initWithFormat:@"modelOverrideURL = %@", v110];
  v130[8] = v109;
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v108 = [(NSURL *)self->_originalAudioFileURL description];
  v107 = [v12 initWithFormat:@"originalAudioFileURL = %@", v108];
  v130[9] = v107;
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v106 = [(NSString *)self->_codec description];
  v105 = [v13 initWithFormat:@"codec = %@", v106];
  v130[10] = v105;
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_narrowband)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v104 = [v14 initWithFormat:@"narrowband = %@", v15];
  v130[11] = v104;
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_detectUtterances)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v103 = [v16 initWithFormat:@"detectUtterances = %@", v17];
  v130[12] = v103;
  v18 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_censorSpeech)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v102 = [v18 initWithFormat:@"censorSpeech = %@", v19];
  v130[13] = v102;
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_farField)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v101 = [v20 initWithFormat:@"farField = %@", v21];
  v130[14] = v101;
  v22 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_secureOfflineOnly)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v100 = [v22 initWithFormat:@"secureOfflineOnly = %@", v23];
  v130[15] = v100;
  v24 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_shouldStoreAudioOnDevice)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v99 = [v24 initWithFormat:@"shouldStoreAudioOnDevice = %@", v25];
  v130[16] = v99;
  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_continuousListening)
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  v98 = [v26 initWithFormat:@"continuousListening = %@", v27];
  v130[17] = v98;
  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_shouldHandleCapitalization)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v97 = [v28 initWithFormat:@"shouldHandleCapitalization = %@", v29];
  v130[18] = v97;
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_isSpeechAPIRequest)
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v96 = [v30 initWithFormat:@"isSpeechAPIRequest = %@", v31];
  v130[19] = v96;
  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  v95 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  v94 = [v32 initWithFormat:@"maximumRecognitionDuration = %@", v95];
  v130[20] = v94;
  v33 = objc_alloc(MEMORY[0x277CCACA8]);
  v93 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endpointStart];
  v92 = [v33 initWithFormat:@"endpointStart = %@", v93];
  v130[21] = v92;
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v91 = [(NSString *)self->_inputOrigin description];
  v90 = [v34 initWithFormat:@"inputOrigin = %@", v91];
  v130[22] = v90;
  v35 = objc_alloc(MEMORY[0x277CCACA8]);
  v89 = [(CLLocation *)self->_location description];
  v88 = [v35 initWithFormat:@"location = %@", v89];
  v130[23] = v88;
  v36 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_jitGrammar)
  {
    v37 = @"REDACTED";
  }

  else
  {
    v37 = 0;
  }

  v87 = [v36 initWithFormat:@"jitGrammar = %@", v37];
  v130[24] = v87;
  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_deliverEagerPackage)
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v86 = [v38 initWithFormat:@"deliverEagerPackage = %@", v39];
  v130[25] = v86;
  v40 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_disableDeliveringAsrFeatures)
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  v85 = [v40 initWithFormat:@"disableDeliveringAsrFeatures = %@", v41];
  v130[26] = v85;
  v42 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_enableEmojiRecognition)
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  v84 = [v42 initWithFormat:@"enableEmojiRecognition = %@", v43];
  v130[27] = v84;
  v44 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_enableAutoPunctuation)
  {
    v45 = @"YES";
  }

  else
  {
    v45 = @"NO";
  }

  v83 = [v44 initWithFormat:@"enableAutoPunctuation = %@", v45];
  v130[28] = v83;
  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_enableVoiceCommands)
  {
    v47 = @"YES";
  }

  else
  {
    v47 = @"NO";
  }

  v82 = [v46 initWithFormat:@"enableVoiceCommands = %@", v47];
  v130[29] = v82;
  v48 = objc_alloc(MEMORY[0x277CCACA8]);
  v81 = [(NSArray *)self->_sharedUserInfos description];
  v80 = [v48 initWithFormat:@"sharedUserInfos = %@", v81];
  v130[30] = v80;
  v49 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_prefixText)
  {
    v50 = @"REDACTED";
  }

  else
  {
    v50 = 0;
  }

  v79 = [v49 initWithFormat:@"prefixText = %@", v50];
  v130[31] = v79;
  v51 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_postfixText)
  {
    v52 = @"REDACTED";
  }

  else
  {
    v52 = 0;
  }

  v78 = [v51 initWithFormat:@"postfixText = %@", v52];
  v130[32] = v78;
  v53 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_selectedText)
  {
    v54 = @"REDACTED";
  }

  else
  {
    v54 = 0;
  }

  v77 = [v53 initWithFormat:@"selectedText = %@", v54];
  v130[33] = v77;
  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  v76 = [(AFPowerContextPolicy *)self->_powerContext description];
  v75 = [v55 initWithFormat:@"powerContext = %@", v76];
  v130[34] = v75;
  v56 = objc_alloc(MEMORY[0x277CCACA8]);
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognitionStart];
  v58 = [v56 initWithFormat:@"recognitionStart = %@", v57];
  v130[35] = v58;
  v59 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_shouldGenerateVoiceCommandCandidates)
  {
    v60 = @"YES";
  }

  else
  {
    v60 = @"NO";
  }

  v61 = [v59 initWithFormat:@"shouldGenerateVoiceCommandCandidates = %@", v60];
  v130[36] = v61;
  v62 = objc_alloc(MEMORY[0x277CCACA8]);
  v63 = [(NSUUID *)self->_asrId description];
  v64 = [v62 initWithFormat:@"asrId = %@", v63];
  v130[37] = v64;
  v65 = objc_alloc(MEMORY[0x277CCACA8]);
  v66 = [(AFASRSharedUserInfo *)self->_activeUserInfo description];
  v67 = [v65 initWithFormat:@"activeUserInfo = %@", v66];
  v130[38] = v67;
  v68 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self->_messagesContext)
  {
    v69 = @"REDACTED";
  }

  else
  {
    v69 = 0;
  }

  v70 = [v68 initWithFormat:@"messagesContext = %@", v69];
  v130[39] = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:40];
  v72 = [v71 componentsJoinedByString:{@", "}];
  v113 = [v112 initWithFormat:@"%@ {%@}", v128, v72];

  v73 = *MEMORY[0x277D85DE8];

  return v113;
}

- (CESRSpeechParameters)initWithLanguage:(id)a3 requestIdentifier:(id)a4 dictationUIInteractionIdentifier:(id)a5 task:(id)a6 loggingContext:(id)a7 applicationName:(id)a8 profile:(id)a9 overrides:(id)a10 modelOverrideURL:(id)a11 originalAudioFileURL:(id)a12 codec:(id)a13 narrowband:(BOOL)a14 detectUtterances:(BOOL)a15 censorSpeech:(BOOL)a16 farField:(BOOL)a17 secureOfflineOnly:(BOOL)a18 shouldStoreAudioOnDevice:(BOOL)a19 continuousListening:(BOOL)a20 shouldHandleCapitalization:(BOOL)a21 isSpeechAPIRequest:(BOOL)a22 maximumRecognitionDuration:(double)a23 endpointStart:(double)a24 inputOrigin:(id)a25 location:(id)a26 jitGrammar:(id)a27 deliverEagerPackage:(BOOL)a28 disableDeliveringAsrFeatures:(BOOL)a29 enableEmojiRecognition:(BOOL)a30 enableAutoPunctuation:(BOOL)a31 enableVoiceCommands:(BOOL)a32 sharedUserInfos:(id)a33 prefixText:(id)a34 postfixText:(id)a35 selectedText:(id)a36 powerContext:(id)a37 recognitionStart:(double)a38 shouldGenerateVoiceCommandCandidates:(BOOL)a39 asrId:(id)a40 activeUserInfo:(id)a41 messagesContext:(id)a42
{
  v118 = a3;
  v50 = a4;
  v51 = a5;
  v117 = a6;
  v52 = a7;
  v53 = a8;
  v54 = a9;
  v116 = a10;
  v55 = a11;
  v56 = a12;
  v57 = a13;
  v58 = a25;
  v115 = a26;
  v114 = a27;
  v113 = a33;
  v112 = a34;
  v111 = a35;
  v110 = a36;
  v109 = a37;
  v108 = a40;
  v107 = a41;
  v106 = a42;
  v119.receiver = self;
  v119.super_class = CESRSpeechParameters;
  v59 = [(CESRSpeechParameters *)&v119 init];
  if (v59)
  {
    v60 = [v118 copy];
    language = v59->_language;
    v59->_language = v60;

    v62 = [v50 copy];
    requestIdentifier = v59->_requestIdentifier;
    v59->_requestIdentifier = v62;

    v64 = [v51 copy];
    dictationUIInteractionIdentifier = v59->_dictationUIInteractionIdentifier;
    v59->_dictationUIInteractionIdentifier = v64;

    v66 = [v117 copy];
    task = v59->_task;
    v59->_task = v66;

    v68 = [v52 copy];
    loggingContext = v59->_loggingContext;
    v59->_loggingContext = v68;

    v70 = [v53 copy];
    applicationName = v59->_applicationName;
    v59->_applicationName = v70;

    v72 = [v54 copy];
    profile = v59->_profile;
    v59->_profile = v72;

    v74 = [v116 copy];
    overrides = v59->_overrides;
    v59->_overrides = v74;

    v76 = [v55 copy];
    modelOverrideURL = v59->_modelOverrideURL;
    v59->_modelOverrideURL = v76;

    v78 = [v56 copy];
    originalAudioFileURL = v59->_originalAudioFileURL;
    v59->_originalAudioFileURL = v78;

    v80 = [v57 copy];
    codec = v59->_codec;
    v59->_codec = v80;

    v59->_narrowband = a14;
    v59->_detectUtterances = a15;
    v59->_censorSpeech = a16;
    v59->_farField = a17;
    v59->_secureOfflineOnly = a18;
    v59->_shouldStoreAudioOnDevice = a19;
    v59->_continuousListening = a20;
    v59->_shouldHandleCapitalization = a21;
    v59->_isSpeechAPIRequest = a22;
    v59->_maximumRecognitionDuration = a23;
    v59->_endpointStart = a24;
    v82 = [v58 copy];
    inputOrigin = v59->_inputOrigin;
    v59->_inputOrigin = v82;

    v84 = [v115 copy];
    location = v59->_location;
    v59->_location = v84;

    v86 = [v114 copy];
    jitGrammar = v59->_jitGrammar;
    v59->_jitGrammar = v86;

    v59->_deliverEagerPackage = a28;
    v59->_disableDeliveringAsrFeatures = a29;
    v59->_enableEmojiRecognition = a30;
    v59->_enableAutoPunctuation = a31;
    v59->_enableVoiceCommands = a32;
    v88 = [v113 copy];
    sharedUserInfos = v59->_sharedUserInfos;
    v59->_sharedUserInfos = v88;

    v90 = [v112 copy];
    prefixText = v59->_prefixText;
    v59->_prefixText = v90;

    v92 = [v111 copy];
    postfixText = v59->_postfixText;
    v59->_postfixText = v92;

    v94 = [v110 copy];
    selectedText = v59->_selectedText;
    v59->_selectedText = v94;

    v96 = [v109 copy];
    powerContext = v59->_powerContext;
    v59->_powerContext = v96;

    v59->_recognitionStart = a38;
    v59->_shouldGenerateVoiceCommandCandidates = a39;
    v98 = [v108 copy];
    asrId = v59->_asrId;
    v59->_asrId = v98;

    v100 = [v107 copy];
    activeUserInfo = v59->_activeUserInfo;
    v59->_activeUserInfo = v100;

    v102 = [v106 copy];
    messagesContext = v59->_messagesContext;
    v59->_messagesContext = v102;
  }

  return v59;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_CESRSpeechParametersMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_CESRSpeechParametersMutation *)v5 generate];
  }

  else
  {
    v6 = [(CESRSpeechParameters *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_CESRSpeechParametersMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_CESRSpeechParametersMutation *)v4 generate];

  return v5;
}

@end