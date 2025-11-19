@interface CSUtils(AudioFile)
+ (BOOL)readAudioChunksFrom:()AudioFile block:;
@end

@implementation CSUtils(AudioFile)

+ (BOOL)readAudioChunksFrom:()AudioFile block:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  inPropertyData[0] = xmmword_222FB8548;
  inPropertyData[1] = unk_222FB8558;
  v22 = 16;
  outExtAudioFile = 0;
  outAudioFile = 0;
  if (!AudioFileOpenURL([MEMORY[0x277CBEBC0] URLWithString:v5], kAudioFileReadPermission, 0, &outAudioFile))
  {
    if (!ExtAudioFileWrapAudioFileID(outAudioFile, 0, &outExtAudioFile))
    {
      goto LABEL_5;
    }

    AudioFileClose(outAudioFile);
  }

  outAudioFile = 0;
LABEL_5:
  if (outExtAudioFile)
  {
    v18 = 0;
    memset(outPropertyData, 0, sizeof(outPropertyData));
    ioPropertyDataSize = 40;
    ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, outPropertyData);
    ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
    v7 = [MEMORY[0x277CBEB28] dataWithLength:2048];
    *&ioData.mNumberBuffers = 1;
    *&ioData.mBuffers[0].mNumberChannels = 0x80000000001;
    ioData.mBuffers[0].mData = [v7 mutableBytes];
    while (1)
    {
      ioNumberFrames = 1024;
      v8 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &ioData);
      v9 = v8 == 0;
      if (v8)
      {
        break;
      }

      if (!ioNumberFrames)
      {
        goto LABEL_14;
      }

      if (v6)
      {
        v6[2](v6, ioData.mBuffers[0].mData, ioData.mBuffers[0].mDataByteSize >> 1);
      }
    }

    v10 = v8;
    v11 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "+[CSUtils(AudioFile) readAudioChunksFrom:block:]";
      v25 = 1026;
      v26 = v10;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Error reading audio file: %{public}d, skipping...", buf, 0x12u);
    }

LABEL_14:
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

@end