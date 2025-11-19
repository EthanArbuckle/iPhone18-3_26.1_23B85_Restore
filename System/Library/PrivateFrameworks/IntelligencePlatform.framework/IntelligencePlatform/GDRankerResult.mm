@interface GDRankerResult
- (GDRankerResult)initWithCoder:(id)a3;
- (GDRankerResult)initWithRankedEntities:(id)a3;
- (GDRankerResult)initWithSpan:(id)a3 rankedEntities:(id)a4 entityClass:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDRankerResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDRankerResult *)self span];
  v5 = [(GDRankerResult *)self rankedItems];
  v6 = [v3 stringWithFormat:@"<GDRankerResult: span: %@, entities: %@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  entityClass = self->_entityClass;
  rankedItems = self->_rankedItems;
  span = self->_span;

  return [v4 initWithSpan:span rankedEntities:rankedItems entityClass:entityClass];
}

- (GDRankerResult)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_span);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([v4 error], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_rankedItems);
    v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_entityClass);
      v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

      if (v15 || ([v4 error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(GDRankerResult *)self initWithSpan:v7 rankedEntities:v12 entityClass:v15];
        v16 = self;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v18 = [v4 error];

      if (!v18)
      {
        v19 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v26[0] = @"GDRankerResult rankedEntities is nil";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v21 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v20];
        [v4 failWithError:v21];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  span = self->_span;
  v5 = a3;
  v6 = NSStringFromSelector(sel_span);
  [v5 encodeObject:span forKey:v6];

  rankedItems = self->_rankedItems;
  v8 = NSStringFromSelector(sel_rankedItems);
  [v5 encodeObject:rankedItems forKey:v8];

  entityClass = self->_entityClass;
  v10 = NSStringFromSelector(sel_entityClass);
  [v5 encodeObject:entityClass forKey:v10];
}

- (GDRankerResult)initWithRankedEntities:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDRankerResult;
  v5 = [(GDRankerResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rankedItems = v5->_rankedItems;
    v5->_rankedItems = v6;
  }

  return v5;
}

- (GDRankerResult)initWithSpan:(id)a3 rankedEntities:(id)a4 entityClass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = GDRankerResult;
  v11 = [(GDRankerResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    span = v11->_span;
    v11->_span = v12;

    v14 = [v9 copy];
    rankedItems = v11->_rankedItems;
    v11->_rankedItems = v14;

    v16 = [v10 copy];
    entityClass = v11->_entityClass;
    v11->_entityClass = v16;
  }

  return v11;
}

@end