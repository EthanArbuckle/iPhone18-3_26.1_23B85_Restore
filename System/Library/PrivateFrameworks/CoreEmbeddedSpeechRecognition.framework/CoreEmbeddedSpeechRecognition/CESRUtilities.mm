@interface CESRUtilities
+ (BOOL)aFEnableFeatureAndCheckPreferenceValueWithKey:(__CFString *)key;
+ (BOOL)hasRecognizedAnythingInAFSpeechPackage:(id)package;
+ (BOOL)isASRSupported;
+ (BOOL)isAssistantEnabled;
+ (BOOL)isAutomaticCompilationEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isEARError:(id)error;
+ (BOOL)isFilePathValid:(id)valid;
+ (BOOL)isInsufficientDiskSpaceError:(id)error;
+ (BOOL)isSamplingSupportedForTask:(id)task;
+ (BOOL)isSiriUODSupported;
+ (BOOL)isTaskDictationSpecific:(id)specific;
+ (double)getHostClockFrequency;
+ (float)hostTimeToSeconds:(unint64_t)seconds;
+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResult:(id)result;
+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:(id)package;
+ (id)_alignTokenToFirstSeenPartialResult:(id)result tokenIndex:(unint64_t)index firstSeenPartialResultTokens:(id)tokens firstSeenPartialResultIndex:(unint64_t)resultIndex;
+ (id)_firstSeenPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens;
+ (id)afRecognitionForEARSausage:(id)sausage processedAudioDuration:(double)duration;
+ (id)afSpeechPackageForEARPackage:(id)package processedAudioDuration:(double)duration speechProfileUsed:(BOOL)used recognizerModelInfo:(id)info isVoiceCommandCandidatePackage:(BOOL)candidatePackage;
+ (id)afTokensForEARTokens:(id)tokens removeSpaceBefore:(BOOL)before;
+ (id)afVoiceCommandGrammarParseResultForEARTokenString:(id)string withEARVoiceCommandInterpretations:(id)interpretations;
+ (id)alignedPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens;
+ (id)audioData:(id)data withBytesFromEnd:(unint64_t)end;
+ (id)currentSiriLanguageCode;
+ (id)earTokensForAFTokens:(id)tokens appendedAutoPunctuation:(BOOL)punctuation;
+ (id)earTokensToString:(id)string;
+ (id)getNormString:(id)string;
+ (id)installedAssistantLocale;
+ (id)installedDictationLocaleIdentifiers;
+ (id)installedDictationLocales;
+ (id)languageCodeForLocale:(id)locale;
+ (id)mapContextOptionToString:(unint64_t)string;
+ (id)recognizerSourceForTask:(id)task;
+ (id)speechProfileDateLastModifiedForLanguage:(id)language;
+ (id)speechProfilePathsWithLanguage:(id)language;
+ (id)speechProfileRootDirectories;
+ (id)transcriptFromTokens:(id)tokens;
+ (int64_t)_freeSpaceInBytesForPath:(id)path;
+ (int64_t)calculateDiffInDaysFromTimestamp:(id)timestamp;
+ (unint64_t)secondsToHostTime:(float)time;
+ (void)_cacheDeletePurgeSpaceWithInfo:(id)info completion:(id)completion;
+ (void)generateABCSnapshotForType:(id)type subType:(id)subType context:(id)context;
+ (void)loadSpeechProfiles:(id)profiles language:(id)language;
+ (void)logToPowerLogForEventCategory:(id)category eventDictionary:(id)dictionary;
+ (void)purgeSpaceForModelCompilationAsNeeded:(unint64_t)needed completion:(id)completion;
@end

@implementation CESRUtilities

