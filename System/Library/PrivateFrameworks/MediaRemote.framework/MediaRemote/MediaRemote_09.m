uint64_t MRContentItemGetIsSharable(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isSharable];

  return v2;
}

void MRContentItemSetIsSharable(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isSharable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setSharable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasSharable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsLiked(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isLiked];

  return v2;
}

void MRContentItemSetIsLiked(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isLiked] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setLiked:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasLiked];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsInWishList(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isInWishList];

  return v2;
}

void MRContentItemSetIsInWishList(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isInWishList] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setInWishList:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasInWishList];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsAlwaysLive(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isAlwaysLive];

  return v2;
}

void MRContentItemSetIsAlwaysLive(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isAlwaysLive] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setAlwaysLive:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasAlwaysLive];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetLocalizedDurationString(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 localizedDurationString];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetLocalizedDurationString(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetLocalizedDurationString_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetLocalizedDurationString_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetLocalizedDurationString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 localizedDurationString];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 localizedDurationString];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setLocalizedDurationString:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetDurationStringLocalizationKey(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 durationStringLocalizationKey];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetDurationStringLocalizationKey(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetDurationStringLocalizationKey_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetDurationStringLocalizationKey_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetDurationStringLocalizationKey_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 durationStringLocalizationKey];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 durationStringLocalizationKey];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setDurationStringLocalizationKey:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetIsExplicitItem(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isExplicitItem];

  return v2;
}

void MRContentItemSetExplicitItem(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isExplicitItem] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setExplicitItem:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasExplicitItem];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsLoading(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isLoading];

  return v2;
}

void MRContentItemSetIsLoading(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isLoading] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setLoading:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasLoading];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsInTransition(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isInTransition];

  return v2;
}

void MRContentItemSetIsInTransition(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isInTransition] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setInTransition:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasInTransition];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetEditingStyleFlags(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 editingStyleFlags];

  return v2;
}

void MRContentItemSetEditingStyleFlags(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 editingStyleFlags] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasEditingStyleFlags];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setEditingStyleFlags:a2];

LABEL_8:
}

uint64_t MRContentItemGetPlaylistType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 playlistType];

  return v2;
}

void MRContentItemSetPlaylistType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 playlistType] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasPlaylistType];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setPlaylistType:a2];

LABEL_8:
}

uint64_t MRContentItemGetRadioStationType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 radioStationType];

  return v2;
}

void MRContentItemSetRadioStationType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 radioStationType] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasRadioStationType];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setRadioStationType:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetAssetURL(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 assetURL];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetAssetURL(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetAssetURL_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetAssetURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 assetURL];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 assetURL];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setAssetURL:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetArtworkData(void *a1)
{
  v1 = [a1 artwork];
  v2 = [v1 imageData];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetArtworkData(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = objc_alloc_init(MRArtwork);
  [(MRArtwork *)v3 setImageData:a2];
  [v4 setArtwork:v3];
  if (!a2)
  {
    MRContentItemSetArtworkDataSize(v4, 0, 0);
  }
}

void MRContentItemSetArtworkDataSize(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 artwork];
  [v6 setWidth:a2];

  v7 = [a1 artwork];
  [v7 setHeight:a3];
}

uint64_t MRContentItemGetHasArtworkData(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 artworkAvailable];

  return v2;
}

void MRContentItemSetHasArtworkData(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 artworkAvailable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setArtworkAvailable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasArtworkAvailable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetArtworkIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 artworkIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetArtworkIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetArtworkIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetArtworkIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetArtworkIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 artworkIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 artworkIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setArtworkIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetArtworkMIMEType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 artworkMIMEType];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetArtworkMIMEType(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetArtworkMIMEType_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetArtworkMIMEType_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetArtworkMIMEType_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 artworkMIMEType];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 artworkMIMEType];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setArtworkMIMEType:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetArtworkDataWidth(void *a1)
{
  v1 = [a1 artwork];
  v2 = [v1 width];

  return v2;
}

uint64_t MRContentItemGetArtworkDataHeight(void *a1)
{
  v1 = [a1 artwork];
  v2 = [v1 height];

  return v2;
}

CFTypeRef MRContentItemGetInfo(void *a1)
{
  result = [a1 info];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

uint64_t MRContentItemGetHasInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 infoAvailable];

  return v2;
}

void MRContentItemSetHasInfo(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 infoAvailable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setInfoAvailable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasInfoAvailable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetTranscriptAlignments(void *a1)
{
  result = [a1 transcriptAlignments];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void MRContentItemSetTranscriptAlignments(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  [v3 setTranscriptAlignments:v4];
}

uint64_t MRContentItemGetHasTranscriptAlignments(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 transcriptAlignmentsAvailable];

  return v2;
}

void MRContentItemSetHasTranscriptAlignments(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 transcriptAlignmentsAvailable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setTranscriptAlignmentsAvailable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasTranscriptAlignmentsAvailable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetAvailableLanguageOptions(void *a1)
{
  result = [a1 availableLanguageOptions];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void MRContentItemSetAvailableLanguageOptions(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 firstObject];
    if (v6 && (v7 = v6, [v5 firstObject], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) != 0))
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "MRContentItemSetAvailableLanguageOptions: Expecting a CFArrayRef of MRLanguageOptionGroupRefs but instead found a CFArrayRef of CFDataRef. Please fix.", buf, 2u);
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

            v17 = MRLanguageOptionGroupCreateFromExternalRepresentation(*(*(&v20 + 1) + 8 * v16));
            if (v17)
            {
              [v11 addObject:{v17, v20}];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = [v11 mutableCopy];
  [v3 setAvailableLanguageOptions:v18];

  v19 = *MEMORY[0x1E69E9840];
}

CFTypeRef MRContentItemGetCurrentLanguageOptions(void *a1)
{
  result = [a1 currentLanguageOptions];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void MRContentItemSetCurrentLanguageOptions(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 firstObject];
  if (v5 && (v6 = v5, [v4 firstObject], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "MRContentItemSetCurrentLanguageOptions: Expecting a CFArrayRef of MRLanguageOptionRefs but instead found a CFArrayRef of CFDataRef. Please fix.", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = MRLanguageOptionCreateFromExternalRepresentation(*(*(&v19 + 1) + 8 * v15));
          if (v16)
          {
            [v10 addObject:{v16, v19}];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = v4;
  }

  v17 = [v10 mutableCopy];
  [v3 setCurrentLanguageOptions:v17];

  v18 = *MEMORY[0x1E69E9840];
}

void MRContentItemSetHasLanguageOptions(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 languageOptionsAvailable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setLanguageOptionsAvailable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasLanguageOptionsAvailable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetSections(void *a1)
{
  result = [a1 sections];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void MRContentItemSetSections(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 mutableCopy];
  [v3 setSections:v4];
}

uint64_t MRContentItemGetNumberOfSections(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 numberOfSections];

  return v2;
}

void MRContentItemSetNumberOfSections(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 numberOfSections] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasNumberOfSections];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setNumberOfSections:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetArtworkURL(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 artworkURL];
  v3 = [v2 absoluteString];

  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

CFTypeRef MRContentItemGetArtworkURLTemplates(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 artworkURLTemplates];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetArtworkURLTemplates(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetArtworkURLTemplates_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetArtworkURLTemplates_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 artworkURLTemplates];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 artworkURLTemplates];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setArtworkURLTemplates:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetArtworkURL(void *a1, const __CFString *a2)
{
  v3 = CFURLCreateWithString(*MEMORY[0x1E695E480], a2, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetArtworkURL_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = v3;
  MRContentItemSetMetadataRef(a1, v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL __MRContentItemSetArtworkURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 artworkURL];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 artworkURL];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setArtworkURL:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetLyricsURL(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 lyricsURL];
  v3 = [v2 absoluteString];

  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

void MRContentItemSetLyricsURL(void *a1, const __CFString *a2)
{
  v3 = CFURLCreateWithString(*MEMORY[0x1E695E480], a2, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetLyricsURL_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = v3;
  MRContentItemSetMetadataRef(a1, v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL __MRContentItemSetLyricsURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 lyricsURL];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 lyricsURL];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setLyricsURL:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetHasLyrics(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 lyricsAvailable];

  return v2;
}

void MRContentItemSetHasLyrics(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 lyricsAvailable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setLyricsAvailable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasLyricsAvailable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

CFTypeRef MRContentItemGetRadioStationName(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 radioStationName];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetRadioStationName(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetRadioStationName_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetRadioStationName_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetRadioStationName_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 radioStationName];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 radioStationName];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setRadioStationName:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetRadioStationString(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 radioStationString];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetRadioStationString(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetRadioStationString_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetRadioStationString_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetRadioStationString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 radioStationString];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 radioStationString];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setRadioStationString:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetRadioStationIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 radioStationIdentifier];

  return v2;
}

void MRContentItemSetRadioStationIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 radioStationIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasRadioStationIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setRadioStationIdentifier:a2];

LABEL_8:
}

void MRContentItemSetITunesStoreIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 iTunesStoreIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasITunesStoreIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setITunesStoreIdentifier:a2];

LABEL_8:
}

uint64_t MRContentItemGetITunesStoreSubscriptionIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 iTunesStoreSubscriptionIdentifier];

  return v2;
}

