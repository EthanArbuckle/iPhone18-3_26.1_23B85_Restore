@interface GDEntitySimilarityResult
- (GDEntitySimilarityResult)initWithCoder:(id)coder;
- (GDEntitySimilarityResult)initWithRequest:(id)request similarityScore:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntitySimilarityResult

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDEntitySimilarityResult<similarityScore: %f, request: %@>", *&self->_similarityScore, self->_request];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  request = self->_request;
  similarityScore = self->_similarityScore;

  return [v4 initWithRequest:request similarityScore:similarityScore];
}

- (GDEntitySimilarityResult)initWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_request);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_similarityScore);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    [v10 doubleValue];
    v12 = v11;

    self = [(GDEntitySimilarityResult *)self initWithRequest:v7 similarityScore:v12];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = @"GDEntitySimilarityRequest is nil";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v17 = [v15 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v16];
      [coderCopy failWithError:v17];
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  similarityScore = self->_similarityScore;
  coderCopy = coder;
  v7 = [v4 numberWithDouble:similarityScore];
  v8 = NSStringFromSelector(sel_similarityScore);
  [coderCopy encodeObject:v7 forKey:v8];

  request = self->_request;
  v10 = NSStringFromSelector(sel_request);
  [coderCopy encodeObject:request forKey:v10];
}

- (GDEntitySimilarityResult)initWithRequest:(id)request similarityScore:(double)score
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = GDEntitySimilarityResult;
  v7 = [(GDEntitySimilarityResult *)&v11 init];
  if (v7)
  {
    v8 = [requestCopy copy];
    request = v7->_request;
    v7->_request = v8;

    v7->_similarityScore = score;
  }

  return v7;
}

@end