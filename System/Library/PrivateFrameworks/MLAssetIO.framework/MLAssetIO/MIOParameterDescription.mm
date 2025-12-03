@interface MIOParameterDescription
- (BOOL)isEqual:(id)equal;
- (MIOParameterDescription)initWithKey:(id)key BOOLParameter:(const void *)parameter;
- (MIOParameterDescription)initWithKey:(id)key defaultValue:(id)value numericConstraint:(id)constraint;
- (MIOParameterDescription)initWithKey:(id)key doubleParameter:(const void *)parameter;
- (MIOParameterDescription)initWithKey:(id)key int64Parameter:(const void *)parameter;
- (MIOParameterDescription)initWithKey:(id)key stringParameter:(const void *)parameter;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOParameterDescription

- (MIOParameterDescription)initWithKey:(id)key defaultValue:(id)value numericConstraint:(id)constraint
{
  keyCopy = key;
  valueCopy = value;
  constraintCopy = constraint;
  v17.receiver = self;
  v17.super_class = MIOParameterDescription;
  v11 = [(MIOParameterDescription *)&v17 init];
  if (v11)
  {
    v12 = [keyCopy copy];
    key = v11->_key;
    v11->_key = v12;

    objc_storeStrong(&v11->_defaultValue, value);
    v14 = [constraintCopy copy];
    numericConstraint = v11->_numericConstraint;
    v11->_numericConstraint = v14;
  }

  return v11;
}

- (MIOParameterDescription)initWithKey:(id)key doubleParameter:(const void *)parameter
{
  keyCopy = key;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(parameter + 2)];
  if (*(parameter + 9) == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(parameter + 3) + 16)];
    if (*(parameter + 9) == 10)
    {
      v9 = *(parameter + 3);
    }

    else
    {
      v9 = &CoreML::Specification::_DoubleRange_default_instance_;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(v9 + 3)];
    v11 = [[MIONumericConstraint alloc] initWithMinimum:v8 maximum:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MIOParameterDescription *)self initWithKey:keyCopy defaultValue:v7 numericConstraint:v11];

  return v12;
}

- (MIOParameterDescription)initWithKey:(id)key int64Parameter:(const void *)parameter
{
  keyCopy = key;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(parameter + 2)];
  v8 = *(parameter + 9);
  if (v8 == 11)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = *(parameter + 3);
    if (*(parameter + 9) != 11)
    {
      v13 = &CoreML::Specification::_Int64Set_default_instance_;
    }

    v14 = *(v13 + 4);
    if (v14)
    {
      v15 = v13[3];
      v16 = 8 * v14;
      do
      {
        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:*v15];
        [v9 addObject:v17];

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

    v12 = [[MIONumericConstraint alloc] initWithEnumeratedNumbers:v9];
  }

  else
  {
    if (v8 != 10)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(parameter + 3) + 16)];
    if (*(parameter + 9) == 10)
    {
      v10 = *(parameter + 3);
    }

    else
    {
      v10 = &CoreML::Specification::_Int64Range_default_instance_;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10[3]];
    v12 = [[MIONumericConstraint alloc] initWithMinimum:v9 maximum:v11];
  }

LABEL_15:
  v18 = [(MIOParameterDescription *)self initWithKey:keyCopy defaultValue:v7 numericConstraint:v12];

  return v18;
}

- (MIOParameterDescription)initWithKey:(id)key BOOLParameter:(const void *)parameter
{
  keyCopy = key;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(parameter + 16)];
  v8 = [(MIOParameterDescription *)self initWithKey:keyCopy defaultValue:v7 numericConstraint:0];

  return v8;
}

- (MIOParameterDescription)initWithKey:(id)key stringParameter:(const void *)parameter
{
  keyCopy = key;
  v7 = *(parameter + 2) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v9 = [(MIOParameterDescription *)self initWithKey:keyCopy defaultValue:v8 numericConstraint:0];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIOParameterDescription *)self key];
  defaultValue = [(MIOParameterDescription *)self defaultValue];
  numericConstraint = [(MIOParameterDescription *)self numericConstraint];
  v7 = [v3 stringWithFormat:@"MIOParameterDescription { key: %@, defaultValue: %@, numericConstraint: %@ }", v4, defaultValue, numericConstraint];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(MIOParameterDescription *)self key];
      v7 = [(MIOParameterDescription *)v5 key];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        defaultValue = [(MIOParameterDescription *)self defaultValue];
        defaultValue2 = [(MIOParameterDescription *)v5 defaultValue];
        v11 = [defaultValue isEqual:defaultValue2];

        if (v11)
        {
          numericConstraint = [(MIOParameterDescription *)self numericConstraint];
          if (numericConstraint)
          {
          }

          else
          {
            numericConstraint2 = [(MIOParameterDescription *)v5 numericConstraint];

            if (!numericConstraint2)
            {
LABEL_11:
              v13 = 1;
LABEL_13:

              goto LABEL_14;
            }
          }

          numericConstraint3 = [(MIOParameterDescription *)self numericConstraint];
          numericConstraint4 = [(MIOParameterDescription *)v5 numericConstraint];
          v17 = [numericConstraint3 isEqual:numericConstraint4];

          if (v17)
          {
            goto LABEL_11;
          }
        }
      }

      v13 = 0;
      goto LABEL_13;
    }

    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (unint64_t)hash
{
  defaultValue = [(MIOParameterDescription *)self defaultValue];
  v4 = [defaultValue conformsToProtocol:&unk_1F4166538];

  if (v4)
  {
    defaultValue2 = [(MIOParameterDescription *)self defaultValue];
    v6 = [defaultValue2 hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MIOParameterDescription *)self key];
  v8 = [v7 hash];
  numericConstraint = [(MIOParameterDescription *)self numericConstraint];
  v10 = [numericConstraint hash];

  return v8 ^ v6 ^ v10;
}

@end