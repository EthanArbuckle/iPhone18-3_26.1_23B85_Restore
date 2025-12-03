@interface BRKAudioFileWriter
- (BRKAudioFileWriter)initWithPath:(id)path;
- (void)_lock_close;
- (void)_lock_writeSamples:(const signed __int16 *)samples count:(unint64_t)count;
- (void)close;
- (void)writeSamples:(const signed __int16 *)samples count:(unint64_t)count;
@end

@implementation BRKAudioFileWriter

- (BRKAudioFileWriter)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = BRKAudioFileWriter;
  v5 = [(BRKWriter *)&v11 initWithPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    *(v5 + 4) = 0x40CF400000000000;
    *(v5 + 40) = xmmword_241EDFBF0;
    *(v5 + 56) = xmmword_241EDFC00;
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
    if (ExtAudioFileCreateWithURL(v7, 0x57415645u, &v6->_format, 0, 1u, &v6->_audioFile))
    {
      v8 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BRKAudioFileWriter initWithPath:];
      }
    }

    else if (!ExtAudioFileSetProperty(v6->_audioFile, 0x63666D74u, 0x28u, &v6->_format))
    {
LABEL_11:

      goto LABEL_12;
    }

    if (v6->_audioFile)
    {
      [(BRKAudioFileWriter *)v6 close];
      v9 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BRKAudioFileWriter initWithPath:];
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (void)writeSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__BRKAudioFileWriter_writeSamples_count___block_invoke;
  v4[3] = &unk_278D27D50;
  v4[4] = self;
  v4[5] = samples;
  v4[6] = count;
  [(BRKWriter *)self performWithLock:v4];
}

- (void)_lock_writeSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  audioFile = self->_audioFile;
  if (audioFile)
  {
    *(&ioData.mNumberBuffers + 1) = 0;
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = 2 * count;
    ioData.mBuffers[0].mData = samples;
    if (ExtAudioFileWrite(audioFile, count, &ioData))
    {
      v5 = BRKLoggingObjectForDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BRKAudioFileWriter _lock_writeSamples:count:];
      }
    }
  }
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__BRKAudioFileWriter_close__block_invoke;
  v2[3] = &unk_278D27D78;
  v2[4] = self;
  [(BRKWriter *)self performWithLock:v2];
}

- (void)_lock_close
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241ED9000, v0, v1, "Unable to close audio %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPath:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241ED9000, v0, v1, "Unable to audio writer %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241ED9000, v0, v1, "Unable to set file property %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_writeSamples:count:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_241ED9000, v0, v1, "Unable to write audio %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end