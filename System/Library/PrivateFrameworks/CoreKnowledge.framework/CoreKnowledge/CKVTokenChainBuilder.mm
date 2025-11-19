@interface CKVTokenChainBuilder
- (CKVTokenChainBuilder)init;
- (CKVTokenChainBuilder)initWithString:(id)a3 locale:(id)a4;
- (id)build;
- (void)addToken:(id)a3;
@end

@implementation CKVTokenChainBuilder

- (id)build
{
  v2 = [[CKVTokenChain alloc] initWithString:self->_normalizedString locale:self->_locale tokens:self->_tokens];

  return v2;
}

- (void)addToken:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CKVTokenChainBuilder addToken:]";
      _os_log_error_impl(&dword_1C8683000, v5, OS_LOG_TYPE_ERROR, "%s Cannot add nil token", &v9, 0xCu);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Cannot add nil token"];
  }

  v6 = [(NSMutableArray *)self->_tokens lastObject];
  if (v6)
  {
    v7 = [v4 beginIndex];
    if (v7 < [v6 endIndex])
    {
      v8 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        v10 = "[CKVTokenChainBuilder addToken:]";
        _os_log_error_impl(&dword_1C8683000, v8, OS_LOG_TYPE_ERROR, "%s Start index of token is not valid", &v9, 0xCu);
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Start index of token is not valid"];
    }
  }

  [(NSMutableArray *)self->_tokens addObject:v4];
}

- (CKVTokenChainBuilder)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use CKVTokenChain +tokenChainBuilderForString to initialize a builder" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVTokenChainBuilder)initWithString:(id)a3 locale:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CKVTokenChainBuilder;
  v9 = [(CKVTokenChainBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_normalizedString, a3);
    objc_storeStrong(&v10->_locale, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tokens = v10->_tokens;
    v10->_tokens = v11;
  }

  return v10;
}

@end