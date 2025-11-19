@interface LBLocalSpeechRecognitionSettings
+ (id)getTaskStringFromSpeechRecognitionSettings:(id)a3;
+ (id)taskString:(unint64_t)a3;
- (LBLocalSpeechRecognitionSettings)initWithCoder:(id)a3;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26 powerContext:(id)a27;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34 activeUserInfo:(id)a35;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34 activeUserInfo:(id)a35 messagesContext:(id)a36;
- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26 powerContext:(id)a27 shouldStartAudioCapture:(BOOL)a28 audioCaptureStartHostTime:(unint64_t)a29 audioRecordType:(int64_t)a30 audioRecordDeviceId:(id)a31 shouldGenerateVoiceCommandCandidates:(BOOL)a32 asrLocale:(id)a33;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LBLocalSpeechRecognitionSettings

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"[inputOrigin = %@]", self->_inputOrigin];
  [v3 appendFormat:@"[speechRecognitionTask = %lu]", self->_speechRecognitionTask];
  [v3 appendFormat:@"[speechRecognitionMode = %lu]", self->_speechRecognitionMode];
  [v3 appendFormat:@"[applicationName = %@]", self->_applicationName];
  if (self->_detectUtterances)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"[detectUtterances = %@]", v4];
  if (self->_continuousListening)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"[continuousListening = %@]", v5];
  if (self->_shouldHandleCapitalization)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"[shouldHandleCapitalization = %@]", v6];
  if (self->_secureOfflineOnly)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"[secureOfflineOnly = %@]", v7];
  [v3 appendFormat:@"[maximumRecognitionDuration = %f]", *&self->_maximumRecognitionDuration];
  if (self->_location)
  {
    v8 = "present";
  }

  else
  {
    v8 = "nil";
  }

  [v3 appendFormat:@"[location = %s]", v8];
  [v3 appendFormat:@"[overrides = %@]", self->_recognitionOverrides];
  if (self->_jitGrammar)
  {
    v9 = @"REDACTED";
  }

  else
  {
    v9 = 0;
  }

  [v3 appendFormat:@"[jitGrammar = %@]", v9];
  [v3 appendFormat:@"[overrideModelPath = %@]", self->_overrideModelPath];
  if (self->_shouldStoreAudioOnDevice)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"[shouldStoreAudioOnDevice = %@]", v10];
  if (self->_deliverEagerPackage)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 appendFormat:@"[deliverEagerPackage = %@]", v11];
  [v3 appendFormat:@"[UILanguage = %@]", self->_UILanguage];
  if (self->_enableEmojiRecognition)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"[enableEmojiRecognition = %@]", v12];
  if (self->_enableAutoPunctuation)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"[enableAutoPunctuation = %@]", v13];
  if (self->_enableVoiceCommands)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 appendFormat:@"[enableVoiceCommands = %@]", v14];
  [v3 appendFormat:@"[sharedUserInfos = %@]", self->_sharedUserInfos];
  if (self->_prefixText)
  {
    v15 = @"REDACTED";
  }

  else
  {
    v15 = 0;
  }

  [v3 appendFormat:@"[prefixText = %@]", v15];
  if (self->_postfixText)
  {
    v16 = @"REDACTED";
  }

  else
  {
    v16 = 0;
  }

  [v3 appendFormat:@"[postfixText = %@]", v16];
  if (self->_selectedText)
  {
    v17 = @"REDACTED";
  }

  else
  {
    v17 = 0;
  }

  [v3 appendFormat:@"[selectedText = %@]", v17];
  [v3 appendFormat:@"[powerContext = %@]", self->_powerContext];
  if (self->_shouldStartAudioCapture)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"[shouldStartAudioCapture = %@]", v18];
  [v3 appendFormat:@"[audioRecordType] = %lld]", self->_audioRecordType];
  [v3 appendFormat:@"[audioStartHostTime = %llu", self->_audioCaptureStartHostTime];
  [v3 appendFormat:@"[deviceId = %@]", self->_audioRecordDeviceId];
  if (self->_shouldGenerateVoiceCommandCandidates)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"[shouldGenerateVoiceCommandCandidates = %@]", v19];
  [v3 appendFormat:@"[asrLocale = %@]", self->_asrLocale];
  [v3 appendFormat:@"[messagesContext = %@]", self->_messagesContext];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  requestId = self->_requestId;
  v21 = a3;
  [v21 encodeObject:requestId forKey:@"LBLocalSpeechRecognitionSettings:::requestId"];
  [v21 encodeObject:self->_inputOrigin forKey:@"LBLocalSpeechRecognitionSettings:::inputOrigin"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speechRecognitionTask];
  [v21 encodeObject:v5 forKey:@"LBLocalSpeechRecognitionSettings:::task"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speechRecognitionMode];
  [v21 encodeObject:v6 forKey:@"LBLocalSpeechRecognitionSettings:::mode"];

  [v21 encodeObject:self->_location forKey:@"LBLocalSpeechRecognitionSettings:::location"];
  [v21 encodeObject:self->_jitGrammar forKey:@"LBLocalSpeechRecognitionSettings:::jitGrammar"];
  [v21 encodeObject:self->_overrideModelPath forKey:@"LBLocalSpeechRecognitionSettings:::overrideModelPath"];
  [v21 encodeObject:self->_applicationName forKey:@"LBLocalSpeechRecognitionSettings:::applicationName"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_detectUtterances];
  [v21 encodeObject:v7 forKey:@"LBLocalSpeechRecognitionSettings:::detectUtterances"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_continuousListening];
  [v21 encodeObject:v8 forKey:@"LBLocalSpeechRecognitionSettings:::continuousListening"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldHandleCapitalization];
  [v21 encodeObject:v9 forKey:@"LBLocalSpeechRecognitionSettings:::shouldHandleCapitalization"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_secureOfflineOnly];
  [v21 encodeObject:v10 forKey:@"LBLocalSpeechRecognitionSettings:::secureOfflineOnly"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumRecognitionDuration];
  [v21 encodeObject:v11 forKey:@"LBLocalSpeechRecognitionSettings:::maxRecognitionDuration"];

  [v21 encodeObject:self->_recognitionOverrides forKey:@"LBLocalSpeechRecognitionSettings:::recognitionOverrides"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStoreAudioOnDevice];
  [v21 encodeObject:v12 forKey:@"LBLocalSpeechRecognitionSettings:::shouldStoreAudioOnDevice"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_deliverEagerPackage];
  [v21 encodeObject:v13 forKey:@"LBLocalSpeechRecognitionSettings:::deliverEagerPackage"];

  [v21 encodeObject:self->_UILanguage forKey:@"LBLocalSpeechRecognitionSettings:::UILanguage"];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableEmojiRecognition];
  [v21 encodeObject:v14 forKey:@"LBLocalSpeechRecognitionSettings:::enableEmojiRecognition"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableAutoPunctuation];
  [v21 encodeObject:v15 forKey:@"LBLocalSpeechRecognitionSettings:::enableAutoPunctuation"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableVoiceCommands];
  [v21 encodeObject:v16 forKey:@"LBLocalSpeechRecognitionSettings:::enableVoiceCommands"];

  [v21 encodeObject:self->_dictationUIInteractionId forKey:@"LBLocalSpeechRecognitionSettings:::dictationUIInteractionId"];
  [v21 encodeObject:self->_sharedUserInfos forKey:@"LBLocalSpeechRecognitionSettings:::sharedUserInfos"];
  [v21 encodeObject:self->_prefixText forKey:@"LBLocalSpeechRecognitionSettings:::prefixText"];
  [v21 encodeObject:self->_postfixText forKey:@"LBLocalSpeechRecognitionSettings:::postfixText"];
  [v21 encodeObject:self->_selectedText forKey:@"LBLocalSpeechRecognitionSettings:::selectedText"];
  [v21 encodeObject:self->_powerContext forKey:@"LBLocalSpeechRecognitionSettings:::powerContext"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldStartAudioCapture];
  [v21 encodeObject:v17 forKey:@"LBLocalSpeechRecognitionSettings:::shouldStartAudioCapture"];

  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_audioRecordType];
  [v21 encodeObject:v18 forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordType"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_audioCaptureStartHostTime];
  [v21 encodeObject:v19 forKey:@"LBLocalSpeechRecognitionSettings:::audioCaptureStartHostTime"];

  [v21 encodeObject:self->_audioRecordDeviceId forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordDeviceId"];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldGenerateVoiceCommandCandidates];
  [v21 encodeObject:v20 forKey:@"LBLocalSpeechRecognitionSettings:::shouldGenerateVoiceCommandCandidates"];

  [v21 encodeObject:self->_asrLocale forKey:@"LBLocalSpeechRecognitionSettings:::asrLocale"];
  [v21 encodeObject:self->_activeUserInfo forKey:@"LBLocalSpeechRecognitionSettings:::activeUserInfo"];
  [v21 encodeObject:self->_messagesContext forKey:@"LBLocalSpeechRecognitionSettings:::messagesContext"];
}

- (LBLocalSpeechRecognitionSettings)initWithCoder:(id)a3
{
  v3 = a3;
  v74 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::requestId"];
  v73 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::inputOrigin"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::task"];
  v67 = [v4 unsignedIntegerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::mode"];
  v66 = [v5 unsignedIntegerValue];

  v65 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::location"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v64 = [v3 decodeObjectOfClasses:v8 forKey:@"LBLocalSpeechRecognitionSettings:::jitGrammar"];

  v72 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::overrideModelPath"];
  v71 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::applicationName"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::detectUtterances"];
  v63 = [v9 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::continuousListening"];
  v62 = [v10 BOOLValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldHandleCapitalization"];
  v61 = [v11 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::secureOfflineOnly"];
  v60 = [v12 BOOLValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::maxRecognitionDuration"];
  [v13 doubleValue];
  v15 = v14;

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v70 = [v3 decodeObjectOfClasses:v18 forKey:@"LBLocalSpeechRecognitionSettings:::recognitionOverrides"];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldStoreAudioOnDevice"];
  v59 = [v19 BOOLValue];

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::deliverEagerPackage"];
  v58 = [v20 BOOLValue];

  v57 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::UILanguage"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableEmojiRecognition"];
  v56 = [v21 BOOLValue];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableAutoPunctuation"];
  v55 = [v22 BOOLValue];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::enableVoiceCommands"];
  v54 = [v23 BOOLValue];

  v53 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::dictationUIInteractionId"];
  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v52 = [v3 decodeObjectOfClasses:v26 forKey:@"LBLocalSpeechRecognitionSettings:::sharedUserInfos"];

  v51 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::prefixText"];
  v50 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::postfixText"];
  v48 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::selectedText"];
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::powerContext"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldStartAudioCapture"];
  v49 = [v28 BOOLValue];

  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordType"];
  v30 = [v29 longLongValue];

  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioCaptureStartHostTime"];
  v32 = [v31 unsignedLongLongValue];

  v47 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::audioRecordDeviceId"];
  v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::shouldGenerateVoiceCommandCandidates"];
  v34 = [v33 BOOLValue];

  v46 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::asrLocale"];
  v45 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"LBLocalSpeechRecognitionSettings:::activeUserInfo"];
  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [v3 decodeObjectOfClasses:v37 forKey:@"LBLocalSpeechRecognitionSettings:::messagesContext"];

  LOBYTE(v44) = v34;
  LOBYTE(v43) = v49;
  LOBYTE(v42) = v54;
  BYTE3(v41) = v55;
  BYTE2(v41) = v56;
  BYTE1(v41) = v58;
  LOBYTE(v41) = v59;
  BYTE3(v40) = v60;
  BYTE2(v40) = v61;
  BYTE1(v40) = v62;
  LOBYTE(v40) = v63;
  v69 = [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:messagesContext:" inputOrigin:v74 speechRecognitionTaskName:v73 speechRecognitionMode:v67 location:v66 jitGrammar:v65 overrideModelPath:v64 applicationName:v15 detectUtterances:v72 continuousListening:v71 shouldHandleCapitalization:v40 secureOfflineOnly:v70 maximumRecognitionDuration:v41 recognitionOverrides:v57 shouldStoreAudioOnDevice:v42 deliverEagerPackage:v53 enableEmojiRecognition:v52 enableAutoPunctuation:v51 UILanguage:v50 enableVoiceCommands:v48 dictationUIInteractionId:v27 sharedUserInfos:v43 prefixText:v32 postfixText:v30 selectedText:v47 powerContext:v44 shouldStartAudioCapture:v46 audioCaptureStartHostTime:v45 audioRecordType:v38 audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];

  return v69;
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34 activeUserInfo:(id)a35 messagesContext:(id)a36
{
  v79 = a3;
  v39 = a4;
  v80 = a7;
  v78 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a16;
  v43 = a21;
  v75 = a23;
  v44 = a24;
  v74 = a25;
  v45 = a26;
  v46 = a27;
  v47 = a28;
  v73 = a32;
  v76 = a34;
  v72 = a35;
  v71 = a36;
  v81.receiver = self;
  v81.super_class = LBLocalSpeechRecognitionSettings;
  v48 = [(LBLocalSpeechRecognitionSettings *)&v81 init];
  if (v48)
  {
    v49 = [v79 copy];
    requestId = v48->_requestId;
    v48->_requestId = v49;

    v51 = [v39 copy];
    inputOrigin = v48->_inputOrigin;
    v48->_inputOrigin = v51;

    v48->_speechRecognitionTask = a5;
    v48->_speechRecognitionMode = a6;
    v53 = [v80 copy];
    location = v48->_location;
    v48->_location = v53;

    v55 = [v78 copy];
    jitGrammar = v48->_jitGrammar;
    v48->_jitGrammar = v55;

    v57 = [v40 copy];
    overrideModelPath = v48->_overrideModelPath;
    v48->_overrideModelPath = v57;

    v59 = [v41 copy];
    applicationName = v48->_applicationName;
    v48->_applicationName = v59;

    v48->_detectUtterances = a11;
    v48->_continuousListening = a12;
    v48->_shouldHandleCapitalization = a13;
    v48->_secureOfflineOnly = a14;
    v48->_maximumRecognitionDuration = a15;
    v61 = [v42 copy];
    recognitionOverrides = v48->_recognitionOverrides;
    v48->_recognitionOverrides = v61;

    v48->_shouldStoreAudioOnDevice = a17;
    v48->_deliverEagerPackage = a18;
    objc_storeStrong(&v48->_UILanguage, a21);
    v48->_enableEmojiRecognition = a19;
    v48->_enableAutoPunctuation = a20;
    v48->_enableVoiceCommands = a22;
    objc_storeStrong(&v48->_dictationUIInteractionId, a23);
    v63 = [v44 copy];
    sharedUserInfos = v48->_sharedUserInfos;
    v48->_sharedUserInfos = v63;

    objc_storeStrong(&v48->_prefixText, a25);
    objc_storeStrong(&v48->_postfixText, a26);
    objc_storeStrong(&v48->_selectedText, a27);
    objc_storeStrong(&v48->_powerContext, a28);
    v48->_shouldStartAudioCapture = a29;
    v48->_audioCaptureStartHostTime = a30;
    v48->_audioRecordType = a31;
    objc_storeStrong(&v48->_audioRecordDeviceId, a32);
    v48->_shouldGenerateVoiceCommandCandidates = a33;
    v65 = [v76 copy];
    asrLocale = v48->_asrLocale;
    v48->_asrLocale = v65;

    objc_storeStrong(&v48->_activeUserInfo, a35);
    objc_storeStrong(&v48->_messagesContext, a36);
  }

  return v48;
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34 activeUserInfo:(id)a35
{
  LOBYTE(v40) = a33;
  LOBYTE(v39) = a29;
  LOBYTE(v38) = a22;
  WORD1(v37) = __PAIR16__(a20, a19);
  LOWORD(v37) = __PAIR16__(a18, a17);
  WORD1(v36) = __PAIR16__(a14, a13);
  LOWORD(v36) = __PAIR16__(a12, a11);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:messagesContext:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:a6 jitGrammar:a7 overrideModelPath:a8 applicationName:a15 detectUtterances:a9 continuousListening:a10 shouldHandleCapitalization:v36 secureOfflineOnly:a16 maximumRecognitionDuration:v37 recognitionOverrides:a21 shouldStoreAudioOnDevice:v38 deliverEagerPackage:a23 enableEmojiRecognition:a24 enableAutoPunctuation:a25 UILanguage:a26 enableVoiceCommands:a27 dictationUIInteractionId:a28 sharedUserInfos:v39 prefixText:a30 postfixText:a31 selectedText:a32 powerContext:v40 shouldStartAudioCapture:a34 audioCaptureStartHostTime:a35 audioRecordType:0 audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:? messagesContext:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33 asrLocale:(id)a34
{
  LOBYTE(v39) = a33;
  LOBYTE(v38) = a29;
  LOBYTE(v37) = a22;
  WORD1(v36) = __PAIR16__(a20, a19);
  LOWORD(v36) = __PAIR16__(a18, a17);
  WORD1(v35) = __PAIR16__(a14, a13);
  LOWORD(v35) = __PAIR16__(a12, a11);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:activeUserInfo:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:a6 jitGrammar:a7 overrideModelPath:a8 applicationName:a15 detectUtterances:a9 continuousListening:a10 shouldHandleCapitalization:v35 secureOfflineOnly:a16 maximumRecognitionDuration:v36 recognitionOverrides:a21 shouldStoreAudioOnDevice:v37 deliverEagerPackage:a23 enableEmojiRecognition:a24 enableAutoPunctuation:a25 UILanguage:a26 enableVoiceCommands:a27 dictationUIInteractionId:a28 sharedUserInfos:v38 prefixText:a30 postfixText:a31 selectedText:a32 powerContext:v39 shouldStartAudioCapture:a34 audioCaptureStartHostTime:0 audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:? activeUserInfo:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26 powerContext:(id)a27 shouldStartAudioCapture:(BOOL)a28 audioCaptureStartHostTime:(unint64_t)a29 audioRecordType:(int64_t)a30 audioRecordDeviceId:(id)a31 shouldGenerateVoiceCommandCandidates:(BOOL)a32 asrLocale:(id)a33
{
  LOBYTE(v38) = a32;
  LOBYTE(v37) = a28;
  LOBYTE(v36) = a21;
  WORD1(v35) = __PAIR16__(a20, a19);
  LOWORD(v35) = __PAIR16__(a18, a17);
  WORD1(v34) = __PAIR16__(a14, a13);
  LOWORD(v34) = __PAIR16__(a12, a11);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:a6 jitGrammar:a7 overrideModelPath:a8 applicationName:a15 detectUtterances:a9 continuousListening:a10 shouldHandleCapitalization:v34 secureOfflineOnly:a16 maximumRecognitionDuration:v35 recognitionOverrides:0 shouldStoreAudioOnDevice:v36 deliverEagerPackage:a22 enableEmojiRecognition:a23 enableAutoPunctuation:a24 UILanguage:a25 enableVoiceCommands:a26 dictationUIInteractionId:a27 sharedUserInfos:v37 prefixText:a29 postfixText:a30 selectedText:a31 powerContext:v38 shouldStartAudioCapture:a33 audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32 shouldGenerateVoiceCommandCandidates:(BOOL)a33
{
  LOBYTE(v38) = a33;
  LOBYTE(v37) = a29;
  LOBYTE(v36) = a22;
  WORD1(v35) = __PAIR16__(a20, a19);
  LOWORD(v35) = __PAIR16__(a18, a17);
  WORD1(v34) = __PAIR16__(a14, a13);
  LOWORD(v34) = __PAIR16__(a12, a11);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:asrLocale:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:a6 jitGrammar:a7 overrideModelPath:a8 applicationName:a15 detectUtterances:a9 continuousListening:a10 shouldHandleCapitalization:v34 secureOfflineOnly:a16 maximumRecognitionDuration:v35 recognitionOverrides:a21 shouldStoreAudioOnDevice:v36 deliverEagerPackage:a23 enableEmojiRecognition:a24 enableAutoPunctuation:a25 UILanguage:a26 enableVoiceCommands:a27 dictationUIInteractionId:a28 sharedUserInfos:v37 prefixText:a30 postfixText:a31 selectedText:a32 powerContext:v38 shouldStartAudioCapture:0 audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:? asrLocale:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 speechRecognitionMode:(unint64_t)a6 location:(id)a7 jitGrammar:(id)a8 overrideModelPath:(id)a9 applicationName:(id)a10 detectUtterances:(BOOL)a11 continuousListening:(BOOL)a12 shouldHandleCapitalization:(BOOL)a13 secureOfflineOnly:(BOOL)a14 maximumRecognitionDuration:(double)a15 recognitionOverrides:(id)a16 shouldStoreAudioOnDevice:(BOOL)a17 deliverEagerPackage:(BOOL)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23 sharedUserInfos:(id)a24 prefixText:(id)a25 postfixText:(id)a26 selectedText:(id)a27 powerContext:(id)a28 shouldStartAudioCapture:(BOOL)a29 audioCaptureStartHostTime:(unint64_t)a30 audioRecordType:(int64_t)a31 audioRecordDeviceId:(id)a32
{
  LOBYTE(v37) = 0;
  LOBYTE(v36) = a29;
  LOBYTE(v35) = a22;
  WORD1(v34) = __PAIR16__(a20, a19);
  LOWORD(v34) = __PAIR16__(a18, a17);
  WORD1(v33) = __PAIR16__(a14, a13);
  LOWORD(v33) = __PAIR16__(a12, a11);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:shouldGenerateVoiceCommandCandidates:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:a6 jitGrammar:a7 overrideModelPath:a8 applicationName:a15 detectUtterances:a9 continuousListening:a10 shouldHandleCapitalization:v33 secureOfflineOnly:a16 maximumRecognitionDuration:v34 recognitionOverrides:a21 shouldStoreAudioOnDevice:v35 deliverEagerPackage:a23 enableEmojiRecognition:a24 enableAutoPunctuation:a25 UILanguage:a26 enableVoiceCommands:a27 dictationUIInteractionId:a28 sharedUserInfos:v36 prefixText:a30 postfixText:a31 selectedText:a32 powerContext:v37 shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:? shouldGenerateVoiceCommandCandidates:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26 powerContext:(id)a27
{
  LOBYTE(v31) = 0;
  LOBYTE(v30) = a21;
  WORD1(v29) = __PAIR16__(a19, a18);
  LOWORD(v29) = __PAIR16__(a17, a16);
  WORD1(v28) = __PAIR16__(a13, a12);
  LOWORD(v28) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:speechRecognitionMode:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:shouldStartAudioCapture:audioCaptureStartHostTime:audioRecordType:audioRecordDeviceId:" inputOrigin:a3 speechRecognitionTaskName:a4 speechRecognitionMode:a5 location:0 jitGrammar:a6 overrideModelPath:a7 applicationName:a14 detectUtterances:a8 continuousListening:a9 shouldHandleCapitalization:v28 secureOfflineOnly:a15 maximumRecognitionDuration:v29 recognitionOverrides:a20 shouldStoreAudioOnDevice:v30 deliverEagerPackage:a22 enableEmojiRecognition:a23 enableAutoPunctuation:a24 UILanguage:a25 enableVoiceCommands:a26 dictationUIInteractionId:a27 sharedUserInfos:v31 prefixText:0 postfixText:0 selectedText:0 powerContext:? shouldStartAudioCapture:? audioCaptureStartHostTime:? audioRecordType:? audioRecordDeviceId:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23 prefixText:(id)a24 postfixText:(id)a25 selectedText:(id)a26
{
  LOBYTE(v29) = a21;
  WORD1(v28) = __PAIR16__(a19, a18);
  LOWORD(v28) = __PAIR16__(a17, a16);
  WORD1(v27) = __PAIR16__(a13, a12);
  LOWORD(v27) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v27 secureOfflineOnly:a15 maximumRecognitionDuration:v28 recognitionOverrides:a20 shouldStoreAudioOnDevice:v29 deliverEagerPackage:a22 enableEmojiRecognition:a23 enableAutoPunctuation:a24 UILanguage:a25 enableVoiceCommands:a26 dictationUIInteractionId:0 sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 enableEmojiRecognition:(BOOL)a18 enableAutoPunctuation:(BOOL)a19 UILanguage:(id)a20 enableVoiceCommands:(BOOL)a21 dictationUIInteractionId:(id)a22 sharedUserInfos:(id)a23
{
  LOBYTE(v26) = a21;
  WORD1(v25) = __PAIR16__(a19, a18);
  LOWORD(v25) = __PAIR16__(a17, a16);
  WORD1(v24) = __PAIR16__(a13, a12);
  LOWORD(v24) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:prefixText:postfixText:selectedText:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v24 secureOfflineOnly:a15 maximumRecognitionDuration:v25 recognitionOverrides:a20 shouldStoreAudioOnDevice:v26 deliverEagerPackage:a22 enableEmojiRecognition:a23 enableAutoPunctuation:0 UILanguage:0 enableVoiceCommands:0 dictationUIInteractionId:? sharedUserInfos:? prefixText:? postfixText:? selectedText:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22 dictationUIInteractionId:(id)a23
{

  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:sharedUserInfos:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:? shouldHandleCapitalization:? secureOfflineOnly:? maximumRecognitionDuration:? recognitionOverrides:? shouldStoreAudioOnDevice:? deliverEagerPackage:? enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:? enableVoiceCommands:? dictationUIInteractionId:? sharedUserInfos:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21 enableVoiceCommands:(BOOL)a22
{
  LOBYTE(v26) = a22;
  LOWORD(v25) = __PAIR16__(a20, a19);
  LOWORD(v24) = __PAIR16__(a17, a16);
  WORD1(v23) = __PAIR16__(a13, a12);
  LOWORD(v23) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:dictationUIInteractionId:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v23 secureOfflineOnly:a15 maximumRecognitionDuration:v24 recognitionOverrides:a18 shouldStoreAudioOnDevice:v25 deliverEagerPackage:a21 sharedUserIds:v26 enableEmojiRecognition:0 enableAutoPunctuation:? UILanguage:? enableVoiceCommands:? dictationUIInteractionId:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20 UILanguage:(id)a21
{
  LOBYTE(v25) = 0;
  LOWORD(v24) = __PAIR16__(a20, a19);
  LOWORD(v23) = __PAIR16__(a17, a16);
  WORD1(v22) = __PAIR16__(a13, a12);
  LOWORD(v22) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:enableVoiceCommands:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v22 secureOfflineOnly:a15 maximumRecognitionDuration:v23 recognitionOverrides:a18 shouldStoreAudioOnDevice:v24 deliverEagerPackage:a21 sharedUserIds:v25 enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:? enableVoiceCommands:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18 enableEmojiRecognition:(BOOL)a19 enableAutoPunctuation:(BOOL)a20
{
  LOWORD(v23) = __PAIR16__(a20, a19);
  LOWORD(v22) = __PAIR16__(a17, a16);
  WORD1(v21) = __PAIR16__(a13, a12);
  LOWORD(v21) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:UILanguage:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v21 secureOfflineOnly:a15 maximumRecognitionDuration:v22 recognitionOverrides:a18 shouldStoreAudioOnDevice:v23 deliverEagerPackage:0 sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:? UILanguage:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17 sharedUserIds:(id)a18
{
  LOWORD(v21) = 0;
  LOWORD(v20) = __PAIR16__(a17, a16);
  WORD1(v19) = __PAIR16__(a13, a12);
  LOWORD(v19) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:enableEmojiRecognition:enableAutoPunctuation:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v19 secureOfflineOnly:a15 maximumRecognitionDuration:v20 recognitionOverrides:a18 shouldStoreAudioOnDevice:v21 deliverEagerPackage:? sharedUserIds:? enableEmojiRecognition:? enableAutoPunctuation:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16 deliverEagerPackage:(BOOL)a17
{
  LOWORD(v19) = __PAIR16__(a17, a16);
  WORD1(v18) = __PAIR16__(a13, a12);
  LOWORD(v18) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:sharedUserIds:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v18 secureOfflineOnly:a15 maximumRecognitionDuration:v19 recognitionOverrides:0 shouldStoreAudioOnDevice:? deliverEagerPackage:? sharedUserIds:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15 shouldStoreAudioOnDevice:(BOOL)a16
{
  BYTE1(v18) = 1;
  LOBYTE(v18) = a16;
  WORD1(v17) = __PAIR16__(a13, a12);
  LOWORD(v17) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:deliverEagerPackage:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v17 secureOfflineOnly:a15 maximumRecognitionDuration:v18 recognitionOverrides:? shouldStoreAudioOnDevice:? deliverEagerPackage:?];
}

- (LBLocalSpeechRecognitionSettings)initWithRequestId:(id)a3 inputOrigin:(id)a4 speechRecognitionTaskName:(unint64_t)a5 location:(id)a6 jitGrammar:(id)a7 overrideModelPath:(id)a8 applicationName:(id)a9 detectUtterances:(BOOL)a10 continuousListening:(BOOL)a11 shouldHandleCapitalization:(BOOL)a12 secureOfflineOnly:(BOOL)a13 maximumRecognitionDuration:(double)a14 recognitionOverrides:(id)a15
{
  LOBYTE(v17) = 1;
  WORD1(v16) = __PAIR16__(a13, a12);
  LOWORD(v16) = __PAIR16__(a11, a10);
  return [LBLocalSpeechRecognitionSettings initWithRequestId:"initWithRequestId:inputOrigin:speechRecognitionTaskName:location:jitGrammar:overrideModelPath:applicationName:detectUtterances:continuousListening:shouldHandleCapitalization:secureOfflineOnly:maximumRecognitionDuration:recognitionOverrides:shouldStoreAudioOnDevice:" inputOrigin:a3 speechRecognitionTaskName:a4 location:a5 jitGrammar:a6 overrideModelPath:a7 applicationName:a8 detectUtterances:a14 continuousListening:a9 shouldHandleCapitalization:v16 secureOfflineOnly:a15 maximumRecognitionDuration:v17 recognitionOverrides:? shouldStoreAudioOnDevice:?];
}

+ (id)getTaskStringFromSpeechRecognitionSettings:(id)a3
{
  if (a3)
  {
    v4 = [a3 speechRecognitionTask];
    v3 = vars8;
  }

  else
  {
    v4 = 1;
  }

  return [LBLocalSpeechRecognitionSettings taskString:v4];
}

+ (id)taskString:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798239F8[a3];
  }
}

@end