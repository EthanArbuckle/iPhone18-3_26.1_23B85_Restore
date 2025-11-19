@interface PKEngagementBatchRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEngagementBatchRequest:(id)a3;
- (PKEngagementBatchRequest)initWithDictionary:(id)a3 errorsByRequestID:(id *)a4 error:(id *)a5;
- (id)description;
- (id)parametersByPropertyName;
- (id)propertiesForSource:(unint64_t)a3;
@end

@implementation PKEngagementBatchRequest

- (PKEngagementBatchRequest)initWithDictionary:(id)a3 errorsByRequestID:(id *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v37.receiver = self;
  v37.super_class = PKEngagementBatchRequest;
  v9 = [(PKEngagementBatchRequest *)&v37 init];
  if (v9)
  {
    v10 = [v8 PKDictionaryForKey:@"batch"];
    v11 = v10;
    if (!v10 || ![v10 count])
    {
      *a5 = +[PKEngagementRequest malformedRequest];

      v27 = 0;
      goto LABEL_17;
    }

    v29 = a4;
    v30 = v8;
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = [PKEngagementRequest alloc];
          v32 = 0;
          v21 = [(PKEngagementRequest *)v20 initWithDictionary:v19 error:&v32];
          v22 = v32;
          if (v22)
          {
            v23 = v12;
            v24 = v22;
          }

          else
          {
            v23 = v31;
            v24 = v21;
          }

          [v23 setObject:v24 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v15);
    }

    *v29 = [v12 copy];
    v25 = [v31 copy];
    requests = v9->_requests;
    v9->_requests = v25;

    v8 = v30;
  }

  v27 = v9;
LABEL_17:

  return v27;
}

- (id)propertiesForSource:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_requests;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self->_requests objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        if ([v11 propertySource] == a3)
        {
          v12 = [v11 propertyName];
          [v5 addObject:v12];
        }
      }

      v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)parametersByPropertyName
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_requests;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_requests objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i), v18];
        v10 = [v9 parameters];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 parameters];
          v13 = [v12 count];

          if (v13)
          {
            v14 = [v9 parameters];
            v15 = [v9 propertyName];
            [v3 setObject:v14 forKeyedSubscript:v15];
          }
        }
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v16 = [v3 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKEngagementBatchRequest *)self isEqualToEngagementBatchRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToEngagementBatchRequest:(id)a3
{
  requests = self->_requests;
  v4 = *(a3 + 1);
  if (requests)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return requests == v4;
  }

  else
  {
    return [(NSDictionary *)requests isEqual:?];
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"requests: '%@'; ", self->_requests];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end