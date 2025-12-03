@interface CKVocabularySearcher
+ (id)makeSearcher;
+ (id)makeSearcherForUserId:(id)id;
+ (void)initialize;
- (CKVocabularySearcher)init;
- (CKVocabularySearcher)initWithUserId:(id)id spanMatcher:(id)matcher prewarm:(BOOL)prewarm;
- (id)_convertMatches:(id)matches;
- (id)_convertResults:(id)results;
- (id)_convertTypes:(id)types;
- (id)_queryFromTokenChain:(id)chain;
- (id)_searcher;
- (id)matchSpansOfString:(id)string;
- (id)matchSpansOfUtterance:(id)utterance;
- (id)searchCustomVocabulary:(id)vocabulary appIds:(id)ids vocabularyTypes:(id)types;
- (id)searchCustomVocabularyWithWildcardPatterns:(id)patterns appIds:(id)ids vocabularyTypes:(id)types;
@end

@implementation CKVocabularySearcher

- (id)_convertMatches:(id)matches
{
  v17 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(matchesCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = matchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CKVMatchingSpan matchingSpanFromSpanMatchResult:*(*(&v12 + 1) + 8 * i), v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_queryFromTokenChain:(id)chain
{
  v37 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  if ([chainCopy isMemberOfClass:objc_opt_class()])
  {
    v24 = chainCopy;
    tokens = [chainCopy tokens];
    v5 = [tokens count];

    if (v5)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2050000000;
      v6 = getSEMSpanMatchQueryBuilderClass_softClass;
      v35 = getSEMSpanMatchQueryBuilderClass_softClass;
      if (!getSEMSpanMatchQueryBuilderClass_softClass)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __getSEMSpanMatchQueryBuilderClass_block_invoke;
        v31[3] = &unk_1E831EBD0;
        v31[4] = &v32;
        __getSEMSpanMatchQueryBuilderClass_block_invoke(v31);
        v6 = v33[3];
      }

      v7 = v6;
      _Block_object_dispose(&v32, 8);
      v8 = [v6 alloc];
      locale = [v24 locale];
      normalizedString = [v24 normalizedString];
      v26 = [v8 initWithLocale:locale originalText:normalizedString];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = [v24 tokens];
      v11 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v11)
      {
        v12 = *v28;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            value = [v14 value];
            cleanValue = [v14 cleanValue];
            normalizedValues = [v14 normalizedValues];
            beginIndex = [v14 beginIndex];
            endIndex = [v14 endIndex];
            isSignificant = [v14 isSignificant];
            LOBYTE(v23) = [v14 isWhitespace];
            [v26 addTokenWithValue:value cleanValue:cleanValue normalizedValues:normalizedValues beginIndex:beginIndex endIndex:endIndex isSignificant:isSignificant isWhitespace:v23];
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v11);
      }

      build = [v26 build];
    }

    else
    {
      build = 0;
    }

    chainCopy = v24;
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)_convertResults:(id)results
{
  v28 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = resultsCopy;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    LODWORD(v6) = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        vocabularyType = [v9 vocabularyType];
        if (vocabularyType == 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2 * (vocabularyType == 2);
        }

        v12 = [CKVCustomTerm alloc];
        v6 = (v6 + 1);
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v6];
        vocabularyString = [v9 vocabularyString];
        vocabularyIdentifier = [v9 vocabularyIdentifier];
        v16 = [(CKVCustomTerm *)v12 initWithItemId:v13 vocabularyType:v11 term:vocabularyString vocabularyId:vocabularyIdentifier];

        v17 = [CKVocabularySearchResult alloc];
        originAppId = [v9 originAppId];
        v19 = [(CKVocabularySearchResult *)v17 initWithVocabularyItem:v16 originAppId:originAppId];

        if (v19)
        {
          [v22 addObject:v19];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  return v22;
}

