@interface LNArrayValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (BOOL)objectIsMemberOfType:(id)type;
- (LNArrayValueType)initWithCoder:(id)coder;
- (LNArrayValueType)initWithMemberValueType:(id)type capabilities:(int64_t)capabilities;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesOfValueType:(id)type value:(id)value block:(id)block;
@end

@implementation LNArrayValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  return [v2 arrayWithObjects:{v3, objc_opt_class(), 0}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
    goto LABEL_14;
  }

  v6 = equalCopy;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = LNArrayValueType;
    if ([(LNValueType *)&v16 isEqual:v6])
    {
      memberValueType = [(LNArrayValueType *)self memberValueType];
      memberValueType2 = [(LNArrayValueType *)v6 memberValueType];
      v9 = memberValueType;
      v10 = memberValueType2;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {

LABEL_18:
          v13 = 0;
          goto LABEL_19;
        }

        v12 = [v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      capabilities = [(LNArrayValueType *)self capabilities];
      v13 = capabilities == [(LNArrayValueType *)v6 capabilities];
LABEL_19:

      goto LABEL_12;
    }
  }

  else
  {

    v6 = 0;
  }

  v13 = 0;
LABEL_12:

LABEL_14:
  return v13;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = LNArrayValueType;
  v3 = [(LNValueType *)&v8 hash];
  memberValueType = [(LNArrayValueType *)self memberValueType];
  v5 = [memberValueType hash];
  v6 = v5 ^ [(LNArrayValueType *)self capabilities];

  return v6 ^ v3;
}

- (id)description
{
  if ([(LNArrayValueType *)self capabilities]== 3)
  {
    v3 = @"Array";
  }

  else if ([(LNArrayValueType *)self capabilities]== 2)
  {
    v3 = @"OrderedSet";
  }

  else
  {
    v3 = @"Set";
  }

  v4 = MEMORY[0x1E696AEC0];
  memberValueType = [(LNArrayValueType *)self memberValueType];
  v6 = [v4 stringWithFormat:@"%@<%@>", v3, memberValueType];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNArrayValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNArrayValueType *)self memberValueType:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"memberValueType"];

  [coderCopy encodeInteger:-[LNArrayValueType capabilities](self forKey:{"capabilities"), @"capabilities"}];
}

- (LNArrayValueType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memberValueType"];
  if (v5)
  {
    self = -[LNArrayValueType initWithMemberValueType:capabilities:](self, "initWithMemberValueType:capabilities:", v5, [coderCopy decodeIntegerForKey:@"capabilities"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)enumerateValuesOfValueType:(id)type value:(id)value block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  valueCopy = value;
  blockCopy = block;
  memberValueType = [(LNArrayValueType *)self memberValueType];
  v12 = [typeCopy isEqual:memberValueType];

  if (v12)
  {
    value = [valueCopy value];
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        value = value;
        v14 = [value countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(value);
              }

              v18 = *(*(&v21 + 1) + 8 * i);
              valueType = [v18 valueType];
              [valueType enumerateValuesOfValueType:typeCopy value:v18 block:blockCopy];
            }

            v15 = [value countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v15);
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)objectIsMemberOfType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (typeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = typeCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            LOBYTE(v12) = 0;
            goto LABEL_16;
          }

          memberValueType = [(LNArrayValueType *)self memberValueType];
          v12 = [memberValueType valueIsKindOfType:v10];

          if (!v12)
          {
            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        LOBYTE(v12) = 1;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }

LABEL_16:
  }

  else
  {

    LOBYTE(v12) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (LNArrayValueType)initWithMemberValueType:(id)type capabilities:(int64_t)capabilities
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNArrayValueType.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"![memberValueType isKindOfClass:[LN_TYPE(ArrayValueType) class]]"}];
  }

  contentType = [typeCopy contentType];
  v15.receiver = self;
  v15.super_class = LNArrayValueType;
  v9 = [(LNValueType *)&v15 initWithContentType:contentType];

  if (v9)
  {
    v10 = [typeCopy copy];
    memberValueType = v9->_memberValueType;
    v9->_memberValueType = v10;

    v9->_capabilities = capabilities;
    v12 = v9;
  }

  return v9;
}

@end