@interface LNAlternativeValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (BOOL)objectIsMemberOfType:(id)type;
- (BOOL)valueIsKindOfType:(id)type;
- (LNAlternativeValueType)initWithCoder:(id)coder;
- (LNAlternativeValueType)initWithMemberValueTypes:(id)types;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateValuesOfValueType:(id)type value:(id)value block:(id)block;
@end

@implementation LNAlternativeValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  return [v2 arrayWithObjects:{v3, objc_opt_class(), 0}];
}

- (BOOL)isEqual:(id)equal
{
  v26 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = LNAlternativeValueType;
    if ([(LNValueType *)&v24 isEqual:equalCopy])
    {
      v5 = equalCopy;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
          v7 = [memberValueTypes count];
          memberValueTypes2 = [(LNAlternativeValueType *)v5 memberValueTypes];
          v9 = [memberValueTypes2 count];

          if (v7 != v9)
          {
            LOBYTE(v17) = 0;
            goto LABEL_20;
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          memberValueTypes3 = [(LNAlternativeValueType *)v5 memberValueTypes];
          v11 = [memberValueTypes3 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
LABEL_8:
            v14 = 0;
            while (1)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(memberValueTypes3);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              memberValueTypes4 = [(LNAlternativeValueType *)self memberValueTypes];
              v17 = [memberValueTypes4 containsObject:v15];

              if (!v17)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [memberValueTypes3 countByEnumeratingWithState:&v20 objects:v25 count:16];
                LOBYTE(v17) = 1;
                if (v12)
                {
                  goto LABEL_8;
                }

                break;
              }
            }
          }

          else
          {
            LOBYTE(v17) = 1;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
          memberValueTypes3 = v5;
          v5 = 0;
        }
      }

      else
      {
        memberValueTypes3 = 0;
        LOBYTE(v17) = 0;
      }

LABEL_20:
      goto LABEL_21;
    }

    LOBYTE(v17) = 0;
  }

LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = LNAlternativeValueType;
  v3 = [(LNValueType *)&v7 hash];
  memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
  v5 = [memberValueTypes hash];

  return v5 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
  v4 = [memberValueTypes componentsJoinedByString:@" | "];
  v5 = [v2 stringWithFormat:@"(%@)", v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNAlternativeValueType;
  coderCopy = coder;
  [(LNValueType *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNAlternativeValueType *)self memberValueTypes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"memberValueTypes"];
}

- (LNAlternativeValueType)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"memberValueTypes"];

  if (v8)
  {
    self = [(LNAlternativeValueType *)self initWithMemberValueTypes:v8];
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
  typeCopy = type;
  valueCopy = value;
  blockCopy = block;
  memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
  v11 = [memberValueTypes containsObject:typeCopy];

  if (v11)
  {
    valueType = [valueCopy valueType];
    [valueType enumerateValuesOfValueType:typeCopy value:valueCopy block:blockCopy];
  }
}

- (BOOL)valueIsKindOfType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
  valueType = [typeCopy valueType];

  LOBYTE(typeCopy) = [memberValueTypes containsObject:valueType];
  return typeCopy;
}

- (BOOL)objectIsMemberOfType:(id)type
{
  v16 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memberValueTypes = [(LNAlternativeValueType *)self memberValueTypes];
  v6 = [memberValueTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(memberValueTypes);
        }

        if ([*(*(&v11 + 1) + 8 * i) objectIsMemberOfType:typeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [memberValueTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (LNAlternativeValueType)initWithMemberValueTypes:(id)types
{
  typesCopy = types;
  v10.receiver = self;
  v10.super_class = LNAlternativeValueType;
  v5 = [(LNValueType *)&v10 initWithContentType:0];
  if (v5)
  {
    v6 = [typesCopy copy];
    memberValueTypes = v5->_memberValueTypes;
    v5->_memberValueTypes = v6;

    v8 = v5;
  }

  return v5;
}

@end