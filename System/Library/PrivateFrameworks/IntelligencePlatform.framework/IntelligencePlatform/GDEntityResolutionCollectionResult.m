@interface GDEntityResolutionCollectionResult
- (GDEntityResolutionCollectionResult)initWithCandidates:(id)a3;
- (GDEntityResolutionCollectionResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntityResolutionCollectionResult

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(GDEntityResolutionCollectionResult *)self candidates];
  v4 = [v2 stringWithFormat:@"<GDEntityResolutionCollectionCandidates: %@>", v3];

  return v4;
}

- (GDEntityResolutionCollectionResult)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_candidates);
  v9 = [v4 decodeObjectOfClasses:v7 forKey:v8];

  if (v9)
  {
    self = [(GDEntityResolutionCollectionResult *)self initWithCandidates:v9];
    v10 = self;
  }

  else
  {
    v11 = [v4 error];

    if (!v11)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"GDEntityResolutionCollectionResult candidates is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [v4 failWithError:v14];
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  candidates = self->_candidates;
  v4 = a3;
  v5 = NSStringFromSelector(sel_candidates);
  [v4 encodeObject:candidates forKey:v5];
}

- (GDEntityResolutionCollectionResult)initWithCandidates:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDEntityResolutionCollectionResult;
  v5 = [(GDEntityResolutionCollectionResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  return v5;
}

@end