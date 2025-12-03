@interface MIONumericConstraint
- (BOOL)isEqual:(id)equal;
- (MIONumericConstraint)initWithEnumeratedNumbers:(id)numbers;
- (MIONumericConstraint)initWithMinimum:(id)minimum maximum:(id)maximum;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation MIONumericConstraint

- (MIONumericConstraint)initWithMinimum:(id)minimum maximum:(id)maximum
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  v12.receiver = self;
  v12.super_class = MIONumericConstraint;
  v9 = [(MIONumericConstraint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minNumber, minimum);
    objc_storeStrong(&v10->_maxNumber, maximum);
  }

  return v10;
}

- (MIONumericConstraint)initWithEnumeratedNumbers:(id)numbers
{
  v30 = *MEMORY[0x1E69E9840];
  numbersCopy = numbers;
  v28.receiver = self;
  v28.super_class = MIONumericConstraint;
  v5 = [(MIONumericConstraint *)&v28 init];
  if (![numbersCopy count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MIONumericConstraint cannot be initialized with the empty enumerated numbers."];
  }

  if (v5)
  {
    v6 = [numbersCopy objectAtIndexedSubscript:0];
    v7 = [numbersCopy objectAtIndexedSubscript:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = numbersCopy;
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
  enumeratedNumbers = [(MIONumericConstraint *)self enumeratedNumbers];

  if (enumeratedNumbers)
  {
    enumeratedNumbers2 = [(MIONumericConstraint *)self enumeratedNumbers];
    allObjects = [enumeratedNumbers2 allObjects];
    v7 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"[%@]", v7];
  }

  else
  {
    enumeratedNumbers2 = [(MIONumericConstraint *)self minNumber];
    allObjects = [(MIONumericConstraint *)self maxNumber];
    [v3 appendFormat:@"min: %@ max: %@", enumeratedNumbers2, allObjects];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      enumeratedNumbers = [(MIONumericConstraint *)self enumeratedNumbers];

      if (enumeratedNumbers)
      {
        enumeratedNumbers2 = [(MIONumericConstraint *)self enumeratedNumbers];
        enumeratedNumbers3 = [(MIONumericConstraint *)v5 enumeratedNumbers];
        v9 = [enumeratedNumbers2 isEqual:enumeratedNumbers3];

        if ((v9 & 1) == 0)
        {
LABEL_11:
          v10 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        minNumber = [(MIONumericConstraint *)self minNumber];
        minNumber2 = [(MIONumericConstraint *)v5 minNumber];
        v13 = [minNumber isEqual:minNumber2];

        if (!v13)
        {
          goto LABEL_11;
        }

        maxNumber = [(MIONumericConstraint *)self maxNumber];
        maxNumber2 = [(MIONumericConstraint *)v5 maxNumber];
        v16 = [maxNumber isEqual:maxNumber2];

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
  minNumber = [(MIONumericConstraint *)self minNumber];
  v4 = [minNumber hash];
  maxNumber = [(MIONumericConstraint *)self maxNumber];
  v6 = [maxNumber hash] ^ v4;
  enumeratedNumbers = [(MIONumericConstraint *)self enumeratedNumbers];
  v8 = [enumeratedNumbers hash];

  return v6 ^ v8;
}

@end