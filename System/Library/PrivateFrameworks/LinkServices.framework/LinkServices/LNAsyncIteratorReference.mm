@interface LNAsyncIteratorReference
- (BOOL)isEqual:(id)equal;
- (LNAsyncIteratorReference)initWithCoder:(id)coder;
- (LNAsyncIteratorReference)initWithSequenceIdentifier:(id)identifier iteratorIdentifier:(id)iteratorIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAsyncIteratorReference

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

    iteratorIdentifier = [(LNAsyncIteratorReference *)self iteratorIdentifier];
    iteratorIdentifier2 = [(LNAsyncIteratorReference *)v6 iteratorIdentifier];
    v9 = iteratorIdentifier;
    v10 = iteratorIdentifier2;
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

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    sequenceIdentifier = [(LNAsyncIteratorReference *)self sequenceIdentifier];
    sequenceIdentifier2 = [(LNAsyncIteratorReference *)v6 sequenceIdentifier];
    v14 = sequenceIdentifier;
    v17 = sequenceIdentifier2;
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

- (unint64_t)hash
{
  iteratorIdentifier = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  v4 = [iteratorIdentifier hash];
  sequenceIdentifier = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  v6 = [sequenceIdentifier hash];

  return v6 ^ v4;
}

- (LNAsyncIteratorReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iteratorIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequenceIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNAsyncIteratorReference *)self initWithSequenceIdentifier:v6 iteratorIdentifier:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  iteratorIdentifier = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  [coderCopy encodeObject:iteratorIdentifier forKey:@"iteratorIdentifier"];

  sequenceIdentifier = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  [coderCopy encodeObject:sequenceIdentifier forKey:@"sequenceIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sequenceIdentifier = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  uUIDString = [sequenceIdentifier UUIDString];
  iteratorIdentifier = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %@/%@>", v5, uUIDString, iteratorIdentifier];

  return v9;
}

- (LNAsyncIteratorReference)initWithSequenceIdentifier:(id)identifier iteratorIdentifier:(id)iteratorIdentifier
{
  identifierCopy = identifier;
  iteratorIdentifierCopy = iteratorIdentifier;
  v10 = iteratorIdentifierCopy;
  if (identifierCopy)
  {
    if (iteratorIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sequenceIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"iteratorIdentifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNAsyncIteratorReference;
  v11 = [(LNAsyncIteratorReference *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sequenceIdentifier, identifier);
    objc_storeStrong(&v12->_iteratorIdentifier, iteratorIdentifier);
    v13 = v12;
  }

  return v12;
}

@end