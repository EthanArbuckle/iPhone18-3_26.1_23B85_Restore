@interface MCMXPCMessageOpenPrimordialDataContainer
- (BOOL)useCodeSignDatabase;
- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
@end

@implementation MCMXPCMessageOpenPrimordialDataContainer

- (BOOL)useCodeSignDatabase
{
  result = self->_useCodeSignDatabase;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MCMXPCMessageOpenPrimordialDataContainer;
  v9 = [(MCMXPCMessageBase *)&v12 initWithXPCObject:v8 context:a4 error:a5];
  if (v9)
  {
    v9->_useCodeSignDatabase = xpc_dictionary_get_BOOL(v8, "UseCodeSigningDatabase");
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end