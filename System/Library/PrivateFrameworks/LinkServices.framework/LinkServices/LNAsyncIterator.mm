@interface LNAsyncIterator
- (BOOL)isEqual:(id)equal;
- (LNAsyncIterator)initWithReference:(id)reference connection:(id)connection;
- (id)description;
- (unint64_t)hash;
- (void)nextResultsWithCompletionHandler:(id)handler;
@end

@implementation LNAsyncIterator

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

    connection = [(LNAsyncIterator *)self connection];
    connection2 = [(LNAsyncIterator *)v6 connection];
    v9 = connection;
    v10 = connection2;
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

    reference = [(LNAsyncIterator *)self reference];
    reference2 = [(LNAsyncIterator *)v6 reference];
    v14 = reference;
    v17 = reference2;
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
  connection = [(LNAsyncIterator *)self connection];
  v4 = [connection hash];
  reference = [(LNAsyncIterator *)self reference];
  v6 = [reference hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  connection = [(LNAsyncIterator *)self connection];
  reference = [(LNAsyncIterator *)self reference];
  v8 = [v3 stringWithFormat:@"<%@: %p, connection: %@, reference: %@>", v5, self, connection, reference];

  return v8;
}

- (void)nextResultsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(LNAsyncIterator *)self connection];
  reference = [(LNAsyncIterator *)self reference];
  [connection nextAsyncIteratorResults:reference completionHandler:handlerCopy];
}

- (LNAsyncIterator)initWithReference:(id)reference connection:(id)connection
{
  referenceCopy = reference;
  connectionCopy = connection;
  if (connectionCopy)
  {
    if (referenceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    if (referenceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAsyncIterator.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"reference"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = LNAsyncIterator;
  v10 = [(LNAsyncIterator *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_connection, connection);
    objc_storeStrong(&v11->_reference, reference);
    v12 = v11;
  }

  return v11;
}

@end