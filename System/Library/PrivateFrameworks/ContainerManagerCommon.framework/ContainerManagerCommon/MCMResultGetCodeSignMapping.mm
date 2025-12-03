@interface MCMResultGetCodeSignMapping
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultGetCodeSignMapping)initWithInfo:(id)info;
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

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultGetCodeSignMapping;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      info = [(MCMResultGetCodeSignMapping *)self info];
      v8 = _CFXPCCreateXPCObjectFromCFObject();

      if (v8)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyInfoDictionary", v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultGetCodeSignMapping)initWithInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = MCMResultGetCodeSignMapping;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_info, info);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end