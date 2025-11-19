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
- (void)setRecording:(BOOL)a3;
- (void)startRecordingForRaiseGesture:(BOOL)a3 shouldPlaySound:(BOOL)a4;
- (void)stopRecordingAndPlaySound:(BOOL)a3 completion:(id)a4;
- (void)voiceController:(id)a3 didUpdateAveragePower:(float)a4;
- (void)voiceControllerDidFinishRecording:(id)a3 successfully:(BOOL)a4;
- (void)voiceControllerDidStartRecording:(id)a3;
- (void)voiceControllerRecordBufferAvailable:(id)a3 buffer:(id)a4;
@end

@implementation CKAudioRecorder

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKVoiceController *)self->_voiceController setDelegate:0];
  [(CKVoiceController *)self->_voiceController releaseAudioSession];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 setIdleTimerDisabled:0];

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
  v2 = [(CKAudioRecorder *)self startDate];
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    [v2 timeIntervalSinceReferenceDate];
    v6 = v4 - v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)startRecordingForRaiseGesture:(BOOL)a3 shouldPlaySound:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "startRecordingForRaiseGesture: %d", buf, 8u);
    }
  }

  [(CKAudioRecorder *)self setRecording:1];
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  [v8 setIdleTimerDisabled:1];

  if (v5)
  {
    v9 = 1768764005;
  }

  else
  {
    v9 = 1768780647;
  }

  [(CKAudioRecorder *)self setShouldPlayStartSound:v4 & ~v5];
  v10 = [(CKAudioRecorder *)self voiceController];
  v11 = v10;
  if (v10)
  {
    [(CKVoiceController *)v10 setActivationMode:v9];
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
  v3 = [(CKAudioRecorder *)self fileURL];
  v4 = AudioFileOpenURL(v3, kAudioFileReadWritePermission, 0x63616666u, &outAudioFile);

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

    v8 = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:v8 successfully:0];
  }

  else
  {
    if (v5)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CKAudioRecorder *)self fileURL];
        *buf = 138412290;
        v13 = v10;
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
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 URLByDeletingLastPathComponent];
  v20 = 0;
  [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v20];
  v6 = v20;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v3 URLByDeletingLastPathComponent];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = v8;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "[NSFileManager createDirectoryAtURL:%@] failed with error %@", &buf, 0x16u);
      }
    }

    v9 = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:v9 successfully:0];

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
    v13 = [(CKAudioRecorder *)self voiceController];
    [(CKAudioRecorder *)self voiceControllerDidFinishRecording:v13 successfully:0];

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

- (void)stopRecordingAndPlaySound:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = _Block_copy(v6);
      v12[0] = 67109890;
      v12[1] = v4;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = [(CKAudioRecorder *)self isCancelled];
      v17 = 1024;
      v18 = [(CKAudioRecorder *)self isRecording];
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "stopRecordingAndPlaySound: %d completion: %@ (cancelled: %d isRecording: %d)", v12, 0x1Eu);
    }
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 setIdleTimerDisabled:0];

  if ([(CKAudioRecorder *)self isRecording])
  {
    [(CKAudioRecorder *)self setShouldPlayStopSound:v4];
    [(CKAudioRecorder *)self setCompletion:v6];
    v10 = [(CKAudioRecorder *)self voiceController];
    [v10 stop];
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

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
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

  v4 = [(CKAudioRecorder *)self completion];

  if (v4)
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

- (void)voiceControllerDidStartRecording:(id)a3
{
  v4 = [MEMORY[0x1E695DF00] date];
  [(CKAudioRecorder *)self setStartDate:v4];

  v5 = [(CKAudioRecorder *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKAudioRecorder *)self delegate];
    [v7 audioRecorderDidStartRecording:self];
  }

  if ([(CKAudioRecorder *)self shouldPlayStartSound])
  {
    v8 = [(CKAudioRecorder *)self voiceController];
    [v8 playAlertSoundForType:1];
  }
}

