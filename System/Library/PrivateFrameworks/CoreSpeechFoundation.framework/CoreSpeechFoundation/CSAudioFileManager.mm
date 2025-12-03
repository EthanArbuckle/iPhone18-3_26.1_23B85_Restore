@interface CSAudioFileManager
+ (id)_createAudioFileWriterForAdBlockerWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withAccessoryID:(id)d;
+ (id)_createAudioFileWriterForOSDWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)_createAudioFileWriterForOpportuneSpeakListenerWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)_createAudioFileWriterForPHSTrainingWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)_createAudioFileWriterWithLoggingDir:(id)dir withLoggingUUID:(id)d inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)_getDateLabel;
+ (id)_sharedAudioLoggingQueue;
+ (id)audioFileWriterForAttentiveSiri;
+ (id)createAudioFileWriterForAdBlockerWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withAccessoryID:(id)d;
+ (id)createAudioFileWriterForOSDWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)createAudioFileWriterForOpportuneSpeakListenerWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)createAudioFileWriterForPHSTrainingWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
+ (id)createAudioFileWriterForRemoteVADWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withLoggingUUID:(id)d;
+ (id)createAudioFileWriterWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withLoggingUUID:(id)d;
+ (id)createSelectiveChannelAudioFileWriterWithChannelBitset:(unint64_t)bitset;
+ (void)_readDataFromFileHandle:(id)handle toFileHandle:(id)fileHandle;
+ (void)cleanupOrphanedGradingFiles;
+ (void)generateDeviceAudioLogging:(id)logging speechId:(id)id;
+ (void)pruneLogFiles;
+ (void)pruneNumberOfGradingFilesTo:(unint64_t)to;
+ (void)pruneNumberOfLogFilesTo:(unint64_t)to;
+ (void)removeLogFilesOlderThanNDays:(float)days;
+ (void)removeOpportunisticAudioLoggingOlderThanNDays:(float)days;
+ (void)removeRemoteP2PLogFilesOlderThanNDays:(float)days;
@end

@implementation CSAudioFileManager

