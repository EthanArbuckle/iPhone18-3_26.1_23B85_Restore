@interface MPCLeaseController
- (MFPlaybackStackController)stackController;
- (MPCLeaseController)initWithTranslator:(id)a3 leaseManager:(id)a4;
- (void)relinquishLeaseForItem:(id)a3 completion:(id)a4;
- (void)requestLeaseForItem:(id)a3 completion:(id)a4;
@end

@implementation MPCLeaseController

- (MFPlaybackStackController)stackController
{
  WeakRetained = objc_loadWeakRetained(&self->_stackController);

  return WeakRetained;
}

- (void)relinquishLeaseForItem:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseController: %p -  Relinquishing lease for %{public}@", buf, 0x16u);
  }

  v9 = [(MPCLeaseController *)self translator];
  v10 = [v9 MPAVItemForMFPlayerItem:v6];

  if (v10)
  {
    [v10 prepareForRate:v7 completionHandler:0.0];
    [v10 pauseContentKeySession];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(MPCLeaseController *)self stackController];
    v12 = [v11 nextItems];

    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          v18 = [(MPCLeaseController *)self translator];
          v19 = [v18 MPAVItemForMFPlayerItem:v17];

          if (v10 != v19)
          {
            [v19 pauseContentKeySession];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v7[2](v7);
  }
}

- (void)requestLeaseForItem:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v28 = self;
    v29 = 2114;
    v30 = v6;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[Lease] - MPCLeaseController: %p -  Requesting lease for %{public}@", buf, 0x16u);
  }

  v9 = [(MPCLeaseController *)self leaseManager];
  [v9 setCanStealLeaseIfNeeded];

  v10 = [(MPCLeaseController *)self translator];
  v11 = [v10 MPAVItemForMFPlayerItem:v6];

  if (v11)
  {
    [v11 resumeContentKeySession];
    LODWORD(v12) = 1.0;
    [v11 prepareForRate:v7 completionHandler:v12];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(MPCLeaseController *)self stackController];
    v14 = [v13 nextItems];

    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          v20 = [(MPCLeaseController *)self translator];
          v21 = [v20 MPAVItemForMFPlayerItem:v19];

          if (v11 != v21)
          {
            [v21 resumeContentKeySession];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v7[2](v7);
  }
}

- (MPCLeaseController)initWithTranslator:(id)a3 leaseManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPCLeaseController;
  v9 = [(MPCLeaseController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_translator, a3);
    objc_storeStrong(&v10->_leaseManager, a4);
  }

  return v10;
}

@end