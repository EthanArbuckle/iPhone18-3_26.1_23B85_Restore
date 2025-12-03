@interface MCMXPCMessageSetCodeSignMapping
- (MCMXPCMessageSetCodeSignMapping)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (id)info;
- (id)options;
@end

@implementation MCMXPCMessageSetCodeSignMapping

- (id)options
{
  result = self->_options;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)info
{
  result = self->_info;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageSetCodeSignMapping)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v22.receiver = self;
  v22.super_class = MCMXPCMessageSetCodeSignMapping;
  v9 = [(MCMXPCMessageWithIdentifierBase *)&v22 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  v21 = 1;
  v11 = [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:objectCopy key:"CodeSigningInfo" error:&v21];
  info = v10->_info;
  v10->_info = v11;

  v13 = v21;
  if (!v10->_info && v21 != 1)
  {
    goto LABEL_13;
  }

  v21 = 1;
  v15 = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"OptionsDictionary" error:&v21];
  options = v10->_options;
  v10->_options = v15;

  v13 = v21;
  if (v10->_options || v21 == 1)
  {
LABEL_12:
    v18 = v10;
  }

  else
  {
LABEL_13:
    if (error)
    {
      *error = v13;
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end