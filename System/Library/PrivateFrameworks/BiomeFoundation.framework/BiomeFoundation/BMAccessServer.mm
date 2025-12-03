@interface BMAccessServer
- (BMAccessServer)initWithListener:(id)listener;
- (BOOL)_createDirectoryAtPath:(id)path;
- (BOOL)_hasDirectoryAtPath:(id)path;
- (BOOL)_removeDirectoryAtPath:(id)path;
- (void)removeResource:(id)resource reply:(id)reply;
- (void)requestAccessToResource:(id)resource withMode:(unint64_t)mode reply:(id)reply;
- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply;
- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply;
@end

@implementation BMAccessServer

- (BMAccessServer)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = BMAccessServer;
  v6 = [(BMAccessServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
  }

  return v7;
}

- (BOOL)_createDirectoryAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = __biome_log_for_category(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServer _createDirectoryAtPath:];
    }
  }

  return v5;
}

- (BOOL)_removeDirectoryAtPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  listener = self->_listener;
  pathCopy = path;
  v5 = [BMPaths biomeTemporaryDirectoryForDomain:[(BMAccessServiceListener *)listener domain]];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_new();
  uUIDString = [v7 UUIDString];
  v9 = [v6 stringWithFormat:@".tmp.%@", uUIDString];
  v10 = [v5 stringByAppendingPathComponent:v9];

  v11 = [v10 cStringUsingEncoding:4];
  v12 = [pathCopy cStringUsingEncoding:4];

  LODWORD(uUIDString) = renamex_np(v12, v11, 4u);
  v13 = __biome_log_for_category(16);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (uUIDString)
  {
    if (v14)
    {
      [BMAccessServer _removeDirectoryAtPath:];
    }

    v15 = 0;
  }

  else
  {
    if (v14)
    {
      [(BMAccessServer *)v11 _removeDirectoryAtPath:v12, v13];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v15 = [defaultManager removeItemAtPath:v10 error:&v21];
    v13 = v21;

    v17 = __biome_log_for_category(6);
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_DEFAULT, "Successfully removed folder at %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServer _removeDirectoryAtPath:];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_hasDirectoryAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (void)requestAccessToResource:(id)resource withMode:(unint64_t)mode reply:(id)reply
{
  v102[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  v12 = __biome_log_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    process = [bm_accessControlPolicy process];
    identifier = [process identifier];
    v33 = BMAccessModePrintableDescription(mode);
    *buf = 138543874;
    *&buf[4] = identifier;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2114;
    *&buf[24] = resourceCopy;
    _os_log_debug_impl(&dword_1AC15D000, v12, OS_LOG_TYPE_DEBUG, "Evaluating %{public}@ request for %{public}@ access to %{public}@", buf, 0x20u);
  }

  if (resourceCopy)
  {
    if ((mode | 2) == 3)
    {
      if ([bm_accessControlPolicy allowsAccessToResource:resourceCopy withMode:mode])
      {
        v13 = +[BMResourceContainerManager sharedInstance];
        v80 = 0;
        v14 = [v13 openContainerForResource:resourceCopy mode:mode error:&v80];
        v15 = v80;

        if (v14)
        {
          v78 = [BMPaths pathForResource:resourceCopy inContainer:v14];
          if (![v78 length])
          {
            v34 = __biome_log_for_category(6);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [BMAccessServer requestAccessToResource:withMode:reply:];
            }

            v35 = MEMORY[0x1E696ABC0];
            v93 = *MEMORY[0x1E696A578];
            v94 = @"Failed to determine path for resource";
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v37 = [v35 errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:v36];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v37);

            goto LABEL_56;
          }

          if ([resourceCopy type] != 1)
          {
            goto LABEL_15;
          }

          if (mode == 1)
          {
            *&v81 = 0;
            *(&v81 + 1) = &v81;
            *&v82 = 0x2020000000;
            v16 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1;
            *(&v82 + 1) = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1;
            if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_1;
              *&buf[24] = &unk_1E796AC10;
              *&buf[32] = &v81;
              __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_1(buf);
              v16 = *(*(&v81 + 1) + 24);
            }

            _Block_object_dispose(&v81, 8);
            if (!v16)
            {
              [BMAccessServer requestAccessToResource:withMode:reply:];
            }

            v17 = v16();
            name = [resourceCopy name];
            v19 = [v17 streamWithIdentifier:name error:0];

            if (v19)
            {

LABEL_15:
              delegate = [(BMAccessServer *)self delegate];
              if (delegate)
              {
                delegate2 = [(BMAccessServer *)self delegate];
                if (delegate2)
                {
                  delegate3 = [(BMAccessServer *)self delegate];
                  v76 = [delegate3 handlesDirectoryCreationForResource:resourceCopy inContainer:v14];

                  v23 = v76 ^ 1;
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 1;
              }

              v41 = v23 ^ 1;
              if (!v78)
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0 && ![(BMAccessServer *)self _hasDirectoryAtPath:v78])
              {
                [(BMAccessServer *)self _createDirectoryAtPath:v78];
              }

              delegate4 = [(BMAccessServer *)self delegate];

              if (delegate4 && (-[BMAccessServer delegate](self, "delegate"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 prepareResource:resourceCopy withMode:mode inContainer:v14], v43, (v44 & 1) == 0))
              {
                v49 = MEMORY[0x1E696ABC0];
                v87 = *MEMORY[0x1E696A578];
                v88 = @"Failed to prepare resource";
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                v51 = [v49 errorWithDomain:@"BMAccessErrorDomain" code:11 userInfo:v50];
                (*(replyCopy + 2))(replyCopy, 0, 0, 0, v51);
              }

              else
              {
                if (mode == 3)
                {
                  v45 = MEMORY[0x1E69E9BB0];
                }

                else
                {
                  v45 = MEMORY[0x1E69E9BA8];
                }

                v46 = v78;
                uTF8String = [v78 UTF8String];
                v81 = 0u;
                v82 = 0u;
                process2 = [bm_accessControlPolicy process];
                v48 = process2;
                if (process2)
                {
                  [process2 auditToken];
                }

                else
                {
                  v81 = 0u;
                  v82 = 0u;
                }

                v52 = *v45;
                v53 = *MEMORY[0x1E69E9BE0];
                *buf = v81;
                *&buf[16] = v82;
                v54 = sandbox_extension_issue_file_to_process();
                v55 = __biome_log_for_category(6);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  if (v54)
                  {
                    v70 = "no error";
                  }

                  else
                  {
                    v69 = __error();
                    v70 = strerror(*v69);
                  }

                  *buf = 136447235;
                  *&buf[4] = v52;
                  *&buf[12] = 2081;
                  *&buf[14] = uTF8String;
                  *&buf[22] = 1024;
                  *&buf[24] = v53;
                  *&buf[28] = 2048;
                  *&buf[30] = v54;
                  *&buf[38] = 2082;
                  v86 = v70;
                  _os_log_debug_impl(&dword_1AC15D000, v55, OS_LOG_TYPE_DEBUG, "sandbox_extension_issue_file_to_process(%{public}s, %{private}s, 0x%X, <audit token>) = %p, %{public}s", buf, 0x30u);
                }

                if (v54)
                {
                  v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v54 length:strlen(v54) + 1 freeWhenDone:1];
                  v57 = __biome_log_for_category(6);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                  {
                    process3 = [bm_accessControlPolicy process];
                    identifier2 = [process3 identifier];
                    v73 = BMAccessModePrintableDescription(mode);
                    *buf = 138543875;
                    *&buf[4] = identifier2;
                    *&buf[12] = 2114;
                    *&buf[14] = v73;
                    *&buf[22] = 2113;
                    *&buf[24] = resourceCopy;
                    _os_log_debug_impl(&dword_1AC15D000, v57, OS_LOG_TYPE_DEBUG, "Granted %{public}@ request for %{public}@ access to %{private}@", buf, 0x20u);
                  }

                  (*(replyCopy + 2))(replyCopy, v14, v78, v56, 0);
                }

                else
                {
                  v58 = __biome_log_for_category(6);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    v74 = BMAccessModePrintableDescription(mode);
                    v75 = *__error();
                    *buf = 138544131;
                    *&buf[4] = v74;
                    *&buf[12] = 2114;
                    *&buf[14] = resourceCopy;
                    *&buf[22] = 2113;
                    *&buf[24] = v78;
                    *&buf[32] = 1026;
                    *&buf[34] = v75;
                    _os_log_error_impl(&dword_1AC15D000, v58, OS_LOG_TYPE_ERROR, "Unable to issue %{public}@ extension token to %{public}@ path %{private}@, error %{public, darwin.errno}d", buf, 0x26u);
                  }

                  v59 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v60 = *__error();
                  v83 = *MEMORY[0x1E696A578];
                  v61 = MEMORY[0x1E696AEC0];
                  v62 = __error();
                  v63 = [v61 stringWithUTF8String:strerror(*v62)];
                  v84 = v63;
                  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
                  v56 = [v59 initWithDomain:*MEMORY[0x1E696A798] code:v60 userInfo:v64];

                  (*(replyCopy + 2))(replyCopy, 0, 0, 0, v56);
                }
              }

              goto LABEL_56;
            }

            v66 = MEMORY[0x1E696ABC0];
            v89 = *MEMORY[0x1E696A578];
            v90 = @"Failed to look up stream resource";
            v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v68 = [v66 errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:v67];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v68);
          }

          else
          {
            v38 = MEMORY[0x1E696ABC0];
            v91 = *MEMORY[0x1E696A578];
            v92 = @"Invalid mode for stream resource";
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v40 = [v38 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v39];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v40);
          }

