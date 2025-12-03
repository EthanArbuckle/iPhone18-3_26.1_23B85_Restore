@interface VCPParallaxAnalyzer
- (VCPParallaxAnalyzer)initWithOptions:(id)options andExistingResults:(id)results;
- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results;
- (int)exportWallpaperForAsset:(id)asset withOptions:(id)options cancel:(id)cancel results:(id *)results;
- (int)upgradeWallPaperAtURL:(id)l toURL:(id)rL cancel:(id)cancel results:(id *)results;
@end

@implementation VCPParallaxAnalyzer

- (VCPParallaxAnalyzer)initWithOptions:(id)options andExistingResults:(id)results
{
  v57 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  resultsCopy = results;
  v54.receiver = self;
  v54.super_class = VCPParallaxAnalyzer;
  v43 = [(VCPParallaxAnalyzer *)&v54 init];
  if (v43)
  {
    v41 = [optionsCopy mutableCopy];
    v6 = [resultsCopy objectForKeyedSubscript:@"PetsResults"];
    v7 = v6 == 0;

    if (!v7)
    {
      array = [MEMORY[0x1E695DF70] array];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v9 = [resultsCopy objectForKeyedSubscript:@"PetsResults"];
      v10 = [v9 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v10)
      {
        v11 = *v51;
        v12 = MEMORY[0x1E695F058];
        do
        {
          v13 = 0;
          do
          {
            if (*v51 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v50 + 1) + 8 * v13) objectForKeyedSubscript:{@"attributes", optionsCopy}];
            v15 = [v14 objectForKeyedSubscript:@"petsBounds"];
            v58 = NSRectFromString(v15);
            x = v58.origin.x;
            y = v58.origin.y;
            width = v58.size.width;
            height = v58.size.height;

            v59.origin.x = x;
            v59.origin.y = y;
            v59.size.width = width;
            v59.size.height = height;
            if (!CGRectEqualToRect(v59, *v12))
            {
              *v49 = x;
              *&v49[1] = y;
              *&v49[2] = width;
              *&v49[3] = height;
              v20 = [MEMORY[0x1E696B098] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
              [array addObject:v20];
            }

            ++v13;
          }

          while (v10 != v13);
          v10 = [v9 countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v10);
      }

      if ([array count])
      {
        [v41 setObject:array forKeyedSubscript:@"PetsRegions"];
      }
    }

    v21 = [resultsCopy objectForKeyedSubscript:{@"PetsFaceResults", optionsCopy}];
    v22 = v21 == 0;

    if (!v22)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = [resultsCopy objectForKeyedSubscript:@"PetsFaceResults"];
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v25)
      {
        v26 = *v46;
        v27 = MEMORY[0x1E695F058];
        do
        {
          v28 = 0;
          do
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [*(*(&v45 + 1) + 8 * v28) objectForKeyedSubscript:@"attributes"];
            v30 = [v29 objectForKeyedSubscript:@"petsBounds"];
            v60 = NSRectFromString(v30);
            v31 = v60.origin.x;
            v32 = v60.origin.y;
            v33 = v60.size.width;
            v34 = v60.size.height;

            v61.origin.x = v31;
            v61.origin.y = v32;
            v61.size.width = v33;
            v61.size.height = v34;
            if (!CGRectEqualToRect(v61, *v27))
            {
              *v44 = v31;
              *&v44[1] = v32;
              *&v44[2] = v33;
              *&v44[3] = v34;
              v35 = [MEMORY[0x1E696B098] valueWithBytes:v44 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
              [array2 addObject:v35];
            }

            ++v28;
          }

          while (v25 != v28);
          v25 = [v24 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v25);
      }

      if ([array2 count])
      {
        [v41 setObject:array2 forKeyedSubscript:@"PetsFaceRegions"];
      }
    }

    if ([v41 count])
    {
      dictionary = [v41 copy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }

    options = v43->_options;
    v43->_options = dictionary;

    v38 = v43;
  }

  return v43;
}

