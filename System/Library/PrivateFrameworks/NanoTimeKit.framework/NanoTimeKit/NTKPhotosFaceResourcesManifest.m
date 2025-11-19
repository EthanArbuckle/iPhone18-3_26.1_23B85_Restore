@interface NTKPhotosFaceResourcesManifest
- (BOOL)_imageListItemContainsValidImage:(id)a3;
- (BOOL)_imageListItemContainsValidIrisVideo:(id)a3;
- (BOOL)_imageListItemHasValidAnalysisValues:(id)a3;
- (BOOL)_imageListItemHasValidCropValues:(id)a3;
- (BOOL)didLoadRawManifest:(id)a3;
- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4;
@end

@implementation NTKPhotosFaceResourcesManifest

- (BOOL)didLoadRawManifest:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"assetCollection"];
  assetCollectionIdentifier = self->_assetCollectionIdentifier;
  self->_assetCollectionIdentifier = v4;

  if (!self->_assetCollectionIdentifier)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [NTKPhotosFaceResourcesManifest didLoadRawManifest:?];
  }

  return 0;
}

- (BOOL)validateImageListItem:(id)a3 withError:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"localIdentifier"];
  if (!v6 || (v7 = v6, [v5 objectForKeyedSubscript:@"localIdentifier"], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, v7, (isKindOfClass & 1) == 0))
  {
    v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
      v24 = [v23 lastPathComponent];
      v25 = [v5 objectForKeyedSubscript:@"localIdentifier"];
      v26 = 138412546;
      v27 = v24;
      v28 = 2112;
      v29 = v25;
      _os_log_error_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid image list item identifier '%@'.", &v26, 0x16u);
    }

    goto LABEL_15;
  }

  v10 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
    v12 = [v11 lastPathComponent];
    v13 = [v5 objectForKeyedSubscript:@"localIdentifier"];
    v26 = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: validating image list item: %@", &v26, 0x16u);
  }

  if (![(NTKPhotosFaceResourcesManifest *)self _imageListItemContainsValidImage:v5])
  {
    goto LABEL_15;
  }

  v14 = [v5 objectForKeyedSubscript:@"isIris"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
      v18 = [v17 lastPathComponent];
      v19 = [v5 objectForKeyedSubscript:@"localIdentifier"];
      v26 = 138412546;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "[SANITIZER:%@]: image list item '%@' includes iris video.", &v26, 0x16u);
    }

    if (![(NTKPhotosFaceResourcesManifest *)self _imageListItemContainsValidIrisVideo:v5])
    {
      goto LABEL_15;
    }
  }

  if (![(NTKPhotosFaceResourcesManifest *)self _imageListItemHasValidCropValues:v5])
  {
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v20 = [(NTKPhotosFaceResourcesManifest *)self _imageListItemHasValidAnalysisValues:v5];
LABEL_16:

  return v20;
}

