@interface MCMRuntimeState
- (MCMRuntimeState)init;
- (MCMTestLocks)testLocks;
- (NSURL)url;
- (id)_accumulateAsPlist;
- (id)_accumulateTestLocksAsPlistArray;
- (id)_urlForDirectory;
- (void)_accumulateAndPersist;
- (void)_loadAndRestore;
- (void)_restoreFromPlist:(id)a3;
- (void)_restoreTestLock:(unint64_t)a3 count:(unint64_t)a4;
- (void)_restoreTestLocksWithPlistArray:(id)a3;
- (void)persist;
- (void)reset;
- (void)restore;
@end

@implementation MCMRuntimeState

- (NSURL)url
{
  result = self->_url;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMTestLocks)testLocks
{
  result = self->_testLocks;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_restoreTestLock:(unint64_t)a3 count:(unint64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = a4;
    do
    {
      v7 = [(MCMRuntimeState *)self testLocks];
      [v7 acquireLock:a3];

      --v4;
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_restoreTestLocksWithPlistArray:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        objc_opt_class();
        v9 = v8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_11:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          goto LABEL_12;
        }

        if (!v9)
        {
          goto LABEL_11;
        }

        v10 = [v9 objectForKeyedSubscript:@"MCMRuntimeStateTestLocksNum"];
        objc_opt_class();
        v11 = v10;
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v16 = [v9 objectForKeyedSubscript:@"MCMRuntimeStateTestLocksCount"];
        objc_opt_class();
        v17 = v16;
        if (objc_opt_isKindOfClass())
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }

        if (v12 && v13)
        {
          -[MCMRuntimeState _restoreTestLock:count:](self, "_restoreTestLock:count:", [v12 unsignedLongLongValue], objc_msgSend(v13, "unsignedLongValue"));
          v14 = v9;
          goto LABEL_15;
        }

        v14 = v9;
LABEL_12:
        v15 = container_log_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v9;
          _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Malformed test locks dict when restoring state; testLockValue = %@", buf, 0xCu);
        }

LABEL_15:
        ++v7;
      }

      while (v5 != v7);
      v18 = [v3 countByEnumeratingWithState:&v24 objects:v23 count:16];
      v5 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_restoreFromPlist:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = [v13 objectForKeyedSubscript:@"MCMRuntimeStateTestLocksEnabled"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v6 BOOLValue];
    v8 = [(MCMRuntimeState *)self testLocks];
    [v8 setEnabled:v7];
  }

  v9 = [v13 objectForKeyedSubscript:@"MCMRuntimeStateTestLocks"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    [(MCMRuntimeState *)self _restoreTestLocksWithPlistArray:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_loadAndRestore
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = +[MCMFileManager defaultManager];
  v5 = MEMORY[0x1E695DF20];
  v6 = [(MCMRuntimeState *)self url];
  v13 = 0;
  v7 = [v5 MCM_dictionaryWithContentsOfURL:v6 options:0 fileManager:v4 fsNode:0 error:&v13];
  v8 = v13;

  if (!v7)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v10 = [v8 code];

      if (v10 == 2)
      {
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Did not find runtime state to restore, so skipping", buf, 2u);
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Could not load runtime state to restore; error = %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  [(MCMRuntimeState *)self _restoreFromPlist:v7];
LABEL_11:

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_accumulateTestLocksAsPlistArray
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 15; ++i)
  {
    v5 = [(MCMRuntimeState *)self testLocks];
    v6 = [v5 countOfLock:i];

    if (v6 >= 1)
    {
      v13[0] = @"MCMRuntimeStateTestLocksNum";
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:i];
      v13[1] = @"MCMRuntimeStateTestLocksCount";
      v14[0] = v7;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v14[1] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      [v3 addObject:v9];
    }
  }

  v10 = [v3 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_accumulateAsPlist
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"MCMRuntimeStateTestLocksEnabled";
  v3 = MEMORY[0x1E696AD98];
  v4 = [(MCMRuntimeState *)self testLocks];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "enabled")}];
  v10[1] = @"MCMRuntimeStateTestLocks";
  v11[0] = v5;
  v6 = [(MCMRuntimeState *)self _accumulateTestLocksAsPlistArray];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_accumulateAndPersist
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = +[MCMFileManager defaultManager];
  v5 = [(MCMRuntimeState *)self _accumulateAsPlist];
  v6 = [(MCMRuntimeState *)self url];
  v11 = 0;
  v7 = [v5 MCM_writeToURL:v6 withOptions:0x10000000 fileManager:v4 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to write runtime state data; error = %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)_urlForDirectory
{
  v8 = *MEMORY[0x1E69E9840];
  if (xpc_is_system_session())
  {
    v2 = @"root";
  }

  else
  {
    v2 = @"mobile";
  }

  v3 = [MCMPOSIXUser posixUserWithName:v2];
  v4 = [v3 homeDirectoryURL];
  v5 = [v4 URLByAppendingPathComponent:@"Library/MobileContainerManager" isDirectory:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)restore
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v3 = *MEMORY[0x1E69E9840];

    [(MCMRuntimeState *)self _loadAndRestore];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)persist
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v3 = *MEMORY[0x1E69E9840];

    [(MCMRuntimeState *)self _accumulateAndPersist];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)reset
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = +[MCMFileManager defaultManager];
  v3 = [(MCMRuntimeState *)self url];
  [v5 removeItemAtURL:v3 error:0];

  v4 = *MEMORY[0x1E69E9840];
}

- (MCMRuntimeState)init
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MCMRuntimeState;
  v2 = [(MCMRuntimeState *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MCMRuntimeState *)v2 _urlForDirectory];
    v5 = [v4 URLByAppendingPathComponent:@"runtime_state" isDirectory:0];
    v6 = [v5 URLByAppendingPathExtension:@"plist"];
    url = v3->_url;
    v3->_url = v6;

    v8 = +[MCMTestLocks sharedInstance];
    testLocks = v3->_testLocks;
    v3->_testLocks = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

@end