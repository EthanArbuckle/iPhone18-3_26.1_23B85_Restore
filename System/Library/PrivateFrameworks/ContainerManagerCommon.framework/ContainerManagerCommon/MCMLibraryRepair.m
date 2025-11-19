@interface MCMLibraryRepair
- (BOOL)_canRepairLocally;
- (BOOL)createPathsIfNecessaryWithError:(id *)a3;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 error:(id *)a4 duringBlock:(id)a5;
- (BOOL)managedPathsHaveChanged;
- (BOOL)pathsCreated;
- (BOOL)performGenericRepairWithError:(id *)a3;
- (MCMContainerClassIterator)classIterator;
- (MCMFileManager)fileManager;
- (MCMLibraryRepair)initWithManagedPathRegistry:(id)a3 fileManager:(id)a4 classIterator:(id)a5;
- (MCMManagedPathRegistry)registry;
- (id)_managedPathsForGenericRepair;
- (void)setPathsCreated:(BOOL)a3;
@end

@implementation MCMLibraryRepair

- (MCMContainerClassIterator)classIterator
{
  result = self->_classIterator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMFileManager)fileManager
{
  result = self->_fileManager;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPathsCreated:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_pathsCreated = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)pathsCreated
{
  result = self->_pathsCreated;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPathRegistry)registry
{
  result = self->_registry;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_canRepairLocally
{
  v4 = *MEMORY[0x1E69E9840];
  if (_canRepairLocally_onceToken != -1)
  {
    dispatch_once(&_canRepairLocally_onceToken, &__block_literal_global_13233);
  }

  result = _canRepairLocally_canRepairLocally;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__MCMLibraryRepair__canRepairLocally__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = +[MCMPOSIXUser currentPOSIXUser];
  _canRepairLocally_canRepairLocally = [v1 isRoot];
  v0 = *MEMORY[0x1E69E9840];
}

- (id)_managedPathsForGenericRepair
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(MCMLibraryRepair *)self registry];
  v3 = [v2 paths];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)managedPathsHaveChanged
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  v4 = [(MCMLibraryRepair *)self registry];
  v5 = [v4 orderedPathsFromPaths:v3];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v28 = v3;
  v9 = *v38;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      v12 = [v11 fsNode];

      if (v12)
      {
        v13 = +[MCMFileManager defaultManager];
        v14 = [v11 url];
        v29 = 0;
        v15 = [v13 fsNodeOfURL:v14 followSymlinks:1 error:&v29];
        v16 = v29;

        if (v15)
        {
          v17 = [v11 fsNode];
          v18 = [v17 isEqual:v15];

          if (v18)
          {

            continue;
          }

          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 url];
            v22 = [v21 path];
            v23 = [v11 fsNode];
            *buf = 138543874;
            v31 = v22;
            v32 = 2114;
            v33 = v23;
            v34 = 2114;
            v35 = v15;
            _os_log_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEFAULT, "Path [%{public}@] changed: old = %{public}@, new = %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v26 = [v11 url];
            v27 = [v26 path];
            *buf = 138543618;
            v31 = v27;
            v32 = 2114;
            v33 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to get fsNode for [%{public}@] when checking for file system changes: %{public}@", buf, 0x16u);
          }

          v15 = 0;
        }

        v3 = v28;

        v19 = 1;
        goto LABEL_20;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v37 objects:v36 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v19 = 0;
  v3 = v28;
LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)createPathsIfNecessaryWithError:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if ([(MCMLibraryRepair *)v4 pathsCreated])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MCMLibraryRepair *)v4 _managedPathsForGenericRepair];
    v7 = [(MCMLibraryRepair *)v4 registry];
    v8 = [v7 orderedPathsFromPaths:v6];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v10)
    {
      v21 = a3;
      v5 = 0;
      v11 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if (([v13 flags] & 2) != 0)
          {
            v14 = [v13 url];
            v22[4] = v13;
            v23 = v5;
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __52__MCMLibraryRepair_createPathsIfNecessaryWithError___block_invoke;
            v22[3] = &unk_1E86B10B8;
            v15 = [(MCMLibraryRepair *)v4 fixAndRetryIfPermissionsErrorWithURL:v14 error:&v23 duringBlock:v22];
            v16 = v23;

            if (!v15)
            {

              objc_sync_exit(v4);
              if (v21)
              {
                v17 = v16;
                v18 = 0;
                *v21 = v16;
              }

              else
              {
                v18 = 0;
              }

              goto LABEL_19;
            }

            v5 = v16;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

    [(MCMLibraryRepair *)v4 setPathsCreated:1];
  }

  objc_sync_exit(v4);

  v18 = 1;
  v16 = v5;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __52__MCMLibraryRepair_createPathsIfNecessaryWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [*(a1 + 32) mode];
  v8 = [*(a1 + 32) owner];
  v9 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 mode:v7 owner:v8 dataProtectionClass:objc_msgSend(*(a1 + 32) error:{"dpClass"), a3}];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)a3 error:(id *)a4 duringBlock:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v13[0] = 0;
    v10 = (*(v8 + 2))(v8, v7, v13);
    v8 = v13[0];
    if (a4 && (v10 & 1) == 0)
    {
      v8 = v8;
      v10 = 0;
      *a4 = v8;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)performGenericRepairWithError:(id *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [(MCMLibraryRepair *)self registry];
  v29 = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  v30 = v5;
  [v5 orderedPathsFromPaths:?];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = a3;
    v9 = 0;
    v10 = *v40;
    v31 = *MEMORY[0x1E696A798];
    obj = v6;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * v11);
        v14 = container_log_handle_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v13;
          _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Examining %@ for repair.", buf, 0xCu);
        }

        v15 = [v13 owner];
        v16 = [v15 UID];
        v17 = [v13 owner];
        v18 = [v17 primaryGID];
        v33 = v12;
        v19 = [(MCMLibraryRepair *)self fixPermissionsWithManagedPath:v13 uid:v16 gid:v18 error:&v33];
        v9 = v33;

        if (!v19)
        {
          v20 = [v9 domain];
          if (![v20 isEqualToString:v31])
          {

LABEL_20:
            v24 = container_log_handle_for_category();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v35 = v13;
              v36 = 2112;
              v37 = v9;
              _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to repair [%@]: %@", buf, 0x16u);
            }

            v6 = obj;
            if (v28)
            {
              v25 = v9;
              v23 = 0;
              *v28 = v9;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_25;
          }

          v21 = [v9 code];

          if (v21 != 2)
          {
            goto LABEL_20;
          }

          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v35 = v13;
            _os_log_debug_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEBUG, "Expected path [%@] does not exist, moving on", buf, 0xCu);
          }
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = 1;
LABEL_25:

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

- (MCMLibraryRepair)initWithManagedPathRegistry:(id)a3 fileManager:(id)a4 classIterator:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = MCMLibraryRepair;
  v12 = [(MCMLibraryRepair *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, a3);
    v13->_pathsCreated = 0;
    objc_storeStrong(&v13->_fileManager, a4);
    objc_storeStrong(&v13->_classIterator, a5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end