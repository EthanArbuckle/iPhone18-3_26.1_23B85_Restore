@interface MRDPlaybackQueueArtworkCache
- (id)_cacheKeyForAnimatedArtworkForItem:(id)item withFormat:(id)format;
- (id)_cacheKeyForAnimatedArtworkPreviewFrameForItem:(id)item withFormat:(id)format;
- (id)_cacheKeyForArtworkForItem:(id)item;
- (id)_fittedArtworkDataForCacheKey:(id)key withRequest:(id)request;
- (id)animatedArtworkForContentItem:(id)item forFormat:(id)format withRequest:(id)request;
- (id)debugDescription;
- (id)fittedAnimatedArtworkPreviewFrameDataForContentItem:(id)item forFormat:(id)format withRequest:(id)request;
- (id)fittedArtworkDataForContentItem:(id)item withRequest:(id)request;
- (void)_cacheAnimatedArtwork:(id)artwork forKey:(id)key forItem:(id)item withRequest:(id)request;
- (void)_cacheArtworkData:(id)data forKey:(id)key forItem:(id)item withRequest:(id)request;
- (void)_registerCacheKey:(id)key forItem:(id)item;
- (void)addArtworkFromItem:(id)item fromRequest:(id)request;
- (void)clearArtworkForItems:(id)items;
@end

@implementation MRDPlaybackQueueArtworkCache

- (void)addArtworkFromItem:(id)item fromRequest:(id)request
{
  itemCopy = item;
  requestCopy = request;
  artworks = [itemCopy artworks];
  v9 = [artworks objectForKeyedSubscript:MRContentItemArtworkFormatStandard];
  imageData = [v9 imageData];

  if (imageData || ([itemCopy artwork], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageData"), imageData = objc_claimAutoreleasedReturnValue(), v11, imageData))
  {
    v12 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForArtworkForItem:itemCopy];
    [(MRDPlaybackQueueArtworkCache *)self _cacheArtworkData:imageData forKey:v12 forItem:itemCopy withRequest:requestCopy];

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

  v31 = imageData;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [itemCopy animatedArtworkPreviewFrames];
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
        animatedArtworkPreviewFrames = [itemCopy animatedArtworkPreviewFrames];
        v19 = [animatedArtworkPreviewFrames objectForKeyedSubscript:v17];
        imageData2 = [v19 imageData];

        if (imageData2)
        {
          v21 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkPreviewFrameForItem:itemCopy withFormat:v17];
          [(MRDPlaybackQueueArtworkCache *)self _cacheArtworkData:imageData2 forKey:v21 forItem:itemCopy withRequest:requestCopy];

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
  animatedArtworks = [itemCopy animatedArtworks];
  v23 = [animatedArtworks countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(animatedArtworks);
        }

        v27 = *(*(&v34 + 1) + 8 * j);
        animatedArtworks2 = [itemCopy animatedArtworks];
        v29 = [animatedArtworks2 objectForKeyedSubscript:v27];

        v30 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkForItem:itemCopy withFormat:v27];
        [(MRDPlaybackQueueArtworkCache *)self _cacheAnimatedArtwork:v29 forKey:v30 forItem:itemCopy withRequest:requestCopy];
      }

      v24 = [animatedArtworks countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  imageData = v31;
  if (v33)
  {
    goto LABEL_22;
  }

LABEL_23:
}

- (id)fittedArtworkDataForContentItem:(id)item withRequest:(id)request
{
  requestCopy = request;
  v7 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForArtworkForItem:item];
  v8 = [(MRDPlaybackQueueArtworkCache *)self _fittedArtworkDataForCacheKey:v7 withRequest:requestCopy];

  return v8;
}

- (id)fittedAnimatedArtworkPreviewFrameDataForContentItem:(id)item forFormat:(id)format withRequest:(id)request
{
  requestCopy = request;
  v9 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkPreviewFrameForItem:item withFormat:format];
  v10 = [(MRDPlaybackQueueArtworkCache *)self _fittedArtworkDataForCacheKey:v9 withRequest:requestCopy];

  return v10;
}

- (id)animatedArtworkForContentItem:(id)item forFormat:(id)format withRequest:(id)request
{
  formatCopy = format;
  itemCopy = item;
  artworkCacheSize = [request artworkCacheSize];
  v11 = artworkCacheSize;
  if (artworkCacheSize)
  {
    v12 = artworkCacheSize;
  }

  else
  {
    v12 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v13 = v12;

  animatedArtworkCache = self->_animatedArtworkCache;
  v15 = [(MRDPlaybackQueueArtworkCache *)self _cacheKeyForAnimatedArtworkForItem:itemCopy withFormat:formatCopy];

  v16 = [(NSMutableDictionary *)animatedArtworkCache objectForKeyedSubscript:v15];
  v17 = [v16 objectForKeyedSubscript:v13];

  return v17;
}

- (void)clearArtworkForItems:(id)items
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = items;
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
        identifier = [v8 identifier];
        v11 = [(NSMutableDictionary *)cacheKeysForItemIdentifier objectForKeyedSubscript:identifier];

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
        identifier2 = [v8 identifier];
        [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:identifier2];
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }
}