void MRContentItemSetITunesStoreSubscriptionIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 iTunesStoreSubscriptionIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasITunesStoreSubscriptionIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setITunesStoreSubscriptionIdentifier:a2];

LABEL_8:
}

uint64_t MRContentItemGetITunesStoreArtistIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 iTunesStoreArtistIdentifier];

  return v2;
}

void MRContentItemSetITunesStoreArtistIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 iTunesStoreArtistIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasITunesStoreArtistIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setITunesStoreArtistIdentifier:a2];

LABEL_8:
}

uint64_t MRContentItemGetITunesStoreAlbumIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 iTunesStoreAlbumIdentifier];

  return v2;
}

void MRContentItemSetITunesStoreAlbumIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 iTunesStoreAlbumIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasITunesStoreAlbumIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setITunesStoreAlbumIdentifier:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetPurchaseInfoData(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 purchaseInfoData];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetPurchaseInfoData(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetPurchaseInfoData_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetPurchaseInfoData_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 purchaseInfoData];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 purchaseInfoData];
  v12 = [v11 isEqualToData:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setPurchaseInfoData:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetDownloadState(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 downloadState];

  return v2;
}

void MRContentItemSetDownloadState(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 downloadState] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasDownloadState];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setDownloadState:a2];

LABEL_8:
}

float MRContentItemGetDownloadProgress(void *a1)
{
  v1 = [a1 metadata];
  [v1 downloadProgress];
  v3 = v2;

  return v3;
}

void MRContentItemSetDownloadProgress(void *a1, float a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v10 = a1;
  v4 = [v10 metadata];
  [v4 downloadProgress];
  if (v5 == a2)
  {
    v6 = [v10 metadata];
    v7 = [v6 hasDownloadProgress];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [v10 metadata];
  *&v9 = a2;
  [v8 setDownloadProgress:v9];

LABEL_8:
}

uint64_t MRContentItemCopyAppMetrics(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 appMetrics];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetAppMetrics(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetAppMetrics_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetAppMetrics_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 appMetrics];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 appMetrics];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setAppMetrics:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemGetIsAdvertisement(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isAdvertisement];

  return v2;
}

void MRContentItemSetIsAdvertisement(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isAdvertisement] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setAdvertisement:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasAdvertisement];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetIsSteerable(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 isSteerable];

  return v2;
}

void MRContentItemSetIsSteerable(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 isSteerable] != a2)
  {

LABEL_6:
    v7 = [v8 metadata];
    [v7 setSteerable:a2];

    goto LABEL_7;
  }

  v5 = [v8 metadata];
  v6 = [v5 hasSteerable];

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t MRContentItemGetLegacyUniqueIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 legacyUniqueIdentifier];

  return v2;
}

void MRContentItemSetLegacyUniqueIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 legacyUniqueIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasLegacyUniqueIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setLegacyUniqueIdentifier:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetCollectionIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 collectionIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetCollectionIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetCollectionIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetCollectionIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetCollectionIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 collectionIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 collectionIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setCollectionIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemCopyCollectionInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 collectionInfo];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetCollectionInfo(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetCollectionInfo_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetCollectionInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 collectionInfo];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 collectionInfo];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setCollectionInfo:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemCopyTransitionInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 transitionInfo];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetTransitionInfo(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetTransitionInfo_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetTransitionInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 transitionInfo];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 transitionInfo];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setTransitionInfo:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetTransitionInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 transitionInfo];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetProfileIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 profileIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetContentIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 contentIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetContentIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetContentIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetContentIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetContentIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 contentIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 contentIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setContentIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetServiceIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 serviceIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

void MRContentItemSetServiceIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetServiceIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetServiceIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetServiceIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 serviceIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 serviceIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setServiceIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetProfileIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetProfileIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetProfileIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetProfileIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 profileIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 profileIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setProfileIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetBrandIdentifier(void *a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    a2 = [a2 performSelector:sel_stringValue];
  }

  if (a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRContentItemSetBrandIdentifier_cold_1();
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetBrandIdentifier_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v4);
}

BOOL __MRContentItemSetBrandIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 brandIdentifier];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 brandIdentifier];
  v12 = [v11 isEqualToString:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setBrandIdentifier:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

CFTypeRef MRContentItemGetBrandIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 brandIdentifier];

  if (!v2)
  {
    return 0;
  }

  return CFAutorelease(v2);
}

CFTypeRef MRContentItemGetParentIdentifier(void *a1)
{
  result = [a1 parentIdentifier];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

CFTypeRef MRContentItemGetAncestorIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 ancestorIdentifier];
  if (v2)
  {
    [v1 ancestorIdentifier];
  }

  else
  {
    [v1 identifier];
  }
  v3 = ;

  v4 = CFAutorelease(v3);
  return v4;
}

uint64_t MRContentItemGetEpisodeType(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 episodeType];

  return v2;
}

void MRContentItemSetEpisodeType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 episodeType] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasEpisodeType];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setEpisodeType:a2];

LABEL_8:
}

CFTypeRef MRContentItemGetRequestIdentifier(void *a1)
{
  result = [a1 requestIdentifier];
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

void MRContentItemSetReportingAdamID(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 reportingAdamID] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasReportingAdamID];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setReportingAdamID:a2];

LABEL_8:
}

uint64_t MRContentItemGetReportingAdamID(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 reportingAdamID];

  return v2;
}

void MRContentItemSetLyricsAdamID(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 lyricsAdamID] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasLyricsAdamID];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setLyricsAdamID:a2];

LABEL_8:
}

uint64_t MRContentItemGetLyricsAdamID(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 lyricsAdamID];

  return v2;
}

void MRContentItemSetITunesStoreAlbumArtistIdentifier(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  MRCreateItemMetadataIfNotPresent(a1);
  v8 = a1;
  v4 = [v8 metadata];
  if ([v4 iTunesStoreAlbumArtistIdentifier] == a2)
  {
    v5 = [v8 metadata];
    v6 = [v5 hasITunesStoreAlbumArtistIdentifier];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v8 metadata];
  [v7 setITunesStoreAlbumArtistIdentifier:a2];

LABEL_8:
}

uint64_t MRContentItemGetITunesStoreAlbumArtistIdentifier(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 iTunesStoreAlbumArtistIdentifier];

  return v2;
}

uint64_t MRContentItemCopyAuxiliaryNowPlayingInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 nowPlayingInfo];
  v3 = [v2 copy];

  return v3;
}

BOOL MRContentItemCalculatedPlaybackPositionIsEqual(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E695DF00] date];
  CalculatedPlaybackPosition = _MRContentItemGetCalculatedPlaybackPosition(a1, v4);
  v6 = _MRContentItemGetCalculatedPlaybackPosition(a2, v4);
  v7 = [a1 metadata];
  [v7 playbackRate];
  v9 = v8;

  v10 = [a2 metadata];
  [v10 playbackRate];
  v12 = v11;

  if (v9 >= v12)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v14 = [v13 metadata];
  [v14 playbackRate];
  v16 = v15;

  return vabdd_f64(CalculatedPlaybackPosition, v6) < v16;
}

uint64_t MRContentItemCopyUserInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 userInfo];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetUserInfo(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetUserInfo_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetUserInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 userInfo];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 userInfo];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setUserInfo:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemCopyDeviceSpecificUserInfo(void *a1)
{
  v1 = [a1 metadata];
  v2 = [v1 deviceSpecificUserInfo];
  v3 = [v2 copy];

  return v3;
}

void MRContentItemSetDeviceSpecificUserInfo(void *a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __MRContentItemSetDeviceSpecificUserInfo_block_invoke;
  v2[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v2[4] = a2;
  MRContentItemSetMetadataRef(a1, a2, v2);
}

BOOL __MRContentItemSetDeviceSpecificUserInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 deviceSpecificUserInfo];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 deviceSpecificUserInfo];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setDeviceSpecificUserInfo:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void MRContentItemSetArtworkFileURL(void *a1, const __CFString *a2)
{
  v3 = CFURLCreateWithString(*MEMORY[0x1E695E480], a2, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MRContentItemSetArtworkFileURL_block_invoke;
  v4[3] = &__block_descriptor_40_e27_B24__0__MRContentItem_8_v16l;
  v4[4] = v3;
  MRContentItemSetMetadataRef(a1, v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }
}

BOOL __MRContentItemSetArtworkFileURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 metadata];
  v7 = [v6 artworkFileURL];
  v8 = v7;
  v9 = v7 != a3;
  if (v7 == a3)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = [v5 metadata];
  v11 = [v10 artworkFileURL];
  v12 = [v11 isEqual:a3];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = *(a1 + 32);
    v6 = [v5 metadata];
    [v6 setArtworkFileURL:v13];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t MRContentItemCreateFromNowPlayingInfo(uint64_t a1)
{
  v2 = [MRContentItem alloc];

  return [(MRContentItem *)v2 initWithNowPlayingInfo:a1];
}

uint64_t MRContentItemCreateFromExternalRepresentation(uint64_t a1, uint64_t a2)
{
  v3 = [MRContentItem alloc];

  return [(MRContentItem *)v3 initWithData:a2];
}