+ (id)transcriptFromTokens:(id)tokens
{
  v20 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  if ([tokensCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = tokensCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      removeSpaceAfter = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (((removeSpaceAfter | [v11 removeSpaceBefore]) & 1) == 0)
          {
            [v4 appendString:@" "];
          }

          text = [v11 text];
          if (text)
          {
            [v4 appendString:text];
          }

          removeSpaceAfter = [v11 removeSpaceAfter];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)isInsufficientDiskSpaceError:(id)error
{
  errorCopy = error;
  if ([CESRUtilities isEARError:errorCopy])
  {
    v4 = [errorCopy code] == 201;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isEARError:(id)error
{
  if (!error)
  {
    return 0;
  }

  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x277D071C8]];

  return v4;
}

+ (void)_cacheDeletePurgeSpaceWithInfo:(id)info completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  completionCopy = completion;
  if (!infoCopy || ([infoCopy objectForKey:@"CACHE_DELETE_VOLUME"], (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, objc_msgSend(infoCopy, "objectForKey:", @"CACHE_DELETE_AMOUNT"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v16 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]";
      v21 = 2112;
      v22 = infoCopy;
      _os_log_error_impl(&dword_225EEB000, v16, OS_LOG_TYPE_ERROR, "%s The volume and/or amount to purge was not specified: %@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_10;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

  v10 = [infoCopy objectForKey:@"CACHE_DELETE_VOLUME"];
  v11 = [infoCopy objectForKey:@"CACHE_DELETE_AMOUNT"];
  longLongValue = [v11 longLongValue];

  v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:longLongValue countStyle:3];
  v18 = completionCopy;
  v14 = v13;
  CacheDeletePurgeSpaceWithInfo();
  v15 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]";
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEFAULT, "%s Requested CacheDelete to purge %@ from volume: %@", buf, 0x20u);
  }

LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
}

void __59__CESRUtilities__cacheDeletePurgeSpaceWithInfo_completion___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [a2 objectForKey:@"CACHE_DELETE_ERROR"];
    v5 = MEMORY[0x277CEF0E8];
    if (v4)
    {
      v6 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]_block_invoke";
        v18 = 2112;
        v19 = v4;
        _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s CacheDelete reported an error: %@", &v16, 0x16u);
      }
    }

    v7 = [a2 objectForKey:@"CACHE_DELETE_AMOUNT"];
    v8 = [v7 longLongValue];

    v9 = [MEMORY[0x277CCA8E8] stringFromByteCount:v8 countStyle:3];
    v10 = *v5;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v16 = 136315650;
      v17 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEFAULT, "%s CacheDelete purged %@ (requested %@).", &v16, 0x20u);
    }

    v12 = a1[5];
    if (v12)
    {
      (*(v12 + 16))(v12, a1[6] <= v8);
    }
  }

  else
  {
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s CacheDelete failed to return any results.", &v16, 0xCu);
    }

    v14 = a1[5];
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_freeSpaceInBytesForPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v5 = [defaultManager attributesOfFileSystemForPath:pathCopy error:&v16];
    v6 = v16;

    if (v5)
    {
      v7 = [v5 objectForKey:*MEMORY[0x277CCA1D0]];
      v8 = v7;
      if (v7)
      {
        longLongValue = [v7 longLongValue];
        if (longLongValue <= 104857600)
        {
          v10 = 0;
        }

        else
        {
          v10 = longLongValue - 104857600;
        }
      }

      else
      {
        v13 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = "+[CESRUtilities _freeSpaceInBytesForPath:]";
          _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s File system attributes did not contain a value for NSFileSystemFreeSize.", buf, 0xCu);
        }

        v10 = -1;
      }
    }

    else
    {
      v12 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "+[CESRUtilities _freeSpaceInBytesForPath:]";
        v19 = 2112;
        v20 = v6;
        _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Failed to retrieve file system attributes, error: %@", buf, 0x16u);
      }

      v10 = -1;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "+[CESRUtilities _freeSpaceInBytesForPath:]";
      _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s path cannot be nil.", buf, 0xCu);
    }

    v10 = -1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)purgeSpaceForModelCompilationAsNeeded:(unint64_t)needed completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = NSOpenStepRootDirectory();
  v7 = [CESRUtilities _freeSpaceInBytesForPath:v6];
  if (v7 < 0)
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CESRUtilities purgeSpaceForModelCompilationAsNeeded:completion:]";
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to evaluate the free space on volume: %@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_12;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = needed << 20;
  v10 = [MEMORY[0x277CCA8E8] stringFromByteCount:needed << 20 countStyle:3];
  v11 = [MEMORY[0x277CCA8E8] stringFromByteCount:v8 countStyle:3];
  if (v9 <= v8)
  {
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "+[CESRUtilities purgeSpaceForModelCompilationAsNeeded:completion:]";
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEFAULT, "%s Free space (%@) already meets or exceeds the requested space: %@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v18[0] = v6;
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{v9 - v8, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT"}];
    v17[2] = @"CACHE_DELETE_URGENCY";
    v18[1] = v12;
    v18[2] = &unk_283952480;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    [CESRUtilities _cacheDeletePurgeSpaceWithInfo:v13 completion:completionCopy];
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSamplingSupportedForTask:(id)task
{
  v3 = MEMORY[0x277CBEB98];
  taskCopy = task;
  v5 = [v3 setWithObjects:{@"Dictation", @"WebSearch", @"SearchOrMessaging", @"SiriDictation", @"Beto", @"BetoDictation", 0}];
  v6 = [v5 containsObject:taskCopy];

  return v6;
}

+ (id)installedAssistantLocale
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "+[CESRUtilities installedAssistantLocale]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Fetching installed Assistant locale...", &v17, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CDCE88]);
  v5 = +[CESRUtilities currentSiriLanguageCode];
  v6 = [v4 initWithLanguage:v5 assetType:3];

  v7 = objc_alloc_init(MEMORY[0x277CDCE98]);
  v8 = [v7 installedAssetWithConfig:v6];

  if (v8)
  {
    v9 = MEMORY[0x277CBEAF8];
    language = [v6 language];
    v11 = [v9 localeWithLocaleIdentifier:language];
  }

  else
  {
    v12 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      language2 = [v6 language];
      v17 = 136315394;
      v18 = "+[CESRUtilities installedAssistantLocale]";
      v19 = 2112;
      v20 = language2;
      _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s No asset for language: %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)installedDictationLocales
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "+[CESRUtilities installedDictationLocales]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Fetching installed Dictation locales...", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = +[CESRUtilities installedDictationLocaleIdentifiers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 136315394;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v11, v17}];
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = *v2;
          if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = "+[CESRUtilities installedDictationLocales]";
            v24 = 2112;
            v25 = v11;
            _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Failed to resolve locale from localeIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v14 = [v4 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isTaskDictationSpecific:(id)specific
{
  specificCopy = specific;
  if ([specificCopy isEqualToString:@"Dictation"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [specificCopy isEqualToString:@"WebSearch"];
  }

  return v4;
}

+ (void)generateABCSnapshotForType:(id)type subType:(id)subType context:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  if (AFIsInternalInstall())
  {
    v9 = objc_alloc(MEMORY[0x277CEF3A8]);
    defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
    v11 = [v9 initWithInstanceContext:defaultContext];

    [v11 triggerABCForType:typeCopy subType:subTypeCopy context:contextCopy completionHandler:&__block_literal_global_382];
  }
}

void __60__CESRUtilities_generateABCSnapshotForType_subType_context___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[CESRUtilities generateABCSnapshotForType:subType:context:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_225EEB000, v3, OS_LOG_TYPE_ERROR, "%s Unable to trigger ABC due to error %@.", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)logToPowerLogForEventCategory:(id)category eventDictionary:(id)dictionary
{
  categoryCopy = category;
  dictionaryCopy = dictionary;
  v7 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CESRUtilities_logToPowerLogForEventCategory_eventDictionary___block_invoke;
  v10[3] = &unk_278580398;
  v11 = categoryCopy;
  v12 = dictionaryCopy;
  v8 = dictionaryCopy;
  v9 = categoryCopy;
  dispatch_async(v7, v10);
}

+ (id)_alignTokenToFirstSeenPartialResult:(id)result tokenIndex:(unint64_t)index firstSeenPartialResultTokens:(id)tokens firstSeenPartialResultIndex:(unint64_t)resultIndex
{
  v41[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  tokensCopy = tokens;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v40 = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:resultIndex];
  v41[0] = v12;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v37 = resultCopy;
  v13 = [resultCopy count];
  v14 = [tokensCopy count];
  v35 = v13;
  if (v13 > index)
  {
    v15 = v14;
    v16 = 0;
    resultIndexCopy = resultIndex;
    v34 = resultIndex + index;
    v17 = -1;
    resultIndexCopy2 = resultIndex;
    while (1)
    {
      v19 = [v37 objectAtIndexedSubscript:{index, resultIndexCopy}];
      tokenName = [v19 tokenName];
      v21 = [CESRUtilities getNormString:tokenName];

      v22 = resultIndexCopy2;
      if (v15 > resultIndexCopy2)
      {
        break;
      }

LABEL_8:
      if (v16)
      {
        goto LABEL_9;
      }

      v16 = 0;
      v26 = v15;
LABEL_11:
      v27 = index - v34 + v22 + v26;
      if (v27 < v17)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
        v38 = v28;
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
        v39 = v29;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

        if (!v27)
        {

          v36 = v30;
          goto LABEL_17;
        }

        v36 = v30;
        v17 = v27;
      }

      ++index;
      resultIndexCopy2 = resultIndexCopy;
      if (index == v35)
      {
        goto LABEL_17;
      }
    }

    v23 = v16;
    v22 = resultIndexCopy2;
    while (1)
    {
      v24 = [tokensCopy objectAtIndex:v22];
      v25 = [v24 objectForKey:v21];

      if (v25)
      {
        break;
      }

      if (v15 == ++v22)
      {
        v22 = v15;
        v16 = v23;
        goto LABEL_8;
      }
    }

LABEL_9:
    v26 = 0;
    v16 = 1;
    goto LABEL_11;
  }

LABEL_17:

  v31 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)_firstSeenPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens
{
  tokensCopy = tokens;
  resultTokensCopy = resultTokens;
  array = [MEMORY[0x277CBEB18] array];
  v24 = tokensCopy;
  v8 = [tokensCopy count];
  v23 = resultTokensCopy;
  v9 = [resultTokensCopy count];
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [CESRUtilities _alignTokenToFirstSeenPartialResult:v24 tokenIndex:v11 firstSeenPartialResultTokens:v23 firstSeenPartialResultIndex:v12];
      allKeys = [v13 allKeys];
      firstObject = [allKeys firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];

      allValues = [v13 allValues];
      firstObject2 = [allValues firstObject];
      unsignedIntegerValue2 = [firstObject2 unsignedIntegerValue];

      v20 = unsignedIntegerValue - v11;
      if (unsignedIntegerValue > v11)
      {
        do
        {
          [array addObject:&unk_283952468];
          --v20;
        }

        while (v20);
      }

      if (unsignedIntegerValue2 >= v10)
      {
        [array addObject:&unk_283952468];
        v12 = v10;
      }

      else
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
        [array addObject:v21];

        v12 = unsignedIntegerValue2 + 1;
      }

      v11 = unsignedIntegerValue + 1;
    }

    while (unsignedIntegerValue + 1 < v8);
  }

  return array;
}

