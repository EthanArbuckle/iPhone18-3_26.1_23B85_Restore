@interface MCMXPCMessageReplace
- (MCMConcreteContainerIdentity)containerIdentityNew;
- (MCMConcreteContainerIdentity)containerIdentityOld;
- (MCMXPCMessageReplace)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageReplace

- (MCMConcreteContainerIdentity)containerIdentityNew
{
  result = self->_containerIdentityNew;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)containerIdentityOld
{
  result = self->_containerIdentityOld;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)disposition
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MCMXPCMessageReplace;
  v3 = [(MCMXPCMessageBase *)&v7 disposition];
  if (v3 == 1)
  {
    v4 = [(MCMXPCMessageReplace *)self containerIdentityNew];
    v3 = [v4 disposition];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (MCMXPCMessageReplace)initWithXPCObject:(id)a3 context:(id)a4 error:(unint64_t *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v40.receiver = self;
  v40.super_class = MCMXPCMessageReplace;
  v10 = [(MCMXPCMessageBase *)&v40 initWithXPCObject:v8 context:v9 error:a5];
  if (!v10)
  {
    goto LABEL_21;
  }

  v39 = 1;
  v11 = xpc_dictionary_get_dictionary(v8, "OldContainer");
  if (v11)
  {
    v12 = container_xpc_decode_container_object();
    if (!v12)
    {
      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        error_description = container_get_error_description();
        *buf = 134218242;
        v42 = v39;
        v43 = 2080;
        v44 = error_description;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to decode old container; error = (%llu) %s", buf, 0x16u);
      }

      v20 = 0;
      v22 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v13 = v12;
    v14 = [MCMConcreteContainerIdentityForLibsystem alloc];
    v15 = [v9 clientIdentity];
    v16 = [v15 userIdentity];
    v17 = [v9 userIdentityCache];
    v18 = [(MCMConcreteContainerIdentityForLibsystem *)v14 initWithLibsystemContainer:v13 defaultUserIdentity:v16 userIdentityCache:v17 error:&v39];
    containerIdentityOld = v10->_containerIdentityOld;
    v10->_containerIdentityOld = v18;
  }

  else
  {
    v13 = 0;
  }

  v20 = xpc_dictionary_get_dictionary(v8, "NewContainer");
  if (v20)
  {
    v21 = container_xpc_decode_container_object();
    if (v21)
    {
      v22 = v21;
      v23 = [MCMConcreteContainerIdentityForLibsystem alloc];
      v24 = [v9 clientIdentity];
      [v24 userIdentity];
      v25 = v38 = a5;
      [v9 userIdentityCache];
      v26 = v37 = v11;
      v27 = [(MCMConcreteContainerIdentityForLibsystem *)v23 initWithLibsystemContainer:v22 defaultUserIdentity:v25 userIdentityCache:v26 error:&v39];
      containerIdentityNew = v10->_containerIdentityNew;
      v10->_containerIdentityNew = v27;

      v11 = v37;
      a5 = v38;
    }

    else
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = v11;
        v35 = v39;
        v36 = container_get_error_description();
        *buf = 134218242;
        v42 = v35;
        v11 = v34;
        v43 = 2080;
        v44 = v36;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to decode new container; error = (%llu) %s", buf, 0x16u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v39 = 38;
  }

LABEL_16:
  MEMORY[0x1E12D3190](v13);
  MEMORY[0x1E12D3190](v22);
  if (v39 != 1)
  {
    if (a5)
    {
      *a5 = v39;
    }

    v10 = 0;
  }

LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

@end