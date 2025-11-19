@interface LNValue
- (BOOL)isEqual:(id)a3;
- (LNValue)initWithCoder:(id)a3;
- (LNValue)initWithValue:(id)a3 valueType:(id)a4 displayRepresentation:(id)a5;
- (LNValue)initWithValue:(id)a3 valueType:(id)a4 exportedContent:(id)a5 displayRepresentation:(id)a6;
- (LNValue)initWithValues:(id)a3 memberValueType:(id)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNValue

- (unint64_t)hash
{
  v3 = [(LNValue *)self valueType];
  v4 = [v3 hash];
  v5 = [(LNValue *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(LNValue *)self valueType];
  [v12 encodeObject:v4 forKey:@"valueType"];

  v5 = [(LNValue *)self displayRepresentation];
  [v12 encodeObject:v5 forKey:@"displayRepresentation"];

  v6 = [(LNValue *)self exportedContent];
  [v12 encodeObject:v6 forKey:@"exportedContent"];

  v7 = [(LNValue *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(LNValue *)self value];
  v10 = v9;
  if (isKindOfClass)
  {
    v11 = [v9 ln_attributedStringByRemovingNonSecureCodingAttributes];
    [v12 encodeObject:v11 forKey:@"value"];
  }

  else
  {
    [v12 encodeObject:v9 forKey:@"value"];
  }
}

- (LNValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
  if (v5)
  {
    v6 = LNValueTypeObjectClassesForCoding();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];

    if (v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
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
      v11 = [v4 decodeObjectOfClass:v9 forKey:@"exportedContent"];
      self = [(LNValue *)self initWithValue:v7 valueType:v5 exportedContent:v11 displayRepresentation:v8];

      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(LNValue *)self value];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 value];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v5 = [(LNValue *)self value];
    v8 = [v4 value];
    v9 = [v5 compare:v8];
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  return v9;
}

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
        v7 = [(LNValue *)self valueType];
        v8 = [(LNValue *)v6 valueType];
        v9 = [v7 isEqual:v8];

        if (!v9)
        {
          v17 = 0;
LABEL_17:

          goto LABEL_18;
        }

        v10 = [(LNValue *)self valueType];
        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (([v10 capabilities] & 2) == 0)
          {
            v11 = objc_alloc(MEMORY[0x1E695DFD8]);
            v12 = [(LNValue *)self value];
            v13 = [v11 initWithArray:v12];

            v14 = objc_alloc(MEMORY[0x1E695DFD8]);
            v15 = [(LNValue *)v6 value];
            v16 = [v14 initWithArray:v15];

LABEL_15:
            v17 = [v13 isEqual:v16];

            goto LABEL_16;
          }
        }

        else
        {

          v10 = 0;
        }

        v13 = [(LNValue *)self value];
        v16 = [(LNValue *)v6 value];
        goto LABEL_15;
      }

      v17 = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
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
  v4 = [(LNValue *)self valueType];
  v5 = [(LNValue *)self value];
  v6 = [v3 stringWithFormat:@"(%@) %@", v4, v5];

  return v6;
}

- (LNValue)initWithValue:(id)a3 valueType:(id)a4 exportedContent:(id)a5 displayRepresentation:(id)a6
{
  v11 = a5;
  v12 = [(LNValue *)self initWithValue:a3 valueType:a4 displayRepresentation:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedContent, a5);
    v14 = v13;
  }

  return v13;
}

- (LNValue)initWithValues:(id)a3 memberValueType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LNArrayValueType alloc] initWithMemberValueType:v6];

  v9 = [(LNValue *)self initWithValue:v7 valueType:v8 displayRepresentation:0];
  return v9;
}

- (LNValue)initWithValue:(id)a3 valueType:(id)a4 displayRepresentation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (([v10 objectIsMemberOfType:v9] & 1) == 0 && (objc_msgSend(v10, "objectIsMemberOfType:", v9) & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [v10 description];
    [v23 handleFailureInMethod:a2 object:self file:@"LNValue.m" lineNumber:40 description:{@"BUG IN CLIENT OF LINKSERVICES: Value %@ is not member of type %@", v9, v24}];
  }

  v25.receiver = self;
  v25.super_class = LNValue;
  v12 = [(LNValue *)&v25 init];
  if (v12)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [v9 copy];
    }

    else
    {
      v13 = v9;
    }

    value = v12->_value;
    v12->_value = v13;

    v15 = [v10 copy];
    valueType = v12->_valueType;
    v12->_valueType = v15;

    v17 = [v11 copy];
    displayRepresentation = v12->_displayRepresentation;
    v12->_displayRepresentation = v17;

    v19 = v12;
  }

  return v12;
}

@end