@interface LNQueryParameterComparatorMetadata
- (BOOL)isEqual:(id)equal;
- (LNQueryParameterComparatorMetadata)initWithCoder:(id)coder;
- (LNQueryParameterComparatorMetadata)initWithComparatorType:(unint64_t)type valueType:(id)valueType resolvableInputTypes:(id)types;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryParameterComparatorMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        comparatorType = [(LNQueryParameterComparatorMetadata *)self comparatorType];
        if (comparatorType != [(LNQueryParameterComparatorMetadata *)v6 comparatorType])
        {
          LOBYTE(v13) = 0;
LABEL_24:

          goto LABEL_25;
        }

        valueType = [(LNQueryParameterComparatorMetadata *)self valueType];
        valueType2 = [(LNQueryParameterComparatorMetadata *)v6 valueType];
        v10 = valueType;
        v11 = valueType2;
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

        resolvableInputTypes = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
        resolvableInputTypes2 = [(LNQueryParameterComparatorMetadata *)v6 resolvableInputTypes];
        v15 = resolvableInputTypes;
        v18 = resolvableInputTypes2;
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
  comparatorType = [(LNQueryParameterComparatorMetadata *)self comparatorType];
  valueType = [(LNQueryParameterComparatorMetadata *)self valueType];
  v5 = [valueType hash];

  return v5 ^ comparatorType;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LNQueryParameterComparatorMetadata comparatorType](self, "comparatorType")}];
  valueType = [(LNQueryParameterComparatorMetadata *)self valueType];
  resolvableInputTypes = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
  v9 = [resolvableInputTypes valueForKeyPath:@"description"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@: %p, comparatorType: %@, valueType: %@, resolvableInputTypes: [%@]>", v5, self, v6, valueType, v10];

  return v11;
}

- (LNQueryParameterComparatorMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"comparatorType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"resolvableInputTypes"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(LNQueryParameterComparatorMetadata *)self initWithComparatorType:v5 valueType:v10 resolvableInputTypes:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNQueryParameterComparatorMetadata comparatorType](self forKey:{"comparatorType"), @"comparatorType"}];
  resolvableInputTypes = [(LNQueryParameterComparatorMetadata *)self resolvableInputTypes];
  [coderCopy encodeObject:resolvableInputTypes forKey:@"resolvableInputTypes"];

  valueType = [(LNQueryParameterComparatorMetadata *)self valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];
}

- (LNQueryParameterComparatorMetadata)initWithComparatorType:(unint64_t)type valueType:(id)valueType resolvableInputTypes:(id)types
{
  valueTypeCopy = valueType;
  typesCopy = types;
  v18.receiver = self;
  v18.super_class = LNQueryParameterComparatorMetadata;
  v10 = [(LNQueryParameterComparatorMetadata *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_comparatorType = type;
    v12 = [typesCopy copy];
    resolvableInputTypes = v11->_resolvableInputTypes;
    v11->_resolvableInputTypes = v12;

    v14 = [valueTypeCopy copy];
    valueType = v11->_valueType;
    v11->_valueType = v14;

    v16 = v11;
  }

  return v11;
}

@end