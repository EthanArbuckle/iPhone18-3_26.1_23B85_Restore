@interface CKAudioRecorder
- (CKAudioRecorder)init;
- (CKAudioRecorderDelegate)delegate;
- (double)duration;
- (float)averagePower;
- (void)cancelRecording;
- (void)createNewAudioFile;
- (void)dealloc;
- (void)openExistingAudioFile;
- (void)resetState;
- (void)resumeRecording;
- (void)setRecording:(BOOL)recording;
- (void)startRecordingForRaiseGesture:(BOOL)gesture shouldPlaySound:(BOOL)sound;
- (void)stopRecordingAndPlaySound:(BOOL)sound completion:(id)completion;
- (void)voiceController:(id)controller didUpdateAveragePower:(float)power;
- (void)voiceControllerDidFinishRecording:(id)recording successfully:(BOOL)successfully;
- (void)voiceControllerDidStartRecording:(id)recording;
- (void)voiceControllerRecordBufferAvailable:(id)available buffer:(id)buffer;
@end

@implementation CKAudioRecorder

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CKVoiceController *)self->_voiceController setDelegate:0];
  [(CKVoiceController *)self->_voiceController releaseAudioSession];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  v5.receiver = self;
  v5.super_class = CKAudioRecorder;
  [(CKAudioRecorder *)&v5 dealloc];
}

- (CKAudioRecorder)init
{
  v5.receiver = self;
  v5.super_class = CKAudioRecorder;
  v2 = [(CKAudioRecorder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKAudioRecorder *)v2 resetState];
  }

  return v3;
}

- (double)duration
{
  startDate = [(CKAudioRecorder *)self startDate];
  if (startDate)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    [startDate timeIntervalSinceReferenceDate];
    v6 = v4 - v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)startRecordingForRaiseGesture:(BOOL)gesture shouldPlaySound:(BOOL)sound
{
  soundCopy = sound;
  gestureCopy = gesture;
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = gestureCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "startRecordingForRaiseGesture: %d", buf, 8u);
    }
  }

  [(CKAudioRecorder *)self setRecording:1];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:1];

  if (gestureCopy)
  {
    v9 = 1768764005;
  }

  else
  {
    v9 = 1768780647;
  }

  [(CKAudioRecorder *)self setShouldPlayStartSound:soundCopy & ~gestureCopy];
  voiceController = [(CKAudioRecorder *)self voiceController];
  v11 = voiceController;
  if (voiceController)
  {
    [(CKVoiceController *)voiceController setActivationMode:v9];
  }

  else
  {
    v12 = *MEMORY[0x1E6958348];
    v17[0] = *MEMORY[0x1E6958280];
    v17[1] = v12;
    v18[0] = &unk_1F04E7F68;
    v18[1] = &unk_1F04E8988;
    v13 = *MEMORY[0x1E6958300];
    v17[2] = *MEMORY[0x1E69582B0];
    v17[3] = v13;
    v18[2] = &unk_1F04E7F80;
    v18[3] = &unk_1F04E7F98;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v15 = [CKVoiceController alloc];
    v16 = +[CKAudioSessionController queue];
    v11 = [(CKVoiceController *)v15 initWithActivationMode:v9 recordSettings:v14 queue:v16];

    [(CKVoiceController *)v11 setDelegate:self];
    [(CKAudioRecorder *)self setVoiceController:v11];
  }

  if ([(CKAudioRecorder *)self isPaused])
  {
    [(CKAudioRecorder *)self openExistingAudioFile];
  }

  else
  {
    [(CKAudioRecorder *)self createNewAudioFile];
  }

  [(CKVoiceController *)v11 record];
}

- (void)openExistingAudioFile
{
  v14 = *MEMORY[0x1E69E9840];
  outAudioFile = [(CKAudioRecorder *)self fileID];
  fileURL = [(CKAudioRecorder *)self fileURL];
  v4 = AudioFileOpenURL(fileURL, kAudioFileReadWritePermission, 0x63616666u, &outAudioFile);

  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v4 userInfo:0];
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "AudioFileOpenURL error %@", buf, 0xCu);
      }
    }

    voiceController = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:voiceController successfully:0];
  }

  else
  {
    if (v5)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        fileURL2 = [(CKAudioRecorder *)self fileURL];
        *buf = 138412290;
        v13 = fileURL2;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Opened existing audio file with fileURL: %@", buf, 0xCu);
      }
    }

    [(CKAudioRecorder *)self setFileID:outAudioFile];
  }
}