+ (id)alignedPartialResultIndicesForTokens:(id)tokens firstSeenPartialResultTokens:(id)resultTokens
{
  tokensCopy = tokens;
  resultTokensCopy = resultTokens;
  array = [MEMORY[0x277CBEB18] array];
  v34 = tokensCopy;
  v8 = [CESRUtilities _firstSeenPartialResultIndicesForTokens:tokensCopy firstSeenPartialResultTokens:resultTokensCopy];
  v9 = [v8 count];
  v33 = resultTokensCopy;
  v10 = [resultTokensCopy count];
  if (v9)
  {
    v11 = v10;
    v12 = 0;
    v13 = __Block_byref_object_copy__1057;
    v14 = __Block_byref_object_dispose__1058;
    v32 = v8;
    do
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = v13;
      v40 = v14;
      v41 = &unk_283952468;
      v15 = [v8 objectAtIndexedSubscript:v12];
      v16 = [v15 isEqualToNumber:&unk_283952468];

      if ((v16 & 1) == 0)
      {
        v17 = [v8 objectAtIndexedSubscript:v12];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        if (unsignedIntegerValue < v11)
        {
          v19 = v14;
          v20 = v13;
          v21 = v9;
          v22 = v11;
          v23 = array;
          v24 = [v34 objectAtIndex:v12];
          tokenName = [v24 tokenName];
          v26 = [CESRUtilities getNormString:tokenName];

          v27 = [v33 objectAtIndex:unsignedIntegerValue];
          v28 = [v27 objectForKey:v26];
          if (v28)
          {
            objc_storeStrong(v37 + 5, v28);
          }

          else
          {
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:-1];
            v30 = v37[5];
            v37[5] = v29;

            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __83__CESRUtilities_alignedPartialResultIndicesForTokens_firstSeenPartialResultTokens___block_invoke;
            v35[3] = &unk_27857F608;
            v35[4] = &v36;
            [v27 enumerateKeysAndObjectsUsingBlock:v35];
          }

          array = v23;
          v11 = v22;
          v9 = v21;
          v13 = v20;
          v14 = v19;
          v8 = v32;
        }
      }

      [array addObject:v37[5]];
      _Block_object_dispose(&v36, 8);

      ++v12;
    }

    while (v9 != v12);
  }

  return array;
}

uint64_t __83__CESRUtilities_alignedPartialResultIndicesForTokens_firstSeenPartialResultTokens___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (v8 > v5)
  {
    v10 = v5;
    objc_storeStrong(v7, a3);
    v5 = v10;
  }

  return MEMORY[0x2821F96F8](v7, v5);
}

+ (id)getNormString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  lowercaseString = [stringCopy lowercaseString];
  v6 = [lowercaseString componentsSeparatedByString:@" "];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"\\""];
        firstObject = [v11 firstObject];
        [array addObject:firstObject];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [array componentsJoinedByString:@" "];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)recognizerSourceForTask:(id)task
{
  taskCopy = task;
  v4 = taskCopy;
  if (taskCopy && [taskCopy isEqualToString:@"SearchOrMessaging"])
  {
    v5 = @"Assistant";
    v6 = @"Assistant";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)aFEnableFeatureAndCheckPreferenceValueWithKey:(__CFString *)key
{
  v3 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 BOOLValue];

  return v4;
}

