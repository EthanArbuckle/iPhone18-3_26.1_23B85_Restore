@interface _MDQueryRewrite
- (NSString)queryString;
- (_MDQueryRewrite)initWithSearchQueryString:(id)a3 searchQueryContext:(id)a4 score:(float)a5;
- (float)score;
- (id)searchQueryContext;
- (void)dealloc;
- (void)setQueryString:(id)a3;
- (void)setScore:(float)a3;
- (void)setSearchQueryContext:(id)a3;
@end

@implementation _MDQueryRewrite

- (_MDQueryRewrite)initWithSearchQueryString:(id)a3 searchQueryContext:(id)a4 score:(float)a5
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self->_queryString = [a3 copy];
    self->_searchQueryContext = a4;
    v8 = a4;
    self->_score = a5;
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

- (void)setQueryString:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, a3, 16);
}

- (id)searchQueryContext
{
  result = self->_searchQueryContext;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSearchQueryContext:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic(self, a2, a3, 24);
}

- (float)score
{
  result = self->_score;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setScore:(float)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_score = a3;
  v3 = *MEMORY[0x1E69E9840];
}

@end