- (void)createNewAudioFile
{
  v25 = *MEMORY[0x1E69E9840];
  outAudioFile = 0;
  v3 = CKAttachmentTmpFileURL(@"Audio Message.caf");
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
  v20 = 0;
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v20];
  v6 = v20;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        uRLByDeletingLastPathComponent2 = [v3 URLByDeletingLastPathComponent];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = uRLByDeletingLastPathComponent2;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "[NSFileManager createDirectoryAtURL:%@] failed with error %@", &buf, 0x16u);
      }
    }

    voiceController = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:voiceController successfully:0];

    goto LABEL_24;
  }

  memset(&buf.mFormatID, 0, 32);
  buf.mSampleRate = 24000.0;
  buf.mChannelsPerFrame = 1;
  buf.mFormatID = 1869641075;
  buf.mFramesPerPacket = 480;
  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &buf);
  if (Property)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:Property userInfo:0];
        *v22 = 138412290;
        v23 = v12;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "AudioFormatGetProperty failed with error %@", v22, 0xCu);
      }
    }

LABEL_12:
    voiceController2 = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:voiceController2 successfully:0];

    goto LABEL_24;
  }

  v14 = AudioFileCreateWithURL(v3, 0x63616666u, &buf, 3u, &outAudioFile);
  v15 = IMOSLoggingEnabled();
  if (v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
        *v22 = 138412290;
        v23 = v17;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "AudioFileCreateWithURL error %@", v22, 0xCu);
      }
    }

    goto LABEL_12;
  }

  if (v15)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v22 = 138412290;
      v23 = v3;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Created new audio file with fileURL: %@", v22, 0xCu);
    }
  }

  [(CKAudioRecorder *)self setFileURL:v3];
  [(CKAudioRecorder *)self setFileID:outAudioFile];
LABEL_24:
}

- (void)stopRecordingAndPlaySound:(BOOL)sound completion:(id)completion
{
  soundCopy = sound;
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = _Block_copy(completionCopy);
      v12[0] = 67109890;
      v12[1] = soundCopy;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      isCancelled = [(CKAudioRecorder *)self isCancelled];
      v17 = 1024;
      isRecording = [(CKAudioRecorder *)self isRecording];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "stopRecordingAndPlaySound: %d completion: %@ (cancelled: %d isRecording: %d)", v12, 0x1Eu);
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  if ([(CKAudioRecorder *)self isRecording])
  {
    [(CKAudioRecorder *)self setShouldPlayStopSound:soundCopy];
    [(CKAudioRecorder *)self setCompletion:completionCopy];
    voiceController = [(CKAudioRecorder *)self voiceController];
    [voiceController stop];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Can't stop audio recording which hasn't started", v12, 2u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)cancelRecording
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Cancel recording", buf, 2u);
    }
  }

  completion = [(CKAudioRecorder *)self completion];

  if (completion)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "No-op already stopped recording", v6, 2u);
      }
    }
  }

  else
  {
    [(CKAudioRecorder *)self setCancelled:1];
    [(CKAudioRecorder *)self stopRecording:0];
  }
}

- (void)voiceControllerDidStartRecording:(id)recording
{
  date = [MEMORY[0x1E695DF00] date];
  [(CKAudioRecorder *)self setStartDate:date];

  delegate = [(CKAudioRecorder *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKAudioRecorder *)self delegate];
    [delegate2 audioRecorderDidStartRecording:self];
  }

  if ([(CKAudioRecorder *)self shouldPlayStartSound])
  {
    voiceController = [(CKAudioRecorder *)self voiceController];
    [voiceController playAlertSoundForType:1];
  }
}

- (void)voiceControllerDidFinishRecording:(id)recording successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v27 = *MEMORY[0x1E69E9840];
  recordingCopy = recording;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v26 = successfullyCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "voiceControllerDidFinishRecording:successfully: %d", buf, 8u);
    }
  }

  if (successfullyCopy)
  {
    [(CKAudioRecorder *)self duration];
    if (v8 < 0.5)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Recording cancelled because it is too short.", buf, 2u);
        }
      }

      [(CKAudioRecorder *)self setCancelled:1];
    }
  }

  fileURL = [(CKAudioRecorder *)self fileURL];
  fileID = [(CKAudioRecorder *)self fileID];
  if (fileID)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Closing Audio File", buf, 2u);
      }
    }

    AudioFileClose(fileID);
  }

  if (successfullyCopy && ![(CKAudioRecorder *)self isCancelled])
  {
    v23 = *MEMORY[0x1E69A6F80];
    v24 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = +[CKMediaObjectManager sharedInstance];
    v16 = [v15 mediaObjectWithFileURL:fileURL filename:0 transcoderUserInfo:v14];

    [v16 setTemporaryFileURL:fileURL];
    [v16 setTotalPacketsCount:{-[CKAudioRecorder totalPacketsCount](self, "totalPacketsCount")}];
    v13 = [CKComposition audioCompositionWithMediaObject:v16];
  }

  else
  {
    v13 = 0;
  }

  voiceController = [(CKAudioRecorder *)self voiceController];
  if ([(CKAudioRecorder *)self shouldPlayStopSound])
  {
    if (successfullyCopy)
    {
      if ([(CKAudioRecorder *)self isCancelled])
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      v18 = 3;
    }

    [voiceController playAlertSoundForType:v18];
  }

  [voiceController releaseAudioSession];
  [(CKAudioRecorder *)self setRecording:0];
  completion = [(CKAudioRecorder *)self completion];
  v20 = completion;
  if (completion)
  {
    (*(completion + 16))(completion, v13);
  }

  if (!successfullyCopy)
  {
    delegate = [(CKAudioRecorder *)self delegate];
    [delegate audioRecorderRecordingDidFail:self];
  }

  if (![(CKAudioRecorder *)self isPaused]|| [(CKAudioRecorder *)self isCancelled])
  {
    [(CKAudioRecorder *)self resetState];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:fileURL error:0];
  }
}

