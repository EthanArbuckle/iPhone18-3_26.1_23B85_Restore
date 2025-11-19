@interface MRExpanseManager
+ (MRExpanseManager)sharedManager;
- (BOOL)activeActivityExistsForBundle:(id)a3;
- (BOOL)canAddTelevisionWithRouteIdentifierToSession:(id)a3;
- (BOOL)deviceIsActiveTelevision:(id)a3;
- (BOOL)expanseHandoffSupported;
- (BOOL)expanseSessionActive;
- (BOOL)expanseSessionHasActiveActivity;
- (BOOL)expanseSessionHasRemoteActivity;
- (BOOL)expanseSessionHasScreenSharingActivity;
- (MRExpanseManager)initWithQueue:(id)a3;
- (NSString)activeTelevisionRouteID;
- (id)activeConversation;
- (void)_handleConversationStateChanged;
- (void)_handleExpanseSessionJoined;
- (void)_handleExpanseSessionLeft;
- (void)_notifyObserversThatExpanseSessionJoined;
- (void)_notifyObserversThatExpanseSessionLeft;
- (void)_notifyObserversThatTelevisionJoinedSession;
- (void)_notifyObserversThatTelevisionLeftSession;
- (void)addObserver:(id)a3;
- (void)addTelevisionWithRouteIdentifierToSession:(id)a3 completion:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)dealloc;
- (void)neighborhoodActivityConduit:(id)a3 splitSessionEnded:(id)a4;
- (void)neighborhoodActivityConduit:(id)a3 splitSessionStarted:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeTelevisionWithRouteIdentifierFromSession:(id)a3 completion:(id)a4;
- (void)serverDisconnectedForConversationManager:(id)a3;
@end

@implementation MRExpanseManager

+ (MRExpanseManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MRExpanseManager sharedManager];
  }

  v3 = sharedManager___manager;

  return v3;
}

- (BOOL)expanseSessionHasScreenSharingActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(MRExpanseManager *)self activeConversation];
  v3 = [v2 activitySessions];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 state] == 1)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local activity found.", v16, 2u);
          }

          v10 = [v8 activity];
          v11 = [v10 isScreenSharingActivity];

          if (v11)
          {
            v13 = _MRLogForCategory(2uLL);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local screen sharing activity found.", v16, 2u);
            }

            v12 = 1;
            goto LABEL_18;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No screen sharing activity found.", v16, 2u);
  }

  v12 = 0;
LABEL_18:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)activeConversation
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(MRExpanseManager *)self conversationManager];
  v3 = [v2 activeConversations];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 state] == 3)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

void __33__MRExpanseManager_sharedManager__block_invoke()
{
  v0 = [MRExpanseManager alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.amp.MediaRemote.MRExpanseManager.shared", v4);
  v2 = [(MRExpanseManager *)v0 initWithQueue:v1];
  v3 = sharedManager___manager;
  sharedManager___manager = v2;
}

- (MRExpanseManager)initWithQueue:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = MRExpanseManager;
  v6 = [(MRExpanseManager *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.amp.MediaRemote.MRExpanseManager.notifyQueue", v8);
    notifyQueue = v7->_notifyQueue;
    v7->_notifyQueue = v9;

    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v11;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v13 = getTUConversationManagerClass_softClass;
    v31 = getTUConversationManagerClass_softClass;
    if (!getTUConversationManagerClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getTUConversationManagerClass_block_invoke;
      v26 = &unk_1E769ADA8;
      v27 = &v28;
      __getTUConversationManagerClass_block_invoke(&v23);
      v13 = v29[3];
    }

    v14 = v13;
    _Block_object_dispose(&v28, 8);
    v15 = objc_opt_new();
    conversationManager = v7->_conversationManager;
    v7->_conversationManager = v15;

    [(TUConversationManager *)v7->_conversationManager addDelegate:v7 queue:v7->_queue];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v17 = getTUNeighborhoodActivityConduitClass_softClass;
    v31 = getTUNeighborhoodActivityConduitClass_softClass;
    if (!getTUNeighborhoodActivityConduitClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getTUNeighborhoodActivityConduitClass_block_invoke;
      v26 = &unk_1E769ADA8;
      v27 = &v28;
      __getTUNeighborhoodActivityConduitClass_block_invoke(&v23);
      v17 = v29[3];
    }

    v18 = v17;
    _Block_object_dispose(&v28, 8);
    v19 = [[v17 alloc] initWithConversationManager:v7->_conversationManager];
    conduit = v7->_conduit;
    v7->_conduit = v19;

    [(TUNeighborhoodActivityConduit *)v7->_conduit addDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(MRExpanseManager *)self conduit];
  [v3 removeDelegate:self];

  v4 = [(MRExpanseManager *)self conversationManager];
  [v4 removeDelegate:self];

  v5.receiver = self;
  v5.super_class = MRExpanseManager;
  [(MRExpanseManager *)&v5 dealloc];
}

- (BOOL)activeActivityExistsForBundle:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(MRExpanseManager *)self activeConversation];
  v6 = [v5 activitySessions];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 state] == 1 || objc_msgSend(v10, "state") == 4)
        {
          v11 = [v10 activity];
          v12 = [v11 bundleIdentifier];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            v7 = _MRLogForCategory(2uLL);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v21 = v4;
              _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found active activity for %{private}@", buf, 0xCu);
            }

            LOBYTE(v7) = 1;
            goto LABEL_15;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)activeTelevisionRouteID
{
  v2 = [(MRExpanseManager *)self conduit];
  v3 = [v2 activeSplitSessionTV];
  v4 = [v3 identifierWithType:1];

  return v4;
}

