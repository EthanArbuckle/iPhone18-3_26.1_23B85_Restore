@interface LNArrayValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (BOOL)objectIsMemberOfType:(id)a3;
- (LNArrayValueType)initWithCoder:(id)a3;
- (LNArrayValueType)initWithMemberValueType:(id)a3 capabilities:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5;
@end

@implementation LNArrayValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();
  return [v2 arrayWithObjects:{v3, objc_opt_class(), 0}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
    goto LABEL_14;
  }

  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = LNArrayValueType;
    if ([(LNValueType *)&v16 isEqual:v6])
    {
      v7 = [(LNArrayValueType *)self memberValueType];
      v8 = [(LNArrayValueType *)v6 memberValueType];
      v9 = v7;
      v10 = v8;
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

      v15 = [(LNArrayValueType *)self capabilities];
      v13 = v15 == [(LNArrayValueType *)v6 capabilities];
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
  v4 = [(LNArrayValueType *)self memberValueType];
  v5 = [v4 hash];
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
  v5 = [(LNArrayValueType *)self memberValueType];
  v6 = [v4 stringWithFormat:@"%@<%@>", v3, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNArrayValueType;
  v4 = a3;
  [(LNValueType *)&v6 encodeWithCoder:v4];
  v5 = [(LNArrayValueType *)self memberValueType:v6.receiver];
  [v4 encodeObject:v5 forKey:@"memberValueType"];

  [v4 encodeInteger:-[LNArrayValueType capabilities](self forKey:{"capabilities"), @"capabilities"}];
}

- (LNArrayValueType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memberValueType"];
  if (v5)
  {
    self = -[LNArrayValueType initWithMemberValueType:capabilities:](self, "initWithMemberValueType:capabilities:", v5, [v4 decodeIntegerForKey:@"capabilities"]);
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateValuesOfValueType:(id)a3 value:(id)a4 block:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LNArrayValueType *)self memberValueType];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    v13 = [v9 value];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = v13;
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v21 + 1) + 8 * i);
              v19 = [v18 valueType];
              [v19 enumerateValuesOfValueType:v8 value:v18 block:v10];
            }

            v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v15);
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)objectIsMemberOfType:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
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

          v11 = [(LNArrayValueType *)self memberValueType];
          v12 = [v11 valueIsKindOfType:v10];

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

- (LNArrayValueType)initWithMemberValueType:(id)a3 capabilities:(int64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"LNArrayValueType.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"![memberValueType isKindOfClass:[LN_TYPE(ArrayValueType) class]]"}];
  }

  v8 = [v7 contentType];
  v15.receiver = self;
  v15.super_class = LNArrayValueType;
  v9 = [(LNValueType *)&v15 initWithContentType:v8];

  if (v9)
  {
    v10 = [v7 copy];
    memberValueType = v9->_memberValueType;
    v9->_memberValueType = v10;

    v9->_capabilities = a4;
    v12 = v9;
  }

  return v9;
}

@end