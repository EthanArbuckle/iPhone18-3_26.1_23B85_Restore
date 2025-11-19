@interface LNAsyncIteratorReference
- (BOOL)isEqual:(id)a3;
- (LNAsyncIteratorReference)initWithCoder:(id)a3;
- (LNAsyncIteratorReference)initWithSequenceIdentifier:(id)a3 iteratorIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAsyncIteratorReference

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

    v7 = [(LNAsyncIteratorReference *)self iteratorIdentifier];
    v8 = [(LNAsyncIteratorReference *)v6 iteratorIdentifier];
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

      v12 = [v9 isEqual:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNAsyncIteratorReference *)self sequenceIdentifier];
    v16 = [(LNAsyncIteratorReference *)v6 sequenceIdentifier];
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
  v3 = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  v4 = [v3 hash];
  v5 = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (LNAsyncIteratorReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iteratorIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequenceIdentifier"];

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
    v8 = 0;
  }

  else
  {
    self = [(LNAsyncIteratorReference *)self initWithSequenceIdentifier:v6 iteratorIdentifier:v5];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  [v4 encodeObject:v5 forKey:@"iteratorIdentifier"];

  v6 = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  [v4 encodeObject:v6 forKey:@"sequenceIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAsyncIteratorReference *)self sequenceIdentifier];
  v7 = [v6 UUIDString];
  v8 = [(LNAsyncIteratorReference *)self iteratorIdentifier];
  v9 = [v3 stringWithFormat:@"<%@: %@/%@>", v5, v7, v8];

  return v9;
}

- (LNAsyncIteratorReference)initWithSequenceIdentifier:(id)a3 iteratorIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sequenceIdentifier"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"iteratorIdentifier"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = LNAsyncIteratorReference;
  v11 = [(LNAsyncIteratorReference *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sequenceIdentifier, a3);
    objc_storeStrong(&v12->_iteratorIdentifier, a4);
    v13 = v12;
  }

  return v12;
}

@end