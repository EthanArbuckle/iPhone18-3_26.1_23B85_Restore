@interface _MDQueryRewriteContext
- (NSArray)tokenRewrites;
- (_MDQueryRewriteContext)initWithRewrittenTokens:(id)a3;
- (void)dealloc;
- (void)setTokenRewrites:(id)a3;
@end

@implementation _MDQueryRewriteContext

- (_MDQueryRewriteContext)initWithRewrittenTokens:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _MDQueryRewriteContext;
  v4 = [(_MDQueryRewriteContext *)&v7 init];
  if (v4)
  {
    v4->_tokenRewrites = [a3 copy];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _MDQueryRewriteContext;
  [(_MDQueryRewriteContext *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSArray)tokenRewrites
{
  result = self->_tokenRewrites;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setTokenRewrites:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, a3, 8);
}

@end