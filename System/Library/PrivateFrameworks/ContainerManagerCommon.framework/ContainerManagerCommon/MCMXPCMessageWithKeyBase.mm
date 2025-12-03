@interface MCMXPCMessageWithKeyBase
- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSString)key;
@end

@implementation MCMXPCMessageWithKeyBase

- (NSString)key
{
  result = self->_key;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = MCMXPCMessageWithKeyBase;
  v9 = [(MCMXPCMessageWithConcreteContainerBase *)&v15 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:objectCopy key:"Key"];
    key = v10->_key;
    v10->_key = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end