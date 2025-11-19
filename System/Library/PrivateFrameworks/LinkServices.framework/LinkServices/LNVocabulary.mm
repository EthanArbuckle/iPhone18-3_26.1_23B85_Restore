@interface LNVocabulary
- (BOOL)isEqual:(id)a3;
- (LNVocabulary)initWithCoder:(id)a3;
- (LNVocabulary)initWithTerm:(id)a3 appSettingName:(id)a4;
- (LNVocabulary)initWithTerm:(id)a3 entityIdentifier:(id)a4;
- (LNVocabulary)initWithTerm:(id)a3 entityTypeName:(id)a4;
- (LNVocabulary)initWithTerm:(id)a3 traits:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNVocabulary

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNVocabulary *)self term];
    v8 = [(LNVocabulary *)v6 term];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNVocabulary *)self traits];
    v16 = [(LNVocabulary *)v6 traits];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToDictionary:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNVocabulary *)self term];
  v4 = [v3 hash];
  v5 = [(LNVocabulary *)self traits];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNVocabulary *)self term];
  v7 = [(LNVocabulary *)self traits];
  v8 = [v3 stringWithFormat:@"<%@: %p, term: %@, traits: %@>", v5, self, v6, v7];

  return v8;
}

- (LNVocabulary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"term"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"traits"];

  if (v5)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    self = [(LNVocabulary *)self initWithTerm:v5 traits:v9];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNVocabulary *)self term];
  [v4 encodeObject:v5 forKey:@"term"];

  v6 = [(LNVocabulary *)self traits];
  [v4 encodeObject:v6 forKey:@"traits"];
}

- (LNVocabulary)initWithTerm:(id)a3 entityIdentifier:(id)a4
{
  v17[3] = *MEMORY[0x1E69E9840];
  v17[0] = @"appEntity";
  v16[0] = @"model";
  v16[1] = @"id";
  v6 = a4;
  v7 = a3;
  v8 = [v6 instanceIdentifier];
  v9 = [v8 copy];
  v17[1] = v9;
  v16[2] = @"name";
  v10 = [v6 typeIdentifier];

  v11 = [v10 copy];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [(LNVocabulary *)self initWithTerm:v7 traits:v12];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (LNVocabulary)initWithTerm:(id)a3 entityTypeName:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"model";
  v12[1] = @"name";
  v13[0] = @"appEntityType";
  v6 = a3;
  v7 = [a4 copy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [(LNVocabulary *)self initWithTerm:v6 traits:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (LNVocabulary)initWithTerm:(id)a3 appSettingName:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"model";
  v12[1] = @"name";
  v13[0] = @"appSetting";
  v6 = a3;
  v7 = [a4 copy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [(LNVocabulary *)self initWithTerm:v6 traits:v8];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (LNVocabulary)initWithTerm:(id)a3 traits:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNVocabulary.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"term"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNVocabulary.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"traits"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNVocabulary;
  v10 = [(LNVocabulary *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    term = v10->_term;
    v10->_term = v11;

    v13 = [v9 copy];
    traits = v10->_traits;
    v10->_traits = v13;

    v15 = v10;
  }

  return v10;
}

@end