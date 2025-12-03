@interface _MDQueryRewrite
- (NSString)queryString;
- (_MDQueryRewrite)initWithSearchQueryString:(id)string searchQueryContext:(id)context score:(float)score;
- (float)score;
- (id)searchQueryContext;
- (void)dealloc;
- (void)setQueryString:(id)string;
- (void)setScore:(float)score;
- (void)setSearchQueryContext:(id)context;
@end

@implementation _MDQueryRewrite

- (_MDQueryRewrite)initWithSearchQueryString:(id)string searchQueryContext:(id)context score:(float)score
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self->_queryString = [string copy];
    self->_searchQueryContext = context;
    contextCopy = context;
    self->_score = score;
  }

  v9 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = _MDQueryRewrite;
  [(_MDQueryRewrite *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (NSString)queryString
{
  result = self->_queryString;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setQueryString:(id)string
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, string, 16);
}

- (id)searchQueryContext
{
  result = self->_searchQueryContext;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSearchQueryContext:(id)context
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic(self, a2, context, 24);
}

- (float)score
{
  result = self->_score;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setScore:(float)score
{
  v4 = *MEMORY[0x1E69E9840];
  self->_score = score;
  v3 = *MEMORY[0x1E69E9840];
}

@end