- (int)analyzeAsset:(id)asset cancel:(id)cancel results:(id *)results
{
  v46 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  cancelCopy = cancel;
  v10 = cancelCopy;
  if (!cancelCopy || ((cancelCopy[2])(cancelCopy) & 1) == 0)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__69;
    v39 = __Block_byref_object_dispose__69;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__69;
    v33 = __Block_byref_object_dispose__69;
    v34 = 0;
    v12 = dispatch_semaphore_create(0);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __51__VCPParallaxAnalyzer_analyzeAsset_cancel_results___block_invoke;
    v25 = &unk_1E8351888;
    v27 = &v29;
    v28 = &v35;
    v13 = v12;
    v26 = v13;
    v14 = _Block_copy(&v22);
    v15 = objc_alloc(MEMORY[0x1E6978B28]);
    v16 = [v15 initWithPhotoAsset:{assetCopy, v22, v23, v24, v25}];
    [getPISegmentationClass() computeSegmentationScoresForAsset:v16 options:self->_options completion:v14];
    v17 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v13, v17))
    {
      while (!v10 || !v10[2](v10))
      {
        v18 = dispatch_time(0, 100000000);
        if (!dispatch_semaphore_wait(v13, v18))
        {
          goto LABEL_8;
        }
      }

      [getPISegmentationClass() cancelSegmentationForAsset:v16];
      v11 = -128;
      goto LABEL_19;
    }

LABEL_8:
    if (v30[5])
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [v30[5] description];
        *buf = 138412290;
        v45 = v19;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running computeSegmentationScoresForAsset: %@", buf, 0xCu);
      }
    }

    else
    {
      if ([v36[5] count])
      {
        v41 = v36[5];
        v42 = @"ParallaxResults";
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
        v43 = v20;
        *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

        v11 = 0;
LABEL_19:

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v35, 8);

        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No parallax results returned", buf, 2u);
      }
    }

    v11 = -18;
    goto LABEL_19;
  }

  v11 = -128;
LABEL_20:

  return v11;
}

void __51__VCPParallaxAnalyzer_analyzeAsset_cancel_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)exportWallpaperForAsset:(id)asset withOptions:(id)options cancel:(id)cancel results:(id *)results
{
  v55 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  cancelCopy = cancel;
  v11 = cancelCopy;
  if (!cancelCopy || ((cancelCopy[2])(cancelCopy) & 1) == 0)
  {
    resultsCopy = results;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__69;
    v48 = __Block_byref_object_dispose__69;
    v49 = 0;
    v13 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__VCPParallaxAnalyzer_exportWallpaperForAsset_withOptions_cancel_results___block_invoke;
    aBlock[3] = &unk_1E83518B0;
    v43 = &v44;
    v14 = v13;
    v42 = v14;
    v35 = _Block_copy(aBlock);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:@"/tmp/com.apple.mediaanalysisd/"])
    {
      v38 = 0;
    }

    else
    {
      v40 = 0;
      v16 = [defaultManager createDirectoryAtPath:@"/tmp/com.apple.mediaanalysisd/" withIntermediateDirectories:1 attributes:0 error:&v40];
      v38 = v40;
      if ((v16 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = [v38 description];
          *buf = 138412290;
          v54 = v31;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create resource file cache directory (%@)", buf, 0xCu);
        }

        v12 = -18;
LABEL_30:

        _Block_object_dispose(&v44, 8);
        goto LABEL_31;
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v20 = [v17 stringWithFormat:@"%@wp-%@", @"/tmp/com.apple.mediaanalysisd/", uUIDString];

    v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v20 isDirectory:1];
    path = [v21 path];
    v23 = [defaultManager fileExistsAtPath:path];

    if ((v23 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v24 = objc_claimAutoreleasedReturnValue(), v39 = 0, objc_msgSend(v24, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v21, 1, 0, &v39), v25 = v39, v24, !v25))
    {
      v27 = [objc_alloc(MEMORY[0x1E6978B28]) initWithPhotoAsset:assetCopy];
      [getPISegmentationClass() exportWallpaperForAsset:v27 toURL:v21 options:self->_options completion:v35];
      v28 = dispatch_time(0, 100000000);
      if (dispatch_semaphore_wait(v14, v28))
      {
        while (!v11 || !v11[2](v11))
        {
          v29 = dispatch_time(0, 100000000);
          if (!dispatch_semaphore_wait(v14, v29))
          {
            goto LABEL_17;
          }
        }

        [getPISegmentationClass() cancelSegmentationForAsset:v27];
        v12 = -128;
      }

      else
      {
LABEL_17:
        if (v45[5])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = [v45[5] description];
            *buf = 138412290;
            v54 = v30;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running exportWallpaperForAsset: %@", buf, 0xCu);
          }

          v12 = -18;
        }

        else
        {
          v50 = v20;
          v51 = @"WallpaperExportResults";
          v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
          v52 = v32;
          *resultsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

          v12 = 0;
        }
      }

      v25 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = v45[5];
        *buf = 138412290;
        v54 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create directory for wallpaper export: %@", buf, 0xCu);
      }

      v12 = -36;
    }

    goto LABEL_30;
  }

  v12 = -128;
