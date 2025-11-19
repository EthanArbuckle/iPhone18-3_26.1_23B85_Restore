@interface LNChoiceOption
- (BOOL)isEqual:(id)a3;
- (LNChoiceOption)initWithCoder:(id)a3;
- (LNChoiceOption)initWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNChoiceOption

- (LNChoiceOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [v4 decodeIntegerForKey:@"style"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    self = [(LNChoiceOption *)self initWithIdentifier:v5 title:v6 style:v7];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(LNChoiceOption *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(LNChoiceOption *)self title];
  [v6 encodeObject:v5 forKey:@"title"];

  [v6 encodeInteger:-[LNChoiceOption style](self forKey:{"style"), @"style"}];
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
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [(LNChoiceOption *)self title];
    v8 = [(LNChoiceOption *)v6 title];
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

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v14 = [(LNChoiceOption *)self style];
    v13 = v14 == [(LNChoiceOption *)v6 style];
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  v2 = [(LNChoiceOption *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNChoiceOption *)self identifier];
  v7 = [(LNChoiceOption *)self title];
  v8 = [(LNChoiceOption *)self style];
  v9 = @"Default";
  if (v8 == 1)
  {
    v9 = @"Cancel";
  }

  if (v8 == 2)
  {
    v9 = @"Destructive";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, title: %@, style: %@>", v5, self, v6, v7, v9];

  return v10;
}

- (LNChoiceOption)initWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"LNChoiceOption.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"LNChoiceOption.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"title"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNChoiceOption;
  v13 = [(LNChoiceOption *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_title, a4);
    v14->_style = a5;
    v15 = v14;
  }

  return v14;
}

@end