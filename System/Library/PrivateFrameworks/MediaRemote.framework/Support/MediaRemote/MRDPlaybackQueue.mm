@interface MRDPlaybackQueue
- (MRDPlaybackQueue)initWithPlaybackQueue:(id)a3;
- (id)createPlaybackQueueForRequest:(id)a3 cachingPolicy:(unsigned int)a4 playerPath:(id)a5 partiallyCachedItems:(id *)a6 capabilities:(unint64_t)a7;
- (id)debugDescription;
- (void)clearArtwork;
- (void)clearArtworkForContentItems:(id)a3;
- (void)updatePlaybackQueueWithContentItems:(id)a3 fromRequest:(id)a4;
@end

@implementation MRDPlaybackQueue

- (MRDPlaybackQueue)initWithPlaybackQueue:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = MRDPlaybackQueue;
  v6 = [(MRDPlaybackQueue *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackQueue, a3);
    v8 = objc_alloc_init(MRDPlaybackQueueArtworkCache);
    artworkCache = v7->_artworkCache;
    v7->_artworkCache = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(MRPlaybackQueue *)v7->_playbackQueue contentItems];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v10);
          }

          [(MRDPlaybackQueueArtworkCache *)v7->_artworkCache addArtworkFromItem:*(*(&v16 + 1) + 8 * v14) fromRequest:0];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = [(MRPlaybackQueue *)self->_playbackQueue mr_formattedDebugDescription];
  [v3 appendFormat:@"  playbackQueue = %@\n", v4];

  v5 = [(MRDPlaybackQueueArtworkCache *)self->_artworkCache mr_formattedDebugDescription];
  [v3 appendFormat:@"  artworkCache = %@\n", v5];

  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)updatePlaybackQueueWithContentItems:(id)a3 fromRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        playbackQueue = self->_playbackQueue;
        v14 = [v12 identifier];
        v15 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:v14];

        if (v15)
        {
          [(MRDPlaybackQueueArtworkCache *)self->_artworkCache addArtworkFromItem:v12 fromRequest:v7];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = [MRPlaybackQueue alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100177E00;
  v20[3] = &unk_1004BFE50;
  v21 = v7;
  v17 = v7;
  v18 = [v6 msv_map:v20];
  v19 = [v16 initWithContentItems:v18];

  [(MRPlaybackQueue *)self->_playbackQueue mergeFrom:v19];
}

- (void)clearArtworkForContentItems:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        playbackQueue = self->_playbackQueue;
        v10 = [*(*(&v15 + 1) + 8 * v8) identifier];
        v11 = [(MRPlaybackQueue *)playbackQueue contentItemForIdentifier:v10];

        if (v11)
        {
          v12 = [v11 metadata];
          [v12 setArtworkURLTemplates:0];

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
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

- (id)createPlaybackQueueForRequest:(id)a3 cachingPolicy:(unsigned int)a4 playerPath:(id)a5 partiallyCachedItems:(id *)a6 capabilities:(unint64_t)a7
{
  v11 = a3;
  v12 = a5;
  v13 = [v11 requestByRemovingArtwork];
  v70 = self;
  playbackQueue = self->_playbackQueue;
  v15 = MRPlaybackQueueCreateFromCache();
  if (v15)
  {
    if ([v11 includeArtwork])
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = [(MRPlaybackQueue *)v70->_playbackQueue contentItems];
      v63 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (v63)
      {
        v64 = 0;
        v65 = v15;
        v66 = *v80;
        v61 = a6;
        v62 = MRContentItemArtworkFormatStandard;
        v58 = a4;
        v59 = v13;
        v60 = v12;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v80 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v79 + 1) + 8 * v16);
          v18 = [v17 identifier];
          v69 = [v15 contentItemForIdentifier:v18];

          v19 = [v17 metadata];
          if ([v19 hasArtworkAvailable])
          {
            goto LABEL_11;
          }

          v20 = [v17 availableArtworkFormats];
          if ([v20 count])
          {
            break;
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {

            goto LABEL_55;
          }

          v52 = [v17 availableAnimatedArtworkFormats];
          v53 = [v52 count];

          if (!v53)
          {
            a6 = v61;
            goto LABEL_45;
          }

LABEL_12:
          v67 = v16;
          if (_os_feature_enabled_impl() && ([v11 requestedAnimatedArtworkPreviewFrameFormats], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22))
          {
            v19 = objc_alloc_init(NSMutableDictionary);
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v23 = [v11 requestedAnimatedArtworkPreviewFrameFormats];
            v24 = [v23 countByEnumeratingWithState:&v75 objects:v87 count:16];
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
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v75 + 1) + 8 * i);
                  v29 = [(MRDPlaybackQueueArtworkCache *)v70->_artworkCache fittedAnimatedArtworkPreviewFrameDataForContentItem:v17 forFormat:v28 withRequest:v11];
                  v30 = [[MRDataArtwork alloc] initWithImageData:v29];
                  if (!v30)
                  {

                    goto LABEL_67;
                  }

                  v31 = v30;
                  [v19 setObject:v30 forKeyedSubscript:v28];
                }

                v25 = [v23 countByEnumeratingWithState:&v75 objects:v87 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

            [v69 setAnimatedArtworkPreviewFrames:v19];
            v32 = 1;
            v13 = v59;
            v12 = v60;
          }

          else
          {
            v32 = 0;
          }

          if (_os_feature_enabled_impl() && ([v11 requestedAnimatedArtworkAssetURLFormats], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v34))
          {
            v19 = objc_alloc_init(NSMutableDictionary);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v23 = [v11 requestedAnimatedArtworkAssetURLFormats];
            v35 = [v23 countByEnumeratingWithState:&v71 objects:v86 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v39 = *(*(&v71 + 1) + 8 * v38);
                v40 = [(MRDPlaybackQueueArtworkCache *)v70->_artworkCache animatedArtworkForContentItem:v17 forFormat:v39 withRequest:v11];
                if (!v40)
                {
                  break;
                }

                v41 = v40;
                [v19 setObject:v40 forKeyedSubscript:v39];

                if (v36 == ++v38)
                {
                  v36 = [v23 countByEnumeratingWithState:&v71 objects:v86 count:16];
                  if (v36)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

LABEL_67:

              v13 = v59;
              v12 = v60;
LABEL_68:

LABEL_69:
              v56 = 0;
              v15 = v65;
              goto LABEL_70;
            }

LABEL_34:

            [v69 setAnimatedArtworks:v19];
            v42 = 1;
            v13 = v59;
            v12 = v60;
          }

          else
          {
            v42 = 0;
          }

          v43 = [v11 requestedArtworkFormats];
          v44 = [v43 count];

          if (v44)
          {
            v45 = [v11 requestedArtworkFormats];
            v85 = v62;
            v46 = [NSArray arrayWithObjects:&v85 count:1];
            v47 = [v45 isEqualToArray:v46];

            if (!v47)
            {
              goto LABEL_69;
            }

            v19 = [(MRDPlaybackQueueArtworkCache *)v70->_artworkCache fittedArtworkDataForContentItem:v17 withRequest:v11];
            v48 = [[MRDataArtwork alloc] initWithImageData:v19];
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
            a6 = v61;
            v16 = v67;
            goto LABEL_56;
          }

          if (((v32 | v42) & 1) == 0)
          {
            v19 = [(MRDPlaybackQueueArtworkCache *)v70->_artworkCache fittedArtworkDataForContentItem:v17 withRequest:v11];
            v15 = v65;
            v16 = v67;
            if (v19)
            {
              v54 = [[MRArtwork alloc] initWithImageData:v19 height:0 width:0];
              v51 = v69;
              [v69 setArtwork:v54];

              a6 = v61;
LABEL_56:

              goto LABEL_57;
            }

            if (v58 != 2)
            {
              goto LABEL_69;
            }

            a6 = v61;
            if (v61)
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
          a6 = v61;
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

      if (a6)
      {
        *a6 = v64;
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