- (BOOL)_imageListItemContainsValidImage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"imageURL"];
  if (v5 && (v6 = v5, [v4 objectForKeyedSubscript:@"imageURL"], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    v9 = [v4 objectForKeyedSubscript:@"imageURL"];
    if ([(NTKBasePhotoResourcesManifest *)self resourceWithName:v9 isValidMediaAssetOfType:&unk_284189FA0 withMinFileSize:1000 maxFileSize:2000000])
    {
      v10 = [(NTKBasePhotoResourcesManifest *)self resourceWithNameIsValidImage:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
      v14 = [v13 lastPathComponent];
      v15 = [v4 objectForKeyedSubscript:@"imageURL"];
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = @"imageURL";
      _os_log_error_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid value: %@ for key: %@", &v16, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_imageListItemContainsValidIrisVideo:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"irisVideoURL"];
  if (v5 && (v6 = v5, [v4 objectForKeyedSubscript:@"irisVideoURL"], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v8 = objc_opt_isKindOfClass(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [v4 objectForKeyedSubscript:@"irisVideoURL"];
    if ([(NTKBasePhotoResourcesManifest *)self resourceWithName:v9 isValidMediaAssetOfType:&unk_284189FB8 withMinFileSize:10000 maxFileSize:4000000])
    {
      v10 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
      v11 = [v10 URLByAppendingPathComponent:v9 isDirectory:0];

      v12 = MEMORY[0x277CE6650];
      v56 = *MEMORY[0x277CE6240];
      v57[0] = MEMORY[0x277CBEC38];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v14 = [v12 URLAssetWithURL:v11 options:v13];

      if (([v14 isPlayable] & 1) == 0)
      {
        v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(NTKPhotosFaceResourcesManifest *)self _imageListItemContainsValidIrisVideo:v11];
        }

        goto LABEL_21;
      }

      v15 = [v14 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
      v16 = [v15 firstObject];

      if (!v16)
      {
        v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(NTKPhotosFaceResourcesManifest *)self _imageListItemContainsValidIrisVideo:v11];
        }

        goto LABEL_20;
      }

      [v16 naturalSize];
      if (v17 < 1.0 || ([v16 naturalSize], v18 < 1.0) || ([v16 naturalSize], v19 > 1920.0) || ([v16 naturalSize], v20 > 1920.0))
      {
        v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
          v23 = [v22 lastPathComponent];
          [v16 naturalSize];
          v24 = NSStringFromCGSize(v58);
          v25 = [v11 path];
          LODWORD(buf.value) = 138412802;
          *(&buf.value + 4) = v23;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = v24;
          HIWORD(buf.epoch) = 2112;
          v53 = v25;
          _os_log_error_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: unexpected iris video dimensions '%@' at path '%@'", &buf, 0x20u);
        }

        goto LABEL_20;
      }

      if (v14)
      {
        [v14 duration];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      Seconds = CMTimeGetSeconds(&buf);
      v32 = [v4 objectForKeyedSubscript:@"irisDuration"];
      if (v32 && (v33 = v32, [v4 objectForKeyedSubscript:@"irisDuration"], v34 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v35 = objc_opt_isKindOfClass(), v34, v33, (v35 & 1) != 0))
      {
        v36 = [v4 objectForKeyedSubscript:@"irisStillDisplayTime"];
        if (v36)
        {
          v37 = v36;
          v38 = [v4 objectForKeyedSubscript:@"irisStillDisplayTime"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v40 = [v4 objectForKeyedSubscript:@"irisDuration"];
            [v40 doubleValue];
            v42 = v41;

            v43 = [v4 objectForKeyedSubscript:@"irisStillDisplayTime"];
            [v43 doubleValue];
            v45 = v44;

            if (v42 <= 0.0 || v42 >= 10.0 || vabdd_f64(Seconds, v42) >= 0.100000001)
            {
              v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              v46 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
              v49 = [v46 lastPathComponent];
              v50 = [v11 path];
              LODWORD(buf.value) = 138413058;
              *(&buf.value + 4) = v49;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = v50;
              HIWORD(buf.epoch) = 2048;
              v53 = *&Seconds;
              v54 = 2048;
              v55 = v42;
              v51 = "[SANITIZER:%@]: iris video '%@' has unexpected duration. Actual: %f, encoded: %f";
            }

            else
            {
              if (v45 > 0.0 && v45 < Seconds)
              {
                v26 = 1;
                goto LABEL_22;
              }

              v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_20;
              }

              v46 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
              v49 = [v46 lastPathComponent];
              v50 = [v11 path];
              LODWORD(buf.value) = 138413058;
              *(&buf.value + 4) = v49;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = v50;
              HIWORD(buf.epoch) = 2048;
              v53 = *&v45;
              v54 = 2048;
              v55 = Seconds;
              v51 = "[SANITIZER:%@]: iris video '%@' has unexpected still dislplay time: %f. Actual Duration: %f";
            }

            _os_log_error_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_ERROR, v51, &buf, 0x2Au);

            goto LABEL_40;
          }
        }

        v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_39:
          v46 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
          v47 = [v46 lastPathComponent];
          v48 = [v4 objectForKeyedSubscript:@"irisDuration"];
          LODWORD(buf.value) = 138412802;
          *(&buf.value + 4) = v47;
          LOWORD(buf.flags) = 2112;
          *(&buf.flags + 2) = v48;
          HIWORD(buf.epoch) = 2112;
          v53 = @"irisDuration";
          _os_log_error_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid value: %@ for key: %@", &buf, 0x20u);

LABEL_40:
        }
      }

      else
      {
        v21 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }
      }

LABEL_20:

LABEL_21:
      v26 = 0;
LABEL_22:

      goto LABEL_15;
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
      v29 = [v28 lastPathComponent];
      v30 = [v4 objectForKeyedSubscript:@"irisVideoURL"];
      LODWORD(buf.value) = 138412802;
      *(&buf.value + 4) = v29;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v30;
      HIWORD(buf.epoch) = 2112;
      v53 = @"irisVideoURL";
      _os_log_error_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid value: %@ for key: %@", &buf, 0x20u);
    }
  }

  v26 = 0;
LABEL_15:

  return v26;
}

