@interface MCMXPCMessageWithConcreteContainersArrayBase
- (MCMXPCMessageWithConcreteContainersArrayBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
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

- (MCMXPCMessageWithConcreteContainersArrayBase)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31[0] = 1;
  v29.receiver = self;
  v29.super_class = MCMXPCMessageWithConcreteContainersArrayBase;
  v10 = [(MCMXPCMessageBase *)&v29 initWithXPCObject:v8 context:v9 error:a5];
  if (v10)
  {
    v11 = xpc_dictionary_get_array(v8, "ContainersArray");
    container_object_array = container_xpc_decode_create_container_object_array();
    if (container_object_array)
    {
      v13 = container_object_array;
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v30];
      if (v30)
      {
        v26 = v11;
        v27 = v8;
        v28 = a5;
        v15 = 0;
        while (1)
        {
          v16 = [MCMConcreteContainerIdentityForLibsystem alloc];
          v17 = *(v13 + 8 * v15);
          v18 = [v9 clientIdentity];
          v19 = [v18 userIdentity];
          v20 = [v9 userIdentityCache];
          v21 = [(MCMConcreteContainerIdentityForLibsystem *)v16 initWithLibsystemContainer:v17 defaultUserIdentity:v19 userIdentityCache:v20 error:v31];

          if (!v21)
          {
            break;
          }

          [v14 addObject:v21];

          if (++v15 >= v30)
          {
            v8 = v27;
            a5 = v28;
            goto LABEL_10;
          }
        }

        v31[0] = 38;

        v10 = 0;
        v8 = v27;
        a5 = v28;
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

  if (a5 && v31[0] != 1)
  {
    *a5 = v31[0];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

@end