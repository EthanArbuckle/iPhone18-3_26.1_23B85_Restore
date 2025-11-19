@interface CNNameStringTokenizer
+ (id)tokenizeNameString:(id)a3;
+ (id)tokenizeNameString:(id)a3 usingLocale:(id)a4 inferredNameOrder:(int64_t *)a5;
+ (void)setInferredNameOrder:(int64_t *)a3 toTokenizerNameOrder:(int)a4;
- (CNNameStringTokenizer)init;
- (CNNameStringTokenizer)initWithLocale:(id)a3;
- (id)tokenizeNameString:(id)a3 inferredNameOrder:(int64_t *)a4;
- (void)dealloc;
@end

@implementation CNNameStringTokenizer

+ (id)tokenizeNameString:(id)a3
{
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [a1 tokenizeNameString:v5 usingLocale:v6 inferredNameOrder:0];

  return v7;
}

+ (id)tokenizeNameString:(id)a3 usingLocale:(id)a4 inferredNameOrder:(int64_t *)a5
{
  v8 = a3;
  v9 = a4;
  if (off_1EF440708(&__block_literal_global_120, v8))
  {
    v10 = 0;
  }

  else
  {
    v11 = [[a1 alloc] initWithLocale:v9];
    v10 = [v11 tokenizeNameString:v8 inferredNameOrder:a5];
  }

  return v10;
}

- (CNNameStringTokenizer)init
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(CNNameStringTokenizer *)self initWithLocale:v3];

  return v4;
}

- (CNNameStringTokenizer)initWithLocale:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNNameStringTokenizer;
  v5 = [(CNNameStringTokenizer *)&v10 init];
  if (v5)
  {
    v11.location = -1;
    v11.length = 0;
    v5->_tokenizer = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1EF441028, v11, 0, v4);
    v6 = objc_alloc_init(CNUnfairLock);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = CNNameStringTokenizer;
  [(CNNameStringTokenizer *)&v4 dealloc];
}

- (id)tokenizeNameString:(id)a3 inferredNameOrder:(int64_t *)a4
{
  v6 = a3;
  if (off_1EF440708(&__block_literal_global_120, v6))
  {
    v7 = 0;
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__9;
    v24 = __Block_byref_object_dispose__9;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v8 = [(CNNameStringTokenizer *)self lock];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__CNNameStringTokenizer_tokenizeNameString_inferredNameOrder___block_invoke;
    v11[3] = &unk_1E6ED77C8;
    v13 = &v26;
    v11[4] = self;
    v12 = v6;
    v14 = &v16;
    v15 = &v20;
    CNRunWithLock(v8, v11);

    [objc_opt_class() setInferredNameOrder:a4 toTokenizerNameOrder:*(v17 + 6)];
    _Block_object_dispose(&v16, 8);
    v9 = v27[3];
    if (v9)
    {
      CFRelease(v9);
    }

    v7 = v21[5];
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }

  return v7;
}

uint64_t __62__CNNameStringTokenizer_tokenizeNameString_inferredNameOrder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) tokenizer];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 8);
  *(*(*(a1 + 48) + 8) + 24) = _CFStringTokenizerCreateNamePartsArrayWithString();
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 48) + 8) + 24)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

+ (void)setInferredNameOrder:(int64_t *)a3 toTokenizerNameOrder:(int)a4
{
  if (a3)
  {
    if (a4 == -1)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0;
    }

    if (a4 == 1)
    {
      v4 = 1;
    }

    *a3 = v4;
  }
}

@end