void *MRContentItemsCreateFromExternalRepresentation(void *result)
{
  if (result)
  {
    MRCreateArrayFromData(result, &__block_literal_global_90);
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

MRContentItem *__MRContentItemsCreateFromExternalRepresentation_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithData:v2];

  return v3;
}

void *MRContentItemsCreateExternalRepresentation(void *result)
{
  if (result)
  {
    MRCreateDataFromArray(result, &__block_literal_global_41);
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

void *MRContentItemsCopyIdentifiers(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) identifier];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void *MRContentItemCreateMergedItem(void *a1, void *a2)
{
  v3 = [a1 copy];
  MRContentItemMerge(v3, a2);
  return v3;
}

void *MRContentItemCopyWithIdentifier(void *a1, uint64_t a2)
{
  v3 = [a1 copy];
  [v3 setIdentifier:a2];
  return v3;
}

uint64_t _MRVideoThumbnailProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MRVirtualVoiceInputSetRecordingEndpoint(uint64_t a1)
{
  v2 = MRGetSharedService();

  MRMediaRemoteServiceSetVoiceRecordingEndpoint(v2, a1);
}

void MRVirtualVoiceInputSetRecordingState(unsigned int a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a4;
  v9 = a3;
  v8 = MRGetSharedService();
  MRMediaRemoteServiceVirtualVoiceSetRecordingState(v8, a1, a2, v9, v7);
}

void MRVirtualVoiceInputGetDevices(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceVirtualVoiceGetDevices(v4, v5, v3);
}

void MRVirtualVoiceInputRegisterDevice(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceVirtualVoiceRegisterDevice(v6, a1, v7, v5);
}

void MRVirtualVoiceInputUnregisterDevice(unsigned int a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = MRGetSharedService();
  MRMediaRemoteServiceVirtualVoiceUnregisterDevice(v6, a1, v7, v5);
}

void MRVirtualVoiceInputSetRecordingStateCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v7 notificationClient];
  [v5 setReceivesVoiceInputRecordingStateNotifications:1];

  v6 = +[MRVVIClient sharedClient];
  [v6 setRecordingStateCallback:v4 forDeviceID:a1];
}

void MRVirtualVoiceInputProcessAudioData(unsigned int a1, const char *a2, double a3, double a4, float a5)
{
  v10 = MRGetSharedService();

  MRMediaRemoteServiceVirtualVoiceProcessAudioData(v10, a1, a2, a3, a4, a5);
}

void sub_1A2AB6C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRClientUpdatesConfigurationProtobufReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v55[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55[0] & 0x7F) << v5;
        if ((v55[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          a1[24] |= 2u;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v55[0] & 0x7F) << v34;
            if ((v55[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_88;
            }
          }

          v20 = (v36 != 0) & ~[a2 hasError];
LABEL_88:
          v52 = 17;
          goto LABEL_97;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[24] |= 8u;
          while (1)
          {
            LOBYTE(v55[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v55[0] & 0x7F) << v14;
            if ((v55[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_92;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_92:
          v52 = 19;
LABEL_97:
          a1[v52] = v20;
          goto LABEL_98;
        }

        goto LABEL_56;
      }

      if (v13 == 6)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        a1[24] |= 0x10u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v55[0] & 0x7F) << v40;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_90;
          }
        }

        v20 = (v42 != 0) & ~[a2 hasError];
LABEL_90:
        v52 = 20;
        goto LABEL_97;
      }

      if (v13 != 7)
      {
        goto LABEL_56;
      }

      v27 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
      [a1 addSubscribedPlayerPaths:v27];
      v55[0] = 0;
      v55[1] = 0;
      if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v27->super.super.isa, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_98:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[24] |= 4u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v55[0] & 0x7F) << v28;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_86;
          }
        }

        v20 = (v30 != 0) & ~[a2 hasError];
LABEL_86:
        v52 = 18;
        goto LABEL_97;
      case 2:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        a1[24] |= 1u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v55[0] & 0x7F) << v46;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_96;
          }
        }

        v20 = (v48 != 0) & ~[a2 hasError];
LABEL_96:
        v52 = 16;
        goto LABEL_97;
      case 3:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        a1[24] |= 0x20u;
        while (1)
        {
          LOBYTE(v55[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v55[0] & 0x7F) << v21;
          if ((v55[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_94;
          }
        }

        v20 = (v23 != 0) & ~[a2 hasError];
LABEL_94:
        v52 = 21;
        goto LABEL_97;
    }

LABEL_56:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2AB8924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2AB8B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AB8D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AB9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABC0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABC510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABCAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABE454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ABF5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRSystemPlaybackCustomDataQueueProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRSystemPlaybackCustomDataQueueProtobuf__identifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRSystemPlaybackCustomDataQueueProtobuf__data;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUpdateContentItemMessageProtobufReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRContentItemProtobuf);
        [a1 addContentItems:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRContentItemProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
    objc_storeStrong(a1 + 2, v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioBufferProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v39 & 0x7F) << v22;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v24;
            }

LABEL_63:
            v36 = 24;
            goto LABEL_72;
          case 5:
            v34 = PBReaderReadData();
            v35 = *(a1 + 32);
            *(a1 + 32) = v34;

            goto LABEL_73;
          case 6:
            v21 = objc_alloc_init(_MRAudioStreamPacketDescriptionProtobuf);
            [a1 addPacketDescriptions:v21];
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !_MRAudioStreamPacketDescriptionProtobufReadFrom(v21, a2))
            {
LABEL_75:

              return 0;
            }

            goto LABEL_38;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_MRAudioFormatSettingsProtobuf);
            objc_storeStrong((a1 + 40), v21);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !_MRAudioFormatSettingsProtobufReadFrom(v21, a2))
            {
              goto LABEL_75;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_73;
          case 2:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v39 & 0x7F) << v28;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v30;
            }

LABEL_71:
            v36 = 16;
            goto LABEL_72;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v39 & 0x7F) << v14;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_67:
            v36 = 8;
LABEL_72:
            *(a1 + v36) = v20;
            goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGameControllerMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(_MRGameControllerButtonsProtobuf);
          objc_storeStrong((a1 + 16), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_MRGameControllerButtonsProtobufReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_MRGameControllerDigitizerProtobuf);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_MRGameControllerDigitizerProtobufReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          *(a1 + 8) = v21;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_MRGameControllerMotionProtobuf);
          objc_storeStrong((a1 + 32), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_MRGameControllerMotionProtobufReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRPlaybackQueueRequestCreateWithIdentifiers(uint64_t a1)
{
  v2 = [MRPlaybackQueueRequest alloc];

  return [(MRPlaybackQueueRequest *)v2 initWithIdentifiers:a1];
}

uint64_t MRPlaybackQueueRequestCreateWithCurrentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MRPlaybackQueueRequest alloc];

  return [(MRPlaybackQueueRequest *)v6 initWithIdentifiers:a3 range:a1, a2];
}

uint64_t MRPlaybackQueueRequestCopy(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCopy_cold_1();
    }
  }

  return [a1 copy];
}

void *MRPlaybackQueueRequestCopyWithRange(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCopyWithRange_cold_1();
    }
  }

  return MRPlaybackQueueRequestCopyWithCurrentState(a1, a2, a3, 0);
}

void *MRPlaybackQueueRequestCopyWithCurrentState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCopyWithCurrentState_cold_1();
    }
  }

  v8 = [v7 copy];
  [v8 setContentItemIdentifiers:a4];
  [v8 setLocation:a2];
  [v8 setLength:a3];

  return v8;
}

void *MRPlaybackQueueRequestCreateMergedRequest(void *a1, void *a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCreateMergedRequest_cold_1();
    }
  }

  v4 = a2;
  v5 = [a1 copy];
  [v5 mergeFrom:v4];

  return v5;
}

uint64_t MRPlaybackQueueRequestSetIncludeInfo(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetIncludeInfo_cold_1();
    }
  }

  return [a1 setIncludeInfo:a2];
}

uint64_t MRPlaybackQueueRequestSetIncludeAlignments(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetIncludeAlignments_cold_1();
    }
  }

  return [a1 setIncludeAlignments:a2];
}

void MRPlaybackQueueRequestSetIncludeArtwork(void *a1, double a2, double a3)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetIncludeArtwork_cold_1();
    }
  }

  v6 = a1;
  [v6 setArtworkWidth:a2];
  [v6 setArtworkHeight:a3];
}

void *MRPlaybackQueueRequestGetRequestID(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetRequestID_cold_1();
    }
  }

  v2 = [a1 requestIdentifier];

  return v2;
}

uint64_t MRPlaybackQueueRequestSetRequestID(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetRequestID_cold_1();
    }
  }

  return [a1 setRequestIdentifier:a2];
}

uint64_t MRPlaybackQueueRequestCopyDescription(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCopyDescription_cold_1();
    }
  }

  [a1 description];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t MRPlaybackQueueRequestSetLabel(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetLabel_cold_1();
    }
  }

  return [a1 setLabel:a2];
}

void *MRPlaybackQueueRequestGetLabel(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetLabel_cold_1();
    }
  }

  v2 = [a1 label];

  return v2;
}

