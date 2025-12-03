@interface CSUncompressedAudioLogging
+ (int)loggingFileProtectionClass;
- (BOOL)_moveAudioLoggingToCollectionDirectory:(id *)directory;
- (BOOL)_prepareFileForLogging:(id *)logging;
- (BOOL)_setupFilePath:(id *)path;
- (BOOL)_writePlistFile:(id *)file;
- (CSUncompressedAudioLogging)initWithRequestId:(id)id asrId:(id)asrId dictationInteractionId:(id)interactionId languageCode:(id)code task:(id)task isSamplingForDictation:(BOOL)dictation rpiEnabled:(BOOL)enabled;
- (id)samplingString;
- (int)_createFileDescriptor:(id)descriptor protectionClass:(int)class;
- (void)_removeTmpAudioFile;
- (void)appendAudioData:(id)data;
- (void)cancelAudioLogging;
- (void)endAudioWithCancellation:(BOOL)cancellation completion:(id)completion;
- (void)prepareLogging:(id)logging;
- (void)setShouldWriteRPIData:(BOOL)data;
@end

@implementation CSUncompressedAudioLogging

- (id)samplingString
{
  if (self->_isSamplingForDictation)
  {
    return @"Dictation Sampling";
  }

  else
  {
    return @"Assistant Sampling";
  }
}

- (BOOL)_writePlistFile:(id *)file
{
  v54 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  dictationInteractionId = self->_dictationInteractionId;
  if (dictationInteractionId)
  {
    [dictionary setObject:dictationInteractionId forKey:@"dictationUIInteractionIdentifier"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    [v6 setObject:requestId forKey:@"interactionIdentifier"];
  }

  samplingTimestampDetail = self->_samplingTimestampDetail;
  if (samplingTimestampDetail)
  {
    [v6 setObject:samplingTimestampDetail forKey:@"samplingTimestamp"];
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    [v6 setObject:languageCode forKey:@"language"];
  }

  task = self->_task;
  if (task)
  {
    [v6 setObject:task forKey:@"task"];
  }

  asrId = self->_asrId;
  if (asrId)
  {
    [v6 setObject:asrId forKey:@"asrSelfComponentIdentifier"];
  }

  v13 = MEMORY[0x1E696AD98];
  +[CSConfig inputRecordingSampleRate];
  v14 = [v13 numberWithFloat:?];
  [v6 setObject:v14 forKey:@"samplingRate"];

  v43 = 0;
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v43];
  v16 = v43;
  if (!v15)
  {
    v26 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v31 = v26;
      samplingString = [(CSUncompressedAudioLogging *)self samplingString];
      localizedDescription = [v16 localizedDescription];
      *buf = 136315650;
      v49 = "[CSUncompressedAudioLogging _writePlistFile:]";
      v50 = 2112;
      v51 = samplingString;
      v52 = 2114;
      v53 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_ERROR, "%s %@: Failed to serialize plistRoot into plist : %{public}@", buf, 0x20u);

      if (!file)
      {
        goto LABEL_40;
      }
    }

    else if (!file)
    {
      goto LABEL_40;
    }

    if (v16)
    {
      v46 = *MEMORY[0x1E696AA08];
      v47 = v16;
      v27 = MEMORY[0x1E695DF20];
      v28 = &v47;
      v29 = &v46;
LABEL_31:
      v18 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
LABEL_33:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2358 userInfo:v18];
      *file = v24 = 0;
      goto LABEL_34;
    }

