@interface MIOParameterDescription
- (BOOL)isEqual:(id)a3;
- (MIOParameterDescription)initWithKey:(id)a3 BOOLParameter:(const void *)a4;
- (MIOParameterDescription)initWithKey:(id)a3 defaultValue:(id)a4 numericConstraint:(id)a5;
- (MIOParameterDescription)initWithKey:(id)a3 doubleParameter:(const void *)a4;
- (MIOParameterDescription)initWithKey:(id)a3 int64Parameter:(const void *)a4;
- (MIOParameterDescription)initWithKey:(id)a3 stringParameter:(const void *)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOParameterDescription

- (MIOParameterDescription)initWithKey:(id)a3 defaultValue:(id)a4 numericConstraint:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MIOParameterDescription;
  v11 = [(MIOParameterDescription *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    key = v11->_key;
    v11->_key = v12;

    objc_storeStrong(&v11->_defaultValue, a4);
    v14 = [v10 copy];
    numericConstraint = v11->_numericConstraint;
    v11->_numericConstraint = v14;
  }

  return v11;
}

- (MIOParameterDescription)initWithKey:(id)a3 doubleParameter:(const void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 2)];
  if (*(a4 + 9) == 10)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a4 + 3) + 16)];
    if (*(a4 + 9) == 10)
    {
      v9 = *(a4 + 3);
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

  v12 = [(MIOParameterDescription *)self initWithKey:v6 defaultValue:v7 numericConstraint:v11];

  return v12;
}

- (MIOParameterDescription)initWithKey:(id)a3 int64Parameter:(const void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a4 + 2)];
  v8 = *(a4 + 9);
  if (v8 == 11)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = *(a4 + 3);
    if (*(a4 + 9) != 11)
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

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a4 + 3) + 16)];
    if (*(a4 + 9) == 10)
    {
      v10 = *(a4 + 3);
    }

    else
    {
      v10 = &CoreML::Specification::_Int64Range_default_instance_;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10[3]];
    v12 = [[MIONumericConstraint alloc] initWithMinimum:v9 maximum:v11];
  }

LABEL_15:
  v18 = [(MIOParameterDescription *)self initWithKey:v6 defaultValue:v7 numericConstraint:v12];

  return v18;
}

- (MIOParameterDescription)initWithKey:(id)a3 BOOLParameter:(const void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a4 + 16)];
  v8 = [(MIOParameterDescription *)self initWithKey:v6 defaultValue:v7 numericConstraint:0];

  return v8;
}

- (MIOParameterDescription)initWithKey:(id)a3 stringParameter:(const void *)a4
{
  v6 = a3;
  v7 = *(a4 + 2) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v9 = [(MIOParameterDescription *)self initWithKey:v6 defaultValue:v8 numericConstraint:0];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIOParameterDescription *)self key];
  v5 = [(MIOParameterDescription *)self defaultValue];
  v6 = [(MIOParameterDescription *)self numericConstraint];
  v7 = [v3 stringWithFormat:@"MIOParameterDescription { key: %@, defaultValue: %@, numericConstraint: %@ }", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOParameterDescription *)self key];
      v7 = [(MIOParameterDescription *)v5 key];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(MIOParameterDescription *)self defaultValue];
        v10 = [(MIOParameterDescription *)v5 defaultValue];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = [(MIOParameterDescription *)self numericConstraint];
          if (v12)
          {
          }

          else
          {
            v14 = [(MIOParameterDescription *)v5 numericConstraint];

            if (!v14)
            {
LABEL_11:
              v13 = 1;
LABEL_13:

              goto LABEL_14;
            }
          }

          v15 = [(MIOParameterDescription *)self numericConstraint];
          v16 = [(MIOParameterDescription *)v5 numericConstraint];
          v17 = [v15 isEqual:v16];

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
  v3 = [(MIOParameterDescription *)self defaultValue];
  v4 = [v3 conformsToProtocol:&unk_1F4166538];

  if (v4)
  {
    v5 = [(MIOParameterDescription *)self defaultValue];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MIOParameterDescription *)self key];
  v8 = [v7 hash];
  v9 = [(MIOParameterDescription *)self numericConstraint];
  v10 = [v9 hash];

  return v8 ^ v6 ^ v10;
}

@end