- (void)voiceControllerDidFinishRecording:(id)a3 successfully:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v26 = v4;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "voiceControllerDidFinishRecording:successfully: %d", buf, 8u);
    }
  }

  if (v4)
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

  v10 = [(CKAudioRecorder *)self fileURL];
  v11 = [(CKAudioRecorder *)self fileID];
  if (v11)
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

    AudioFileClose(v11);
  }

  if (v4 && ![(CKAudioRecorder *)self isCancelled])
  {
    v23 = *MEMORY[0x1E69A6F80];
    v24 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = +[CKMediaObjectManager sharedInstance];
    v16 = [v15 mediaObjectWithFileURL:v10 filename:0 transcoderUserInfo:v14];

    [v16 setTemporaryFileURL:v10];
    [v16 setTotalPacketsCount:{-[CKAudioRecorder totalPacketsCount](self, "totalPacketsCount")}];
    v13 = [CKComposition audioCompositionWithMediaObject:v16];
  }

  else
  {
    v13 = 0;
  }

  v17 = [(CKAudioRecorder *)self voiceController];
  if ([(CKAudioRecorder *)self shouldPlayStopSound])
  {
    if (v4)
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

    [v17 playAlertSoundForType:v18];
  }

  [v17 releaseAudioSession];
  [(CKAudioRecorder *)self setRecording:0];
  v19 = [(CKAudioRecorder *)self completion];
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19, v13);
  }

  if (!v4)
  {
    v21 = [(CKAudioRecorder *)self delegate];
    [v21 audioRecorderRecordingDidFail:self];
  }

  if (![(CKAudioRecorder *)self isPaused]|| [(CKAudioRecorder *)self isCancelled])
  {
    [(CKAudioRecorder *)self resetState];
    v22 = [MEMORY[0x1E696AC08] defaultManager];
    [v22 removeItemAtURL:v10 error:0];
  }
}

- (void)voiceControllerRecordBufferAvailable:(id)a3 buffer:(id)a4
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 packetDescriptionCount];
  v9 = [v7 bytesDataSize];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v7 packetDescriptions];
    v12 = 0;
    while (1)
    {
      v13 = *v11;
      if ((*v11 & 0x8000000000000000) != 0)
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

      v14 = *(v11 + 12);
      if (v14 > v10)
      {
        break;
      }

      ++v12;
      v11 += 16;
      if (v8 == v12)
      {
        LODWORD(v12) = v8;
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
    v19 = [(CKAudioRecorder *)self totalPacketsCount];
    v20 = AudioFileWritePackets(-[CKAudioRecorder fileID](self, "fileID"), 0, v10, [v7 packetDescriptions], v19, &ioNumPackets, objc_msgSend(v7, "data"));
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

    [(CKAudioRecorder *)self setTotalPacketsCount:v19 + ioNumPackets];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v25[0] = v8;
      LOWORD(v25[1]) = 1024;
      *(&v25[1] + 2) = v10;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "AVVCAudioBuffer contains %d packet descriptions, size %d. Ignoring", buf, 0xEu);
    }
  }
}

- (void)voiceController:(id)a3 didUpdateAveragePower:(float)a4
{
  v6 = [(CKAudioRecorder *)self delegate];
  *&v5 = a4;
  [v6 audioRecorderDidUpdateAveragePower:v5];
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
  v2 = [(CKAudioRecorder *)self voiceController];
  [v2 averagePower];
  v4 = v3;

  return v4;
}

- (void)setRecording:(BOOL)a3
{
  if (self->_recording != a3)
  {
    self->_recording = a3;
    v5 = [(CKAudioRecorder *)self delegate];
    [v5 audioRecorderRecordingDidChange:self];
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

  v4 = [(CKAudioRecorder *)self voiceController];
  [v4 setDelegate:0];

  v5 = [(CKAudioRecorder *)self voiceController];
  [v5 cleanup];

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