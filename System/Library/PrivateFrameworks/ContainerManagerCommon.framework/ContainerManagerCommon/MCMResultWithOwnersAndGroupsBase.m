@interface MCMResultWithOwnersAndGroupsBase
- (BOOL)encodeResultOntoReply:(id)a3;
- (MCMResultWithOwnersAndGroupsBase)init;
- (NSArray)groupIdentifiers;
- (NSArray)ownerIdentifiers;
- (void)addOwner:(id)a3 group:(id)a4;
@end

@implementation MCMResultWithOwnersAndGroupsBase

- (MCMResultWithOwnersAndGroupsBase)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCMResultWithOwnersAndGroupsBase;
  v2 = [(MCMResultBase *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableOwnerIdentifiers = v2->_mutableOwnerIdentifiers;
    v2->_mutableOwnerIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableGroupIdentifiers = v2->_mutableGroupIdentifiers;
    v2->_mutableGroupIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    facts = v2->_facts;
    v2->_facts = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)encodeResultOntoReply:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MCMResultWithOwnersAndGroupsBase;
  v5 = [(MCMResultBase *)&v26 encodeResultOntoReply:v4];
  if (v5)
  {
    v6 = [(MCMResultBase *)self error];

    if (!v6)
    {
      v23 = v5;
      v7 = [(NSMutableSet *)self->_facts count];
      if (v7 <= 1)
      {
        v7 = 1;
      }

      bytes = malloc_type_calloc(v7, 0x10uLL, 0x1000040451B5BE8uLL);
      __s = bytes;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = 48;
      v8 = self->_facts;
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v29;
        do
        {
          v13 = 0;
          v14 = &bytes[16 * v11 + 8];
          v11 += v10;
          do
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v28 + 1) + 8 * v13);
            *(v14 - 1) = [v15 ownerIndex];
            *v14 = [v15 groupIndex];
            v14 += 16;
            ++v13;
          }

          while (v10 != v13);
          v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v27 count:16];
        }

        while (v10);
      }

      xpc_dictionary_set_data(v4, "ReplyFacts", bytes, 16 * [*(&self->super.super.isa + v22) count]);
      mutableOwnerIdentifiers = self->_mutableOwnerIdentifiers;
      v17 = _CFXPCCreateXPCObjectFromCFObject();
      if (v17)
      {
        xpc_dictionary_set_value(v4, "ReplyOwnerIdentifiers", v17);
      }

      mutableGroupIdentifiers = self->_mutableGroupIdentifiers;
      v19 = _CFXPCCreateXPCObjectFromCFObject();
      LOBYTE(v5) = v23;
      if (v19)
      {
        xpc_dictionary_set_value(v4, "ReplyGroupIdentifiers", v19);
      }

      if (bytes)
      {
        free(bytes);
        memset_s(&__s, 8uLL, 0, 8uLL);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)addOwner:(id)a3 group:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_mutableOwnerIdentifiers indexOfObject:v11];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_mutableOwnerIdentifiers count];
    [(NSMutableArray *)self->_mutableOwnerIdentifiers addObject:v11];
  }

  v8 = [(NSMutableArray *)self->_mutableGroupIdentifiers indexOfObject:v6, v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSMutableArray *)self->_mutableGroupIdentifiers count];
    [(NSMutableArray *)self->_mutableGroupIdentifiers addObject:v6];
  }

  v9 = [[MCMResultWithOwnersAndGroupsBaseFact alloc] initWithOwnerIndex:v7 groupIndex:v8];
  [(NSMutableSet *)self->_facts addObject:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (NSArray)groupIdentifiers
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_mutableGroupIdentifiers copy];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSArray)ownerIdentifiers
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableArray *)self->_mutableOwnerIdentifiers copy];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end