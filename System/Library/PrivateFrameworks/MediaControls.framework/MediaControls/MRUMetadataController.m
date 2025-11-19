@interface MRUMetadataController
- (BOOL)appSupportsHaptics;
- (MRUMetadataController)initWithDataSource:(id)a3;
- (NSString)bundleID;
- (NSString)bundleName;
- (void)metadataDataSource:(id)a3 didChangeArtwork:(id)a4;
- (void)metadataDataSource:(id)a3 didChangeBundleID:(id)a4;
- (void)metadataDataSource:(id)a3 didChangeNowPlayingInfo:(id)a4;
- (void)metadataDataSource:(id)a3 didChangeTimeControls:(id)a4;
- (void)metadataDataSource:(id)a3 didChangeTransportControls:(id)a4;
- (void)representsLongFormVideoContentWithCompletion:(id)a3;
- (void)setDataSource:(id)a3;
@end

@implementation MRUMetadataController

- (MRUMetadataController)initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MRUMetadataController;
  v6 = [(MRUMetadataController *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_dataSource, a3);
    [(MRUMetadataDataSource *)v6->_dataSource setDelegate:v6];
  }

  return v6;
}

- (BOOL)appSupportsHaptics
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(MRUMetadataDataSource *)self->_dataSource bundleID];
  v7 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v7];

  LOBYTE(v4) = AXApplicationSupportsHapticMusic();
  return v4;
}

- (void)setDataSource:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dataSource = self->_dataSource;
  if (dataSource != v5)
  {
    [(MRUMetadataDataSource *)dataSource setDelegate:0];
    objc_storeStrong(&self->_dataSource, a3);
    [(MRUMetadataDataSource *)self->_dataSource setDelegate:self];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(NSHashTable *)self->_observers copy];
    v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v16)
    {
      v15 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            v9 = [(MRUMetadataDataSource *)v5 bundleID];
            [v8 metadataController:self didChangeBundleID:v9];
          }

          if (objc_opt_respondsToSelector())
          {
            v10 = [(MRUMetadataDataSource *)v5 artwork];
            [v8 metadataController:self didChangeArtwork:v10];
          }

          if (objc_opt_respondsToSelector())
          {
            v11 = [(MRUMetadataDataSource *)v5 nowPlayingInfo];
            [v8 metadataController:self didChangeNowPlayingInfo:v11];
          }

          if (objc_opt_respondsToSelector())
          {
            v12 = [(MRUMetadataDataSource *)v5 timeControls];
            [v8 metadataController:self didChangeTimeControls:v12];
          }

          if (objc_opt_respondsToSelector())
          {
            v13 = [(MRUMetadataDataSource *)v5 transportControls];
            [v8 metadataController:self didChangeTransportControls:v13];
          }

          ++v7;
        }

        while (v16 != v7);
        v16 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v16);
    }
  }
}

- (NSString)bundleID
{
  v2 = [(MRUMetadataDataSource *)self->_dataSource bundleID];
  v3 = [v2 copy];

  return v3;
}

- (NSString)bundleName
{
  bundleName = self->_bundleName;
  if (bundleName)
  {
    goto LABEL_10;
  }

  v4 = [(MRUMetadataController *)self bundleID];
  if (![v4 length])
  {

    v6 = 0;
    goto LABEL_11;
  }

  if (MRMediaRemoteApplicationIsSystemMediaApplication())
  {
    v5 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
LABEL_8:
    v7 = v5;

    v4 = v7;
    goto LABEL_9;
  }

  if (MRMediaRemoteApplicationIsSystemPodcastApplication())
  {
    v5 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    goto LABEL_8;
  }

LABEL_9:
  v8 = [MRUStringsProvider localizedNameForBundleIdentifier:v4];
  v9 = self->_bundleName;
  self->_bundleName = v8;

  bundleName = self->_bundleName;
LABEL_10:
  v6 = bundleName;
LABEL_11:

  return v6;
}

- (void)representsLongFormVideoContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MRUMetadataController_representsLongFormVideoContentWithCompletion___block_invoke;
  v7[3] = &unk_1E7664490;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __70__MRUMetadataController_representsLongFormVideoContentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6970490];
  v3 = [*(a1 + 32) bundleID];
  LOBYTE(v2) = [v2 bundleIdRepresentsLongFormVideoContent:v3];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__MRUMetadataController_representsLongFormVideoContentWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7664948;
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (void)metadataDataSource:(id)a3 didChangeBundleID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  bundleName = self->_bundleName;
  self->_bundleName = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 metadataController:self didChangeBundleID:v5];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)metadataDataSource:(id)a3 didChangeArtwork:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 metadataController:self didChangeArtwork:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)metadataDataSource:(id)a3 didChangeNowPlayingInfo:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 metadataController:self didChangeNowPlayingInfo:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)metadataDataSource:(id)a3 didChangeTimeControls:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 metadataController:self didChangeTimeControls:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)metadataDataSource:(id)a3 didChangeTransportControls:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSHashTable *)self->_observers copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 metadataController:self didChangeTransportControls:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end