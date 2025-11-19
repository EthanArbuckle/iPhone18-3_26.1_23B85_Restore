@interface CPLFileWatcher
- (CPLFileWatcher)initWithFileURL:(id)a3 name:(id)a4 ownerIdentifier:(id)a5 delegate:(id)a6 queue:(id)a7;
- (CPLFileWatcherDelegate)delegate;
- (id)_redactedPath;
- (id)description;
- (id)redactedDescription;
- (void)_forceRefreshWatchingNode;
- (void)_startWatchingNode;
- (void)_startWatchingParent;
- (void)_stopWatchingNode;
- (void)_stopWatchingParent;
- (void)_updateWatchingNode;
- (void)startWatching;
- (void)stopWatching;
@end

@implementation CPLFileWatcher

- (CPLFileWatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLFileWatcher *)self _redactedPath];
  v5 = [v3 initWithFormat:@"<%@ '%@' for %@>", v4, self->_name, self->_ownerIdentifier];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NSURL *)self->_fileURL path];
  v5 = [v4 stringByAbbreviatingWithTildeInPath];
  v6 = [v3 initWithFormat:@"<%@ '%@' for %@>", v5, self->_name, self->_ownerIdentifier];

  return v6;
}

- (void)stopWatching
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLFileWatcherOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      ownerIdentifier = self->_ownerIdentifier;
      v5 = [(CPLFileWatcher *)self _redactedPath];
      name = self->_name;
      *buf = 138412802;
      v11 = ownerIdentifier;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = name;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@: Stopping watching %@ (%@)", buf, 0x20u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CPLFileWatcher_stopWatching__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x1E69E9840];
}

void *__30__CPLFileWatcher_stopWatching__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2])
  {
    [result _stopWatchingNode];
    result = *(a1 + 32);
  }

  if (result[3])
  {

    return [result _stopWatchingParent];
  }

  return result;
}

- (void)startWatching
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLFileWatcherOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      ownerIdentifier = self->_ownerIdentifier;
      v5 = [(CPLFileWatcher *)self _redactedPath];
      name = self->_name;
      *buf = 138412802;
      v11 = ownerIdentifier;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = name;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@: Starting watching %@ (%@)", buf, 0x20u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CPLFileWatcher_startWatching__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
  v8 = *MEMORY[0x1E69E9840];
}

void __31__CPLFileWatcher_startWatching__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[3] || v2[2])
  {
LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  [v2 _startWatchingParent];
  [*(a1 + 32) _startWatchingNode];
  v3 = *(a1 + 32);
  if (*(v3 + 16))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLFileWatcherOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(*(a1 + 32) + 40) path];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = WeakRetained;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ exists at launch time - informing %@", buf, 0x16u);
      }

      v3 = *(a1 + 32);
    }

    v7 = objc_loadWeakRetained((v3 + 64));
    [v7 fileWatcherFileDidAppear:*(a1 + 32)];

    goto LABEL_9;
  }

  v10 = objc_loadWeakRetained((v3 + 64));
  [v10 fileWatcherFileDidDisappear:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_stopWatchingParent
{
  parentSource = self->_parentSource;
  if (parentSource)
  {
    dispatch_source_cancel(parentSource);
    v4 = self->_parentSource;
    self->_parentSource = 0;
  }
}

- (void)_startWatchingParent
{
  if (self->_parentSource)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Parent source should be nil here", buf, 2u);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLFileWatcher.m"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:122 description:@"Parent source should be nil here"];

    abort();
  }

  v3 = [(NSURL *)self->_fileURL URLByDeletingLastPathComponent];
  v4 = open([v3 fileSystemRepresentation], 0x8000);

  if ((v4 & 0x80000000) == 0)
  {
    v5 = dispatch_source_create(MEMORY[0x1E69E9728], v4, 2uLL, self->_queue);
    parentSource = self->_parentSource;
    self->_parentSource = v5;

    v7 = self->_parentSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__CPLFileWatcher__startWatchingParent__block_invoke;
    handler[3] = &unk_1E861A940;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_parentSource;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__CPLFileWatcher__startWatchingParent__block_invoke_18;
    v13[3] = &__block_descriptor_36_e5_v8__0l;
    v14 = v4;
    dispatch_source_set_cancel_handler(v8, v13);
    dispatch_resume(self->_parentSource);
  }
}

void __38__CPLFileWatcher__startWatchingParent__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[3])
  {
LABEL_12:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v2[2])
  {
    [v2 _startWatchingNode];
    v4 = *(a1 + 32);
    if (*(v4 + 16))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLFileWatcherOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = v6[7];
          v8 = [v6 _redactedPath];
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
          v12 = 138543874;
          v13 = v7;
          v14 = 2114;
          v15 = v8;
          v16 = 2112;
          v17 = WeakRetained;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ exists now - informing %@", &v12, 0x20u);
        }

        v4 = *(a1 + 32);
      }

      v10 = objc_loadWeakRetained((v4 + 64));
      [v10 fileWatcherFileDidAppear:*(a1 + 32)];
    }

    goto LABEL_12;
  }

  v3 = *MEMORY[0x1E69E9840];

  [v2 _updateWatchingNode];
}