void *MRPlaybackQueueRequestGetRequestedIdentifiers(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetRequestedIdentifiers_cold_1();
    }
  }

  v2 = [a1 contentItemIdentifiers];

  return v2;
}

BOOL MRPlaybackQueueRequestRangeContainsNowPlayingItem(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestRangeContainsNowPlayingItem_cold_1();
    }
  }

  v2 = a1;
  v3 = [v2 location];
  v4 = [v2 location];
  v5 = [v2 length];

  return v3 < 1 && v5 + v4 > 0;
}

uint64_t MRPlaybackQueueRequestGetIncludeLyrics(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIncludeLyrics_cold_1();
    }
  }

  return [a1 includeLyrics];
}

uint64_t MRPlaybackQueueRequestGetArtworkWidth(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetArtworkWidth_cold_1();
    }
  }

  return [a1 artworkWidth];
}

uint64_t MRPlaybackQueueRequestGetArtworkHeight(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetArtworkHeight_cold_1();
    }
  }

  return [a1 artworkHeight];
}

uint64_t MRPlaybackQueueRequestShouldRequestItem(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestShouldRequestItem_cold_1();
    }
  }

  return [a1 shouldRequestItem];
}

uint64_t MRPlaybackQueueRequestShouldRequestItemNotConsideringMetadata(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestShouldRequestItemNotConsideringMetadata_cold_1();
    }
  }

  return [a1 shouldRequestItemNotConsideringMetadata];
}

uint64_t MRPlaybackQueueRequestContainsNonDefaultAssets(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestContainsNonDefaultAssets_cold_1();
    }
  }

  return [a1 containsNonDefaultAssets];
}

uint64_t MRPlaybackQueueRequestCreateSkeletonFrom(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCreateSkeletonFrom_cold_1();
    }
  }

  [a1 skeleton];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t MRPlaybackQueueRequestCreateExternalRepresentation(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCreateExternalRepresentation_cold_1();
    }
  }

  [a1 data];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t MRPlaybackQueueRequestHasRange(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestHasRange_cold_1();
    }
  }

  return [a1 hasRange];
}

uint64_t MRPlaybackQueueRequestCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [MRPlaybackQueueRequest alloc];

  return [(MRPlaybackQueueRequest *)v2 initWithData:a1];
}

uint64_t MRPlaybackQueueRequestMerge(void *a1, uint64_t a2)
{
  if (a1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRPlaybackQueueRequestMerge_cold_1();
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else if (!a2)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRPlaybackQueueRequestMerge_cold_2();
  }

LABEL_6:

  return [a1 mergeFrom:a2];
}

uint64_t MRPlaybackQueueRequestMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRPlaybackQueueRequestMatch_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRPlaybackQueueRequestMatch_cold_2();
  }

LABEL_6:
  if (v3)
  {
    v5 = [v3 match:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t MRPlaybackQueueRequestIsExactMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    MRPlaybackQueueRequestIsExactMatch_cold_1();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRPlaybackQueueRequestIsExactMatch_cold_2();
  }

LABEL_6:
  v5 = [v3 exactMatch:v4];

  return v5;
}

uint64_t MRPlaybackQueueRequestCreateFromTransactionName(uint64_t a1)
{
  v2 = [MRPlaybackQueueRequest alloc];

  return [(MRPlaybackQueueRequest *)v2 initFromTransactionName:a1];
}

uint64_t MRPlaybackQueueRequestSetIsLegacyNowPlayingInfoRequest(void *a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestSetIsLegacyNowPlayingInfoRequest_cold_1();
    }
  }

  return [a1 setLegacyNowPlayingInfoRequest:a2];
}

uint64_t MRPlaybackQueueRequestGetIsLegacyNowPlayingInfoRequest(void *a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestGetIsLegacyNowPlayingInfoRequest_cold_1();
    }
  }

  return [a1 isLegacyNowPlayingInfoRequest];
}

MRPlaybackQueueRequest *MRPlaybackQueueRequestCreateAssetsFrom(uint64_t a1)
{
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MRPlaybackQueueRequestCreateAssetsFrom_cold_1();
    }
  }

  v2 = objc_alloc_init(MRPlaybackQueueRequest);
  MRPlaybackQueueRequestMerge(v2, a1);
  return v2;
}

void sub_1A2AC8D48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t MRBundlePermittedForJoiningGroupSessions(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Music"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.MediaRemoteUI"];
  }

  return v2;
}

uint64_t MRGroupSessionRouteTypeFromModelIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"AppleTV"])
  {
    v2 = 11;
  }

  else if ([v1 containsString:{@"AudioAccessory5, "}])
  {
    v2 = 9;
  }

  else if ([v1 containsString:@"AudioAccessory"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *MRGroupSessionRouteTypeToModelIdentifier(char a1)
{
  if ((a1 - 8) > 3u)
  {
    return 0;
  }

  else
  {
    return off_1E76A3EA0[(a1 - 8)];
  }
}

id MRGroupSessionTokenCreateWithInvitationData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    MRGroupSessionTokenCreateWithInvitationData_cold_1();
  }

  v8 = MRGetSharedService();
  v9 = [v8 createTokenWithInvitationData:v5 equivalentMediaIdentifier:v6 version:v7];

  return v9;
}

id MRGroupSessionRouteMakeName(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 <= 0xB && ((1 << a2) & 0xB00) == 0)
  {
    if (((1 << a2) & 6) != 0)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = @"GROUPSESSION_ROUTE_FORMAT_CAR";
LABEL_7:
      v7 = MRLocalizedStringWithFormat(v6);
      v8 = [v5 stringWithFormat:v7, v4];

      goto LABEL_9;
    }

    if (a2 == 5)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = @"GROUPSESSION_ROUTE_FORMAT_SPEAKER";
      goto LABEL_7;
    }
  }

  v8 = v3;
LABEL_9:

  return v8;
}

void MRGroupSessionJoinSessionWithToken(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    MRGroupSessionJoinSessionWithToken_cold_1();
  }

  v5 = MRGetSharedService();
  v6 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Requesting to join session with token: %@", buf, 0xCu);
  }

  v7 = MRGroupSessionSubsystemGetQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRGroupSessionJoinSessionWithToken_block_invoke;
  v11[3] = &unk_1E76A3D68;
  v12 = v3;
  v13 = v4;
  v8 = v3;
  v9 = v4;
  [v5 joinGroupSessionWithToken:v8 queue:v7 completion:v11];

  v10 = *MEMORY[0x1E69E9840];
}

id MRGroupSessionSubsystemGetQueue()
{
  if (MRGroupSessionSubsystemGetQueue_onceToken != -1)
  {
    MRGroupSessionSubsystemGetQueue_cold_1();
  }

  v1 = MRGroupSessionSubsystemGetQueue___queue;

  return v1;
}

void __MRGroupSessionJoinSessionWithToken_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 40))
  {
    if (v6)
    {
      v8 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __MRGroupSessionJoinSessionWithToken_block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9 = [*(a1 + 32) equivalentMediaIdentifier];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v5;
      }

      v12 = v11;

      v13 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Joined group session: %{public}@. Waiting for ASE", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__44;
      v34 = __Block_byref_object_dispose__44;
      v35 = 0;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v30 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __MRGroupSessionJoinSessionWithToken_block_invoke_334;
      v23[3] = &unk_1E76A3D40;
      v27 = v29;
      v14 = v12;
      v24 = v14;
      p_buf = &buf;
      v25 = v5;
      v26 = *(a1 + 40);
      v15 = MEMORY[0x1A58E3570](v23);
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __MRGroupSessionJoinSessionWithToken_block_invoke_338;
      v21[3] = &unk_1E769E710;
      v17 = v15;
      v22 = v17;
      v18 = [v16 addObserverForName:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0 queue:0 usingBlock:v21];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v18;

      v17[2](v17);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1A2ACB9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void __MRGroupSessionJoinSessionWithToken_block_invoke_334(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MRGroupSessionSubsystemGetQueue();
  dispatch_assert_queue_V2(v2);

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v3 = +[MRNowPlayingOriginClientManager sharedManager];
    v4 = [v3 activeSystemEndpointOutputDeviceUIDForType:0];
    v5 = [v4 isEqualToString:a1[4]];

    if (v5)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:*(*(a1[8] + 8) + 40)];

      v7 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Resolved ASE to session: %@", &v11, 0xCu);
      }

      v9 = a1[5];
      (*(a1[6] + 16))();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __MRGroupSessionJoinSessionWithToken_block_invoke_338(uint64_t a1)
{
  v2 = MRGroupSessionSubsystemGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRGroupSessionJoinSessionWithToken_block_invoke_2;
  block[3] = &unk_1E769AD58;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void MRGroupSessionLeaveSessionWithIdentifier(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    MRGroupSessionLeaveSessionWithIdentifier_cold_1();
  }

  v5 = MRGetSharedService();
  v6 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Requesting to leave session with identifier: %@", buf, 0xCu);
  }

  v7 = MRGroupSessionSubsystemGetQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRGroupSessionLeaveSessionWithIdentifier_block_invoke;
  v10[3] = &unk_1E769AD80;
  v11 = v4;
  v8 = v4;
  [v5 leaveGroupSessionWithIdentifier:v3 queue:v7 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __MRGroupSessionLeaveSessionWithIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Failed to leave session with error: %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

id MRGroupSessionSubsystemGetNotificationQueue()
{
  if (MRGroupSessionSubsystemGetNotificationQueue_onceToken != -1)
  {
    MRGroupSessionSubsystemGetNotificationQueue_cold_1();
  }

  v1 = MRGroupSessionSubsystemGetNotificationQueue___queue;

  return v1;
}

void sub_1A2ACC298(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *MRGroupSessionRouteTypeDescription(unsigned int a1)
{
  if (a1 < 0xC && ((0xB27u >> a1) & 1) != 0)
  {
    v2 = off_1E76A3EC0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MRGroupSessionRouteType-Unknown(%ld)", a1];
  }

  return v2;
}

void sub_1A2ACCBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACCD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACCE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACCFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACD988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2ACDE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2ACE35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRGroupSessionSendEvent(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = MRGetSharedService();
  v5 = MRGroupSessionSubsystemGetQueue();
  [v6 sendEvent:v4 queue:v5 completion:v3];
}

void sub_1A2ACF060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void MRSetGroupSessionNearbyContactDiscoveryEnabled(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 groupSessionNearbyContactDiscoveryEnabled];

  if (v3 != a1)
  {
    v4 = +[MRUserSettings currentSettings];
    [v4 setGroupSessionNearbyContactDiscoveryEnabled:a1];
  }
}

uint64_t MRGroupSessionNearbyContactDiscoveryEnabled()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 groupSessionNearbyContactDiscoveryEnabled];

  return v1;
}

