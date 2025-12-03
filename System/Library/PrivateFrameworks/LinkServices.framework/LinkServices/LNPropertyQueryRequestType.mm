@interface LNPropertyQueryRequestType
- (BOOL)isEqual:(id)equal;
- (LNPropertyQueryRequestType)initWithCoder:(id)coder;
- (LNPropertyQueryRequestType)initWithPropertyQuery:(id)query sortingOptions:(id)options maximumResultCount:(id)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPropertyQueryRequestType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 0;
LABEL_27:

      goto LABEL_28;
    }

    propertyQuery = [(LNPropertyQueryRequestType *)self propertyQuery];
    propertyQuery2 = [(LNPropertyQueryRequestType *)v6 propertyQuery];
    v9 = propertyQuery;
    v10 = propertyQuery2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    sortingOptions = [(LNPropertyQueryRequestType *)self sortingOptions];
    sortingOptions2 = [(LNPropertyQueryRequestType *)v6 sortingOptions];
    v14 = sortingOptions;
    v18 = sortingOptions2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      v12 = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

        goto LABEL_25;
      }

      v21 = [MEMORY[0x1E695DFD8] setWithArray:v14];
      v22 = [MEMORY[0x1E695DFD8] setWithArray:v13];
      v23 = [v21 isEqualToSet:v22];

      if (!v23)
      {
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    maximumResultCount = [(LNPropertyQueryRequestType *)self maximumResultCount];
    maximumResultCount2 = [(LNPropertyQueryRequestType *)v6 maximumResultCount];
    v20 = maximumResultCount;
    v26 = maximumResultCount2;
    v19 = v26;
    if (v20 == v26)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v20 && v26)
      {
        v12 = [v20 isEqual:v26];
      }
    }

    goto LABEL_24;
  }

  v12 = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNPropertyQuery *)self->_propertyQuery hash];
  v4 = [(NSArray *)self->_sortingOptions hash]^ v3;
  return v4 ^ [(NSNumber *)self->_maximumResultCount hash];
}

- (LNPropertyQueryRequestType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyQuery"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortingOptions"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultCount"];

  v11 = [(LNPropertyQueryRequestType *)self initWithPropertyQuery:v5 sortingOptions:v9 maximumResultCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyQuery = [(LNPropertyQueryRequestType *)self propertyQuery];
  [coderCopy encodeObject:propertyQuery forKey:@"propertyQuery"];

  sortingOptions = [(LNPropertyQueryRequestType *)self sortingOptions];
  [coderCopy encodeObject:sortingOptions forKey:@"sortingOptions"];

  maximumResultCount = [(LNPropertyQueryRequestType *)self maximumResultCount];
  [coderCopy encodeObject:maximumResultCount forKey:@"maximumResultCount"];
}

- (LNPropertyQueryRequestType)initWithPropertyQuery:(id)query sortingOptions:(id)options maximumResultCount:(id)count
{
  queryCopy = query;
  optionsCopy = options;
  countCopy = count;
  v16.receiver = self;
  v16.super_class = LNPropertyQueryRequestType;
  _init = [(LNQueryRequestTypeBase *)&v16 _init];
  v13 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, query);
    objc_storeStrong(&v13->_sortingOptions, options);
    objc_storeStrong(&v13->_maximumResultCount, count);
    v14 = v13;
  }

  return v13;
}

@end