@interface MIONumericConstraint
- (BOOL)isEqual:(id)a3;
- (MIONumericConstraint)initWithEnumeratedNumbers:(id)a3;
- (MIONumericConstraint)initWithMinimum:(id)a3 maximum:(id)a4;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation MIONumericConstraint

- (MIONumericConstraint)initWithMinimum:(id)a3 maximum:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MIONumericConstraint;
  v9 = [(MIONumericConstraint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minNumber, a3);
    objc_storeStrong(&v10->_maxNumber, a4);
  }

  return v10;
}

- (MIONumericConstraint)initWithEnumeratedNumbers:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MIONumericConstraint;
  v5 = [(MIONumericConstraint *)&v28 init];
  if (![v4 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MIONumericConstraint cannot be initialized with the empty enumerated numbers."];
  }

  if (v5)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ([(NSNumber *)v6 compare:v13, v24]== NSOrderedDescending)
          {
            v14 = v13;

            v6 = v14;
          }

          if ([(NSNumber *)v7 compare:v13]== NSOrderedAscending)
          {
            v15 = v13;

            v7 = v15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    minNumber = v5->_minNumber;
    v5->_minNumber = v6;
    v17 = v6;

    maxNumber = v5->_maxNumber;
    v5->_maxNumber = v7;
    v19 = v7;

    v20 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    enumeratedNumbers = v5->_enumeratedNumbers;
    v5->_enumeratedNumbers = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"MIONumericConstraint "];
  v4 = [(MIONumericConstraint *)self enumeratedNumbers];

  if (v4)
  {
    v5 = [(MIONumericConstraint *)self enumeratedNumbers];
    v6 = [v5 allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"[%@]", v7];
  }

  else
  {
    v5 = [(MIONumericConstraint *)self minNumber];
    v6 = [(MIONumericConstraint *)self maxNumber];
    [v3 appendFormat:@"min: %@ max: %@", v5, v6];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIONumericConstraint *)self enumeratedNumbers];

      if (v6)
      {
        v7 = [(MIONumericConstraint *)self enumeratedNumbers];
        v8 = [(MIONumericConstraint *)v5 enumeratedNumbers];
        v9 = [v7 isEqual:v8];

        if ((v9 & 1) == 0)
        {
LABEL_11:
          v10 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v11 = [(MIONumericConstraint *)self minNumber];
        v12 = [(MIONumericConstraint *)v5 minNumber];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_11;
        }

        v14 = [(MIONumericConstraint *)self maxNumber];
        v15 = [(MIONumericConstraint *)v5 maxNumber];
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          goto LABEL_11;
        }
      }

      v10 = 1;
LABEL_12:

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MIONumericConstraint *)self minNumber];
  v4 = [v3 hash];
  v5 = [(MIONumericConstraint *)self maxNumber];
  v6 = [v5 hash] ^ v4;
  v7 = [(MIONumericConstraint *)self enumeratedNumbers];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end