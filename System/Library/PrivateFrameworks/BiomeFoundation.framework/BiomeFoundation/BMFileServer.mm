@interface BMFileServer
- (BMFileServer)initWithDirectory:(id)directory;
- (BMFileServer)initWithDirectory:(id)directory library:(id)library;
- (BOOL)allowedToAccessStream:(id)stream withMode:(int)mode error:(id *)error;
- (BOOL)entitledToAccessClientCompute:(id)compute error:(id *)error;
- (BOOL)entitledToAccessSharedSyncWithError:(id *)error;
- (BOOL)isBiomeSyncDaemon;
- (BOOL)isPrimaryDaemon;
- (id)currentUseCase;
- (void)createDirectoryAtPath:(id)path reply:(id)reply;
- (void)removeDirectoryAtPath:(id)path reply:(id)reply;
- (void)removeFileAtPath:(id)path reply:(id)reply;
- (void)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags reply:(id)reply;
@end

@implementation BMFileServer

- (id)currentUseCase
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
  useCase = [bm_accessControlPolicy useCase];

  return useCase;
}

- (BMFileServer)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2;
  v13 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2;
  if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_2;
    v9[3] = &unk_1E796AC10;
    v9[4] = &v10;
    __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_2(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    [BMFileServer initWithDirectory:];
  }

  v6 = v5();
  v7 = [(BMFileServer *)self initWithDirectory:directoryCopy library:v6];

  return v7;
}

- (BMFileServer)initWithDirectory:(id)directory library:(id)library
{
  v19 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = BMFileServer;
  v8 = [(BMFileServer *)&v16 init];
  if (v8)
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = directoryCopy;
      _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "BMFileServer in %@", buf, 0xCu);
    }

    v10 = [directoryCopy copy];
    directory = v8->_directory;
    v8->_directory = v10;

    v12 = [BMFileManager fileManagerWithDirectAccessToDirectory:directoryCopy cachingOptions:0];
    fileManager = v8->_fileManager;
    v8->_fileManager = v12;

    [BMPaths getServiceDomain:&v8->_domain subpath:0 forPath:directoryCopy];
    objc_storeStrong(&v8->_library, library);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)allowedToAccessStream:(id)stream withMode:(int)mode error:(id *)error
{
  modeCopy = mode;
  v63[1] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v10 = currentConnection;
  if (!currentConnection)
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v17 = 0;
    goto LABEL_46;
  }

  if ((modeCopy & 1 | 2) == 2 || modeCopy < 0)
  {
    bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
    if (modeCopy < 0 || (modeCopy & 3) == 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = [[BMResourceSpecifier alloc] initWithType:1 name:streamCopy];
    if (!v14)
    {
      if (error)
      {
        streamCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid stream identifier '%@'", streamCopy];
        v20 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        v61 = streamCopy;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v22 = v20;
        v23 = 7;
LABEL_42:
        *error = [v22 errorWithDomain:@"BiomeStorageError" code:v23 userInfo:v21];
        goto LABEL_43;
      }

LABEL_44:
      v17 = 0;
      goto LABEL_45;
    }

    if (([bm_accessControlPolicy allowsAccessToResource:v14 withMode:v13]& 1) != 0)
    {
      if (([streamCopy isEqual:@"GenerativeExperiences.TransparencyLog"] & 1) == 0 && (objc_msgSend(streamCopy, "isEqual:", @"PrivateCloudCompute.RequestLog") & 1) == 0 && !objc_msgSend(streamCopy, "hasPrefix:", @"AppleIntelligenceReport."))
      {
        goto LABEL_15;
      }

      currentUseCase = [(BMFileServer *)self currentUseCase];
      v16 = [currentUseCase isEqual:@"__pruner__"];

      if (v16)
      {
        goto LABEL_15;
      }

      v35 = +[_BMManagedConfiguration shared];
      allowAppleIntelligenceReport = [v35 allowAppleIntelligenceReport];

      if (allowAppleIntelligenceReport)
      {
        v37 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AppleIntelligenceReport"];
        v38 = [v37 valueForKey:@"reportDuration"];
        v39 = v38;
        v40 = &unk_1F20EBDB8;
        if (v38)
        {
          v40 = v38;
        }

        v41 = v40;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v41 doubleValue];
          v43 = v42;

          if (v43 != 0.0)
          {
LABEL_15:
            v17 = 1;
LABEL_45:

            goto LABEL_46;
          }
        }

        else
        {
        }
      }

      if (error)
      {
        streamCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stream '%@' is not enabled", streamCopy];
        v49 = MEMORY[0x1E696ABC0];
        v54[0] = *MEMORY[0x1E696A578];
        v54[1] = @"UserControlled";
        v55[0] = streamCopy2;
        v55[1] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
        v22 = v49;
        streamCopy = streamCopy2;
        v23 = 5;
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    v52 = [(_BMRootLibrary *)self->_library streamWithIdentifier:streamCopy error:0];
    v21 = [v52 valueForKeyPath:@"configuration.allowedClients"];
    if (v21 && (-[NSObject process](bm_accessControlPolicy, "process"), v24 = objc_claimAutoreleasedReturnValue(), [v24 identifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v21, "containsObject:", v25), v25, v24, (v26 & 1) == 0))
    {
      if (error)
      {
        v44 = MEMORY[0x1E696AEC0];
        process = [bm_accessControlPolicy process];
        identifier = [process identifier];
        streamCopy3 = [v44 stringWithFormat:@"'%@' is not present in allow-list for '%@'", identifier, streamCopy];

        v31 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A578];
        v59 = streamCopy3;
        v32 = MEMORY[0x1E695DF20];
        v33 = &v59;
        v34 = &v58;
        goto LABEL_36;
      }
    }

    else if (error)
    {
      v27 = MEMORY[0x1E696AEC0];
      descriptionOfProcessAndUseCase = [bm_accessControlPolicy descriptionOfProcessAndUseCase];
      v29 = BMAccessModePrintableDescription(v13);
      streamCopy3 = [v27 stringWithFormat:@"%@ is not entitled for '%@' access to '%@'", descriptionOfProcessAndUseCase, v29, streamCopy];

      v31 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v57 = streamCopy3;
      v32 = MEMORY[0x1E695DF20];
      v33 = &v57;
      v34 = &v56;
LABEL_36:
      v47 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
      *error = [v31 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v47];
    }

    streamCopy = v52;
LABEL_43:

    goto LABEL_44;
  }

  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v63[0] = @"Invalid access mode";
    bm_accessControlPolicy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    [v18 errorWithDomain:@"BiomeStorageError" code:7 userInfo:bm_accessControlPolicy];
    *error = v17 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v17 = 0;
