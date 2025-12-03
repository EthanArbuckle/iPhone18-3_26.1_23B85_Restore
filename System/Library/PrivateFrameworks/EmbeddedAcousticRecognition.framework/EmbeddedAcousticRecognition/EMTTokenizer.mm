@interface EMTTokenizer
- (EMTTokenizer)initWithModelURL:(id)l;
- (id)format:(id)format;
- (id)format:(id)format preToPostItnMap:(id)map;
@end

@implementation EMTTokenizer

- (EMTTokenizer)initWithModelURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = EMTTokenizer;
  v5 = [(EMTTokenizer *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.sequoia.tokenizer", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = v5->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__EMTTokenizer_initWithModelURL___block_invoke;
    v10[3] = &unk_1E7C1A5C0;
    v11 = lCopy;
    v12 = v5;
    dispatch_async(v8, v10);
  }

  return v5;
}

void __33__EMTTokenizer_initWithModelURL___block_invoke(uint64_t a1)
{
  v17 = [*(a1 + 32) URLByAppendingPathComponent:@"mini.json"];
  v2 = [v17 path];
  v3 = [_EARFormatter supportedByQuasarConfig:v2];

  if (v3)
  {
    v4 = [_EARFormatter alloc];
    v5 = [v17 path];
    v6 = [(_EARFormatter *)v4 initWithLanguage:&stru_1F2D44B60 withSdapiConfig:&stru_1F2D44B60 quasarConfig:v5];
    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;
  }

  else
  {
    v5 = [*(a1 + 32) URLByAppendingPathComponent:@"ncs/dispatch.voc"];
    v8 = [*(a1 + 32) URLByAppendingPathComponent:@"ncs/lexicon.enh"];
    v9 = [*(a1 + 32) URLByAppendingPathComponent:@"ncs/itn_s.enh"];
    v10 = [_EARFormatter alloc];
    v11 = [v5 path];
    v12 = [v8 path];
    v13 = [v9 path];
    v14 = [(_EARFormatter *)v10 initWithGeneralVoc:v11 withLexiconEnh:v12 withItnEnh:v13];
    v15 = *(a1 + 40);
    v16 = *(v15 + 8);
    *(v15 + 8) = v14;
  }
}

- (id)format:(id)format preToPostItnMap:(id)map
{
  v35 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  mapCopy = map;
  tokens = [formatCopy tokens];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tokens, "count")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = tokens;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        text = [*(*(&v30 + 1) + 8 * i) text];
        [v9 addObject:text];
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __39__EMTTokenizer_format_preToPostItnMap___block_invoke;
  v20[3] = &unk_1E7C1B7E0;
  v20[4] = self;
  v21 = v9;
  v22 = mapCopy;
  v23 = &v24;
  v16 = mapCopy;
  v17 = v9;
  dispatch_sync(queue, v20);
  v18 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v18;
}

void __39__EMTTokenizer_format_preToPostItnMap___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) formattedStringWithStrings:a1[5] preToPostItnArray:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)format:(id)format
{
  v30 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  tokens = [formatCopy tokens];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tokens, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = tokens;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        text = [*(*(&v25 + 1) + 8 * i) text];
        [v6 addObject:text];
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__EMTTokenizer_format___block_invoke;
  block[3] = &unk_1E7C1A500;
  v17 = v6;
  v18 = &v19;
  block[4] = self;
  v13 = v6;
  dispatch_sync(queue, block);
  v14 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v14;
}

void __23__EMTTokenizer_format___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) formattedStringWithStrings:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end