- (BOOL)_imageListItemHasValidCropValues:(id)a3
{
  v38 = self;
  v57[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v57[0] = @"cropH";
  v57[1] = @"cropW";
  v57[2] = @"cropX";
  v57[3] = @"cropY";
  [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v38}];
        v13 = 1;
        if (v9)
        {
          v10 = v9;
          v11 = [v3 objectForKeyedSubscript:v8];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = 0;
          }
        }

        v14 = [v3 objectForKeyedSubscript:v8];
        [v14 floatValue];
        v16 = v15;

        if (((fabsf(v16) != INFINITY) & ~v13) == 0)
        {
          v18 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v32 = [(NTKBasePhotoResourcesManifest *)v38 resourceDirectoryURL];
            v33 = [v32 lastPathComponent];
            v34 = [v3 objectForKeyedSubscript:v8];
            *buf = 138412802;
            v51 = v33;
            v52 = 2112;
            v53 = v34;
            v54 = 2112;
            v55 = v8;
            _os_log_error_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid crop value: %@ for key: %@", buf, 0x20u);
          }

          v28 = 0;
          v17 = obj;
          v29 = obj;
          goto LABEL_31;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v17 = obj;

  v49[0] = @"originalCropH";
  v49[1] = @"originalCropW";
  v49[2] = @"originalCropX";
  v49[3] = @"originalCropY";
  [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v43 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v40 + 1) + 8 * j);
        v24 = [v3 objectForKeyedSubscript:{v23, v38}];
        if (v24)
        {
          v25 = v24;
          v26 = [v3 objectForKeyedSubscript:v23];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          if (v27)
          {
            continue;
          }
        }

        v30 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v35 = [(NTKBasePhotoResourcesManifest *)v38 resourceDirectoryURL];
          v36 = [v35 lastPathComponent];
          v37 = [v3 objectForKeyedSubscript:v23];
          *buf = 138412802;
          v51 = v36;
          v52 = 2112;
          v53 = v37;
          v54 = 2112;
          v55 = v23;
          _os_log_error_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid crop value: %@ for key: %@", buf, 0x20u);
        }

        v28 = 0;
        goto LABEL_29;
      }

      v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
      v28 = 1;
      if (v20)
      {
        continue;
      }

      break;
    }

LABEL_29:
    v29 = v18;
    v17 = obj;
  }

  else
  {
    v28 = 1;
    v29 = v18;
  }

LABEL_31:

  return v28;
}

- (BOOL)_imageListItemHasValidAnalysisValues:(id)a3
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v51[0] = @"topAnalysis";
  v51[1] = @"bottomAnalysis";
  v51[2] = @"leftAnalysis";
  v51[3] = @"rightAnalysis";
  [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v41 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [NTKPhotoAnalysis isValidDictionary:v10];

        if (!v11)
        {
          v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v26 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
            v27 = [v26 lastPathComponent];
            v28 = [v3 objectForKeyedSubscript:v9];
            *buf = 138412802;
            v45 = v27;
            v46 = 2112;
            v47 = v28;
            v48 = 2112;
            v49 = v9;
            _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid analysis dictionary: %@ for key: %@", buf, 0x20u);
          }

          v22 = 0;
          v23 = v4;
          goto LABEL_27;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v43[0] = @"fastAnalysis";
  v43[1] = @"slowAnalysis";
  v43[2] = @"insideAnalysis";
  v43[3] = @"outsideAnalysis";
  v43[4] = @"upAnalysis";
  v43[5] = @"downAnalysis";
  v43[6] = @"northAnalysis";
  v43[7] = @"southAnalysis";
  [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v37 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = v4;
    v15 = *v35;
    while (2)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * j);
        v18 = [v3 objectForKeyedSubscript:{v17, v32}];
        if (v18)
        {
          v19 = v18;
          v20 = [v3 objectForKeyedSubscript:v17];
          v21 = [NTKPhotoAnalysis isValidDictionary:v20];

          if (!v21)
          {
            v24 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v29 = [(NTKBasePhotoResourcesManifest *)self resourceDirectoryURL];
              v30 = [v29 lastPathComponent];
              v31 = [v3 objectForKeyedSubscript:v17];
              *buf = 138412802;
              v45 = v30;
              v46 = 2112;
              v47 = v31;
              v48 = 2112;
              v49 = v17;
              _os_log_error_impl(&dword_22D9C5000, v24, OS_LOG_TYPE_ERROR, "[SANITIZER:%@]: invalid analysis dictionary: %@ for key: %@", buf, 0x20u);
            }

            v22 = 0;
            goto LABEL_25;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
      v22 = 1;
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_25:
    v23 = v12;
    v4 = v32;
  }

  else
  {
    v22 = 1;
    v23 = v12;
  }

LABEL_27:

  return v22;
}

- (void)didLoadRawManifest:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 resourceDirectoryURL];
  v7 = [v1 lastPathComponent];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_imageListItemContainsValidIrisVideo:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 resourceDirectoryURL];
  v4 = [v3 lastPathComponent];
  v5 = [a2 path];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

@end