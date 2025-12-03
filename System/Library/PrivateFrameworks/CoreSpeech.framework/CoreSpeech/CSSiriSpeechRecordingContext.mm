@interface CSSiriSpeechRecordingContext
- (BOOL)_shouldRecordToFile;
- (CSSiriSpeechRecordingContext)initWithSessionUUID:(id)d turnIdentifier:(id)identifier;
- (id)description;
- (void)_didBecomeCurrent;
- (void)_didResignCurrent;
- (void)_donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:(id)completion;
- (void)_finalizeAudioFileWriterWithCompletion:(id)completion;
- (void)_initializeAudioFileWriterWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)_removeRecordedAudio;
- (void)acquireRecordedAudioWithHandler:(id)handler;
- (void)appendRecordedAudioBuffer:(id)buffer;
- (void)becomeCurrent;
- (void)beginRecordingAudioWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)dealloc;
- (void)didDetectTwoShotWithAudioActivationInfo:(id)info atTime:(double)time;
- (void)didStopRecordingWithError:(id)error;
- (void)emitRequestLinkEventForMHUUID:(id)d;
- (void)emitRequestLinkEventForRtsSessionId:(id)id;
- (void)endRecordingAudio;
- (void)getAudioRecordRouteAndDeviceIdentificationWithCompletion:(id)completion;
- (void)instrumentSiriCue:(int)cue;
- (void)instrumentSiriCueForAlertType:(int64_t)type;
- (void)relinquishAudioSessionAssertionsWithContext:(id)context;
- (void)relinquishAudioSessionAssertionsWithError:(id)error;
- (void)resignCurrent;
- (void)updateAccessToRecordedAudioForVoiceIdentificationTraining:(BOOL)training forResultCandidateId:(id)id sharedUserId:(id)userId;
- (void)updateAudioRecordContext:(id)context;
- (void)updateAudioRecordDeviceInfo:(id)info;
- (void)updateRecordingInfo:(id)info;
- (void)updateRecordingSettings:(id)settings;
- (void)updateSelectedResultCandidateId:(id)id;
- (void)updateStartSpeechId:(id)id;
- (void)updateVoiceTriggerInfo:(id)info;
- (void)willPrepareAndStartRecordingWithAudioActivationInfo:(id)info;
- (void)willStopRecordingAtHostTime:(unint64_t)time;
@end

@implementation CSSiriSpeechRecordingContext

- (void)becomeCurrent
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[CSSiriSpeechRecordingContext becomeCurrent]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSSiriSpeechRecordingContext_becomeCurrent__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CSSiriSpeechRecordingContext_becomeCurrent__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    return [*(result + 32) _didBecomeCurrent];
  }

  return result;
}

