@interface MPCMediaRemoteControllerAnimatedArtworkCache
- (MPCMediaRemoteControllerAnimatedArtworkCache)init;
- (id)assetForArtworkID:(id)d artworkKey:(id)key;
- (void)insertAsset:(id)asset forArtworkID:(id)d artworkKey:(id)key;
- (void)removeAssetsForArtworkID:(id)d;
- (void)updateArtworkID:(id)d;
@end

@implementation MPCMediaRemoteControllerAnimatedArtworkCache

- (MPCMediaRemoteControllerAnimatedArtworkCache)init
{
  v6.receiver = self;
  v6.super_class = MPCMediaRemoteControllerAnimatedArtworkCache;
  v2 = [(MPCMediaRemoteControllerAnimatedArtworkCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assets = v2->_assets;
    v2->_assets = v3;
  }

  return v2;
}

- (id)assetForArtworkID:(id)d artworkKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  if (self->_artworkID != dCopy && ![(NSString *)dCopy isEqual:?])
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:keyCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  if (![v8 isPlayable])
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = dCopy;
      v15 = 2112;
      v16 = keyCopy;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_INFO, "Cached asset for %@ / %@ not playable, returning nil", &v13, 0x16u);
    }

    [(NSMutableDictionary *)self->_assets removeObjectForKey:keyCopy];
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v9;
LABEL_11:

LABEL_12:

  return v10;
}

- (void)removeAssetsForArtworkID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (self->_artworkID == dCopy || (removeAllObjects = [(NSString *)dCopy isEqual:?], v6 = v7, removeAllObjects))
  {
    removeAllObjects = [(NSMutableDictionary *)self->_assets removeAllObjects];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](removeAllObjects, v6);
}

- (void)insertAsset:(id)asset forArtworkID:(id)d artworkKey:(id)key
{
  assetCopy = asset;
  dCopy = d;
  keyCopy = key;
  if (self->_artworkID == dCopy || [(NSString *)dCopy isEqual:?])
  {
    [(NSMutableDictionary *)self->_assets setObject:assetCopy forKeyedSubscript:keyCopy];
  }
}

- (void)updateArtworkID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (self->_artworkID != dCopy)
  {
    v7 = dCopy;
    dCopy = [dCopy isEqual:?];
    v6 = v7;
    if ((dCopy & 1) == 0)
    {
      objc_storeStrong(&self->_artworkID, d);
      dCopy = [(NSMutableDictionary *)self->_assets removeAllObjects];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](dCopy, v6);
}

@end