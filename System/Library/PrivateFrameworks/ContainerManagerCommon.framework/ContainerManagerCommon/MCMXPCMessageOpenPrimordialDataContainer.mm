@interface MCMXPCMessageOpenPrimordialDataContainer
- (BOOL)useCodeSignDatabase;
- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageOpenPrimordialDataContainer

- (BOOL)useCodeSignDatabase
{
  result = self->_useCodeSignDatabase;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageOpenPrimordialDataContainer;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_useCodeSignDatabase = xpc_dictionary_get_BOOL(objectCopy, "UseCodeSigningDatabase");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end