- (void)_didBecomeCurrent
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    v6 = 136315650;
    v7 = "[CSSiriSpeechRecordingContext _didBecomeCurrent]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = CSSiriSpeechRecordingContext;
  v4 = [(CSSiriSpeechRecordingContext *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ (sessionUUID = %@)", v4, self->_sessionUUID];

  return v5;
}

- (void)_removeRecordedAudio
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_recordedAudioFileURL && (!AFIsInternalInstall() || (_AFPreferencesKeepRecorededAudioFiles() & 1) == 0))
  {
    v3 = MEMORY[0x277CEF0E8];
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      recordedAudioFileURL = self->_recordedAudioFileURL;
      *buf = 136315650;
      v17 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
      v18 = 2048;
      selfCopy3 = self;
      v20 = 2112;
      v21 = recordedAudioFileURL;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s %p Removing recorded audio at %@...", buf, 0x20u);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = self->_recordedAudioFileURL;
    v15 = 0;
    v8 = [defaultManager removeItemAtURL:v7 error:&v15];
    v9 = v15;

    v10 = *v3;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_recordedAudioFileURL;
        *buf = 136315906;
        v17 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
        v18 = 2048;
        selfCopy3 = self;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v9;
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s %p Failed to remove recorded audio at %@ (error = %@).", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v11 = self->_recordedAudioFileURL;
      *buf = 136315650;
      v17 = "[CSSiriSpeechRecordingContext _removeRecordedAudio]";
      v18 = 2048;
      selfCopy3 = self;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s %p Removed recorded audio at %@.", buf, 0x20u);
    }

    v12 = self->_recordedAudioFileURL;
    self->_recordedAudioFileURL = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  recordingAudioGroup = self->_recordingAudioGroup;
  if (recordingAudioGroup)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke;
    v8[3] = &unk_2784C6E98;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_group_notify(recordingAudioGroup, queue, v8);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    if (*(v2 + 32))
    {
      v3 = [*(v2 + 128) containsObject:?];
    }

    else
    {
      v3 = *(v2 + 120);
    }

    v6 = MEMORY[0x277CEF0E8];
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 88);
      v10 = @"DENIED";
      if (v3)
      {
        v10 = @"ALLOWED";
      }

      *buf = 136315906;
      v26 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v27 = 2048;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s %p Access to payload audio at %@ is %@, setting payload recording flag for CoreSpeech.", buf, 0x2Au);
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v3 & 1];
    [v11 setObject:v12 forKey:@"shouldRecordPayload"];

    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *buf = 136315650;
      v26 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v27 = 2048;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s %p Donating recorded audio at %@...", buf, 0x20u);
    }

    v16 = [*(*(a1 + 32) + 88) relativePath];
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v20 = v18[5];
    v19 = v18[6];
    v21 = v18[7];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_79;
    v23[3] = &unk_2784C6E70;
    v23[4] = v18;
    v24 = v17;
    [CSVoiceIdXPCClient notifyImplicitUtterance:v16 audioDeviceType:v19 audioRecordType:v20 voiceTriggerEventInfo:v21 otherCtxt:v11 completion:v23];
  }

  else
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
      v27 = 2048;
      v28 = v2;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s %p No recorded audio.", buf, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_2;
  block[3] = &unk_2784C6C68;
  v10 = v4;
  v11 = v6;
  v12 = v5;
  v8 = v4;
  dispatch_async(v7, block);
}

uint64_t __97__CSSiriSpeechRecordingContext__donateRecordedAudioForVoiceIdentificationTrainingWithCompletion___block_invoke_2(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[5];
      v6 = *(v5 + 88);
      v11 = 136315906;
      v12 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke_2";
      v13 = 2048;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v2;
      _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %p Failed to donate recorded audio at %@ for  VoiceID training (error = %@).", &v11, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = a1[5];
    v8 = *(v7 + 88);
    v11 = 136315650;
    v12 = "[CSSiriSpeechRecordingContext _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:]_block_invoke";
    v13 = 2048;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p Donated recorded audio at %@ for  Voice VoiceID training.", &v11, 0x20u);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_didResignCurrent
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    *buf = 136315650;
    v9 = "[CSSiriSpeechRecordingContext _didResignCurrent]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", buf, 0x20u);
  }

  mEMORY[0x277D55B08] = [MEMORY[0x277D55B08] sharedMonitor];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke;
  v7[3] = &unk_2784C6408;
  v7[4] = self;
  [mEMORY[0x277D55B08] waitForMyriadDecisionForReason:@"Donating recorded audio to CoreSpeech" withCompletion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke_2;
  v4[3] = &unk_2784C6390;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

uint64_t __49__CSSiriSpeechRecordingContext__didResignCurrent__block_invoke_2(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2[7])
    {
      v3 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[CSSiriSpeechRecordingContext _didResignCurrent]_block_invoke_2";
        _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s Myriad won & voice trigger present, donating recorded audio to CoreSpeech.", &v5, 0xCu);
        v2 = *(v1 + 32);
      }

      result = [v2 _donateRecordedAudioForVoiceIdentificationTrainingWithCompletion:0];
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)emitRequestLinkEventForRtsSessionId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:self->_sessionUUID component:1];
  uUIDString = [idCopy UUIDString];
  v7 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:uUIDString component:41];

  v8 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v8 setSource:v5];
  [v8 setTarget:v7];
  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
  [mEMORY[0x277D552B8] emitMessage:v8];

  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    uUIDString2 = [idCopy UUIDString];
    sessionUUID = self->_sessionUUID;
    v15 = 136315651;
    v16 = "[CSSiriSpeechRecordingContext emitRequestLinkEventForRtsSessionId:]";
    v17 = 2113;
    v18 = uUIDString2;
    v19 = 2113;
    v20 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s rtsSessionId: %{private}@, requestId: %{private}@", &v15, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)emitRequestLinkEventForMHUUID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  sessionUUID = self->_sessionUUID;
  dCopy = d;
  v6 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:sessionUUID component:1];
  uUIDString = [dCopy UUIDString];

  v8 = [(CSSiriSpeechRecordingContext *)self _createRequestLinkInfo:uUIDString component:9];

  v9 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v9 setSource:v6];
  [v9 setTarget:v8];
  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
  [mEMORY[0x277D552B8] emitMessage:v9];

  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[CSSiriSpeechRecordingContext emitRequestLinkEventForMHUUID:]";
    _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)instrumentSiriCueForAlertType:(int64_t)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__CSSiriSpeechRecordingContext_instrumentSiriCueForAlertType___block_invoke;
  v4[3] = &unk_2784C6EC0;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(queue, v4);
}

