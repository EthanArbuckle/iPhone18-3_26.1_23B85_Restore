@interface GDEntitySimilarityResult
- (GDEntitySimilarityResult)initWithCoder:(id)a3;
- (GDEntitySimilarityResult)initWithRequest:(id)a3 similarityScore:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntitySimilarityResult

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDEntitySimilarityResult<similarityScore: %f, request: %@>", *&self->_similarityScore, self->_request];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  request = self->_request;
  similarityScore = self->_similarityScore;

  return [v4 initWithRequest:request similarityScore:similarityScore];
}

- (GDEntitySimilarityResult)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_request);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_similarityScore);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    [v10 doubleValue];
    v12 = v11;

    self = [(GDEntitySimilarityResult *)self initWithRequest:v7 similarityScore:v12];
    v13 = self;
  }

  else
  {
    v14 = [v4 error];

    if (!v14)
    {
      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = @"GDEntitySimilarityRequest is nil";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v17 = [v15 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v16];
      [v4 failWithError:v17];
    }

    v13 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  similarityScore = self->_similarityScore;
  v6 = a3;
  v7 = [v4 numberWithDouble:similarityScore];
  v8 = NSStringFromSelector(sel_similarityScore);
  [v6 encodeObject:v7 forKey:v8];

  request = self->_request;
  v10 = NSStringFromSelector(sel_request);
  [v6 encodeObject:request forKey:v10];
}

- (GDEntitySimilarityResult)initWithRequest:(id)a3 similarityScore:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GDEntitySimilarityResult;
  v7 = [(GDEntitySimilarityResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    request = v7->_request;
    v7->_request = v8;

    v7->_similarityScore = a4;
  }

  return v7;
}

@end