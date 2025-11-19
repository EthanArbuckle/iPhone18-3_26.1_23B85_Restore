@interface NSArray(PHAssetResource)
- (float)vcp_getFpsRate;
- (id)mad_computeSyncResource;
- (id)vcp_adjustmentsResource;
- (id)vcp_avAsset:()PHAssetResource;
- (id)vcp_highResImageResourcesForAsset:()PHAssetResource;
- (id)vcp_localMovieResourcesSorted:()PHAssetResource;
- (id)vcp_localPhotoResourcesSorted:()PHAssetResource;
- (id)vcp_movieResourcesSorted:()PHAssetResource;
- (id)vcp_originalResource;
- (id)vcp_originalVideoResource;
- (id)vcp_photoResourcesSorted:()PHAssetResource;
- (id)vcp_resourceWithType:()PHAssetResource;
- (id)vcp_smallResourceMeetingCriteria:()PHAssetResource;
- (uint64_t)vcp_hasLocalAdjustments;
- (uint64_t)vcp_hasLocalMovie:()PHAssetResource;
- (uint64_t)vcp_hasLocalPhoto:()PHAssetResource;
- (uint64_t)vcp_hasLocalSlowmo:()PHAssetResource;
- (uint64_t)vcp_isOriginalLocal;
@end

@implementation NSArray(PHAssetResource)

- (id)vcp_resourceWithType:()PHAssetResource
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 type] == a3)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (uint64_t)vcp_isOriginalLocal
{
  v1 = [a1 vcp_originalResource];
  v2 = [v1 vcp_isLocallyAvailable];

  return v2;
}

- (uint64_t)vcp_hasLocalPhoto:()PHAssetResource
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 vcp_isDecodable] && objc_msgSend(v8, "vcp_isPhotoResourceUsable:", a3) && (objc_msgSend(v8, "vcp_isLocallyAvailable") & 1) != 0)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (uint64_t)vcp_hasLocalMovie:()PHAssetResource
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 vcp_isMovie] && objc_msgSend(v8, "vcp_isVideoResourceUsable:", a3) && (objc_msgSend(v8, "vcp_isLocallyAvailable") & 1) != 0)
        {
          v9 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (uint64_t)vcp_hasLocalAdjustments
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 type] == 7)
        {
          v2 = [v5 vcp_isLocallyAvailable];
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)vcp_hasLocalSlowmo:()PHAssetResource
{
  if (a3 & 1) == 0 && ([a1 vcp_isOriginalLocal])
  {
    return 1;
  }

  result = [a1 vcp_hasLocalMovie:a3];
  if (result)
  {

    return [a1 vcp_hasLocalAdjustments];
  }

  return result;
}

- (id)vcp_smallResourceMeetingCriteria:()PHAssetResource
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = a1;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (v4[2](v4, v10))
        {
          if (!v6 || ([v10 vcp_size], v12 = v11, v14 = v13, objc_msgSend(v6, "vcp_size"), v12 * v14 < v15 * v16))
          {
            v17 = v10;

            v6 = v17;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)vcp_originalResource
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 type] == 2 || objc_msgSend(v5, "type") == 1)
        {
          v6 = v5;
          goto LABEL_13;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v6 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (id)vcp_originalVideoResource
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 type] == 2 || objc_msgSend(v5, "type") == 9)
        {
          v6 = v5;
          goto LABEL_13;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v6 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (id)vcp_adjustmentsResource
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 type] == 7)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (id)mad_computeSyncResource
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 type] == 112)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (id)vcp_localPhotoResourcesSorted:()PHAssetResource
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 vcp_isPhoto] && objc_msgSend(v10, "vcp_isPhotoResourceUsable:", a3) && objc_msgSend(v10, "vcp_isLocallyAvailable"))
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 vcp_sortBySize];

  return v5;
}

- (id)vcp_photoResourcesSorted:()PHAssetResource
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 vcp_isPhoto] && objc_msgSend(v10, "vcp_isPhotoResourceUsable:", a3))
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 vcp_sortBySize];

  return v5;
}

- (id)vcp_localMovieResourcesSorted:()PHAssetResource
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 vcp_isMovie] && objc_msgSend(v10, "vcp_isVideoResourceUsable:", a3) && objc_msgSend(v10, "vcp_isLocallyAvailable"))
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 vcp_sortBySize];

  return v5;
}

- (id)vcp_movieResourcesSorted:()PHAssetResource
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 vcp_isMovie] && objc_msgSend(v10, "vcp_isVideoResourceUsable:", a3))
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 vcp_sortBySize];

  return v5;
}

- (id)vcp_avAsset:()PHAssetResource
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [a1 vcp_localMovieResourcesSorted:?];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v9 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = [*(*(&v8 + 1) + 8 * v5) vcp_avAsset];
      if (v6)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (float)vcp_getFpsRate
{
  v2 = 1.0;
  if ([a1 vcp_hasLocalAdjustments])
  {
    v3 = [a1 vcp_adjustmentsResource];
    v4 = [v3 privateFileURL];

    v5 = [objc_alloc(MEMORY[0x1E69C0908]) initWithURL:v4];
    v6 = v5;
    if (v5 && ([v5 hasSlowMotionAdjustments] & 1) != 0)
    {
      [v6 slowMotionRate];
      v2 = v7;
    }
  }

  return v2;
}

- (id)vcp_highResImageResourcesForAsset:()PHAssetResource
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasAdjustments])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [v4 photoLibrary];
    v5 = [v6 vcp_isSyndicationLibrary] ^ 1;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 vcp_isPhoto] & 1) != 0 && objc_msgSend(v12, "type") != 13 && objc_msgSend(v12, "type") != 8 && (objc_msgSend(v12, "type") != 1) | v5 & 1 && (objc_msgSend(v12, "analysisType") == 2 || objc_msgSend(v12, "analysisType") == 1))
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E69786D0] vcp_ascendingSizeComparator];
  [v7 sortUsingComparator:v13];

  return v7;
}

@end