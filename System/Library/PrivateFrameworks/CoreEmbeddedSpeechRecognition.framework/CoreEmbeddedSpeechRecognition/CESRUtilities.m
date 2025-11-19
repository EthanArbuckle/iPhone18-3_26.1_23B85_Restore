@interface CESRUtilities
+ (BOOL)aFEnableFeatureAndCheckPreferenceValueWithKey:(__CFString *)a3;
+ (BOOL)hasRecognizedAnythingInAFSpeechPackage:(id)a3;
+ (BOOL)isASRSupported;
+ (BOOL)isAssistantEnabled;
+ (BOOL)isAutomaticCompilationEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isEARError:(id)a3;
+ (BOOL)isFilePathValid:(id)a3;
+ (BOOL)isInsufficientDiskSpaceError:(id)a3;
+ (BOOL)isSamplingSupportedForTask:(id)a3;
+ (BOOL)isSiriUODSupported;
+ (BOOL)isTaskDictationSpecific:(id)a3;
+ (double)getHostClockFrequency;
+ (float)hostTimeToSeconds:(unint64_t)a3;
+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResult:(id)a3;
+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:(id)a3;
+ (id)_alignTokenToFirstSeenPartialResult:(id)a3 tokenIndex:(unint64_t)a4 firstSeenPartialResultTokens:(id)a5 firstSeenPartialResultIndex:(unint64_t)a6;
+ (id)_firstSeenPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4;
+ (id)afRecognitionForEARSausage:(id)a3 processedAudioDuration:(double)a4;
+ (id)afSpeechPackageForEARPackage:(id)a3 processedAudioDuration:(double)a4 speechProfileUsed:(BOOL)a5 recognizerModelInfo:(id)a6 isVoiceCommandCandidatePackage:(BOOL)a7;
+ (id)afTokensForEARTokens:(id)a3 removeSpaceBefore:(BOOL)a4;
+ (id)afVoiceCommandGrammarParseResultForEARTokenString:(id)a3 withEARVoiceCommandInterpretations:(id)a4;
+ (id)alignedPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4;
+ (id)audioData:(id)a3 withBytesFromEnd:(unint64_t)a4;
+ (id)currentSiriLanguageCode;
+ (id)earTokensForAFTokens:(id)a3 appendedAutoPunctuation:(BOOL)a4;
+ (id)earTokensToString:(id)a3;
+ (id)getNormString:(id)a3;
+ (id)installedAssistantLocale;
+ (id)installedDictationLocaleIdentifiers;
+ (id)installedDictationLocales;
+ (id)languageCodeForLocale:(id)a3;
+ (id)mapContextOptionToString:(unint64_t)a3;
+ (id)recognizerSourceForTask:(id)a3;
+ (id)speechProfileDateLastModifiedForLanguage:(id)a3;
+ (id)speechProfilePathsWithLanguage:(id)a3;
+ (id)speechProfileRootDirectories;
+ (id)transcriptFromTokens:(id)a3;
+ (int64_t)_freeSpaceInBytesForPath:(id)a3;
+ (int64_t)calculateDiffInDaysFromTimestamp:(id)a3;
+ (unint64_t)secondsToHostTime:(float)a3;
+ (void)_cacheDeletePurgeSpaceWithInfo:(id)a3 completion:(id)a4;
+ (void)generateABCSnapshotForType:(id)a3 subType:(id)a4 context:(id)a5;
+ (void)loadSpeechProfiles:(id)a3 language:(id)a4;
+ (void)logToPowerLogForEventCategory:(id)a3 eventDictionary:(id)a4;
+ (void)purgeSpaceForModelCompilationAsNeeded:(unint64_t)a3 completion:(id)a4;
@end

@implementation CESRUtilities

