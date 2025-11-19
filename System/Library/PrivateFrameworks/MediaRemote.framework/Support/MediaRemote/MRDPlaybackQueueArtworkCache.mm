@interface MRDPlaybackQueueArtworkCache
- (id)_cacheKeyForAnimatedArtworkForItem:(id)a3 withFormat:(id)a4;
- (id)_cacheKeyForAnimatedArtworkPreviewFrameForItem:(id)a3 withFormat:(id)a4;
- (id)_cacheKeyForArtworkForItem:(id)a3;
- (id)_fittedArtworkDataForCacheKey:(id)a3 withRequest:(id)a4;
- (id)animatedArtworkForContentItem:(id)a3 forFormat:(id)a4 withRequest:(id)a5;
- (id)debugDescription;
- (id)fittedAnimatedArtworkPreviewFrameDataForContentItem:(id)a3 forFormat:(id)a4 withRequest:(id)a5;
- (id)fittedArtworkDataForContentItem:(id)a3 withRequest:(id)a4;
- (void)_cacheAnimatedArtwork:(id)a3 forKey:(id)a4 forItem:(id)a5 withRequest:(id)a6;
- (void)_cacheArtworkData:(id)a3 forKey:(id)a4 forItem:(id)a5 withRequest:(id)a6;
- (void)_registerCacheKey:(id)a3 forItem:(id)a4;
- (void)addArtworkFromItem:(id)a3 fromRequest:(id)a4;
- (void)clearArtworkForItems:(id)a3;
@end

@implementation MRDPlaybackQueueArtworkCache

- (void)addArtworkFromItem:(id)a3 fromRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 artworks];
  v9 = [v8 objectForKeyedSubscript:MRContentItemArtworkFormatStandard];
  v10 = [v9 imageData];

  if (v10 || ([v6 artwork], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageData"), v10 = objc_claimAutoreleasedReturnValue(), v11, v10))
  {
    v12 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForArtworkForItem:v6];
    [(MRDPlaybackQueueArtworkCache *)self _cacheArtworkData:v10 forKey:v12 forItem:v6 withRequest:v7];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
LABEL_22:
      [(MRDPlaybackQueueArtworkCache *)self _pruneArtworkDataCache];
      goto LABEL_23;
    }

    v33 = 1;
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_23;
    }

    v33 = 0;
  }

  v31 = v10;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v6 animatedArtworkPreviewFrames];
  v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = [v6 animatedArtworkPreviewFrames];
        v19 = [v18 objectForKeyedSubscript:v17];
        v20 = [v19 imageData];

        if (v20)
        {
          v21 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkPreviewFrameForItem:v6 withFormat:v17];
          [(MRDPlaybackQueueArtworkCache *)self _cacheArtworkData:v20 forKey:v21 forItem:v6 withRequest:v7];

          v33 = 1;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v6 animatedArtworks];
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * j);
        v28 = [v6 animatedArtworks];
        v29 = [v28 objectForKeyedSubscript:v27];

        v30 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkForItem:v6 withFormat:v27];
        [(MRDPlaybackQueueArtworkCache *)self _cacheAnimatedArtwork:v29 forKey:v30 forItem:v6 withRequest:v7];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  v10 = v31;
  if (v33)
  {
    goto LABEL_22;
  }

LABEL_23:
}

- (id)fittedArtworkDataForContentItem:(id)a3 withRequest:(id)a4
{
  v6 = a4;
  v7 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForArtworkForItem:a3];
  v8 = [(MRDPlaybackQueueArtworkCache *)self _fittedArtworkDataForCacheKey:v7 withRequest:v6];

  return v8;
}

- (id)fittedAnimatedArtworkPreviewFrameDataForContentItem:(id)a3 forFormat:(id)a4 withRequest:(id)a5
{
  v8 = a5;
  v9 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkPreviewFrameForItem:a3 withFormat:a4];
  v10 = [(MRDPlaybackQueueArtworkCache *)self _fittedArtworkDataForCacheKey:v9 withRequest:v8];

  return v10;
}

- (id)animatedArtworkForContentItem:(id)a3 forFormat:(id)a4 withRequest:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 artworkCacheSize];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v13 = v12;

  animatedArtworkCache = self->_animatedArtworkCache;
  v15 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkForItem:v9 withFormat:v8];

  v16 = [(NSMutableDictionary *)animatedArtworkCache objectForKeyedSubscript:v15];
  v17 = [v16 objectForKeyedSubscript:v13];

  return v17;
}

- (void)clearArtworkForItems:(id)a3
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        cacheKeysForItemIdentifier = self->_cacheKeysForItemIdentifier;
        v10 = [v8 identifier];
        v11 = [(NSMutableDictionary *)cacheKeysForItemIdentifier objectForKeyedSubscript:v10];

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              [(NSMutableDictionary *)self->_artworkDataCache setObject:0 forKeyedSubscript:v16];
              [(NSMutableDictionary *)self->_animatedArtworkCache setObject:0 forKeyedSubscript:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }

        v17 = self->_cacheKeysForItemIdentifier;
        v18 = [v8 identifier];
        [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }
}

