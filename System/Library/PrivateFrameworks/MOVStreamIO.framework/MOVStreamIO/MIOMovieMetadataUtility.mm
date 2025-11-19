@interface MIOMovieMetadataUtility
+ (BOOL)isTrack:(id)a3 forStreamId:(id)a4 mediaType:(id)a5;
+ (id)attachmentsTrackInAsset:(id)a3 forTrack:(id)a4;
+ (id)findAllAssociatedMetadataTracksInAsset:(id)a3 forTrack:(id)a4;
+ (id)findStreamIdFromQTTagsOfTrack:(id)a3;
- (BOOL)addMovieMetadataItem:(id)a3;
- (BOOL)applyChangesError:(id *)a3;
- (BOOL)setCustomTrackMetadataForStream:(id)a3 mediaType:(int64_t)a4 metadata:(id)a5 error:(id *)a6;
- (BOOL)setMovieMetadata:(id)a3;
- (MIOMovieMetadataUtility)initWithURL:(id)a3 error:(id *)a4;
- (id)customTrackMetadataForStream:(id)a3 mediaType:(int64_t)a4 error:(id *)a5;
- (id)metadataForMovie;
- (id)trackForStreamId:(id)a3 mediaType:(int64_t)a4 error:(id *)a5;
@end

@implementation MIOMovieMetadataUtility

+ (BOOL)isTrack:(id)a3 forStreamId:(id)a4 mediaType:(id)a5
{
  v23 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v8 = a5;
  v9 = [v7 mediaType];
  v10 = [v9 isEqualToString:v8];

  if (v10)
  {
    [v7 metadata];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v11 = v26 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [@"mdta/com.apple.track_kind" isEqualToString:v16];

          if (v17)
          {
            v21 = [v15 value];
            v20 = [v21 isEqualToString:v24];

            v19 = v11;
            goto LABEL_14;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = [objc_opt_class() findStreamIdFromQTTagsOfTrack:v7];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 isEqualToString:v24];
    }

    else
    {
      v20 = 0;
    }

LABEL_14:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)findAllAssociatedMetadataTracksInAsset:(id)a3 forTrack:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v5 tracksWithMediaType:*MEMORY[0x277CE5E70]];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    v11 = *MEMORY[0x277CE6198];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 associatedTracksOfType:{v11, v17}];
        if ([v14 containsObject:v6])
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v7 copy];

  return v15;
}

+ (id)attachmentsTrackInAsset:(id)a3 forTrack:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() findAllAssociatedMetadataTracksInAsset:v5 forTrack:v6];
  v8 = [@"mdta/com.apple.stream_sample_attachments" componentsSeparatedByString:@"/"];
  v9 = [v8 objectAtIndexedSubscript:1];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MOVStreamIOUtility getCustomAssociatedMetadataStreamIdFromTrack:v14];
        if ([v15 isEqualToString:v9])
        {
          v16 = v14;

          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

+ (id)findStreamIdFromQTTagsOfTrack:(id)a3
{
  v3 = [a3 metadataForFormat:*MEMORY[0x277CE5F48]];
  v4 = *MEMORY[0x277CE5FB0];
  v5 = [MEMORY[0x277CE6520] metadataItemsFromArray:v3 withKey:*MEMORY[0x277CE5FF0] keySpace:*MEMORY[0x277CE5FB0]];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stringValue];
  }

  else
  {
    v9 = [MEMORY[0x277CE6520] metadataItemsFromArray:v3 withKey:*MEMORY[0x277CE5FF8] keySpace:v4];
    v10 = [v9 firstObject];
    v7 = v10;
    if (v10)
    {
      v8 = [v10 stringValue];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MIOMovieMetadataUtility)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MIOMovieMetadataUtility;
  v7 = [(MIOMovieMetadataUtility *)&v11 init];
  if (!v7 || (v8 = [objc_alloc(MEMORY[0x277CE6560]) initWithURL:v6 options:0 error:a4], -[MIOMovieMetadataUtility setMovie:](v7, "setMovie:", v8), v8, -[MIOMovieMetadataUtility movie](v7, "movie"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v9 = v7;
  }

  return v9;
}

- (id)trackForStreamId:(id)a3 mediaType:(int64_t)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MIOMediaTypeUtility matchingAVMediaTypeFromMIOMediaType:a4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(MIOMovieMetadataUtility *)self movie];
  v11 = [v10 tracksWithMediaType:v9];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([objc_opt_class() isTrack:v15 forStreamId:v8 mediaType:v9])
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track for stream '%@'.", v8];
  [MEMORY[0x277CCA9B8] populateReaderError:a5 message:v11 code:7];
  v16 = 0;
LABEL_11:

  return v16;
}

- (id)customTrackMetadataForStream:(id)a3 mediaType:(int64_t)a4 error:(id *)a5
{
  v5 = [(MIOMovieMetadataUtility *)self trackForStreamId:a3 mediaType:a4 error:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 metadata];
    v8 = [MOVStreamIOUtility nonMIOTrackMetadataItemsInMetadataItems:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setCustomTrackMetadataForStream:(id)a3 mediaType:(int64_t)a4 metadata:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a5;
  v21 = [(MIOMovieMetadataUtility *)self trackForStreamId:a3 mediaType:a4 error:a6];
  if (v21)
  {
    v10 = objc_opt_new();
    [v21 metadata];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v11 = v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = +[MOVStreamIOUtility reservedMIOTrackMetadataKeys];
          v18 = [v17 containsObject:v16];

          if (v18)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    if ([v20 count])
    {
      [v10 addObjectsFromArray:v20];
    }

    [v21 setMetadata:v10];
  }

  return v21 != 0;
}

- (id)metadataForMovie
{
  v3 = objc_opt_new();
  v4 = [(MIOMovieMetadataUtility *)self movie];
  v5 = [v4 metadata];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MIOMovieMetadataUtility_metadataForMovie__block_invoke;
  v10[3] = &unk_279848398;
  v6 = v3;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

void __43__MIOMovieMetadataUtility_metadataForMovie__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = [MOVStreamIOUtility isMOVStreamIOMovMetadataIdentifier:v3];

  if (!v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (BOOL)setMovieMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MIOMovieMetadataUtility *)self movie];
  v7 = [v6 metadata];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__MIOMovieMetadataUtility_setMovieMetadata___block_invoke;
  v11[3] = &unk_279848398;
  v8 = v5;
  v12 = v8;
  [v7 enumerateObjectsUsingBlock:v11];

  if ([v4 count])
  {
    [v8 addObjectsFromArray:v4];
  }

  v9 = [(MIOMovieMetadataUtility *)self movie];
  [v9 setMetadata:v8];

  return 1;
}

void __44__MIOMovieMetadataUtility_setMovieMetadata___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = [MOVStreamIOUtility isMOVStreamIOMovMetadataIdentifier:v3];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (BOOL)addMovieMetadataItem:(id)a3
{
  v4 = a3;
  v5 = [(MIOMovieMetadataUtility *)self movie];
  v6 = [v5 metadata];
  v7 = [v6 mutableCopy];

  [v7 addObject:v4];
  v8 = [(MIOMovieMetadataUtility *)self movie];
  [v8 setMetadata:v7];

  return 1;
}

- (BOOL)applyChangesError:(id *)a3
{
  v5 = [(MIOMovieMetadataUtility *)self movie];
  v6 = [(MIOMovieMetadataUtility *)self movie];
  v7 = [v6 URL];
  LOBYTE(a3) = [v5 writeMovieHeaderToURL:v7 fileType:*MEMORY[0x277CE5DA8] options:0 error:a3];

  return a3;
}

@end