LABEL_56:

          goto LABEL_57;
        }

        v28 = __biome_log_for_category(6);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [BMAccessServer requestAccessToResource:withMode:reply:];
        }

        v29 = MEMORY[0x1E696ABC0];
        v95 = *MEMORY[0x1E696A578];
        v96 = @"Failed to open container for resource";
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v30 = [v29 errorWithDomain:@"BMAccessErrorDomain" code:13 userInfo:v79];
        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v30);
      }

      else
      {
        v26 = __biome_log_for_category(6);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [BMAccessServer requestAccessToResource:withMode:reply:];
        }

        v27 = MEMORY[0x1E696ABC0];
        v97 = *MEMORY[0x1E696A578];
        v98 = @"Not entitled";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v14 = [v27 errorWithDomain:@"BMAccessErrorDomain" code:3 userInfo:v15];
        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
      }
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v99 = *MEMORY[0x1E696A578];
      v100 = @"Unsupported access mode";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v14 = [v25 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v15];
      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v101 = *MEMORY[0x1E696A578];
    v102[0] = @"Nil resource specifier";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v14 = [v24 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v15];
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
  }

LABEL_57:

  v65 = *MEMORY[0x1E69E9840];
}

- (void)removeResource:(id)resource reply:(id)reply
{
  v68[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(BMAccessServer *)bm_accessControlPolicy removeResource:resourceCopy reply:v10];
  }

  if (!resourceCopy)
  {
    v21 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A578];
    v68[0] = @"Nil resource specifier";
    v22 = MEMORY[0x1E695DF20];
    v23 = v68;
    v24 = &v67;
