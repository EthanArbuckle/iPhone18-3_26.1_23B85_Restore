@interface MCMXPCMessageWithIdentifierBase
- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (NSString)identifier;
@end

@implementation MCMXPCMessageWithIdentifierBase

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = MCMXPCMessageWithIdentifierBase;
  v10 = [(MCMXPCMessageBase *)&v18 initWithXPCObject:v8 context:v9 error:a5];
  if (v10)
  {
    v11 = [v9 clientIdentity];
    v12 = [v11 codeSignInfo];
    v13 = [v12 identifier];
    v14 = [(MCMXPCMessageBase *)v10 identifierFromXPCObject:v8 elseClientIdentifier:v13];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

@end