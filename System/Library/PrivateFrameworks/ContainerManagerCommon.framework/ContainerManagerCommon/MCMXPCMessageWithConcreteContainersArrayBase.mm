@interface MCMXPCMessageWithConcreteContainersArrayBase
- (MCMXPCMessageWithConcreteContainersArrayBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (NSArray)concreteContainerIdentities;
@end

@implementation MCMXPCMessageWithConcreteContainersArrayBase

- (NSArray)concreteContainerIdentities
{
  result = self->_concreteContainerIdentities;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMXPCMessageWithConcreteContainersArrayBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v30 = 0;
  v31[0] = 1;
  v29.receiver = self;
  v29.super_class = MCMXPCMessageWithConcreteContainersArrayBase;
  v10 = [(MCMXPCMessageBase *)&v29 initWithXPCObject:objectCopy context:contextCopy error:error];
  if (v10)
  {
    v11 = xpc_dictionary_get_array(objectCopy, "ContainersArray");
    container_object_array = container_xpc_decode_create_container_object_array();
    if (container_object_array)
    {
      v13 = container_object_array;
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v30];
      if (v30)
      {
        v26 = v11;
        v27 = objectCopy;
        errorCopy = error;
        v15 = 0;
        while (1)
        {
          v16 = [MCMConcreteContainerIdentityForLibsystem alloc];
          v17 = *(v13 + 8 * v15);
          clientIdentity = [contextCopy clientIdentity];
          userIdentity = [clientIdentity userIdentity];
          userIdentityCache = [contextCopy userIdentityCache];
          v21 = [(MCMConcreteContainerIdentityForLibsystem *)v16 initWithLibsystemContainer:v17 defaultUserIdentity:userIdentity userIdentityCache:userIdentityCache error:v31];

          if (!v21)
          {
            break;
          }

          [v14 addObject:v21];

          if (++v15 >= v30)
          {
            objectCopy = v27;
            error = errorCopy;
            goto LABEL_10;
          }
        }

        v31[0] = 38;

        v10 = 0;
        objectCopy = v27;
        error = errorCopy;
LABEL_10:
        v11 = v26;
      }

      if (v31[0] == 1)
      {
        v22 = [v14 copy];
        concreteContainerIdentities = v10->_concreteContainerIdentities;
        v10->_concreteContainerIdentities = v22;
      }

      container_free_array_of_containers();
    }

    else
    {

      v10 = 0;
    }
  }

  if (error && v31[0] != 1)
  {
    *error = v31[0];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

@end