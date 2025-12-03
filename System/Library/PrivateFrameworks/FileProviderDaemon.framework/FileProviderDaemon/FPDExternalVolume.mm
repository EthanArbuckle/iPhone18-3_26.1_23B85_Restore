@interface FPDExternalVolume
- (BOOL)_storeDomainProperties:(id)properties atURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)writeDomainsProperties:(id)properties underDirectoryAtURL:(id)l error:(id *)error;
- (id)_loadDomainPropertiesAtURL:(id)l error:(id *)error;
- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)l error:(id *)error;
- (void)removeBrokenEbihilLinksFromRoot;
@end

@implementation FPDExternalVolume

- (id)_loadDomainPropertiesAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] fp_dataWithContentsOfURL:lCopy enforceSignatureCheck:1 shouldUpdateXattr:&v15 error:error];
  if (v6)
  {
    if (v15 == 1)
    {
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] signature update is needed", buf, 2u);
      }

      v13 = 0;
      v8 = [v6 fp_writeToURL:lCopy withSignature:1 options:1 error:&v13];
      v9 = v13;
      if ((v8 & 1) == 0)
      {
        v10 = fp_current_or_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [FPDExternalVolume _loadDomainPropertiesAtURL:v9 error:v10];
        }
      }
    }

    v11 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)readDomainsPropertiesUnderDirectoryAtURL:(id)l error:(id *)error
{
  v70[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  stringByDeletingPathExtension = [@"Domains.plist" stringByDeletingPathExtension];
  pathExtension = [@"Domains.plist" pathExtension];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = *MEMORY[0x1E695DBB8];
  v41 = *MEMORY[0x1E695DC30];
  v70[0] = *MEMORY[0x1E695DC30];
  v70[1] = v8;
  v46 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  v59 = MEMORY[0x1E69E9820];
  v60 = 3221225472;
  v61 = __68__FPDExternalVolume_readDomainsPropertiesUnderDirectoryAtURL_error___block_invoke;
  v62 = &unk_1E83BEDB8;
  v63 = lCopy;
  v35 = v63;
  v10 = [defaultManager enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v10;
  v47 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v47)
  {
    v43 = 0;
    v45 = *v56;
    *&v11 = 138412546;
    v34 = v11;
    v36 = pathExtension;
    v37 = stringByDeletingPathExtension;
    do
    {
      v12 = 0;
      do
      {
        if (*v56 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v55 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v54 = 0;
        v15 = [v13 getResourceValue:&v54 forKey:v46 error:0];
        v16 = v54;
        v17 = v16;
        if (v15 && [v16 BOOLValue])
        {
          v53 = 0;
          v18 = [v13 getResourceValue:&v53 forKey:v41 error:0];
          v19 = v53;
          v20 = v19;
          if (v18 && [v19 hasPrefix:stringByDeletingPathExtension] && (objc_msgSend(v20, "pathExtension"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", pathExtension), v21, v22))
          {
            v52 = v43;
            v40 = [(FPDExternalVolume *)self _loadDomainPropertiesAtURL:v13 error:&v52];
            v42 = v52;

            if (v40)
            {
              [v38 addEntriesFromDictionary:?];
              selfCopy = self;
              objc_sync_enter(selfCopy);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v24 = v40;
              v25 = [v24 countByEnumeratingWithState:&v48 objects:v64 count:16];
              if (v25)
              {
                v26 = *v49;
                do
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v49 != v26)
                    {
                      objc_enumerationMutation(v24);
                    }

                    [(NSMutableDictionary *)selfCopy->_domainPlistNames setObject:v20 forKey:*(*(&v48 + 1) + 8 * i), v34];
                  }

                  v25 = [v24 countByEnumeratingWithState:&v48 objects:v64 count:16];
                }

                while (v25);
              }

              pathExtension = v36;
              stringByDeletingPathExtension = v37;
              objc_sync_exit(selfCopy);
            }

            else
            {
              selfCopy = fp_current_or_default_log();
              if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_ERROR))
              {
                fp_shortDescription = [v13 fp_shortDescription];
                fp_prettyDescription = [v42 fp_prettyDescription];
                *buf = v34;
                v66 = fp_shortDescription;
                v67 = 2112;
                v68 = fp_prettyDescription;
                _os_log_error_impl(&dword_1CEFC7000, &selfCopy->super.super, OS_LOG_TYPE_ERROR, "[ERROR] Unable to load domain properties from plist at '%@': %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v42 = v43;
          }

          v43 = v42;
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v12 != v47);
      v30 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
      v47 = v30;
    }

    while (v30);
  }

  else
  {
    v43 = 0;
  }

  v31 = v38;
  v32 = *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t __68__FPDExternalVolume_readDomainsPropertiesUnderDirectoryAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [*(a1 + 32) fp_shortDescription];
    v11 = [v5 fp_shortDescription];
    v12 = [v6 fp_prettyDescription];
    v13 = 136315906;
    v14 = "[FPDExternalVolume readDomainsPropertiesUnderDirectoryAtURL:error:]_block_invoke";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_error_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_ERROR, "[ERROR] %s unable to enumerate dir at '%@' (%@): %@", &v13, 0x2Au);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_storeDomainProperties:(id)properties atURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:properties format:200 options:0 error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 fp_writeToURL:lCopy withSignature:1 options:options error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)writeDomainsProperties:(id)properties underDirectoryAtURL:(id)l error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = propertiesCopy;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v10)
  {
    v36 = *v44;
    while (2)
    {
      v35 = v10;
      for (i = 0; i != v35; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v48 = v12;
        v13 = [v9 objectForKeyedSubscript:v12];
        v49 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

        v15 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKey:v12];

        if (v15)
        {
          v16 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKeyedSubscript:v12];
          v17 = [lCopy URLByAppendingPathComponent:v16];

          LOBYTE(v16) = [(FPDExternalVolume *)selfCopy _storeDomainProperties:v14 atURL:v17 options:1 error:error];
          if ((v16 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          stringByDeletingPathExtension = [@"Domains.plist" stringByDeletingPathExtension];
          pathExtension = [@"Domains.plist" pathExtension];
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.%@", stringByDeletingPathExtension, v12, pathExtension];
          v21 = [lCopy URLByAppendingPathComponent:v20 isDirectory:1];
          if (![(FPDExternalVolume *)selfCopy _storeDomainProperties:v14 atURL:v21 options:1 error:error])
          {

LABEL_24:
            objc_sync_exit(selfCopy);
            v32 = 0;
            goto LABEL_25;
          }

          [(NSMutableDictionary *)selfCopy->_domainPlistNames setObject:v20 forKey:v12];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_domainPlistNames allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v23)
  {
    v24 = *v40;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(allKeys);
        }

        v26 = *(*(&v39 + 1) + 8 * j);
        v27 = [v9 objectForKey:v26];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = [(NSMutableDictionary *)selfCopy->_domainPlistNames objectForKeyedSubscript:v26];
          v30 = [lCopy URLByAppendingPathComponent:v29];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager removeItemAtURL:v30 error:0];

          [(NSMutableDictionary *)selfCopy->_domainPlistNames removeObjectForKey:v26];
        }
      }

      v23 = [allKeys countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v23);
  }

  objc_sync_exit(selfCopy);
  v32 = 1;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)removeBrokenEbihilLinksFromRoot
{
  if (FPFeatureFlagEbihilIsEnabled())
  {
    linkQueue = self->_linkQueue;
    fp_dispatch_async_with_logs();
  }
}

void __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MEMORY[0x1E695DFF8];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 root];
  v7 = [v3 fileURLWithPath:v6];
  v27 = 0;
  v8 = [v2 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:0 error:&v27];
  v9 = v27;

  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke_cold_1(v4, v9, v10);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          [v15 fileSystemRepresentation];
          if (fpfs_root_exposure_symlink_xattr_exists())
          {
            v16 = [v15 path];
            v17 = [v2 fileExistsAtPath:v16];

            if ((v17 & 1) == 0)
            {

              v22 = 0;
              [v2 removeItemAtURL:v15 error:&v22];
              v9 = v22;
              if (v9)
              {
                v18 = fp_current_or_default_log();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  v19 = [v15 fp_shortDescription];
                  v20 = [v9 fp_prettyDescription];
                  *buf = 138543618;
                  v29 = v19;
                  v30 = 2114;
                  v31 = v20;
                  _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Failed to remove broken domain link %{public}@ with error: %{public}@", buf, 0x16u);
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_loadDomainPropertiesAtURL:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] failed to update to newer signature: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __52__FPDExternalVolume_removeBrokenEbihilLinksFromRoot__block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 fp_prettyDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Unable to list root of volume %{public}@ got error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end