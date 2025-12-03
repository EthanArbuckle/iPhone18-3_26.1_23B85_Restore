@interface CKVLocalization
+ (id)defaultLocalization;
+ (id)supportedLanguageCodeFromLocale:(id)locale;
+ (id)supportedNSLocaleFromLanguageCode:(id)code;
+ (int64_t)supportedLocaleFromLanguageCode:(id)code;
- (BOOL)_locateMorphunAssetForLocale:(id)locale outAssetPath:(id *)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocalization:(id)localization;
- (CKVLocalization)init;
- (CKVLocalization)initWithCoder:(id)coder;
- (CKVLocalization)initWithSiriLanguageCode:(id)code;
- (id)allLanguageCodes;
- (id)dictationLanguageCodes;
- (id)siriLanguageCode;
- (int64_t)locateMorphunAssetForSiriLanguage:(id *)language error:(id *)error;
- (void)refresh;
@end

@implementation CKVLocalization

- (BOOL)_locateMorphunAssetForLocale:(id)locale outAssetPath:(id *)path error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  if (![MEMORY[0x1E69B2870] isLocaleEmbedded:localeCopy])
  {
    v51 = 0;
    v10 = [MEMORY[0x1E69B2870] getAssetPathForLocale:localeCopy withError:&v51];
    v11 = v51;
    v12 = v11;
    if (v10)
    {
      v13 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
      {
        v39 = v13;
        localeIdentifier = [localeCopy localeIdentifier];
        *buf = 136315650;
        v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
        v56 = 2112;
        v57 = localeIdentifier;
        v58 = 2112;
        v59 = v10;
        _os_log_debug_impl(&dword_1C8683000, v39, OS_LOG_TYPE_DEBUG, "%s Resolved asset path for locale (%@) %@", buf, 0x20u);

        if (!path)
        {
          goto LABEL_13;
        }
      }

      else if (!path)
      {
LABEL_13:
        v9 = 1;
LABEL_14:
        v16 = v12;
LABEL_15:

        goto LABEL_16;
      }

      v14 = v10;
      *path = v10;
      goto LABEL_13;
    }

    if ([v11 code] == 1)
    {
      v15 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
      {
        v42 = v15;
        localeIdentifier2 = [localeCopy localeIdentifier];
        *buf = 136315394;
        v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
        v56 = 2112;
        v57 = localeIdentifier2;
        _os_log_debug_impl(&dword_1C8683000, v42, OS_LOG_TYPE_DEBUG, "%s Locale: %@ is unsupported by MorphunAssets - proceeding without asset path", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_13;
    }

    assetRequestCount = self->_assetRequestCount;
    self->_assetRequestCount = assetRequestCount + 1;
    if (assetRequestCount)
    {
      v19 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A578];
      v20 = MEMORY[0x1E696AEC0];
      localeIdentifier3 = [localeCopy localeIdentifier];
      v22 = [v20 stringWithFormat:@"Previous attempt to request Morphun asset failed for locale: %@ attempts: %u", localeIdentifier3, self->_assetRequestCount];
      v53 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v24 = [v19 errorWithDomain:@"com.apple.siri.vocabulary.localization" code:2 userInfo:v23];
      KVSetAndReportError();

      LODWORD(localeIdentifier3) = self->_assetRequestCount;
      v25 = CKLogContextVocabulary;
      v26 = os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO);
      if (localeIdentifier3 == 2)
      {
        if (v26)
        {
          v27 = v25;
          localeIdentifier4 = [localeCopy localeIdentifier];
          *buf = 136315394;
          v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
          v56 = 2112;
          v57 = localeIdentifier4;
          _os_log_impl(&dword_1C8683000, v27, OS_LOG_TYPE_INFO, "%s Issuing a non-blocking MorphunAssets download request for locale: %@", buf, 0x16u);
        }

        v29 = MEMORY[0x1E69B2870];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __67__CKVLocalization__locateMorphunAssetForLocale_outAssetPath_error___block_invoke;
        v48[3] = &unk_1E831E4B8;
        v49 = localeCopy;
        [v29 onDemandDownloadForLocale:v49 withProgress:0 withCompletion:v48];
      }

      else if (v26)
      {
        v37 = v25;
        localeIdentifier5 = [localeCopy localeIdentifier];
        *buf = 136315394;
        v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
        v56 = 2112;
        v57 = localeIdentifier5;
        _os_log_impl(&dword_1C8683000, v37, OS_LOG_TYPE_INFO, "%s MorphunAssets download attempts exhausted for locale: %@", buf, 0x16u);
      }

      v10 = 0;
      v9 = 0;
      goto LABEL_14;
    }

    v30 = dispatch_time(0, 60000000000);
    v31 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v32 = v31;
      localeIdentifier6 = [localeCopy localeIdentifier];
      *buf = 136315650;
      v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
      v56 = 2112;
      v57 = localeIdentifier6;
      v58 = 1024;
      LODWORD(v59) = 60;
      _os_log_impl(&dword_1C8683000, v32, OS_LOG_TYPE_INFO, "%s Issuing a blocking MorphunAssets download request for locale: %@ with timeout of %d s", buf, 0x1Cu);
    }

    v16 = [MEMORY[0x1E69B2870] blockingOnDemandDownloadForLocale:localeCopy withTimeout:v30 withProgress:0];

    if (v16)
    {
      v34 = CKLogContextVocabulary;
      if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        KVSetAndReportError();
        v10 = 0;
        v9 = 0;
        goto LABEL_15;
      }

      v45 = v34;
      localeIdentifier7 = [localeCopy localeIdentifier];
      *buf = 136315650;
      v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
      v56 = 2112;
      v57 = localeIdentifier7;
      v58 = 2112;
      v59 = v16;
      v47 = "%s MorphunAssets download request failed for locale: %@ error: %@";
    }

    else
    {
      v50 = 0;
      v10 = [MEMORY[0x1E69B2870] getAssetPathForLocale:localeCopy withError:&v50];
      v16 = v50;
      if (v10)
      {
        if (path)
        {
          v41 = v10;
          *path = v10;
        }

        v9 = 1;
        goto LABEL_15;
      }

      v44 = CKLogContextVocabulary;
      if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v45 = v44;
      localeIdentifier7 = [localeCopy localeIdentifier];
      *buf = 136315650;
      v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
      v56 = 2112;
      v57 = localeIdentifier7;
      v58 = 2112;
      v59 = v16;
      v47 = "%s Failed to get asset path for locale: %@ after download. error: %@";
    }

    _os_log_error_impl(&dword_1C8683000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x20u);

    goto LABEL_26;
  }

  v8 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
  {
    v35 = v8;
    localeIdentifier8 = [localeCopy localeIdentifier];
    *buf = 136315394;
    v55 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]";
    v56 = 2112;
    v57 = localeIdentifier8;
    _os_log_debug_impl(&dword_1C8683000, v35, OS_LOG_TYPE_DEBUG, "%s Locale %@ is embedded.", buf, 0x16u);
  }

  v9 = 1;