- (id)_convertTypes:(id)types
{
  v27 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if (typesCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = typesCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        integerValue = [v10 integerValue];
        if (CKVCustomTypeIsValid(integerValue))
        {
          v12 = integerValue;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        if (!CKVCustomTypeIsValid(v12))
        {
          v16 = CKLogContextVocabulary;
          if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v23 = "[CKVocabularySearcher _convertTypes:]";
            v24 = 2112;
            v25 = v10;
            _os_log_error_impl(&dword_1C8683000, v16, OS_LOG_TYPE_ERROR, "%s Invalid vocabulary type: %@", buf, 0x16u);
          }

          v15 = 0;
          goto LABEL_22;
        }

        if (v13 == 1)
        {
          break;
        }

        if (v13 == 2)
        {
          v14 = &unk_1F48585D0;
LABEL_15:
          [v4 addObject:v14];
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v14 = &unk_1F48585B8;
      goto LABEL_15;
    }

LABEL_18:

    v15 = v4;
LABEL_22:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_searcher
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getSEMAppCustomVocabularySearcherClass_softClass;
  v11 = getSEMAppCustomVocabularySearcherClass_softClass;
  if (!getSEMAppCustomVocabularySearcherClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSEMAppCustomVocabularySearcherClass_block_invoke;
    v7[3] = &unk_1E831EBD0;
    v7[4] = &v8;
    __getSEMAppCustomVocabularySearcherClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [[v3 alloc] initWithUserId:self->_userId];

  return v5;
}

- (id)matchSpansOfString:(id)string
{
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 136315650;
      *&buf[4] = "[CKVocabularySearcher matchSpansOfString:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2112;
      v35 = v23;
      _os_log_error_impl(&dword_1C8683000, v19, OS_LOG_TYPE_ERROR, "%s Input must be nonnull object of class %@ received %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if (![stringCopy length])
  {
    v24 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[CKVocabularySearcher matchSpansOfString:]";
      _os_log_debug_impl(&dword_1C8683000, v24, OS_LOG_TYPE_DEBUG, "%s Returning empty results for zero-length string input", buf, 0xCu);
    }

LABEL_12:
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  userId = self->_userId;
  spanMatcher = self->_spanMatcher;
  v29 = 0;
  v7 = [(SEMSpanMatcher *)spanMatcher indexLocaleWithUserId:userId error:&v29];
  v8 = v29;
  if (v7)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v9 = getSEMTokenizerClass_softClass;
    v33 = getSEMTokenizerClass_softClass;
    if (!getSEMTokenizerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSEMTokenizerClass_block_invoke;
      v35 = &unk_1E831EBD0;
      v36 = &v30;
      __getSEMTokenizerClass_block_invoke(buf);
      v9 = v31[3];
    }

    v10 = v9;
    _Block_object_dispose(&v30, 8);
    v11 = [[v9 alloc] initWithLocale:v7];
    v12 = [v11 queryFromText:stringCopy];
    v14 = self->_userId;
    v13 = self->_spanMatcher;
    v28 = v8;
    v15 = [(SEMSpanMatcher *)v13 matchSpans:v12 userId:v14 error:&v28];
    v16 = v28;

    if (v15)
    {
      v17 = [(CKVocabularySearcher *)self _convertMatches:v15];
    }

    else
    {
      v26 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[CKVocabularySearcher matchSpansOfString:]";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        v35 = stringCopy;
        _os_log_error_impl(&dword_1C8683000, v26, OS_LOG_TYPE_ERROR, "%s Failed match spans due to error: %@ input: %@", buf, 0x20u);
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    v8 = v16;
  }

  else
  {
    v25 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[CKVocabularySearcher matchSpansOfString:]";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_error_impl(&dword_1C8683000, v25, OS_LOG_TYPE_ERROR, "%s Failed to resolve index locale: %@", buf, 0x16u);
    }

    v17 = MEMORY[0x1E695E0F0];
  }

LABEL_21:

  return v17;
}

- (id)matchSpansOfUtterance:(id)utterance
{
  v21 = *MEMORY[0x1E69E9840];
  utteranceCopy = utterance;
  v5 = [(CKVocabularySearcher *)self _queryFromTokenChain:utteranceCopy];
  if (v5)
  {
    userId = self->_userId;
    spanMatcher = self->_spanMatcher;
    v14 = 0;
    v8 = [(SEMSpanMatcher *)spanMatcher matchSpans:v5 userId:userId error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = [(CKVocabularySearcher *)self _convertMatches:v8];
    }

    else
    {
      v12 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "[CKVocabularySearcher matchSpansOfUtterance:]";
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = utteranceCopy;
        _os_log_error_impl(&dword_1C8683000, v12, OS_LOG_TYPE_ERROR, "%s Failed match spans due to error: %@ input: %@", buf, 0x20u);
      }

      v10 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v11 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[CKVocabularySearcher matchSpansOfUtterance:]";
      v17 = 2112;
      v18 = utteranceCopy;
      _os_log_error_impl(&dword_1C8683000, v11, OS_LOG_TYPE_ERROR, "%s Received invalid utteranceTokens input: %@", buf, 0x16u);
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)searchCustomVocabularyWithWildcardPatterns:(id)patterns appIds:(id)ids vocabularyTypes:(id)types
{
  patternsCopy = patterns;
  idsCopy = ids;
  v10 = [(CKVocabularySearcher *)self _convertTypes:types];
  v11 = v10;
  if (!types || v10)
  {
    _searcher = [(CKVocabularySearcher *)self _searcher];
    v14 = [_searcher searchAppCustomVocabularyFTSWithWildcardPatterns:patternsCopy appIds:idsCopy types:v11];

    v12 = [(CKVocabularySearcher *)self _convertResults:v14];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)searchCustomVocabulary:(id)vocabulary appIds:(id)ids vocabularyTypes:(id)types
{
  vocabularyCopy = vocabulary;
  idsCopy = ids;
  v10 = [(CKVocabularySearcher *)self _convertTypes:types];
  v11 = v10;
  if (!types || v10)
  {
    _searcher = [(CKVocabularySearcher *)self _searcher];
    v14 = [_searcher searchAppCustomVocabularyFTS:vocabularyCopy appIds:idsCopy types:v11];

    v12 = [(CKVocabularySearcher *)self _convertResults:v14];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (CKVocabularySearcher)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use factory method" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVocabularySearcher)initWithUserId:(id)id spanMatcher:(id)matcher prewarm:(BOOL)prewarm
{
  prewarmCopy = prewarm;
  idCopy = id;
  matcherCopy = matcher;
  v14.receiver = self;
  v14.super_class = CKVocabularySearcher;
  v11 = [(CKVocabularySearcher *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userId, id);
    objc_storeStrong(&v12->_spanMatcher, matcher);
    if (prewarmCopy)
    {
      [(SEMSpanMatcher *)v12->_spanMatcher prewarmIndexWithUserId:idCopy];
    }
  }

  return v12;
}

+ (void)initialize
{
  if (CKLogInit_onceToken != -1)
  {
    dispatch_once(&CKLogInit_onceToken, &__block_literal_global_475);
  }
}

+ (id)makeSearcherForUserId:(id)id
{
  idCopy = id;
  v4 = objc_alloc(objc_opt_class());
  indexMatcher = [getSEMSpanMatcherClass() indexMatcher];
  v6 = [v4 initWithUserId:idCopy spanMatcher:indexMatcher prewarm:1];

  return v6;
}

+ (id)makeSearcher
{
  v2 = objc_alloc(objc_opt_class());
  indexMatcher = [getSEMSpanMatcherClass() indexMatcher];
  v4 = [v2 initWithUserId:0 spanMatcher:indexMatcher prewarm:0];

  return v4;
}

@end