LABEL_32:
    v18 = 0;
    goto LABEL_33;
  }

  v17 = [(CSUncompressedAudioLogging *)self _createFileDescriptor:self->_plistFilePath protectionClass:+[CSUncompressedAudioLogging loggingFileProtectionClass]];
  if (v17 <= 0)
  {
    v30 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v37 = v30;
      samplingString2 = [(CSUncompressedAudioLogging *)self samplingString];
      *buf = 136315394;
      v49 = "[CSUncompressedAudioLogging _writePlistFile:]";
      v50 = 2112;
      v51 = samplingString2;
      _os_log_error_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_ERROR, "%s %@: Failed to create FD for plist file", buf, 0x16u);

      if (file)
      {
LABEL_29:
        if (v16)
        {
          v44 = *MEMORY[0x1E696AA08];
          v45 = v16;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v45;
          v29 = &v44;
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else if (file)
    {
      goto LABEL_29;
    }

LABEL_40:
    v24 = 0;
    goto LABEL_41;
  }

  v18 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v17 closeOnDealloc:1];
  v42 = 0;
  [v18 writeData:v15 error:&v42];
  v19 = v42;
  [v18 closeFile];
  if (self->_rpiEnabled && self->_shouldWriteRpiData)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    plistFilePath = self->_plistFilePath;
    rpiPlistFilePath = self->_rpiPlistFilePath;
    v41 = v19;
    [defaultManager linkItemAtPath:plistFilePath toPath:rpiPlistFilePath error:&v41];
    v23 = v41;

    v19 = v23;
  }

  v24 = v19 == 0;
  if (!v19)
  {
    goto LABEL_22;
  }

  v25 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v34 = v25;
    samplingString3 = [(CSUncompressedAudioLogging *)self samplingString];
    localizedDescription2 = [v19 localizedDescription];
    *buf = 136315650;
    v49 = "[CSUncompressedAudioLogging _writePlistFile:]";
    v50 = 2112;
    v51 = samplingString3;
    v52 = 2114;
    v53 = localizedDescription2;
    _os_log_error_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_ERROR, "%s %@: Unable to writeData : %{public}@", buf, 0x20u);

    if (!file)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (file)
  {
LABEL_21:
    *file = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2356 userInfo:0];
  }

LABEL_22:

LABEL_34:
LABEL_41:

  v39 = *MEMORY[0x1E69E9840];
  return v24;
}

- (int)_createFileDescriptor:(id)descriptor protectionClass:(int)class
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    samplingString = [(CSUncompressedAudioLogging *)self samplingString];
    *buf = 136315650;
    v14 = "[CSUncompressedAudioLogging _createFileDescriptor:protectionClass:]";
    v15 = 2112;
    v16 = samplingString;
    v17 = 2112;
    v18 = descriptorCopy;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s %@: Creating logging file : %@", buf, 0x20u);
  }

  v10 = open_dprotected_np([descriptorCopy UTF8String], 514, class, 0, 420);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)endAudioWithCancellation:(BOOL)cancellation completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CSUncompressedAudioLogging_endAudioWithCancellation_completion___block_invoke;
  v14[3] = &unk_1E865ACF0;
  v15 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x1E12BA300](v14);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CSUncompressedAudioLogging_endAudioWithCancellation_completion___block_invoke_2;
  v11[3] = &unk_1E865C260;
  cancellationCopy = cancellation;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

