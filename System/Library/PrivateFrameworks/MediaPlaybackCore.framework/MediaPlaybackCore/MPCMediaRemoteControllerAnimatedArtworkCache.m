@interface MPCMediaRemoteControllerAnimatedArtworkCache
- (MPCMediaRemoteControllerAnimatedArtworkCache)init;
- (id)assetForArtworkID:(id)a3 artworkKey:(id)a4;
- (void)insertAsset:(id)a3 forArtworkID:(id)a4 artworkKey:(id)a5;
- (void)removeAssetsForArtworkID:(id)a3;
- (void)updateArtworkID:(id)a3;
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

- (id)assetForArtworkID:(id)a3 artworkKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_artworkID != v6 && ![(NSString *)v6 isEqual:?])
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v7];
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
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_INFO, "Cached asset for %@ / %@ not playable, returning nil", &v13, 0x16u);
    }

    [(NSMutableDictionary *)self->_assets removeObjectForKey:v7];
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v9;
LABEL_11:

LABEL_12:

  return v10;
}

- (void)removeAssetsForArtworkID:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_artworkID == v4 || (v5 = [(NSString *)v4 isEqual:?], v6 = v7, v5))
  {
    v5 = [(NSMutableDictionary *)self->_assets removeAllObjects];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)insertAsset:(id)a3 forArtworkID:(id)a4 artworkKey:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_artworkID == v8 || [(NSString *)v8 isEqual:?])
  {
    [(NSMutableDictionary *)self->_assets setObject:v10 forKeyedSubscript:v9];
  }
}

- (void)updateArtworkID:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_artworkID != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_artworkID, a3);
      v5 = [(NSMutableDictionary *)self->_assets removeAllObjects];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

@end