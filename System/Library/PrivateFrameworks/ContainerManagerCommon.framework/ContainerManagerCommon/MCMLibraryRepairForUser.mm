@interface MCMLibraryRepairForUser
- (BOOL)_canRepairLocally;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 containerPath:(id)a4 containerIdentifier:(id)a5 error:(id *)a6 duringBlock:(id)a7;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 containerRootURL:(id)a4 error:(id *)a5 duringBlock:(id)a6;
- (BOOL)performRepairForContainerPath:(id)a3 containerIdentifier:(id)a4 error:(id *)a5;
- (MCMLibraryRepairForUser)initWithManagedUserPathRegistry:(id)a3 fileManager:(id)a4 classIterator:(id)a5;
- (MCMManagedUserPathRegistry)userRegistry;
- (id)_managedPathFromContainerClassPath:(id)a3 registry:(id)a4;
- (id)_managedPathsForGenericRepair;
- (id)_setByAddingContainerClassPathsToSet:(id)a3 registry:(id)a4;
@end

@implementation MCMLibraryRepairForUser

- (MCMManagedUserPathRegistry)userRegistry
{
  result = self->_userRegistry;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_canRepairLocally
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MCMLibraryRepairForUser;
  v3 = [(MCMLibraryRepair *)&v12 _canRepairLocally];
  getpid();
  v4 = MEMORY[0x1E69E9BD0];
  v5 = [(MCMLibraryRepairForUser *)self userRegistry];
  v6 = [v5 userIdentity];
  v7 = [v6 homeDirectoryURL];
  [v7 fileSystemRepresentation];
  v11 = *v4;
  v8 = sandbox_check();

  if (v8)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_managedPathFromContainerClassPath:(id)a3 registry:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [v5 userIdentity];
  v8 = [v7 posixUser];

  v9 = [v6 baseURL];
  v10 = [v5 managedPathForURL:v9];

  v11 = [MCMManagedPath alloc];
  v12 = [v6 categoryURL];
  v13 = -[MCMManagedPath initWithURL:flags:ACLConfig:mode:dpClass:owner:parent:](v11, "initWithURL:flags:ACLConfig:mode:dpClass:owner:parent:", v12, 1, 1, [v6 posixMode], 0xFFFFFFFFLL, v8, v10);

  v14 = [MCMManagedPath alloc];
  v15 = [v6 classURL];
  v16 = [v6 posixMode];

  v17 = [(MCMManagedPath *)v14 initWithURL:v15 flags:1 ACLConfig:1 mode:v16 dpClass:0xFFFFFFFFLL owner:v8 parent:v13];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_setByAddingContainerClassPathsToSet:(id)a3 registry:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v6 userIdentity];
  v9 = +[MCMContainerClassPath containerPathTypeClasses];
  v10 = [(MCMLibraryRepair *)self classIterator];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__MCMLibraryRepairForUser__setByAddingContainerClassPathsToSet_registry___block_invoke;
  v21 = &unk_1E86B0CA0;
  v22 = v9;
  v23 = v8;
  v24 = self;
  v25 = v6;
  v26 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  v14 = v9;
  [v10 selectUserWithIterator:&v18];

  v15 = [v11 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __73__MCMLibraryRepairForUser__setByAddingContainerClassPathsToSet_registry___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v3)
  {
    v5 = v3;
    v34 = *v44;
    *&v4 = 138412802;
    v32 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v8 = [v7 containerPathForUserIdentity:*(a1 + 40) containerClass:{objc_msgSend(v35, "containerClass", v32)}];
        v9 = [v8 baseURL];
        v10 = [v9 path];
        v11 = [*(a1 + 40) homeDirectoryURL];
        v12 = [v11 path];
        v13 = [v10 hasPrefix:v12];

        v14 = container_log_handle_for_category();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

        if (v13)
        {
          if (v15)
          {
            v16 = container_log_handle_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v21 = NSStringFromClass(v7);
              v22 = [v8 baseURL];
              v23 = [v22 path];
              v24 = [*(a1 + 40) homeDirectoryURL];
              v25 = [v24 path];
              *buf = v32;
              v37 = v21;
              v38 = 2112;
              v39 = v23;
              v40 = 2112;
              v41 = v25;
              _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Including [%@:%@] since it is under [%@]", buf, 0x20u);
            }
          }

          v17 = [*(a1 + 48) _managedPathFromContainerClassPath:v8 registry:*(a1 + 56)];
          if (v17)
          {
            v18 = v17;
            do
            {
              [*(a1 + 64) addObject:v18];
              v19 = [v18 parent];

              v18 = v19;
            }

            while (v19);
          }
        }

        else if (v15)
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v26 = NSStringFromClass(v7);
            v27 = [v8 baseURL];
            v28 = [v27 path];
            v29 = [*(a1 + 40) homeDirectoryURL];
            v30 = [v29 path];
            *buf = v32;
            v37 = v26;
            v38 = 2112;
            v39 = v28;
            v40 = 2112;
            v41 = v30;
            _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Skipping [%@:%@] since it isn't under [%@]", buf, 0x20u);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v5);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_managedPathsForGenericRepair
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(MCMLibraryRepairForUser *)self userRegistry];
  v4 = [v3 paths];
  v5 = [(MCMLibraryRepairForUser *)self _setByAddingContainerClassPathsToSet:v4 registry:v3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)performRepairForContainerPath:(id)a3 containerIdentifier:(id)a4 error:(id *)a5
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DFA8] set];
  v9 = [(MCMLibraryRepairForUser *)self userRegistry];
  v10 = [v9 userIdentity];
  v11 = [v10 posixUser];

  v12 = [v7 containerClassPath];
  v13 = [(MCMLibraryRepairForUser *)self _managedPathFromContainerClassPath:v12 registry:v9];

  v14 = [v7 containerPathIdentifier];
  v60 = v13;
  v15 = [v13 managedPathByAppendingPathComponent:v14 flags:5 ACLConfig:1 mode:493 dpClass:0xFFFFFFFFLL owner:v11];

  v59 = v15;
  [v8 addObject:v15];
  v16 = [v9 userIdentity];
  v17 = [v16 homeDirectoryURL];
  v18 = [v17 path];

  if (!v18)
  {
    v38 = [v9 userIdentity];

    if (!v38)
    {
      v45 = container_log_handle_for_category();
      v41 = v60;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_FAULT, "User path registry has no user identity", buf, 2u);
      }

      goto LABEL_38;
    }

    v39 = [v9 userIdentity];
    v40 = [v39 homeDirectoryURL];

    v41 = v60;
    if (v40)
    {
      v42 = [v9 userIdentity];
      v43 = [v42 homeDirectoryURL];
      v44 = [v43 path];

      if (v44)
      {
LABEL_39:
        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:75 userInfo:0];
        v37 = 0;
        goto LABEL_40;
      }

      v45 = container_log_handle_for_category();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        v46 = [v9 userIdentity];
        v47 = [v46 homeDirectoryURL];
        *buf = 138412290;
        v66 = v47;
        _os_log_fault_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_FAULT, "User identity has no home directory path cannot be computed (%@)", buf, 0xCu);