LABEL_31:

  return v12;
}

void __74__VCPParallaxAnalyzer_exportWallpaperForAsset_withOptions_cancel_results___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)upgradeWallPaperAtURL:(id)l toURL:(id)rL cancel:(id)cancel results:(id *)results
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  cancelCopy = cancel;
  v11 = cancelCopy;
  if (results)
  {
    if (cancelCopy && ((*(cancelCopy + 2))(cancelCopy) & 1) != 0)
    {
      v12 = -128;
    }

    else
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__69;
      v40 = __Block_byref_object_dispose__69;
      v41 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__69;
      v34 = __Block_byref_object_dispose__69;
      v35 = 0;
      v13 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__VCPParallaxAnalyzer_upgradeWallPaperAtURL_toURL_cancel_results___block_invoke;
      aBlock[3] = &unk_1E83518D8;
      v27 = &v36;
      v28 = &v30;
      v14 = v13;
      v26 = v14;
      v29 = _Block_copy(aBlock);
      v15 = NSSelectorFromString(&cfstr_Upgradewallpap.isa);
      getPISegmentationClass();
      objc_opt_class();
      if (objc_opt_respondsToSelector())
      {
        v16 = [getPISegmentationClass() methodSignatureForSelector:v15];
        v17 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v16];
        getPISegmentationClass();
        [v17 setTarget:objc_opt_class()];
        [v17 setSelector:v15];
        [v17 setArgument:&lCopy atIndex:2];
        [v17 setArgument:&rLCopy atIndex:3];
        [v17 setArgument:&self->_options atIndex:4];
        [v17 setArgument:&v29 atIndex:5];
        [v17 invoke];
        dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
        if (v31[5])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v18 = [v31[5] description];
            *buf = 138412290;
            v47 = v18;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running upgradeWallpaperAtURL: %@", buf, 0xCu);
          }

          v12 = -18;
        }

        else
        {
          v19 = v37[5];
          v24 = 0;
          v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v24];
          v21 = v24;
          if (v21 || !v20)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = [v21 description];
              *buf = 138412290;
              v47 = v22;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error running encoding PosterEditConfiguration: %@", buf, 0xCu);
            }

            v12 = -18;
          }

          else
          {
            v44 = @"WallpaperPosterConfigDataResults";
            v45 = v20;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *results = v12 = 0;
          }
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PISegmentation SPI not available", buf, 2u);
        }

        v12 = -18;
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v36, 8);
    }
  }

  else
  {
    v12 = -18;
  }

  return v12;
}

void __66__VCPParallaxAnalyzer_upgradeWallPaperAtURL_toURL_cancel_results___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end