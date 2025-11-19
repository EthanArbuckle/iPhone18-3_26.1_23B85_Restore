@interface ITKLexiconChecker
+ (BOOL)englishLexiconCheck:(id)a3;
+ (BOOL)isStringEnglish:(id)a3;
+ (id)createEnglishNormalizedString:(id)a3;
@end

@implementation ITKLexiconChecker

+ (BOOL)englishLexiconCheck:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v55 = a3;
  if (!v55 || (v69 = 0u, v70 = 0u, v67 = 0u, v68 = 0u, (v3 = [&unk_286710BC0 countByEnumeratingWithState:&v67 objects:v82 count:16]) == 0))
  {
    v50 = 0;
    goto LABEL_112;
  }

  v53 = *MEMORY[0x277D23168];
  v54 = *v68;
  *&v4 = 138543618;
  v52 = v4;
  do
  {
    v59 = 0;
    v62 = v3;
    do
    {
      if (*v68 != v54)
      {
        objc_enumerationMutation(&unk_286710BC0);
      }

      v5 = *(*(&v67 + 1) + 8 * v59);
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buffer = 138543362;
        *&buffer[4] = v5;
        _os_log_debug_impl(&dword_254BF2000, v6, OS_LOG_TYPE_DEBUG, "Checking %{public}@ for token membership", buffer, 0xCu);
      }

      v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
      v56 = v55;
      if (_lexiconCheckForLocale(NSLocale *,NSString *)::onceToken != -1)
      {
        +[ITKLexiconChecker englishLexiconCheck:];
      }

      v64 = v7;
      if (_getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::onceToken != -1)
      {
        +[ITKLexiconChecker englishLexiconCheck:];
      }

      [_getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::cacheAccessLock lock];
      v8 = _getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::lexiconSingletonCache;
      v9 = [v64 localeIdentifier];
      v60 = [v8 objectForKeyedSubscript:v9];

      [_getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::cacheAccessLock unlock];
      if (!v60)
      {
        v75 = 0;
        v87 = v53;
        v10 = [v64 localeIdentifier];
        __p[0] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__p forKeys:&v87 count:1];
        v61 = LXLexiconCreate();

        if (!v61 || v75)
        {
          v47 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = [v64 localeIdentifier];
            *buffer = v52;
            *&buffer[4] = v48;
            *&buffer[12] = 2114;
            *&buffer[14] = v75;
            _os_log_error_impl(&dword_254BF2000, v47, OS_LOG_TYPE_ERROR, "Failed to load lexicon for locale identifier: %{public}@: %{public}@", buffer, 0x16u);
          }

          goto LABEL_102;
        }

        [_getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::cacheAccessLock lock];
        v12 = _getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::lexiconSingletonCache;
        v13 = [v64 localeIdentifier];
        [v12 setObject:v61 forKeyedSubscript:v13];

        [_getOrCreateCachedLexiconSingletonForLocale(NSLocale *)::cacheAccessLock unlock];
      }

      v14 = v56;
      v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v57 = v14;
      v16 = [v14 stringByTrimmingCharactersInSet:v15];

      v58 = v16;
      if (v58)
      {
        v17 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v18 = [v58 componentsSeparatedByCharactersInSet:v17];
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v18;
      v19 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (!v19)
      {

LABEL_111:
        v50 = 1;
        goto LABEL_112;
      }

      v66 = *v79;
      v63 = 1;
LABEL_22:
      v20 = 0;
      while (2)
      {
        if (*v79 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v78 + 1) + 8 * v20);
        v75 = 0;
        v76[0] = &v75;
        v76[1] = 0x3032000000;
        v76[2] = __Block_byref_object_copy__0;
        v76[3] = __Block_byref_object_dispose__0;
        v77 = _tokenByNormalizingString(v21);
        if (![*(v76[0] + 40) length])
        {
LABEL_92:
          _Block_object_dispose(&v75, 8);

          goto LABEL_99;
        }

        v22 = *(v76[0] + 40);
        if (_isStringEntirelyPunctuationWhitespaceOrNumeric(NSString *)::onceToken != -1)
        {
          +[ITKLexiconChecker englishLexiconCheck:];
        }

        v23 = [(__CFString *)v22 length];
        std::vector<unsigned int>::vector[abi:ne200100](__p, v23 + 1);
        v24 = __p[0];
        v25 = v23 == -1 || v22 == 0;
        v26 = v25 || __p[0] == 0;
        if (v26 || ((Length = CFStringGetLength(v22), theString = v22, v93 = 0, v94 = Length, (CharactersPtr = CFStringGetCharactersPtr(v22)) == 0) ? (CStringPtr = CFStringGetCStringPtr(v22, 0x600u)) : (CStringPtr = 0), v92 = CStringPtr, v95 = 0, v96 = 0, Length < 1))
        {
LABEL_86:
          v43 = 0;
          goto LABEL_87;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        do
        {
          if (v31 < 0 || v94 <= v31)
          {
            v33 = 0;
LABEL_59:
            v38 = v33;
LABEL_60:
            v24[v32++] = v38;
            v36 = v31 + 1;
            goto LABEL_61;
          }

          if (CharactersPtr)
          {
            v33 = CharactersPtr[v93 + v31];
          }

          else if (v92)
          {
            v33 = v92[v93 + v31];
          }

          else
          {
            if (v96 <= v31 || v30 > v31)
            {
              v34 = v31 - 4;
              if (v31 < 4)
              {
                v34 = 0;
              }

              v35 = v34 + 64;
              if (v34 + 64 >= v94)
              {
                v35 = v94;
              }

              v95 = v34;
              v96 = v35;
              v98.length = v35 - v34;
              v98.location = v93 + v34;
              CFStringGetCharacters(theString, v98, buffer);
              v29 = v95;
            }

            v33 = *&buffer[2 * (v31 - v29)];
            v30 = v29;
          }

          v36 = v31 + 1;
          if (v33 >> 10 != 54 || v36 >= Length)
          {
            goto LABEL_59;
          }

          if (v94 > v36)
          {
            if (CharactersPtr)
            {
              v39 = CharactersPtr[v93 + v36];
            }

            else if (v92)
            {
              v39 = v92[v93 + v36];
            }

            else
            {
              if (v96 <= v36 || v29 > v36)
              {
                v40 = v31 - 3;
                if (v31 < 3)
                {
                  v40 = 0;
                }

                v41 = v40 + 64;
                if (v40 + 64 >= v94)
                {
                  v41 = v94;
                }

                v95 = v40;
                v96 = v41;
                v99.length = v41 - v40;
                v99.location = v93 + v40;
                CFStringGetCharacters(theString, v99, buffer);
                v29 = v95;
              }

              v39 = *&buffer[2 * (v36 - v29)];
              v30 = v29;
            }

            if (v39 >> 10 == 55)
            {
              v38 = (v33 << 10) + v39 - 56613888;
              ++v31;
              goto LABEL_60;
            }
          }

LABEL_61:
          if (v36 >= Length)
          {
            break;
          }

          v25 = v31 == v23;
          v31 = v36;
        }

        while (!v25);
        v3 = v62;
        if (v36 < Length || !v32)
        {
          goto LABEL_86;
        }

        v42 = 0;
        v43 = 1;
        do
        {
          if (([_isStringEntirelyPunctuationWhitespaceOrNumeric(NSString *)::__characterSet longCharacterIsMember:*(__p[0] + v42)] & 1) == 0)
          {
            break;
          }

          v43 = ++v42 < v32;
        }

        while (v32 != v42);
LABEL_87:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (!v43)
        {
          goto LABEL_92;
        }

        *buffer = 0;
        *&buffer[8] = buffer;
        *&buffer[16] = 0x2020000000;
        v89 = 0;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = ___ZL22_lexiconCheckForLocaleP8NSLocaleP8NSString_block_invoke_30;
        v71[3] = &unk_2797AF128;
        v73 = &v75;
        v72 = v64;
        v74 = buffer;
        v44 = MEMORY[0x259C279E0](v71);
        LXLexiconEnumerateEntriesForString();
        if (*(*&buffer[8] + 24))
        {
          v45 = 0;
          v63 = 1;
        }

        else
        {
          LXLexiconEnumerateEntriesForString();
          if (*(*&buffer[8] + 24))
          {
            v45 = 1;
          }

          else
          {
            v46 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              [(ITKLexiconChecker *)buf englishLexiconCheck:v76, &v84, v46];
            }

            v45 = 0;
            v63 = 0;
          }
        }

        _Block_object_dispose(buffer, 8);
        _Block_object_dispose(&v75, 8);

        if (v45)
        {
LABEL_99:
          if (++v20 != v19)
          {
            continue;
          }

          v19 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
          if (!v19)
          {
            break;
          }

          goto LABEL_22;
        }

        break;
      }

      if (v63)
      {
        goto LABEL_111;
      }

LABEL_102:
      ++v59;
    }

    while (v59 != v3);
    v49 = [&unk_286710BC0 countByEnumeratingWithState:&v67 objects:v82 count:16];
    v3 = v49;
    v50 = 0;
  }

  while (v49);
LABEL_112:

  return v50;
}

+ (BOOL)isStringEnglish:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 englishLexiconCheck:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)createEnglishNormalizedString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = v7;
    v9 = v8;
    if (v8)
    {
      v10 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@" "];
    }

    else
    {
      v10 = &stru_28670F9B0;
    }

    v11 = _tokenByNormalizingString(&v10->isa);
  }

  else
  {
    v11 = &stru_28670F9B0;
  }

  return v11;
}

+ (void)englishLexiconCheck:(void *)a3 .cold.4(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_debug_impl(&dword_254BF2000, log, OS_LOG_TYPE_DEBUG, "[Lexicon Check]: '%@' failed the lexicon check", buf, 0xCu);
}

@end