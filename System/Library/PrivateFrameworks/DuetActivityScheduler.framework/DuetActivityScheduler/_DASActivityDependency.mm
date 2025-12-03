@interface _DASActivityDependency
- (BOOL)isEqual:(id)equal;
- (BOOL)isSatisfiedByResult:(id)result;
- (_DASActivityDependency)initWithCoder:(id)coder;
- (id)description;
- (id)dictionary;
- (id)initActivityCompletionDependencyWithIdentifier:(id)identifier;
- (id)initResultDependencyWithIdentifier:(id)identifier batchSize:(int64_t)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityDependency

- (id)initResultDependencyWithIdentifier:(id)identifier batchSize:(int64_t)size
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = _DASActivityDependency;
  v8 = [(_DASActivityDependency *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_batchSize = size;
  }

  return v9;
}

- (id)initActivityCompletionDependencyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _DASActivityDependency;
  v6 = [(_DASActivityDependency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_batchSize = -1;
  }

  return v7;
}

- (BOOL)isSatisfiedByResult:(id)result
{
  v4 = [result count];

  return [(_DASActivityDependency *)self isSatisfiedByAvailableResultCount:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(_DASActivityDependency *)v5 identifier];
      if ([identifier isEqual:self->_identifier])
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
  isActivityCompletionBased = [(_DASActivityDependency *)self isActivityCompletionBased];
  v8 = @"NO";
  if (isActivityCompletionBased)
  {
    v8 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %@: batchSize: %ld, isActivityCompletion: %@>", v4, identifier, batchSize, v8];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_batchSize];
  [coderCopy encodeObject:v6 forKey:@"batchSize"];
}

- (_DASActivityDependency)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchSize"];

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
    intValue = [v6 intValue];
    v10 = objc_alloc(objc_opt_class());
    if (intValue == -1)
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
  isActivityCompletionBased = [(_DASActivityDependency *)self isActivityCompletionBased];
  identifier = self->_identifier;
  if (isActivityCompletionBased)
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