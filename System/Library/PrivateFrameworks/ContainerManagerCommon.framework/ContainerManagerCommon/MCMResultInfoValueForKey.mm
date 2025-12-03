@interface MCMResultInfoValueForKey
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultInfoValueForKey)initWithValue:(id)value;
- (id)value;
- (void)setValue:(id)value;
@end

@implementation MCMResultInfoValueForKey

- (void)setValue:(id)value
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_value = &self->_value;

  objc_storeStrong(p_value, value);
}

- (id)value
{
  result = self->_value;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultInfoValueForKey;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    if (error)
    {
LABEL_5:

      goto LABEL_6;
    }

    value = [(MCMResultInfoValueForKey *)self value];

    if (value)
    {
      error = [(MCMResultInfoValueForKey *)self value];
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(replyCopy, "ReplyInfoValue", v8);

      goto LABEL_5;
    }
  }

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultInfoValueForKey)initWithValue:(id)value
{
  v11 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = MCMResultInfoValueForKey;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end