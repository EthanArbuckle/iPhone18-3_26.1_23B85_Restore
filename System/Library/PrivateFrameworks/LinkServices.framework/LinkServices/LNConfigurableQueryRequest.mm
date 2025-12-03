@interface LNConfigurableQueryRequest
+ (NSSet)xpcClasses;
+ (id)queryTypes;
+ (id)targetTypes;
- (BOOL)isEqual:(id)equal;
- (LNConfigurableQueryRequest)initWithCoder:(id)coder;
- (LNConfigurableQueryRequest)initWithQueryType:(id)type target:(id)target options:(id)options;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNConfigurableQueryRequest

+ (NSSet)xpcClasses
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  queryTypes = [self queryTypes];
  [v9 unionSet:queryTypes];

  targetTypes = [self targetTypes];
  [v9 unionSet:targetTypes];

  v12 = [v9 copy];

  return v12;
}

+ (id)queryTypes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

+ (id)targetTypes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (LNConfigurableQueryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  queryTypes = [objc_opt_class() queryTypes];
  v6 = [coderCopy decodeObjectOfClasses:queryTypes forKey:@"queryType"];

  targetTypes = [objc_opt_class() targetTypes];
  v8 = [coderCopy decodeObjectOfClasses:targetTypes forKey:@"target"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];

  selfCopy = 0;
  if (v6 && v8)
  {
    self = [(LNConfigurableQueryRequest *)self initWithQueryType:v6 target:v8 options:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queryType = [(LNConfigurableQueryRequest *)self queryType];
  [coderCopy encodeObject:queryType forKey:@"queryType"];

  target = [(LNConfigurableQueryRequest *)self target];
  [coderCopy encodeObject:target forKey:@"target"];

  options = [(LNConfigurableQueryRequest *)self options];
  [coderCopy encodeObject:options forKey:@"options"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    queryType = [(LNConfigurableQueryRequest *)self queryType];
    queryType2 = [(LNConfigurableQueryRequest *)v6 queryType];
    v9 = queryType;
    v10 = queryType2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    target = [(LNConfigurableQueryRequest *)self target];
    target2 = [(LNConfigurableQueryRequest *)v6 target];
    v14 = target;
    v18 = target2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    options = [(LNConfigurableQueryRequest *)self options];
    options2 = [(LNConfigurableQueryRequest *)v6 options];
    v20 = options;
    v23 = options2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNQueryRequestTypeBase *)self->_queryType hash];
  v4 = [(LNQueryRequestTargetBase *)self->_target hash]^ v3;
  return v4 ^ [(LNQueryRequestOptions *)self->_options hash];
}

- (id)description
{
  queryType = [(LNConfigurableQueryRequest *)self queryType];
  v4 = [queryType description];

  target = [(LNConfigurableQueryRequest *)self target];
  v6 = [target description];

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  options = [(LNConfigurableQueryRequest *)self options];
  v11 = [v7 stringWithFormat:@"<%@: %p, type: %@, target: %@, options: %@>", v9, self, v4, v6, options];

  return v11;
}

- (LNConfigurableQueryRequest)initWithQueryType:(id)type target:(id)target options:(id)options
{
  typeCopy = type;
  targetCopy = target;
  optionsCopy = options;
  if (typeCopy)
  {
    if (targetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConfigurableQueryRequest.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"queryType"}];

    if (targetCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConfigurableQueryRequest.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"target"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNConfigurableQueryRequest;
  v13 = [(LNConfigurableQueryRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queryType, type);
    objc_storeStrong(&v14->_target, target);
    if (optionsCopy)
    {
      v15 = optionsCopy;
    }

    else
    {
      v15 = objc_alloc_init(LNQueryRequestOptions);
    }

    options = v14->_options;
    v14->_options = v15;

    v17 = v14;
  }

  return v14;
}

@end