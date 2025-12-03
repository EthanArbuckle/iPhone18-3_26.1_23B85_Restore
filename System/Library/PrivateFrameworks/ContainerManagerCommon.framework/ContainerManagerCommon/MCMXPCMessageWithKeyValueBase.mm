@interface MCMXPCMessageWithKeyValueBase
- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (id)value;
@end

@implementation MCMXPCMessageWithKeyValueBase

- (id)value
{
  result = self->_value;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = MCMXPCMessageWithKeyValueBase;
  v9 = [(MCMXPCMessageWithKeyBase *)&v18 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (!v9 || ((v17 = 1, [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:objectCopy key:"Value" error:&v17], v11 = objc_claimAutoreleasedReturnValue(), value = v10->_value, v10->_value = v11, value, !v10->_value) ? (v13 = v17 == 1) : (v13 = 1), v13))
  {
    v14 = v10;
  }

  else
  {
    if (error)
    {
      *error = v17;
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end