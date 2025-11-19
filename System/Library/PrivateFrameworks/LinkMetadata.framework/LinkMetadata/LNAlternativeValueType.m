@interface LNAlternativeValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (BOOL)objectIsMemberOfType:(id)a3;
- (BOOL)valueIsKindOfType:(id)a3;
- (LNAlternativeValueType)initWithCoder:(id)a3;
- (LNAlternativeValueType)initWithMemberValueTypes:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5;
@end

@implementation LNAlternativeValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  return [v2 arrayWithObjects:{v3, objc_opt_class(), 0}];
}

- (BOOL)isEqual:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = LNAlternativeValueType;
    if ([(LNValueType *)&v24 isEqual:v4])
    {
      v5 = v4;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [(LNAlternativeValueType *)self memberValueTypes];
          v7 = [v6 count];
          v8 = [(LNAlternativeValueType *)v5 memberValueTypes];
          v9 = [v8 count];

          if (v7 != v9)
          {
            LOBYTE(v17) = 0;
            goto LABEL_20;
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [(LNAlternativeValueType *)v5 memberValueTypes];
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              v16 = [(LNAlternativeValueType *)self memberValueTypes];
              v17 = [v16 containsObject:v15];

              if (!v17)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          v10 = v5;
          v5 = 0;
        }
      }

      else
      {
        v10 = 0;
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
  v4 = [(LNAlternativeValueType *)self memberValueTypes];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(LNAlternativeValueType *)self memberValueTypes];
  v4 = [v3 componentsJoinedByString:@" | "];
  v5 = [v2 stringWithFormat:@"(%@)", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNAlternativeValueType;
  v4 = a3;
  [(LNValueType *)&v6 encodeWithCoder:v4];
  v5 = [(LNAlternativeValueType *)self memberValueTypes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"memberValueTypes"];
}

- (LNAlternativeValueType)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"memberValueTypes"];

  if (v8)
  {
    self = [(LNAlternativeValueType *)self initWithMemberValueTypes:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(LNAlternativeValueType *)self memberValueTypes];
  v11 = [v10 containsObject:v13];

  if (v11)
  {
    v12 = [v8 valueType];
    [v12 enumerateValuesOfValueType:v13 value:v8 block:v9];
  }
}

- (BOOL)valueIsKindOfType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(LNAlternativeValueType *)self memberValueTypes];
  v6 = [v4 valueType];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (BOOL)objectIsMemberOfType:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(LNAlternativeValueType *)self memberValueTypes];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) objectIsMemberOfType:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (LNAlternativeValueType)initWithMemberValueTypes:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LNAlternativeValueType;
  v5 = [(LNValueType *)&v10 initWithContentType:0];
  if (v5)
  {
    v6 = [v4 copy];
    memberValueTypes = v5->_memberValueTypes;
    v5->_memberValueTypes = v6;

    v8 = v5;
  }

  return v5;
}

@end