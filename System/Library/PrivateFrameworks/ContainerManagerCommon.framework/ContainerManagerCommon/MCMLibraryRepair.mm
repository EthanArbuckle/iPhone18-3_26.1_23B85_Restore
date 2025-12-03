@interface MCMLibraryRepair
- (BOOL)_canRepairLocally;
- (BOOL)createPathsIfNecessaryWithError:(id *)error;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block;
- (BOOL)managedPathsHaveChanged;
- (BOOL)pathsCreated;
- (BOOL)performGenericRepairWithError:(id *)error;
- (MCMContainerClassIterator)classIterator;
- (MCMFileManager)fileManager;
- (MCMLibraryRepair)initWithManagedPathRegistry:(id)registry fileManager:(id)manager classIterator:(id)iterator;
- (MCMManagedPathRegistry)registry;
- (id)_managedPathsForGenericRepair;
- (void)setPathsCreated:(BOOL)created;
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

- (void)setPathsCreated:(BOOL)created
{
  v4 = *MEMORY[0x1E69E9840];
  self->_pathsCreated = created;
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
  registry = [(MCMLibraryRepair *)self registry];
  paths = [registry paths];

  v4 = *MEMORY[0x1E69E9840];

  return paths;
}

- (BOOL)managedPathsHaveChanged
{
  v41 = *MEMORY[0x1E69E9840];
  _managedPathsForGenericRepair = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  registry = [(MCMLibraryRepair *)self registry];
  v5 = [registry orderedPathsFromPaths:_managedPathsForGenericRepair];

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
  v28 = _managedPathsForGenericRepair;
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
      fsNode = [v11 fsNode];

      if (fsNode)
      {
        v13 = +[MCMFileManager defaultManager];
        v14 = [v11 url];
        v29 = 0;
        v15 = [v13 fsNodeOfURL:v14 followSymlinks:1 error:&v29];
        v16 = v29;

        if (v15)
        {
          fsNode2 = [v11 fsNode];
          v18 = [fsNode2 isEqual:v15];

          if (v18)
          {

            continue;
          }

          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 url];
            path = [v21 path];
            fsNode3 = [v11 fsNode];
            *buf = 138543874;
            v31 = path;
            v32 = 2114;
            v33 = fsNode3;
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
            path2 = [v26 path];
            *buf = 138543618;
            v31 = path2;
            v32 = 2114;
            v33 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to get fsNode for [%{public}@] when checking for file system changes: %{public}@", buf, 0x16u);
          }

          v15 = 0;
        }

        _managedPathsForGenericRepair = v28;

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
  _managedPathsForGenericRepair = v28;
LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)createPathsIfNecessaryWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MCMLibraryRepair *)selfCopy pathsCreated])
  {
    v5 = 0;
  }

  else
  {
    _managedPathsForGenericRepair = [(MCMLibraryRepair *)selfCopy _managedPathsForGenericRepair];
    registry = [(MCMLibraryRepair *)selfCopy registry];
    v8 = [registry orderedPathsFromPaths:_managedPathsForGenericRepair];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v10)
    {
      errorCopy = error;
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
            v15 = [(MCMLibraryRepair *)selfCopy fixAndRetryIfPermissionsErrorWithURL:v14 error:&v23 duringBlock:v22];
            v16 = v23;

            if (!v15)
            {

              objc_sync_exit(selfCopy);
              if (errorCopy)
              {
                v17 = v16;
                v18 = 0;
                *errorCopy = v16;
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

    [(MCMLibraryRepair *)selfCopy setPathsCreated:1];
  }

  objc_sync_exit(selfCopy);

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

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v13[0] = 0;
    v10 = (*(blockCopy + 2))(blockCopy, lCopy, v13);
    blockCopy = v13[0];
    if (error && (v10 & 1) == 0)
    {
      blockCopy = blockCopy;
      v10 = 0;
      *error = blockCopy;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)performGenericRepairWithError:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  registry = [(MCMLibraryRepair *)self registry];
  _managedPathsForGenericRepair = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  v30 = registry;
  [registry orderedPathsFromPaths:?];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v42 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
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

        owner = [v13 owner];
        v16 = [owner UID];
        owner2 = [v13 owner];
        primaryGID = [owner2 primaryGID];
        v33 = v12;
        v19 = [(MCMLibraryRepair *)self fixPermissionsWithManagedPath:v13 uid:v16 gid:primaryGID error:&v33];
        v9 = v33;

        if (!v19)
        {
          domain = [v9 domain];
          if (![domain isEqualToString:v31])
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
            if (errorCopy)
            {
              v25 = v9;
              v23 = 0;
              *errorCopy = v9;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_25;
          }

          code = [v9 code];

          if (code != 2)
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

- (MCMLibraryRepair)initWithManagedPathRegistry:(id)registry fileManager:(id)manager classIterator:(id)iterator
{
  v17 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  managerCopy = manager;
  iteratorCopy = iterator;
  v16.receiver = self;
  v16.super_class = MCMLibraryRepair;
  v12 = [(MCMLibraryRepair *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, registry);
    v13->_pathsCreated = 0;
    objc_storeStrong(&v13->_fileManager, manager);
    objc_storeStrong(&v13->_classIterator, iterator);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end