@interface MapsSuggestionsDestinationdTrigger
- (MapsSuggestionsDestinationdTrigger)initWithName:(id)name;
- (uint64_t)_isFromIgnoredPeer:(void *)peer;
- (void)addIgnoredClientProcess:(id)process;
- (void)didAddFirstObserver;
- (void)didRemoveLastObserver;
@end

@implementation MapsSuggestionsDestinationdTrigger

void __57__MapsSuggestionsDestinationdTrigger_didAddFirstObserver__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (![(MapsSuggestionsDestinationdTrigger *)WeakRetained _isFromIgnoredPeer:a2])
    {
      [v4 triggerMyObservers];
      goto LABEL_10;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Not firing because this client process is being ignored.", &v6, 2u);
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsIPC.mm";
      v8 = 1026;
      v9 = 201;
      v10 = 2082;
      v11 = "[MapsSuggestionsDestinationdTrigger didAddFirstObserver]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }

LABEL_10:
}

- (MapsSuggestionsDestinationdTrigger)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MapsSuggestionsDestinationdTrigger;
  v5 = [(MapsSuggestionsBaseTrigger *)&v10 initWithName:nameCopy];
  v6 = v5;
  if (v5)
  {
    std::unique_ptr<MSg::NotificationReceiver>::reset[abi:ne200100](v5 + 4, 0);
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    ignoredPeerIdentifiers = v6->_ignoredPeerIdentifiers;
    v6->_ignoredPeerIdentifiers = v7;
  }

  return v6;
}

- (void)addIgnoredClientProcess:(id)process
{
  v18 = *MEMORY[0x1E69E9840];
  processCopy = process;
  if (processCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSSet *)selfCopy->_ignoredPeerIdentifiers setByAddingObject:processCopy];
    ignoredPeerIdentifiers = selfCopy->_ignoredPeerIdentifiers;
    selfCopy->_ignoredPeerIdentifiers = v7;

    objc_sync_exit(selfCopy);
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsIPC.mm";
      v12 = 1024;
      v13 = 168;
      v14 = 2082;
      v15 = "[MapsSuggestionsDestinationdTrigger addIgnoredClientProcess:]";
      v16 = 2082;
      v17 = "nil == (clientProcessName)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a process name", &v10, 0x26u);
    }
  }
}

- (uint64_t)_isFromIgnoredPeer:(void *)peer
{
  v18 = *MEMORY[0x1E69E9840];
  if (!peer)
  {
    return 0;
  }

  peerCopy = peer;
  objc_sync_enter(peerCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = peerCopy[5];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = *(a2 + 32);
        if (v9 == MapsSuggestionsIPCPayloadForNSString(v8))
        {
          v11 = GEOFindOrCreateLog();
          [(MapsSuggestionsDestinationdTrigger *)v11 _isFromIgnoredPeer:v8];
          v10 = 1;
          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  objc_sync_exit(peerCopy);
  return v10;
}

- (void)didAddFirstObserver
{
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__MapsSuggestionsDestinationdTrigger_didAddFirstObserver__block_invoke;
  aBlock[3] = &unk_1E8203BC0;
  objc_copyWeak(&v5, &location);
  _Block_copy(aBlock);
  operator new();
}

- (void)didRemoveLastObserver
{
  dispatchQueue = [(MapsSuggestionsBaseTrigger *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  std::unique_ptr<MSg::NotificationReceiver>::reset[abi:ne200100](&self->_notificationReceiver, 0);
}

- (void)_isFromIgnoredPeer:(NSObject *)a1 .cold.1(NSObject *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "Ignoring wake-ups from peerIdentifier '%@'", &v4, 0xCu);
  }
}

@end