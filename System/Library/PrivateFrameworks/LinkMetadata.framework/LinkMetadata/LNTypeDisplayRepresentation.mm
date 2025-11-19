@interface LNTypeDisplayRepresentation
- (BOOL)isEqual:(id)a3;
- (LNTypeDisplayRepresentation)initWithCoder:(id)a3;
- (LNTypeDisplayRepresentation)initWithName:(id)a3 numericFormat:(id)a4 synonyms:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTypeDisplayRepresentation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNTypeDisplayRepresentation *)self name];
  v7 = [(LNTypeDisplayRepresentation *)self numericFormat];
  v8 = [(LNTypeDisplayRepresentation *)self synonyms];
  v9 = [v3 stringWithFormat:@"<%@: %p, name: %@, numericFormat: %@>, synonyms: %@>", v5, self, v6, v7, v8];

  return v9;
}

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
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(LNTypeDisplayRepresentation *)self name];
    v8 = [(LNTypeDisplayRepresentation *)v6 name];
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
        goto LABEL_25;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(LNTypeDisplayRepresentation *)self numericFormat];
    v17 = [(LNTypeDisplayRepresentation *)v6 numericFormat];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(LNTypeDisplayRepresentation *)self synonyms];
    v22 = [(LNTypeDisplayRepresentation *)v6 synonyms];
    v20 = v21;
    v23 = v22;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNTypeDisplayRepresentation *)self name];
  v4 = [v3 hash];
  v5 = [(LNTypeDisplayRepresentation *)self numericFormat];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNTypeDisplayRepresentation *)self synonyms];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (LNTypeDisplayRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numericFormat"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"synonyms"];

  if (v5)
  {
    self = [(LNTypeDisplayRepresentation *)self initWithName:v5 numericFormat:v6 synonyms:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNTypeDisplayRepresentation *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(LNTypeDisplayRepresentation *)self numericFormat];
  [v4 encodeObject:v6 forKey:@"numericFormat"];

  v7 = [(LNTypeDisplayRepresentation *)self synonyms];
  [v4 encodeObject:v7 forKey:@"synonyms"];
}

- (LNTypeDisplayRepresentation)initWithName:(id)a3 numericFormat:(id)a4 synonyms:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNTypeDisplayRepresentation.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v22.receiver = self;
  v22.super_class = LNTypeDisplayRepresentation;
  v12 = [(LNTypeDisplayRepresentation *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [v10 copy];
    numericFormat = v12->_numericFormat;
    v12->_numericFormat = v15;

    v17 = [v11 copy];
    synonyms = v12->_synonyms;
    v12->_synonyms = v17;

    v19 = v12;
  }

  return v12;
}

@end