+ (id)audioData:(id)data withBytesFromEnd:(unint64_t)end
{
  dataCopy = data;
  v6 = [dataCopy length];
  if (end)
  {
    if (v6 <= end)
    {
      v7 = dataCopy;
    }

    else
    {
      v7 = [dataCopy subdataWithRange:{v6 - end, end}];
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v8 = v7;

  return v8;
}

+ (BOOL)isFilePathValid:(id)valid
{
  v8 = 0;
  v3 = MEMORY[0x277CCAA00];
  validCopy = valid;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:validCopy isDirectory:&v8];

  return v6 & (v8 ^ 1);
}

+ (id)languageCodeForLocale:(id)locale
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBE6C8];
  localeCopy = locale;
  v6 = [localeCopy objectForKey:v4];
  v7 = [localeCopy objectForKey:*MEMORY[0x277CBE690]];

  v8 = [v3 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

+ (id)mapContextOptionToString:(unint64_t)string
{
  v3 = @"unconstrained";
  if (string == 1)
  {
    v3 = @"reduced";
  }

  if (string == 2)
  {
    return @"avoid";
  }

  else
  {
    return v3;
  }
}

+ (id)earTokensForAFTokens:(id)tokens appendedAutoPunctuation:(BOOL)punctuation
{
  punctuationCopy = punctuation;
  v34 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = tokensCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277D07268]);
        text = [v10 text];
        [v10 startTime];
        v14 = v13;
        [v10 endTime];
        v16 = v15;
        [v10 silenceStartTime];
        v18 = v17;
        confidenceScore = [v10 confidenceScore];
        removeSpaceAfter = [v10 removeSpaceAfter];
        removeSpaceBefore = [v10 removeSpaceBefore];
        phoneSequence = [v10 phoneSequence];
        ipaPhoneSequence = [v10 ipaPhoneSequence];
        v24 = [v11 initWithTokenName:text start:removeSpaceAfter ^ 1u end:removeSpaceBefore ^ 1u silenceStart:phoneSequence confidence:ipaPhoneSequence hasSpaceAfter:punctuationCopy hasSpaceBefore:v14 phoneSequence:v16 ipaPhoneSequence:v18 appendedAutoPunctuation:confidenceScore];

        [v5 addObject:v24];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:(id)package
{
  packageCopy = package;
  recognition = [packageCopy recognition];
  v5 = objc_opt_respondsToSelector();

  recognition2 = [packageCopy recognition];
  v7 = recognition2;
  if (v5)
  {
    potentialCommandRecognition = [recognition2 potentialCommandRecognition];
    nBest = [potentialCommandRecognition nBest];

    nBestVoiceCommandInterpretations = [packageCopy nBestVoiceCommandInterpretations];
    v11 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(nBestVoiceCommandInterpretations, nBest);
    preITNRecognition = [packageCopy preITNRecognition];
    potentialCommandRecognition2 = [preITNRecognition potentialCommandRecognition];
    nBest2 = [potentialCommandRecognition2 nBest];
  }

  else
  {
    nBest = [recognition2 nBest];

    nBestVoiceCommandInterpretations = [packageCopy nBestVoiceCommandInterpretations];
    v11 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(nBestVoiceCommandInterpretations, nBest);
    preITNRecognition = [packageCopy preITNRecognition];
    nBest2 = [preITNRecognition nBest];
  }

  preITNNBestVoiceCommandInterpretations = [packageCopy preITNNBestVoiceCommandInterpretations];

  v16 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(preITNNBestVoiceCommandInterpretations, nBest2);
  if ([v11 count] || objc_msgSend(v16, "count"))
  {
    v17 = [objc_alloc(MEMORY[0x277CEF510]) initWithNBestParses:v11 preITNNBestParses:v16];
    v18 = [objc_alloc(MEMORY[0x277CEF450]) initWithCommandGrammarParsePackage:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [v3 count];
    if (v5 == [v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke_352;
      v15 = &unk_27857F5E0;
      v16 = v3;
      v17 = v6;
      v7 = v6;
      [v4 enumerateObjectsUsingBlock:&v12];
      v8 = [v7 copy];

      goto LABEL_7;
    }

    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "+[CESRUtilities AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Count of command interpretation sets does not match count of speech recognition results", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke_352(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [CESRUtilities earTokensToString:a2];
  v5 = [*(a1 + 32) objectAtIndex:a3];
  v6 = [CESRUtilities afVoiceCommandGrammarParseResultForEARTokenString:v7 withEARVoiceCommandInterpretations:v5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }
}

+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResult:(id)result
{
  v19[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  tokens = [resultCopy tokens];
  v5 = [CESRUtilities earTokensToString:tokens];

  voiceCommandInterpretations = [resultCopy voiceCommandInterpretations];
  v7 = [CESRUtilities afVoiceCommandGrammarParseResultForEARTokenString:v5 withEARVoiceCommandInterpretations:voiceCommandInterpretations];

  preITNTokens = [resultCopy preITNTokens];
  v9 = [CESRUtilities earTokensToString:preITNTokens];

  preITNVoiceCommandInterpretations = [resultCopy preITNVoiceCommandInterpretations];

  v11 = [CESRUtilities afVoiceCommandGrammarParseResultForEARTokenString:v9 withEARVoiceCommandInterpretations:preITNVoiceCommandInterpretations];

  if (!(v7 | v11))
  {
    v14 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    v12 = MEMORY[0x277CBEBF8];
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  v19[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
LABEL_8:
  v15 = [objc_alloc(MEMORY[0x277CEF510]) initWithNBestParses:v12 preITNNBestParses:v13];
  v14 = [objc_alloc(MEMORY[0x277CEF450]) initWithCommandGrammarParsePackage:v15];

LABEL_9:
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)afVoiceCommandGrammarParseResultForEARTokenString:(id)string withEARVoiceCommandInterpretations:(id)interpretations
{
  v39 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  interpretationsCopy = interpretations;
  v6 = interpretationsCopy;
  if (interpretationsCopy && [interpretationsCopy count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v8)
    {
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277CBEB38]);
          arguments = [v11 arguments];
          v14 = [v12 initWithCapacity:{objc_msgSend(arguments, "count")}];

          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v33 = 1;
          arguments2 = [v11 arguments];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __102__CESRUtilities_afVoiceCommandGrammarParseResultForEARTokenString_withEARVoiceCommandInterpretations___block_invoke;
          v26[3] = &unk_27857F5B8;
          v16 = v14;
          v27 = v16;
          v28 = stringCopy;
          v29 = &v30;
          [arguments2 enumerateObjectsUsingBlock:v26];

          v17 = objc_alloc(MEMORY[0x277CEF508]);
          commandIdentifier = [v11 commandIdentifier];
          v19 = [v17 initWithCommandId:commandIdentifier isComplete:*(v31 + 24) paramMatches:v16];

          [v7 addObject:v19];
          _Block_object_dispose(&v30, 8);
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v20 = [objc_alloc(MEMORY[0x277CEF518]) initWithUtterance:stringCopy parseCandidates:v7];
    v6 = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __102__CESRUtilities_afVoiceCommandGrammarParseResultForEARTokenString_withEARVoiceCommandInterpretations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 presence] && objc_msgSend(v5, "presence") != 1)
  {
    goto LABEL_7;
  }

  v6 = [v5 text];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CEF500]);
    v8 = [v5 text];
    v9 = [v7 initWithText:v8];

LABEL_8:
    v18 = *(a1 + 32);
    v19 = [CESRUtilities voiceCommandsParamKeyBuilder:a3];
    [v18 setObject:v9 forKey:v19];

    goto LABEL_9;
  }

  v10 = [v5 indexes];
  v11 = [v10 count];

  if (!v11)
  {
LABEL_7:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v9 = [objc_alloc(MEMORY[0x277CEF500]) initWithText:&stru_283946208];
    goto LABEL_8;
  }

  v12 = objc_opt_new();
  v13 = [v5 indexes];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __102__CESRUtilities_afVoiceCommandGrammarParseResultForEARTokenString_withEARVoiceCommandInterpretations___block_invoke_2;
  v23 = &unk_27857F590;
  v24 = v12;
  v25 = *(a1 + 40);
  v9 = v12;
  [v13 enumerateRangesUsingBlock:&v20];

  v14 = objc_alloc(MEMORY[0x277CEF500]);
  v15 = [v14 initWithText:{v9, v20, v21, v22, v23}];
  v16 = *(a1 + 32);
  v17 = [CESRUtilities voiceCommandsParamKeyBuilder:a3];
  [v16 setObject:v15 forKey:v17];

LABEL_9:
}

void __102__CESRUtilities_afVoiceCommandGrammarParseResultForEARTokenString_withEARVoiceCommandInterpretations___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) substringWithRange:{a2, a3}];
  [v3 appendString:v4];
}