uint64_t __66__CSUncompressedAudioLogging_endAudioWithCancellation_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__CSUncompressedAudioLogging_endAudioWithCancellation_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) audioFileHandle];
  [v2 closeFile];

  if (([*(a1 + 32) isCancelled] & 1) != 0 || *(a1 + 48) == 1)
  {
    v3 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 samplingString];
      *buf = 136315394;
      v23 = "[CSUncompressedAudioLogging endAudioWithCancellation:completion:]_block_invoke_2";
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s %@: Request is cancelled remove logging", buf, 0x16u);
    }

    [*(a1 + 32) _removeTmpAudioFile];
  }

  else
  {
    v7 = *(a1 + 32);
    v21 = 0;
    v8 = [v7 _moveAudioLoggingToCollectionDirectory:&v21];
    v9 = v21;
    if (v8)
    {
      v10 = *(a1 + 32);
      v20 = 0;
      v11 = [v10 _writePlistFile:&v20];
      v12 = v20;
      if (v11)
      {
        v13 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 32);
          v18 = v13;
          v19 = [v17 samplingString];
          *buf = 136315394;
          v23 = "[CSUncompressedAudioLogging endAudioWithCancellation:completion:]_block_invoke";
          v24 = 2112;
          v25 = v19;
          _os_log_debug_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEBUG, "%s %@: Done with audio logging", buf, 0x16u);
        }

        v14 = *(*(a1 + 32) + 112);
        v15 = *(*(a1 + 40) + 16);
      }

      else
      {
        v15 = *(*(a1 + 40) + 16);
      }

      v15();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_moveAudioLoggingToCollectionDirectory:(id *)directory
{
  v39 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  tmpAudioFilePath = [(CSUncompressedAudioLogging *)self tmpAudioFilePath];
  v7 = [defaultManager fileExistsAtPath:tmpAudioFilePath];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    tmpAudioFilePath2 = [(CSUncompressedAudioLogging *)self tmpAudioFilePath];
    audioFilePath = [(CSUncompressedAudioLogging *)self audioFilePath];
    v30 = 0;
    v11 = [defaultManager2 moveItemAtPath:tmpAudioFilePath2 toPath:audioFilePath error:&v30];
    v12 = v30;

    if (v11)
    {
      rpiAudioFilePath = [(CSUncompressedAudioLogging *)self rpiAudioFilePath];
      if (rpiAudioFilePath && (shouldWriteRpiData = self->_shouldWriteRpiData, rpiAudioFilePath, shouldWriteRpiData))
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        audioFilePath2 = [(CSUncompressedAudioLogging *)self audioFilePath];
        rpiAudioFilePath2 = [(CSUncompressedAudioLogging *)self rpiAudioFilePath];
        v29 = v12;
        v18 = [defaultManager3 linkItemAtPath:audioFilePath2 toPath:rpiAudioFilePath2 error:&v29];
        v19 = v29;

        if (v18)
        {
          v20 = 1;
        }

        else
        {
          v23 = CSLogCategoryAudio;
          if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v34 = "[CSUncompressedAudioLogging _moveAudioLoggingToCollectionDirectory:]";
            v35 = 2112;
            v36 = v19;
            _os_log_error_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_ERROR, "%s audio move for rpi failed with: %@", buf, 0x16u);
          }

          v20 = 0;
        }

        v12 = v19;
      }

      else
      {
        v20 = 1;
      }

      goto LABEL_22;
    }

    v21 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v26 = v21;
      samplingString = [(CSUncompressedAudioLogging *)self samplingString];
      localizedDescription = [v12 localizedDescription];
      *buf = 136315650;
      v34 = "[CSUncompressedAudioLogging _moveAudioLoggingToCollectionDirectory:]";
      v35 = 2112;
      v36 = samplingString;
      v37 = 2112;
      v38 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v26, OS_LOG_TYPE_ERROR, "%s %@: Failed to move audio logging %@", buf, 0x20u);

      if (directory)
      {
        goto LABEL_11;
      }
    }

    else if (directory)
    {
LABEL_11:
      if (v12)
      {
        v31 = *MEMORY[0x1E696AA08];
        v32 = v12;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      }

      else
      {
        v22 = 0;
      }

      *directory = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2357 userInfo:v22];
    }

    v20 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (directory)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2353 userInfo:0];
    *directory = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_23:
  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)_removeTmpAudioFile
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CSUncompressedAudioLogging__removeTmpAudioFile__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__CSUncompressedAudioLogging__removeTmpAudioFile__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) tmpAudioFilePath];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [*(a1 + 32) tmpAudioFilePath];
    v15 = 0;
    v7 = [v5 removeItemAtPath:v6 error:&v15];
    v8 = v15;

    if ((v7 & 1) == 0)
    {
      v9 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = v9;
        v13 = [v11 samplingString];
        v14 = [v8 localizedDescription];
        *buf = 136315650;
        v17 = "[CSUncompressedAudioLogging _removeTmpAudioFile]_block_invoke";
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s %@: Failed to remove audio logging in the tmp : %@", buf, 0x20u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancelAudioLogging
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSUncompressedAudioLogging_cancelAudioLogging__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __48__CSUncompressedAudioLogging_cancelAudioLogging__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 samplingString];
    v8 = 136315394;
    v9 = "[CSUncompressedAudioLogging cancelAudioLogging]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s %@: Cancelling audio logging", &v8, 0x16u);
  }

  result = [*(a1 + 32) setIsCancelled:1];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendAudioData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__CSUncompressedAudioLogging_appendAudioData___block_invoke;
    v7[3] = &unk_1E865C970;
    v7[4] = self;
    v8 = v5;
    dispatch_async(queue, v7);
  }
}