void __62__CSSiriSpeechRecordingContext_instrumentSiriCueForAlertType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v2 = *(*(a1 + 32) + 64);
    if (v2)
    {
      v3 = [v2 objectForKey:*MEMORY[0x277CB8318]];
      if (![v3 count])
      {
        v9 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315138;
          v13 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
          _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s No alert behavior in recordingSettings", &v12, 0xCu);
        }

        goto LABEL_17;
      }

      v4 = [v3 objectForKey:&unk_283667160];
      v5 = v4;
      if (!v4)
      {
        v10 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315138;
          v13 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
          _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s No alert style specified for record starting", &v12, 0xCu);
        }

        goto LABEL_16;
      }

      v6 = [v4 integerValue];
      if (v6 == 2)
      {
        v7 = 1;
      }

      else
      {
        if (v6 != 1)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v7 = 3;
      }

      [*(a1 + 32) _instrumentSiriCue:v7];
      goto LABEL_16;
    }

    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSSiriSpeechRecordingContext instrumentSiriCueForAlertType:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s recordingSettings was nil", &v12, 0xCu);
    }
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)instrumentSiriCue:(int)cue
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__CSSiriSpeechRecordingContext_instrumentSiriCue___block_invoke;
  v4[3] = &unk_2784C5998;
  v4[4] = self;
  cueCopy = cue;
  dispatch_async(queue, v4);
}

- (void)_finalizeAudioFileWriterWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    audioFileWriter = self->_audioFileWriter;
    *buf = 136315650;
    *&buf[4] = "[CSSiriSpeechRecordingContext _finalizeAudioFileWriterWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v17 = audioFileWriter;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (_audioFileWriter = %@)", buf, 0x20u);
  }

  if (self->_audioFileWriter)
  {
    v7 = self->_queue;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__3645;
    v18 = __Block_byref_object_dispose__3646;
    v8 = self->_audioFileWriter;
    v19 = v8;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke;
    v12[3] = &unk_2784C3870;
    v9 = v7;
    v13 = v9;
    v14 = completionCopy;
    v15 = buf;
    [(CSSiriAudioFileWriter *)v8 flushWithCompletion:v12];
    v10 = self->_audioFileWriter;
    self->_audioFileWriter = 0;

    _Block_object_dispose(buf, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke_2;
  v13[3] = &unk_2784C3848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v10 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v8, v13);
}

void __71__CSSiriSpeechRecordingContext__finalizeAudioFileWriterWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_initializeAudioFileWriterWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v5 = [CSSiriAudioFileWriter alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__CSSiriSpeechRecordingContext__initializeAudioFileWriterWithAudioStreamBasicDescription___block_invoke;
  v8[3] = &unk_2784C3820;
  v8[4] = self;
  v6 = [(CSSiriAudioFileWriter *)v5 initWithType:2 pathGenerator:v8 priority:21];
  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = v6;

  [(CSSiriAudioFileWriter *)self->_audioFileWriter configureWithAudioStreamBasicDescription:description];
}

