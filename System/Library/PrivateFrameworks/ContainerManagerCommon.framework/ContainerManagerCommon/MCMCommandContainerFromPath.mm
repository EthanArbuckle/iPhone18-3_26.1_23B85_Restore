@interface MCMCommandContainerFromPath
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandContainerFromPath)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (NSURL)url;
- (container_object_s)_containerFromRelayToDaemonWithURL:(id)l relativePath:(char *)path error:(container_error_extended_s *)error;
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

- (container_object_s)_containerFromRelayToDaemonWithURL:(id)l relativePath:(char *)path error:(container_error_extended_s *)error
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
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
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  [clientIdentity createLibsystemClient];

  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "Command", 0x2CuLL);
  v12 = lCopy;
  xpc_dictionary_set_string(v11, "Path", [lCopy fileSystemRepresentation]);
  v13 = v11;
  container_perform_with_client_context();
  if (v20[5])
  {
    v14 = container_xpc_decode_container_object();
    if (v14)
    {
      string = xpc_dictionary_get_string(v20[5], "ReplyRelativePath");
      if (path)
      {
        if (string)
        {
          *path = strndup(string, 0x400uLL);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  container_free_client();
  if (!error || v14)
  {
    if (!error)
    {
      v16 = v26[3];
      container_error_free();
    }
  }

  else
  {
    *error = v26[3];
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
  classPathCache = [v3 classPathCache];

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  posixUser = [clientIdentity posixUser];

  if ([posixUser isRoleUser])
  {
    v8 = containermanager_copy_global_configuration();
    defaultUser = [v8 defaultUser];

    posixUser = defaultUser;
  }

  v10 = [classPathCache referenceForPOSIXUser:posixUser];
  v11 = [(MCMCommandContainerFromPath *)self url];
  v60 = v10;
  v12 = [classPathCache containerClassPathWithURL:v11 reference:v10];

  v65 = 0;
  v59 = v12;
  v61 = classPathCache;
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
        path = [v49 path];
        *buf = 138412290;
        v68 = path;
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
      path2 = [v45 path];
      *buf = 138412546;
      v68 = path2;
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
      path3 = [v47 path];
      *buf = 138412290;
      v68 = path3;
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
      path4 = [v51 path];
      *buf = 138412290;
      v68 = path4;
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
      path5 = [v53 path];
      *buf = 138412290;
      v68 = path5;
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
    v40 = [(MCMResultContainerFromPath *)v37 initWithUUID:v58 containerPathIdentifier:v23 identifier:v63 containerClass:v57 POSIXUser:posixUser personaUniqueString:v25 sandboxToken:0 existed:v55 url:v21 info:0 transient:v56 userManagedAssetsRelPath:0 creator:0 relativePath:v35];
  }

  else
  {
    v40 = [(MCMResultBase *)v37 initWithError:v26];
    v39 = v63;
    v38 = v58;
  }

  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v40];

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v9 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if ([entitlements allowed])
  {
    otherIDLookup = 1;
  }

  else
  {
    otherIDLookup = [entitlements otherIDLookup];
  }

  v7 = *MEMORY[0x1E69E9840];
  return otherIDLookup;
}

- (MCMCommandContainerFromPath)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MCMCommandContainerFromPath;
  v9 = [(MCMCommand *)&v14 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v10 = [messageCopy url];
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