@interface MOSuggestionAssetUtilities
+ (id)imageFromURL:(id)a3;
+ (id)unwrappeCombinedWorkoutObjectFrom:(id)a3;
+ (id)unwrappedContactPhotoFrom:(id)a3;
+ (id)unwrappedMediaItemFrom:(id)a3;
+ (id)unwrappedMotionActivityFrom:(id)a3;
+ (id)unwrappedStateOfMindFrom:(id)a3;
+ (id)unwrappedWorkoutObjectFrom:(id)a3;
@end

@implementation MOSuggestionAssetUtilities

+ (id)imageFromURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
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
          [MOSuggestionAssetUtilities imageFromURL:v3];
        }

        v7 = 0;
      }
    }

    else
    {
      v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MOSuggestionAssetUtilities imageFromURL:v3];
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

+ (id)unwrappedMotionActivityFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 constructedImage];
    if (v6)
    {
      v7 = [MOSuggestionAsset alloc];
      v8 = [v3 assetType];
      v9 = [(MOSuggestionAsset *)v7 init:v6 type:v8 contentClassType:objc_opt_class()];

      v10 = [v3 identifier];
      [v9 addIdentifier:v10];

      v11 = [v3 metadata];
      [v9 addMetadata:v11];

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
    v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MOSuggestionAssetUtilities unwrappedMotionActivityFrom:];
    }

    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)unwrappedMediaItemFrom:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  v5 = v4;
  if (v4 && ([v4 imageURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 imageURL];
    v8 = [MOSuggestionAssetUtilities imageFromURL:v7];

    if (v8)
    {
      v27 = [MOSuggestionAssetMediaItem alloc];
      v9 = [v5 title];
      v10 = [v5 albumTitle];
      v11 = [v5 artistName];
      v12 = [v5 trackIdentifier];
      v13 = [v5 previewURL];
      v14 = [v5 mediaType];
      v15 = [v5 bgColor];
      v16 = -[MOSuggestionAssetMediaItem initTitle:albumTitle:artistName:albumArt:trackIdentifier:previewURL:mediaType:imageURL:bgColor:bgColorVariant:](v27, "initTitle:albumTitle:artistName:albumArt:trackIdentifier:previewURL:mediaType:imageURL:bgColor:bgColorVariant:", v9, v10, v11, v8, v12, v13, v14, 0, v15, [v5 bgColorVariant]);

      v17 = [MOSuggestionAsset alloc];
      v18 = [v3 assetType];
      v19 = [(MOSuggestionAsset *)v17 init:v16 type:v18 contentClassType:objc_opt_class()];

      v20 = [v3 identifier];
      [v19 addIdentifier:v20];

      v21 = [v3 metadata];
      [v19 addMetadata:v21];

      v22 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v5 imageURL];
        v24 = [v23 debugDescription];
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

+ (id)unwrappeCombinedWorkoutObjectFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  if (v4)
  {
    v5 = [MOSuggestionAssetUtilities imageFromURL:v4];
    if (v5)
    {
      v6 = [MOSuggestionAsset alloc];
      v7 = [v3 assetType];
      v8 = [(MOSuggestionAsset *)v6 init:v5 type:v7 contentClassType:objc_opt_class()];

      v9 = [v3 identifier];
      [v8 addIdentifier:v9];

      v10 = [v3 metadata];
      [v8 addMetadata:v10];

      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 debugDescription];
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
        [MOSuggestionAssetUtilities unwrappeCombinedWorkoutObjectFrom:v4];
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

+ (id)unwrappedWorkoutObjectFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  v5 = [v4 route];

  if (v5)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEFAULT, "Route Only Pass Through", &v25, 2u);
    }

    v7 = v3;
  }

  else if (v4 && ([v4 iconURL], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v4 iconURL];
    v10 = [MOSuggestionAssetUtilities imageFromURL:v9];

    if (v10)
    {
      v11 = [MOSuggestionAssetWorkout alloc];
      v12 = [v4 activityRings];
      v13 = [v4 route];
      v14 = [(MOSuggestionAssetWorkout *)v11 init:v12 route:v13 icon:v10];

      v15 = [MOSuggestionAsset alloc];
      v16 = [v3 assetType];
      v7 = [(MOSuggestionAsset *)v15 init:v14 type:v16 contentClassType:objc_opt_class()];

      v17 = [v3 identifier];
      [v7 addIdentifier:v17];

      v18 = [v3 metadata];
      [v7 addMetadata:v18];

      v19 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v4 iconURL];
        v21 = [v20 debugDescription];
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

+ (id)unwrappedContactPhotoFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  if (v4)
  {
    v5 = [MOSuggestionAssetUtilities imageFromURL:v4];
    if (v5)
    {
      v6 = [MOSuggestionAsset alloc];
      v7 = [v3 assetType];
      v8 = [(MOSuggestionAsset *)v6 init:v5 type:v7 contentClassType:objc_opt_class()];

      v9 = [v3 identifier];
      [v8 addIdentifier:v9];

      v10 = [v3 metadata];
      [v8 addMetadata:v10];

      v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 debugDescription];
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
        [MOSuggestionAssetUtilities unwrappedContactPhotoFrom:v4];
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

+ (id)unwrappedStateOfMindFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 content];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 constructedImage];
    if (v6)
    {
      v7 = [MOSuggestionAsset alloc];
      v8 = [v3 assetType];
      v9 = [(MOSuggestionAsset *)v7 init:v6 type:v8 contentClassType:objc_opt_class()];

      v10 = [v3 identifier];
      [v9 addIdentifier:v10];

      v11 = [v3 metadata];
      [v9 addMetadata:v11];

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
    v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
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