void __46__CSUncompressedAudioLogging_appendAudioData___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) audioFileHandle];
  v3 = *(a1 + 40);
  v11 = 0;
  [v2 writeData:v3 error:&v11];
  v4 = v11;

  if (v4)
  {
    v5 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 samplingString];
      v10 = [v4 localizedDescription];
      *buf = 136315650;
      v13 = "[CSUncompressedAudioLogging appendAudioData:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s %@: Unable to writeData : %{public}@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setShouldWriteRPIData:(BOOL)data
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__CSUncompressedAudioLogging_setShouldWriteRPIData___block_invoke;
  v4[3] = &unk_1E865B178;
  v4[4] = self;
  dataCopy = data;
  dispatch_async(queue, v4);
}

- (BOOL)_setupFilePath:(id *)path
{
  v85 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  loggingDate = self->_loggingDate;
  self->_loggingDate = date;

  [(NSDate *)self->_loggingDate timeIntervalSince1970];
  v8 = v7;
  v9 = +[CSUtils defaultDateFormatter];
  v10 = [v9 stringFromDate:self->_loggingDate];
  samplingDate = self->_samplingDate;
  self->_samplingDate = v10;

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", v8];
  samplingTimestamp = self->_samplingTimestamp;
  self->_samplingTimestamp = v12;

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.6f", v8];
  samplingTimestampDetail = self->_samplingTimestampDetail;
  self->_samplingTimestampDetail = v14;

  samplingDirectory = self->_samplingDirectory;
  self->_samplingDirectory = 0;

  v17 = 0x1E698D130;
  if (!self->_isSamplingForDictation)
  {
    v17 = 0x1E698D0E0;
  }

  createSamplingDirectory = [*v17 createSamplingDirectory];
  v19 = self->_samplingDirectory;
  self->_samplingDirectory = createSamplingDirectory;

  if (self->_rpiEnabled)
  {
    v20 = +[CSFPreferences sharedPreferences];
    v21 = [v20 getRPIAssistantAudioSamplingDateSubDirectory:self->_loggingDate];
    rpiSamplingDirectory = self->_rpiSamplingDirectory;
    self->_rpiSamplingDirectory = v21;

    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_rpiSamplingDirectory;
      *buf = 136315394;
      v80 = "[CSUncompressedAudioLogging _setupFilePath:]";
      v81 = 2112;
      v82 = v24;
      _os_log_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_DEFAULT, "%s Setting rpi sampling directory as: %@", buf, 0x16u);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v26 = self->_rpiSamplingDirectory;
    v76 = 0;
    v27 = [defaultManager createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:&v76];
    v28 = v76;

    if ((v27 & 1) == 0)
    {
      v67 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v80 = "[CSUncompressedAudioLogging _setupFilePath:]";
        v81 = 2112;
        v82 = v28;
        _os_log_error_impl(&dword_1DDA4B000, v67, OS_LOG_TYPE_ERROR, "%s error when creating directory: %@", buf, 0x16u);
      }

      goto LABEL_30;
    }
  }

  v29 = self->_samplingDirectory;
  if (!v29)
  {
    v64 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "[CSUncompressedAudioLogging _setupFilePath:]";
      v81 = 2112;
      v82 = 0;
      _os_log_error_impl(&dword_1DDA4B000, v64, OS_LOG_TYPE_ERROR, "%s Failed to get SamplingDirectory : %@", buf, 0x16u);
      if (!path)
      {
        goto LABEL_31;
      }
    }

    else if (!path)
    {
LABEL_31:
      result = 0;
      goto LABEL_32;
    }

    v65 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2351 userInfo:0];
    v66 = v65;
    result = 0;
    *path = v65;
    goto LABEL_32;
  }

  v30 = [(NSString *)v29 stringByAppendingPathComponent:self->_samplingDate];
  v31 = self->_samplingDirectory;
  self->_samplingDirectory = v30;

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = [defaultManager2 fileExistsAtPath:self->_samplingDirectory];

  if ((v33 & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v35 = self->_samplingDirectory;
    v75 = 0;
    v36 = [defaultManager3 createDirectoryAtPath:v35 withIntermediateDirectories:1 attributes:0 error:&v75];
    v28 = v75;

    if (v36)
    {

      goto LABEL_12;
    }

    v68 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v72 = v68;
      samplingString = [(CSUncompressedAudioLogging *)self samplingString];
      localizedDescription = [(NSString *)v28 localizedDescription];
      *buf = 136315650;
      v80 = "[CSUncompressedAudioLogging _setupFilePath:]";
      v81 = 2112;
      v82 = samplingString;
      v83 = 2112;
      v84 = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v72, OS_LOG_TYPE_ERROR, "%s %@: Failed to create directory : %@", buf, 0x20u);

      if (path)
      {
        goto LABEL_26;
      }
    }

    else if (path)
    {
LABEL_26:
      if (v28)
      {
        v77 = *MEMORY[0x1E696AA08];
        v78 = v28;
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      }

      else
      {
        v69 = 0;
      }

      *path = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:2352 userInfo:v69];
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_12:
  v37 = NSTemporaryDirectory();
  tmpDirectory = self->_tmpDirectory;
  self->_tmpDirectory = v37;

  v39 = 24;
  if (self->_isSamplingForDictation)
  {
    v39 = 40;
  }

  v40 = *(&self->super.isa + v39);
  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", v40, self->_samplingDate, self->_samplingTimestamp];
  v42 = self->_tmpDirectory;
  v43 = [v41 stringByAppendingPathExtension:@"pcm"];
  v44 = [(NSString *)v42 stringByAppendingPathComponent:v43];
  tmpAudioFilePath = self->_tmpAudioFilePath;
  self->_tmpAudioFilePath = v44;

  v46 = self->_samplingDirectory;
  v47 = [v41 stringByAppendingPathExtension:@"pcm"];
  v48 = [(NSString *)v46 stringByAppendingPathComponent:v47];
  audioFilePath = self->_audioFilePath;
  self->_audioFilePath = v48;

  v50 = self->_samplingDirectory;
  v51 = [v41 stringByAppendingPathExtension:@"plist"];
  v52 = [(NSString *)v50 stringByAppendingPathComponent:v51];
  plistFilePath = self->_plistFilePath;
  self->_plistFilePath = v52;

  if (self->_rpiEnabled)
  {
    v54 = self->_rpiSamplingDirectory;
    v55 = [v41 stringByAppendingPathExtension:@"pcm"];
    v56 = [(NSString *)v54 stringByAppendingPathComponent:v55];
    rpiAudioFilePath = self->_rpiAudioFilePath;
    self->_rpiAudioFilePath = v56;

    v58 = self->_rpiSamplingDirectory;
    v59 = [v41 stringByAppendingPathExtension:@"plist"];
    v60 = [(NSString *)v58 stringByAppendingPathComponent:v59];
    rpiPlistFilePath = self->_rpiPlistFilePath;
    self->_rpiPlistFilePath = v60;
  }

  v62 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEBUG))
  {
    v71 = self->_audioFilePath;
    *buf = 136315394;
    v80 = "[CSUncompressedAudioLogging _setupFilePath:]";
    v81 = 2112;
    v82 = v71;
    _os_log_debug_impl(&dword_1DDA4B000, v62, OS_LOG_TYPE_DEBUG, "%s CSUncompressedAudioLogging file path : %@", buf, 0x16u);
  }

  result = 1;