+ (id)audioFileWriterForAttentiveSiri
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  isAttentiveSiriAudioLoggingEnabled = [v2 isAttentiveSiriAudioLoggingEnabled];

  if (!isAttentiveSiriAudioLoggingEnabled)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v4 = +[CSFPreferences sharedPreferences];
  assistantLogDirectory = [v4 assistantLogDirectory];

  v6 = [assistantLogDirectory stringByAppendingPathComponent:@"attsiri"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0;
  if ([defaultManager fileExistsAtPath:v6 isDirectory:&v29])
  {
    if (v29)
    {
LABEL_18:
      v19 = MEMORY[0x1E696AEC0];
      v20 = +[CSAudioFileManager _getDateLabel];
      v10 = [v19 stringWithFormat:@"%@.wav", v20];

      v21 = [v6 stringByAppendingPathComponent:v10];
      v22 = [CSPlainAudioFileWriter alloc];
      v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
      +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
      +[CSFAudioStreamBasicDescriptionFactory utteranceFileASBD];
      v15 = [(CSPlainAudioFileWriter *)v22 initWithURL:v23 inputFormat:buf outputFormat:v26];

      goto LABEL_19;
    }

    v8 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "+[CSAudioFileManager audioFileWriterForAttentiveSiri]";
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Removing non-dir at AttentiveSiri AudioLog dir: %@", buf, 0x16u);
    }

    v28 = 0;
    v9 = [defaultManager removeItemAtPath:v6 error:&v28];
    v10 = v28;
    if ((v9 & 1) == 0)
    {
      v11 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = "+[CSAudioFileManager audioFileWriterForAttentiveSiri]";
        v32 = 2112;
        v33 = v6;
        v34 = 2112;
        v35 = v10;
        v12 = "%s Error removing %@: err: %@";
        v13 = v11;
        v14 = 32;
LABEL_14:
        _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  v27 = v10;
  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v27];
  v10 = v27;

  v17 = CSLogCategoryAudio;
  v18 = os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v18)
    {
      *buf = 136315394;
      v31 = "+[CSAudioFileManager audioFileWriterForAttentiveSiri]";
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_1DDA4B000, v17, OS_LOG_TYPE_DEFAULT, "%s Created AudioLogging dir for AttentiveSiri at: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (v18)
  {
    *buf = 136315394;
    v31 = "+[CSAudioFileManager audioFileWriterForAttentiveSiri]";
    v32 = 2112;
    v33 = v10;
    v12 = "%s Failed to create AudioLogging directory for AttentiveSiri: %@";
    v13 = v17;
    v14 = 22;
    goto LABEL_14;
  }

LABEL_15:
  v15 = 0;
LABEL_19:

LABEL_20:
  v24 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)cleanupOrphanedGradingFiles
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v3 assistantAudioFileLogDirectory];
  v28 = [v2 URLWithString:assistantAudioFileLogDirectory];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__13638;
  v39 = __Block_byref_object_dispose__13639;
  v40 = 0;
  v6 = MEMORY[0x1E695DFF8];
  path = [v28 path];
  v8 = [v6 fileURLWithPath:path];
  v48[0] = *MEMORY[0x1E695DC30];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v10 = (v36 + 5);
  obj = v36[5];
  v27 = [defaultManager contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:0 error:&obj];
  objc_storeStrong(v10, obj);

  v11 = v36[5];
  if (v11)
  {
    domain = [v11 domain];
    if ([domain isEqual:*MEMORY[0x1E696A250]])
    {
      v13 = [v36[5] code] == 260;

      if (v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v24 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v26 = v36[5];
      *buf = 136315650;
      v43 = "+[CSAudioFileManager cleanupOrphanedGradingFiles]";
      v44 = 2114;
      v45 = v28;
      v46 = 2114;
      v47 = v26;
      _os_log_error_impl(&dword_1DDA4B000, v24, OS_LOG_TYPE_ERROR, "%s ERR: reading contents of gradingDir: %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v27;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          absoluteString = [v19 absoluteString];
          lastPathComponent = [absoluteString lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          v23 = [dictionary objectForKeyedSubscript:stringByDeletingPathExtension];
          LODWORD(absoluteString) = v23 == 0;

          if (absoluteString)
          {
            [dictionary setObject:v19 forKeyedSubscript:stringByDeletingPathExtension];
          }

          else
          {
            [dictionary removeObjectForKey:stringByDeletingPathExtension];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v16);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__CSAudioFileManager_cleanupOrphanedGradingFiles__block_invoke;
    v29[3] = &unk_1E865C748;
    v29[4] = &v35;
    [dictionary enumerateKeysAndObjectsUsingBlock:v29];
  }

LABEL_19:

  _Block_object_dispose(&v35, 8);
  v25 = *MEMORY[0x1E69E9840];
}

void __49__CSAudioFileManager_cleanupOrphanedGradingFiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "+[CSAudioFileManager cleanupOrphanedGradingFiles]_block_invoke";
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting orphaned grading file %{public}@", buf, 0x16u);
  }

  v17 = 0;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 fileExistsAtPath:v5 isDirectory:&v17];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = *(*(a1 + 32) + 8);
    obj = *(v11 + 40);
    v12 = [v10 removeItemAtPath:v5 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if ((v12 & 1) == 0)
    {
      v13 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(*(a1 + 32) + 8) + 40);
        *buf = 136315650;
        v19 = "+[CSAudioFileManager cleanupOrphanedGradingFiles]_block_invoke";
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)pruneNumberOfGradingFilesTo:(unint64_t)to
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v5 assistantAudioFileLogDirectory];
  v7 = [v4 URLWithString:assistantAudioFileLogDirectory];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)?.wav$", @"CS-", @"-synced"];
  [CSUtils clearLogFilesInDirectory:v7 matchingPattern:v8 exceedNumber:to];

  +[CSAudioFileManager cleanupOrphanedGradingFiles];
}

+ (void)pruneNumberOfLogFilesTo:(unint64_t)to
{
  v42 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{@"PCM-", @"OPUS_", @"OPP-", @"Ads-", @"PHS-", @"OSD-", 0}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = v39 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * v7);
        v9 = MEMORY[0x1E695DFF8];
        v10 = +[CSFPreferences sharedPreferences];
        assistantAudioFileLogDirectory = [v10 assistantAudioFileLogDirectory];
        v12 = [v9 URLWithString:assistantAudioFileLogDirectory];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@*", v8];
        [CSUtils clearLogFilesInDirectory:v12 matchingPattern:v13 exceedNumber:to];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"-triggered", @"-almost", @"-rejected", @"-activation", @"-selfTrigger", 0}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v14;
  v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v30)
  {
    v29 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = MEMORY[0x1E695DFF8];
        v18 = +[CSFPreferences sharedPreferences];
        voiceTriggerAudioLogDirectory = [v18 voiceTriggerAudioLogDirectory];
        v20 = [v17 URLWithString:voiceTriggerAudioLogDirectory];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)?.wav$", v16, @"-synced"];
        [CSUtils clearLogFilesInDirectory:v20 matchingPattern:v21 exceedNumber:to];

        v22 = MEMORY[0x1E695DFF8];
        v23 = +[CSFPreferences sharedPreferences];
        voiceTriggerAudioLogDirectory2 = [v23 voiceTriggerAudioLogDirectory];
        v25 = [v22 URLWithString:voiceTriggerAudioLogDirectory2];
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)?.json$", v16, @"-synced"];
        [CSUtils clearLogFilesInDirectory:v25 matchingPattern:v26 exceedNumber:to];

        ++v15;
      }

      while (v30 != v15);
      v30 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v30);
  }

  v27 = *MEMORY[0x1E69E9840];
}

