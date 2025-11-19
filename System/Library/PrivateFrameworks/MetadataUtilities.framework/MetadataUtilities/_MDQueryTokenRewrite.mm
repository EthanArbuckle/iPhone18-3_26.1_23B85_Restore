@interface _MDQueryTokenRewrite
- (NSArray)variations;
- (NSString)originalToken;
- (_MDQueryTokenRewrite)initWithOriginalToken:(id)a3 variations:(id)a4;
- (void)dealloc;
- (void)setOriginalToken:(id)a3;
@end

@implementation _MDQueryTokenRewrite

- (_MDQueryTokenRewrite)initWithOriginalToken:(id)a3 variations:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _MDQueryTokenRewrite;
  v6 = [(_MDQueryTokenRewrite *)&v9 init];
  if (v6)
  {
    v6->_originalToken = [a3 copy];
    v6->_variations = [a4 copy];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _MDQueryTokenRewrite;
  [(_MDQueryTokenRewrite *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSString)originalToken
{
  result = self->_originalToken;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setOriginalToken:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, a3, 8);
}

- (NSArray)variations
{
  result = self->_variations;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

@end