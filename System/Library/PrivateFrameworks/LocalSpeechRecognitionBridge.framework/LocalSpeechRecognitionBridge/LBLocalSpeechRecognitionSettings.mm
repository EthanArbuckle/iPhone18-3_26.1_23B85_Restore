@interface LBLocalSpeechRecognitionSettings
+ (id)getTaskStringFromSpeechRecognitionSettings:(id)settings;
+ (id)taskString:(unint64_t)string;
- (LBLocalSpeechRecognitionSettings)initWithCoder:(id)coder;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4 activeUserInfo:(id)id5;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4 activeUserInfo:(id)id5 messagesContext:(id)id6;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)time audioRecordType:(int64_t)id0 audioRecordDeviceId:(id)id1 shouldGenerateVoiceCommandCandidates:(BOOL)id2 asrLocale:(id)id3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LBLocalSpeechRecognitionSettings

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"[inputOrigin = %@]", self->_inputOrigin];
  [string appendFormat:@"[speechRecognitionTask = %lu]", self->_speechRecognitionTask];
  [string appendFormat:@"[speechRecognitionMode = %lu]", self->_speechRecognitionMode];
  [string appendFormat:@"[applicationName = %@]", self->_applicationName];
  if (self->_detectUtterances)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [string appendFormat:@"[detectUtterances = %@]", v4];
  if (self->_continuousListening)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [string appendFormat:@"[continuousListening = %@]", v5];
  if (self->_shouldHandleCapitalization)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"[shouldHandleCapitalization = %@]", v6];
  if (self->_secureOfflineOnly)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"[secureOfflineOnly = %@]", v7];
  [string appendFormat:@"[maximumRecognitionDuration = %f]", *&self->_maximumRecognitionDuration];
  if (self->_location)
  {
    v8 = "present";
  }

  else
  {
    v8 = "nil";
  }

  [string appendFormat:@"[location = %s]", v8];
  [string appendFormat:@"[overrides = %@]", self->_recognitionOverrides];
  if (self->_jitGrammar)
  {
    v9 = @"REDACTED";
  }

  else
  {
    v9 = 0;
  }

  [string appendFormat:@"[jitGrammar = %@]", v9];
  [string appendFormat:@"[overrideModelPath = %@]", self->_overrideModelPath];
  if (self->_shouldStoreAudioOnDevice)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [string appendFormat:@"[shouldStoreAudioOnDevice = %@]", v10];
  if (self->_deliverEagerPackage)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [string appendFormat:@"[deliverEagerPackage = %@]", v11];
  [string appendFormat:@"[UILanguage = %@]", self->_UILanguage];
  if (self->_enableEmojiRecognition)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [string appendFormat:@"[enableEmojiRecognition = %@]", v12];
  if (self->_enableAutoPunctuation)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [string appendFormat:@"[enableAutoPunctuation = %@]", v13];
  if (self->_enableVoiceCommands)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [string appendFormat:@"[enableVoiceCommands = %@]", v14];
  [string appendFormat:@"[sharedUserInfos = %@]", self->_sharedUserInfos];
  if (self->_prefixText)
  {
    v15 = @"REDACTED";
  }

  else
  {
    v15 = 0;
  }

  [string appendFormat:@"[prefixText = %@]", v15];
  if (self->_postfixText)
  {
    v16 = @"REDACTED";
  }

  else
  {
    v16 = 0;
  }

  [string appendFormat:@"[postfixText = %@]", v16];
  if (self->_selectedText)
  {
    v17 = @"REDACTED";
  }

  else
  {
    v17 = 0;
  }

  [string appendFormat:@"[selectedText = %@]", v17];
  [string appendFormat:@"[powerContext = %@]", self->_powerContext];
  if (self->_shouldStartAudioCapture)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [string appendFormat:@"[shouldStartAudioCapture = %@]", v18];
  [string appendFormat:@"[audioRecordType] = %lld]", self->_audioRecordType];
  [string appendFormat:@"[audioStartHostTime = %llu", self->_audioCaptureStartHostTime];
  [string appendFormat:@"[deviceId = %@]", self->_audioRecordDeviceId];
  if (self->_shouldGenerateVoiceCommandCandidates)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [string appendFormat:@"[shouldGenerateVoiceCommandCandidates = %@]", v19];
  [string appendFormat:@"[asrLocale = %@]", self->_asrLocale];
  [string appendFormat:@"[messagesContext = %@]", self->_messagesContext];

  return string;
}

