@interface EMFDefaultAutocompleteCandidateProvider
+ (id)providerFromInvertedIndex:(id)a3;
- (EMFDefaultAutocompleteCandidateProvider)initWithBundle:(id)a3;
- (EMFDefaultAutocompleteCandidateProvider)initWithTokens:(id)a3;
- (id)firstMatchForPrefix:(id)a3;
- (id)matchesForPrefix:(id)a3 usingAlgorithm:(unint64_t)a4;
- (void)enumerateCandidatesMatchingPrefix:(id)a3 withEnumerationType:(int64_t)a4 maxCandidates:(unint64_t)a5 usingBlock:(id)a6;
@end

@implementation EMFDefaultAutocompleteCandidateProvider

+ (id)providerFromInvertedIndex:(id)a3
{
  v4 = [a3 termIndex];
  v5 = [v4 allKeys];
  v6 = [v5 copy];

  v7 = [[a1 alloc] initWithTokens:v6];

  return v7;
}

- (EMFDefaultAutocompleteCandidateProvider)initWithBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 URLForResource:@"vocabulary" withExtension:@"plist"];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFDefaultAutocompleteCandidateProvider initWithBundle:v4];
    }

    __assert_rtn("[EMFDefaultAutocompleteCandidateProvider initWithBundle:]", "EMFDefaultAutocompleteCandidateProvider.m", 35, "vocabularyFileURL");
  }

  v6 = v5;
  v10 = 0;
  v7 = [MEMORY[0x1E695DEC8] arrayWithContentsOfURL:v5 error:&v10];
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [EMFDefaultAutocompleteCandidateProvider initWithBundle:v6];
    }

    __assert_rtn("[EMFDefaultAutocompleteCandidateProvider initWithBundle:]", "EMFDefaultAutocompleteCandidateProvider.m", 42, "!deserializationError");
  }

  v8 = [(EMFDefaultAutocompleteCandidateProvider *)self initWithTokens:v7];

  return v8;
}

- (EMFDefaultAutocompleteCandidateProvider)initWithTokens:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMFDefaultAutocompleteCandidateProvider;
  v5 = [(EMFDefaultAutocompleteCandidateProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tokens = v5->_tokens;
    v5->_tokens = v6;
  }

  return v5;
}

- (id)matchesForPrefix:(id)a3 usingAlgorithm:(unint64_t)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 == 3)
  {
    v8 = [(EMFDefaultAutocompleteCandidateProvider *)self firstMatchForPrefix:v6];
    v9 = v8;
    if (v8)
    {
      v17[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__4;
    v15[4] = __Block_byref_object_dispose__4;
    v16 = [v6 copy];
    tokens = self->_tokens;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__EMFDefaultAutocompleteCandidateProvider_matchesForPrefix_usingAlgorithm___block_invoke;
    v14[3] = &unk_1E7A5F8E8;
    v14[4] = v15;
    v12 = [(NSArray *)tokens indexesOfObjectsWithOptions:a4 == 2 passingTest:v14];
    v10 = [(NSArray *)self->_tokens objectsAtIndexes:v12];

    _Block_object_dispose(v15, 8);
  }

  return v10;
}

- (id)firstMatchForPrefix:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__4;
  v11[4] = __Block_byref_object_dispose__4;
  v12 = [v4 copy];
  tokens = self->_tokens;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__EMFDefaultAutocompleteCandidateProvider_firstMatchForPrefix___block_invoke;
  v10[3] = &unk_1E7A5F8E8;
  v10[4] = v11;
  v6 = [(NSArray *)tokens indexOfObjectPassingTest:v10];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_tokens objectAtIndex:v6];
    v7 = [v8 copy];
  }

  _Block_object_dispose(v11, 8);

  return v7;
}

- (void)enumerateCandidatesMatchingPrefix:(id)a3 withEnumerationType:(int64_t)a4 maxCandidates:(unint64_t)a5 usingBlock:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = emf_signpost_get_log();
  v11 = os_signpost_id_generate(v10);

  v12 = emf_signpost_get_log();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AF04E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "YieldAutocompleteCandidates", &unk_1AF0BC4C3, buf, 2u);
  }

  v14 = [(EMFDefaultAutocompleteCandidateProvider *)self matchesForPrefix:v8 usingAlgorithm:2];
  v15 = emf_signpost_get_log();
  v16 = v15;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AF04E000, v16, OS_SIGNPOST_INTERVAL_END, v11, "YieldAutocompleteCandidates", &unk_1AF0BC4C3, buf, 2u);
  }

  buf[0] = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v24;
LABEL_9:
    v22 = 0;
    while (1)
    {
      if (*v24 != v21)
      {
        objc_enumerationMutation(v17);
      }

      if (buf[0])
      {
        break;
      }

      v9[2](v9, *(*(&v23 + 1) + 8 * v22), v20++, buf);
      if (v19 == ++v22)
      {
        v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v19)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }
}

- (void)initWithBundle:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1AF04E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deserialize vocabulary file: '%@'", &v1, 0xCu);
}

- (void)initWithBundle:(void *)a1 .cold.2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundlePath];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_1AF04E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Vocabulary file could not be loaded from the supplied bundle: '%@'", &v2, 0xCu);
}

@end