- (void)voiceControllerRecordBufferAvailable:(id)available buffer:(id)buffer
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  availableCopy = available;
  bufferCopy = buffer;
  packetDescriptionCount = [bufferCopy packetDescriptionCount];
  bytesDataSize = [bufferCopy bytesDataSize];
  v10 = bytesDataSize;
  if (packetDescriptionCount && bytesDataSize)
  {
    packetDescriptions = [bufferCopy packetDescriptions];
    v12 = 0;
    while (1)
    {
      v13 = *packetDescriptions;
      if ((*packetDescriptions & 0x8000000000000000) != 0)
      {
        if ((IMOSLoggingEnabled() & 1) == 0)
        {
          goto LABEL_20;
        }

        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
          *buf = 138412290;
          *v25 = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Bad packet start offset %@. Skipping rest of record buffer.", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v14 = *(packetDescriptions + 12);
      if (v14 > v10)
      {
        break;
      }

      ++v12;
      packetDescriptions += 16;
      if (packetDescriptionCount == v12)
      {
        LODWORD(v12) = packetDescriptionCount;
        goto LABEL_20;
      }
    }

    if ((IMOSLoggingEnabled() & 1) == 0)
    {
      goto LABEL_20;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
      *buf = 138412290;
      *v25 = v18;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Bad packet size %@. Skipping rest of record buffer.", buf, 0xCu);
    }

LABEL_19:

LABEL_20:
    ioNumPackets = v12;
    totalPacketsCount = [(CKAudioRecorder *)self totalPacketsCount];
    v20 = AudioFileWritePackets(-[CKAudioRecorder fileID](self, "fileID"), 0, v10, [bufferCopy packetDescriptions], totalPacketsCount, &ioNumPackets, objc_msgSend(bufferCopy, "data"));
    if (v20 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v20 userInfo:0];
        *buf = 138412290;
        *v25 = v22;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "AudioFileWritePackets failed with error %@", buf, 0xCu);
      }
    }

    [(CKAudioRecorder *)self setTotalPacketsCount:totalPacketsCount + ioNumPackets];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v25[0] = packetDescriptionCount;
      LOWORD(v25[1]) = 1024;
      *(&v25[1] + 2) = v10;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "AVVCAudioBuffer contains %d packet descriptions, size %d. Ignoring", buf, 0xEu);
    }
  }
}

- (void)voiceController:(id)controller didUpdateAveragePower:(float)power
{
  delegate = [(CKAudioRecorder *)self delegate];
  *&v5 = power;
  [delegate audioRecorderDidUpdateAveragePower:v5];
}

- (void)resumeRecording
{
  if ([(CKAudioRecorder *)self isPaused])
  {

    [(CKAudioRecorder *)self startRecordingForRaiseGesture:0 shouldPlaySound:1];
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Cannot resume recording because the recording is not paused.", v4, 2u);
    }
  }
}

- (float)averagePower
{
  voiceController = [(CKAudioRecorder *)self voiceController];
  [voiceController averagePower];
  v4 = v3;

  return v4;
}

- (void)setRecording:(BOOL)recording
{
  if (self->_recording != recording)
  {
    self->_recording = recording;
    delegate = [(CKAudioRecorder *)self delegate];
    [delegate audioRecorderRecordingDidChange:self];
  }
}

- (void)resetState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Reseting audio recorder state", v6, 2u);
    }
  }

  voiceController = [(CKAudioRecorder *)self voiceController];
  [voiceController setDelegate:0];

  voiceController2 = [(CKAudioRecorder *)self voiceController];
  [voiceController2 cleanup];

  [(CKAudioRecorder *)self setVoiceController:0];
  [(CKAudioRecorder *)self setRecording:0];
  [(CKAudioRecorder *)self setCancelled:0];
  [(CKAudioRecorder *)self setFileURL:0];
  [(CKAudioRecorder *)self setStartDate:0];
  [(CKAudioRecorder *)self setCompletion:0];
  [(CKAudioRecorder *)self setShouldPlayStopSound:0];
  [(CKAudioRecorder *)self setFileID:0];
  [(CKAudioRecorder *)self setTotalPacketsCount:0];
  [(CKAudioRecorder *)self setPaused:0];
}

- (CKAudioRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end