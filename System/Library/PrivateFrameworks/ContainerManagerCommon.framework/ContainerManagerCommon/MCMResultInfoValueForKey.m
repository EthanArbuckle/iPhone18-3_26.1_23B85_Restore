@interface MCMResultInfoValueForKey
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultInfoValueForKey)initWithValue:(id)a3;
- (id)value;
- (void)setValue:(id)a3;
@end

@implementation MCMResultInfoValueForKey

- (void)setValue:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_value = &self->_value;

  objc_storeStrong(p_value, a3);
}

- (id)value
{
  result = self->_value;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MCMResultInfoValueForKey;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];
    if (v6)
    {
LABEL_5:

      goto LABEL_6;
    }

    v7 = [(MCMResultInfoValueForKey *)self value];

    if (v7)
    {
      v6 = [(MCMResultInfoValueForKey *)self value];
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v4, "ReplyInfoValue", v8);

      goto LABEL_5;
    }
  }

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultInfoValueForKey)initWithValue:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultInfoValueForKey;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end