id __90__CSSiriSpeechRecordingContext__initializeAudioFileWriterWithAudioStreamBasicDescription___block_invoke(uint64_t a1)
{
  v2 = CSSiriSpeechRecordingRecordedAudioDirectoryPath();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = *(*(a1 + 32) + 184);
  if (!v5)
  {
    v5 = @"Unknown";
  }

  v6 = [v4 initWithFormat:@"%@.wav", v5];
  v7 = [v2 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)endRecordingAudio
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[CSSiriSpeechRecordingContext endRecordingAudio]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

_BYTE *__49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[161] == 1)
  {
    v4[5] = v1;
    v4[6] = v2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke_2;
    v4[3] = &unk_2784C3710;
    v4[4] = result;
    return [result _finalizeAudioFileWriterWithCompletion:v4];
  }

  return result;
}

void __49__CSSiriSpeechRecordingContext_endRecordingAudio__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CEF0E8];
  if (v6)
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 136315650;
      v18 = "[CSSiriSpeechRecordingContext endRecordingAudio]_block_invoke_2";
      v19 = 2048;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v17, 0x20u);
    }
  }

  v9 = [v5 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  *(v10 + 88) = v9;

  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 88);
    v17 = 136315650;
    v18 = "[CSSiriSpeechRecordingContext endRecordingAudio]_block_invoke";
    v19 = 2048;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s %p (_recordedAudioFileURL = %@)", &v17, 0x20u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 112));

  v15 = *MEMORY[0x277D85DE8];
}

- (void)appendRecordedAudioBuffer:(id)buffer
{
  bufferCopy = buffer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CSSiriSpeechRecordingContext_appendRecordedAudioBuffer___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_async(queue, v7);
}

- (void)beginRecordingAudioWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[CSSiriSpeechRecordingContext beginRecordingAudioWithAudioStreamBasicDescription:]";
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v6 = *&description->mBytesPerPacket;
  v10 = *&description->mSampleRate;
  v11 = v6;
  v12 = *&description->mBitsPerChannel;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke;
  v9[3] = &unk_2784C37F8;
  v9[4] = self;
  dispatch_async(queue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 161) = [*(*(a1 + 32) + 40) shouldUseLocalAudioFileWriter];
  if ([*(a1 + 32) _shouldRecordToFile])
  {
    v2 = *(a1 + 32);
    if (v2[161] == 1)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __83__CSSiriSpeechRecordingContext_beginRecordingAudioWithAudioStreamBasicDescription___block_invoke_2;
      v6[3] = &unk_2784C3710;
      v6[4] = v2;
      [v2 _finalizeAudioFileWriterWithCompletion:v6];
      dispatch_group_enter(*(*(a1 + 32) + 112));
      [*(a1 + 32) _initializeAudioFileWriterWithAudioStreamBasicDescription:a1 + 40];
    }
  }

  else
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 136315394;
      v8 = "[CSSiriSpeechRecordingContext beginRecordingAudioWithAudioStreamBasicDescription:]_block_invoke";
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p, ignore begin recording audio due to active phone call", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)relinquishAudioSessionAssertionsWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext relinquishAudioSessionAssertionsWithError:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p error = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithError___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __74__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) relinquishWithError:*(a1 + 40) options:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 relinquishWithError:v2 options:0];
}

- (void)relinquishAudioSessionAssertionsWithContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext relinquishAudioSessionAssertionsWithContext:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithContext___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __76__CSSiriSpeechRecordingContext_relinquishAudioSessionAssertionsWithContext___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) relinquishWithContext:*(a1 + 40) options:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);

  return [v3 relinquishWithContext:v2 options:0];
}

