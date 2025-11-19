@interface LNPropertyQueryRequestType
- (BOOL)isEqual:(id)a3;
- (LNPropertyQueryRequestType)initWithCoder:(id)a3;
- (LNPropertyQueryRequestType)initWithPropertyQuery:(id)a3 sortingOptions:(id)a4 maximumResultCount:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPropertyQueryRequestType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNPropertyQueryRequestType *)self propertyQuery];
    v8 = [(LNPropertyQueryRequestType *)v6 propertyQuery];
    v9 = v7;
    v10 = v8;
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

    v16 = [(LNPropertyQueryRequestType *)self sortingOptions];
    v17 = [(LNPropertyQueryRequestType *)v6 sortingOptions];
    v14 = v16;
    v18 = v17;
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

    v24 = [(LNPropertyQueryRequestType *)self maximumResultCount];
    v25 = [(LNPropertyQueryRequestType *)v6 maximumResultCount];
    v20 = v24;
    v26 = v25;
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

- (LNPropertyQueryRequestType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"propertyQuery"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sortingOptions"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultCount"];

  v11 = [(LNPropertyQueryRequestType *)self initWithPropertyQuery:v5 sortingOptions:v9 maximumResultCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPropertyQueryRequestType *)self propertyQuery];
  [v4 encodeObject:v5 forKey:@"propertyQuery"];

  v6 = [(LNPropertyQueryRequestType *)self sortingOptions];
  [v4 encodeObject:v6 forKey:@"sortingOptions"];

  v7 = [(LNPropertyQueryRequestType *)self maximumResultCount];
  [v4 encodeObject:v7 forKey:@"maximumResultCount"];
}

- (LNPropertyQueryRequestType)initWithPropertyQuery:(id)a3 sortingOptions:(id)a4 maximumResultCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = LNPropertyQueryRequestType;
  v12 = [(LNQueryRequestTypeBase *)&v16 _init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, a3);
    objc_storeStrong(&v13->_sortingOptions, a4);
    objc_storeStrong(&v13->_maximumResultCount, a5);
    v14 = v13;
  }

  return v13;
}

@end