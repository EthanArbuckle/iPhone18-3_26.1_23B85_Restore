@interface BMFileServer
- (BMFileServer)initWithDirectory:(id)a3;
- (BMFileServer)initWithDirectory:(id)a3 library:(id)a4;
- (BOOL)allowedToAccessStream:(id)a3 withMode:(int)a4 error:(id *)a5;
- (BOOL)entitledToAccessClientCompute:(id)a3 error:(id *)a4;
- (BOOL)entitledToAccessSharedSyncWithError:(id *)a3;
- (BOOL)isBiomeSyncDaemon;
- (BOOL)isPrimaryDaemon;
- (id)currentUseCase;
- (void)createDirectoryAtPath:(id)a3 reply:(id)a4;
- (void)removeDirectoryAtPath:(id)a3 reply:(id)a4;
- (void)removeFileAtPath:(id)a3 reply:(id)a4;
- (void)replaceFileAtPath:(id)a3 withFileHandle:(id)a4 protection:(int)a5 flags:(int)a6 reply:(id)a7;
@end

@implementation BMFileServer

- (id)currentUseCase
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = [v2 bm_accessControlPolicy];
  v4 = [v3 useCase];

  return v4;
}

- (BMFileServer)initWithDirectory:(id)a3
{
  v4 = a3;
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
  v7 = [(BMFileServer *)self initWithDirectory:v4 library:v6];

  return v7;
}

- (BMFileServer)initWithDirectory:(id)a3 library:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BMFileServer;
  v8 = [(BMFileServer *)&v16 init];
  if (v8)
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "BMFileServer in %@", buf, 0xCu);
    }

    v10 = [v6 copy];
    directory = v8->_directory;
    v8->_directory = v10;

    v12 = [BMFileManager fileManagerWithDirectAccessToDirectory:v6 cachingOptions:0];
    fileManager = v8->_fileManager;
    v8->_fileManager = v12;

    [BMPaths getServiceDomain:&v8->_domain subpath:0 forPath:v6];
    objc_storeStrong(&v8->_library, a4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)allowedToAccessStream:(id)a3 withMode:(int)a4 error:(id *)a5
{
  v6 = a4;
  v63[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E696B0B8] currentConnection];
  v10 = v9;
  if (!v9)
  {
    v11 = __biome_log_for_category(6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v11, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v17 = 0;
    goto LABEL_46;
  }

  if ((v6 & 1 | 2) == 2 || v6 < 0)
  {
    v11 = [v9 bm_accessControlPolicy];
    if (v6 < 0 || (v6 & 3) == 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = [[BMResourceSpecifier alloc] initWithType:1 name:v8];
    if (!v14)
    {
      if (a5)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid stream identifier '%@'", v8];
        v20 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        v61 = v19;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v22 = v20;
        v23 = 7;
LABEL_42:
        *a5 = [v22 errorWithDomain:@"BiomeStorageError" code:v23 userInfo:v21];
        goto LABEL_43;
      }

LABEL_44:
      v17 = 0;
      goto LABEL_45;
    }

    if (([v11 allowsAccessToResource:v14 withMode:v13]& 1) != 0)
    {
      if (([v8 isEqual:@"GenerativeExperiences.TransparencyLog"] & 1) == 0 && (objc_msgSend(v8, "isEqual:", @"PrivateCloudCompute.RequestLog") & 1) == 0 && !objc_msgSend(v8, "hasPrefix:", @"AppleIntelligenceReport."))
      {
        goto LABEL_15;
      }

      v15 = [(BMFileServer *)self currentUseCase];
      v16 = [v15 isEqual:@"__pruner__"];

      if (v16)
      {
        goto LABEL_15;
      }

      v35 = +[_BMManagedConfiguration shared];
      v36 = [v35 allowAppleIntelligenceReport];

      if (v36)
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

      if (a5)
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stream '%@' is not enabled", v8];
        v49 = MEMORY[0x1E696ABC0];
        v54[0] = *MEMORY[0x1E696A578];
        v54[1] = @"UserControlled";
        v55[0] = v48;
        v55[1] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
        v22 = v49;
        v19 = v48;
        v23 = 5;
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    v52 = [(_BMRootLibrary *)self->_library streamWithIdentifier:v8 error:0];
    v21 = [v52 valueForKeyPath:@"configuration.allowedClients"];
    if (v21 && (-[NSObject process](v11, "process"), v24 = objc_claimAutoreleasedReturnValue(), [v24 identifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v21, "containsObject:", v25), v25, v24, (v26 & 1) == 0))
    {
      if (a5)
      {
        v44 = MEMORY[0x1E696AEC0];
        v45 = [v11 process];
        v46 = [v45 identifier];
        v30 = [v44 stringWithFormat:@"'%@' is not present in allow-list for '%@'", v46, v8];

        v31 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A578];
        v59 = v30;
        v32 = MEMORY[0x1E695DF20];
        v33 = &v59;
        v34 = &v58;
        goto LABEL_36;
      }
    }

    else if (a5)
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = [v11 descriptionOfProcessAndUseCase];
      v29 = BMAccessModePrintableDescription(v13);
      v30 = [v27 stringWithFormat:@"%@ is not entitled for '%@' access to '%@'", v28, v29, v8];

      v31 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v57 = v30;
      v32 = MEMORY[0x1E695DF20];
      v33 = &v57;
      v34 = &v56;
LABEL_36:
      v47 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
      *a5 = [v31 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v47];
    }

    v19 = v52;
LABEL_43:

    goto LABEL_44;
  }

  if (a5)
  {
    v18 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v63[0] = @"Invalid access mode";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    [v18 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v11];
    *a5 = v17 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v17 = 0;
LABEL_47:

  v50 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)entitledToAccessClientCompute:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 bm_accessControlPolicy];
    v9 = [v8 allowsAccessToClientCompute:v5];
    v10 = v9;
    if (a4 && (v9 & 1) == 0)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v7 bm_process];
      v13 = [v12 executableName];
      v14 = [v11 stringWithFormat:@"'%@' is not entitled to access compute as '%@'", v13, v5];

      v15 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a4 = [v15 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v16];
    }
  }

  else
  {
    v8 = __biome_log_for_category(6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v8, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)entitledToAccessSharedSyncWithError:(id *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = v4;
  if (!v4)
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, v6, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    goto LABEL_12;
  }

  v6 = [v4 bm_accessControlPolicy];
  v7 = [v6 process];
  if ([v7 BOOLForEntitlement:@"com.apple.private.biome.sync"])
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (os_variant_allows_internal_security_policies())
  {
    v9 = [v6 process];
    v8 = [v9 BOOLForEntitlement:@"com.apple.internal.biome.sync"];
  }

  else
  {
    v8 = 0;
  }

  if (a3 && (v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v5 bm_process];
    v12 = [v11 executableName];
    v13 = [v10 stringWithFormat:@"'%@' is missing entitlement 'com.apple.private.biome.sync'", v12];

    v14 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a3 = [v14 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v15];

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isBiomeSyncDaemon
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bm_process];
    v5 = [v4 processType] == 3;
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
  v2 = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bm_process];
    v5 = [v4 processType] == 2;
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