LABEL_16:

  return v9;
}

void __67__CKVLocalization__locateMorphunAssetForLocale_outAssetPath_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 localeIdentifier];
    v10 = 136315906;
    v11 = "[CKVLocalization _locateMorphunAssetForLocale:outAssetPath:error:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s MorphunAssets download completion invoked for locale: %@ result: %d error: %@", &v10, 0x26u);
  }

  if (v5)
  {
    KVSetAndReportError();
  }
}

- (int64_t)locateMorphunAssetForSiriLanguage:(id *)language error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__532;
  v13 = __Block_byref_object_dispose__533;
  v14 = 0;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CKVLocalization_locateMorphunAssetForSiriLanguage_error___block_invoke;
  v8[3] = &unk_1E831E490;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  v8[7] = error;
  dispatch_sync(queue, v8);
  v6 = v16[3];
  if (language && v6)
  {
    *language = v10[5];
    v6 = v16[3];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __59__CKVLocalization_locateMorphunAssetForSiriLanguage_error___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 36) == 1)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), *(v2 + 24));
LABEL_6:
    *(*(a1[6] + 8) + 24) = [objc_opt_class() supportedLocaleFromLanguageCode:*(a1[4] + 8)];
    return;
  }

  v3 = [objc_opt_class() supportedNSLocaleFromLanguageCode:*(a1[4] + 8)];
  if (v3)
  {
    v4 = a1[4];
    v5 = *(a1[5] + 8);
    obj = *(v5 + 40);
    v6 = [v4 _locateMorphunAssetForLocale:v3 outAssetPath:&obj error:a1[7]];
    objc_storeStrong((v5 + 40), obj);
    if (v6)
    {
      *(a1[4] + 36) = 1;
      objc_storeStrong((a1[4] + 24), *(*(a1[5] + 8) + 40));

      goto LABEL_6;
    }
  }

  else
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1[4] + 8);
      *buf = 136315394;
      v17 = "[CKVLocalization locateMorphunAssetForSiriLanguage:error:]_block_invoke";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Unsupported Siri Language: %@", buf, 0x16u);
    }

    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported Siri Language: %@", *(a1[4] + 8)];
    v15 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:@"com.apple.siri.vocabulary.localization" code:1 userInfo:v11];
    KVSetError();
  }
}

