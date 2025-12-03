@interface MUWebContentBlocker
+ (id)sharedBlocker;
- (BOOL)shouldBlockLoadingOfURL:(id)l;
- (id)_regularExpression;
- (id)patternForBlocking;
@end

@implementation MUWebContentBlocker

+ (id)sharedBlocker
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MUWebContentBlocker_sharedBlocker__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBlocker_onceToken != -1)
  {
    dispatch_once(&sharedBlocker_onceToken, block);
  }

  v2 = sharedBlocker_blocker;

  return v2;
}

uint64_t __36__MUWebContentBlocker_sharedBlocker__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedBlocker_blocker;
  sharedBlocker_blocker = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)patternForBlocking
{
  v2 = *MEMORY[0x1E696F180];
  v3 = *(MEMORY[0x1E696F180] + 8);
  return GEOConfigGetString();
}

- (id)_regularExpression
{
  v19 = *MEMORY[0x1E69E9840];
  patternForBlocking = [(MUWebContentBlocker *)self patternForBlocking];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    regularExpressionCache = self->_regularExpressionCache;
    if (!regularExpressionCache)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v6 = self->_regularExpressionCache;
      self->_regularExpressionCache = v5;

      [(NSCache *)self->_regularExpressionCache setCountLimit:1];
      regularExpressionCache = self->_regularExpressionCache;
    }

    v7 = [(NSCache *)regularExpressionCache objectForKey:patternForBlocking];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v14 = 0;
      v9 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:patternForBlocking options:0 error:&v14];
      v10 = v14;
      if (v9)
      {
        [(NSCache *)self->_regularExpressionCache setObject:v9 forKey:patternForBlocking];
      }

      else
      {
        if (MUGetMUWebContentLog_onceToken_24336 != -1)
        {
          dispatch_once(&MUGetMUWebContentLog_onceToken_24336, &__block_literal_global_24337);
        }

        v11 = MUGetMUWebContentLog_log_24338;
        if (os_log_type_enabled(MUGetMUWebContentLog_log_24338, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v16 = patternForBlocking;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_ERROR, "Error parsing regex pattern '%@': %@", buf, 0x16u);
        }
      }

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)shouldBlockLoadingOfURL:(id)l
{
  lCopy = l;
  _regularExpression = [(MUWebContentBlocker *)self _regularExpression];
  absoluteString = [lCopy absoluteString];

  v7 = 0;
  if (_regularExpression && absoluteString)
  {
    v7 = [_regularExpression numberOfMatchesInString:absoluteString options:0 range:{0, objc_msgSend(absoluteString, "length")}] != 0;
  }

  return v7;
}

@end