LABEL_15:
    v15 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v25 = v21;
    v26 = 7;
    goto LABEL_16;
  }

  if ([resourceCopy type] != 4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A578];
    v66 = @"Invalid resource type";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v66;
    v24 = &v65;
    goto LABEL_15;
  }

  process = [bm_accessControlPolicy process];
  processType = [process processType];

  if (processType != 5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A578];
    v64 = @"Invalid process type";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v64;
    v24 = &v63;
    goto LABEL_15;
  }

  if ([bm_accessControlPolicy allowsAccessToResource:resourceCopy withMode:2])
  {
    v13 = +[BMResourceContainerManager sharedInstance];
    v48 = 0;
    v14 = [v13 openContainerForResource:resourceCopy mode:3 error:&v48];
    v15 = v48;

    if (!v14)
    {
      v30 = __biome_log_for_category(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [BMAccessServer requestAccessToResource:withMode:reply:];
      }

      v31 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v60 = @"Failed to open container for resource";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v32 = [v31 errorWithDomain:@"BMAccessErrorDomain" code:13 userInfo:v16];
      replyCopy[2](replyCopy, 0, v32);

      goto LABEL_43;
    }

    v16 = [BMPaths pathForResource:resourceCopy inContainer:v14];
    if ([v16 length])
    {
      delegate = [(BMAccessServer *)self delegate];
      if (delegate)
      {
        delegate2 = [(BMAccessServer *)self delegate];
        if (delegate2)
        {
          [(BMAccessServer *)self delegate];
          v19 = v47 = v16;
          v20 = [v19 handlesDirectoryRemovalForResource:resourceCopy inContainer:v14] ^ 1;

          v16 = v47;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 1;
      }

      if (v16 && v20 && [(BMAccessServer *)self _hasDirectoryAtPath:v16]&& ![(BMAccessServer *)self _removeDirectoryAtPath:v16])
      {
        v42 = MEMORY[0x1E696ABC0];
        v55 = *MEMORY[0x1E696A578];
        v56 = @"Failed to clean up directory";
        v43 = MEMORY[0x1E695DF20];
        v44 = &v56;
        v45 = &v55;
      }

      else
      {
        delegate3 = [(BMAccessServer *)self delegate];

        if (!delegate3 || (-[BMAccessServer delegate](self, "delegate"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 teardownResource:resourceCopy inContainer:v14], v39, (v40 & 1) != 0))
        {
          v41 = __biome_log_for_category(6);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v16;
            v51 = 2112;
            v52 = resourceCopy;
            _os_log_impl(&dword_1AC15D000, v41, OS_LOG_TYPE_DEFAULT, "Successfully removed path: %@ for resource: %@", buf, 0x16u);
          }

          replyCopy[2](replyCopy, 1, 0);
          goto LABEL_43;
        }

        v42 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v54 = @"Failed to teardown resource";
        v43 = MEMORY[0x1E695DF20];
        v44 = &v54;
        v45 = &v53;
      }

      v35 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
      v36 = v42;
      v37 = 0;
    }

    else
    {
      v33 = __biome_log_for_category(6);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [BMAccessServer removeResource:reply:];
      }

      v34 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = @"Failed to determine path for resource";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v36 = v34;
      v37 = 10;
    }

    v46 = [v36 errorWithDomain:@"BMAccessErrorDomain" code:v37 userInfo:v35];
    replyCopy[2](replyCopy, 0, v46);