+ (id)transcriptFromTokens:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (((v9 | [v11 removeSpaceBefore]) & 1) == 0)
          {
            [v4 appendString:@" "];
          }

          v12 = [v11 text];
          if (v12)
          {
            [v4 appendString:v12];
          }

          v9 = [v11 removeSpaceAfter];
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

+ (BOOL)isInsufficientDiskSpaceError:(id)a3
{
  v3 = a3;
  if ([CESRUtilities isEARError:v3])
  {
    v4 = [v3 code] == 201;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isEARError:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277D071C8]];

  return v4;
}

+ (void)_cacheDeletePurgeSpaceWithInfo:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5 || ([v5 objectForKey:@"CACHE_DELETE_VOLUME"], (v7 = objc_claimAutoreleasedReturnValue()) == 0) || (v8 = v7, objc_msgSend(v5, "objectForKey:", @"CACHE_DELETE_AMOUNT"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v16 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[CESRUtilities _cacheDeletePurgeSpaceWithInfo:completion:]";
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_225EEB000, v16, OS_LOG_TYPE_ERROR, "%s The volume and/or amount to purge was not specified: %@", buf, 0x16u);
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

    v6[2](v6, 0);
    goto LABEL_10;
  }

  v10 = [v5 objectForKey:@"CACHE_DELETE_VOLUME"];
  v11 = [v5 objectForKey:@"CACHE_DELETE_AMOUNT"];
  v12 = [v11 longLongValue];

  v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:v12 countStyle:3];
  v18 = v6;
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

+ (int64_t)_freeSpaceInBytesForPath:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v5 = [v4 attributesOfFileSystemForPath:v3 error:&v16];
    v6 = v16;

    if (v5)
    {
      v7 = [v5 objectForKey:*MEMORY[0x277CCA1D0]];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 longLongValue];
        if (v9 <= 104857600)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 - 104857600;
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

+ (void)purgeSpaceForModelCompilationAsNeeded:(unint64_t)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
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
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    v5[2](v5, 0);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = a3 << 20;
  v10 = [MEMORY[0x277CCA8E8] stringFromByteCount:a3 << 20 countStyle:3];
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

    if (v5)
    {
      v5[2](v5, 1);
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

    [CESRUtilities _cacheDeletePurgeSpaceWithInfo:v13 completion:v5];
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSamplingSupportedForTask:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{@"Dictation", @"WebSearch", @"SearchOrMessaging", @"SiriDictation", @"Beto", @"BetoDictation", 0}];
  v6 = [v5 containsObject:v4];

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
    v10 = [v6 language];
    v11 = [v9 localeWithLocaleIdentifier:v10];
  }

  else
  {
    v12 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v6 language];
      v17 = 136315394;
      v18 = "+[CESRUtilities installedAssistantLocale]";
      v19 = 2112;
      v20 = v14;
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

+ (BOOL)isTaskDictationSpecific:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Dictation"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"WebSearch"];
  }

  return v4;
}

