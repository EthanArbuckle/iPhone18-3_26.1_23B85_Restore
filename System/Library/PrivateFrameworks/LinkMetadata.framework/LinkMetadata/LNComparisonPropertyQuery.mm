@interface LNComparisonPropertyQuery
- (BOOL)isEqual:(id)equal;
- (LNComparisonPropertyQuery)initWithCoder:(id)coder;
- (LNComparisonPropertyQuery)initWithPropertyIndex:(id)index value:(id)value type:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNComparisonPropertyQuery

- (void)encodeWithCoder:(id)coder
{
  propertyIndex = self->_propertyIndex;
  coderCopy = coder;
  [coderCopy encodeObject:propertyIndex forKey:@"propertyIndex"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (LNComparisonPropertyQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyIndex"];
  v6 = [coderCopy decodeIntForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNComparisonPropertyQuery *)self initWithPropertyIndex:v5 value:v7 type:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  propertyIndex = [(LNComparisonPropertyQuery *)self propertyIndex];
  v4 = [propertyIndex hash];
  value = [(LNComparisonPropertyQuery *)self value];
  v6 = [value hash] ^ v4;
  type = [(LNComparisonPropertyQuery *)self type];

  return v6 ^ type;
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
LABEL_17:

      goto LABEL_18;
    }

    propertyIndex = [(LNComparisonPropertyQuery *)self propertyIndex];
    propertyIndex2 = [(LNComparisonPropertyQuery *)v6 propertyIndex];
    v9 = propertyIndex;
    v10 = propertyIndex2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      value2 = v10;
      value = v9;
      if (!v9 || !v10)
      {
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    value = [(LNComparisonPropertyQuery *)self value];
    value2 = [(LNComparisonPropertyQuery *)v6 value];
    if ([value isEqual:value2])
    {
      type = [(LNComparisonPropertyQuery *)self type];
      LOBYTE(v12) = type == [(LNComparisonPropertyQuery *)v6 type];
    }

    else
    {
      LOBYTE(v12) = 0;
    }

LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  LOBYTE(v12) = 1;
LABEL_18:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  propertyIndex = [(LNComparisonPropertyQuery *)self propertyIndex];
  if (self)
  {
    type = [(LNComparisonPropertyQuery *)self type];
    if (type - 1 > 8)
    {
      v6 = @"==";
    }

    else
    {
      v6 = off_1E72B1070[type - 1];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  value = [(LNComparisonPropertyQuery *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %@ %@>", propertyIndex, v7, value];

  return v9;
}

- (LNComparisonPropertyQuery)initWithPropertyIndex:(id)index value:(id)value type:(unint64_t)type
{
  indexCopy = index;
  valueCopy = value;
  v12 = valueCopy;
  if (indexCopy)
  {
    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNComparisonPropertyQuery.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"propertyIndex"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNComparisonPropertyQuery.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = LNComparisonPropertyQuery;
  _init = [(LNPropertyQuery *)&v18 _init];
  v14 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, index);
    v14->_type = type;
    objc_storeStrong(&v14->_value, value);
  }

  return v14;
}

@end