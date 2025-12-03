@interface GDEntityResolutionResult
- (GDEntityResolutionResult)initWithCoder:(id)coder;
- (GDEntityResolutionResult)initWithRankedResults:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityResolutionResult

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  rankedResults = [(GDEntityResolutionResult *)self rankedResults];
  v4 = [v2 stringWithFormat:@"<GDEntityResolutionResult: %@>", rankedResults];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rankedResults = self->_rankedResults;

  return [v4 initWithRankedResults:rankedResults];
}

- (GDEntityResolutionResult)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_rankedResults);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  if (v9)
  {
    self = [(GDEntityResolutionResult *)self initWithRankedResults:v9];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"GDEntityResolutionResult rankedResults is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [coderCopy failWithError:v14];
    }

    selfCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  rankedResults = self->_rankedResults;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_rankedResults);
  [coderCopy encodeObject:rankedResults forKey:v5];
}

- (GDEntityResolutionResult)initWithRankedResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = GDEntityResolutionResult;
  v5 = [(GDEntityResolutionResult *)&v9 init];
  if (v5)
  {
    v6 = [resultsCopy copy];
    rankedResults = v5->_rankedResults;
    v5->_rankedResults = v6;
  }

  return v5;
}

@end