- (id)_cacheKeyForArtworkForItem:(id)a3
{
  v3 = [a3 identifier];
  v4 = [NSString stringWithFormat:@"artwork-%@", v3];

  return v4;
}

- (id)_cacheKeyForAnimatedArtworkPreviewFrameForItem:(id)a3 withFormat:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  v7 = [NSString stringWithFormat:@"animatedArtworkPreviewFrame-%@-%@", v6, v5];

  return v7;
}

- (id)_cacheKeyForAnimatedArtworkForItem:(id)a3 withFormat:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  v7 = [NSString stringWithFormat:@"animatedArtwork-%@-%@", v6, v5];

  return v7;
}

- (void)_cacheArtworkData:(id)a3 forKey:(id)a4 forItem:(id)a5 withRequest:(id)a6
{
  v22 = a4;
  v10 = a6;
  artworkDataCache = self->_artworkDataCache;
  v12 = a5;
  v13 = a3;
  v14 = [(NSMutableDictionary *)artworkDataCache objectForKeyedSubscript:v22];
  if (!v14)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = self->_artworkDataCache;
    if (!v15)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = self->_artworkDataCache;
      self->_artworkDataCache = v16;

      v15 = self->_artworkDataCache;
    }

    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v22];
  }

  v18 = [v10 artworkCacheSize];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v21 = v20;

  [v14 setObject:v13 forKeyedSubscript:v21];
  [(MRDPlaybackQueueArtworkCache *)self _registerCacheKey:v22 forItem:v12];
}

- (void)_cacheAnimatedArtwork:(id)a3 forKey:(id)a4 forItem:(id)a5 withRequest:(id)a6
{
  v22 = a4;
  v10 = a6;
  animatedArtworkCache = self->_animatedArtworkCache;
  v12 = a5;
  v13 = a3;
  v14 = [(NSMutableDictionary *)animatedArtworkCache objectForKeyedSubscript:v22];
  if (!v14)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = self->_animatedArtworkCache;
    if (!v15)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = self->_animatedArtworkCache;
      self->_animatedArtworkCache = v16;

      v15 = self->_animatedArtworkCache;
    }

    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v22];
  }

  v18 = [v10 artworkCacheSize];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v21 = v20;

  [v14 setObject:v13 forKeyedSubscript:v21];
  [(MRDPlaybackQueueArtworkCache *)self _registerCacheKey:v22 forItem:v12];
}

- (void)_registerCacheKey:(id)a3 forItem:(id)a4
{
  v14 = a3;
  v6 = a4;
  cacheKeysForItemIdentifier = self->_cacheKeysForItemIdentifier;
  v8 = [v6 identifier];
  v9 = [(NSMutableDictionary *)cacheKeysForItemIdentifier objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_cacheKeysForItemIdentifier;
    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = self->_cacheKeysForItemIdentifier;
      self->_cacheKeysForItemIdentifier = v11;

      v10 = self->_cacheKeysForItemIdentifier;
    }

    v13 = [v6 identifier];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v13];
  }

  [v9 addObject:v14];
}

- (id)_fittedArtworkDataForCacheKey:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_artworkDataCache objectForKeyedSubscript:v6];
  v9 = [v8 allKeys];
  v10 = [v9 sortedArrayUsingComparator:&stru_1004BFE90];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v12)
  {
    v26 = 0;
    v14 = v11;
LABEL_18:

    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v38;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v37 + 1) + 8 * i);
      [v7 artworkWidth];
      v19 = v18;
      [v17 w];
      if (v19 <= v20 + 20.0)
      {
        [v7 artworkHeight];
        v22 = v21;
        [v17 h];
        if (v22 <= v23 + 20.0)
        {
          v24 = v17;

          v14 = v24;
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v13);

  if (v14)
  {
    v25 = [(NSMutableDictionary *)self->_artworkDataCache objectForKeyedSubscript:v6];
    v26 = [v25 objectForKeyedSubscript:v14];

    v27 = [v7 artworkCacheSize];
    v28 = [v14 isEqual:v27];

    if ((v28 & 1) == 0)
    {
      [v7 artworkWidth];
      v30 = v29;
      [v7 artworkHeight];
      v32 = [MRImageUtilities resizeImageData:v26 forFittingSize:0 error:v30, v31];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v26;
      }

      v35 = v34;

      v26 = v35;
    }

    goto LABEL_18;
  }

  v26 = 0;
LABEL_20:

  return v26;
}

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p> {\n", objc_opt_class(), self];
  v4 = [(NSMutableDictionary *)self->_artworkDataCache mr_formattedDebugDescription];
  [v3 appendFormat:@"      artworkDataCache = %@\n", v4];

  v5 = [(NSMutableDictionary *)self->_animatedArtworkCache mr_formattedDebugDescription];
  [v3 appendFormat:@"  animatedArtworkCache = %@\n", v5];

  [v3 appendFormat:@"}"];

  return v3;
}

@end