- (void)encodeWithCoder:(id)coder
{
  requestId = self->_requestId;
  coderCopy = coder;
  [coderCopy encodeObject:requestId forKey:@"LBLocalSpeechRecognitionSettings:::requestId"];
  [coderCopy encodeObject:self->_inputOrigin forKey:@"LBLocalSpeechRecognitionSettings:::inputOrigin"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speechRecognitionTask];
  [coderCopy encodeObject:v5 forKey:@"LBLocalSpeechRecognitionSettings:::task"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speechRecognitionMode];
  [coderCopy encodeObject:v6 forKey:@"LBLocalSpeechRecognitionSettings:::mode"];

  [coderCopy encodeObject:self->_location forKey:@"LBLocalSpeechRecognitionSettings:::location"];
  [coderCopy encodeObject:self->_jitGrammar forKey:@"LBLocalSpeechRecognitionSettings:::jitGrammar"];
  [coderCopy encodeObject:self->_overrideModelPath forKey:@"LBLocalSpeechRecognitionSettings:::overrideModelPath"];
  [coderCopy encodeObject:self->_applicationName forKey:@"LBLocalSpeechRecognitionSettings:::applicationName"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_detectUtterances];
  [coderCopy encodeObject:v7 forKey:@"LBLocalSpeechRecognitionSettings:::detectUtterances"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousListening];
  [coderCopy encodeObject:v8 forKey:@"LBLocalSpeechRecognitionSettings:::continuousListening"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldHandleCapitalization];
  [coderCopy encodeObject:v9 forKey:@"LBLocalSpeechRecognitionSettings:::shouldHandleCapitalization"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_secureOfflineOnly];
  [coderCopy encodeObject:v10 forKey:@"LBLocalSpeechRecognitionSettings:::secureOfflineOnly"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  [coderCopy encodeObject:v11 forKey:@"LBLocalSpeechRecognitionSettings:::maxRecognitionDuration"];

  [coderCopy encodeObject:self->_recognitionOverrides forKey:@"LBLocalSpeechRecognitionSettings:::recognitionOverrides"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStoreAudioOnDevice];
  [coderCopy encodeObject:v12 forKey:@"LBLocalSpeechRecognitionSettings:::shouldStoreAudioOnDevice"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_deliverEagerPackage];
  [coderCopy encodeObject:v13 forKey:@"LBLocalSpeechRecognitionSettings:::deliverEagerPackage"];

  [coderCopy encodeObject:self->_UILanguage forKey:@"LBLocalSpeechRecognitionSettings:::UILanguage"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableEmojiRecognition];
  [coderCopy encodeObject:v14 forKey:@"LBLocalSpeechRecognitionSettings:::enableEmojiRecognition"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableAutoPunctuation];
  [coderCopy encodeObject:v15 forKey:@"LBLocalSpeechRecognitionSettings:::enableAutoPunctuation"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableVoiceCommands];
  [coderCopy encodeObject:v16 forKey:@"LBLocalSpeechRecognitionSettings:::enableVoiceCommands"];

  [coderCopy encodeObject:self->_dictationUIInteractionId forKey:@"LBLocalSpeechRecognitionSettings:::dictationUIInteractionId"];
  [coderCopy encodeObject:self->_sharedUserInfos forKey:@"LBLocalSpeechRecognitionSettings:::sharedUserInfos"];
  [coderCopy encodeObject:self->_prefixText forKey:@"LBLocalSpeechRecognitionSettings:::prefixText"];
  [coderCopy encodeObject:self->_postfixText forKey:@"LBLocalSpeechRecognitionSettings:::postfixText"];
  [coderCopy encodeObject:self->_selectedText forKey:@"LBLocalSpeechRecognitionSettings:::selectedText"];
  [coderCopy encodeObject:self->_powerContext forKey:@"LBLocalSpeechRecognitionSettings:::powerContext"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStartAudioCapture];
  [coderCopy encodeObject:v17 forKey:@"LBLocalSpeechRecognitionSettings:::shouldStartAudioCapture"];

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_audioRecordType];
  [coderCopy encodeObject:v18 forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordType"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_audioCaptureStartHostTime];
  [coderCopy encodeObject:v19 forKey:@"LBLocalSpeechRecognitionSettings:::audioCaptureStartHostTime"];

  [coderCopy encodeObject:self->_audioRecordDeviceId forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordDeviceId"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateVoiceCommandCandidates];
  [coderCopy encodeObject:v20 forKey:@"LBLocalSpeechRecognitionSettings:::shouldGenerateVoiceCommandCandidates"];

  [coderCopy encodeObject:self->_asrLocale forKey:@"LBLocalSpeechRecognitionSettings:::asrLocale"];
  [coderCopy encodeObject:self->_activeUserInfo forKey:@"LBLocalSpeechRecognitionSettings:::activeUserInfo"];
  [coderCopy encodeObject:self->_messagesContext forKey:@"LBLocalSpeechRecognitionSettings:::messagesContext"];
}

- (LBLocalSpeechRecognitionSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::requestId"];
  v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::inputOrigin"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::task"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::mode"];
  unsignedIntegerValue2 = [v5 unsignedIntegerValue];

  v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::location"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v64 = [coderCopy decodeObjectOfClasses:v8 forKey:@"LBLocalSpeechRecognitionSettings:::jitGrammar"];

  v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::overrideModelPath"];
  v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::applicationName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::detectUtterances"];
  bOOLValue = [v9 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::continuousListening"];
  bOOLValue2 = [v10 BOOLValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldHandleCapitalization"];
  bOOLValue3 = [v11 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::secureOfflineOnly"];
  bOOLValue4 = [v12 BOOLValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::maxRecognitionDuration"];
  [v13 doubleValue];
  v15 = v14;

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v70 = [coderCopy decodeObjectOfClasses:v18 forKey:@"LBLocalSpeechRecognitionSettings:::recognitionOverrides"];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldStoreAudioOnDevice"];
  bOOLValue5 = [v19 BOOLValue];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::deliverEagerPackage"];
  bOOLValue6 = [v20 BOOLValue];

  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::UILanguage"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableEmojiRecognition"];
  bOOLValue7 = [v21 BOOLValue];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableAutoPunctuation"];
  bOOLValue8 = [v22 BOOLValue];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableVoiceCommands"];
  bOOLValue9 = [v23 BOOLValue];

  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::dictationUIInteractionId"];
  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v52 = [coderCopy decodeObjectOfClasses:v26 forKey:@"LBLocalSpeechRecognitionSettings:::sharedUserInfos"];

  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::prefixText"];
  v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::postfixText"];
  v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::selectedText"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::powerContext"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldStartAudioCapture"];
  bOOLValue10 = [v28 BOOLValue];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordType"];
  longLongValue = [v29 longLongValue];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioCaptureStartHostTime"];
  unsignedLongLongValue = [v31 unsignedLongLongValue];

  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordDeviceId"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldGenerateVoiceCommandCandidates"];
  bOOLValue11 = [v33 BOOLValue];

  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::asrLocale"];
  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::activeUserInfo"];
  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"LBLocalSpeechRecognitionSettings:::messagesContext"];

  LOBYTE(v44) = bOOLValue11;
  LOBYTE(v43) = bOOLValue10;
  LOBYTE(v42) = bOOLValue9;
  BYTE3(v41) = bOOLValue8;
  BYTE2(v41) = bOOLValue7;
  BYTE1(v41) = bOOLValue6;
  LOBYTE(v41) = bOOLValue5;
  BYTE3(v40) = bOOLValue4;
  BYTE2(v40) = bOOLValue3;
  BYTE1(v40) = bOOLValue2;
  LOBYTE(v40) = bOOLValue;
  v69 = [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:messagesContext:" inputOrigin:v74 speechRecognitionTaskName:v73 speechRecognitionMode:unsignedIntegerValue location:unsignedIntegerValue2 jitGrammar:v65 overrideModelPath:v64 applicationName:v15 detectUtterances:v72 continuousListening:v71 shouldHandleCapitalization:v40 secureOfflineOnly:v70 maximumRecognitionDuration:v41 recognitionOverrides:v57 shouldStoreAudioOnDevice:v42 deliverEagerPackage:v53 enableEmojiRecognition:v52 enableAutoPunctuation:v51 UILanguage:v50 enableVoiceCommands:v48 dictationUIInteractionId:v27 sharedUserInfos:v43 prefixText:unsignedLongLongValue postfixText:longLongValue selectedText:v47 powerContext:v44 shouldStartAudioCapture:v46 audioCaptureStartHostTime:v45 audioRecordType:v38 audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];

  return v69;
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4 activeUserInfo:(id)id5 messagesContext:(id)id6
{
  idCopy = id;
  originCopy = origin;
  locationCopy = location;
  grammarCopy = grammar;
  pathCopy = path;
  applicationNameCopy = applicationName;
  overridesCopy = overrides;
  languageCopy = language;
  interactionIdCopy = interactionId;
  infosCopy = infos;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  contextCopy = context;
  deviceIdCopy = deviceId;
  localeCopy = locale;
  infoCopy = info;
  messagesContextCopy = messagesContext;
  v81.receiver = self;
  v81.super_class = LBLocalSpeechRecognitionSettings;
  v48 = [(LBLocalSpeechRecognitionSettings *)&v81 init];
  if (v48)
  {
    v49 = [idCopy copy];
    requestId = v48->_requestId;
    v48->_requestId = v49;

    v51 = [originCopy copy];
    inputOrigin = v48->_inputOrigin;
    v48->_inputOrigin = v51;

    v48->_speechRecognitionTask = name;
    v48->_speechRecognitionMode = mode;
    v53 = [locationCopy copy];
    location = v48->_location;
    v48->_location = v53;

    v55 = [grammarCopy copy];
    jitGrammar = v48->_jitGrammar;
    v48->_jitGrammar = v55;

    v57 = [pathCopy copy];
    overrideModelPath = v48->_overrideModelPath;
    v48->_overrideModelPath = v57;

    v59 = [applicationNameCopy copy];
    applicationName = v48->_applicationName;
    v48->_applicationName = v59;

    v48->_detectUtterances = utterances;
    v48->_continuousListening = listening;
    v48->_shouldHandleCapitalization = capitalization;
    v48->_secureOfflineOnly = only;
    v48->_maximumRecognitionDuration = duration;
    v61 = [overridesCopy copy];
    recognitionOverrides = v48->_recognitionOverrides;
    v48->_recognitionOverrides = v61;

    v48->_shouldStoreAudioOnDevice = device;
    v48->_deliverEagerPackage = package;
    objc_storeStrong(&v48->_UILanguage, language);
    v48->_enableEmojiRecognition = recognition;
    v48->_enableAutoPunctuation = punctuation;
    v48->_enableVoiceCommands = commands;
    objc_storeStrong(&v48->_dictationUIInteractionId, interactionId);
    v63 = [infosCopy copy];
    sharedUserInfos = v48->_sharedUserInfos;
    v48->_sharedUserInfos = v63;

    objc_storeStrong(&v48->_prefixText, text);
    objc_storeStrong(&v48->_postfixText, postfixText);
    objc_storeStrong(&v48->_selectedText, selectedText);
    objc_storeStrong(&v48->_powerContext, context);
    v48->_shouldStartAudioCapture = capture;
    v48->_audioCaptureStartHostTime = time;
    v48->_audioRecordType = type;
    objc_storeStrong(&v48->_audioRecordDeviceId, deviceId);
    v48->_shouldGenerateVoiceCommandCandidates = candidates;
    v65 = [localeCopy copy];
    asrLocale = v48->_asrLocale;
    v48->_asrLocale = v65;

    objc_storeStrong(&v48->_activeUserInfo, info);
    objc_storeStrong(&v48->_messagesContext, messagesContext);
  }

  return v48;
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4 activeUserInfo:(id)id5
{
  LOBYTE(v40) = candidates;
  LOBYTE(v39) = capture;
  LOBYTE(v38) = commands;
  WORD1(v37) = __PAIR16__(punctuation, recognition);
  LOWORD(v37) = __PAIR16__(package, device);
  WORD1(v36) = __PAIR16__(only, capitalization);
  LOWORD(v36) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:messagesContext:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:mode jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v36 secureOfflineOnly:overrides maximumRecognitionDuration:v37 recognitionOverrides:language shouldStoreAudioOnDevice:v38 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v39 prefixText:time postfixText:type selectedText:deviceId powerContext:v40 shouldStartAudioCapture:locale audioCaptureStartHostTime:info audioRecordType:0 audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3 asrLocale:(id)id4
{
  LOBYTE(v39) = candidates;
  LOBYTE(v38) = capture;
  LOBYTE(v37) = commands;
  WORD1(v36) = __PAIR16__(punctuation, recognition);
  LOWORD(v36) = __PAIR16__(package, device);
  WORD1(v35) = __PAIR16__(only, capitalization);
  LOWORD(v35) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:mode jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v35 secureOfflineOnly:overrides maximumRecognitionDuration:v36 recognitionOverrides:language shouldStoreAudioOnDevice:v37 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v38 prefixText:time postfixText:type selectedText:deviceId powerContext:v39 shouldStartAudioCapture:locale audioCaptureStartHostTime:0 audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)time audioRecordType:(int64_t)id0 audioRecordDeviceId:(id)id1 shouldGenerateVoiceCommandCandidates:(BOOL)id2 asrLocale:(id)id3
{
  LOBYTE(v38) = candidates;
  LOBYTE(v37) = capture;
  LOBYTE(v36) = commands;
  WORD1(v35) = __PAIR16__(punctuation, recognition);
  LOWORD(v35) = __PAIR16__(package, device);
  WORD1(v34) = __PAIR16__(only, capitalization);
  LOWORD(v34) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:mode jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v34 secureOfflineOnly:overrides maximumRecognitionDuration:v35 recognitionOverrides:0 shouldStoreAudioOnDevice:v36 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v37 prefixText:time postfixText:type selectedText:deviceId powerContext:v38 shouldStartAudioCapture:locale audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2 shouldGenerateVoiceCommandCandidates:(BOOL)id3
{
  LOBYTE(v38) = candidates;
  LOBYTE(v37) = capture;
  LOBYTE(v36) = commands;
  WORD1(v35) = __PAIR16__(punctuation, recognition);
  LOWORD(v35) = __PAIR16__(package, device);
  WORD1(v34) = __PAIR16__(only, capitalization);
  LOWORD(v34) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:mode jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v34 secureOfflineOnly:overrides maximumRecognitionDuration:v35 recognitionOverrides:language shouldStoreAudioOnDevice:v36 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v37 prefixText:time postfixText:type selectedText:deviceId powerContext:v38 shouldStartAudioCapture:0 audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name speechRecognitionMode:(unint64_t)mode location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)self0 detectUtterances:(BOOL)self1 continuousListening:(BOOL)self2 shouldHandleCapitalization:(BOOL)self3 secureOfflineOnly:(BOOL)self4 maximumRecognitionDuration:(double)self5 recognitionOverrides:(id)self6 shouldStoreAudioOnDevice:(BOOL)self7 deliverEagerPackage:(BOOL)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context shouldStartAudioCapture:(BOOL)capture audioCaptureStartHostTime:(unint64_t)id0 audioRecordType:(int64_t)id1 audioRecordDeviceId:(id)id2
{
  LOBYTE(v37) = 0;
  LOBYTE(v36) = capture;
  LOBYTE(v35) = commands;
  WORD1(v34) = __PAIR16__(punctuation, recognition);
  LOWORD(v34) = __PAIR16__(package, device);
  WORD1(v33) = __PAIR16__(only, capitalization);
  LOWORD(v33) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:mode jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v33 secureOfflineOnly:overrides maximumRecognitionDuration:v34 recognitionOverrides:language shouldStoreAudioOnDevice:v35 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v36 prefixText:time postfixText:type selectedText:deviceId powerContext:v37 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText powerContext:(id)context
{
  LOBYTE(v31) = 0;
  LOBYTE(v30) = commands;
  WORD1(v29) = __PAIR16__(punctuation, recognition);
  LOWORD(v29) = __PAIR16__(package, device);
  WORD1(v28) = __PAIR16__(only, capitalization);
  LOWORD(v28) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:" inputOrigin:id speechRecognitionTaskName:origin speechRecognitionMode:name location:0 jitGrammar:location overrideModelPath:grammar applicationName:duration detectUtterances:path continuousListening:applicationName shouldHandleCapitalization:v28 secureOfflineOnly:overrides maximumRecognitionDuration:v29 recognitionOverrides:language shouldStoreAudioOnDevice:v30 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:context sharedUserInfos:v31 prefixText:0 postfixText:0 selectedText:0 powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  LOBYTE(v29) = commands;
  WORD1(v28) = __PAIR16__(punctuation, recognition);
  LOWORD(v28) = __PAIR16__(package, device);
  WORD1(v27) = __PAIR16__(only, capitalization);
  LOWORD(v27) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v27 secureOfflineOnly:overrides maximumRecognitionDuration:v28 recognitionOverrides:language shouldStoreAudioOnDevice:v29 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:text UILanguage:postfixText enableVoiceCommands:selectedText dictationUIInteractionId:0 sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 enableEmojiRecognition:(BOOL)self8 enableAutoPunctuation:(BOOL)self9 UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId sharedUserInfos:(id)infos
{
  LOBYTE(v26) = commands;
  WORD1(v25) = __PAIR16__(punctuation, recognition);
  LOWORD(v25) = __PAIR16__(package, device);
  WORD1(v24) = __PAIR16__(only, capitalization);
  LOWORD(v24) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v24 secureOfflineOnly:overrides maximumRecognitionDuration:v25 recognitionOverrides:language shouldStoreAudioOnDevice:v26 deliverEagerPackage:interactionId enableEmojiRecognition:infos enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:? sharedUserInfos:? prefixText:? postfixText:? selectedText:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands dictationUIInteractionId:(id)interactionId
{

  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:? shouldHandleCapitalization:? secureOfflineOnly:? maximumRecognitionDuration:? recognitionOverrides:? shouldStoreAudioOnDevice:? deliverEagerPackage:? enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:? enableVoiceCommands:? dictationUIInteractionId:? sharedUserInfos:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language enableVoiceCommands:(BOOL)commands
{
  LOBYTE(v26) = commands;
  LOWORD(v25) = __PAIR16__(punctuation, recognition);
  LOWORD(v24) = __PAIR16__(package, device);
  WORD1(v23) = __PAIR16__(only, capitalization);
  LOWORD(v23) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v23 secureOfflineOnly:overrides maximumRecognitionDuration:v24 recognitionOverrides:ids shouldStoreAudioOnDevice:v25 deliverEagerPackage:language sharedUserIds:v26 enableEmojiRecognition:0 enableAutoPunctuation:? UILanguage:? enableVoiceCommands:? dictationUIInteractionId:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation UILanguage:(id)language
{
  LOBYTE(v25) = 0;
  LOWORD(v24) = __PAIR16__(punctuation, recognition);
  LOWORD(v23) = __PAIR16__(package, device);
  WORD1(v22) = __PAIR16__(only, capitalization);
  LOWORD(v22) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v22 secureOfflineOnly:overrides maximumRecognitionDuration:v23 recognitionOverrides:ids shouldStoreAudioOnDevice:v24 deliverEagerPackage:language sharedUserIds:v25 enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:? enableVoiceCommands:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8 enableEmojiRecognition:(BOOL)self9 enableAutoPunctuation:(BOOL)punctuation
{
  LOWORD(v23) = __PAIR16__(punctuation, recognition);
  LOWORD(v22) = __PAIR16__(package, device);
  WORD1(v21) = __PAIR16__(only, capitalization);
  LOWORD(v21) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v21 secureOfflineOnly:overrides maximumRecognitionDuration:v22 recognitionOverrides:ids shouldStoreAudioOnDevice:v23 deliverEagerPackage:0 sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7 sharedUserIds:(id)self8
{
  LOWORD(v21) = 0;
  LOWORD(v20) = __PAIR16__(package, device);
  WORD1(v19) = __PAIR16__(only, capitalization);
  LOWORD(v19) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v19 secureOfflineOnly:overrides maximumRecognitionDuration:v20 recognitionOverrides:ids shouldStoreAudioOnDevice:v21 deliverEagerPackage:? sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6 deliverEagerPackage:(BOOL)self7
{
  LOWORD(v19) = __PAIR16__(package, device);
  WORD1(v18) = __PAIR16__(only, capitalization);
  LOWORD(v18) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v18 secureOfflineOnly:overrides maximumRecognitionDuration:v19 recognitionOverrides:0 shouldStoreAudioOnDevice:? deliverEagerPackage:? sharedUserIds:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5 shouldStoreAudioOnDevice:(BOOL)self6
{
  BYTE1(v18) = 1;
  LOBYTE(v18) = device;
  WORD1(v17) = __PAIR16__(only, capitalization);
  LOWORD(v17) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v17 secureOfflineOnly:overrides maximumRecognitionDuration:v18 recognitionOverrides:? shouldStoreAudioOnDevice:? deliverEagerPackage:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)id inputOrigin:(id)origin speechRecognitionTaskName:(unint64_t)name location:(id)location jitGrammar:(id)grammar overrideModelPath:(id)path applicationName:(id)applicationName detectUtterances:(BOOL)self0 continuousListening:(BOOL)self1 shouldHandleCapitalization:(BOOL)self2 secureOfflineOnly:(BOOL)self3 maximumRecognitionDuration:(double)self4 recognitionOverrides:(id)self5
{
  LOBYTE(v17) = 1;
  WORD1(v16) = __PAIR16__(only, capitalization);
  LOWORD(v16) = __PAIR16__(listening, utterances);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:" inputOrigin:id speechRecognitionTaskName:origin location:name jitGrammar:location overrideModelPath:grammar applicationName:path detectUtterances:duration continuousListening:applicationName shouldHandleCapitalization:v16 secureOfflineOnly:overrides maximumRecognitionDuration:v17 recognitionOverrides:? shouldStoreAudioOnDevice:?];
}

+ (id)getTaskStringFromSpeechRecognitionSettings:(id)settings
{
  if (settings)
  {
    speechRecognitionTask = [settings speechRecognitionTask];
    v3 = vars8;
  }

  else
  {
    speechRecognitionTask = 1;
  }

  return [LBLocalSpeechRecognitionSettings taskString:speechRecognitionTask];
}

+ (id)taskString:(unint64_t)string
{
  if (string > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798239F8[string];
  }
}

@end