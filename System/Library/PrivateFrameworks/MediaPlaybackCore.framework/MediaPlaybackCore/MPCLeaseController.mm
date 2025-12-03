@interface MPCLeaseController
- (MFPlaybackStackController)stackController;
- (MPCLeaseController)initWithTranslator:(id)translator leaseManager:(id)manager;
- (void)relinquishLeaseForItem:(id)item completion:(id)completion;
- (void)requestLeaseForItem:(id)item completion:(id)completion;
@end

@implementation MPCLeaseController

- (MFPlaybackStackController)stackController
{
  WeakRetained = objc_loadWeakRetained(&self->_stackController);

  return WeakRetained;
}

- (void)relinquishLeaseForItem:(id)item completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v27 = 2114;
    v28 = itemCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseController: %p -  Relinquishing lease for %{public}@", buf, 0x16u);
  }

  translator = [(MPCLeaseController *)self translator];
  v10 = [translator MPAVItemForMFPlayerItem:itemCopy];

  if (v10)
  {
    [v10 prepareForRate:completionCopy completionHandler:0.0];
    [v10 pauseContentKeySession];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    stackController = [(MPCLeaseController *)self stackController];
    nextItems = [stackController nextItems];

    v13 = [nextItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(nextItems);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          translator2 = [(MPCLeaseController *)self translator];
          v19 = [translator2 MPAVItemForMFPlayerItem:v17];

          if (v10 != v19)
          {
            [v19 pauseContentKeySession];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [nextItems countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)requestLeaseForItem:(id)item completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v29 = 2114;
    v30 = itemCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseController: %p -  Requesting lease for %{public}@", buf, 0x16u);
  }

  leaseManager = [(MPCLeaseController *)self leaseManager];
  [leaseManager setCanStealLeaseIfNeeded];

  translator = [(MPCLeaseController *)self translator];
  v11 = [translator MPAVItemForMFPlayerItem:itemCopy];

  if (v11)
  {
    [v11 resumeContentKeySession];
    LODWORD(v12) = 1.0;
    [v11 prepareForRate:completionCopy completionHandler:v12];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    stackController = [(MPCLeaseController *)self stackController];
    nextItems = [stackController nextItems];

    v15 = [nextItems countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(nextItems);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          translator2 = [(MPCLeaseController *)self translator];
          v21 = [translator2 MPAVItemForMFPlayerItem:v19];

          if (v11 != v21)
          {
            [v21 resumeContentKeySession];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [nextItems countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (MPCLeaseController)initWithTranslator:(id)translator leaseManager:(id)manager
{
  translatorCopy = translator;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MPCLeaseController;
  v9 = [(MPCLeaseController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_translator, translator);
    objc_storeStrong(&v10->_leaseManager, manager);
  }

  return v10;
}

@end