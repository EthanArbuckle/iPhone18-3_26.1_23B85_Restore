@interface MCMXPCMessageWithOwnersAndGroupsBase
- (MCMXPCMessageWithOwnersAndGroupsBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSSet)groupIdentifiers;
- (NSSet)ownerIdentifiers;
- (unint64_t)containerClass;
@end

@implementation MCMXPCMessageWithOwnersAndGroupsBase

- (NSSet)groupIdentifiers
{
  result = self->_groupIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)ownerIdentifiers
{
  result = self->_ownerIdentifiers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithOwnersAndGroupsBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v46 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v35.receiver = self;
  v35.super_class = MCMXPCMessageWithOwnersAndGroupsBase;
  v9 = [(MCMXPCMessageBase *)&v35 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v34 = 1;
    v9->_containerClass = 0;
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = 0;

    groupIdentifiers = v10->_groupIdentifiers;
    v10->_groupIdentifiers = 0;

    uint64 = xpc_dictionary_get_uint64(objectCopy, "ContainerClass");
    v10->_containerClass = uint64;
    if (uint64 - 1 >= 0xE)
    {
      v14 = 0;
      v23 = 0;
      v24 = 20;
LABEL_29:
      v34 = v24;
      goto LABEL_30;
    }

    v10->_containerClass = container_class_normalized();
    v14 = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"OwnerIdentifiersArray" error:&v34];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = 0;
LABEL_28:
        v24 = 110;
        goto LABEL_29;
      }

      v33 = v14;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = v14;
      v16 = [(NSSet *)v15 countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = 0;
              v34 = 110;
              goto LABEL_38;
            }
          }

          v17 = [(NSSet *)v15 countByEnumeratingWithState:&v42 objects:v41 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v21 = [MEMORY[0x1E695DFD8] setWithArray:v15];
      v22 = v10->_ownerIdentifiers;
      v10->_ownerIdentifiers = v21;
    }

    else
    {
      v24 = v34;
      if (v34 != 1)
      {
        v14 = 0;
        v23 = 0;
        goto LABEL_30;
      }
    }

    v23 = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"GroupIdentifiers" error:&v34];
    if (!v23)
    {
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v14;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = v23;
      v25 = [(NSSet *)v23 countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v37 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v34 = 110;
              v15 = v23;
              goto LABEL_38;
            }
          }

          v26 = [(NSSet *)v23 countByEnumeratingWithState:&v37 objects:v36 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v30 = [MEMORY[0x1E695DFD8] setWithArray:v23];
      v15 = v10->_groupIdentifiers;
      v10->_groupIdentifiers = v30;
LABEL_38:

      v14 = v33;
LABEL_39:
      v24 = v34;
      if (v34 == 1)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_30:
      if (error)
      {
        *error = v24;
      }

      v10 = 0;
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_34:

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

@end