+ (id)earTokensToString:(id)string
{
  v3 = MEMORY[0x277CCAB68];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__CESRUtilities_earTokensToString___block_invoke;
  v8[3] = &unk_27857F568;
  v6 = v5;
  v9 = v6;
  [stringCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __35__CESRUtilities_earTokensToString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSpaceBefore])
  {
    [*(a1 + 32) appendString:@" "];
  }

  v4 = *(a1 + 32);
  v5 = [v3 tokenName];
  [v4 appendString:v5];

  LODWORD(v4) = [v3 hasSpaceAfter];
  if (v4)
  {
    v6 = *(a1 + 32);

    [v6 appendString:@" "];
  }
}

+ (id)speechProfileDateLastModifiedForLanguage:(id)language
{
  v3 = [self speechProfilePathsWithLanguage:language];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager attributesOfItemAtPath:v4 error:0];
    v7 = [v6 objectForKey:*MEMORY[0x277CCA150]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadSpeechProfiles:(id)profiles language:(id)language
{
  v58 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  languageCopy = language;
  if (profilesCopy)
  {
    v39 = languageCopy;
    v8 = [self speechProfilePathsWithLanguage:languageCopy];
    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      v12 = *MEMORY[0x277CCA150];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [profilesCopy objectForKeyedSubscript:v14];
          if (v15)
          {
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [defaultManager attributesOfItemAtPath:v14 error:0];

            v18 = [v17 objectForKey:v12];
            [v18 timeIntervalSinceReferenceDate];
            v20 = v19;
            loadDate = [v15 loadDate];
            [loadDate timeIntervalSinceReferenceDate];
            v23 = v22;

            if (v20 > 0.0 && v23 > 0.0 && v20 <= v23)
            {
              [v40 setObject:v15 forKeyedSubscript:v14];
              v25 = *MEMORY[0x277CEF0E8];
              if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315395;
                v51 = "+[CESRUtilities loadSpeechProfiles:language:]";
                v52 = 2113;
                v53 = v14;
                _os_log_debug_impl(&dword_225EEB000, v25, OS_LOG_TYPE_DEBUG, "%s Reused new type of speech profile: path=%{private}@", buf, 0x16u);
              }
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v10);
    }

    [profilesCopy removeAllObjects];
    [profilesCopy addEntriesFromDictionary:v40];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = obj;
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        v30 = 0;
        do
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v42 + 1) + 8 * v30);
          v32 = [profilesCopy objectForKeyedSubscript:v31];

          if (!v32)
          {
            date = [MEMORY[0x277CBEAA8] date];
            v34 = [objc_alloc(MEMORY[0x277D072A0]) initWithPath:v31 error:0];
            v35 = *MEMORY[0x277CEF0E8];
            if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315651;
              v51 = "+[CESRUtilities loadSpeechProfiles:language:]";
              v52 = 2113;
              v53 = v31;
              v54 = 1024;
              v55 = v34 != 0;
              _os_log_debug_impl(&dword_225EEB000, v35, OS_LOG_TYPE_DEBUG, "%s Loaded new type of speech profile: path=%{private}@ profile=%d", buf, 0x1Cu);
              if (v34)
              {
LABEL_26:
                [v34 setLoadDate:date];
                [profilesCopy setObject:v34 forKeyedSubscript:v31];
              }
            }

            else if (v34)
            {
              goto LABEL_26;
            }
          }

          ++v30;
        }

        while (v28 != v30);
        v36 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
        v28 = v36;
      }

      while (v36);
    }

    languageCopy = v39;
  }

  else
  {
    v37 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v51 = "+[CESRUtilities loadSpeechProfiles:language:]";
      _os_log_fault_impl(&dword_225EEB000, v37, OS_LOG_TYPE_FAULT, "%s loadSpeechProfiles was incorrectly called with profiles=nil", buf, 0xCu);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

+ (id)speechProfilePathsWithLanguage:(id)language
{
  v47 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  if (!languageCopy)
  {
    v25 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "+[CESRUtilities speechProfilePathsWithLanguage:]";
      _os_log_error_impl(&dword_225EEB000, v25, OS_LOG_TYPE_ERROR, "%s speechProfilePathsWithLanguage was incorrectly called with language=nil", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v5 = languageCopy;
  v6 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v7 = SFReplacementLocaleCodeForLocaleIdentifier();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  if (!v10)
  {
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v46 = "+[CESRUtilities speechProfilePathsWithLanguage:]";
      _os_log_fault_impl(&dword_225EEB000, v26, OS_LOG_TYPE_FAULT, "%s Mapped language=nil", buf, 0xCu);
    }

LABEL_27:
    v33 = 0;
    goto LABEL_28;
  }

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [self speechProfileRootDirectories];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v31)
  {
    v30 = *v39;
    do
    {
      v11 = 0;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v11;
        v12 = *(*(&v38 + 1) + 8 * v11);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [defaultManager enumeratorAtPath:v12];

        v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v35;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v35 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v34 + 1) + 8 * i);
              v20 = MEMORY[0x277CCACA8];
              v42[0] = v12;
              v42[1] = v19;
              v42[2] = v10;
              v42[3] = @"SpeechProfile";
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
              v22 = [v20 pathWithComponents:v21];

              defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
              v24 = [defaultManager2 fileExistsAtPath:v22];

              if (v24)
              {
                [v33 addObject:v22];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v16);
        }

        v11 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v31);
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)speechProfileRootDirectories
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = SFSpeechProfileSiteDirectories();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        path = [*(*(&v12 + 1) + 8 * i) path];
        if (path)
        {
          [v2 addObject:path];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315395;
    v17 = "+[CESRUtilities speechProfileRootDirectories]";
    v18 = 2113;
    v19 = v2;
    _os_log_debug_impl(&dword_225EEB000, v9, OS_LOG_TYPE_DEBUG, "%s Root directories for new type of speech profile: %{private}@", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)afSpeechPackageForEARPackage:(id)package processedAudioDuration:(double)duration speechProfileUsed:(BOOL)used recognizerModelInfo:(id)info isVoiceCommandCandidatePackage:(BOOL)candidatePackage
{
  candidatePackageCopy = candidatePackage;
  v108 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  infoCopy = info;
  recognition = [packageCopy recognition];
  v92 = [CESRUtilities afRecognitionForEARSausage:recognition processedAudioDuration:duration];

  preITNRecognition = [packageCopy preITNRecognition];
  v91 = [CESRUtilities afRecognitionForEARSausage:preITNRecognition processedAudioDuration:duration];

  audioAnalytics = [packageCopy audioAnalytics];
  acousticFeatures = [audioAnalytics acousticFeatures];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v14 = acousticFeatures;
  v15 = [v14 countByEnumeratingWithState:&v94 objects:buf count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v95;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v95 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v94 + 1) + 8 * i);
        v20 = [v14 objectForKey:v19];
        v21 = objc_alloc(MEMORY[0x277CEF438]);
        acousticFeatureValuePerFrame = [v20 acousticFeatureValuePerFrame];
        [v20 frameDuration];
        v23 = [v21 initWithAcousticFeatureValue:acousticFeatureValuePerFrame frameDuration:?];

        [v13 setValue:v23 forKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v94 objects:buf count:16];
    }

    while (v16);
  }

  speechRecognitionFeatures = [audioAnalytics speechRecognitionFeatures];
  v25 = objc_alloc(MEMORY[0x277CEF440]);
  [audioAnalytics snr];
  v26 = [v25 initWithSpeechRecognitionFeatures:speechRecognitionFeatures acousticFeatures:v13 snr:?];

  latticeMitigatorResult = [packageCopy latticeMitigatorResult];
  if (latticeMitigatorResult)
  {
    v28 = *MEMORY[0x277CEF0E8];
    v29 = infoCopy;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v74 = v28;
      [latticeMitigatorResult score];
      v76 = v75;
      [latticeMitigatorResult threshold];
      v78 = v77;
      [latticeMitigatorResult calibrationScale];
      v80 = v79;
      [latticeMitigatorResult calibrationOffset];
      *buf = 136316162;
      v99 = "AFSpeechLatticeMitigatorResultForEar";
      v100 = 2048;
      v101 = v76;
      v102 = 2048;
      v103 = v78;
      v104 = 2048;
      v105 = v80;
      v106 = 2048;
      v107 = v81;
      _os_log_debug_impl(&dword_225EEB000, v74, OS_LOG_TYPE_DEBUG, "%s AFSpeechLatticeMitigatorResult Score = %f, Threshold = %f, CalibrationScale = %f, CalibrationOffset = %f", buf, 0x34u);
    }

    v30 = objc_alloc(MEMORY[0x277CEF460]);
    version = [latticeMitigatorResult version];
    [latticeMitigatorResult score];
    v33 = v32;
    [latticeMitigatorResult threshold];
    v35 = v34;
    [latticeMitigatorResult calibrationScale];
    v37 = v36;
    [latticeMitigatorResult calibrationOffset];
    LODWORD(v39) = v38;
    LODWORD(v40) = v33;
    LODWORD(v41) = v35;
    LODWORD(v42) = v37;
    v43 = [v30 initWithResults:version score:v40 threshold:v41 calibrationScale:v42 calibrationOffset:v39];
  }

  else
  {
    v43 = 0;
    v29 = infoCopy;
  }

  v84 = v43;
  if ([packageCopy isFinal])
  {
    intValue = -1;
  }

  else
  {
    v44 = objc_getAssociatedObject(packageCopy, kResultCandidateIdKey);
    if (v44)
    {
      v45 = objc_getAssociatedObject(packageCopy, kResultCandidateIdKey);
      intValue = [v45 intValue];
    }

    else
    {
      intValue = -1;
    }
  }

  if (candidatePackageCopy)
  {
    recognition2 = [packageCopy recognition];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_29;
    }

    recognition3 = [packageCopy recognition];
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      recognition4 = [packageCopy recognition];
      potentialPrecedingRecognition = [recognition4 potentialPrecedingRecognition];

      if (potentialPrecedingRecognition)
      {
        v51 = objc_alloc(MEMORY[0x277CEF470]);
        recognition5 = [packageCopy recognition];
        potentialPrecedingRecognition2 = [recognition5 potentialPrecedingRecognition];
        v53 = [CESRUtilities afRecognitionForEARSausage:potentialPrecedingRecognition2 processedAudioDuration:duration];
        preITNRecognition2 = [packageCopy preITNRecognition];
        potentialPrecedingRecognition3 = [preITNRecognition2 potentialPrecedingRecognition];
        v56 = [CESRUtilities afRecognitionForEARSausage:potentialPrecedingRecognition3 processedAudioDuration:duration];
        [packageCopy utteranceStart];
        v57 = [v51 initWithRecognition:v53 rawRecognition:v56 audioAnalytics:0 isFinal:0 utteranceStart:?];
      }

      else
      {
        v57 = 0;
      }

      v83 = objc_alloc(MEMORY[0x277CEF470]);
      recognition2 = [packageCopy recognition];
      potentialCommandRecognition = [recognition2 potentialCommandRecognition];
      v61 = [CESRUtilities afRecognitionForEARSausage:potentialCommandRecognition processedAudioDuration:duration];
      preITNRecognition3 = [packageCopy preITNRecognition];
      potentialCommandRecognition2 = [preITNRecognition3 potentialCommandRecognition];
      v64 = [CESRUtilities afRecognitionForEARSausage:potentialCommandRecognition2 processedAudioDuration:duration];
      [packageCopy utteranceStart];
      v58 = [v83 initWithRecognition:v61 rawRecognition:v64 audioAnalytics:0 isFinal:0 utteranceStart:?];

      v29 = infoCopy;