+ (void)pruneLogFiles
{
  v2 = +[CSFPreferences sharedPreferences];
  +[CSAudioFileManager pruneNumberOfGradingFilesTo:](CSAudioFileManager, "pruneNumberOfGradingFilesTo:", [v2 maxNumGradingFiles]);

  v3 = +[CSFPreferences sharedPreferences];
  +[CSAudioFileManager pruneNumberOfLogFilesTo:](CSAudioFileManager, "pruneNumberOfLogFilesTo:", [v3 maxNumLoggingFiles]);
}

+ (void)removeRemoteP2PLogFilesOlderThanNDays:(float)days
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = +[CSFPreferences sharedPreferences];
  remoteP2pLogDirectory = [v5 remoteP2pLogDirectory];
  v7 = [v4 URLWithString:remoteP2pLogDirectory];
  *&v8 = days;
  [CSUtils removeLogFilesInDirectory:v7 matchingPattern:@".*" beforeDays:v8];

  v9 = MEMORY[0x1E695DFF8];
  v13 = +[CSFPreferences sharedPreferences];
  remoteGradingDataDirectory = [v13 remoteGradingDataDirectory];
  v11 = [v9 URLWithString:remoteGradingDataDirectory];
  *&v12 = days;
  [CSUtils removeLogFilesInDirectory:v11 matchingPattern:@".*" beforeDays:v12];
}

+ (void)removeLogFilesOlderThanNDays:(float)days
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v5 assistantAudioFileLogDirectory];
  v7 = [v4 URLWithString:assistantAudioFileLogDirectory];
  *&v8 = days;
  [CSUtils removeLogFilesInDirectory:v7 matchingPattern:@".*" beforeDays:v8];

  v9 = MEMORY[0x1E695DFF8];
  v13 = +[CSFPreferences sharedPreferences];
  voiceTriggerAudioLogDirectory = [v13 voiceTriggerAudioLogDirectory];
  v11 = [v9 URLWithString:voiceTriggerAudioLogDirectory];
  *&v12 = days;
  [CSUtils removeLogFilesInDirectory:v11 matchingPattern:@".*" beforeDays:v12];
}

+ (void)removeOpportunisticAudioLoggingOlderThanNDays:(float)days
{
  v4 = MEMORY[0x1E695DFF8];
  v9 = +[CSFPreferences sharedPreferences];
  assistantAudioFileLogDirectory = [v9 assistantAudioFileLogDirectory];
  v6 = [v4 URLWithString:assistantAudioFileLogDirectory];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@*", @"OPP-"];
  *&v8 = days;
  [CSUtils removeLogFilesInDirectory:v6 matchingPattern:v7 beforeDays:v8];
}

+ (id)_getDateLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
  v5 = [v3 stringFromDate:v2];

  return v5;
}

+ (id)_createAudioFileWriterForOSDWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  dirCopy = dir;
  _getDateLabel = [self _getDateLabel];
  v11 = [v8 stringWithFormat:@"%@/%@%@.wav", dirCopy, @"OSD-", _getDateLabel];

  v12 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSAudioFileManager _createAudioFileWriterForOSDWithLoggingDir:inputFormat:outputFormat:]";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
  }

  v13 = [CSPlainAudioFileWriter alloc];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  v15 = *&format->mBytesPerPacket;
  *buf = *&format->mSampleRate;
  *&buf[16] = v15;
  v23 = *&format->mBitsPerChannel;
  v16 = *&outputFormat->mBytesPerPacket;
  v20[0] = *&outputFormat->mSampleRate;
  v20[1] = v16;
  v21 = *&outputFormat->mBitsPerChannel;
  v17 = [(CSPlainAudioFileWriter *)v13 initWithURL:v14 inputFormat:buf outputFormat:v20];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_createAudioFileWriterForPHSTrainingWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  dirCopy = dir;
  _getDateLabel = [self _getDateLabel];
  v11 = [v8 stringWithFormat:@"%@/%@%@.wav", dirCopy, @"PHS-", _getDateLabel];

  v12 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSAudioFileManager _createAudioFileWriterForPHSTrainingWithLoggingDir:inputFormat:outputFormat:]";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
  }

  v13 = [CSPlainAudioFileWriter alloc];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  v15 = *&format->mBytesPerPacket;
  *buf = *&format->mSampleRate;
  *&buf[16] = v15;
  v23 = *&format->mBitsPerChannel;
  v16 = *&outputFormat->mBytesPerPacket;
  v20[0] = *&outputFormat->mSampleRate;
  v20[1] = v16;
  v21 = *&outputFormat->mBitsPerChannel;
  v17 = [(CSPlainAudioFileWriter *)v13 initWithURL:v14 inputFormat:buf outputFormat:v20];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_createAudioFileWriterWithLoggingDir:(id)dir withLoggingUUID:(id)d inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@%@.wav", dir, @"CS-", d];
  v9 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSAudioFileManager _createAudioFileWriterWithLoggingDir:withLoggingUUID:inputFormat:outputFormat:]";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
  }

  +[CSAudioFileManager pruneLogFiles];
  v10 = [CSPlainAudioFileWriter alloc];
  v11 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  v12 = *&format->mBytesPerPacket;
  *buf = *&format->mSampleRate;
  *&buf[16] = v12;
  v20 = *&format->mBitsPerChannel;
  v13 = *&outputFormat->mBytesPerPacket;
  v17[0] = *&outputFormat->mSampleRate;
  v17[1] = v13;
  v18 = *&outputFormat->mBitsPerChannel;
  v14 = [(CSPlainAudioFileWriter *)v10 initWithURL:v11 inputFormat:buf outputFormat:v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_createAudioFileWriterForOpportuneSpeakListenerWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEC0];
  dirCopy = dir;
  _getDateLabel = [self _getDateLabel];
  v11 = [v8 stringWithFormat:@"%@/%@%@.wav", dirCopy, @"OPP-", _getDateLabel];

  v12 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSAudioFileManager _createAudioFileWriterForOpportuneSpeakListenerWithLoggingDir:inputFormat:outputFormat:]";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
  }

  +[CSAudioFileManager pruneLogFiles];
  v13 = [CSPlainAudioFileWriter alloc];
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  v15 = *&format->mBytesPerPacket;
  *buf = *&format->mSampleRate;
  *&buf[16] = v15;
  v23 = *&format->mBitsPerChannel;
  v16 = *&outputFormat->mBytesPerPacket;
  v20[0] = *&outputFormat->mSampleRate;
  v20[1] = v16;
  v21 = *&outputFormat->mBitsPerChannel;
  v17 = [(CSPlainAudioFileWriter *)v13 initWithURL:v14 inputFormat:buf outputFormat:v20];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)_createAudioFileWriterForAdBlockerWithLoggingDir:(id)dir inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withAccessoryID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  dCopy = d;
  v12 = MEMORY[0x1E696AEC0];
  _getDateLabel = [self _getDateLabel];
  v14 = _getDateLabel;
  if (dCopy)
  {
    [v12 stringWithFormat:@"%@/%@%@%@.wav", dirCopy, @"Ads-", _getDateLabel, dCopy];
  }

  else
  {
    [v12 stringWithFormat:@"%@/%@%@.wav", dirCopy, @"Ads-", _getDateLabel, v24];
  }
  v15 = ;

  v16 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "+[CSAudioFileManager _createAudioFileWriterForAdBlockerWithLoggingDir:inputFormat:outputFormat:withAccessoryID:]";
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Logging audio file into : %{public}@", buf, 0x16u);
  }

  +[CSAudioFileManager pruneLogFiles];
  v17 = [CSPlainAudioFileWriter alloc];
  v18 = [MEMORY[0x1E695DFF8] URLWithString:v15];
  v19 = *&format->mBytesPerPacket;
  *buf = *&format->mSampleRate;
  *&buf[16] = v19;
  v28 = *&format->mBitsPerChannel;
  v20 = *&outputFormat->mBytesPerPacket;
  v25[0] = *&outputFormat->mSampleRate;
  v25[1] = v20;
  v26 = *&outputFormat->mBitsPerChannel;
  v21 = [(CSPlainAudioFileWriter *)v17 initWithURL:v18 inputFormat:buf outputFormat:v25];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)createAudioFileWriterForOSDWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v7 = +[CSFPreferences sharedPreferences];
  isEndpointEnhancedLoggingEnabled = [v7 isEndpointEnhancedLoggingEnabled];

  if (isEndpointEnhancedLoggingEnabled)
  {
    v9 = +[CSFPreferences sharedPreferences];
    assistantAudioFileLogDirectory = [v9 assistantAudioFileLogDirectory];
    v11 = *&format->mBytesPerPacket;
    v17[0] = *&format->mSampleRate;
    v17[1] = v11;
    v18 = *&format->mBitsPerChannel;
    v12 = *&outputFormat->mBytesPerPacket;
    v15[0] = *&outputFormat->mSampleRate;
    v15[1] = v12;
    v16 = *&outputFormat->mBitsPerChannel;
    v13 = [self _createAudioFileWriterForOSDWithLoggingDir:assistantAudioFileLogDirectory inputFormat:v17 outputFormat:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createAudioFileWriterForAdBlockerWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withAccessoryID:(id)d
{
  dCopy = d;
  v9 = +[CSFPreferences sharedPreferences];
  isAdBlockerAudioLoggingEnabled = [v9 isAdBlockerAudioLoggingEnabled];

  if (isAdBlockerAudioLoggingEnabled)
  {
    v11 = +[CSFPreferences sharedPreferences];
    voiceTriggerAudioLogDirectory = [v11 voiceTriggerAudioLogDirectory];
    v13 = *&format->mBytesPerPacket;
    v19[0] = *&format->mSampleRate;
    v19[1] = v13;
    v20 = *&format->mBitsPerChannel;
    v14 = *&outputFormat->mBytesPerPacket;
    v17[0] = *&outputFormat->mSampleRate;
    v17[1] = v14;
    v18 = *&outputFormat->mBitsPerChannel;
    v15 = [self _createAudioFileWriterForAdBlockerWithLoggingDir:voiceTriggerAudioLogDirectory inputFormat:v19 outputFormat:v17 withAccessoryID:dCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createSelectiveChannelAudioFileWriterWithChannelBitset:(unint64_t)bitset
{
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    v5 = +[CSFPreferences sharedPreferences];
    if ([v5 fileLoggingIsEnabled])
    {

LABEL_7:
      v8 = MEMORY[0x1E696AEC0];
      _getDateLabel = [self _getDateLabel];
      v10 = [v8 stringWithFormat:@"%@%@.wav", @"CS-", _getDateLabel];

      v11 = MEMORY[0x1E695DFF8];
      v12 = NSTemporaryDirectory();
      v13 = [v12 stringByAppendingPathComponent:v10];
      v14 = [v11 fileURLWithPath:v13];

      v15 = [CSUtils getNumElementInBitset:bitset];
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      +[CSConfig inputRecordingSampleRate];
      [CSFAudioStreamBasicDescriptionFactory lpcmNonInterleavedASBDWithSampleRate:v15 numberOfChannels:?];
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      +[CSConfig inputRecordingSampleRate];
      [CSFAudioStreamBasicDescriptionFactory lpcmInterleavedASBDWithSampleRate:v15 numberOfChannels:?];
      v16 = [CSSelectiveChannelAudioFileWriter alloc];
      v21[0] = v26;
      v21[1] = v27;
      v22 = v28;
      v19[0] = v23;
      v19[1] = v24;
      v20 = v25;
      v17 = [(CSSelectiveChannelAudioFileWriter *)v16 initWithURL:v14 inputFormat:v21 outputFormat:v19 channelBitset:bitset];

      goto LABEL_9;
    }

    mEMORY[0x1E698D1B8] = [MEMORY[0x1E698D1B8] sharedPreferences];
    fileLoggingIsEnabled = [mEMORY[0x1E698D1B8] fileLoggingIsEnabled];

    if (fileLoggingIsEnabled)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
LABEL_9:

  return v17;
}

+ (id)createAudioFileWriterWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withLoggingUUID:(id)d
{
  dCopy = d;
  mEMORY[0x1E698D1B8] = [MEMORY[0x1E698D1B8] sharedPreferences];
  fileLoggingIsEnabled = [mEMORY[0x1E698D1B8] fileLoggingIsEnabled];

  if (fileLoggingIsEnabled)
  {
    +[CSAudioFileManager pruneLogFiles];
  }

  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    mEMORY[0x1E698D1B8]2 = [MEMORY[0x1E698D1B8] sharedPreferences];
    if ([mEMORY[0x1E698D1B8]2 fileLoggingIsEnabled])
    {

LABEL_9:
      v14 = +[CSFPreferences sharedPreferences];
      assistantAudioFileLogDirectory = [v14 assistantAudioFileLogDirectory];
      v16 = *&format->mBytesPerPacket;
      v22[0] = *&format->mSampleRate;
      v22[1] = v16;
      v23 = *&format->mBitsPerChannel;
      v17 = *&outputFormat->mBytesPerPacket;
      v20[0] = *&outputFormat->mSampleRate;
      v20[1] = v17;
      v21 = *&outputFormat->mBitsPerChannel;
      v18 = [self _createAudioFileWriterWithLoggingDir:assistantAudioFileLogDirectory withLoggingUUID:dCopy inputFormat:v22 outputFormat:v20];

      goto LABEL_11;
    }

    v12 = +[CSFPreferences sharedPreferences];
    fileLoggingIsEnabled2 = [v12 fileLoggingIsEnabled];

    if (fileLoggingIsEnabled2)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_11:

  return v18;
}

+ (id)createAudioFileWriterForRemoteVADWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat withLoggingUUID:(id)d
{
  dCopy = d;
  mEMORY[0x1E698D1B8] = [MEMORY[0x1E698D1B8] sharedPreferences];
  fileLoggingIsEnabled = [mEMORY[0x1E698D1B8] fileLoggingIsEnabled];

  if (fileLoggingIsEnabled)
  {
    v11 = +[CSFPreferences sharedPreferences];
    assistantAudioFileLogDirectory = [v11 assistantAudioFileLogDirectory];
    v13 = *&format->mBytesPerPacket;
    v19[0] = *&format->mSampleRate;
    v19[1] = v13;
    v20 = *&format->mBitsPerChannel;
    v14 = *&outputFormat->mBytesPerPacket;
    v17[0] = *&outputFormat->mSampleRate;
    v17[1] = v14;
    v18 = *&outputFormat->mBitsPerChannel;
    v15 = [self _createAudioFileWriterWithLoggingDir:assistantAudioFileLogDirectory withLoggingUUID:dCopy inputFormat:v19 outputFormat:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)createAudioFileWriterForPHSTrainingWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v7 = +[CSFPreferences sharedPreferences];
  personalizedSiriEnrollmentAudioLoggingEnabled = [v7 personalizedSiriEnrollmentAudioLoggingEnabled];

  if (personalizedSiriEnrollmentAudioLoggingEnabled)
  {
    v9 = +[CSFPreferences sharedPreferences];
    assistantAudioFileLogDirectory = [v9 assistantAudioFileLogDirectory];
    v11 = *&format->mBytesPerPacket;
    v17[0] = *&format->mSampleRate;
    v17[1] = v11;
    v18 = *&format->mBitsPerChannel;
    v12 = *&outputFormat->mBytesPerPacket;
    v15[0] = *&outputFormat->mSampleRate;
    v15[1] = v12;
    v16 = *&outputFormat->mBitsPerChannel;
    v13 = [self _createAudioFileWriterForPHSTrainingWithLoggingDir:assistantAudioFileLogDirectory inputFormat:v17 outputFormat:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createAudioFileWriterForOpportuneSpeakListenerWithInputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  mEMORY[0x1E698D1B8] = [MEMORY[0x1E698D1B8] sharedPreferences];
  opportuneSpeakingFileLoggingIsEnabled = [mEMORY[0x1E698D1B8] opportuneSpeakingFileLoggingIsEnabled];

  if (opportuneSpeakingFileLoggingIsEnabled)
  {
    v9 = +[CSFPreferences sharedPreferences];
    assistantAudioFileLogDirectory = [v9 assistantAudioFileLogDirectory];
    v11 = *&format->mBytesPerPacket;
    v17[0] = *&format->mSampleRate;
    v17[1] = v11;
    v18 = *&format->mBitsPerChannel;
    v12 = *&outputFormat->mBytesPerPacket;
    v15[0] = *&outputFormat->mSampleRate;
    v15[1] = v12;
    v16 = *&outputFormat->mBitsPerChannel;
    v13 = [self _createAudioFileWriterForOpportuneSpeakListenerWithLoggingDir:assistantAudioFileLogDirectory inputFormat:v17 outputFormat:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)_readDataFromFileHandle:(id)handle toFileHandle:(id)fileHandle
{
  v38 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  fileHandleCopy = fileHandle;
  v7 = (10 * +[CSConfig inputRecordingNumberOfChannels]);
  +[CSConfig inputRecordingSampleRate];
  v9 = ((v8 * v7) * +[CSConfig inputRecordingSampleByteDepth]);
  seekToEndOfFile = [handleCopy seekToEndOfFile];
  [handleCopy seekToFileOffset:16];
  v33 = 0;
  v11 = [handleCopy readDataOfLength:4];
  [v11 getBytes:&v33 length:8];

  v12 = [handleCopy readDataOfLength:v33];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [handleCopy readDataOfLength:4];
  v15 = [v13 initWithData:v14 encoding:4];

  if ([v15 isEqualToString:@"FLLR"])
  {
    *buf = 0;
    v16 = [handleCopy readDataOfLength:4];
    [v16 getBytes:buf length:2];

    v17 = [handleCopy readDataOfLength:*buf];
  }

  v18 = [handleCopy readDataOfLength:8];
  offsetInFile = [handleCopy offsetInFile];
  if (seekToEndOfFile - offsetInFile >= v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = seekToEndOfFile - offsetInFile;
  }

  v21 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    offsetInFile2 = [handleCopy offsetInFile];
    *buf = 136315650;
    v35 = "+[CSAudioFileManager _readDataFromFileHandle:toFileHandle:]";
    v36 = 1026;
    *v37 = v20;
    *&v37[4] = 2050;
    *&v37[6] = offsetInFile2;
    _os_log_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_DEFAULT, "%s Start copying %{public}u bytes of data to crashreporter with wav file header offset %{public}llu", buf, 0x1Cu);
  }

  v24 = [handleCopy readDataOfLength:v20];
  v25 = v24;
  if (v24 && [v24 length])
  {
    v32 = 0;
    [fileHandleCopy writeData:v25 error:&v32];
    v26 = v32;
    v27 = CSLogCategoryAudio;
    if (v26 && os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v30 = v27;
      localizedDescription = [v26 localizedDescription];
      *buf = 136315650;
      v35 = "+[CSAudioFileManager _readDataFromFileHandle:toFileHandle:]";
      v36 = 2114;
      *v37 = fileHandleCopy;
      *&v37[8] = 2114;
      *&v37[10] = localizedDescription;
      _os_log_error_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_ERROR, "%s Unable to writeData to %{public}@ : %{public}@", buf, 0x20u);

      v27 = CSLogCategoryAudio;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "+[CSAudioFileManager _readDataFromFileHandle:toFileHandle:]";
      _os_log_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_DEFAULT, "%s Finished copying data to crashreporter.", buf, 0xCu);
    }
  }

  else
  {
    v28 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "+[CSAudioFileManager _readDataFromFileHandle:toFileHandle:]";
      v36 = 2114;
      *v37 = handleCopy;
      _os_log_error_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_ERROR, "%s Failed to read data from %{public}@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)generateDeviceAudioLogging:(id)logging speechId:(id)id
{
  loggingCopy = logging;
  idCopy = id;
  _sharedAudioLoggingQueue = [self _sharedAudioLoggingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CSAudioFileManager_generateDeviceAudioLogging_speechId___block_invoke;
  v11[3] = &unk_1E865C970;
  v12 = loggingCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = loggingCopy;
  dispatch_async(_sharedAudioLoggingQueue, v11);
}

void __58__CSAudioFileManager_generateDeviceAudioLogging_speechId___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  if (CSIsHorseman_isHorseman == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = [v2 fileURL];

      if (v3)
      {
        v4 = CSLogCategoryAudio;
        if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          *buf = 136315394;
          v50 = "+[CSAudioFileManager generateDeviceAudioLogging:speechId:]_block_invoke";
          v51 = 2114;
          v52 = v5;
          _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Extracted SpeechIdentifier: %{public}@", buf, 0x16u);
        }

        v6 = [*(a1 + 32) fileURL];
        v7 = [v6 URLByDeletingPathExtension];
        v8 = [v7 absoluteString];
        v9 = [v8 lastPathComponent];

        v10 = MEMORY[0x1E696AEC0];
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) numberOfChannels];
        v13 = +[CSUtils deviceBuildVersion];
        v14 = +[CSUtils deviceHwRevision];
        v15 = [v10 stringWithFormat:@"%@.speechId%@.chNum%02d.build%@.hwRev%@.", v9, v11, v12, v13, v14];

        v16 = [v15 dataUsingEncoding:4];
        v17 = MEMORY[0x1E696AC00];
        v18 = [*(a1 + 32) fileURL];
        v19 = [v18 path];
        v20 = [v17 fileHandleForReadingAtPath:v19];

        v46[1] = MEMORY[0x1E69E9820];
        v46[2] = 3221225472;
        v46[3] = __58__CSAudioFileManager_generateDeviceAudioLogging_speechId___block_invoke_47;
        v46[4] = &unk_1E865C720;
        v21 = v16;
        v47 = v21;
        v22 = v20;
        v48 = v22;
        if (OSAWriteLogForSubmission())
        {
          v23 = *(a1 + 32);
          if (!v23)
          {
            goto LABEL_21;
          }

          v24 = [v23 fileURL];

          if (!v24)
          {
            goto LABEL_21;
          }

          v25 = [*(a1 + 32) fileURL];
          v26 = [v25 URLByDeletingLastPathComponent];
          v27 = [v26 path];

          v28 = +[CSFPreferences sharedPreferences];
          v29 = [v28 assistantAudioFileLogDirectory];
          v30 = [v27 containsString:v29];

          if ((v30 & 1) == 0)
          {
            v31 = CSLogCategoryAudio;
            if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(a1 + 32);
              v33 = v31;
              v34 = [v32 fileURL];
              *buf = 136315394;
              v50 = "+[CSAudioFileManager generateDeviceAudioLogging:speechId:]_block_invoke";
              v51 = 2114;
              v52 = v34;
              _os_log_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_DEFAULT, "%s Plan removing the temp file %{public}@", buf, 0x16u);
            }

            v35 = [MEMORY[0x1E696AC08] defaultManager];
            v36 = [*(a1 + 32) fileURL];
            v46[0] = 0;
            [v35 removeItemAtURL:v36 error:v46];
            v37 = v46[0];

            if (v37)
            {
              v38 = CSLogCategoryAudio;
              if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
              {
                v43 = *(a1 + 32);
                v44 = v38;
                v45 = [v43 fileURL];
                *buf = 136315650;
                v50 = "+[CSAudioFileManager generateDeviceAudioLogging:speechId:]_block_invoke";
                v51 = 2114;
                v52 = v45;
                v53 = 2114;
                v54 = v37;
                _os_log_error_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_ERROR, "%s Failed to remove temp file %{public}@ reason: %{public}@", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          v39 = CSLogCategoryAudio;
          if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
          {
LABEL_21:

            goto LABEL_22;
          }

          v40 = *(a1 + 32);
          v27 = v39;
          v41 = [v40 fileURL];
          *buf = 136315394;
          v50 = "+[CSAudioFileManager generateDeviceAudioLogging:speechId:]_block_invoke";
          v51 = 2114;
          v52 = v41;
          _os_log_error_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_ERROR, "%s OSA write log failed for file %{public}@", buf, 0x16u);
        }

        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v42 = *MEMORY[0x1E69E9840];
}

void __58__CSAudioFileManager_generateDeviceAudioLogging_speechId___block_invoke_47(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = 0;
  [v3 writeData:v4 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = [v5 localizedDescription];
      *buf = 136315650;
      v12 = "+[CSAudioFileManager generateDeviceAudioLogging:speechId:]_block_invoke";
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_ERROR, "%s Unable to writeData to %{public}@ : %{public}@", buf, 0x20u);
    }
  }

  [CSAudioFileManager _readDataFromFileHandle:*(a1 + 40) toFileHandle:v3];

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedAudioLoggingQueue
{
  if (_sharedAudioLoggingQueue_onceToken != -1)
  {
    dispatch_once(&_sharedAudioLoggingQueue_onceToken, &__block_literal_global_13737);
  }

  v3 = _sharedAudioLoggingQueue_sharedQueue;

  return v3;
}

void __46__CSAudioFileManager__sharedAudioLoggingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -2);
  v0 = dispatch_queue_create("com.apple.CoreSpeech.AudioLogging", v2);
  v1 = _sharedAudioLoggingQueue_sharedQueue;
  _sharedAudioLoggingQueue_sharedQueue = v0;
}

@end