+ (void)generateABCSnapshotForType:(id)a3 subType:(id)a4 context:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if (AFIsInternalInstall())
  {
    v9 = objc_alloc(MEMORY[0x277CEF3A8]);
    v10 = [MEMORY[0x277CEF2C8] defaultContext];
    v11 = [v9 initWithInstanceContext:v10];

    [v11 triggerABCForType:v12 subType:v7 context:v8 completionHandler:&__block_literal_global_382];
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

+ (void)logToPowerLogForEventCategory:(id)a3 eventDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CESRUtilities_logToPowerLogForEventCategory_eventDictionary___block_invoke;
  v10[3] = &unk_278580398;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

+ (id)_alignTokenToFirstSeenPartialResult:(id)a3 tokenIndex:(unint64_t)a4 firstSeenPartialResultTokens:(id)a5 firstSeenPartialResultIndex:(unint64_t)a6
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v40 = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v41[0] = v12;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  v37 = v9;
  v13 = [v9 count];
  v14 = [v10 count];
  v35 = v13;
  if (v13 > a4)
  {
    v15 = v14;
    v16 = 0;
    v33 = a6;
    v34 = a6 + a4;
    v17 = -1;
    v18 = a6;
    while (1)
    {
      v19 = [v37 objectAtIndexedSubscript:{a4, v33}];
      v20 = [v19 tokenName];
      v21 = [CESRUtilities getNormString:v20];

      v22 = v18;
      if (v15 > v18)
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
      v27 = a4 - v34 + v22 + v26;
      if (v27 < v17)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
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

      ++a4;
      v18 = v33;
      if (a4 == v35)
      {
        goto LABEL_17;
      }
    }

    v23 = v16;
    v22 = v18;
    while (1)
    {
      v24 = [v10 objectAtIndex:v22];
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

+ (id)_firstSeenPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v24 = v5;
  v8 = [v5 count];
  v23 = v6;
  v9 = [v6 count];
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = [CESRUtilities _alignTokenToFirstSeenPartialResult:v24 tokenIndex:v11 firstSeenPartialResultTokens:v23 firstSeenPartialResultIndex:v12];
      v14 = [v13 allKeys];
      v15 = [v14 firstObject];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v13 allValues];
      v18 = [v17 firstObject];
      v19 = [v18 unsignedIntegerValue];

      v20 = v16 - v11;
      if (v16 > v11)
      {
        do
        {
          [v7 addObject:&unk_283952468];
          --v20;
        }

        while (v20);
      }

      if (v19 >= v10)
      {
        [v7 addObject:&unk_283952468];
        v12 = v10;
      }

      else
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
        [v7 addObject:v21];

        v12 = v19 + 1;
      }

      v11 = v16 + 1;
    }

    while (v16 + 1 < v8);
  }

  return v7;
}

+ (id)alignedPartialResultIndicesForTokens:(id)a3 firstSeenPartialResultTokens:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v34 = v5;
  v8 = [CESRUtilities _firstSeenPartialResultIndicesForTokens:v5 firstSeenPartialResultTokens:v6];
  v9 = [v8 count];
  v33 = v6;
  v10 = [v6 count];
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
        v18 = [v17 unsignedIntegerValue];

        if (v18 < v11)
        {
          v19 = v14;
          v20 = v13;
          v21 = v9;
          v22 = v11;
          v23 = v7;
          v24 = [v34 objectAtIndex:v12];
          v25 = [v24 tokenName];
          v26 = [CESRUtilities getNormString:v25];

          v27 = [v33 objectAtIndex:v18];
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

          v7 = v23;
          v11 = v22;
          v9 = v21;
          v13 = v20;
          v14 = v19;
          v8 = v32;
        }
      }

      [v7 addObject:v37[5]];
      _Block_object_dispose(&v36, 8);

      ++v12;
    }

    while (v9 != v12);
  }

  return v7;
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

+ (id)getNormString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 lowercaseString];
  v6 = [v5 componentsSeparatedByString:@" "];

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
        v12 = [v11 firstObject];
        [v4 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v4 componentsJoinedByString:@" "];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)recognizerSourceForTask:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isEqualToString:@"SearchOrMessaging"])
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

+ (BOOL)aFEnableFeatureAndCheckPreferenceValueWithKey:(__CFString *)a3
{
  v3 = _AFPreferencesValueForKeyWithContext();
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [v3 BOOLValue];

  return v4;
}

+ (id)audioData:(id)a3 withBytesFromEnd:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (a4)
  {
    if (v6 <= a4)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v5 subdataWithRange:{v6 - a4, a4}];
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v8 = v7;

  return v8;
}

+ (BOOL)isFilePathValid:(id)a3
{
  v8 = 0;
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v8];

  return v6 & (v8 ^ 1);
}

+ (id)languageCodeForLocale:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBE6C8];
  v5 = a3;
  v6 = [v5 objectForKey:v4];
  v7 = [v5 objectForKey:*MEMORY[0x277CBE690]];

  v8 = [v3 stringWithFormat:@"%@-%@", v6, v7];

  return v8;
}