- (void)didStopRecordingWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "[CSSiriSpeechRecordingContext didStopRecordingWithError:]";
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p error = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__CSSiriSpeechRecordingContext_didStopRecordingWithError___block_invoke;
    v8[3] = &unk_2784C6FA8;
    v8[4] = self;
    v9 = errorCopy;
    dispatch_async(queue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)willStopRecordingAtHostTime:(unint64_t)time
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[CSSiriSpeechRecordingContext willStopRecordingAtHostTime:]";
    v17 = 2048;
    selfCopy2 = self;
    v19 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %p hostTime = %llu", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke;
    v14[3] = &__block_descriptor_40_e38_v16__0___AFAssertionContextMutating__8l;
    v14[4] = time;
    v7 = [MEMORY[0x277CEF180] newWithBuilder:v14];
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "[CSSiriSpeechRecordingContext willStopRecordingAtHostTime:]";
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      timeCopy = v7;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p context = %@", buf, 0x20u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke_48;
    block[3] = &unk_2784C6FA8;
    block[4] = self;
    v13 = v7;
    v10 = v7;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __60__CSSiriSpeechRecordingContext_willStopRecordingAtHostTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v4)
  {
    v4 = mach_absolute_time();
    v3 = v5;
  }

  [v3 setTimestamp:v4];
  [v5 setReason:@"Stop Recording"];
}

