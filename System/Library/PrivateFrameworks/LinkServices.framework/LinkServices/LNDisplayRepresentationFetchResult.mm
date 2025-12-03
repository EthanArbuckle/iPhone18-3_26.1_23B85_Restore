@interface LNDisplayRepresentationFetchResult
- (BOOL)isEqual:(id)equal;
- (LNDisplayRepresentationFetchResult)initWithAction:(id)action displayRepresentation:(id)representation error:(id)error;
- (LNDisplayRepresentationFetchResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDisplayRepresentationFetchResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    action = [(LNDisplayRepresentationFetchResult *)self action];
    action2 = [(LNDisplayRepresentationFetchResult *)v6 action];
    v9 = action;
    v10 = action2;
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

    displayRepresentation = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
    displayRepresentation2 = [(LNDisplayRepresentationFetchResult *)v6 displayRepresentation];
    v14 = displayRepresentation;
    v18 = displayRepresentation2;
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

    error = [(LNDisplayRepresentationFetchResult *)self error];
    error2 = [(LNDisplayRepresentationFetchResult *)v6 error];
    v20 = error;
    v23 = error2;
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
  action = [(LNDisplayRepresentationFetchResult *)self action];
  v4 = [action hash];
  displayRepresentation = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  v6 = [displayRepresentation hash] ^ v4;
  error = [(LNDisplayRepresentationFetchResult *)self error];
  v8 = [error hash];

  return v6 ^ v8;
}

- (LNDisplayRepresentationFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  v8 = [(LNDisplayRepresentationFetchResult *)self initWithAction:v5 displayRepresentation:v6 error:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(LNDisplayRepresentationFetchResult *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  displayRepresentation = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  error = [(LNDisplayRepresentationFetchResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  action = [(LNDisplayRepresentationFetchResult *)self action];
  displayRepresentation = [(LNDisplayRepresentationFetchResult *)self displayRepresentation];
  error = [(LNDisplayRepresentationFetchResult *)self error];
  v9 = [error debugDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p, action: %@, displayRepresentation: %@, error: %@>", v5, self, action, displayRepresentation, v9];

  return v10;
}

- (LNDisplayRepresentationFetchResult)initWithAction:(id)action displayRepresentation:(id)representation error:(id)error
{
  actionCopy = action;
  representationCopy = representation;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = LNDisplayRepresentationFetchResult;
  v11 = [(LNDisplayRepresentationFetchResult *)&v20 init];
  if (v11)
  {
    v12 = [actionCopy copy];
    action = v11->_action;
    v11->_action = v12;

    v14 = [representationCopy copy];
    displayRepresentation = v11->_displayRepresentation;
    v11->_displayRepresentation = v14;

    v16 = [errorCopy copy];
    error = v11->_error;
    v11->_error = v16;

    v18 = v11;
  }

  return v11;
}

@end