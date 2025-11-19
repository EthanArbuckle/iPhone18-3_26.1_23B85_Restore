@interface LNActionSummaryString
- (BOOL)isEqual:(id)a3;
- (LNActionSummaryString)initWithCoder:(id)a3;
- (LNActionSummaryString)initWithFormatString:(id)a3 parameterIdentifiers:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionSummaryString

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

    v7 = [(LNActionSummaryString *)self formatString];
    v8 = [(LNActionSummaryString *)v6 formatString];
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
        goto LABEL_16;
      }

      LODWORD(v12) = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNActionSummaryString *)self parameterIdentifiers];
    v16 = [(LNActionSummaryString *)v6 parameterIdentifiers];

    if (v15 == v16)
    {
      LOBYTE(v12) = 1;
      goto LABEL_19;
    }

    v12 = [(LNActionSummaryString *)self parameterIdentifiers];
    if (!v12)
    {
LABEL_19:

      goto LABEL_20;
    }

    v17 = [(LNActionSummaryString *)v6 parameterIdentifiers];

    if (!v17)
    {
      LOBYTE(v12) = 0;
      goto LABEL_19;
    }

    v12 = MEMORY[0x1E695DFD8];
    v14 = [(LNActionSummaryString *)self parameterIdentifiers];
    v13 = [v12 setWithArray:v14];
    v18 = MEMORY[0x1E695DFD8];
    v19 = [(LNActionSummaryString *)v6 parameterIdentifiers];
    v20 = [v18 setWithArray:v19];
    LOBYTE(v12) = [v13 isEqualToSet:v20];

LABEL_16:
    goto LABEL_19;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNActionSummaryString *)self formatString];
  v4 = [v3 hash];
  v5 = [(LNActionSummaryString *)self parameterIdentifiers];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionSummaryString *)self formatString];
  [v4 encodeObject:v5 forKey:@"formatString"];

  v6 = [(LNActionSummaryString *)self parameterIdentifiers];
  [v4 encodeObject:v6 forKey:@"parameterIdentifiers"];
}

- (LNActionSummaryString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parameterIdentifiers"];

    if (v9)
    {
      self = [(LNActionSummaryString *)self initWithFormatString:v5 parameterIdentifiers:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionSummaryString *)self formatString];
  v7 = [(LNActionSummaryString *)self parameterIdentifiers];
  v8 = [v7 valueForKeyPath:@"description"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@: %p, formatString: %@, parameterIdentifiers: [%@]>", v5, self, v6, v9];

  return v10;
}

- (LNActionSummaryString)initWithFormatString:(id)a3 parameterIdentifiers:(id)a4
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
    [v17 handleFailureInMethod:a2 object:self file:@"LNActionSummaryString.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"formatString"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNActionSummaryString.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"parameterIdentifiers"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNActionSummaryString;
  v10 = [(LNActionSummaryString *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    formatString = v10->_formatString;
    v10->_formatString = v11;

    v13 = [v9 copy];
    parameterIdentifiers = v10->_parameterIdentifiers;
    v10->_parameterIdentifiers = v13;

    v15 = v10;
  }

  return v10;
}

@end