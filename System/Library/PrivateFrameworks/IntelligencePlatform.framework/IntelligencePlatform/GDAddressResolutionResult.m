@interface GDAddressResolutionResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddressResolutionResult:(id)a3;
- (GDAddressResolutionResult)initWithCoder:(id)a3;
- (GDAddressResolutionResult)initWithRankedEntities:(id)a3;
- (NSString)topRankedContactId;
- (NSString)topRankedMdId;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDAddressResolutionResult

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:@"<GDAddressResolutionResult:"];
  [v3 appendString:@"rankedEntities: ["];
  if ([(NSArray *)self->_rankedEntities count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_rankedEntities objectAtIndexedSubscript:v4];
      v6 = [v5 description];
      [v3 appendFormat:@"'%@'", v6];

      if (v4 < [(NSArray *)self->_rankedEntities count]- 1)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)self->_rankedEntities count]);
  }

  [v3 appendString:@"]>"];

  return v3;
}

- (NSString)topRankedContactId
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_rankedEntities count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_rankedEntities;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [v7 contactId];
          v9 = [v8 length];

          if (v9)
          {
            v4 = [v7 contactId];
            goto LABEL_12;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)topRankedMdId
{
  if ([(NSArray *)self->_rankedEntities count])
  {
    v3 = [(NSArray *)self->_rankedEntities objectAtIndexedSubscript:0];
    v4 = [v3 mdId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GDAddressResolutionResult)initWithRankedEntities:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDAddressResolutionResult;
  v6 = [(GDAddressResolutionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankedEntities, a3);
  }

  return v7;
}

- (BOOL)isEqualToAddressResolutionResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4)
  {
    rankedEntities = self->_rankedEntities;
    v7 = [(GDAddressResolutionResult *)v4 rankedEntities];
    v8 = [(NSArray *)rankedEntities isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionResult *)self isEqualToAddressResolutionResult:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDAddressResolutionResult allocWithZone:a3];
  rankedEntities = self->_rankedEntities;

  return [(GDAddressResolutionResult *)v4 initWithRankedEntities:rankedEntities];
}

- (GDAddressResolutionResult)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = NSStringFromSelector(sel_rankedEntities);
  v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];

  if (v10)
  {
    self = [(GDAddressResolutionResult *)self initWithRankedEntities:v10];
    v11 = self;
  }

  else
  {
    v12 = [v4 error];

    if (!v12)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"GDAddressResolutionResult rankedEntities could not be decoded";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v14];
      [v4 failWithError:v15];
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  rankedEntities = self->_rankedEntities;
  v4 = a3;
  v5 = NSStringFromSelector(sel_rankedEntities);
  [v4 encodeObject:rankedEntities forKey:v5];
}

@end