- (id)_cacheKeyForArtworkForItem:(id)item
{
  identifier = [item identifier];
  v4 = [NSString stringWithFormat:@"artwork-%@", identifier];

  return v4;
}

- (id)_cacheKeyForAnimatedArtworkPreviewFrameForItem:(id)item withFormat:(id)format
{
  formatCopy = format;
  identifier = [item identifier];
  formatCopy = [NSString stringWithFormat:@"animatedArtworkPreviewFrame-%@-%@", identifier, formatCopy];

  return formatCopy;
}

- (id)_cacheKeyForAnimatedArtworkForItem:(id)item withFormat:(id)format
{
  formatCopy = format;
  identifier = [item identifier];
  formatCopy = [NSString stringWithFormat:@"animatedArtwork-%@-%@", identifier, formatCopy];

  return formatCopy;
}

- (void)_cacheArtworkData:(id)data forKey:(id)key forItem:(id)item withRequest:(id)request
{
  keyCopy = key;
  requestCopy = request;
  artworkDataCache = self->_artworkDataCache;
  itemCopy = item;
  dataCopy = data;
  v14 = [(NSMutableDictionary *)artworkDataCache objectForKeyedSubscript:keyCopy];
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

    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:keyCopy];
  }

  artworkCacheSize = [requestCopy artworkCacheSize];
  v19 = artworkCacheSize;
  if (artworkCacheSize)
  {
    v20 = artworkCacheSize;
  }

  else
  {
    v20 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v21 = v20;

  [v14 setObject:dataCopy forKeyedSubscript:v21];
  [(MRDPlaybackQueueArtworkCache *)self _registerCacheKey:keyCopy forItem:itemCopy];
}

- (void)_cacheAnimatedArtwork:(id)artwork forKey:(id)key forItem:(id)item withRequest:(id)request
{
  keyCopy = key;
  requestCopy = request;
  animatedArtworkCache = self->_animatedArtworkCache;
  itemCopy = item;
  artworkCopy = artwork;
  v14 = [(NSMutableDictionary *)animatedArtworkCache objectForKeyedSubscript:keyCopy];
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

    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:keyCopy];
  }

  artworkCacheSize = [requestCopy artworkCacheSize];
  v19 = artworkCacheSize;
  if (artworkCacheSize)
  {
    v20 = artworkCacheSize;
  }

  else
  {
    v20 = +[MRDPlaybackQueueArtworkCacheSize defaultSize];
  }

  v21 = v20;

  [v14 setObject:artworkCopy forKeyedSubscript:v21];
  [(MRDPlaybackQueueArtworkCache *)self _registerCacheKey:keyCopy forItem:itemCopy];
}

- (void)_registerCacheKey:(id)key forItem:(id)item
{
  keyCopy = key;
  itemCopy = item;
  cacheKeysForItemIdentifier = self->_cacheKeysForItemIdentifier;
  identifier = [itemCopy identifier];
  v9 = [(NSMutableDictionary *)cacheKeysForItemIdentifier objectForKeyedSubscript:identifier];

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

    identifier2 = [itemCopy identifier];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:identifier2];
  }

  [v9 addObject:keyCopy];
}

- (id)_fittedArtworkDataForCacheKey:(id)key withRequest:(id)request
{
  keyCopy = key;
  requestCopy = request;
  v8 = [(NSMutableDictionary *)self->_artworkDataCache objectForKeyedSubscript:keyCopy];
  allKeys = [v8 allKeys];
  v10 = [allKeys sortedArrayUsingComparator:&stru_1004BFE90];

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
      [requestCopy artworkWidth];
      v19 = v18;
      [v17 w];
      if (v19 <= v20 + 20.0)
      {
        [requestCopy artworkHeight];
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
    v25 = [(NSMutableDictionary *)self->_artworkDataCache objectForKeyedSubscript:keyCopy];
    v26 = [v25 objectForKeyedSubscript:v14];

    artworkCacheSize = [requestCopy artworkCacheSize];
    v28 = [v14 isEqual:artworkCacheSize];

    if ((v28 & 1) == 0)
    {
      [requestCopy artworkWidth];
      v30 = v29;
      [requestCopy artworkHeight];
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
  mr_formattedDebugDescription = [(NSMutableDictionary *)self->_artworkDataCache mr_formattedDebugDescription];
  [v3 appendFormat:@"      artworkDataCache = %@\n", mr_formattedDebugDescription];

  mr_formattedDebugDescription2 = [(NSMutableDictionary *)self->_animatedArtworkCache mr_formattedDebugDescription];
  [v3 appendFormat:@"  animatedArtworkCache = %@\n", mr_formattedDebugDescription2];

  [v3 appendFormat:@"}"];

  return v3;
}

@end