LABEL_43:
    goto LABEL_17;
  }

  v28 = __biome_log_for_category(6);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [BMAccessServer removeResource:reply:];
  }

  v29 = MEMORY[0x1E696ABC0];
  v61 = *MEMORY[0x1E696A578];
  v62 = @"Not entitled";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v25 = v29;
  v26 = 3;
LABEL_16:
  v14 = [v25 errorWithDomain:@"BMAccessErrorDomain" code:v26 userInfo:v15];
  replyCopy[2](replyCopy, 0, v14);
LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply
{
  endpointCopy = endpoint;
  v24[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  if (([bm_accessControlPolicy allowsProxyingBiomeEndpoint] & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Not entitled";
    endpointForCoreDuetUseCases = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = v10;
    v12 = 3;
LABEL_7:
    v14 = [v11 initWithDomain:@"BMAccessErrorDomain" code:v12 userInfo:endpointForCoreDuetUseCases];
    replyCopy[2](replyCopy, 0, v14);

    goto LABEL_8;
  }

  if (((([(BMAccessServiceListener *)self->_listener domain]!= 1) ^ endpointCopy) & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A578];
    v22 = @"Wrong domain";
    endpointForCoreDuetUseCases = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = v13;
    v12 = 7;
    goto LABEL_7;
  }

  endpointForCoreDuetUseCases = [(BMAccessServiceListener *)self->_listener endpointForCoreDuetUseCases];
  if (endpointForCoreDuetUseCases)
  {
    (replyCopy)[2](replyCopy, endpointForCoreDuetUseCases, 0);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Failed to get endpoint";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [v16 initWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v17];
    replyCopy[2](replyCopy, 0, v18);
  }

LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply
{
  v25[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  if (([bm_accessControlPolicy allowsConnectionToWriteService] & 1) == 0 && (objc_msgSend(bm_accessControlPolicy, "allowsConnectionToSetStoreUpdateService") & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Not entitled";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v12 = v14;
    v13 = 3;
    goto LABEL_8;
  }

  if ([(BMAccessServiceListener *)self->_listener domain]!= service)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A578];
    v23 = @"Wrong domain";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = v11;
    v13 = 7;
LABEL_8:
    v15 = [v12 initWithDomain:@"BMAccessErrorDomain" code:v13 userInfo:v10];
    replyCopy[2](replyCopy, 0, v15);

    goto LABEL_9;
  }

  v10 = [(BMAccessServiceListener *)self->_listener uniqueEndpointForAppScopedServicesActingOnBehalfOfClientWithAccessControlPolicy:bm_accessControlPolicy];
  if (v10)
  {
    (replyCopy)[2](replyCopy, v10, 0);
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Failed to get endpoint";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19 = [v17 initWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v18];
    replyCopy[2](replyCopy, 0, v19);
  }

LABEL_9:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_createDirectoryAtPath:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v8 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v0, v1, "Can't create folder at %@ with error %@, isUnlocked: %hhd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeDirectoryAtPath:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v8 = *MEMORY[0x1E69E9840];
  v7 = *__error();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v0, v1, "Could not rename directory at path %s into %s with error: %d", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeDirectoryAtPath:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136315394;
  v5 = a1;
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&dword_1AC15D000, log, OS_LOG_TYPE_ERROR, "Successfully renamed directory at path %s into %s", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_removeDirectoryAtPath:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  v8 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v0, v1, "Can't remove folder at %@ with error %@, isUnlocked: %hhd", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestAccessToResource:withMode:reply:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMAccessServer.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)removeResource:(NSObject *)a3 reply:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 process];
  v6 = [v5 identifier];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a2;
  _os_log_debug_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_DEBUG, "Evaluating %{public}@ request for removal of %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end