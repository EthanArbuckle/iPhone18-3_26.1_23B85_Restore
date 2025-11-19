@interface LNQueryParameterComparatorMetadata
- (BOOL)isEqual:(id)a3;
- (LNQueryParameterComparatorMetadata)initWithCoder:(id)a3;
- (LNQueryParameterComparatorMetadata)initWithComparatorType:(unint64_t)a3 valueType:(id)a4 resolvableInputTypes:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryParameterComparatorMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNQueryParameterComparatorMetadata *)self comparatorType];
        if (v7 != [(LNQueryParameterComparatorMetadata *)v6 comparatorType])
        {
          LOBYTE(v13) = 0;
LABEL_24:

          goto LABEL_25;
        }

        v8 = [(LNQueryParameterComparatorMetadata *)self valueType];
        v9 = [(LNQueryParameterComparatorMetadata *)v6 valueType];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v14 = v11;
          v15 = v10;
          if (!v10 || !v11)
          {
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v13 = [(LNQueryParameterComparatorMetadata *)v10 isEqual:v11];

          if (!v13)
          {
            goto LABEL_22;
          }
        }

        v16 = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
        v17 = [(LNQueryParameterComparatorMetadata *)v6 resolvableInputTypes];
        v15 = v16;
        v18 = v17;
        v14 = v18;
        if (v15 == v18)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v15 && v18)
          {
            LOBYTE(v13) = [(LNQueryParameterComparatorMetadata *)v15 isEqual:v18];
          }
        }

        goto LABEL_21;
      }

      LOBYTE(v13) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v13) = 0;
    }

LABEL_23:

    goto LABEL_24;
  }

  LOBYTE(v13) = 1;
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNQueryParameterComparatorMetadata *)self comparatorType];
  v4 = [(LNQueryParameterComparatorMetadata *)self valueType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LNQueryParameterComparatorMetadata comparatorType](self, "comparatorType")}];
  v7 = [(LNQueryParameterComparatorMetadata *)self valueType];
  v8 = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
  v9 = [v8 valueForKeyPath:@"description"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@: %p, comparatorType: %@, valueType: %@, resolvableInputTypes: [%@]>", v5, self, v6, v7, v10];

  return v11;
}

- (LNQueryParameterComparatorMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"comparatorType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"resolvableInputTypes"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    self = [(LNQueryParameterComparatorMetadata *)self initWithComparatorType:v5 valueType:v10 resolvableInputTypes:v9];
    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNQueryParameterComparatorMetadata comparatorType](self forKey:{"comparatorType"), @"comparatorType"}];
  v5 = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
  [v4 encodeObject:v5 forKey:@"resolvableInputTypes"];

  v6 = [(LNQueryParameterComparatorMetadata *)self valueType];
  [v4 encodeObject:v6 forKey:@"valueType"];
}

- (LNQueryParameterComparatorMetadata)initWithComparatorType:(unint64_t)a3 valueType:(id)a4 resolvableInputTypes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = LNQueryParameterComparatorMetadata;
  v10 = [(LNQueryParameterComparatorMetadata *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_comparatorType = a3;
    v12 = [v9 copy];
    resolvableInputTypes = v11->_resolvableInputTypes;
    v11->_resolvableInputTypes = v12;

    v14 = [v8 copy];
    valueType = v11->_valueType;
    v11->_valueType = v14;

    v16 = v11;
  }

  return v11;
}

@end