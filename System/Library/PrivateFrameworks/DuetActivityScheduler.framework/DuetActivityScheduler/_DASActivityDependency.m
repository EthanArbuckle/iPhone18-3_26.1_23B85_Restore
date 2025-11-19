@interface _DASActivityDependency
- (BOOL)isEqual:(id)a3;
- (BOOL)isSatisfiedByResult:(id)a3;
- (_DASActivityDependency)initWithCoder:(id)a3;
- (id)description;
- (id)dictionary;
- (id)initActivityCompletionDependencyWithIdentifier:(id)a3;
- (id)initResultDependencyWithIdentifier:(id)a3 batchSize:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASActivityDependency

- (id)initResultDependencyWithIdentifier:(id)a3 batchSize:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _DASActivityDependency;
  v8 = [(_DASActivityDependency *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_batchSize = a4;
  }

  return v9;
}

- (id)initActivityCompletionDependencyWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DASActivityDependency;
  v6 = [(_DASActivityDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v7->_batchSize = -1;
  }

  return v7;
}

- (BOOL)isSatisfiedByResult:(id)a3
{
  v4 = [a3 count];

  return [(_DASActivityDependency *)self isSatisfiedByAvailableResultCount:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_DASActivityDependency *)v5 identifier];
      if ([v6 isEqual:self->_identifier])
      {
        v7 = [(_DASActivityDependency *)v5 batchSize]== self->_batchSize;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  batchSize = self->_batchSize;
  v7 = [(_DASActivityDependency *)self isActivityCompletionBased];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %@: batchSize: %ld, isActivityCompletion: %@>", v4, identifier, batchSize, v8];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_batchSize];
  [v5 encodeObject:v6 forKey:@"batchSize"];
}

- (_DASActivityDependency)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchSize"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 intValue];
    v10 = objc_alloc(objc_opt_class());
    if (v9 == -1)
    {
      v11 = [v10 initActivityCompletionDependencyWithIdentifier:v5];
    }

    else
    {
      v11 = [v10 initResultDependencyWithIdentifier:v5 batchSize:{objc_msgSend(v6, "intValue")}];
    }

    v8 = v11;
  }

  return v8;
}

- (id)dictionary
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(_DASActivityDependency *)self isActivityCompletionBased];
  identifier = self->_identifier;
  if (v3)
  {
    v14 = self->_identifier;
    v15[0] = &unk_1F2ED4908;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v12 = self->_identifier;
    v10 = @"BatchSize";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_batchSize];
    v11 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13 = v7;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

@end