@interface BRKAudioFileReader
- (BOOL)readData:(signed __int16 *)data count:(int64_t *)count;
- (BRKAudioFileReader)initWithPath:(id)path;
- (int64_t)fileFrameCount;
- (void)dealloc;
@end

@implementation BRKAudioFileReader

- (BRKAudioFileReader)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = BRKAudioFileReader;
  v6 = [(BRKAudioFileReader *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
    ExtAudioFileOpenURL(v8, &v7->_audioFile);
  }

  return v7;
}

- (BOOL)readData:(signed __int16 *)data count:(int64_t *)count
{
  audioFile = self->_audioFile;
  if (audioFile)
  {
    *(&ioData.mNumberBuffers + 1) = 0;
    ioData.mNumberBuffers = 1;
    v6 = *count;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = 2 * v6;
    ioData.mBuffers[0].mData = data;
    ioNumberFrames = v6;
    v7 = ExtAudioFileRead(audioFile, &ioNumberFrames, &ioData);
    if (v7)
    {
      v8 = v7;
      v9 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BRKAudioFileReader readData:v8 count:v9];
      }

      v10 = 0;
    }

    else
    {
      v10 = ioNumberFrames;
    }

    *count = v10;
    LOBYTE(audioFile) = v10 != 0;
  }

  return audioFile;
}

- (int64_t)fileFrameCount
{
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  if (ExtAudioFileGetProperty(self->_audioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData))
  {
    return outPropertyData;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  audioFile = self->_audioFile;
  if (audioFile)
  {
    ExtAudioFileDispose(audioFile);
  }

  v4.receiver = self;
  v4.super_class = BRKAudioFileReader;
  [(BRKAudioFileReader *)&v4 dealloc];
}

- (void)readData:(int)a1 count:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_241ED9000, a2, OS_LOG_TYPE_ERROR, "Unable to read audio %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end