void MRSetGroupSessionContactAutoApprovalEnabled(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 groupSessionContactAutoApprovalEnabled];

  if (v3 != a1)
  {
    v4 = +[MRUserSettings currentSettings];
    [v4 setGroupSessionContactAutoApprovalEnabled:a1];
  }
}

uint64_t MRGroupSessionContactAutoApprovalEnabled()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 groupSessionContactAutoApprovalEnabled];

  return v1;
}

void __MRGroupSessionSubsystemGetQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRGroupSessionSubsystem.targetQueue", v2);
  v1 = MRGroupSessionSubsystemGetQueue___queue;
  MRGroupSessionSubsystemGetQueue___queue = v0;
}

void __MRGroupSessionSubsystemGetNotificationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRGroupSessionSubsystem.targetNotificationQueue", v2);
  v1 = MRGroupSessionSubsystemGetNotificationQueue___queue;
  MRGroupSessionSubsystemGetNotificationQueue___queue = v0;
}

id MRGroupSessionRouteTypeLocalizedString(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    v2 = @"GROUPSESSION_ROUTE_SPEAKER";
  }

  else
  {
    v2 = off_1E76A3F20[(a1 - 1)];
  }

  v3 = MRLocalizedString(v2);

  return v3;
}

uint64_t MROutputDeviceTypeFromGroupSessionRoute(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1A2B811A8[(a1 - 1)];
  }
}

uint64_t MROutputDeviceSubtypeFromGroupSessionRoute(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1A2B811D4[(a1 - 1)];
  }
}

uint64_t MRGroupSessionRouteTypeForOutputDevices(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        if ([v6 deviceType] == 3)
        {
          v13 = 2;
          goto LABEL_32;
        }

        if ([v6 deviceType] == 2 || objc_msgSend(v6, "deviceType") == 5)
        {
          if ([v6 deviceSubtype] == 14 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "startGroupSessionsForAllRouteSubtypes"), v7, (v8 & 1) != 0))
          {
            v13 = 1;
            goto LABEL_32;
          }

          if ([v6 deviceSubtype] == 1)
          {
            v9 = +[MRSharedSettings currentSettings];
            v10 = [v9 supportGroupSessionHome];

            if (v10)
            {
LABEL_27:
              v13 = 5;
              goto LABEL_32;
            }
          }
        }

        if ([v6 deviceType] == 1)
        {
          v11 = +[MRSharedSettings currentSettings];
          v12 = [v11 supportGroupSessionHome];

          if (v12)
          {
            if ([v6 deviceSubtype] == 13)
            {
              v13 = 11;
              goto LABEL_32;
            }

            if ([v6 deviceSubtype] == 12 || objc_msgSend(v6, "deviceSubtype") == 15)
            {
              if ([v6 isHomePodMiniDevice])
              {
                v13 = 9;
              }

              else
              {
                v13 = 8;
              }

              goto LABEL_32;
            }

            if ([v6 deviceSubtype] == 1 || objc_msgSend(v6, "deviceSubtype") == 11 || objc_msgSend(v6, "deviceSubtype") == 17)
            {
              goto LABEL_27;
            }
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v13 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_32:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

MRGroupComposition *MRGroupCompositionForMRGroupSessionRouteType(int a1)
{
  v2 = objc_alloc_init(MRGroupComposition);
  v3 = v2;
  if (a1 <= 4)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        [(MRGroupComposition *)v2 setVehicleCount:1];
      }

      else if (a1 == 2)
      {
        [(MRGroupComposition *)v2 setCarplayCount:1];
      }
    }

    else
    {
      [(MRGroupComposition *)v2 setUnknownCount:1];
    }
  }

  else if (a1 > 8)
  {
    if (a1 == 9)
    {
      [(MRGroupComposition *)v2 setHomePodMiniCount:1];
    }

    else if (a1 == 11)
    {
      [(MRGroupComposition *)v2 setAtvCount:1];
    }
  }

  else if (a1 == 5)
  {
    [(MRGroupComposition *)v2 setLofiCount:1];
  }

  else if (a1 == 8)
  {
    [(MRGroupComposition *)v2 setHomePodCount:1];
  }

  return v3;
}

uint64_t _MRRemoveClientMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingClientProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingClientProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2AD4490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2AD4B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 240), 8);
  _Block_object_dispose((v53 - 192), 8);
  _Block_object_dispose((v53 - 144), 8);
  _Block_object_dispose((v53 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1A2AD733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2AD746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRGroupSessionIdentityShareMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRUserIdentityProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRUserIdentityProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGetRemoteTextInputSessionProtobufReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioFadeMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGameControllerAccelerationProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
LABEL_36:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_47;
        }

        *(a1 + 32) |= 2u;
        v32 = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v26 = v32;
        v27 = 20;
        goto LABEL_46;
      }

      v22 = PBReaderReadData();
      v23 = *(a1 + 8);
      *(a1 + 8) = v22;

LABEL_47:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        *(a1 + 32) |= 4u;
        v32 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v26 = v32;
        v27 = 24;
        break;
      case 4:
        *(a1 + 32) |= 8u;
        v32 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v26 = v32;
        v27 = 28;
        break;
      case 5:
        *(a1 + 32) |= 1u;
        v32 = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v26 = v32;
        v27 = 16;
        break;
      default:
        goto LABEL_36;
    }

LABEL_46:
    *(a1 + v27) = v26;
    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRKeyboardMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 4)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 16);
        *(a1 + 16) = v22;
      }

      else if (v13 == 3)
      {
        v21 = objc_alloc_init(_MRTextEditingAttributesProtobuf);
        objc_storeStrong((a1 + 8), v21);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_MRTextEditingAttributesProtobufReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MRGroupTopologyModificationRequestTypeDescription(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a1];
  }

  else
  {
    v2 = off_1E76A4040[a1 & 3];
  }

  return v2;
}

uint64_t _MRErrorProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 24;
            goto LABEL_38;
          case 2:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v27 & 0x7F) << v19;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_53:
            *(a1 + 8) = v25;
            goto LABEL_39;
          case 3:
            v15 = PBReaderReadString();
            v16 = 32;
LABEL_38:
            v17 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_39;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_38;
        }

        if (v13 == 100)
        {
          v14 = objc_alloc_init(_MRDictionaryProtobuf);
          objc_storeStrong((a1 + 56), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v14, a2))
          {
LABEL_55:

            return 0;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_38;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(_MRErrorProtobuf);
          [a1 addUnderlyingErrors:v14];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v14, a2))
          {
            goto LABEL_55;
          }

LABEL_32:
          PBReaderRecallMark();

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGetVolumeMutedMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioDataBlockProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 8;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
        goto LABEL_33;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(_MRAudioBufferProtobuf);
        objc_storeStrong((a1 + 16), v14);
        v20 = 0;
        v21 = 0;
        if (!PBReaderPlaceMark() || !_MRAudioBufferProtobufReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_33;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(_MRAudioTimeProtobuf);
    objc_storeStrong((a1 + 24), v14);
    v20 = 0;
    v21 = 0;
    if (!PBReaderPlaceMark() || !_MRAudioTimeProtobufReadFrom(v14, a2))
    {
LABEL_35:

      return 0;
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRRegisterGameControllerMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRGameControllerPropertiesProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRGameControllerPropertiesProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendCommandResultMessageProtobufReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR____MRCommandInfoProtobuf__supportedQueueEndActions;
    v6 = &OBJC_IVAR____MRCommandInfoProtobuf__supportedQueueEndActions;
    v7 = &OBJC_IVAR____MRCommandInfoProtobuf__supportedQueueEndActions;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v45 & 0x7F) << v8;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        switch(v16)
        {
          case 4:
            v25 = PBReaderReadString();
            v26 = v7[996];
            v27 = *(a1 + v26);
            *(a1 + v26) = v25;

            goto LABEL_77;
          case 5:
            v17 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
            objc_storeStrong(a1 + 7, v17);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v17->super.super.isa, a2))
            {
LABEL_80:

              return 0;
            }

            goto LABEL_59;
          case 6:
            v17 = objc_alloc_init(_MRSendCommandResultProtobuf);
            objc_storeStrong(a1 + 5, v17);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !_MRSendCommandResultProtobufReadFrom(v17, a2))
            {
              goto LABEL_80;
            }