LABEL_29:

      if (!v29)
      {
        goto LABEL_30;
      }

LABEL_25:
      version2 = [v29 version];
      acousticModelVersion = [v29 acousticModelVersion];
      goto LABEL_31;
    }
  }

  v57 = 0;
  v58 = 0;
  if (v29)
  {
    goto LABEL_25;
  }

LABEL_30:
  acousticModelVersion = &stru_283946208;
  version2 = &stru_283946208;
LABEL_31:
  v65 = objc_alloc(MEMORY[0x277CEF470]);
  isFinal = [packageCopy isFinal];
  [packageCopy utteranceStart];
  v68 = v67;
  recognitionPaused = [packageCopy recognitionPaused];
  endOfSentenceLikelihood = [packageCopy endOfSentenceLikelihood];
  BYTE1(v82) = used;
  LOBYTE(v82) = recognitionPaused;
  v71 = [v65 initWithRecognition:v92 unfilteredRecognition:v92 rawRecognition:v91 audioAnalytics:v26 isFinal:isFinal utteranceStart:v84 latticeMitigatorResult:v68 recognitionPaused:v82 speechProfileUsed:intValue resultCandidateId:endOfSentenceLikelihood endOfSentenceLikelihood:version2 modelVersion:acousticModelVersion acousticModelVersion:v57 potentialCommandPrecedingUtterance:v58 potentialCommandUtterance:objc_msgSend(packageCopy numOneBestTokensExcludingTriggerPhrase:"numTokensExcludingTriggerPhrase")];

  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