- (void)didDetectTwoShotWithAudioActivationInfo:(id)info atTime:(double)time
{
  v42 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v35 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
    v36 = 2048;
    selfCopy4 = self;
    v38 = 2112;
    v39 = infoCopy;
    v40 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p audioActivationInfo = %@, time = %f", buf, 0x2Au);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    v9 = [infoCopy dateByAddingTimeIntervalSinceActivation:time];
    v10 = v9;
    if (v9)
    {
      date = v9;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v12 = date;

    v13 = [v12 dateByAddingTimeInterval:0.2];

    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      [v13 timeIntervalSinceNow];
      *buf = 136315906;
      v35 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2112;
      v39 = v13;
      v40 = 2048;
      timeCopy = v16;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s %p effectiveDate = %@ (%f)", buf, 0x2Au);
    }

    objc_initWeak(&location, self);
    v17 = AFAudioSessionAssertionGetCurrentAcquisitionService();
    v18 = MEMORY[0x277CEF180];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke;
    v30[3] = &unk_2784C3788;
    v19 = v13;
    v31 = v19;
    selfCopy3 = self;
    v20 = [v18 newWithBuilder:v30];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_2;
    v28[3] = &unk_2784C37B0;
    objc_copyWeak(&v29, &location);
    v21 = [v17 acquireAudioSessionAssertionWithContext:v20 relinquishmentHandler:v28];

    v22 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v35 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]";
      v36 = 2048;
      selfCopy4 = self;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_INFO, "%s %p twoShotDetectionAudioSessionAssertion = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_43;
    v26[3] = &unk_2784C6FA8;
    v26[4] = self;
    v27 = v21;
    v24 = v21;
    dispatch_async(queue, v26);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:@"Two Shot Detection"];
  [v3 setEffectiveDate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 184);
  v7 = @"sessionUUID";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 setUserInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __79__CSSiriSpeechRecordingContext_didDetectTwoShotWithAudioActivationInfo_atTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0E8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v11 = 136315650;
      v12 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]_block_invoke_2";
      v13 = 2048;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v11, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = 136315650;
    v12 = "[CSSiriSpeechRecordingContext didDetectTwoShotWithAudioActivationInfo:atTime:]_block_invoke";
    v13 = 2048;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p (relinquishmentContext = %@)", &v11, 0x20u);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)willPrepareAndStartRecordingWithAudioActivationInfo:(id)info
{
  v36 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
    v30 = 2048;
    selfCopy4 = self;
    v32 = 2112;
    v33 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %p audioActivationInfo = %@", buf, 0x20u);
  }

  if (AFSupportsAudioSessionCoordination())
  {
    audioSessionActivationTargetDate = [infoCopy audioSessionActivationTargetDate];
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      [audioSessionActivationTargetDate timeIntervalSinceNow];
      *buf = 136315906;
      v29 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
      v30 = 2048;
      selfCopy4 = self;
      v32 = 2112;
      v33 = audioSessionActivationTargetDate;
      v34 = 2048;
      v35 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s %p effectiveDate = %@ (%f)", buf, 0x2Au);
    }

    objc_initWeak(&location, self);
    v11 = AFAudioSessionAssertionGetCurrentAcquisitionService();
    v12 = MEMORY[0x277CEF180];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke;
    v24[3] = &unk_2784C3788;
    v13 = audioSessionActivationTargetDate;
    v25 = v13;
    selfCopy3 = self;
    v14 = [v12 newWithBuilder:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_2;
    v22[3] = &unk_2784C37B0;
    objc_copyWeak(&v23, &location);
    v15 = [v11 acquireAudioSessionAssertionWithContext:v14 relinquishmentHandler:v22];

    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]";
      v30 = 2048;
      selfCopy4 = self;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s %p startRecordingAudioSessionAssertion = %@", buf, 0x20u);
    }

    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_37;
    v20[3] = &unk_2784C6FA8;
    v20[4] = self;
    v21 = v15;
    v18 = v15;
    dispatch_async(queue, v20);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:@"Start Recording"];
  [v3 setEffectiveDate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 184);
  v7 = @"sessionUUID";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 setUserInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __84__CSSiriSpeechRecordingContext_willPrepareAndStartRecordingWithAudioActivationInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0E8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v11 = 136315650;
      v12 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]_block_invoke_2";
      v13 = 2048;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s %p (error = %@)", &v11, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = 136315650;
    v12 = "[CSSiriSpeechRecordingContext willPrepareAndStartRecordingWithAudioActivationInfo:]_block_invoke";
    v13 = 2048;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s %p (relinquishmentContext = %@)", &v11, 0x20u);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateRecordingSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateRecordingSettings:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = settingsCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordingSettings = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__CSSiriSpeechRecordingContext_updateRecordingSettings___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = settingsCopy;
  v7 = settingsCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateRecordingInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateRecordingInfo:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordingInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CSSiriSpeechRecordingContext_updateRecordingInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceTriggerInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateVoiceTriggerInfo:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (voiceTriggerInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CSSiriSpeechRecordingContext_updateVoiceTriggerInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__CSSiriSpeechRecordingContext_updateVoiceTriggerInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (void)updateAudioRecordDeviceInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateAudioRecordDeviceInfo:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (audioRecordDeviceInfo = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CSSiriSpeechRecordingContext_updateAudioRecordDeviceInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = infoCopy;
  v7 = infoCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__CSSiriSpeechRecordingContext_updateAudioRecordDeviceInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (void)updateAudioRecordContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateAudioRecordContext:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (audioRecordContext = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__CSSiriSpeechRecordingContext_updateAudioRecordContext___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = contextCopy;
  v7 = contextCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)acquireRecordedAudioWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[CSSiriSpeechRecordingContext acquireRecordedAudioWithHandler:]";
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke;
    v8[3] = &unk_2784C6E98;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_async(queue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 112);
  v4 = *(v2 + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2;
  v5[3] = &unk_2784C6E98;
  v5[4] = v2;
  v6 = v1;
  dispatch_group_notify(v3, v4, v5);
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldRecordToFile])
  {
    v2 = [*(*(a1 + 32) + 40) shouldUseLocalAudioFileWriter];
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(v3 + 88);
      v5 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        *buf = 136315650;
        *&buf[4] = "[CSSiriSpeechRecordingContext acquireRecordedAudioWithHandler:]_block_invoke_2";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v22 = v4;
        _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (recordedAudioFileURL = %@)", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v22 = __Block_byref_object_copy__3645;
      v23 = __Block_byref_object_dispose__3646;
      v24 = *(a1 + 32);
      v7 = objc_alloc(MEMORY[0x277CEF380]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_22;
      v20[3] = &unk_2784C3738;
      v20[4] = buf;
      v8 = [v7 initWithBlock:v20];
      v9 = *(a1 + 40);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_2_24;
      v18[3] = &unk_2784C6FD0;
      v10 = v8;
      v19 = v10;
      (*(v9 + 16))(v9, v4, v18);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = *(v3 + 168);
      v14 = *(v3 + 184);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_3;
      v16[3] = &unk_2784C3760;
      v16[4] = v3;
      v17 = *(a1 + 40);
      [v13 getAudioFileWithRequestId:v14 completion:v16];
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
    v12 = *MEMORY[0x277D85DE8];

    v11();
  }
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_22(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 containerURLForSecurityApplicationGroupIdentifier:v5];

    v10 = [v9 URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v10 = v6;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3645;
  v18[4] = __Block_byref_object_dispose__3646;
  v19 = *(a1 + 32);
  v11 = objc_alloc(MEMORY[0x277CEF380]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_4;
  v17[3] = &unk_2784C3738;
  v17[4] = v18;
  v12 = [v11 initWithBlock:v17];
  v13 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_5;
  v15[3] = &unk_2784C6FD0;
  v14 = v12;
  v16 = v14;
  (*(v13 + 16))(v13, v10, v15);

  _Block_object_dispose(v18, 8);
}

void __64__CSSiriSpeechRecordingContext_acquireRecordedAudioWithHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (BOOL)_shouldRecordToFile
{
  if (([(CSAudioRecordContext *)self->_audioRecordContext isRequestDuringActiveCall]& 1) != 0)
  {
    fileLoggingIsEnabled = 0;
  }

  else if (AFIsMac())
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    fileLoggingIsEnabled = [mEMORY[0x277CEF368] fileLoggingIsEnabled];
  }

  else
  {
    fileLoggingIsEnabled = 1;
  }

  return fileLoggingIsEnabled & 1;
}

- (void)getAudioRecordRouteAndDeviceIdentificationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__CSSiriSpeechRecordingContext_getAudioRecordRouteAndDeviceIdentificationWithCompletion___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __89__CSSiriSpeechRecordingContext_getAudioRecordRouteAndDeviceIdentificationWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) route];
  v3 = [*(*(a1 + 32) + 48) remoteDeviceUID];
  v4 = v3;
  if (v3)
  {
    [v3 UUIDString];
  }

  else
  {
    [*(*(a1 + 32) + 72) deviceIdentifier];
  }
  v5 = ;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "[CSSiriSpeechRecordingContext getAudioRecordRouteAndDeviceIdentificationWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s route = %@, deviceIdentifier = %@, deviceUID = %@", &v8, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessToRecordedAudioForVoiceIdentificationTraining:(BOOL)training forResultCandidateId:(id)id sharedUserId:(id)userId
{
  trainingCopy = training;
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  userIdCopy = userId;
  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "[CSSiriSpeechRecordingContext updateAccessToRecordedAudioForVoiceIdentificationTraining:forResultCandidateId:sharedUserId:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 1024;
    v25 = trainingCopy;
    v26 = 2112;
    v27 = idCopy;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s %p (allows = %d, resultCandidateId = %@)", buf, 0x26u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __124__CSSiriSpeechRecordingContext_updateAccessToRecordedAudioForVoiceIdentificationTraining_forResultCandidateId_sharedUserId___block_invoke;
  v15[3] = &unk_2784C6F80;
  v19 = trainingCopy;
  v16 = idCopy;
  selfCopy2 = self;
  v18 = userIdCopy;
  v12 = userIdCopy;
  v13 = idCopy;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __124__CSSiriSpeechRecordingContext_updateAccessToRecordedAudioForVoiceIdentificationTraining_forResultCandidateId_sharedUserId___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 128);
    if (v2)
    {
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v6 = *(a1 + 40);
        v7 = *(v6 + 128);
        *(v6 + 128) = v5;

        v3 = *(a1 + 40);
      }

      if (!*(v3 + 136))
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = *(a1 + 40);
        v10 = *(v9 + 136);
        *(v9 + 136) = v8;

        v3 = *(a1 + 40);
      }

      [*(v3 + 128) addObject:*(a1 + 32)];
      if (*(a1 + 48))
      {
        v11 = *(a1 + 32);
        v12 = *(*(a1 + 40) + 136);

        [v12 setObject:? forKey:?];
      }
    }

    else
    {
      [v4 removeObject:?];
      v15 = *(a1 + 32);
      v16 = *(*(a1 + 40) + 136);

      [v16 removeObjectForKey:v15];
    }
  }

  else
  {
    *(*(a1 + 40) + 120) = v2;
    v13 = *(a1 + 48);
    v14 = (*(a1 + 40) + 152);

    objc_storeStrong(v14, v13);
  }
}