LABEL_59:
            PBReaderRecallMark();
LABEL_60:

            goto LABEL_77;
        }
      }

      else
      {
        switch(v16)
        {
          case 1:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *(a1 + v5[993]) |= 1u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v21 = [a2 position] + 1;
              if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
              {
                v23 = [a2 data];
                [v23 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v20 |= (v45 & 0x7F) << v18;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v14 = v19++ >= 9;
              if (v14)
              {
                v24 = 0;
                goto LABEL_64;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_64:
            *(a1 + v6[994]) = v24;
            goto LABEL_77;
          case 2:
            if ((v15 & 7) == 2)
            {
              v45 = 0;
              v46 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v29 = [a2 position];
                if (v29 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v30 = 0;
                v31 = 0;
                v32 = 0;
                while (1)
                {
                  v47 = 0;
                  v33 = [a2 position] + 1;
                  if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                  {
                    v35 = [a2 data];
                    [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v32 |= (v47 & 0x7F) << v30;
                  if ((v47 & 0x80) == 0)
                  {
                    break;
                  }

                  v30 += 7;
                  v14 = v31++ >= 9;
                  if (v14)
                  {
                    goto LABEL_56;
                  }
                }

                [a2 hasError];
LABEL_56:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v36 = v6;
              v37 = v5;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              while (1)
              {
                LOBYTE(v45) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v45 & 0x7F) << v38;
                if ((v45 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v14 = v39++ >= 9;
                if (v14)
                {
                  goto LABEL_76;
                }
              }

              [a2 hasError];
LABEL_76:
              PBRepeatedInt32Add();
              v5 = v37;
              v6 = v36;
              v7 = &OBJC_IVAR____MRCommandInfoProtobuf__supportedQueueEndActions;
            }

            goto LABEL_77;
          case 3:
            v17 = PBReaderReadData();
            if (v17)
            {
              [a1 addHandlerReturnStatusData:v17];
            }

            goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void MRServiceClientPlaybackSessionCallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 originClientForPlayerPath:v5];

  v10 = [v9 playbackSessionCallback];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v6, v5, v7);
  }

  else
  {
    v12 = +[MRNowPlayingOriginClientManager sharedManager];
    v13 = [v12 playerClientForPlayerPath:v5];

    v14 = [v13 clientCallbacks];
    v15 = [v14 playbackSessionCallback];

    v16 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    v17 = [(MRPlaybackSessionMigrateRequest *)v16 startEvent:@"GetPlaybackSession" role:4];
    v18 = [v6 requestIdentifier];
    [(MRPlaybackSessionMigrateRequest *)v16 addEventInput:v18 withKey:@"identifier" toEventID:v17];

    if (v15)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __MRServiceClientPlaybackSessionCallback_block_invoke;
      v21[3] = &unk_1E76A40C0;
      v22 = v16;
      v24 = v17;
      v23 = v7;
      (v15)[2](v15, v6, v21);
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:15 description:@"GetPlaybackSession callback unavailable"];
      [(MRPlaybackSessionMigrateRequest *)v16 endEventWithID:v17 error:v19];
      v20 = [[MRPlaybackSessionResponseMessage alloc] initWithPlaybackSession:0 request:v16];
      (*(v7 + 2))(v7, v20, v19);
    }
  }
}

void __MRServiceClientPlaybackSessionCallback_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = a2;
  v6 = v15;
  v7 = v5;
  if (!v15)
  {
    v8 = *(a1 + 32);
    v9 = [v5 type];
    [v8 addEventOutput:v9 withKey:@"type" toEventID:*(a1 + 48)];

    v10 = *(a1 + 32);
    v11 = MEMORY[0x1E696AD98];
    v12 = [v7 data];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
    [v10 addEventOutput:v13 withKey:@"size" toEventID:*(a1 + 48)];

    v6 = 0;
  }

  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v6];
  v14 = [[MRPlaybackSessionResponseMessage alloc] initWithPlaybackSession:v7 request:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void MRServiceClientPlaybackSessionMigrateBeginCallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 originClientForPlayerPath:v5];

  v10 = [v9 playbackSessionMigrateBeginCallback];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v6, v5, v7);
  }

  else
  {
    v12 = +[MRNowPlayingOriginClientManager sharedManager];
    v13 = [v12 playerClientForPlayerPath:v5];

    v14 = [v13 clientCallbacks];
    v15 = [v14 playbackSessionMigrateBeginCallback];

    v16 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    v17 = [(MRPlaybackSessionMigrateRequest *)v16 startEvent:@"Prepare" role:4];
    if (v15)
    {
      [v13 addPendingPlaybackSessionMigrateEvent:v6];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __MRServiceClientPlaybackSessionMigrateBeginCallback_block_invoke;
      v20[3] = &unk_1E76A28E8;
      v21 = v16;
      v23 = v17;
      v22 = v7;
      (v15)[2](v15, v6, v20);
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:15 description:@"MigrateBegin callback unavailable"];
      [(MRPlaybackSessionMigrateRequest *)v16 endEventWithID:v17 error:v18];
      v19 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v16];
      (*(v7 + 2))(v7, v19, v18);
    }
  }
}

void __MRServiceClientPlaybackSessionMigrateBeginCallback_block_invoke(uint64_t a1)
{
  [*(a1 + 32) endEventWithID:*(a1 + 48)];
  v2 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void MRServiceClientPlaybackSessionMigrateFinalizeCallback(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = +[MRNowPlayingOriginClientManager sharedManager];
  v15 = [v14 originClientForPlayerPath:v9];

  v16 = [v15 playbackSessionMigrateFinalizeCallback];
  v17 = v16;
  if (!v16)
  {
    v29 = v10;
    v18 = +[MRNowPlayingOriginClientManager sharedManager];
    v19 = [v18 playerClientForPlayerPath:v9];

    v20 = [v19 clientCallbacks];
    v21 = [v20 playbackSessionMigrateFinalizeCallback];

    v22 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    v23 = [(MRPlaybackSessionMigrateRequest *)v22 startEvent:@"Finalize" role:4];
    v30 = v21;
    if (v21)
    {
      if ([v19 removePendingPlaybackSessionMigrateEvent:v11])
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __MRServiceClientPlaybackSessionMigrateFinalizeCallback_block_invoke;
        v31[3] = &unk_1E769D978;
        v32 = v22;
        v34 = v23;
        v33 = v13;
        v10 = v29;
        v24 = v30;
        (v30)[2](v30, v11, v12, v29, v31);

LABEL_9:
        goto LABEL_10;
      }

      [(MRPlaybackSessionMigrateRequest *)v22 endEventWithID:v23];
      v27 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v22];
      (*(v13 + 2))(v13, v27, 0);
    }

    else
    {
      v28 = v19;
      v25 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:15 description:@"MigrateFinalize callback unavailable"];
      [(MRPlaybackSessionMigrateRequest *)v22 endEventWithID:v23 error:v25];
      v26 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v22];
      (*(v13 + 2))(v13, v26, v25);

      v19 = v28;
    }

    v10 = v29;
    v24 = v30;
    goto LABEL_9;
  }

  (*(v16 + 16))(v16, v11, v12, v10, v9, v13);
LABEL_10:
}

void __MRServiceClientPlaybackSessionMigrateFinalizeCallback_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4];
  v6 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void MRServiceClientPlaybackSessionMigratePostCallback(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = +[MRNowPlayingOriginClientManager sharedManager];
  v12 = [v11 originClientForPlayerPath:v9];

  v13 = [v12 playbackSessionMigratePostCallback];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v7, v8, v9, v10);
  }

  else
  {
    v15 = +[MRNowPlayingOriginClientManager sharedManager];
    v16 = [v15 playerClientForPlayerPath:v9];

    v17 = [v16 clientCallbacks];
    v18 = [v17 playbackSessionMigratePostCallback];

    v19 = [v7 startEvent:@"Post" role:4];
    if (v18)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __MRServiceClientPlaybackSessionMigratePostCallback_block_invoke;
      v22[3] = &unk_1E76A40E8;
      v23 = v7;
      v27 = v19;
      v24 = v9;
      v25 = v8;
      v26 = v10;
      (v18)[2](v18, v25, v22);
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:15 description:@"MigratePost callback unavailable"];
      [v7 endEventWithID:v19 error:v20];
      v21 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:v7 playerPath:v9 setPlaybackSessionCommandID:v8];
      (*(v10 + 2))(v10, v21, v20);
    }
  }
}