- (BOOL)deviceIsActiveTelevision:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRExpanseManager *)self activeTelevisionRouteID];
  if (v5)
  {
    if ([v4 deviceSubtype] != 15)
    {
      v14 = [v4 uid];
      v13 = [v14 isEqualToString:v5];

      goto LABEL_15;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 clusterComposition];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) uid];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {

            v13 = 1;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = 0;
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)expanseHandoffSupported
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(MRExpanseManager *)self activeConversation];
  v3 = [v2 activitySessions];

  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) activity];
        v9 = [v8 metadata];
        v10 = [v9 supportsContinuationOnTV];

        if (v10)
        {
          v12 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found activity to continue on TV.", v15, 2u);
          }

          v11 = 1;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Found no activity to continue on TV.", v15, 2u);
  }

  v11 = 0;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)expanseSessionActive
{
  v2 = [(MRExpanseManager *)self activeConversation];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)expanseSessionHasActiveActivity
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(MRExpanseManager *)self activeConversation];
  v3 = [v2 activitySessions];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v13 + 1) + 8 * i) state] == 1)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Local activity found.", v12, 2u);
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No local activity found.", v12, 2u);
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)expanseSessionHasRemoteActivity
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(MRExpanseManager *)self activeConversation];
  v3 = [v2 activitySessions];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v13 + 1) + 8 * i) state] == 4)
        {
          v9 = _MRLogForCategory(2uLL);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Remote activity found.", v12, 2u);
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] No remote activity found.", v12, 2u);
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)canAddTelevisionWithRouteIdentifierToSession:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:v4 name:0];

  v6 = [(MRExpanseManager *)self conduit];
  v7 = [v6 nearbyTVDeviceHandles];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MRExpanseManager_canAddTelevisionWithRouteIdentifierToSession___block_invoke;
  v11[3] = &unk_1E769BB50;
  v12 = v5;
  v8 = v5;
  v9 = [v7 msv_firstWhere:v11];

  return v9 != 0;
}

- (void)addTelevisionWithRouteIdentifierToSession:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MRExpanseManager *)self activeConversation];
  v9 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 UUID];
    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Adding television with route ID: %@ to conversation %@", buf, 0x16u);
  }

  v11 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:v6 name:0];
  v12 = [(MRExpanseManager *)self conduit];
  v13 = [v8 UUID];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__MRExpanseManager_addTelevisionWithRouteIdentifierToSession_completion___block_invoke;
  v16[3] = &unk_1E769BB78;
  v17 = v7;
  v14 = v7;
  [v12 inviteTVDevice:v11 toConversation:v13 completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __73__MRExpanseManager_addTelevisionWithRouteIdentifierToSession_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138477827;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television add completed with error: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeTelevisionWithRouteIdentifierFromSession:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Removing television with route ID: %@", buf, 0xCu);
  }

  v9 = [objc_alloc(getTUNearbyDeviceHandleClass()) initWithType:1 identifier:v6 name:0];
  v10 = [(MRExpanseManager *)self conduit];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MRExpanseManager_removeTelevisionWithRouteIdentifierFromSession_completion___block_invoke;
  v13[3] = &unk_1E769BB78;
  v14 = v7;
  v11 = v7;
  [v10 disconnectTVDevice:v9 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __78__MRExpanseManager_removeTelevisionWithRouteIdentifierFromSession_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138477827;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television removal completed with error: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MRExpanseManager *)v5 observers];
    [v6 addObject:v7];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MRExpanseManager *)v5 observers];
    [v6 removeObject:v7];

    objc_sync_exit(v5);
    v4 = v7;
  }
}

