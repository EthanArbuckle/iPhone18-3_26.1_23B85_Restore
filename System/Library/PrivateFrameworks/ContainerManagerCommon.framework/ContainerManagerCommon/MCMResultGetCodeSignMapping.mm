@interface MCMResultGetCodeSignMapping
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultGetCodeSignMapping)initWithInfo:(id)a3;
- (NSDictionary)info;
@end

@implementation MCMResultGetCodeSignMapping

- (NSDictionary)info
{
  result = self->_info;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MCMResultGetCodeSignMapping;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = [(MCMResultGetCodeSignMapping *)self info];
      v8 = _CFXPCCreateXPCObjectFromCFObject();

      if (v8)
      {
        xpc_dictionary_set_value(v4, "ReplyInfoDictionary", v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultGetCodeSignMapping)initWithInfo:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultGetCodeSignMapping;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_info, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end