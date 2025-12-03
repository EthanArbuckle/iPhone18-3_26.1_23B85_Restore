@interface MCMResultFetchPersonaUniqueStrings
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)strings;
- (NSSet)personaUniqueStrings;
- (void)setPersonaUniqueStrings:(id)strings;
@end

@implementation MCMResultFetchPersonaUniqueStrings

- (void)setPersonaUniqueStrings:(id)strings
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_personaUniqueStrings = &self->_personaUniqueStrings;

  objc_storeStrong(p_personaUniqueStrings, strings);
}

- (NSSet)personaUniqueStrings
{
  result = self->_personaUniqueStrings;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12.receiver = self;
  v12.super_class = MCMResultFetchPersonaUniqueStrings;
  v5 = [(MCMResultBase *)&v12 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      personaUniqueStrings = [(MCMResultFetchPersonaUniqueStrings *)self personaUniqueStrings];
      allObjects = [personaUniqueStrings allObjects];
      v9 = _CFXPCCreateXPCObjectFromCFObject();

      if (v9)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyPersonaUniqueStringsArray", v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)strings
{
  v11 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v10.receiver = self;
  v10.super_class = MCMResultFetchPersonaUniqueStrings;
  v6 = [(MCMResultBase *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueStrings, strings);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end