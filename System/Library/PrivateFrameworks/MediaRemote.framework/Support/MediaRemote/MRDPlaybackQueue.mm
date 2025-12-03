@interface MRDPlaybackQueue
- (MRDPlaybackQueue)initWithPlaybackQueue:(id)queue;
- (id)createPlaybackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items capabilities:(unint64_t)capabilities;
- (id)debugDescription;
- (void)clearArtwork;
- (void)clearArtworkForContentItems:(id)items;
- (void)updatePlaybackQueueWithContentItems:(id)items fromRequest:(id)request;
@end

@implementation MRDPlaybackQueue

- (MRDPlaybackQueue)initWithPlaybackQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = MRDPlaybackQueue;
  v6 = [(MRDPlaybackQueue *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackQueue, queue);
    v8 = objc_alloc_init(MRDPlaybackQueueArtworkCache);
    artworkCache = v7->_artworkCache;
    v7->_artworkCache = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contentItems = [(MRPlaybackQueue *)v7->_playbackQueue contentItems];
    v11 = [contentItems countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(contentItems);
          }

          [(MRDPlaybackQueueArtworkCache *)v7->_artworkCache addArtworkFromItem:*(*(&v16 + 1) + 8 * v14) fromRequest:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [contentItems countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  mr_formattedDebugDescription = [(MRPlaybackQueue *)self->_playbackQueue mr_formattedDebugDescription];
  [v3 appendFormat:@"  playbackQueue = %@\n", mr_formattedDebugDescription];

  mr_formattedDebugDescription2 = [(MRDPlaybackQueueArtworkCache *)self->_artworkCache mr_formattedDebugDescription];
  [v3 appendFormat:@"  artworkCache = %@\n", mr_formattedDebugDescription2];

  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)updatePlaybackQueueWithContentItems:(id)items fromRequest:(id)request
{
  itemsCopy = items;
  requestCopy = request;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        playbackQueue = self->_playbackQueue;
        identifier = [v12 identifier];
        v15 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:identifier];

        if (v15)
        {
          [(MRDPlaybackQueueArtworkCache *)self->_artworkCache addArtworkFromItem:v12 fromRequest:requestCopy];
        }
      }

      v9 = [itemsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = [MRPlaybackQueue alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100177E00;
  v20[3] = &unk_1004BFE50;
  v21 = requestCopy;
  v17 = requestCopy;
  v18 = [itemsCopy msv_map:v20];
  v19 = [v16 initWithContentItems:v18];

  [(MRPlaybackQueue *)self->_playbackQueue mergeFrom:v19];
}

- (void)clearArtworkForContentItems:(id)items
{
  itemsCopy = items;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        playbackQueue = self->_playbackQueue;
        identifier = [*(*(&v15 + 1) + 8 * v8) identifier];
        v11 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:identifier];

        if (v11)
        {
          metadata = [v11 metadata];
          [metadata setArtworkURLTemplates:0];

          [v11 setArtwork:0];
          [v11 setArtworks:0];
          [v11 setRemoteArtworks:0];
          [v11 setAnimatedArtworks:0];
          artworkCache = self->_artworkCache;
          v19 = v11;
          v14 = [NSArray arrayWithObjects:&v19 count:1];
          [(MRDPlaybackQueueArtworkCache *)artworkCache clearArtworkForItems:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)clearArtwork
{
  v3 = objc_alloc_init(MRDPlaybackQueueArtworkCache);
  artworkCache = self->_artworkCache;
  self->_artworkCache = v3;
}

- (id)createPlaybackQueueForRequest:(id)request cachingPolicy:(unsigned int)policy playerPath:(id)path partiallyCachedItems:(id *)items capabilities:(unint64_t)capabilities
{
  requestCopy = request;
  pathCopy = path;
  requestByRemovingArtwork = [requestCopy requestByRemovingArtwork];
  selfCopy = self;
  playbackQueue = self->_playbackQueue;
  v15 = MRPlaybackQueueCreateFromCache();
  if (v15)
  {
    if ([requestCopy includeArtwork])
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = [(MRPlaybackQueue *)selfCopy->_playbackQueue contentItems];
      v63 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v63)
      {
        v64 = 0;
        v65 = v15;
        v66 = *v80;
        itemsCopy = items;
        v62 = MRContentItemArtworkFormatStandard;
        policyCopy = policy;
        v59 = requestByRemovingArtwork;
        v60 = pathCopy;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v80 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v79 + 1) + 8 * v16);
          identifier = [v17 identifier];
          v69 = [v15 contentItemForIdentifier:identifier];

          metadata = [v17 metadata];
          if ([metadata hasArtworkAvailable])
          {
            goto LABEL_11;
          }

          availableArtworkFormats = [v17 availableArtworkFormats];
          if ([availableArtworkFormats count])
          {
            break;
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {

            goto LABEL_55;
          }

          availableAnimatedArtworkFormats = [v17 availableAnimatedArtworkFormats];
          v53 = [availableAnimatedArtworkFormats count];

          if (!v53)
          {
            items = itemsCopy;
            goto LABEL_45;
          }

LABEL_12:
          v67 = v16;
          if (_os_feature_enabled_impl() && ([requestCopy requestedAnimatedArtworkPreviewFrameFormats], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22))
          {
            metadata = objc_alloc_init(NSMutableDictionary);
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            requestedAnimatedArtworkPreviewFrameFormats = [requestCopy requestedAnimatedArtworkPreviewFrameFormats];
            v24 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v75 objects:v87 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v76;
              while (2)
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v76 != v26)
                  {
                    objc_enumerationMutation(requestedAnimatedArtworkPreviewFrameFormats);
                  }

                  v28 = *(*(&v75 + 1) + 8 * i);
                  v29 = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedAnimatedArtworkPreviewFrameDataForContentItem:v17 forFormat:v28 withRequest:requestCopy];
                  v30 = [[MRDataArtwork alloc] initWithImageData:v29];
                  if (!v30)
                  {

                    goto LABEL_67;
                  }

                  v31 = v30;
                  [metadata setObject:v30 forKeyedSubscript:v28];
                }

                v25 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v75 objects:v87 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

            [v69 setAnimatedArtworkPreviewFrames:metadata];
            v32 = 1;
            requestByRemovingArtwork = v59;
            pathCopy = v60;
          }

          else
          {
            v32 = 0;
          }

          if (_os_feature_enabled_impl() && ([requestCopy requestedAnimatedArtworkAssetURLFormats], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v34))
          {
            metadata = objc_alloc_init(NSMutableDictionary);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            requestedAnimatedArtworkPreviewFrameFormats = [requestCopy requestedAnimatedArtworkAssetURLFormats];
            v35 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v71 objects:v86 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v72;
LABEL_28:
              v38 = 0;
              while (1)
              {
                if (*v72 != v37)
                {
                  objc_enumerationMutation(requestedAnimatedArtworkPreviewFrameFormats);
                }

                v39 = *(*(&v71 + 1) + 8 * v38);
                v40 = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache animatedArtworkForContentItem:v17 forFormat:v39 withRequest:requestCopy];
                if (!v40)
                {
                  break;
                }

                v41 = v40;
                [metadata setObject:v40 forKeyedSubscript:v39];

                if (v36 == ++v38)
                {
                  v36 = [requestedAnimatedArtworkPreviewFrameFormats countByEnumeratingWithState:&v71 objects:v86 count:16];
                  if (v36)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

LABEL_67:

              requestByRemovingArtwork = v59;
              pathCopy = v60;
LABEL_68:

LABEL_69:
              v56 = 0;
              v15 = v65;
              goto LABEL_70;
            }

LABEL_34:

            [v69 setAnimatedArtworks:metadata];
            v42 = 1;
            requestByRemovingArtwork = v59;
            pathCopy = v60;
          }

          else
          {
            v42 = 0;
          }

          requestedArtworkFormats = [requestCopy requestedArtworkFormats];
          v44 = [requestedArtworkFormats count];

          if (v44)
          {
            requestedArtworkFormats2 = [requestCopy requestedArtworkFormats];
            v85 = v62;
            v46 = [NSArray arrayWithObjects:&v85 count:1];
            v47 = [requestedArtworkFormats2 isEqualToArray:v46];

            if (!v47)
            {
              goto LABEL_69;
            }

            metadata = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedArtworkDataForContentItem:v17 withRequest:requestCopy];
            v48 = [[MRDataArtwork alloc] initWithImageData:metadata];
            if (!v48)
            {
              goto LABEL_68;
            }

            v49 = v48;
            v83 = v62;
            v84 = v48;
            v50 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            v51 = v69;
            [v69 setArtworks:v50];

            v15 = v65;
            items = itemsCopy;
            v16 = v67;
            goto LABEL_56;
          }

          if (((v32 | v42) & 1) == 0)
          {
            metadata = [(MRDPlaybackQueueArtworkCache *)selfCopy->_artworkCache fittedArtworkDataForContentItem:v17 withRequest:requestCopy];
            v15 = v65;
            v16 = v67;
            if (metadata)
            {
              v54 = [[MRArtwork alloc] initWithImageData:metadata height:0 width:0];
              v51 = v69;
              [v69 setArtwork:v54];

              items = itemsCopy;
LABEL_56:

              goto LABEL_57;
            }

            if (policyCopy != 2)
            {
              goto LABEL_69;
            }

            items = itemsCopy;
            if (itemsCopy)
            {
              v55 = v64;
              if (!v64)
              {
                v55 = objc_alloc_init(NSMutableArray);
              }
            }

            else
            {
              v55 = v64;
            }

            v64 = v55;
            [v55 addObject:v17];
            v15 = v65;
LABEL_55:
            v51 = v69;
            goto LABEL_56;
          }

          v15 = v65;
          items = itemsCopy;
          v16 = v67;
LABEL_45:
          v51 = v69;
LABEL_57:

          if (++v16 == v63)
          {
            v63 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
            if (v63)
            {
              goto LABEL_5;
            }

            goto LABEL_63;
          }
        }

LABEL_11:
        goto LABEL_12;
      }

      v64 = 0;
LABEL_63:

      if (items)
      {
        *items = v64;
      }

      v56 = v15;
LABEL_70:
    }

    else
    {
      v56 = v15;
    }
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

@end