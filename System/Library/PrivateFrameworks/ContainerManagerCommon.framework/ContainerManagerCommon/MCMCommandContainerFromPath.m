@interface MCMCommandContainerFromPath
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandContainerFromPath)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSURL)url;
- (container_object_s)_containerFromRelayToDaemonWithURL:(id)a3 relativePath:(char *)a4 error:(container_error_extended_s *)a5;
- (void)execute;
@end

@implementation MCMCommandContainerFromPath

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (container_object_s)_containerFromRelayToDaemonWithURL:(id)a3 relativePath:(char *)a4 error:(container_error_extended_s *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7847;
  v23 = __Block_byref_object_dispose__7848;
  v24 = 0;
  v9 = [(MCMCommand *)self context];
  v10 = [v9 clientIdentity];
  [v10 createLibsystemClient];

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "Command", 0x2CuLL);
  v12 = v8;
  xpc_dictionary_set_string(v11, "Path", [v8 fileSystemRepresentation]);
  v13 = v11;
  container_perform_with_client_context();
  if (v20[5])
  {
    v14 = container_xpc_decode_container_object();
    if (v14)
    {
      string = xpc_dictionary_get_string(v20[5], "ReplyRelativePath");
      if (a4)
      {
        if (string)
        {
          *a4 = strndup(string, 0x400uLL);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  container_free_client();
  if (!a5 || v14)
  {
    if (!a5)
    {
      v16 = v26[3];
      container_error_free();
    }
  }

  else
  {
    *a5 = v26[3];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __85__MCMCommandContainerFromPath__containerFromRelayToDaemonWithURL_relativePath_error___block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  v4 = container_xpc_send_sync_message();
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (void)execute
{
  v73 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v66 = 0;
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 classPathCache];

  v5 = [(MCMCommand *)self context];
  v6 = [v5 clientIdentity];
  v7 = [v6 posixUser];

  if ([v7 isRoleUser])
  {
    v8 = containermanager_copy_global_configuration();
    v9 = [v8 defaultUser];

    v7 = v9;
  }

  v10 = [v4 referenceForPOSIXUser:v7];
  v11 = [(MCMCommandContainerFromPath *)self url];
  v60 = v10;
  v12 = [v4 containerClassPathWithURL:v11 reference:v10];

  v65 = 0;
  v59 = v12;
  v61 = v4;
  if (v12)
  {
    v13 = [(MCMCommandContainerFromPath *)self url];
    [v13 fileSystemRepresentation];
    v14 = container_paths_copy_container_from_path();
  }

  else
  {
    v15 = containermanager_copy_global_configuration();
    v16 = [v15 dispositionForContainerClass:12];

    if (v16 != 2)
    {
      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v49 = [(MCMCommandContainerFromPath *)self url];
        v50 = [v49 path];
        *buf = 138412290;
        v68 = v50;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "[%@] is not a path that container manager recognizes among its prefixes.", buf, 0xCu);
      }

      v26 = [[MCMError alloc] initWithErrorType:21];
      goto LABEL_23;
    }

    v13 = [(MCMCommandContainerFromPath *)self url];
    v14 = [(MCMCommandContainerFromPath *)self _containerFromRelayToDaemonWithURL:v13 relativePath:&v65 error:&v66];
  }

  v17 = v14;

  if (!v17)
  {
    v26 = [[MCMError alloc] initWithErrorType:21];
    v27 = container_error_copy_unlocalized_description();
    __s = v27;
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v45 = [(MCMCommandContainerFromPath *)self url];
      v46 = [v45 path];
      *buf = 138412546;
      v68 = v46;
      v69 = 2080;
      v70 = v27;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Error obtaining container during reverse lookup of [%@]: %s", buf, 0x16u);
    }

    if (v27)
    {
      free(v27);
      memset_s(&__s, 8uLL, 0, 8uLL);
    }

LABEL_23:
    v17 = 0;
LABEL_24:
    v31 = 0;
    v25 = 0;
    v23 = 0;
    v57 = 0;
    v58 = 0;
    v21 = 0;
    v63 = 0;
LABEL_25:
    v32 = 0;
    goto LABEL_26;
  }

  identifier = container_get_identifier();
  if (!identifier)
  {
    v29 = container_log_handle_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v47 = [(MCMCommandContainerFromPath *)self url];
      v48 = [v47 path];
      *buf = 138412290;
      v68 = v48;
      _os_log_fault_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL identifier.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    goto LABEL_24;
  }

  v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:identifier];
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:container_object_get_uuid()];
  path = container_object_get_path();
  v58 = v19;
  if (!path)
  {
    v43 = container_log_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v51 = [(MCMCommandContainerFromPath *)self url];
      v52 = [v51 path];
      *buf = 138412290;
      v68 = v52;
      _os_log_fault_impl(&dword_1DF2C3000, v43, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL path.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    v31 = 0;
    v25 = 0;
    v23 = 0;
    v57 = 0;
    v21 = 0;
    goto LABEL_25;
  }

  v21 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
  v57 = container_get_class();
  v22 = MEMORY[0x1E12D3240](v17);
  if (!v22)
  {
    v44 = container_log_handle_for_category();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      v53 = [(MCMCommandContainerFromPath *)self url];
      v54 = [v53 path];
      *buf = 138412290;
      v68 = v54;
      _os_log_fault_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_FAULT, "[%@] produced a container object with a NULL path identifier.", buf, 0xCu);
    }

    v26 = [[MCMError alloc] initWithErrorType:11];
    v31 = 0;
    v25 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
  persona_unique_string = container_get_persona_unique_string();
  if (persona_unique_string)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  else
  {
    v25 = 0;
  }

  buf[0] = 0;
  container_is_transient();
  v26 = 0;
  v31 = buf[0];
  v32 = 1;
LABEL_26:
  MEMORY[0x1E12D3190](v17);
  if (v66)
  {
    v33 = [MCMError alloc];
    v34 = [(MCMError *)v33 initWithLibsystemError:v66];

    container_error_free();
    v26 = v34;
  }

  if (v65)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    if (v65)
    {
      free(v65);
      memset_s(&v65, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = container_log_handle_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v68 = v63;
    v69 = 2048;
    v70 = v57;
    v71 = 2112;
    v72 = v26;
    _os_log_debug_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEBUG, "Container from path result: %@(%llu), error = %@", buf, 0x20u);
  }

  v37 = [MCMResultContainerFromPath alloc];
  if (v32)
  {
    LOBYTE(v56) = v31 & 1;
    LOBYTE(v55) = 1;
    v38 = v58;
    v39 = v63;
    v40 = [(MCMResultContainerFromPath *)v37 initWithUUID:v58 containerPathIdentifier:v23 identifier:v63 containerClass:v57 POSIXUser:v7 personaUniqueString:v25 sandboxToken:0 existed:v55 url:v21 info:0 transient:v56 userManagedAssetsRelPath:0 creator:0 relativePath:v35];
  }

  else
  {
    v40 = [(MCMResultBase *)v37 initWithError:v26];
    v39 = v63;
    v38 = v58;
  }

  v41 = [(MCMCommand *)self resultPromise];
  [v41 completeWithResult:v40];

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 codeSignInfo];
  v5 = [v4 entitlements];

  if ([v5 allowed])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 otherIDLookup];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MCMCommandContainerFromPath)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v14.receiver = self;
  v14.super_class = MCMCommandContainerFromPath;
  v9 = [(MCMCommand *)&v14 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 url];
    url = v9->_url;
    v9->_url = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 44;
}

@end