void __MRServiceClientPlaybackSessionMigratePostCallback_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = a3;
  v8 = a2;
  [v5 endEventWithID:v6 error:v7];
  v9 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:*(a1 + 32) playerPath:*(a1 + 40) setPlaybackSessionCommandID:*(a1 + 48)];
  [(MRPlaybackSessionMigratePostMessage *)v9 setMetrics:v8];

  [(MRProtocolMessage *)v9 setError:v7];
  (*(*(a1 + 56) + 16))();
}

void MRServiceClientPlaybackSessionMigrateRequestCallback(void *a1, void *a2, void *a3, void *a4)
{
  v19 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 originClientForPlayerPath:v19];

  v12 = [v11 playbackSessionMigrateRequestCallback];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v19, v9);
  }

  else
  {
    v14 = +[MRNowPlayingOriginClientManager sharedManager];
    v15 = [v14 playerClientForPlayerPath:v19];

    v16 = [v15 clientCallbacks];
    v17 = [v16 playbackSessionMigrateRequestCallback];

    if (v17)
    {
      (v17)[2](v17, v7, v8, v9);
    }

    else
    {
      Error = MRMediaRemoteCreateError(15);
      v9[2](v9, v8, Error);
    }
  }
}

uint64_t _MRPlaybackSessionMigrateResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRPlaybackSessionMigrateRequestProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_MRLyricsItemProtobuf *MRLyricsItemCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(_MRLyricsItemProtobuf);
  [(_MRLyricsItemProtobuf *)v6 setLyrics:a1];
  [(_MRLyricsItemProtobuf *)v6 setUserProvided:a2];
  [(_MRLyricsItemProtobuf *)v6 setToken:a3];
  return v6;
}

void *MRLyricsItemGetLyrics(void *a1)
{
  v1 = [a1 lyrics];

  return v1;
}

void *MRLyricsItemGetToken(void *a1)
{
  v1 = [a1 token];

  return v1;
}

_MRLyricsTokenProtobuf *MRLyricsItemTokenCreate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MSVArchivedDataWithRootObject();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(_MRLyricsTokenProtobuf);
  [(_MRLyricsTokenProtobuf *)v4 setIdentifier:a1];
  [(_MRLyricsTokenProtobuf *)v4 setUserData:v3];
  return v4;
}

_MRLyricsTokenProtobuf *MRLyricsItemTokenCreateWithData(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_MRLyricsTokenProtobuf);
  [(_MRLyricsTokenProtobuf *)v4 setIdentifier:a1];
  [(_MRLyricsTokenProtobuf *)v4 setUserData:a2];
  return v4;
}

void *MRLyricsItemTokenGetIdentifier(void *a1)
{
  v1 = [a1 identifier];

  return v1;
}

void *MRLyricsItemTokenGetUserInfo(void *a1)
{
  v1 = a1;
  v2 = [v1 userData];

  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v4 = [v1 userData];
    v2 = MSVUnarchivedObjectOfClasses();
  }

  return v2;
}

_MRLyricsEventProtobuf *MRLyricsEventCreateBegin(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(_MRLyricsEventProtobuf);
  MEMORY[0x1A58E24C0](a1);
  [(_MRLyricsEventProtobuf *)v4 setStartTime:?];
  [(_MRLyricsEventProtobuf *)v4 setToken:a2];
  return v4;
}

_MRLyricsEventProtobuf *MRLyricsEventCreateEnd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(_MRLyricsEventProtobuf);
  MEMORY[0x1A58E24C0](a1);
  [(_MRLyricsEventProtobuf *)v6 setStartTime:?];
  if (a2)
  {
    MEMORY[0x1A58E24C0](a2);
    [(_MRLyricsEventProtobuf *)v6 setEndTime:?];
  }

  [(_MRLyricsEventProtobuf *)v6 setToken:a3];
  return v6;
}

uint64_t MRLyricsItemTokenCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRLyricsTokenProtobuf alloc];

  return [(_MRLyricsTokenProtobuf *)v2 initWithData:a1];
}

void *MRLyricsEventGetToken(void *a1)
{
  v1 = [a1 token];

  return v1;
}

uint64_t MRLyricsEventCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRLyricsEventProtobuf alloc];

  return [(_MRLyricsEventProtobuf *)v2 initWithData:a1];
}

void MRMediaRemoteSetBeginLyricsEventCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientForOrigin:a1];

  [v5 setBeginLyricsEventCallback:v3];
}

void MRMediaRemoteSetBeginLyricsEventCallbackForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setBeginLyricsEventCallback:v3];
}

void MRMediaRemoteSetEndLyricsEventCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v5 = [v4 originClientForOrigin:a1];

  [v5 setEndLyricsEventCallback:v3];
}

void MRMediaRemoteSetEndLyricsEventCallbackForPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v4 playerClientForPlayerPath:a1];

  v5 = [v6 clientCallbacks];
  [v5 setEndLyricsEventCallback:v3];
}

void MRMediaRemoteRemoteSendLyricsEvent(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [[MRPlayerPath alloc] initWithOrigin:a1 client:a2 player:0];
  MRMediaRemoteRemoteSendLyricsEventForPlayer(v4, a3);
}

void MRMediaRemoteRemoteSendLyricsEventForPlayer(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a2;
    v9 = 2112;
    v10 = a1;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Sending Lyrics Event: %@ for PlayerPath %@", &v7, 0x16u);
  }

  v5 = MRGetSharedService();
  MRMediaRemoteServiceSendLyricsEvent(v5, a1, a2);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A2AE7B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_sync_exit(v24);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Unwind_Resume(a1);
}

id _onClientQueue_MRCreateSectionsForRequest(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _onClientQueue_MRCreateSectionsForRequest_cold_1();
    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_13:
      _onClientQueue_MRCreateSectionsForRequest_cold_3();
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  _onClientQueue_MRCreateSectionsForRequest_cold_2();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_14:
  _onClientQueue_MRCreateSectionsForRequest_cold_4();
LABEL_5:
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v8[2](v8, 0, v10);
  if (v12)
  {
    v13 = v12;
    v14 = 1;
    do
    {
      [v11 addObject:v13];

      v13 = v8[2](v8, v14++, v10);
    }

    while (v13);
  }

  v15 = [v11 copy];

  return v15;
}

id _onQueue_MRCreateSectionsForRequest(void *a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v29 = v7;
  if (!v7)
  {
    _onQueue_MRCreateSectionsForRequest_cold_1();
  }

  v30 = v9;
  if (!v9)
  {
    _onQueue_MRCreateSectionsForRequest_cold_2();
  }

  if (!v10)
  {
    _onQueue_MRCreateSectionsForRequest_cold_3();
  }

  v11 = MRContentItemCopyMinimalReadableDescription(v10);
  v12 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueServiceClient] playbackQueueRequest %{public}@ requesting child item of %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__47;
  v48 = __Block_byref_object_dispose__47;
  v49 = MEMORY[0x1E695E0F0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = *v41;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v41 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v40 + 1) + 8 * v15);
      v17 = [v16 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___onQueue_MRCreateSectionsForRequest_block_invoke;
      block[3] = &unk_1E76A42C8;
      block[4] = v16;
      v36 = v10;
      v39 = buf;
      v37 = v7;
      v38 = v30;
      dispatch_sync(v17, block);

      LOBYTE(v17) = *(*&buf[8] + 40) == 0;
      if ((v17 & 1) == 0)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = *(*&buf[8] + 40);
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v19)
  {
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        Identifier = MRContentItemGetIdentifier(v10);
        MRContentItemSetParentIdentifier(v22, Identifier);
        AncestorIdentifier = MRContentItemGetAncestorIdentifier(v10);
        MRContentItemSetAncestorIdentifier(v22, AncestorIdentifier);
      }

      v19 = [v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  v25 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

MRPlaybackQueue *_onClientQueue_MRCreatePlaybackQueueForOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    _onClientQueue_MRCreatePlaybackQueueForOffset_cold_1();
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a2];
  for (i = 0; a2; --a2)
  {
    v8 = v5[2](v5, a1);
    v9 = [v6 count];
    if (v8)
    {
      if (!v9)
      {
        i = a1;
      }

      [v6 addObject:v8];
    }

    else if (v9)
    {
      break;
    }

    ++a1;
  }

  v10 = [[MRPlaybackQueue alloc] initWithContentItems:v6 location:i];

  return v10;
}