+ (id)mapContextOptionToString:(unint64_t)a3
{
  v3 = @"unconstrained";
  if (a3 == 1)
  {
    v3 = @"reduced";
  }

  if (a3 == 2)
  {
    return @"avoid";
  }

  else
  {
    return v3;
  }
}

+ (id)earTokensForAFTokens:(id)a3 appendedAutoPunctuation:(BOOL)a4
{
  v28 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
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
        v12 = [v10 text];
        [v10 startTime];
        v14 = v13;
        [v10 endTime];
        v16 = v15;
        [v10 silenceStartTime];
        v18 = v17;
        v19 = [v10 confidenceScore];
        v20 = [v10 removeSpaceAfter];
        v21 = [v10 removeSpaceBefore];
        v22 = [v10 phoneSequence];
        v23 = [v10 ipaPhoneSequence];
        v24 = [v11 initWithTokenName:v12 start:v20 ^ 1u end:v21 ^ 1u silenceStart:v22 confidence:v23 hasSpaceAfter:v28 hasSpaceBefore:v14 phoneSequence:v16 ipaPhoneSequence:v18 appendedAutoPunctuation:v19];

        [v5 addObject:v24];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResultPackage:(id)a3
{
  v3 = a3;
  v4 = [v3 recognition];
  v5 = objc_opt_respondsToSelector();

  v6 = [v3 recognition];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 potentialCommandRecognition];
    v9 = [v8 nBest];

    v10 = [v3 nBestVoiceCommandInterpretations];
    v11 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(v10, v9);
    v12 = [v3 preITNRecognition];
    v13 = [v12 potentialCommandRecognition];
    v14 = [v13 nBest];
  }

  else
  {
    v9 = [v6 nBest];

    v10 = [v3 nBestVoiceCommandInterpretations];
    v11 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(v10, v9);
    v12 = [v3 preITNRecognition];
    v14 = [v12 nBest];
  }

  v15 = [v3 preITNNBestVoiceCommandInterpretations];

  v16 = __73__CESRUtilities_AFSpeechInfoPackageForEARSpeechRecognitionResultPackage___block_invoke(v15, v14);
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

+ (id)AFSpeechInfoPackageForEARSpeechRecognitionResult:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 tokens];
  v5 = [CESRUtilities earTokensToString:v4];

  v6 = [v3 voiceCommandInterpretations];
  v7 = [CESRUtilities afVoiceCommandGrammarParseResultForEARTokenString:v5 withEARVoiceCommandInterpretations:v6];

  v8 = [v3 preITNTokens];
  v9 = [CESRUtilities earTokensToString:v8];

  v10 = [v3 preITNVoiceCommandInterpretations];

  v11 = [CESRUtilities afVoiceCommandGrammarParseResultForEARTokenString:v9 withEARVoiceCommandInterpretations:v10];

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

+ (id)afVoiceCommandGrammarParseResultForEARTokenString:(id)a3 withEARVoiceCommandInterpretations:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v5 = a4;
  v6 = v5;
  if (v5 && [v5 count])
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
          v13 = [v11 arguments];
          v14 = [v12 initWithCapacity:{objc_msgSend(v13, "count")}];

          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v33 = 1;
          v15 = [v11 arguments];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __102__CESRUtilities_afVoiceCommandGrammarParseResultForEARTokenString_withEARVoiceCommandInterpretations___block_invoke;
          v26[3] = &unk_27857F5B8;
          v16 = v14;
          v27 = v16;
          v28 = v25;
          v29 = &v30;
          [v15 enumerateObjectsUsingBlock:v26];

          v17 = objc_alloc(MEMORY[0x277CEF508]);
          v18 = [v11 commandIdentifier];
          v19 = [v17 initWithCommandId:v18 isComplete:*(v31 + 24) paramMatches:v16];

          [v7 addObject:v19];
          _Block_object_dispose(&v30, 8);
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v20 = [objc_alloc(MEMORY[0x277CEF518]) initWithUtterance:v25 parseCandidates:v7];
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

