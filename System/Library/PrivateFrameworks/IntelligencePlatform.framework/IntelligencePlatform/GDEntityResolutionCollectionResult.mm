@interface GDEntityResolutionCollectionResult
- (GDEntityResolutionCollectionResult)initWithCandidates:(id)candidates;
- (GDEntityResolutionCollectionResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityResolutionCollectionResult

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  candidates = [(GDEntityResolutionCollectionResult *)self candidates];
  v4 = [v2 stringWithFormat:@"<GDEntityResolutionCollectionCandidates: %@>", candidates];

  return v4;
}

- (GDEntityResolutionCollectionResult)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_candidates);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  if (v9)
  {
    self = [(GDEntityResolutionCollectionResult *)self initWithCandidates:v9];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"GDEntityResolutionCollectionResult candidates is nil";
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
  candidates = self->_candidates;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_candidates);
  [coderCopy encodeObject:candidates forKey:v5];
}

- (GDEntityResolutionCollectionResult)initWithCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v9.receiver = self;
  v9.super_class = GDEntityResolutionCollectionResult;
  v5 = [(GDEntityResolutionCollectionResult *)&v9 init];
  if (v5)
  {
    v6 = [candidatesCopy copy];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  return v5;
}

@end