id _onQueue_MRCreatePlaybackQueueForOffset(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v19 = a2;
  if (!v3)
  {
    _onQueue_MRCreatePlaybackQueueForOffset_cold_1();
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__47;
  v30 = __Block_byref_object_dispose__47;
  v31 = 0;
  v4 = [v3 range];
  v6 = v5;
  v18 = v3;
  if (v5)
  {
    v7 = v4;
    v20 = 0;
    while (1)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = v19;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:{16, v18}];
      if (v9)
      {
        v10 = *v23;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = [v12 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___onQueue_MRCreatePlaybackQueueForOffset_block_invoke;
          block[3] = &unk_1E76A42F0;
          block[4] = v12;
          block[5] = &v26;
          block[6] = v20 + v7;
          block[7] = v7;
          block[8] = v6;
          dispatch_sync(v13, block);

          if (v27[5])
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      v14 = v27[5];
      if (v14)
      {
        break;
      }

      if (++v20 == v6)
      {
        v14 = 0;
        break;
      }
    }
  }

  else
  {
    v14 = v27[5];
  }

  v15 = v14;
  _Block_object_dispose(&v26, 8);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

MRPlaybackQueue *_onQueue_MRCreatePlaybackQueueForIdentifier(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v28 = a2;
  if (!v3)
  {
    _onQueue_MRCreatePlaybackQueueForIdentifier_cold_1();
  }

  v25 = v3;
  v4 = [v3 contentItemIdentifiers];
  v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v7 = v28;
  if (v6)
  {
    v8 = v6;
    v9 = *v40;
    v26 = *MEMORY[0x1E695E480];
    v27 = *v40;
    do
    {
      v10 = 0;
      v29 = v8;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        if ([v7 count])
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v12 = v7;
          v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v13)
          {
            v14 = v13;
            v31 = v10;
            v15 = *v36;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v36 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v35 + 1) + 8 * i);
                v18 = [v17 block];
                v19 = [v17 queue];
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = ___onQueue_MRCreatePlaybackQueueForIdentifier_block_invoke;
                block[3] = &unk_1E769AC18;
                v34 = v18;
                block[4] = v11;
                v33 = v5;
                v20 = v18;
                dispatch_sync(v19, block);
              }

              v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v14);
            v9 = v27;
            v7 = v28;
            v8 = v29;
            v10 = v31;
          }
        }

        else
        {
          v12 = MRContentItemCreate(v26, v11);
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  v21 = [[MRPlaybackQueue alloc] initWithContentItems:v5];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void _MREnqueueAndHandlePlaybackQueueRequest(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = +[MRUserSettings currentSettings];
  v10 = [v9 verbosePlaybackQueueRequestLogging];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AD60]);
    v12 = [v6 requestIdentifier];
    v13 = [v11 initWithFormat:@"%@<%@>", @"MREnqueueAndHandlePlaybackQueueRequest", v12];

    if (v5)
    {
      [v13 appendFormat:@" for %@", v5];
    }

    v14 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
    }
  }

  if (!v5)
  {
    _MREnqueueAndHandlePlaybackQueueRequest_cold_1();
  }

  if (!v6)
  {
    _MREnqueueAndHandlePlaybackQueueRequest_cold_2();
  }

  if (!v7)
  {
    _MREnqueueAndHandlePlaybackQueueRequest_cold_3();
  }

  if (([v5 isResolved] & 1) == 0)
  {
    _MREnqueueAndHandlePlaybackQueueRequest_cold_4();
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke;
  v52[3] = &unk_1E769FD28;
  v15 = v6;
  v53 = v15;
  v16 = v8;
  v54 = v16;
  v17 = v7;
  v55 = v17;
  v18 = MEMORY[0x1A58E3570](v52);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__47;
  v59 = __Block_byref_object_dispose__47;
  v60 = 0;
  v19 = +[MRNowPlayingOriginClientManager sharedManager];
  v20 = [v19 playbackQueueDataSourceOperationQueue];

  v21 = objc_alloc(MEMORY[0x1E69B14D8]);
  v22 = dispatch_get_global_queue(21, 0);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_108;
  v49[3] = &unk_1E769C018;
  v51 = 0x401C000000000000;
  v23 = v15;
  v50 = v23;
  v24 = [v21 initWithInterval:0 repeats:v22 queue:v49 block:7.0];

  v25 = objc_alloc(MEMORY[0x1E69B14D8]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_109;
  v46[3] = &unk_1E76A4368;
  p_buf = &buf;
  v26 = v18;
  v47 = v26;
  v27 = [v25 initWithInterval:0 repeats:v22 queue:v46 block:30.0];

  v28 = [MROperation alloc];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_2;
  v40[3] = &unk_1E76A4390;
  v29 = v24;
  v41 = v29;
  v30 = v27;
  v42 = v30;
  v31 = v5;
  v43 = v31;
  v32 = v23;
  v44 = v32;
  v33 = v26;
  v45 = v33;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = ___MREnqueueAndHandlePlaybackQueueRequest_block_invoke_4;
  v38[3] = &unk_1E76A43E0;
  v34 = v20;
  v39 = v34;
  v35 = [(MROperation *)v28 initWithBlock:v40 completionHandler:v38];
  v36 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v35;

  [v34 addOperation:*(*(&buf + 1) + 40)];
  _Block_object_dispose(&buf, 8);

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t _MRPlaybackQueueContextProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MR_NSStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&a1, 17, *&a2, 17, *&a3, 17, *&a4);

  return v4;
}

uint64_t _MRTransactionPacketsProtobufReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRTransactionPacketProtobuf);
        [a1 addPackets:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRTransactionPacketProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2AF0AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t _MRAudioStreamPacketDescriptionProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 20;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initPCProgressEvent()
{
  if (ProximityControlLibrary_sOnce != -1)
  {
    initPCProgressEvent_cold_1();
  }

  result = objc_getClass("PCProgressEvent");
  classPCProgressEvent = result;
  getPCProgressEventClass = PCProgressEventFunction;
  return result;
}

void *__ProximityControlLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ProximityControl.framework/ProximityControl", 2);
  ProximityControlLibrary_sLib = result;
  return result;
}

Class initPCMediaRemoteDisplayContext()
{
  if (ProximityControlLibrary_sOnce != -1)
  {
    initPCProgressEvent_cold_1();
  }

  result = objc_getClass("PCMediaRemoteDisplayContext");
  classPCMediaRemoteDisplayContext = result;
  getPCMediaRemoteDisplayContextClass = PCMediaRemoteDisplayContextFunction;
  return result;
}

uint64_t _MRPlaybackSessionMigratePostMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_MRPlaybackSessionMigrateRequestProtobuf);
          objc_storeStrong((a1 + 32), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !_MRPlaybackSessionMigrateRequestProtobufReadFrom(v14, a2))
          {
LABEL_42:

            return 0;
          }

LABEL_35:
          PBReaderRecallMark();
LABEL_36:

          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
          objc_storeStrong((a1 + 24), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v14 = *(a1 + 40);
            *(a1 + 40) = v15;
            goto LABEL_36;
          case 4:
            v14 = objc_alloc_init(_MRDictionaryProtobuf);
            objc_storeStrong((a1 + 16), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !_MRDictionaryProtobufReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_35;
          case 5:
            v14 = objc_alloc_init(_MRErrorProtobuf);
            objc_storeStrong((a1 + 8), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRTransactionKeyProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRTransactionKeyProtobuf__identifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRTransactionKeyProtobuf__userData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendHIDReportMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRSendHIDReportMessageProtobuf__virtualDeviceID;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRSendHIDReportMessageProtobuf__report;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRRemovePlayerMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v13->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_MRDiagnosticProtobuf *MRDiagnosticCreate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    MRDiagnosticCreate_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    MRDiagnosticCreate_cold_2();
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = objc_alloc_init(_MRDiagnosticProtobuf);
  MEMORY[0x1A58E24C0](a1);
  [(_MRDiagnosticProtobuf *)v4 setDateGenerated:?];
  [(_MRDiagnosticProtobuf *)v4 setDiagnosticInfo:a2];
  return v4;
}

uint64_t MRDiagnosticCreateFromExternalRepresentation(uint64_t a1)
{
  v2 = [_MRDiagnosticProtobuf alloc];

  return [(_MRDiagnosticProtobuf *)v2 initWithData:a1];
}

uint64_t MRDiagnosticCreateExternalRepresentation(void *a1)
{
  v1 = [a1 data];
  v2 = [v1 copy];

  return v2;
}

CFDateRef MRDiagnosticCopyDateCreated(void *a1)
{
  v1 = *MEMORY[0x1E695E480];
  [a1 dateGenerated];

  return CFDateCreate(v1, v2);
}

uint64_t MRDiagnosticCopyInfo(void *a1)
{
  v1 = [a1 diagnosticInfo];
  v2 = [v1 copy];

  return v2;
}

void MRMediaRemoteCollectDiagnostic(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceCollectDiagnostic(v4, v5, v3);
}

void MRMediaRemoteCollectClientDiagnostics(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = MRGetSharedService();
  MRMediaRemoteServiceCollectClientDiagnostics(v4, v5, v3);
}

uint64_t _MRCryptoPairingMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_76;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v48 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v48 & 0x7F) << v21;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_74:
          v44 = 20;
          goto LABEL_75;
        }

        v40 = PBReaderReadData();
        v41 = *(a1 + 8);
        *(a1 + 8) = v40;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v50 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v50 & 0x7F) << v27;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                LOBYTE(v33) = 0;
                goto LABEL_63;
              }
            }

            v33 = (v29 != 0) & ~[a2 hasError];
LABEL_63:
            v43 = 24;
            break;
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v49 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v49 & 0x7F) << v34;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                LOBYTE(v33) = 0;
                goto LABEL_65;
              }
            }

            v33 = (v36 != 0) & ~[a2 hasError];
LABEL_65:
            v43 = 25;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v47 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v14;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_70:
            v44 = 16;
LABEL_75:
            *(a1 + v44) = v20;
            goto LABEL_76;
          default:
            goto LABEL_60;
        }

        *(a1 + v43) = v33;
      }

LABEL_76:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}