- (void)_notifyObserversThatTelevisionJoinedSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MRExpanseManager *)v2 observers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MRExpanseManager *)v2 notifyQueue];
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __63__MRExpanseManager__notifyObserversThatTelevisionJoinedSession__block_invoke;
          v10[3] = &unk_1E769A4A0;
          v10[4] = v7;
          v10[5] = v2;
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversThatTelevisionLeftSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MRExpanseManager *)v2 observers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MRExpanseManager *)v2 notifyQueue];
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __61__MRExpanseManager__notifyObserversThatTelevisionLeftSession__block_invoke;
          v10[3] = &unk_1E769A4A0;
          v10[4] = v7;
          v10[5] = v2;
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversThatExpanseSessionJoined
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MRExpanseManager *)v2 observers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MRExpanseManager *)v2 notifyQueue];
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __60__MRExpanseManager__notifyObserversThatExpanseSessionJoined__block_invoke;
          v10[3] = &unk_1E769A4A0;
          v10[4] = v7;
          v10[5] = v2;
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversThatExpanseSessionLeft
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MRExpanseManager *)v2 observers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [(MRExpanseManager *)v2 notifyQueue];
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __58__MRExpanseManager__notifyObserversThatExpanseSessionLeft__block_invoke;
          v10[3] = &unk_1E769A4A0;
          v10[4] = v7;
          v10[5] = v2;
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleExpanseSessionJoined
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRExpanseManager] Failed to set category for audio session, route picking likely to malfunction. Error: %{private}@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_handleExpanseSessionLeft
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MRExpanseManager *)obj auxiliaryPlaybackAudioSession];

  if (v2)
  {
    [(MRExpanseManager *)obj setAuxiliaryPlaybackAudioSession:0];
    [(MRExpanseManager *)obj _notifyObserversThatExpanseSessionLeft];
  }

  objc_sync_exit(obj);
}

- (void)_handleConversationStateChanged
{
  if ([(MRExpanseManager *)self expanseSessionActive])
  {

    [(MRExpanseManager *)self _handleExpanseSessionJoined];
  }

  else
  {

    [(MRExpanseManager *)self _handleExpanseSessionLeft];
  }
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 UUID];
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = [v5 state];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Conversation %@ state changed to %ld", &v9, 0x16u);
  }

  [(MRExpanseManager *)self _handleConversationStateChanged];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)serverDisconnectedForConversationManager:(id)a3
{
  v4 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MRExpanseManager serverDisconnectedForConversationManager:v4];
  }

  [(MRExpanseManager *)self _handleConversationStateChanged];
}

- (void)neighborhoodActivityConduit:(id)a3 splitSessionStarted:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138478083;
    v9 = v5;
    v10 = 1024;
    v11 = [(MRExpanseManager *)self expanseSessionHasRemoteActivity];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television joined split session: %{private}@, remoteActivity: %{BOOL}u", &v8, 0x12u);
  }

  [(MRExpanseManager *)self _notifyObserversThatTelevisionJoinedSession];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)neighborhoodActivityConduit:(id)a3 splitSessionEnded:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138478083;
    v9 = v5;
    v10 = 1024;
    v11 = [(MRExpanseManager *)self expanseSessionHasActiveActivity];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRExpanseManager] Television left split session: %{private}@, localActivity: %{BOOL}u", &v8, 0x12u);
  }

  [(MRExpanseManager *)self _notifyObserversThatTelevisionLeftSession];
  v7 = *MEMORY[0x1E69E9840];
}

@end