@interface PKFeatureFailureCollection
- (BOOL)isEqual:(id)equal;
- (PKFeatureFailureCollection)initWithArray:(id)array;
- (PKFeatureFailureCollection)initWithCoder:(id)coder;
- (id)description;
- (id)errorForFeature:(unint64_t)feature;
- (unint64_t)hash;
@end

@implementation PKFeatureFailureCollection

- (PKFeatureFailureCollection)initWithArray:(id)array
{
  v26 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v24.receiver = self;
    v24.super_class = PKFeatureFailureCollection;
    v5 = [(PKFeatureFailureCollection *)&v24 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      failuresByFeature = v5->_failuresByFeature;
      v5->_failuresByFeature = v6;

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = arrayCopy;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[PKFeatureFailure alloc] initWithDictionary:v13];
              featureIdentifier = [(PKFeatureFailure *)v14 featureIdentifier];
              v16 = v5->_failuresByFeature;
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:featureIdentifier];
              [(NSMutableDictionary *)v16 setObject:v14 forKey:v17];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v10);
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)errorForFeature:(unint64_t)feature
{
  failuresByFeature = self->_failuresByFeature;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  v5 = [(NSMutableDictionary *)failuresByFeature objectForKey:v4];

  errorRepresentation = [v5 errorRepresentation];

  return errorRepresentation;
}

- (PKFeatureFailureCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKFeatureFailureCollection;
  v5 = [(PKFeatureFailureCollection *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"failuresByFeature"];
    failuresByFeature = v5->_failuresByFeature;
    v5->_failuresByFeature = v10;
  }

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_failuresByFeature];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    failuresByFeature = self->_failuresByFeature;
    v8 = equalCopy[1];
    if (failuresByFeature && v8)
    {
      v6 = [(NSMutableDictionary *)failuresByFeature isEqual:?];
    }

    else
    {
      v6 = failuresByFeature == v8;
    }
  }

  return v6;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_failuresByFeature;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = PKFeatureIdentifierToString([v9 integerValue]);
        v11 = [(NSMutableDictionary *)self->_failuresByFeature objectForKey:v9];
        [v3 appendFormat:@"'%@' -> %@", v10, v11, v14];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@">"];
  v12 = [v3 copy];

  return v12;
}

@end