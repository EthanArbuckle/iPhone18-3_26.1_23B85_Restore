@interface GDRankerResult
- (GDRankerResult)initWithCoder:(id)coder;
- (GDRankerResult)initWithRankedEntities:(id)entities;
- (GDRankerResult)initWithSpan:(id)span rankedEntities:(id)entities entityClass:(id)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDRankerResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  span = [(GDRankerResult *)self span];
  rankedItems = [(GDRankerResult *)self rankedItems];
  v6 = [v3 stringWithFormat:@"<GDRankerResult: span: %@, entities: %@>", span, rankedItems];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  entityClass = self->_entityClass;
  rankedItems = self->_rankedItems;
  span = self->_span;

  return [v4 initWithSpan:span rankedEntities:rankedItems entityClass:entityClass];
}

- (GDRankerResult)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_span);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([coderCopy error], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_rankedItems);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_entityClass);
      v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

      if (v15 || ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
      {
        self = [(GDRankerResult *)self initWithSpan:v7 rankedEntities:v12 entityClass:v15];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      error = [coderCopy error];

      if (!error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v26[0] = @"GDRankerResult rankedEntities is nil";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        v21 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v20];
        [coderCopy failWithError:v21];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  span = self->_span;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_span);
  [coderCopy encodeObject:span forKey:v6];

  rankedItems = self->_rankedItems;
  v8 = NSStringFromSelector(sel_rankedItems);
  [coderCopy encodeObject:rankedItems forKey:v8];

  entityClass = self->_entityClass;
  v10 = NSStringFromSelector(sel_entityClass);
  [coderCopy encodeObject:entityClass forKey:v10];
}

- (GDRankerResult)initWithRankedEntities:(id)entities
{
  entitiesCopy = entities;
  v9.receiver = self;
  v9.super_class = GDRankerResult;
  v5 = [(GDRankerResult *)&v9 init];
  if (v5)
  {
    v6 = [entitiesCopy copy];
    rankedItems = v5->_rankedItems;
    v5->_rankedItems = v6;
  }

  return v5;
}

- (GDRankerResult)initWithSpan:(id)span rankedEntities:(id)entities entityClass:(id)class
{
  spanCopy = span;
  entitiesCopy = entities;
  classCopy = class;
  v19.receiver = self;
  v19.super_class = GDRankerResult;
  v11 = [(GDRankerResult *)&v19 init];
  if (v11)
  {
    v12 = [spanCopy copy];
    span = v11->_span;
    v11->_span = v12;

    v14 = [entitiesCopy copy];
    rankedItems = v11->_rankedItems;
    v11->_rankedItems = v14;

    v16 = [classCopy copy];
    entityClass = v11->_entityClass;
    v11->_entityClass = v16;
  }

  return v11;
}

@end