LABEL_47:

  v50 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)entitledToAccessClientCompute:(id)compute error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  computeCopy = compute;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = currentConnection;
  if (currentConnection)
  {
    bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
    v9 = [bm_accessControlPolicy allowsAccessToClientCompute:computeCopy];
    v10 = v9;
    if (error && (v9 & 1) == 0)
    {
      v11 = MEMORY[0x1E696AEC0];
      bm_process = [v7 bm_process];
      executableName = [bm_process executableName];
      computeCopy = [v11 stringWithFormat:@"'%@' is not entitled to access compute as '%@'", executableName, computeCopy];

      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = computeCopy;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v15 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v16];
    }
  }

  else
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)entitledToAccessSharedSyncWithError:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = currentConnection;
  if (!currentConnection)
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    goto LABEL_12;
  }

  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
  process = [bm_accessControlPolicy process];
  if ([process BOOLForEntitlement:@"com.apple.private.biome.sync"])
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (os_variant_allows_internal_security_policies())
  {
    process2 = [bm_accessControlPolicy process];
    v8 = [process2 BOOLForEntitlement:@"com.apple.internal.biome.sync"];
  }

  else
  {
    v8 = 0;
  }

  if (error && (v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    bm_process = [v5 bm_process];
    executableName = [bm_process executableName];
    v13 = [v10 stringWithFormat:@"'%@' is missing entitlement 'com.apple.private.biome.sync'", executableName];

    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v14 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v15];

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isBiomeSyncDaemon
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    bm_process = [currentConnection bm_process];
    v5 = [bm_process processType] == 3;
  }

  else
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AC15D000, v6, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrimaryDaemon
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    bm_process = [currentConnection bm_process];
    v5 = [bm_process processType] == 2;
  }

  else
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AC15D000, v6, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)createDirectoryAtPath:(id)path reply:(id)reply
{
  v57[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer createDirectoryAtPath:reply:];
    }

    v17 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A578];
    v57[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v18 = [v17 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_19:
    replyCopy[2](replyCopy, v18);
    goto LABEL_20;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v55 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-createDirectoryAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"stream"];
    v45 = 0;
    v14 = [(BMFileServer *)self allowedToAccessStream:v13 withMode:0 error:&v45];
    v15 = v45;
  }

  else
  {
    v19 = [v8 objectForKeyedSubscript:@"pathType"];
    v20 = [v19 isEqual:@"compute"];

    if (v20)
    {
      v13 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v44 = 0;
      v14 = [(BMFileServer *)self entitledToAccessClientCompute:v13 error:&v44];
      v15 = v44;
    }

    else
    {
      v21 = [v8 objectForKeyedSubscript:@"pathType"];
      v22 = [v21 isEqual:@"sharedSync"];

      if (!v22)
      {
        v40 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v53 = @"Invalid request";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v41 = [v40 errorWithDomain:@"BiomeStorageError" code:3 userInfo:v18];
        replyCopy[2](replyCopy, v41);

        goto LABEL_20;
      }

      v13 = [v8 objectForKeyedSubscript:@"stream"];
      v43 = 0;
      v14 = [(BMFileServer *)self allowedToAccessStream:v13 withMode:0 error:&v43];
      v15 = v43;
    }
  }

  v18 = v15;

  if (!v14)
  {
    goto LABEL_19;
  }

  v23 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v23 unsignedIntegerValue] == 1)
  {
    v24 = [v8 objectForKeyedSubscript:@"stream"];
    v25 = [BMPublicStreamUtilities streamForStreamIdentifier:v24];

    if (!v25)
    {
      v26 = __biome_log_for_category(6);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v27 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A578];
      v51 = @"Invalid stream identifier";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v29 = v27;
      v30 = 2;
LABEL_30:
      v39 = [v29 errorWithDomain:@"BiomeStorageError" code:v30 userInfo:v28];
      replyCopy[2](replyCopy, v39);

      goto LABEL_20;
    }
  }

  else
  {
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v37 = __biome_log_for_category(6);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v38 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v49 = @"Internal failure";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v29 = v38;
    v30 = 0;
    goto LABEL_30;
  }

  v42 = v18;
  v33 = [(BMFileManager *)fileManager createDirectoryAtPath:v9 error:&v42];
  v34 = v42;

  if (!v33 && !v34)
  {
    v35 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = @"Unspecified failure";
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v34 = [v35 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v36];
  }

  replyCopy[2](replyCopy, v34);
  v18 = v34;
