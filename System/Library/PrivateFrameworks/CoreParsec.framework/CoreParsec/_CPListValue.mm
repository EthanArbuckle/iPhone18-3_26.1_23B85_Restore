@interface _CPListValue
- (BOOL)isEqual:(id)a3;
- (_CPListValue)initWithFacade:(id)a3;
- (void)addValues:(id)a3;
- (void)setValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPListValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_CPListValue *)self values];
    v6 = [v4 values];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_CPListValue *)self values];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_CPListValue *)self values];
      v11 = [v4 values];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addValues:(id)a3
{
  v4 = a3;
  values = self->_values;
  v8 = v4;
  if (!values)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = v6;

    v4 = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:v4];
}

- (void)setValues:(id)a3
{
  v4 = [a3 mutableCopy];
  values = self->_values;
  self->_values = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPListValue)initWithFacade:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPListValue *)self init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [_CPValue alloc];
          v13 = [(_CPValue *)v12 initWithFacade:v11, v17];
          [(_CPListValue *)v5 addValues:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end