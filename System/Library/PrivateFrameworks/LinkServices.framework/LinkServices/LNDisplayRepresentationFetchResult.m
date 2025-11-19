@interface LNDisplayRepresentationFetchResult
- (BOOL)isEqual:(id)a3;
- (LNDisplayRepresentationFetchResult)initWithAction:(id)a3 displayRepresentation:(id)a4 error:(id)a5;
- (LNDisplayRepresentationFetchResult)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDisplayRepresentationFetchResult

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

    v7 = [(LNDisplayRepresentationFetchResult *)self action];
    v8 = [(LNDisplayRepresentationFetchResult *)v6 action];
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

    v16 = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
    v17 = [(LNDisplayRepresentationFetchResult *)v6 displayRepresentation];
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

    v21 = [(LNDisplayRepresentationFetchResult *)self error];
    v22 = [(LNDisplayRepresentationFetchResult *)v6 error];
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
  v3 = [(LNDisplayRepresentationFetchResult *)self action];
  v4 = [v3 hash];
  v5 = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNDisplayRepresentationFetchResult *)self error];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (LNDisplayRepresentationFetchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v8 = [(LNDisplayRepresentationFetchResult *)self initWithAction:v5 displayRepresentation:v6 error:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNDisplayRepresentationFetchResult *)self action];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];

  v7 = [(LNDisplayRepresentationFetchResult *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNDisplayRepresentationFetchResult *)self action];
  v7 = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  v8 = [(LNDisplayRepresentationFetchResult *)self error];
  v9 = [v8 debugDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p, action: %@, displayRepresentation: %@, error: %@>", v5, self, v6, v7, v9];

  return v10;
}

- (LNDisplayRepresentationFetchResult)initWithAction:(id)a3 displayRepresentation:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = LNDisplayRepresentationFetchResult;
  v11 = [(LNDisplayRepresentationFetchResult *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    action = v11->_action;
    v11->_action = v12;

    v14 = [v9 copy];
    displayRepresentation = v11->_displayRepresentation;
    v11->_displayRepresentation = v14;

    v16 = [v10 copy];
    error = v11->_error;
    v11->_error = v16;

    v18 = v11;
  }

  return v11;
}

@end