LABEL_45:
      }
    }

    else
    {
      v45 = container_log_handle_for_category();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        v46 = [v9 userIdentity];
        *buf = 138412290;
        v66 = v46;
        _os_log_fault_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_FAULT, "User identity has no home directory URL (%@)", buf, 0xCu);
        goto LABEL_45;
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  v64 = 0;
  v19 = [(MCMLibraryRepair *)self performGenericRepairWithError:&v64];
  v20 = v64;
  if (v19)
  {
    v21 = [v9 orderedPathsFromPaths:v8];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
    if (v22)
    {
      v23 = v22;
      v54 = v11;
      v55 = v9;
      v56 = a5;
      v57 = v8;
      v58 = v7;
      v24 = *v71;
      v61 = *MEMORY[0x1E696A798];
      while (2)
      {
        v25 = 0;
        v26 = v20;
        do
        {
          if (*v71 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v70 + 1) + 8 * v25);
          v28 = container_log_handle_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v66 = v27;
            _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Examining %@ for repair.", buf, 0xCu);
          }

          v29 = [v27 owner];
          v30 = [v29 UID];
          v31 = [v27 owner];
          v32 = [v31 primaryGID];
          v63 = v26;
          v33 = [(MCMLibraryRepair *)self fixPermissionsWithManagedPath:v27 uid:v30 gid:v32 error:&v63];
          v20 = v63;

          if (!v33)
          {
            v34 = [v20 domain];
            if (![v34 isEqualToString:v61])
            {

LABEL_32:
              v50 = container_log_handle_for_category();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v66 = v27;
                v67 = 2112;
                v68 = v20;
                _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "Failed to repair [%@]: %@", buf, 0x16u);
              }

              v37 = 0;
              goto LABEL_35;
            }

            v35 = [v20 code];

            if (v35 != 2)
            {
              goto LABEL_32;
            }

            v36 = container_log_handle_for_category();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v27;
              _os_log_debug_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEBUG, "Expected path [%@] does not exist, moving on", buf, 0xCu);
            }
          }

          ++v25;
          v26 = v20;
        }

        while (v23 != v25);
        v23 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v37 = 1;
LABEL_35:
      v8 = v57;
      v7 = v58;
      v9 = v55;
      a5 = v56;
      v11 = v54;
    }

    else
    {
      v37 = 1;
    }

    v41 = v60;

LABEL_40:
    v49 = v59;
    if (!a5)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v48 = container_log_handle_for_category();
  v49 = v59;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v66 = v20;
    _os_log_error_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_ERROR, "Failed to repair generic paths: %@", buf, 0xCu);
  }

  v37 = 0;
  v41 = v60;
  if (a5)
  {
LABEL_41:
    if (!v37)
    {
      v51 = v20;
      *a5 = v20;
    }
  }

LABEL_43:

  v52 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 containerPath:(id)a4 containerIdentifier:(id)a5 error:(id *)a6 duringBlock:(id)a7
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = v14;
  if (v14)
  {
    v19[0] = 0;
    v16 = (*(v14 + 2))(v14, v11, v19);
    v14 = v19[0];
    if (a6 && (v16 & 1) == 0)
    {
      v14 = v14;
      v16 = 0;
      *a6 = v14;
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 containerRootURL:(id)a4 error:(id *)a5 duringBlock:(id)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v16[0] = 0;
    v13 = (*(v11 + 2))(v11, v9, v16);
    v11 = v16[0];
    if (a5 && (v13 & 1) == 0)
    {
      v11 = v11;
      v13 = 0;
      *a5 = v11;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (MCMLibraryRepairForUser)initWithManagedUserPathRegistry:(id)a3 fileManager:(id)a4 classIterator:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v14.receiver = self;
  v14.super_class = MCMLibraryRepairForUser;
  v10 = [(MCMLibraryRepair *)&v14 initWithManagedPathRegistry:v9 fileManager:a4 classIterator:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userRegistry, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end