LABEL_32:
  v70 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_prepareFileForLogging:(id *)logging
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(CSUncompressedAudioLogging *)self _createFileDescriptor:self->_tmpAudioFilePath protectionClass:+[CSUncompressedAudioLogging loggingFileProtectionClass]];
  if (v5 <= 0)
  {
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      samplingString = [(CSUncompressedAudioLogging *)self samplingString];
      tmpAudioFilePath = self->_tmpAudioFilePath;
      v16 = 136315650;
      v17 = "[CSUncompressedAudioLogging _prepareFileForLogging:]";
      v18 = 2114;
      v19 = samplingString;
      v20 = 2114;
      v21 = tmpAudioFilePath;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s %{public}@: Unable to create FD on audioFilePath : (%{public}@)", &v16, 0x20u);

      if (!logging)
      {
        goto LABEL_10;
      }
    }

    else if (!logging)
    {
      goto LABEL_10;
    }

    v9 = 2355;
    goto LABEL_8;
  }

  v6 = 1;
  v7 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v5 closeOnDealloc:1];
  audioFileHandle = self->_audioFileHandle;
  self->_audioFileHandle = v7;

  if (!self->_audioFileHandle)
  {
    if (logging)
    {
      v9 = 2356;
LABEL_8:
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:v9 userInfo:0];
      *logging = v6 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v6 = 0;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)prepareLogging:(id)logging
{
  loggingCopy = logging;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__CSUncompressedAudioLogging_prepareLogging___block_invoke;
  v11[3] = &unk_1E865CAB8;
  v12 = loggingCopy;
  v5 = loggingCopy;
  v6 = MEMORY[0x1E12BA300](v11);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CSUncompressedAudioLogging_prepareLogging___block_invoke_2;
  block[3] = &unk_1E865CB90;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __45__CSUncompressedAudioLogging_prepareLogging___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __45__CSUncompressedAudioLogging_prepareLogging___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698D1B8] sharedPreferences];
  v3 = [v2 siriDataSharingOptInStatus];

  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v21 = 0;
    v5 = [v4 _setupFilePath:&v21];
    v6 = v21;
    if (v5)
    {
      v7 = *(a1 + 32);
      v20 = 0;
      v8 = [v7 _prepareFileForLogging:&v20];
      v9 = v20;
      if (v8)
      {
        v10 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = v10;
          v13 = [v11 samplingString];
          *buf = 136315394;
          v23 = "[CSUncompressedAudioLogging prepareLogging:]_block_invoke_2";
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s %@: uncompressed audio logging will be enabled for this request", buf, 0x16u);
        }

        v14 = *(*(a1 + 40) + 16);
      }

      else
      {
        v14 = *(*(a1 + 40) + 16);
      }

      v14();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 samplingString];
      *buf = 136315394;
      v23 = "[CSUncompressedAudioLogging prepareLogging:]_block_invoke";
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s %@: uncompressed audio logging will be disabled for this request", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (CSUncompressedAudioLogging)initWithRequestId:(id)id asrId:(id)asrId dictationInteractionId:(id)interactionId languageCode:(id)code task:(id)task isSamplingForDictation:(BOOL)dictation rpiEnabled:(BOOL)enabled
{
  idCopy = id;
  obj = asrId;
  asrIdCopy = asrId;
  interactionIdCopy = interactionId;
  codeCopy = code;
  taskCopy = task;
  v37.receiver = self;
  v37.super_class = CSUncompressedAudioLogging;
  v20 = [(CSUncompressedAudioLogging *)&v37 init];
  if (v20)
  {
    v21 = dispatch_queue_create("CSUncompressedAudioLogging", 0);
    queue = v20->_queue;
    v20->_queue = v21;

    taskCopy2 = task;
    dictationCopy = dictation;
    v24 = asrIdCopy;
    v25 = v20->_queue;
    dispatch_get_global_queue(17, 0);
    v34 = codeCopy;
    codeCopy2 = code;
    v27 = interactionIdCopy;
    v29 = v28 = idCopy;
    v30 = v25;
    asrIdCopy = v24;
    dispatch_set_target_queue(v30, v29);

    idCopy = v28;
    interactionIdCopy = v27;
    objc_storeStrong(&v20->_asrId, obj);
    objc_storeStrong(&v20->_requestId, id);
    objc_storeStrong(&v20->_dictationInteractionId, interactionId);
    v31 = codeCopy2;
    codeCopy = v34;
    objc_storeStrong(&v20->_languageCode, v31);
    objc_storeStrong(&v20->_task, taskCopy2);
    v20->_isSamplingForDictation = dictationCopy;
    v20->_rpiEnabled = enabled & ~dictationCopy;
    v20->_shouldWriteRpiData = 0;
  }

  return v20;
}

+ (int)loggingFileProtectionClass
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman)
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

@end