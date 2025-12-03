@interface EDLexicon
+ (id)current;
+ (id)english;
+ (id)log;
- (BOOL)isRealWord:(id)word;
- (EDLexicon)initWithLocale:(id)locale options:(__CFDictionary *)options;
- (void)_lexiconEnumerateEntries:(_LXLexicon *)entries forString:(id)string completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation EDLexicon

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __16__EDLexicon_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_36 != -1)
  {
    dispatch_once(&log_onceToken_36, block);
  }

  v2 = log_log_36;

  return v2;
}

void __16__EDLexicon_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_36;
  log_log_36 = v1;
}

+ (id)english
{
  if (english_onceToken != -1)
  {
    +[EDLexicon english];
  }

  v3 = english_english;

  return v3;
}

void __20__EDLexicon_english__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ABFE0];
  v4[0] = *MEMORY[0x1E69ABFE8];
  v4[1] = v0;
  v5[0] = @"en";
  v5[1] = MEMORY[0x1E695E118];
  v1 = -[EDLexicon initWithLocale:options:]([EDLexicon alloc], "initWithLocale:options:", @"en", [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2]);
  v2 = english_english;
  english_english = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)current
{
  if (current_onceToken != -1)
  {
    +[EDLexicon current];
  }

  v3 = current_current;

  return v3;
}

void __20__EDLexicon_current__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 localeIdentifier];

  v5 = *MEMORY[0x1E69ABFE8];
  v6[0] = v1;
  v2 = -[EDLexicon initWithLocale:options:]([EDLexicon alloc], "initWithLocale:options:", v1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
  v3 = current_current;
  current_current = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (EDLexicon)initWithLocale:(id)locale options:(__CFDictionary *)options
{
  v14 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = EDLexicon;
  v6 = [(EDLexicon *)&v12 init];
  if (v6)
  {
    v7 = LXLexiconCreate();
    v6->_lexiconRef = v7;
    if (!v7)
    {
      v8 = +[EDLexicon log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [0 ef_publicDescription];
        [(EDLexicon *)localeCopy initWithLocale:ef_publicDescription options:buf, v8];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_lexiconEnumerateEntries:(_LXLexicon *)entries forString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  LXLexiconEnumerateEntriesForString();
}

void __66__EDLexicon__lexiconEnumerateEntries_forString_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = LXEntryCopyString();
  (*(v1 + 16))(v1);
}

- (BOOL)isRealWord:(id)word
{
  wordCopy = word;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __24__EDLexicon_isRealWord___block_invoke;
  v13 = &unk_1E82520B8;
  v5 = wordCopy;
  v14 = v5;
  v15 = &v16;
  v6 = _Block_copy(&v10);
  lexiconRef = self->_lexiconRef;
  if (lexiconRef)
  {
    [(EDLexicon *)self _lexiconEnumerateEntries:lexiconRef forString:v5 completionHandler:v6, v10, v11, v12, v13];
  }

  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8;
}

uint64_t __24__EDLexicon_isRealWord___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) caseInsensitiveCompare:a2];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a3 = 1;
  return result;
}

- (void)dealloc
{
  CFRelease(self->_lexiconRef);
  v3.receiver = self;
  v3.super_class = EDLexicon;
  [(EDLexicon *)&v3 dealloc];
}

- (void)initWithLocale:(uint8_t *)buf options:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ LXLexiconRef: %{public}@", buf, 0x16u);
}

@end