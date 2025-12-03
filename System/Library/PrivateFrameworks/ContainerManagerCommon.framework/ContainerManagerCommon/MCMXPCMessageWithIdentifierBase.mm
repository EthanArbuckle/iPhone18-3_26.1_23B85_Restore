@interface MCMXPCMessageWithIdentifierBase
- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
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

- (MCMXPCMessageWithIdentifierBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MCMXPCMessageWithIdentifierBase;
  v10 = [(MCMXPCMessageBase *)&v18 initWithXPCObject:objectCopy context:contextCopy error:error];
  if (v10)
  {
    clientIdentity = [contextCopy clientIdentity];
    codeSignInfo = [clientIdentity codeSignInfo];
    identifier = [codeSignInfo identifier];
    v14 = [(MCMXPCMessageBase *)v10 identifierFromXPCObject:objectCopy elseClientIdentifier:identifier];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

@end