- (id)allLanguageCodes
{
  v3 = MEMORY[0x1E695DFA8];
  dictationLanguageCodes = [(CKVLocalization *)self dictationLanguageCodes];
  v5 = [v3 setWithSet:dictationLanguageCodes];

  siriLanguageCode = [(CKVLocalization *)self siriLanguageCode];
  if (siriLanguageCode)
  {
    [v5 addObject:siriLanguageCode];
  }

  return v5;
}

- (void)refresh
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CKVLocalization_refresh__block_invoke;
  block[3] = &unk_1E831E828;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__CKVLocalization_refresh__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[CKVAssistantSettingsBridge currentSiriLanguageCode];
  v3 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 8);
    v10 = 136315650;
    v11 = "[CKVLocalization refresh]_block_invoke";
    v12 = 2112;
    v13 = v2;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s Siri language is %@, previously %@", &v10, 0x20u);
  }

  if (([v2 isEqual:*(*(a1 + 32) + 8)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 8), v2);
    *(*(a1 + 32) + 32) = 0;
    *(*(a1 + 32) + 36) = 0;
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  v7 = +[CKVAssistantSettingsBridge currentDictationLanguageCodes];
  v8 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(a1 + 32) + 16);
    v10 = 136315650;
    v11 = "[CKVLocalization refresh]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1C8683000, v8, OS_LOG_TYPE_INFO, "%s Dictation languages are %@, previously %@", &v10, 0x20u);
  }

  if (([v7 isEqual:*(*(a1 + 32) + 16)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 16), v7);
  }
}

- (id)dictationLanguageCodes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__532;
  v10 = __Block_byref_object_dispose__533;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__CKVLocalization_dictationLanguageCodes__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__CKVLocalization_dictationLanguageCodes__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = +[CKVAssistantSettingsBridge currentDictationLanguageCodes];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (id)siriLanguageCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__532;
  v10 = __Block_byref_object_dispose__533;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CKVLocalization_siriLanguageCode__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isEqualToLocalization:(id)localization
{
  localizationCopy = localization;
  siriLanguageCode = [(CKVLocalization *)self siriLanguageCode];
  siriLanguageCode2 = [localizationCopy siriLanguageCode];

  LOBYTE(localizationCopy) = [siriLanguageCode isEqual:siriLanguageCode2];
  return localizationCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVLocalization *)self isEqualToLocalization:v5];
  }

  return v6;
}

- (CKVLocalization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l"];

  if (v5)
  {
    self = [(CKVLocalization *)self initWithSiriLanguageCode:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CKVLocalization)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVLocalization)initWithSiriLanguageCode:(id)code
{
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = CKVLocalization;
  v5 = [(CKVLocalization *)&v13 init];
  if (v5)
  {
    v6 = [codeCopy copy];
    siriLanguageCode = v5->_siriLanguageCode;
    v5->_siriLanguageCode = v6;

    dictationLanguageCodes = v5->_dictationLanguageCodes;
    v5->_dictationLanguageCodes = 0;

    v5->_assetRequestCount = 0;
    v5->_assetResolved = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("CKVLocalization", v9);
    queue = v5->_queue;
    v5->_queue = v10;
  }

  return v5;
}

+ (id)supportedLanguageCodeFromLocale:(id)locale
{
  if (KVLocaleTypeFromNSLocale())
  {
    v3 = KVLocaleTypeName();
    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)supportedLocaleFromLanguageCode:(id)code
{
  v12 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v4 = [codeCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v5 = KVLocaleTypeFromName();

  if (!v5)
  {
    v6 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[CKVLocalization supportedLocaleFromLanguageCode:]";
      v10 = 2112;
      v11 = codeCopy;
      _os_log_error_impl(&dword_1C8683000, v6, OS_LOG_TYPE_ERROR, "%s Unsupported language code (%@)", &v8, 0x16u);
    }
  }

  return v5;
}

+ (id)supportedNSLocaleFromLanguageCode:(id)code
{
  codeCopy = code;
  v4 = [objc_opt_class() supportedLocaleFromLanguageCode:codeCopy];

  return MEMORY[0x1EEE185F0](v4);
}

+ (id)defaultLocalization
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[CKVAssistantSettingsBridge currentSiriLanguageCode];
  v4 = [v2 initWithSiriLanguageCode:v3];

  return v4;
}

@end