LABEL_20:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:(id)path reply:(id)reply
{
  v81[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer removeFileAtPath:reply:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A578];
    v81[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v15 = [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_21:
    replyCopy[2](replyCopy, v15);
    goto LABEL_55;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v79 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-removeFileAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"subscriptions"];

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v77 = @"Client processes not allowed read-write access to subscriptions substream";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v16 = v14;
      v17 = 5;
LABEL_26:
      v38 = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      replyCopy[2](replyCopy, v38);

      goto LABEL_55;
    }

    v22 = [v8 objectForKeyedSubscript:@"stream"];
    v65 = 0;
    v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v65];
    v24 = v65;
  }

  else
  {
    v20 = [v8 objectForKeyedSubscript:@"pathType"];
    v21 = [v20 isEqual:@"compute"];

    if (v21)
    {
      v22 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v64 = 0;
      v23 = [(BMFileServer *)self entitledToAccessClientCompute:v22 error:&v64];
      v24 = v64;
    }

    else
    {
      v25 = [v8 objectForKeyedSubscript:@"pathType"];
      v26 = [v25 isEqual:@"sharedSync"];

      if (!v26)
      {
        v37 = MEMORY[0x1E696ABC0];
        v74 = *MEMORY[0x1E696A578];
        v75 = @"Invalid request";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v16 = v37;
        v17 = 3;
        goto LABEL_26;
      }

      v22 = [v8 objectForKeyedSubscript:@"stream"];
      v63 = 0;
      v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v63];
      v24 = v63;
    }
  }

  v15 = v24;

  if (!v23)
  {
    goto LABEL_21;
  }

  v61 = v9;
  v27 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v27 unsignedIntegerValue] != 1)
  {

LABEL_23:
    v34 = [v8 objectForKeyedSubscript:@"pathType"];
    if ([v34 isEqual:@"streams"])
    {
      v35 = [v8 objectForKeyedSubscript:@"segment"];
      v36 = v35 != 0;
    }

    else
    {
      v36 = 0;
    }

    v39 = [v8 objectForKeyedSubscript:@"pathType"];
    if ([v39 isEqual:@"compute"])
    {
      v40 = [v8 objectForKeyedSubscript:@"sessionIdentifier"];
      if (v40)
      {
        v41 = [v8 objectForKeyedSubscript:@"bookmarks"];
        if (v41)
        {
          v42 = [v8 objectForKeyedSubscript:@"client"];
          if (v42)
          {
            v60 = v42;
            v43 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
            if (v43)
            {
              v59 = v43;
              v44 = [v8 objectForKeyedSubscript:@"subscriptionIdentifier"];
              v45 = v44 != 0;

              v43 = v59;
            }

            else
            {
              v45 = 0;
            }

            v42 = v60;
          }

          else
          {
            v45 = 0;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    if (v36 || v45)
    {
      fileManager = self->_fileManager;
      if (fileManager)
      {
        v62 = v15;
        v47 = [(BMFileManager *)fileManager removeFileAtPath:v61 error:&v62];
        v48 = v62;

        if (!v47 && !v48)
        {
          v49 = MEMORY[0x1E696ABC0];
          v66 = *MEMORY[0x1E696A578];
          v67 = @"Unspecified failure";
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v48 = [v49 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v50];
        }

        replyCopy[2](replyCopy, v48);
        v15 = v48;
        goto LABEL_54;
      }

      v55 = __biome_log_for_category(6);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v56 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v69 = @"Internal failure";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v53 = v56;
      v54 = 0;
    }

    else
    {
      v51 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A578];
      v71 = @"Invalid file";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v53 = v51;
      v54 = 5;
    }

    v57 = [v53 errorWithDomain:@"BiomeStorageError" code:v54 userInfo:v52];
    replyCopy[2](replyCopy, v57);

LABEL_54:
    v9 = v61;
    goto LABEL_55;
  }

  v28 = [v8 objectForKeyedSubscript:@"stream"];
  v29 = [BMPublicStreamUtilities streamForStreamIdentifier:v28];

  if (v29)
  {
    goto LABEL_23;
  }

  v30 = __biome_log_for_category(6);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
  }

  v31 = MEMORY[0x1E696ABC0];
  v72 = *MEMORY[0x1E696A578];
  v73 = @"Invalid stream identifier";
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v33 = [v31 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v32];
  replyCopy[2](replyCopy, v33);

  v9 = v61;
LABEL_55:

  v58 = *MEMORY[0x1E69E9840];
}

- (void)removeDirectoryAtPath:(id)path reply:(id)reply
{
  v63[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer removeDirectoryAtPath:reply:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v63[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v15 = [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_21:
    replyCopy[2](replyCopy, v15);
    goto LABEL_34;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v61 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-removeDirectoryAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"subscriptions"];

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Client processes not allowed read-write access to subscriptions substream";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v16 = v14;
      v17 = 5;
LABEL_29:
      v41 = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      replyCopy[2](replyCopy, v41);

      goto LABEL_34;
    }

    v22 = [v8 objectForKeyedSubscript:@"stream"];
    v49 = 0;
    v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v49];
    v24 = v49;
  }

  else
  {
    v20 = [v8 objectForKeyedSubscript:@"pathType"];
    v21 = [v20 isEqual:@"compute"];

    if (v21)
    {
      v22 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v48 = 0;
      v23 = [(BMFileServer *)self entitledToAccessClientCompute:v22 error:&v48];
      v24 = v48;
    }

    else
    {
      v25 = [v8 objectForKeyedSubscript:@"pathType"];
      v26 = [v25 isEqual:@"sharedSync"];

      if (!v26)
      {
        v40 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A578];
        v57 = @"Invalid request";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v16 = v40;
        v17 = 3;
        goto LABEL_29;
      }

      v22 = [v8 objectForKeyedSubscript:@"stream"];
      v47 = 0;
      v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v47];
      v24 = v47;
    }
  }

  v15 = v24;

  if (!v23)
  {
    goto LABEL_21;
  }

  v27 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v27 unsignedIntegerValue] == 1)
  {
    v28 = [v8 objectForKeyedSubscript:@"stream"];
    v29 = [BMPublicStreamUtilities streamForStreamIdentifier:v28];

    if (!v29)
    {
      v30 = __biome_log_for_category(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v31 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55 = @"Invalid stream identifier";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v33 = v31;
      v34 = 2;
LABEL_33:
      v44 = [v33 errorWithDomain:@"BiomeStorageError" code:v34 userInfo:v32];
      replyCopy[2](replyCopy, v44);

      goto LABEL_34;
    }
  }

  else
  {
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v42 = __biome_log_for_category(6);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v43 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v53 = @"Internal failure";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v33 = v43;
    v34 = 0;
    goto LABEL_33;
  }

  v46 = v15;
  v36 = [(BMFileManager *)fileManager removeDirectoryAtPath:v9 error:&v46];
  v37 = v46;

  if (!v36 && !v37)
  {
    v38 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51 = @"Unspecified failure";
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v37 = [v38 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v39];
  }

  replyCopy[2](replyCopy, v37);
  v15 = v37;
LABEL_34:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags reply:(id)reply
{
  v97[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handleCopy = handle;
  replyCopy = reply;
  v14 = BMFileServerValidateAndParsePath(pathCopy);
  if (v14)
  {
    protectionCopy = protection;
    v15 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v95 = pathCopy;
      _os_log_impl(&dword_1AC15D000, v16, OS_LOG_TYPE_INFO, "-replaceFileAtPath:withFileHandle:protection:flags:reply: called with subpath: %{public}@", buf, 0xCu);
    }

    v17 = [v14 objectForKeyedSubscript:@"pathType"];
    v18 = [v17 isEqual:@"streams"];

    if (v18)
    {
      v19 = [v14 objectForKeyedSubscript:@"subscriptions"];

      if (v19)
      {
        v20 = MEMORY[0x1E696ABC0];
        v92 = *MEMORY[0x1E696A578];
        v93 = @"Client processes not allowed read-write access to subscriptions substream";
        v21 = MEMORY[0x1E695DF20];
        v22 = &v93;
        v23 = &v92;
LABEL_7:
        v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
        v25 = v20;
        v26 = 5;
LABEL_8:
        v27 = [v25 errorWithDomain:@"BiomeStorageError" code:v26 userInfo:v24];
        replyCopy[2](replyCopy, 0, v27);

        goto LABEL_50;
      }

      v73 = v15;
      v32 = [v14 objectForKeyedSubscript:@"stream"];
      v77 = 0;
      v33 = [(BMFileServer *)self allowedToAccessStream:v32 withMode:2 error:&v77];
      v34 = v77;
LABEL_22:
      v24 = v34;

      if (v33)
      {
        goto LABEL_23;
      }

LABEL_28:
      replyCopy[2](replyCopy, 0, v24);
      v15 = v73;
      goto LABEL_50;
    }

    v30 = [v14 objectForKeyedSubscript:@"pathType"];
    v31 = [v30 isEqual:@"compute"];

    if (v31)
    {
      v73 = v15;
      v32 = [v14 objectForKeyedSubscript:@"clientIdentifier"];
      v76 = 0;
      v33 = [(BMFileServer *)self entitledToAccessClientCompute:v32 error:&v76];
      v34 = v76;
      goto LABEL_22;
    }

    v35 = [v14 objectForKeyedSubscript:@"pathType"];
    v36 = [v35 isEqual:@"sharedSync"];

    if (v36)
    {
      v73 = v15;
      v37 = [v14 objectForKeyedSubscript:@"stream"];
      v75 = 0;
      v38 = [(BMFileServer *)self allowedToAccessStream:v37 withMode:2 error:&v75];
      v24 = v75;

      if (!v38)
      {
        goto LABEL_28;
      }

      v39 = [v14 objectForKeyedSubscript:@"deviceType"];
      v40 = +[BMStoreDirectory remoteDevices];
      if (([v39 isEqual:v40]& 1) == 0)
      {

LABEL_52:
        goto LABEL_23;
      }

      [v14 objectForKeyedSubscript:@"segment"];
      v41 = v71 = v39;

      if (protectionCopy != 6 && v41)
      {
        v39 = __biome_log_for_category(6);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
        }

        goto LABEL_52;
      }
    }

    else
    {
      v58 = [v14 objectForKeyedSubscript:@"pathType"];
      v59 = [v58 isEqual:@"resourceGeneration"];

      if (!v59)
      {
        v66 = MEMORY[0x1E696ABC0];
        v88 = *MEMORY[0x1E696A578];
        v89 = @"Invalid request";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v25 = v66;
        v26 = 3;
        goto LABEL_8;
      }

      if (![(BMFileServer *)self isPrimaryDaemon])
      {
        v20 = MEMORY[0x1E696ABC0];
        v90 = *MEMORY[0x1E696A578];
        v91 = @"Access denied";
        v21 = MEMORY[0x1E695DF20];
        v22 = &v91;
        v23 = &v90;
        goto LABEL_7;
      }

      v73 = v15;
      v24 = 0;
    }

LABEL_23:
    v72 = handleCopy;
    v42 = [v14 objectForKeyedSubscript:@"streamType"];
    if ([v42 unsignedIntegerValue] == 1)
    {
      v43 = [v14 objectForKeyedSubscript:@"stream"];
      v44 = [BMPublicStreamUtilities streamForStreamIdentifier:v43];

      if (!v44)
      {
        v45 = __biome_log_for_category(6);
        v15 = v73;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
        }

        v46 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A578];
        v87 = @"Invalid stream identifier";
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v48 = [v46 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v47];
        replyCopy[2](replyCopy, 0, v48);

        handleCopy = v72;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v49 = [v14 objectForKeyedSubscript:@"pathType"];
    v15 = v73;
    if ([v49 isEqual:@"streams"])
    {
      v50 = [v14 objectForKeyedSubscript:@"metadata"];
      v51 = +[BMStoreDirectory metadata];
      if (![v50 isEqual:v51])
      {
        v64 = [v14 objectForKeyedSubscript:@"segment"];

        if (!v64)
        {
          v65 = MEMORY[0x1E696ABC0];
          v84 = *MEMORY[0x1E696A578];
          v85 = @"Invalid file";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v62 = v65;
          v63 = 5;
          goto LABEL_49;
        }

LABEL_34:
        if ((protectionCopy + 1) >= 9)
        {
          v60 = MEMORY[0x1E696ABC0];
          v82 = *MEMORY[0x1E696A578];
          v83 = @"Invalid protection class";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v62 = v60;
          v63 = 2;
        }

        else
        {
          fileManager = self->_fileManager;
          handleCopy = v72;
          if (fileManager)
          {
            v53 = [BMFileManager replaceFileAtPath:"replaceFileAtPath:withFileHandle:protection:flags:error:" withFileHandle:v73 protection:v72 flags:? error:?];
            v54 = v24;

            if (!(v53 | v54))
            {
              v55 = MEMORY[0x1E696ABC0];
              v78 = *MEMORY[0x1E696A578];
              v79 = @"Unspecified failure";
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
              v57 = v55;
              handleCopy = v72;
              v54 = [v57 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v56];

              v15 = v73;
            }

            replyCopy[2](replyCopy, v53, v54);

            v24 = v54;
            goto LABEL_50;
          }

          v67 = __biome_log_for_category(6);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
          }

          v68 = MEMORY[0x1E696ABC0];
          v80 = *MEMORY[0x1E696A578];
          v81 = @"Internal failure";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v62 = v68;
          v63 = 0;
        }

LABEL_49:
        v69 = [v62 errorWithDomain:@"BiomeStorageError" code:v63 userInfo:v61];
        replyCopy[2](replyCopy, 0, v69);

        handleCopy = v72;
        goto LABEL_50;
      }
    }

    goto LABEL_34;
  }

  v28 = __biome_log_for_category(6);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [BMFileServer replaceFileAtPath:withFileHandle:protection:flags:reply:];
  }

  v29 = MEMORY[0x1E696ABC0];
  v96 = *MEMORY[0x1E696A578];
  v97[0] = @"Invalid path";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v24 = [v29 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v15];
  replyCopy[2](replyCopy, 0, v24);
LABEL_50:

  v70 = *MEMORY[0x1E69E9840];
}

- (void)initWithDirectory:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMFileServer.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_2(&dword_1AC15D000, v0, v1, "Unexpected protection class specified for remote sharedSync file %{public}@ %d");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.3()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_4();
  v2 = [v1 objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_9(&dword_1AC15D000, v3, v4, "Invalid stream identifier %{public}@ type 'public'", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createDirectoryAtPath:reply:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:reply:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeDirectoryAtPath:reply:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:withFileHandle:protection:flags:reply:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end