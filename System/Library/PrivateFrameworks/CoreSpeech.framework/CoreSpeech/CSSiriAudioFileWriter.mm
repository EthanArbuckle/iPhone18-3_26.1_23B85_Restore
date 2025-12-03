@interface CSSiriAudioFileWriter
+ (id)_generateTemporaryFileURL;
- (id)_initWithType:(int64_t)type pathGenerator:(id)generator xorFileHandle:(id)handle priority:(unsigned int)priority;
- (void)_close;
- (void)_delete;
- (void)appendAudioData:(id)data;
- (void)cancel;
- (void)configureWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
@end

@implementation CSSiriAudioFileWriter

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CSSiriAudioFileWriter_cancel__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __31__CSSiriAudioFileWriter_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _close];
  v2 = *(a1 + 32);

  return [v2 _delete];
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CSSiriAudioFileWriter_flushWithCompletion___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __45__CSSiriAudioFileWriter_flushWithCompletion___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    if (v2[11])
    {
LABEL_5:
      v9 = 0;
      goto LABEL_12;
    }

    v4 = [v3 path];
    v5 = open([v4 fileSystemRepresentation], 0);

    if ((v5 & 0x80000000) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v5 closeOnDealloc:1];
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = v6;

      goto LABEL_5;
    }

    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      v18 = __error();
      v19 = strerror(*v18);
      v20 = 136315394;
      v21 = "[CSSiriAudioFileWriter flushWithCompletion:]_block_invoke";
      v22 = 2082;
      v23 = v19;
      _os_log_error_impl(&dword_222E4D000, v17, OS_LOG_TYPE_ERROR, "%s Failed opening fd for flushed audio file %{public}s", &v20, 0x16u);
    }

    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v16 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  else
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = "[CSSiriAudioFileWriter flushWithCompletion:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s No file url on flush", &v20, 0xCu);
      v2 = *(a1 + 32);
    }

    v11 = v2[12];
    if (v11)
    {
      v24 = *MEMORY[0x277CCA7E8];
      v25[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v12 = 0;
    }

    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CSSiriAudioFileWriterErrorDomain" code:1 userInfo:v12];
  }

LABEL_12:
  [*(a1 + 32) _close];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(a1 + 32) + 88), *(*(a1 + 32) + 24), v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)appendAudioData:(id)data
{
  dataCopy = data;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CSSiriAudioFileWriter_appendAudioData___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

void __41__CSSiriAudioFileWriter_appendAudioData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 40))
  {
    v2 = [*(a1 + 40) length];
    *&ioData.mNumberBuffers = 1;
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 72);
    ioData.mBuffers[0].mNumberChannels = *(v4 + 76);
    v6 = v2 / v5;
    ioData.mBuffers[0].mDataByteSize = [v3 length];
    ioData.mBuffers[0].mData = [*(a1 + 40) bytes];
    v7 = ExtAudioFileWrite(*(*(a1 + 32) + 40), v6, &ioData);
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "[CSSiriAudioFileWriter appendAudioData:]_block_invoke";
        v18 = 1026;
        v19 = v8;
        v10 = "%s Failed writing audio file %{public}d";
        p_ioData = &v16;
        v12 = v9;
        v13 = 18;
