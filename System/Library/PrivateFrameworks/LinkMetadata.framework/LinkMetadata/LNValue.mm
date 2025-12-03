@interface LNValue
- (BOOL)isEqual:(id)equal;
- (LNValue)initWithCoder:(id)coder;
- (LNValue)initWithValue:(id)value valueType:(id)type displayRepresentation:(id)representation;
- (LNValue)initWithValue:(id)value valueType:(id)type exportedContent:(id)content displayRepresentation:(id)representation;
- (LNValue)initWithValues:(id)values memberValueType:(id)type;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNValue

- (unint64_t)hash
{
  valueType = [(LNValue *)self valueType];
  v4 = [valueType hash];
  value = [(LNValue *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueType = [(LNValue *)self valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];

  displayRepresentation = [(LNValue *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  exportedContent = [(LNValue *)self exportedContent];
  [coderCopy encodeObject:exportedContent forKey:@"exportedContent"];

  value = [(LNValue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(LNValue *)self value];
  v10 = value2;
  if (isKindOfClass)
  {
    ln_attributedStringByRemovingNonSecureCodingAttributes = [value2 ln_attributedStringByRemovingNonSecureCodingAttributes];
    [coderCopy encodeObject:ln_attributedStringByRemovingNonSecureCodingAttributes forKey:@"value"];
  }

  else
  {
    [coderCopy encodeObject:value2 forKey:@"value"];
  }
}

- (LNValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
  if (v5)
  {
    v6 = LNValueTypeObjectClassesForCoding();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"value"];

    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v9 = getLNExportedContentClass_softClass;
      v18 = getLNExportedContentClass_softClass;
      if (!getLNExportedContentClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getLNExportedContentClass_block_invoke;
        v14[3] = &unk_1E72B12F8;
        v14[4] = &v15;
        __getLNExportedContentClass_block_invoke(v14);
        v9 = v16[3];
      }

      v10 = v9;
      _Block_object_dispose(&v15, 8);
      v11 = [coderCopy decodeObjectOfClass:v9 forKey:@"exportedContent"];
      self = [(LNValue *)self initWithValue:v7 valueType:v5 exportedContent:v11 displayRepresentation:v8];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  value = [(LNValue *)self value];
  if (objc_opt_respondsToSelector())
  {
    value2 = [compareCopy value];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    value = [(LNValue *)self value];
    value3 = [compareCopy value];
    v9 = [value compare:value3];
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  return v9;
}

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
        valueType = [(LNValue *)self valueType];
        valueType2 = [(LNValue *)v6 valueType];
        v9 = [valueType isEqual:valueType2];

        if (!v9)
        {
          v17 = 0;
LABEL_17:

          goto LABEL_18;
        }

        valueType3 = [(LNValue *)self valueType];
        if (valueType3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (([valueType3 capabilities] & 2) == 0)
          {
            v11 = objc_alloc(MEMORY[0x1E695DFD8]);
            value = [(LNValue *)self value];
            value3 = [v11 initWithArray:value];

            v14 = objc_alloc(MEMORY[0x1E695DFD8]);
            value2 = [(LNValue *)v6 value];
            value4 = [v14 initWithArray:value2];

LABEL_15:
            v17 = [value3 isEqual:value4];

            goto LABEL_16;
          }
        }

        else
        {

          valueType3 = 0;
        }

        value3 = [(LNValue *)self value];
        value4 = [(LNValue *)v6 value];
        goto LABEL_15;
      }

      v17 = 0;
      valueType3 = v6;
      v6 = 0;
    }

    else
    {
      valueType3 = 0;
      v17 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v17 = 1;
LABEL_18:

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  valueType = [(LNValue *)self valueType];
  value = [(LNValue *)self value];
  v6 = [v3 stringWithFormat:@"(%@) %@", valueType, value];

  return v6;
}

- (LNValue)initWithValue:(id)value valueType:(id)type exportedContent:(id)content displayRepresentation:(id)representation
{
  contentCopy = content;
  v12 = [(LNValue *)self initWithValue:value valueType:type displayRepresentation:representation];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedContent, content);
    v14 = v13;
  }

  return v13;
}

- (LNValue)initWithValues:(id)values memberValueType:(id)type
{
  typeCopy = type;
  valuesCopy = values;
  v8 = [[LNArrayValueType alloc] initWithMemberValueType:typeCopy];

  v9 = [(LNValue *)self initWithValue:valuesCopy valueType:v8 displayRepresentation:0];
  return v9;
}

- (LNValue)initWithValue:(id)value valueType:(id)type displayRepresentation:(id)representation
{
  valueCopy = value;
  typeCopy = type;
  representationCopy = representation;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];

    goto LABEL_3;
  }

  if (!typeCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (([typeCopy objectIsMemberOfType:valueCopy] & 1) == 0 && (objc_msgSend(typeCopy, "objectIsMemberOfType:", valueCopy) & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [typeCopy description];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:40 description:{@"BUG IN CLIENT OF LINKSERVICES: Value %@ is not member of type %@", valueCopy, v24}];
  }

  v25.receiver = self;
  v25.super_class = LNValue;
  v12 = [(LNValue *)&v25 init];
  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [valueCopy copy];
    }

    else
    {
      v13 = valueCopy;
    }

    value = v12->_value;
    v12->_value = v13;

    v15 = [typeCopy copy];
    valueType = v12->_valueType;
    v12->_valueType = v15;

    v17 = [representationCopy copy];
    displayRepresentation = v12->_displayRepresentation;
    v12->_displayRepresentation = v17;

    v19 = v12;
  }

  return v12;
}

@end