- (void)updateSelectedResultCandidateId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateSelectedResultCandidateId:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = idCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (selectedResultCandidateId = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CSSiriSpeechRecordingContext_updateSelectedResultCandidateId___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = idCopy;
  v7 = idCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __64__CSSiriSpeechRecordingContext_updateSelectedResultCandidateId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (void)updateStartSpeechId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext updateStartSpeechId:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = idCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %p (startSpeechId = %@)", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CSSiriSpeechRecordingContext_updateStartSpeechId___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = idCopy;
  v7 = idCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__CSSiriSpeechRecordingContext_updateStartSpeechId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (void)resignCurrent
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[CSSiriSpeechRecordingContext resignCurrent]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSSiriSpeechRecordingContext_resignCurrent__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CSSiriSpeechRecordingContext_resignCurrent__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    return [*(result + 32) _didResignCurrent];
  }

  return result;
}

- (CSSiriSpeechRecordingContext)initWithSessionUUID:(id)d turnIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = CSSiriSpeechRecordingContext;
  v8 = [(CSSiriSpeechRecordingContext *)&v24 init];
  if (v8)
  {
    if (!dCopy)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
      dCopy = [v9 UUIDString];
    }

    v10 = [dCopy copy];
    sessionUUID = v8->_sessionUUID;
    v8->_sessionUUID = v10;

    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v13 = v8->_sessionUUID;
      *buf = 136315650;
      v26 = "[CSSiriSpeechRecordingContext initWithSessionUUID:turnIdentifier:]";
      v27 = 2048;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@", buf, 0x20u);
    }

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("com.apple.assistant.request.speech-context", v14);

    queue = v8->_queue;
    v8->_queue = v15;

    v17 = dispatch_group_create();
    recordingAudioGroup = v8->_recordingAudioGroup;
    v8->_recordingAudioGroup = v17;

    objc_storeStrong(&v8->_turnIdentifier, identifier);
    if (AFIsInternalInstall())
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      v8->_wantsRecordedAudioBufferLogs = [mEMORY[0x277CEF368] shouldLogForQA];
    }

    else
    {
      v8->_wantsRecordedAudioBufferLogs = 0;
    }

    v20 = objc_alloc_init(CSSiriAudioMessageRequestClient);
    audioMessageRequestClient = v8->_audioMessageRequestClient;
    v8->_audioMessageRequestClient = v20;

    v8->_shouldUseLocalFileWriter = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    sessionUUID = self->_sessionUUID;
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecordingContext dealloc]";
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = sessionUUID;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %p (sessionUUID = %@)", buf, 0x20u);
  }

  v5 = self->_recordingAudioGroup;
  v6 = v5;
  if (self->_shouldUseLocalFileWriter)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__CSSiriSpeechRecordingContext_dealloc__block_invoke;
    v9[3] = &unk_2784C3710;
    v10 = v5;
    [(CSSiriSpeechRecordingContext *)self _finalizeAudioFileWriterWithCompletion:v9];
  }

  [(CSSiriSpeechRecordingContext *)self _removeRecordedAudio];
  [(CSSiriAudioMessageRequestClient *)self->_audioMessageRequestClient releaseAudioMessageRetainLockFromRequestId:self->_sessionUUID];

  v8.receiver = self;
  v8.super_class = CSSiriSpeechRecordingContext;
  [(CSSiriSpeechRecordingContext *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

void __39__CSSiriSpeechRecordingContext_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  [v5 removeItemAtURL:v4 error:0];

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

@end