@interface CESRSpeechParameters
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (CESRSpeechParameters)initWithCoder:(id)coder;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0 activeUserInfo:(id)identifier1;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0 activeUserInfo:(id)identifier1 messagesContext:(id)identifier2;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features sharedUserIds:(id)language0 enableEmojiRecognition:(BOOL)language1 enableAutoPunctuation:(BOOL)language2;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features sharedUserIds:(id)language0 enableEmojiRecognition:(BOOL)language1 enableAutoPunctuation:(BOOL)language2 enableVoiceCommands:(BOOL)language3;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features;
- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CESRSpeechParameters

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0 activeUserInfo:(id)identifier1
{
  LOBYTE(v44) = candidates;
  *(&v43 + 3) = __PAIR16__(commands, punctuation);
  *(&v43 + 1) = __PAIR16__(recognition, features);
  LOBYTE(v43) = package;
  *(&v42 + 7) = __PAIR16__(request, capitalization);
  *(&v42 + 5) = __PAIR16__(listening, device);
  *(&v42 + 3) = __PAIR16__(only, field);
  *(&v42 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v42) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:recognitionStart codec:profile narrowband:overrides detectUtterances:l censorSpeech:rL farField:codec secureOfflineOnly:v42 shouldStoreAudioOnDevice:origin continuousListening:location shouldHandleCapitalization:grammar isSpeechAPIRequest:v43 maximumRecognitionDuration:infos endpointStart:text inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v44 disableDeliveringAsrFeatures:id enableEmojiRecognition:info enableAutoPunctuation:0 enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0
{
  LOBYTE(v43) = candidates;
  *(&v42 + 3) = __PAIR16__(commands, punctuation);
  *(&v42 + 1) = __PAIR16__(recognition, features);
  LOBYTE(v42) = package;
  *(&v41 + 7) = __PAIR16__(request, capitalization);
  *(&v41 + 5) = __PAIR16__(listening, device);
  *(&v41 + 3) = __PAIR16__(only, field);
  *(&v41 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v41) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:recognitionStart codec:profile narrowband:overrides detectUtterances:l censorSpeech:rL farField:codec secureOfflineOnly:v41 shouldStoreAudioOnDevice:origin continuousListening:location shouldHandleCapitalization:grammar isSpeechAPIRequest:v42 maximumRecognitionDuration:infos endpointStart:text inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v43 disableDeliveringAsrFeatures:id enableEmojiRecognition:0 enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9
{
  LOBYTE(v42) = candidates;
  *(&v41 + 3) = __PAIR16__(commands, punctuation);
  *(&v41 + 1) = __PAIR16__(recognition, features);
  LOBYTE(v41) = package;
  *(&v40 + 7) = __PAIR16__(request, capitalization);
  *(&v40 + 5) = __PAIR16__(listening, device);
  *(&v40 + 3) = __PAIR16__(only, field);
  *(&v40 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v40) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:recognitionStart codec:profile narrowband:overrides detectUtterances:l censorSpeech:rL farField:codec secureOfflineOnly:v40 shouldStoreAudioOnDevice:origin continuousListening:location shouldHandleCapitalization:grammar isSpeechAPIRequest:v41 maximumRecognitionDuration:infos endpointStart:text inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v42 disableDeliveringAsrFeatures:0 enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8
{
  LOBYTE(v41) = 0;
  *(&v40 + 3) = __PAIR16__(commands, punctuation);
  *(&v40 + 1) = __PAIR16__(recognition, features);
  LOBYTE(v40) = package;
  *(&v39 + 7) = __PAIR16__(request, capitalization);
  *(&v39 + 5) = __PAIR16__(listening, device);
  *(&v39 + 3) = __PAIR16__(only, field);
  *(&v39 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v39) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:recognitionStart codec:profile narrowband:overrides detectUtterances:l censorSpeech:rL farField:codec secureOfflineOnly:v39 shouldStoreAudioOnDevice:origin continuousListening:location shouldHandleCapitalization:grammar isSpeechAPIRequest:v40 maximumRecognitionDuration:infos endpointStart:text inputOrigin:postfixText location:selectedText jitGrammar:powerContext deliverEagerPackage:v41 disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7
{

  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:duration overrides:start modelOverrideURL:0.0 originalAudioFileURL:? codec:? narrowband:? detectUtterances:? censorSpeech:? farField:? secureOfflineOnly:? shouldStoreAudioOnDevice:? continuousListening:? shouldHandleCapitalization:? isSpeechAPIRequest:? maximumRecognitionDuration:? endpointStart:? inputOrigin:? location:? jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features sharedUserIds:(id)language0 enableEmojiRecognition:(BOOL)language1 enableAutoPunctuation:(BOOL)language2 enableVoiceCommands:(BOOL)language3
{
  *(&v35 + 3) = __PAIR16__(commands, punctuation);
  BYTE2(v35) = recognition;
  LOWORD(v35) = __PAIR16__(features, package);
  *(&v34 + 7) = __PAIR16__(request, capitalization);
  *(&v34 + 5) = __PAIR16__(listening, device);
  *(&v34 + 3) = __PAIR16__(only, field);
  *(&v34 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v34) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:profile codec:overrides narrowband:l detectUtterances:rL censorSpeech:codec farField:v34 secureOfflineOnly:origin shouldStoreAudioOnDevice:location continuousListening:grammar shouldHandleCapitalization:v35 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2
{
  *(&v34 + 3) = __PAIR16__(commands, punctuation);
  *(&v34 + 1) = __PAIR16__(recognition, features);
  LOBYTE(v34) = package;
  *(&v33 + 7) = __PAIR16__(request, capitalization);
  *(&v33 + 5) = __PAIR16__(listening, device);
  *(&v33 + 3) = __PAIR16__(only, field);
  *(&v33 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v33) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:profile codec:overrides narrowband:l detectUtterances:rL censorSpeech:codec farField:v33 secureOfflineOnly:origin shouldStoreAudioOnDevice:location continuousListening:grammar shouldHandleCapitalization:v34 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features sharedUserIds:(id)language0 enableEmojiRecognition:(BOOL)language1 enableAutoPunctuation:(BOOL)language2
{
  BYTE4(v34) = 0;
  WORD1(v34) = __PAIR16__(punctuation, recognition);
  LOWORD(v34) = __PAIR16__(features, package);
  *(&v33 + 7) = __PAIR16__(request, capitalization);
  *(&v33 + 5) = __PAIR16__(listening, device);
  *(&v33 + 3) = __PAIR16__(only, field);
  *(&v33 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v33) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:profile codec:overrides narrowband:l detectUtterances:rL censorSpeech:codec farField:v33 secureOfflineOnly:origin shouldStoreAudioOnDevice:location continuousListening:grammar shouldHandleCapitalization:v34 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features
{
  BYTE4(v31) = 0;
  LODWORD(v31) = __PAIR16__(features, package);
  *(&v30 + 7) = __PAIR16__(request, capitalization);
  *(&v30 + 5) = __PAIR16__(listening, device);
  *(&v30 + 3) = __PAIR16__(only, field);
  *(&v30 + 1) = __PAIR16__(speech, utterances);
  LOBYTE(v30) = narrowband;
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:profile codec:overrides narrowband:l detectUtterances:rL censorSpeech:codec farField:v30 secureOfflineOnly:origin shouldStoreAudioOnDevice:location continuousListening:grammar shouldHandleCapitalization:v31 isSpeechAPIRequest:0 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:? deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features
{
  BYTE4(v31) = 0;
  LODWORD(v31) = __PAIR16__(features, package);
  LOBYTE(v30) = 0;
  HIWORD(v29) = __PAIR16__(capitalization, listening);
  WORD2(v29) = __PAIR16__(device, only);
  WORD1(v29) = __PAIR16__(field, speech);
  LOWORD(v29) = __PAIR16__(utterances, narrowband);
  return [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" requestIdentifier:language dictationUIInteractionIdentifier:identifier task:interactionIdentifier loggingContext:task applicationName:context profile:name overrides:duration modelOverrideURL:start originalAudioFileURL:profile codec:overrides narrowband:l detectUtterances:rL censorSpeech:codec farField:v29 secureOfflineOnly:v30 shouldStoreAudioOnDevice:origin continuousListening:location shouldHandleCapitalization:grammar isSpeechAPIRequest:v31 maximumRecognitionDuration:0 endpointStart:0 inputOrigin:0 location:0 jitGrammar:0 deliverEagerPackage:? disableDeliveringAsrFeatures:? enableEmojiRecognition:? enableAutoPunctuation:? enableVoiceCommands:? sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (void)encodeWithCoder:(id)coder
{
  language = self->_language;
  coderCopy = coder;
  [coderCopy encodeObject:language forKey:@"CESRSpeechParameters::language"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"CESRSpeechParameters::requestIdentifier"];
  [coderCopy encodeObject:self->_dictationUIInteractionIdentifier forKey:@"CESRSpeechParameters::dictationUIInteractionIdentifier"];
  [coderCopy encodeObject:self->_task forKey:@"CESRSpeechParameters::task"];
  [coderCopy encodeObject:self->_loggingContext forKey:@"CESRSpeechParameters::loggingContext"];
  [coderCopy encodeObject:self->_applicationName forKey:@"CESRSpeechParameters::applicationName"];
  [coderCopy encodeObject:self->_profile forKey:@"CESRSpeechParameters::profile"];
  [coderCopy encodeObject:self->_overrides forKey:@"CESRSpeechParameters::overrides"];
  [coderCopy encodeObject:self->_modelOverrideURL forKey:@"CESRSpeechParameters::modelOverrideURL"];
  [coderCopy encodeObject:self->_originalAudioFileURL forKey:@"CESRSpeechParameters::originalAudioFileURL"];
  [coderCopy encodeObject:self->_codec forKey:@"CESRSpeechParameters::codec"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_narrowband];
  [coderCopy encodeObject:v5 forKey:@"CESRSpeechParameters::narrowband"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_detectUtterances];
  [coderCopy encodeObject:v6 forKey:@"CESRSpeechParameters::detectUtterances"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_censorSpeech];
  [coderCopy encodeObject:v7 forKey:@"CESRSpeechParameters::censorSpeech"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_farField];
  [coderCopy encodeObject:v8 forKey:@"CESRSpeechParameters::farField"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_secureOfflineOnly];
  [coderCopy encodeObject:v9 forKey:@"CESRSpeechParameters::secureOfflineOnly"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStoreAudioOnDevice];
  [coderCopy encodeObject:v10 forKey:@"CESRSpeechParameters::shouldStoreAudioOnDevice"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousListening];
  [coderCopy encodeObject:v11 forKey:@"CESRSpeechParameters::continuousListening"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldHandleCapitalization];
  [coderCopy encodeObject:v12 forKey:@"CESRSpeechParameters::shouldHandleCapitalization"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSpeechAPIRequest];
  [coderCopy encodeObject:v13 forKey:@"CESRSpeechParameters::isSpeechAPIRequest"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  [coderCopy encodeObject:v14 forKey:@"CESRSpeechParameters::maximumRecognitionDuration"];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endpointStart];
  [coderCopy encodeObject:v15 forKey:@"CESRSpeechParameters::endpointStart"];

  [coderCopy encodeObject:self->_inputOrigin forKey:@"CESRSpeechParameters::inputOrigin"];
  [coderCopy encodeObject:self->_location forKey:@"CESRSpeechParameters::location"];
  [coderCopy encodeObject:self->_jitGrammar forKey:@"CESRSpeechParameters::jitGrammar"];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_deliverEagerPackage];
  [coderCopy encodeObject:v16 forKey:@"CESRSpeechParameters::deliverEagerPackage"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_disableDeliveringAsrFeatures];
  [coderCopy encodeObject:v17 forKey:@"CESRSpeechParameters::disableDeliveringAsrFeatures"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableEmojiRecognition];
  [coderCopy encodeObject:v18 forKey:@"CESRSpeechParameters::enableEmojiRecognition"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableAutoPunctuation];
  [coderCopy encodeObject:v19 forKey:@"CESRSpeechParameters::enableAutoPunctuation"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableVoiceCommands];
  [coderCopy encodeObject:v20 forKey:@"CESRSpeechParameters::enableVoiceCommands"];

  [coderCopy encodeObject:self->_sharedUserInfos forKey:@"CESRSpeechParameters::sharedUserInfos"];
  [coderCopy encodeObject:self->_prefixText forKey:@"CESRSpeechParameters::prefixText"];
  [coderCopy encodeObject:self->_postfixText forKey:@"CESRSpeechParameters::postfixText"];
  [coderCopy encodeObject:self->_selectedText forKey:@"CESRSpeechParameters::selectedText"];
  [coderCopy encodeObject:self->_powerContext forKey:@"CESRSpeechParameters::powerContext"];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognitionStart];
  [coderCopy encodeObject:v21 forKey:@"CESRSpeechParameters::recognitionStart"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateVoiceCommandCandidates];
  [coderCopy encodeObject:v22 forKey:@"CESRSpeechParameters::shouldGenerateVoiceCommandCandidates"];

  [coderCopy encodeObject:self->_asrId forKey:@"CESRSpeechParameters::asrId"];
  [coderCopy encodeObject:self->_activeUserInfo forKey:@"CESRSpeechParameters::activeUserInfo"];
  [coderCopy encodeObject:self->_messagesContext forKey:@"CESRSpeechParameters::messagesContext"];
}

- (CESRSpeechParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::language"];
  v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::requestIdentifier"];
  v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::dictationUIInteractionIdentifier"];
  v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::task"];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v76 = [coderCopy decodeObjectOfClasses:v6 forKey:@"CESRSpeechParameters::loggingContext"];

  v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::applicationName"];
  v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::profile"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v74 = [coderCopy decodeObjectOfClasses:v10 forKey:@"CESRSpeechParameters::overrides"];

  v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::modelOverrideURL"];
  v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::originalAudioFileURL"];
  v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::codec"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::narrowband"];
  bOOLValue = [v11 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::detectUtterances"];
  bOOLValue2 = [v12 BOOLValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::censorSpeech"];
  bOOLValue3 = [v13 BOOLValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::farField"];
  bOOLValue4 = [v14 BOOLValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::secureOfflineOnly"];
  bOOLValue5 = [v15 BOOLValue];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldStoreAudioOnDevice"];
  bOOLValue6 = [v16 BOOLValue];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::continuousListening"];
  bOOLValue7 = [v17 BOOLValue];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldHandleCapitalization"];
  bOOLValue8 = [v18 BOOLValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::isSpeechAPIRequest"];
  bOOLValue9 = [v19 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::maximumRecognitionDuration"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::endpointStart"];
  [v23 doubleValue];
  v25 = v24;

  v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::inputOrigin"];
  v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::location"];
  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  v58 = [coderCopy decodeObjectOfClasses:v28 forKey:@"CESRSpeechParameters::jitGrammar"];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::deliverEagerPackage"];
  bOOLValue10 = [v29 BOOLValue];

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::disableDeliveringAsrFeatures"];
  bOOLValue11 = [v30 BOOLValue];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableEmojiRecognition"];
  bOOLValue12 = [v31 BOOLValue];

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableAutoPunctuation"];
  bOOLValue13 = [v32 BOOLValue];

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::enableVoiceCommands"];
  bOOLValue14 = [v33 BOOLValue];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v80 = [coderCopy decodeObjectOfClasses:v36 forKey:@"CESRSpeechParameters::sharedUserInfos"];

  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::prefixText"];
  v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::postfixText"];
  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::selectedText"];
  v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::powerContext"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::recognitionStart"];
  [v37 doubleValue];
  v39 = v38;

  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::shouldGenerateVoiceCommandCandidates"];
  LOBYTE(v9) = [v40 BOOLValue];

  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::asrId"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CESRSpeechParameters::activeUserInfo"];
  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"CESRSpeechParameters::messagesContext"];

  LOBYTE(v50) = v9;
  BYTE4(v49) = bOOLValue14;
  BYTE3(v49) = bOOLValue13;
  BYTE2(v49) = bOOLValue12;
  BYTE1(v49) = bOOLValue11;
  LOBYTE(v49) = bOOLValue10;
  LOBYTE(v48) = bOOLValue9;
  HIBYTE(v47) = bOOLValue8;
  BYTE6(v47) = bOOLValue7;
  BYTE5(v47) = bOOLValue6;
  BYTE4(v47) = bOOLValue5;
  BYTE3(v47) = bOOLValue4;
  BYTE2(v47) = bOOLValue3;
  BYTE1(v47) = bOOLValue2;
  LOBYTE(v47) = bOOLValue;
  v79 = [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" requestIdentifier:v85 dictationUIInteractionIdentifier:v84 task:v86 loggingContext:v77 applicationName:v76 profile:v75 overrides:v22 modelOverrideURL:v25 originalAudioFileURL:v39 codec:v83 narrowband:v74 detectUtterances:v73 censorSpeech:v64 farField:v63 secureOfflineOnly:v47 shouldStoreAudioOnDevice:v48 continuousListening:v82 shouldHandleCapitalization:v81 isSpeechAPIRequest:v58 maximumRecognitionDuration:v49 endpointStart:v80 inputOrigin:v55 location:v54 jitGrammar:v53 deliverEagerPackage:v52 disableDeliveringAsrFeatures:v50 enableEmojiRecognition:v51 enableAutoPunctuation:v41 enableVoiceCommands:v45 sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];

  return v79;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v55 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

      selfCopy = self;
      disableDeliveringAsrFeatures = self->_disableDeliveringAsrFeatures;
      if (disableDeliveringAsrFeatures != [(CESRSpeechParameters *)v5 disableDeliveringAsrFeatures])
      {
        goto LABEL_50;
      }

      enableEmojiRecognition = selfCopy->_enableEmojiRecognition;
      if (enableEmojiRecognition == [(CESRSpeechParameters *)v5 enableEmojiRecognition]&& (enableAutoPunctuation = selfCopy->_enableAutoPunctuation, enableAutoPunctuation == [(CESRSpeechParameters *)v5 enableAutoPunctuation]) && (enableVoiceCommands = selfCopy->_enableVoiceCommands, enableVoiceCommands == [(CESRSpeechParameters *)v5 enableVoiceCommands]) && (recognitionStart = selfCopy->_recognitionStart, [(CESRSpeechParameters *)v5 recognitionStart], recognitionStart == v26) && (shouldGenerateVoiceCommandCandidates = selfCopy->_shouldGenerateVoiceCommandCandidates, shouldGenerateVoiceCommandCandidates == [(CESRSpeechParameters *)v5 shouldGenerateVoiceCommandCandidates]))
      {
        language = [(CESRSpeechParameters *)v5 language];
        language = selfCopy->_language;
        if (language == language || [(NSString *)language isEqual:language])
        {
          requestIdentifier = [(CESRSpeechParameters *)v5 requestIdentifier];
          requestIdentifier = selfCopy->_requestIdentifier;
          if (requestIdentifier == requestIdentifier || [(NSString *)requestIdentifier isEqual:requestIdentifier])
          {
            dictationUIInteractionIdentifier = [(CESRSpeechParameters *)v5 dictationUIInteractionIdentifier];
            dictationUIInteractionIdentifier = selfCopy->_dictationUIInteractionIdentifier;
            if (dictationUIInteractionIdentifier == dictationUIInteractionIdentifier || [(NSString *)dictationUIInteractionIdentifier isEqual:dictationUIInteractionIdentifier])
            {
              task = [(CESRSpeechParameters *)v5 task];
              task = selfCopy->_task;
              if (task == task || [(NSString *)task isEqual:task])
              {
                loggingContext = [(CESRSpeechParameters *)v5 loggingContext];
                loggingContext = selfCopy->_loggingContext;
                if (loggingContext == loggingContext || [(NSArray *)loggingContext isEqual:loggingContext])
                {
                  applicationName = [(CESRSpeechParameters *)v5 applicationName];
                  applicationName = selfCopy->_applicationName;
                  if (applicationName == applicationName || [(NSString *)applicationName isEqual:applicationName])
                  {
                    profile = [(CESRSpeechParameters *)v5 profile];
                    profile = selfCopy->_profile;
                    if (profile == profile || [(NSData *)profile isEqual:profile])
                    {
                      overrides = [(CESRSpeechParameters *)v5 overrides];
                      overrides = selfCopy->_overrides;
                      v89 = overrides;
                      if (overrides == overrides || [(NSDictionary *)overrides isEqual:overrides])
                      {
                        modelOverrideURL = [(CESRSpeechParameters *)v5 modelOverrideURL];
                        modelOverrideURL = selfCopy->_modelOverrideURL;
                        v88 = modelOverrideURL;
                        if (modelOverrideURL == modelOverrideURL || [(NSURL *)modelOverrideURL isEqual:modelOverrideURL])
                        {
                          originalAudioFileURL = [(CESRSpeechParameters *)v5 originalAudioFileURL];
                          originalAudioFileURL = selfCopy->_originalAudioFileURL;
                          v87 = originalAudioFileURL;
                          if (originalAudioFileURL == originalAudioFileURL || [(NSURL *)originalAudioFileURL isEqual:originalAudioFileURL])
                          {
                            codec = [(CESRSpeechParameters *)v5 codec];
                            codec = selfCopy->_codec;
                            v86 = codec;
                            if (codec == codec || [(NSString *)codec isEqual:codec])
                            {
                              inputOrigin = [(CESRSpeechParameters *)v5 inputOrigin];
                              inputOrigin = selfCopy->_inputOrigin;
                              v85 = inputOrigin;
                              if (inputOrigin == inputOrigin || [(NSString *)inputOrigin isEqual:inputOrigin])
                              {
                                location = [(CESRSpeechParameters *)v5 location];
                                location = selfCopy->_location;
                                v84 = location;
                                if (location == location || ([(CLLocation *)location distanceFromLocation:location], v54 == 0.0))
                                {
                                  jitGrammar = [(CESRSpeechParameters *)v5 jitGrammar];
                                  jitGrammar = selfCopy->_jitGrammar;
                                  v83 = jitGrammar;
                                  if (jitGrammar == jitGrammar || [(NSArray *)jitGrammar isEqual:jitGrammar])
                                  {
                                    sharedUserInfos = [(CESRSpeechParameters *)v5 sharedUserInfos];
                                    sharedUserInfos = selfCopy->_sharedUserInfos;
                                    v82 = sharedUserInfos;
                                    if (sharedUserInfos == sharedUserInfos || [(NSArray *)sharedUserInfos isEqual:sharedUserInfos])
                                    {
                                      prefixText = [(CESRSpeechParameters *)v5 prefixText];
                                      prefixText = selfCopy->_prefixText;
                                      v81 = prefixText;
                                      if (prefixText == prefixText || [(NSString *)prefixText isEqual:prefixText])
                                      {
                                        postfixText = [(CESRSpeechParameters *)v5 postfixText];
                                        postfixText = selfCopy->_postfixText;
                                        v80 = postfixText;
                                        if (postfixText == postfixText || [(NSString *)postfixText isEqual:postfixText])
                                        {
                                          selectedText = [(CESRSpeechParameters *)v5 selectedText];
                                          selectedText = selfCopy->_selectedText;
                                          v79 = selectedText;
                                          if (selectedText == selectedText || [(NSString *)selectedText isEqual:selectedText])
                                          {
                                            powerContext = [(CESRSpeechParameters *)v5 powerContext];
                                            powerContext = selfCopy->_powerContext;
                                            v78 = powerContext;
                                            if (powerContext == powerContext || [(AFPowerContextPolicy *)powerContext isEqual:powerContext])
                                            {
                                              asrId = [(CESRSpeechParameters *)v5 asrId];
                                              asrId = selfCopy->_asrId;
                                              v77 = asrId;
                                              if (asrId == asrId || [(NSUUID *)asrId isEqual:asrId])
                                              {
                                                activeUserInfo = [(CESRSpeechParameters *)v5 activeUserInfo];
                                                activeUserInfo = selfCopy->_activeUserInfo;
                                                v76 = activeUserInfo;
                                                if (activeUserInfo == activeUserInfo || [(AFASRSharedUserInfo *)activeUserInfo isEqual:activeUserInfo])
                                                {
                                                  messagesContext = [(CESRSpeechParameters *)v5 messagesContext];
                                                  messagesContext = selfCopy->_messagesContext;
                                                  v75 = messagesContext;
                                                  v55 = messagesContext == messagesContext || [(NSArray *)messagesContext isEqual:messagesContext];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v130[40] = *MEMORY[0x277D85DE8];
  v112 = objc_alloc(MEMORY[0x277CCACA8]);
  v129.receiver = self;
  v129.super_class = CESRSpeechParameters;
  v128 = [(CESRSpeechParameters *)&v129 description];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v127 = [(NSString *)self->_language description];
  v127 = [v4 initWithFormat:@"language = %@", v127];
  v130[0] = v127;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v125 = [(NSString *)self->_requestIdentifier description];
  v125 = [v5 initWithFormat:@"requestIdentifier = %@", v125];
  v130[1] = v125;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v123 = [(NSString *)self->_dictationUIInteractionIdentifier description];
  v123 = [v6 initWithFormat:@"dictationUIInteractionIdentifier = %@", v123];
  v130[2] = v123;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v121 = [(NSString *)self->_task description];
  v121 = [v7 initWithFormat:@"task = %@", v121];
  v130[3] = v121;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v119 = [(NSArray *)self->_loggingContext description];
  v119 = [v8 initWithFormat:@"loggingContext = %@", v119];
  v130[4] = v119;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v117 = [(NSString *)self->_applicationName description];
  v117 = [v9 initWithFormat:@"applicationName = %@", v117];
  v130[5] = v117;
  v115 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"profile = (%ld bytes)", -[NSData length](self->_profile, "length")];
  v130[6] = v115;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v114 = [(NSDictionary *)self->_overrides description];
  v114 = [v10 initWithFormat:@"overrides = %@", v114];
  v130[7] = v114;
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v110 = [(NSURL *)self->_modelOverrideURL description];
  v110 = [v11 initWithFormat:@"modelOverrideURL = %@", v110];
  v130[8] = v110;
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v108 = [(NSURL *)self->_originalAudioFileURL description];
  v108 = [v12 initWithFormat:@"originalAudioFileURL = %@", v108];
  v130[9] = v108;
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v106 = [(NSString *)self->_codec description];
  v106 = [v13 initWithFormat:@"codec = %@", v106];
  v130[10] = v106;
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

- (CESRSpeechParameters)initWithLanguage:(id)language requestIdentifier:(id)identifier dictationUIInteractionIdentifier:(id)interactionIdentifier task:(id)task loggingContext:(id)context applicationName:(id)name profile:(id)profile overrides:(id)self0 modelOverrideURL:(id)self1 originalAudioFileURL:(id)self2 codec:(id)self3 narrowband:(BOOL)self4 detectUtterances:(BOOL)self5 censorSpeech:(BOOL)self6 farField:(BOOL)self7 secureOfflineOnly:(BOOL)self8 shouldStoreAudioOnDevice:(BOOL)self9 continuousListening:(BOOL)listening shouldHandleCapitalization:(BOOL)capitalization isSpeechAPIRequest:(BOOL)request maximumRecognitionDuration:(double)duration endpointStart:(double)start inputOrigin:(id)origin location:(id)location jitGrammar:(id)grammar deliverEagerPackage:(BOOL)package disableDeliveringAsrFeatures:(BOOL)features enableEmojiRecognition:(BOOL)language0 enableAutoPunctuation:(BOOL)language1 enableVoiceCommands:(BOOL)language2 sharedUserInfos:(id)language3 prefixText:(id)language4 postfixText:(id)language5 selectedText:(id)language6 powerContext:(id)language7 recognitionStart:(double)language8 shouldGenerateVoiceCommandCandidates:(BOOL)language9 asrId:(id)identifier0 activeUserInfo:(id)identifier1 messagesContext:(id)identifier2
{
  languageCopy = language;
  identifierCopy = identifier;
  interactionIdentifierCopy = interactionIdentifier;
  taskCopy = task;
  contextCopy = context;
  nameCopy = name;
  profileCopy = profile;
  overridesCopy = overrides;
  lCopy = l;
  rLCopy = rL;
  codecCopy = codec;
  originCopy = origin;
  locationCopy = location;
  grammarCopy = grammar;
  infosCopy = infos;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  powerContextCopy = powerContext;
  idCopy = id;
  infoCopy = info;
  messagesContextCopy = messagesContext;
  v119.receiver = self;
  v119.super_class = CESRSpeechParameters;
  v59 = [(CESRSpeechParameters *)&v119 init];
  if (v59)
  {
    v60 = [languageCopy copy];
    language = v59->_language;
    v59->_language = v60;

    v62 = [identifierCopy copy];
    requestIdentifier = v59->_requestIdentifier;
    v59->_requestIdentifier = v62;

    v64 = [interactionIdentifierCopy copy];
    dictationUIInteractionIdentifier = v59->_dictationUIInteractionIdentifier;
    v59->_dictationUIInteractionIdentifier = v64;

    v66 = [taskCopy copy];
    task = v59->_task;
    v59->_task = v66;

    v68 = [contextCopy copy];
    loggingContext = v59->_loggingContext;
    v59->_loggingContext = v68;

    v70 = [nameCopy copy];
    applicationName = v59->_applicationName;
    v59->_applicationName = v70;

    v72 = [profileCopy copy];
    profile = v59->_profile;
    v59->_profile = v72;

    v74 = [overridesCopy copy];
    overrides = v59->_overrides;
    v59->_overrides = v74;

    v76 = [lCopy copy];
    modelOverrideURL = v59->_modelOverrideURL;
    v59->_modelOverrideURL = v76;

    v78 = [rLCopy copy];
    originalAudioFileURL = v59->_originalAudioFileURL;
    v59->_originalAudioFileURL = v78;

    v80 = [codecCopy copy];
    codec = v59->_codec;
    v59->_codec = v80;

    v59->_narrowband = narrowband;
    v59->_detectUtterances = utterances;
    v59->_censorSpeech = speech;
    v59->_farField = field;
    v59->_secureOfflineOnly = only;
    v59->_shouldStoreAudioOnDevice = device;
    v59->_continuousListening = listening;
    v59->_shouldHandleCapitalization = capitalization;
    v59->_isSpeechAPIRequest = request;
    v59->_maximumRecognitionDuration = duration;
    v59->_endpointStart = start;
    v82 = [originCopy copy];
    inputOrigin = v59->_inputOrigin;
    v59->_inputOrigin = v82;

    v84 = [locationCopy copy];
    location = v59->_location;
    v59->_location = v84;

    v86 = [grammarCopy copy];
    jitGrammar = v59->_jitGrammar;
    v59->_jitGrammar = v86;

    v59->_deliverEagerPackage = package;
    v59->_disableDeliveringAsrFeatures = features;
    v59->_enableEmojiRecognition = recognition;
    v59->_enableAutoPunctuation = punctuation;
    v59->_enableVoiceCommands = commands;
    v88 = [infosCopy copy];
    sharedUserInfos = v59->_sharedUserInfos;
    v59->_sharedUserInfos = v88;

    v90 = [textCopy copy];
    prefixText = v59->_prefixText;
    v59->_prefixText = v90;

    v92 = [postfixTextCopy copy];
    postfixText = v59->_postfixText;
    v59->_postfixText = v92;

    v94 = [selectedTextCopy copy];
    selectedText = v59->_selectedText;
    v59->_selectedText = v94;

    v96 = [powerContextCopy copy];
    powerContext = v59->_powerContext;
    v59->_powerContext = v96;

    v59->_recognitionStart = recognitionStart;
    v59->_shouldGenerateVoiceCommandCandidates = candidates;
    v98 = [idCopy copy];
    asrId = v59->_asrId;
    v59->_asrId = v98;

    v100 = [infoCopy copy];
    activeUserInfo = v59->_activeUserInfo;
    v59->_activeUserInfo = v100;

    v102 = [messagesContextCopy copy];
    messagesContext = v59->_messagesContext;
    v59->_messagesContext = v102;
  }

  return v59;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_CESRSpeechParametersMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_CESRSpeechParametersMutation *)v5 generate];
  }

  else
  {
    generate = [(CESRSpeechParameters *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_CESRSpeechParametersMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_CESRSpeechParametersMutation *)v4 generate];

  return generate;
}

@end