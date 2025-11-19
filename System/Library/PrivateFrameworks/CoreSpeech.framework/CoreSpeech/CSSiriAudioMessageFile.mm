@interface CSSiriAudioMessageFile
- (CSSiriAudioMessageFile)initWithRequestUUID:(id)a3;
- (void)_removeRecordedAudio;
- (void)appendAudioChunk:(id)a3;
- (void)dealloc;
- (void)endAudio;
- (void)prepareFile;
@end

@implementation CSSiriAudioMessageFile

- (void)_removeRecordedAudio
{
  if (self->_recordedAudioFileURL && (!CSIsInternalBuild() || (_AFPreferencesKeepRecorededAudioFiles() & 1) == 0))
  {
    [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      recordedAudioFileURL = self->_recordedAudioFileURL;
      *buf = 136315650;
      v16 = "[CSSiriAudioMessageFile _removeRecordedAudio]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = recordedAudioFileURL;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s %p Removing recorded audio at %@...", buf, 0x20u);
    }

    v5 = +[NSFileManager defaultManager];
    v6 = self->_recordedAudioFileURL;
    v14 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v14];
    v8 = v14;

    v9 = CSLogContextFacilityCoreSpeech;
    if (!v7 || v8)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_recordedAudioFileURL;
        v12 = v9;
        v13 = [v8 localizedDescription];
        *buf = 136315906;
        v16 = "[CSSiriAudioMessageFile _removeRecordedAudio]";
        v17 = 2048;
        v18 = self;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s %p Failed to remove recorded audio at %@ (error = %@).", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_recordedAudioFileURL;
      *buf = 136315650;
      v16 = "[CSSiriAudioMessageFile _removeRecordedAudio]";
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s %p Removed recorded audio at %@.", buf, 0x20u);
    }
  }
}

- (void)dealloc
{
  [(CSSiriAudioMessageFile *)self _removeRecordedAudio];
  v3.receiver = self;
  v3.super_class = CSSiriAudioMessageFile;
  [(CSSiriAudioMessageFile *)&v3 dealloc];
}

- (void)endAudio
{
  [(CSPlainAudioFileWriter *)self->_audioFileWriter endAudio];
  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = 0;
}

- (void)appendAudioChunk:(id)a3
{
  audioFileWriter = self->_audioFileWriter;
  v4 = a3;
  v8 = [v4 data];
  v5 = v8;
  v6 = [v8 bytes];
  v7 = [v4 numSamples];

  [(CSPlainAudioFileWriter *)audioFileWriter addSamples:v6 numSamples:v7];
}

- (void)prepareFile
{
  v3 = AFUserSupportDirectoryPath();
  v4 = [v3 stringByAppendingPathComponent:@"RecordedAudio"];

  v5 = +[NSFileManager defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [NSString alloc];
  requestUUID = self->_requestUUID;
  if (!requestUUID)
  {
    requestUUID = @"Unknown";
  }

  v8 = [v6 initWithFormat:@"%@.wav", requestUUID];
  v9 = [v4 stringByAppendingPathComponent:v8];
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[CSSiriAudioMessageFile prepareFile]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Creating recorded audio file in %@", buf, 0x16u);
  }

  v11 = [NSURL fileURLWithPath:v9];
  recordedAudioFileURL = self->_recordedAudioFileURL;
  self->_recordedAudioFileURL = v11;

  v13 = [CSPlainAudioFileWriter alloc];
  v14 = self->_recordedAudioFileURL;
  +[CSFAudioStreamBasicDescriptionFactory lpcmMonoInterleavedASBD];
  +[CSFAudioStreamBasicDescriptionFactory lpcmMonoInterleavedASBD];
  v15 = [v13 initWithURL:v14 inputFormat:buf outputFormat:v17];
  audioFileWriter = self->_audioFileWriter;
  self->_audioFileWriter = v15;
}

- (CSSiriAudioMessageFile)initWithRequestUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSSiriAudioMessageFile;
  v6 = [(CSSiriAudioMessageFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestUUID, a3);
  }

  return v7;
}

@end