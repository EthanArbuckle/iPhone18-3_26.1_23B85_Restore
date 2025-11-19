@interface MCMXPCMessageWithKeyBase
- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageWithKeyBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v15.receiver = self;
  v15.super_class = MCMXPCMessageWithKeyBase;
  v9 = [(MCMXPCMessageWithConcreteContainerBase *)&v15 initWithXPCObject:v8 context:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsStringValueFromXPCObject:v8 key:"Key"];
    key = v10->_key;
    v10->_key = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end