- (void)_updateWatchingNode
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_nodeSource)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17.st_dev) = 0;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Node source should not be nil here", &v17, 2u);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLFileWatcher.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:102 description:@"Node source should not be nil here"];

    abort();
  }

  v3 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 0x8000);
  if (v3 == -1)
  {
    [(CPLFileWatcher *)self _forceRefreshWatchingNode];
    if (self->_nodeSource && (_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLFileWatcherOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        ownerIdentifier = self->_ownerIdentifier;
        v9 = [(CPLFileWatcher *)self _redactedPath];
        v17.st_dev = 138543618;
        *&v17.st_mode = ownerIdentifier;
        WORD2(v17.st_ino) = 2114;
        *(&v17.st_ino + 6) = v9;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ has been deleted but immediately recreated", &v17, 0x16u);
      }
    }
  }

  else
  {
    v4 = v3;
    memset(&v17, 0, sizeof(v17));
    if (fstat(v3, &v17) == -1 || v17.st_ino != self->_nodeInode)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLFileWatcherOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(NSURL *)self->_fileURL path];
          v15 = 138412290;
          v16 = v6;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%@ has changed", &v15, 0xCu);
        }
      }

      [(CPLFileWatcher *)self _forceRefreshWatchingNode];
    }

    close(v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_stopWatchingNode
{
  nodeSource = self->_nodeSource;
  if (nodeSource)
  {
    dispatch_source_cancel(nodeSource);
    v4 = self->_nodeSource;
    self->_nodeSource = 0;
  }
}

- (void)_startWatchingNode
{
  if (self->_nodeSource)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16.st_dev) = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Node source should be nil here", &v16, 2u);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLFileWatcher.m"];
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:64 description:@"Node source should be nil here"];

    abort();
  }

  v3 = open([(NSURL *)self->_fileURL fileSystemRepresentation], 0x8000);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    memset(&v16, 0, sizeof(v16));
    if (fstat(v3, &v16) == -1)
    {
      close(v4);
    }

    else
    {
      self->_nodeInode = v16.st_ino;
      v5 = dispatch_source_create(MEMORY[0x1E69E9728], v4, 1uLL, self->_queue);
      nodeSource = self->_nodeSource;
      self->_nodeSource = v5;

      v7 = self->_nodeSource;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __36__CPLFileWatcher__startWatchingNode__block_invoke;
      handler[3] = &unk_1E861A940;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      v8 = self->_nodeSource;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __36__CPLFileWatcher__startWatchingNode__block_invoke_14;
      v13[3] = &__block_descriptor_36_e5_v8__0l;
      v14 = v4;
      dispatch_source_set_cancel_handler(v8, v13);
      dispatch_resume(self->_nodeSource);
    }
  }
}

void __36__CPLFileWatcher__startWatchingNode__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    [v2 _forceRefreshWatchingNode];
    if (*(*(a1 + 32) + 16))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLFileWatcherOSLogDomain();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 32);
          v5 = v4[7];
          v6 = [v4 _redactedPath];
          v8 = 138543618;
          v9 = v5;
          v10 = 2114;
          v11 = v6;
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ has been deleted but immediately recreated", &v8, 0x16u);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_forceRefreshWatchingNode
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_nodeSource)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Node source should not be nil here", &v12, 2u);
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLFileWatcher.m"];
    [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:52 description:@"Node source should not be nil here"];

    abort();
  }

  [(CPLFileWatcher *)self _stopWatchingNode];
  [(CPLFileWatcher *)self _startWatchingNode];
  if (!self->_nodeSource)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLFileWatcherOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [(NSURL *)self->_fileURL path];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v12 = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = WeakRetained;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@ has been deleted - informing %@", &v12, 0x16u);
      }
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 fileWatcherFileDidDisappear:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_redactedPath
{
  has_internal_content = os_variant_has_internal_content();
  fileURL = self->_fileURL;
  if (has_internal_content)
  {
    v5 = [(NSURL *)fileURL path];
    v6 = [v5 stringByAbbreviatingWithTildeInPath];
  }

  else
  {
    v6 = [(NSURL *)fileURL lastPathComponent];
  }

  return v6;
}

- (CPLFileWatcher)initWithFileURL:(id)a3 name:(id)a4 ownerIdentifier:(id)a5 delegate:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = CPLFileWatcher;
  v17 = [(CPLFileWatcher *)&v25 init];
  if (v17)
  {
    v18 = [v12 copy];
    fileURL = v17->_fileURL;
    v17->_fileURL = v18;

    objc_storeWeak(&v17->_delegate, v15);
    objc_storeStrong(&v17->_queue, a7);
    v20 = [v13 copy];
    name = v17->_name;
    v17->_name = v20;

    v22 = [v14 copy];
    ownerIdentifier = v17->_ownerIdentifier;
    v17->_ownerIdentifier = v22;
  }

  return v17;
}

@end