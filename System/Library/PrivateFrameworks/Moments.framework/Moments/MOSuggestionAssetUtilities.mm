@interface MOSuggestionAssetUtilities
+ (id)imageFromURL:(id)l;
+ (id)unwrappeCombinedWorkoutObjectFrom:(id)from;
+ (id)unwrappedContactPhotoFrom:(id)from;
+ (id)unwrappedMediaItemFrom:(id)from;
+ (id)unwrappedMotionActivityFrom:(id)from;
+ (id)unwrappedStateOfMindFrom:(id)from;
+ (id)unwrappedWorkoutObjectFrom:(id)from;
@end

@implementation MOSuggestionAssetUtilities

+ (id)imageFromURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
    if (v4)
    {
      v5 = [MEMORY[0x277D755B8] imageWithData:v4];
      v6 = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v6;
      }

      else
      {
        v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [MOSuggestionAssetUtilities imageFromURL:lCopy];
        }

        v7 = 0;
      }
    }

    else
    {
      v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities imageFromURL:lCopy];
      }

      v7 = 0;
    }
  }

  else
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities imageFromURL:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)unwrappedMotionActivityFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  v5 = content;
  if (content)
  {
    constructedImage = [content constructedImage];
    if (constructedImage)
    {
      v7 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v9 = [(MOSuggestionAsset *)v7 init:constructedImage type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v9 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v9 addMetadata:metadata];

      v12 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 debugDescription];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, url=%@", &v16, 0xCu);
      }
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities unwrappedMotionActivityFrom:v5];
      }

      v9 = 0;
    }
  }

  else
  {
    constructedImage = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(constructedImage, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMotionActivityFrom:];
    }

    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)unwrappedMediaItemFrom:(id)from
{
  v30 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  v5 = content;
  if (content && ([content imageURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    imageURL = [v5 imageURL];
    v8 = [MOSuggestionAssetUtilities imageFromURL:imageURL];

    if (v8)
    {
      v27 = [MOSuggestionAssetMediaItem alloc];
      title = [v5 title];
      albumTitle = [v5 albumTitle];
      artistName = [v5 artistName];
      trackIdentifier = [v5 trackIdentifier];
      previewURL = [v5 previewURL];
      mediaType = [v5 mediaType];
      bgColor = [v5 bgColor];
      v16 = -[MOSuggestionAssetMediaItem initTitle:albumTitle:artistName:albumArt:trackIdentifier:previewURL:mediaType:imageURL:bgColor:bgColorVariant:](v27, "initTitle:albumTitle:artistName:albumArt:trackIdentifier:previewURL:mediaType:imageURL:bgColor:bgColorVariant:", title, albumTitle, artistName, v8, trackIdentifier, previewURL, mediaType, 0, bgColor, [v5 bgColorVariant]);

      v17 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v19 = [(MOSuggestionAsset *)v17 init:v16 type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v19 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v19 addMetadata:metadata];

      v22 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        imageURL2 = [v5 imageURL];
        v24 = [imageURL2 debugDescription];
        *buf = 138412290;
        v29 = v24;
        _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, mediaArtURL=%@", buf, 0xCu);
      }
    }

    else
    {
      v16 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[MOSuggestionAssetUtilities unwrappedMediaItemFrom:];
      }

      v19 = 0;
    }
  }

  else
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMediaItemFrom:];
    }

    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)unwrappeCombinedWorkoutObjectFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  if (content)
  {
    v5 = [MOSuggestionAssetUtilities imageFromURL:content];
    if (v5)
    {
      v6 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v8 = [(MOSuggestionAsset *)v6 init:v5 type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v8 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v8 addMetadata:metadata];

      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [content debugDescription];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, url=%@", &v15, 0xCu);
      }
    }

    else
    {
      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities unwrappeCombinedWorkoutObjectFrom:content];
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMotionActivityFrom:];
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)unwrappedWorkoutObjectFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  route = [content route];

  if (route)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEFAULT, "Route Only Pass Through", &v25, 2u);
    }

    v7 = fromCopy;
  }

  else if (content && ([content iconURL], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    iconURL = [content iconURL];
    v10 = [MOSuggestionAssetUtilities imageFromURL:iconURL];

    if (v10)
    {
      v11 = [MOSuggestionAssetWorkout alloc];
      activityRings = [content activityRings];
      route2 = [content route];
      v14 = [(MOSuggestionAssetWorkout *)v11 init:activityRings route:route2 icon:v10];

      v15 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v7 = [(MOSuggestionAsset *)v15 init:v14 type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v7 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v7 addMetadata:metadata];

      v19 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        iconURL2 = [content iconURL];
        v21 = [iconURL2 debugDescription];
        v25 = 138412290;
        v26 = v21;
        _os_log_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, iconURL=%@", &v25, 0xCu);
      }
    }

    else
    {
      v14 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[MOSuggestionAssetUtilities unwrappedMediaItemFrom:];
      }

      v7 = 0;
    }
  }

  else
  {
    v22 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedWorkoutObjectFrom:];
    }

    v7 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)unwrappedContactPhotoFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  if (content)
  {
    v5 = [MOSuggestionAssetUtilities imageFromURL:content];
    if (v5)
    {
      v6 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v8 = [(MOSuggestionAsset *)v6 init:v5 type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v8 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v8 addMetadata:metadata];

      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [content debugDescription];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, photoUrl=%@", &v15, 0xCu);
      }
    }

    else
    {
      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities unwrappedContactPhotoFrom:content];
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMotionActivityFrom:];
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)unwrappedStateOfMindFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  content = [fromCopy content];
  v5 = content;
  if (content)
  {
    constructedImage = [content constructedImage];
    if (constructedImage)
    {
      v7 = [MOSuggestionAsset alloc];
      assetType = [fromCopy assetType];
      v9 = [(MOSuggestionAsset *)v7 init:constructedImage type:assetType contentClassType:objc_opt_class()];

      identifier = [fromCopy identifier];
      [v9 addIdentifier:identifier];

      metadata = [fromCopy metadata];
      [v9 addMetadata:metadata];

      v12 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 debugDescription];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEFAULT, "Unwrapping successful, url=%@", &v16, 0xCu);
      }
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities unwrappedStateOfMindFrom:v5];
      }

      v9 = 0;
    }
  }

  else
  {
    constructedImage = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(constructedImage, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMotionActivityFrom:];
    }

    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)imageFromURL:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Unwrapping failed, bad image data, url=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)imageFromURL:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Unwrapping failed, URL data nil, url=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)imageFromURL:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [0 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v1, v2, "Unwrapping failed, URL nil, url=%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)unwrappedMotionActivityFrom:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Failed to construct motion activity image, url=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)unwrappeCombinedWorkoutObjectFrom:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Failed to construct combined workout glyph image, url=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)unwrappedContactPhotoFrom:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Failed to construct contact photo image, photoUrl=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)unwrappedStateOfMindFrom:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_9(&dword_22D8C5000, v2, v3, "Failed to construct state of mind image, url=%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end