+ (id)afRecognitionForEARSausage:(id)sausage processedAudioDuration:(double)duration
{
  v97 = *MEMORY[0x277D85DE8];
  sausageCopy = sausage;
  nBest = [sausageCopy nBest];
  tokenSausage = [sausageCopy tokenSausage];
  interpretationIndices = [sausageCopy interpretationIndices];
  v9 = nBest;
  v10 = tokenSausage;
  v11 = [MEMORY[0x277CBEB70] orderedSetWithArray:interpretationIndices];
  array = [v11 array];

  v73 = array;
  v13 = [array count];
  v70 = v9;
  v14 = [v9 count];
  v15 = v14;
  v68 = interpretationIndices;
  v69 = sausageCopy;
  if (v14 > v13)
  {
    v16 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v92 = "AFPhrasesAndUtterancesForEARSausage";
      v93 = 2048;
      v94 = v15;
      v95 = 2048;
      v96 = v13;
      _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s Size of lossless n-best (%ld) exceeds size of sausage-based n-best (%ld); this leads to information loss in the lossless n-best.", buf, 0x20u);
    }

LABEL_8:
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v14 >= v13)
  {
    goto LABEL_8;
  }

  v17 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v92 = "AFPhrasesAndUtterancesForEARSausage";
    v93 = 2048;
    v94 = v15;
    v95 = 2048;
    v96 = v13;
    _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, "%s Size of lossless n-best (%ld) is less than size of sausage-based n-best (%ld); this is unexpected.", buf, 0x20u);
  }

  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
LABEL_9:
  v18 = 0;
  v19 = MEMORY[0x277CBEBF8];
  v20 = MEMORY[0x277CEF0E8];
  do
  {
    if (v18 >= v15)
    {
      v24 = *v20;
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v92 = "AFPhrasesAndUtterancesForEARSausage";
        v93 = 2048;
        v94 = v18;
        _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, "%s AFSpeechUtterance at index %ld will have a nil AFSpeechInterpretation (used for lossless n-best) since the lossless n-best does not have an entry at this index.", buf, 0x16u);
      }

      v21 = 0;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CEF458]);
      v22 = [v70 objectAtIndex:v18];
      v23 = [CESRUtilities afTokensForEARTokens:v22 removeSpaceBefore:0];
      [v21 setTokens:v23];
    }

    v25 = [objc_alloc(MEMORY[0x277CEF4B8]) initWithInterpretationIndices:v19 confidenceScore:0 interpretation:v21];
    [v25 setSource:2];
    [v74 addObject:v25];

    ++v18;
  }

  while (v13 != v18);
