@interface MCMLazyDescription
- (MCMLazyDescription)initWithDescriber:(id)a3;
- (id)description;
- (id)redactedDescription;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation MCMLazyDescription

- (id)redactedDescription
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self->_block + 2);
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    v4 = (*(self->_block + 2))();
    v5 = self->_value;
    self->_value = v4;

    value = self->_value;
  }

  v6 = *MEMORY[0x1E69E9840];

  return value;
}

- (unint64_t)length
{
  v7 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    v4 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  v5 = *MEMORY[0x1E69E9840];

  return [(NSString *)value length];
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v11 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    v9 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  v10 = *MEMORY[0x1E69E9840];

  [(NSString *)value getCharacters:a3 range:location, length];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    v6 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  v7 = *MEMORY[0x1E69E9840];

  return [(NSString *)value characterAtIndex:a3];
}

- (MCMLazyDescription)initWithDescriber:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCMLazyDescription;
  v5 = [(MCMLazyDescription *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end