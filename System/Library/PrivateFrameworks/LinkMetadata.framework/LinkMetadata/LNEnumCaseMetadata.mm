@interface LNEnumCaseMetadata
- (BOOL)isEqual:(id)equal;
- (LNEnumCaseMetadata)initWithCoder:(id)coder;
- (LNEnumCaseMetadata)initWithIdentifier:(id)identifier displayRepresentation:(id)representation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEnumCaseMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNEnumCaseMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayRepresentation = [(LNEnumCaseMetadata *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];
}

- (LNEnumCaseMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];

  v7 = [(LNEnumCaseMetadata *)self initWithIdentifier:v5 displayRepresentation:v6];
  return v7;
}

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
LABEL_20:

      goto LABEL_21;
    }

    identifier = [(LNEnumCaseMetadata *)self identifier];
    identifier2 = [(LNEnumCaseMetadata *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
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

    displayRepresentation = [(LNEnumCaseMetadata *)self displayRepresentation];
    displayRepresentation2 = [(LNEnumCaseMetadata *)v6 displayRepresentation];
    v14 = displayRepresentation;
    v17 = displayRepresentation2;
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
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (LNEnumCaseMetadata)initWithIdentifier:(id)identifier displayRepresentation:(id)representation
{
  identifierCopy = identifier;
  representationCopy = representation;
  v9 = representationCopy;
  if (identifierCopy)
  {
    if (representationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNEnumCaseMetadata;
  v10 = [(LNEnumCaseMetadata *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    displayRepresentation = v10->_displayRepresentation;
    v10->_displayRepresentation = v13;

    v15 = v10;
  }

  return v10;
}

@end