LABEL_16:
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v10;
  v27 = [obj countByEnumeratingWithState:&v86 objects:buf count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v72 = *v87;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v87 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v86 + 1) + 8 * i);
        v33 = objc_alloc_init(MEMORY[0x277CBEB40]);
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __AFPhrasesAndUtterancesForEARSausage_block_invoke;
        v80[3] = &unk_27857F658;
        v34 = v74;
        v84 = v30;
        v81 = v34;
        v82 = v32;
        v85 = v29 & 1;
        v35 = v33;
        v83 = v35;
        [v73 enumerateObjectsUsingBlock:v80];
        v36 = [v35 count];
        if (v36)
        {
          v37 = v36;
          firstObject = [v32 firstObject];
          lastObject = [firstObject lastObject];
          v29 = [lastObject hasSpaceAfter] ^ 1;

          v40 = objc_alloc_init(MEMORY[0x277CEF478]);
          array2 = [v35 array];
          v42 = [array2 copy];
          [v40 setInterpretations:v42];

          [v40 setIsLowConfidence:v37 != 1];
          [v26 addObject:v40];
          ++v30;
        }
      }

      v28 = [obj countByEnumeratingWithState:&v86 objects:buf count:16];
    }

    while (v28);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = v74;
  v43 = [v75 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v77;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v77 != v45)
        {
          objc_enumerationMutation(v75);
        }

        v47 = *(*(&v76 + 1) + 8 * j);
        interpretationIndices2 = [v47 interpretationIndices];
        v49 = [interpretationIndices2 count];

        if (v49)
        {
          v50 = 0;
          v51 = 0;
          do
          {
            interpretationIndices3 = [v47 interpretationIndices];
            v53 = [interpretationIndices3 objectAtIndex:v50];
            unsignedIntegerValue = [v53 unsignedIntegerValue];

            v55 = [v26 objectAtIndex:v50];
            interpretations = [v55 interpretations];
            v57 = [interpretations objectAtIndex:unsignedIntegerValue];

            tokens = [v57 tokens];
            v51 += [tokens count];

            ++v50;
            interpretationIndices4 = [v47 interpretationIndices];
            v60 = [interpretationIndices4 count];
          }

          while (v50 < v60);
          if (v51)
          {
            [v47 setConfidenceScore:{(objc_msgSend(v47, "confidenceScore") / v51)}];
          }
        }
      }

      v44 = [v75 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v44);
  }

  v61 = [MEMORY[0x277CBEB70] orderedSetWithArray:v75];
  array3 = [v61 array];
  v63 = array3;

  v64 = array3;
  v65 = [objc_alloc(MEMORY[0x277CEF480]) initWithPhrases:v26 utterances:v64 processedAudioDuration:duration];

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

+ (id)afTokensForEARTokens:(id)tokens removeSpaceBefore:(BOOL)before
{
  v29 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = tokensCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x277CEF4B0]);
        tokenName = [v12 tokenName];
        [v13 setText:tokenName];

        phoneSequence = [v12 phoneSequence];
        [v13 setPhoneSequence:phoneSequence];

        [v12 start];
        [v13 setStartTime:?];
        [v12 silenceStart];
        [v13 setSilenceStartTime:?];
        [v12 end];
        [v13 setEndTime:?];
        [v13 setRemoveSpaceBefore:before];
        before = [v12 hasSpaceAfter] ^ 1;
        [v12 confidence];
        [v13 setConfidenceScore:v16];
        ipaPhoneSequence = [v12 ipaPhoneSequence];
        [v13 setIpaPhoneSequence:ipaPhoneSequence];

        v18 = MEMORY[0x277CCABB0];
        [v12 graphCost];
        v19 = [v18 numberWithDouble:?];
        [v13 setGraphCost:v19];

        v20 = MEMORY[0x277CCABB0];
        [v12 acousticCost];
        v21 = [v20 numberWithDouble:?];
        [v13 setAcousticCost:v21];

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)hasRecognizedAnythingInAFSpeechPackage:(id)package
{
  v17 = *MEMORY[0x277D85DE8];
  recognition = [package recognition];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  utterances = [recognition utterances];
  v5 = [utterances countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(utterances);
        }

        interpretationIndices = [*(*(&v12 + 1) + 8 * i) interpretationIndices];
        v9 = [interpretationIndices count];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [utterances countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (int64_t)calculateDiffInDaysFromTimestamp:(id)timestamp
{
  v3 = MEMORY[0x277CCA968];
  timestampCopy = timestamp;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v5 setTimeZone:v6];

  v7 = MEMORY[0x277CBEAA8];
  [timestampCopy doubleValue];
  v9 = v8;

  v10 = [v7 dateWithTimeIntervalSince1970:v9];
  if (v10)
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [currentCalendar components:16 fromDate:v10 toDate:date options:0];
    v14 = [v13 day];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (double)getHostClockFrequency
{
  info = 0;
  mach_timebase_info(&info);
  if (!info.numer)
  {
    return 0.0;
  }

  LODWORD(v2) = info.denom;
  return v2 / info.numer * 1000000000.0;
}

+ (float)hostTimeToSeconds:(unint64_t)seconds
{
  secondsCopy = seconds;
  +[CESRUtilities getHostClockFrequency];
  return secondsCopy / v4;
}

+ (unint64_t)secondsToHostTime:(float)time
{
  timeCopy = time;
  +[CESRUtilities getHostClockFrequency];
  return (v4 * timeCopy);
}

+ (BOOL)isDictationEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  dictationIsEnabled = [mEMORY[0x277CEF368] dictationIsEnabled];

  return dictationIsEnabled;
}

+ (BOOL)isAssistantEnabled
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  return assistantIsEnabled;
}

+ (id)installedDictationLocaleIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_alloc_init(MEMORY[0x277CDCE98]);
  v4 = MEMORY[0x277CDCE98];
  systemClientId = [MEMORY[0x277CDCEB8] systemClientId];
  v6 = [v4 subscriptionsForSubscriberId:systemClientId];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 assetType] == 3)
        {
          v13 = [v3 installedAssetWithConfig:v12];

          if (v13)
          {
            language = [v12 language];
            [v2 addObject:language];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v2 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)currentSiriLanguageCode
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (![languageCode length])
  {
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    v5 = [mEMORY[0x277CEF368]2 bestSupportedLanguageCodeForLanguageCode:0];

    languageCode = v5;
  }

  return languageCode;
}

+ (BOOL)isASRSupported
{
  if (AFDeviceSupportsSiriUOD())
  {
    return 1;
  }

  return AFOfflineDictationCapable();
}

+ (BOOL)isSiriUODSupported
{
  v2 = AFDeviceSupportsSiriUOD();
  if (v2)
  {
    return 1;
  }

  return MEMORY[0x282141958](v2, v3);
}

+ (BOOL)isAutomaticCompilationEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  if (AFIsInternalInstall() && ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "BOOLForKey:", @"ASRAutomaticCompilationOverride"), v2, v3))
  {
    v4 = *MEMORY[0x277CEF0E8];
    v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v8 = 136315138;
      v9 = "+[CESRUtilities isAutomaticCompilationEnabled]";
      _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEFAULT, "%s Automatic model compilation is disabled.", &v8, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end