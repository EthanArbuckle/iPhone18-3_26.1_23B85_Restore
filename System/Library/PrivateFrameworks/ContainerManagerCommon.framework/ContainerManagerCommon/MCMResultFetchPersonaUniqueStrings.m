@interface MCMResultFetchPersonaUniqueStrings
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)a3;
- (NSSet)personaUniqueStrings;
- (void)setPersonaUniqueStrings:(id)a3;
@end

@implementation MCMResultFetchPersonaUniqueStrings

- (void)setPersonaUniqueStrings:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_personaUniqueStrings = &self->_personaUniqueStrings;

  objc_storeStrong(p_personaUniqueStrings, a3);
}

- (NSSet)personaUniqueStrings
{
  result = self->_personaUniqueStrings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MCMResultFetchPersonaUniqueStrings;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v7 = [(MCMResultFetchPersonaUniqueStrings *)self personaUniqueStrings];
      v8 = [v7 allObjects];
      v9 = _CFXPCCreateXPCObjectFromCFObject();

      if (v9)
      {
        xpc_dictionary_set_value(v4, "ReplyPersonaUniqueStringsArray", v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMResultFetchPersonaUniqueStrings;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueStrings, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end