LABEL_8:
        _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, v10, p_ioData, v13);
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      ioData.mNumberBuffers = 136315138;
      *(&ioData.mNumberBuffers + 1) = "[CSSiriAudioFileWriter appendAudioData:]_block_invoke";
      v10 = "%s No audio file to append data";
      p_ioData = &ioData;
      v12 = v14;
      v13 = 12;
      goto LABEL_8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureWithAudioStreamBasicDescription:(const AudioStreamBasicDescription *)description
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *&description->mBytesPerPacket;
  v13 = *&description->mSampleRate;
  v14 = v5;
  v15 = *&description->mBitsPerChannel;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[CSSiriAudioFileWriter configureWithAudioStreamBasicDescription:]";
    v18 = 1040;
    v19 = 4;
    v20 = 2080;
    v21 = &v13 + 8;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Configuring with asbd %.4s", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__CSSiriAudioFileWriter_configureWithAudioStreamBasicDescription___block_invoke;
  block[3] = &unk_2784C3A68;
  block[4] = self;
  block[5] = a2;
  v10 = v13;
  v11 = v14;
  v12 = v15;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __66__CSSiriAudioFileWriter_configureWithAudioStreamBasicDescription___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"CSSiriAudioFileWriter.m" lineNumber:213 description:@"AudioFile Already configured"];

    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  *(v2 + 80) = *(a1 + 80);
  *(v2 + 48) = v3;
  *(v2 + 64) = v4;
  v5 = *(*(a1 + 32) + 32);
  if (v5)
  {
    [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  }

  else
  {
    [objc_opt_class() _generateTemporaryFileURL];
  }
  v6 = ;
  objc_storeStrong((*(a1 + 32) + 24), v6);

  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = *(*(a1 + 32) + 24);
    *buf = 136315394;
    v37 = "[CSSiriAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
    v38 = 2112;
    *v39 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s Creating audio file at URL %@", buf, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  memset(&v33.mFormatID, 0, 32);
  v12 = *(v10 + 76);
  v33.mChannelsPerFrame = v12;
  if (!v12)
  {
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "_AudioStreamBasicDescriptionForAFAudioFileType";
      v38 = 2048;
      *v39 = 0;
      _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s inASBD->mChannelsPerFrame = %lu", buf, 0x16u);
    }

    v12 = 1;
    v33.mChannelsPerFrame = 1;
  }

  v33.mSampleRate = *(v10 + 48);
  switch(v11)
  {
    case 3:
      v33.mSampleRate = 24000.0;
      v33.mFormatID = 1869641075;
      v33.mFramesPerPacket = 480;
      v33.mChannelsPerFrame = 1;
      break;
    case 2:
      *&v33.mFormatID = 0xC6C70636DLL;
      v33.mBitsPerChannel = 16;
      v33.mFramesPerPacket = 1;
      v33.mBytesPerFrame = 2 * v12;
      v33.mBytesPerPacket = 2 * v12;
      break;
    case 1:
      v33.mSampleRate = 0.0;
      v33.mFormatID = 1935764850;
      break;
    default:
      goto LABEL_21;
  }

  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &v33);
  if (Property)
  {
    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v37 = "_AudioStreamBasicDescriptionForAFAudioFileType";
      v38 = 1042;
      *v39 = 4;
      *&v39[4] = 2082;
      *&v39[6] = &v33.mFormatID;
      v40 = 1042;
      v41 = 4;
      v42 = 2082;
      p_Property = &Property;
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Error getting format info for type %{public}.4s %{public}.4s", buf, 0x2Cu);
    }
  }

LABEL_21:
  v15 = *(a1 + 32);
  v16 = *(v15 + 16);
  if ((v16 - 1) > 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_222FB839C[v16 - 1];
  }

  if (v16 == 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v19 = ExtAudioFileCreateWithURL(*(v15 + 24), v17, &v33, 0, v18, (v15 + 40));
  if (v19)
  {
    v20 = v19;
    v21 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 24);
      *buf = 136315650;
      v37 = "[CSSiriAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
      v38 = 2114;
      *v39 = v31;
      *&v39[8] = 1026;
      *&v39[10] = v20;
      _os_log_error_impl(&dword_222E4D000, v21, OS_LOG_TYPE_ERROR, "%s Failed creating audio file at url %{public}@ %{public}d", buf, 0x1Cu);
    }

    v22 = *(a1 + 32);
    if (!*(v22 + 96) && *(v22 + 88))
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24 = [v23 initWithDomain:@"CSSiriAudioFileWriterExtAudioFileErrorDomain" code:v20 userInfo:{0, *&v33.mSampleRate, *&v33.mFormatID, *&v33.mBytesPerFrame}];
      v25 = *(a1 + 32);
      v26 = *(v25 + 96);
      *(v25 + 96) = v24;
    }
  }

  else
  {
    result = ExtAudioFileSetProperty(*(*(a1 + 32) + 40), 0x63666D74u, 0x28u, (*(a1 + 32) + 48));
    if (!result)
    {
      goto LABEL_38;
    }

    v28 = result;
    v29 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[CSSiriAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
      v38 = 1026;
      *v39 = v28;
      _os_log_error_impl(&dword_222E4D000, v29, OS_LOG_TYPE_ERROR, "%s Error setting input format %{public}d", buf, 0x12u);
    }
  }

  result = *(a1 + 32);
  if (*(result + 40))
  {
    [result _close];
    result = [*(a1 + 32) _delete];
  }