- (void)createDirectoryAtPath:(id)a3 reply:(id)a4
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BMFileServerValidateAndParsePath(v6);
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
    v7[2](v7, v18);
    goto LABEL_20;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:v6];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v55 = v6;
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
        v7[2](v7, v41);

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
      v7[2](v7, v39);

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

  v7[2](v7, v34);
  v18 = v34;
LABEL_20:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:(id)a3 reply:(id)a4
{
  v81[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BMFileServerValidateAndParsePath(v6);
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
    v7[2](v7, v15);
    goto LABEL_55;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:v6];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v79 = v6;
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
      v7[2](v7, v38);

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

        v7[2](v7, v48);
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
    v7[2](v7, v57);

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
  v7[2](v7, v33);

  v9 = v61;
LABEL_55:

  v58 = *MEMORY[0x1E69E9840];
}

- (void)removeDirectoryAtPath:(id)a3 reply:(id)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BMFileServerValidateAndParsePath(v6);
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
    v7[2](v7, v15);
    goto LABEL_34;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:v6];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v61 = v6;
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
      v7[2](v7, v41);

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
      v7[2](v7, v44);

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

  v7[2](v7, v37);
  v15 = v37;
LABEL_34:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)replaceFileAtPath:(id)a3 withFileHandle:(id)a4 protection:(int)a5 flags:(int)a6 reply:(id)a7
{
  v97[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = BMFileServerValidateAndParsePath(v11);
  if (v14)
  {
    v74 = a5;
    v15 = [(NSString *)self->_directory stringByAppendingPathComponent:v11];
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v95 = v11;
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
        v13[2](v13, 0, v27);

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
      v13[2](v13, 0, v24);
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

      if (v74 != 6 && v41)
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
    v72 = v12;
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
        v13[2](v13, 0, v48);

        v12 = v72;
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
        if ((v74 + 1) >= 9)
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
          v12 = v72;
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
              v12 = v72;
              v54 = [v57 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v56];

              v15 = v73;
            }

            v13[2](v13, v53, v54);

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
        v13[2](v13, 0, v69);

        v12 = v72;
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
  v13[2](v13, 0, v24);
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