+ (id)earTokensToString:(id)a3
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__CESRUtilities_earTokensToString___block_invoke;
  v8[3] = &unk_27857F568;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

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

+ (id)speechProfileDateLastModifiedForLanguage:(id)a3
{
  v3 = [a1 speechProfilePathsWithLanguage:a3];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 attributesOfItemAtPath:v4 error:0];
    v7 = [v6 objectForKey:*MEMORY[0x277CCA150]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadSpeechProfiles:(id)a3 language:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v39 = v7;
    v8 = [a1 speechProfilePathsWithLanguage:v7];
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
          v15 = [v6 objectForKeyedSubscript:v14];
          if (v15)
          {
            v16 = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [v16 attributesOfItemAtPath:v14 error:0];

            v18 = [v17 objectForKey:v12];
            [v18 timeIntervalSinceReferenceDate];
            v20 = v19;
            v21 = [v15 loadDate];
            [v21 timeIntervalSinceReferenceDate];
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

    [v6 removeAllObjects];
    [v6 addEntriesFromDictionary:v40];
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
          v32 = [v6 objectForKeyedSubscript:v31];

          if (!v32)
          {
            v33 = [MEMORY[0x277CBEAA8] date];
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
                [v34 setLoadDate:v33];
                [v6 setObject:v34 forKeyedSubscript:v31];
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

    v7 = v39;
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

+ (id)speechProfilePathsWithLanguage:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v5 = v4;
  v6 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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
  [a1 speechProfileRootDirectories];
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
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [v13 enumeratorAtPath:v12];

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

              v23 = [MEMORY[0x277CCAA00] defaultManager];
              v24 = [v23 fileExistsAtPath:v22];

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

        v8 = [*(*(&v12 + 1) + 8 * i) path];
        if (v8)
        {
          [v2 addObject:v8];
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

+ (id)afSpeechPackageForEARPackage:(id)a3 processedAudioDuration:(double)a4 speechProfileUsed:(BOOL)a5 recognizerModelInfo:(id)a6 isVoiceCommandCandidatePackage:(BOOL)a7
{
  v87 = a7;
  v108 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v93 = a6;
  v10 = [v9 recognition];
  v92 = [CESRUtilities afRecognitionForEARSausage:v10 processedAudioDuration:a4];

  v11 = [v9 preITNRecognition];
  v91 = [CESRUtilities afRecognitionForEARSausage:v11 processedAudioDuration:a4];

  v85 = [v9 audioAnalytics];
  v12 = [v85 acousticFeatures];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v14 = v12;
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
        v22 = [v20 acousticFeatureValuePerFrame];
        [v20 frameDuration];
        v23 = [v21 initWithAcousticFeatureValue:v22 frameDuration:?];

        [v13 setValue:v23 forKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v94 objects:buf count:16];
    }

    while (v16);
  }

  v24 = [v85 speechRecognitionFeatures];
  v25 = objc_alloc(MEMORY[0x277CEF440]);
  [v85 snr];
  v26 = [v25 initWithSpeechRecognitionFeatures:v24 acousticFeatures:v13 snr:?];

  v27 = [v9 latticeMitigatorResult];
  if (v27)
  {
    v28 = *MEMORY[0x277CEF0E8];
    v29 = v93;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v74 = v28;
      [v27 score];
      v76 = v75;
      [v27 threshold];
      v78 = v77;
      [v27 calibrationScale];
      v80 = v79;
      [v27 calibrationOffset];
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
    v31 = [v27 version];
    [v27 score];
    v33 = v32;
    [v27 threshold];
    v35 = v34;
    [v27 calibrationScale];
    v37 = v36;
    [v27 calibrationOffset];
    LODWORD(v39) = v38;
    LODWORD(v40) = v33;
    LODWORD(v41) = v35;
    LODWORD(v42) = v37;
    v43 = [v30 initWithResults:v31 score:v40 threshold:v41 calibrationScale:v42 calibrationOffset:v39];
  }

  else
  {
    v43 = 0;
    v29 = v93;
  }

  v84 = v43;
  if ([v9 isFinal])
  {
    v86 = -1;
  }

  else
  {
    v44 = objc_getAssociatedObject(v9, kResultCandidateIdKey);
    if (v44)
    {
      v45 = objc_getAssociatedObject(v9, kResultCandidateIdKey);
      v86 = [v45 intValue];
    }

    else
    {
      v86 = -1;
    }
  }

  if (v87)
  {
    v46 = [v9 recognition];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_29;
    }

    v47 = [v9 recognition];
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      v49 = [v9 recognition];
      v50 = [v49 potentialPrecedingRecognition];

      if (v50)
      {
        v51 = objc_alloc(MEMORY[0x277CEF470]);
        v88 = [v9 recognition];
        v52 = [v88 potentialPrecedingRecognition];
        v53 = [CESRUtilities afRecognitionForEARSausage:v52 processedAudioDuration:a4];
        v54 = [v9 preITNRecognition];
        v55 = [v54 potentialPrecedingRecognition];
        v56 = [CESRUtilities afRecognitionForEARSausage:v55 processedAudioDuration:a4];
        [v9 utteranceStart];
        v57 = [v51 initWithRecognition:v53 rawRecognition:v56 audioAnalytics:0 isFinal:0 utteranceStart:?];
      }

      else
      {
        v57 = 0;
      }

      v83 = objc_alloc(MEMORY[0x277CEF470]);
      v46 = [v9 recognition];
      v89 = [v46 potentialCommandRecognition];
      v61 = [CESRUtilities afRecognitionForEARSausage:v89 processedAudioDuration:a4];
      v62 = [v9 preITNRecognition];
      v63 = [v62 potentialCommandRecognition];
      v64 = [CESRUtilities afRecognitionForEARSausage:v63 processedAudioDuration:a4];
      [v9 utteranceStart];
      v58 = [v83 initWithRecognition:v61 rawRecognition:v64 audioAnalytics:0 isFinal:0 utteranceStart:?];

      v29 = v93;
LABEL_29:

      if (!v29)
      {
        goto LABEL_30;
      }

LABEL_25:
      v59 = [v29 version];
      v60 = [v29 acousticModelVersion];
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
  v60 = &stru_283946208;
  v59 = &stru_283946208;
LABEL_31:
  v65 = objc_alloc(MEMORY[0x277CEF470]);
  v66 = [v9 isFinal];
  [v9 utteranceStart];
  v68 = v67;
  v69 = [v9 recognitionPaused];
  v70 = [v9 endOfSentenceLikelihood];
  BYTE1(v82) = a5;
  LOBYTE(v82) = v69;
  v71 = [v65 initWithRecognition:v92 unfilteredRecognition:v92 rawRecognition:v91 audioAnalytics:v26 isFinal:v66 utteranceStart:v84 latticeMitigatorResult:v68 recognitionPaused:v82 speechProfileUsed:v86 resultCandidateId:v70 endOfSentenceLikelihood:v59 modelVersion:v60 acousticModelVersion:v57 potentialCommandPrecedingUtterance:v58 potentialCommandUtterance:objc_msgSend(v9 numOneBestTokensExcludingTriggerPhrase:"numTokensExcludingTriggerPhrase")];

  v72 = *MEMORY[0x277D85DE8];

  return v71;
}

+ (id)afRecognitionForEARSausage:(id)a3 processedAudioDuration:(double)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 nBest];
  v7 = [v5 tokenSausage];
  v8 = [v5 interpretationIndices];
  v9 = v6;
  v10 = v7;
  v11 = [MEMORY[0x277CBEB70] orderedSetWithArray:v8];
  v12 = [v11 array];

  v73 = v12;
  v13 = [v12 count];
  v70 = v9;
  v14 = [v9 count];
  v15 = v14;
  v68 = v8;
  v69 = v5;
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
          v38 = [v32 firstObject];
          v39 = [v38 lastObject];
          v29 = [v39 hasSpaceAfter] ^ 1;

          v40 = objc_alloc_init(MEMORY[0x277CEF478]);
          v41 = [v35 array];
          v42 = [v41 copy];
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
        v48 = [v47 interpretationIndices];
        v49 = [v48 count];

        if (v49)
        {
          v50 = 0;
          v51 = 0;
          do
          {
            v52 = [v47 interpretationIndices];
            v53 = [v52 objectAtIndex:v50];
            v54 = [v53 unsignedIntegerValue];

            v55 = [v26 objectAtIndex:v50];
            v56 = [v55 interpretations];
            v57 = [v56 objectAtIndex:v54];

            v58 = [v57 tokens];
            v51 += [v58 count];

            ++v50;
            v59 = [v47 interpretationIndices];
            v60 = [v59 count];
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
  v62 = [v61 array];
  v63 = v62;

  v64 = v62;
  v65 = [objc_alloc(MEMORY[0x277CEF480]) initWithPhrases:v26 utterances:v64 processedAudioDuration:a4];

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

+ (id)afTokensForEARTokens:(id)a3 removeSpaceBefore:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
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
        v14 = [v12 tokenName];
        [v13 setText:v14];

        v15 = [v12 phoneSequence];
        [v13 setPhoneSequence:v15];

        [v12 start];
        [v13 setStartTime:?];
        [v12 silenceStart];
        [v13 setSilenceStartTime:?];
        [v12 end];
        [v13 setEndTime:?];
        [v13 setRemoveSpaceBefore:a4];
        a4 = [v12 hasSpaceAfter] ^ 1;
        [v12 confidence];
        [v13 setConfidenceScore:v16];
        v17 = [v12 ipaPhoneSequence];
        [v13 setIpaPhoneSequence:v17];

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

+ (BOOL)hasRecognizedAnythingInAFSpeechPackage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 recognition];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 utterances];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) interpretationIndices];
        v9 = [v8 count];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (int64_t)calculateDiffInDaysFromTimestamp:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v5 setTimeZone:v6];

  v7 = MEMORY[0x277CBEAA8];
  [v4 doubleValue];
  v9 = v8;

  v10 = [v7 dateWithTimeIntervalSince1970:v9];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v12 components:16 fromDate:v10 toDate:v11 options:0];
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

+ (float)hostTimeToSeconds:(unint64_t)a3
{
  v3 = a3;
  +[CESRUtilities getHostClockFrequency];
  return v3 / v4;
}

+ (unint64_t)secondsToHostTime:(float)a3
{
  v3 = a3;
  +[CESRUtilities getHostClockFrequency];
  return (v4 * v3);
}

+ (BOOL)isDictationEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  return v3;
}

+ (BOOL)isAssistantEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

+ (id)installedDictationLocaleIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_alloc_init(MEMORY[0x277CDCE98]);
  v4 = MEMORY[0x277CDCE98];
  v5 = [MEMORY[0x277CDCEB8] systemClientId];
  v6 = [v4 subscriptionsForSubscriberId:v5];

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
            v14 = [v12 language];
            [v2 addObject:v14];
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
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 languageCode];

  if (![v3 length])
  {
    v4 = [MEMORY[0x277CEF368] sharedPreferences];
    v5 = [v4 bestSupportedLanguageCodeForLanguageCode:0];

    v3 = v5;
  }

  return v3;
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