LABEL_38:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_delete
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_url)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    url = self->_url;
    v10 = 0;
    v5 = [defaultManager removeItemAtURL:url error:&v10];
    v6 = v10;

    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "[CSSiriAudioFileWriter _delete]";
        v13 = 2114;
        v14 = v6;
        _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Error removing item at URL %{public}@", buf, 0x16u);
      }
    }

    v8 = self->_url;
    self->_url = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_close
{
  v12 = *MEMORY[0x277D85DE8];
  audioFile = self->_audioFile;
  if (audioFile)
  {
    v4 = ExtAudioFileDispose(audioFile);
    if (v4)
    {
      v5 = v4;
      v6 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "[CSSiriAudioFileWriter _close]";
        v10 = 1026;
        v11 = v5;
        _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s Failure disposing audio file %{public}d", &v8, 0x12u);
      }
    }

    self->_audioFile = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CSSiriAudioFileWriter *)self _close];
  v3.receiver = self;
  v3.super_class = CSSiriAudioFileWriter;
  [(CSSiriAudioFileWriter *)&v3 dealloc];
}

- (id)_initWithType:(int64_t)type pathGenerator:(id)generator xorFileHandle:(id)handle priority:(unsigned int)priority
{
  generatorCopy = generator;
  handleCopy = handle;
  if (!type)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSSiriAudioFileWriter.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"type != AFAudioFileTypeNone"}];
  }

  v25.receiver = self;
  v25.super_class = CSSiriAudioFileWriter;
  v13 = [(CSSiriAudioFileWriter *)&v25 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_qos_class(0, priority, 0);
    v15 = dispatch_queue_create("CSSiriAudioFileWriterQueue", v14);

    queue = v13->_queue;
    v13->_queue = v15;

    v17 = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__CSSiriAudioFileWriter__initWithType_pathGenerator_xorFileHandle_priority___block_invoke;
    block[3] = &unk_2784C4638;
    v21 = v13;
    typeCopy = type;
    v22 = handleCopy;
    v23 = generatorCopy;
    dispatch_async(v17, block);
  }

  return v13;
}

void __76__CSSiriAudioFileWriter__initWithType_pathGenerator_xorFileHandle_priority___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = *(a1 + 56);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (fcntl([v3 fileDescriptor], 50, v20) == -1)
    {
      v9 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "[CSSiriAudioFileWriter _initWithType:pathGenerator:xorFileHandle:priority:]_block_invoke";
        _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s Error getting file path from provided file handle; will create our own path and handle", buf, 0xCu);
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v1 = (*(v7 + 16))(*(a1 + 48));
      v8 = [v1 copy];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 32), v8);
    if (v7)
    {
    }
  }

  if ((AFIsInternalInstall() & 1) == 0)
  {
    v11 = [MEMORY[0x277CEF368] sharedPreferences];
    if ([v11 shouldLogForQA])
    {
      v12 = *(*(a1 + 32) + 32);

      if (v12)
      {
        v10 = *(*(a1 + 32) + 32);
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v10 = *(*(a1 + 32) + 32);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  v16 = @"path";
  v17 = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
LABEL_20:
  v14 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v14 logEventWithType:238 context:v13];

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)_generateTemporaryFileURL
{
  _savedAudioFilesDirectory = [self _savedAudioFilesDirectory];
  v3 = [_savedAudioFilesDirectory URLByAppendingPathComponent:@"SavedAudioFile"];

  return v3;
}

@end