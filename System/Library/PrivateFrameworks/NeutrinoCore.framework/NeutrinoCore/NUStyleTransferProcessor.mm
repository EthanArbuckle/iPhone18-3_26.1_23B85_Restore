@interface NUStyleTransferProcessor
@end

@implementation NUStyleTransferProcessor

uint64_t __70___NUStyleTransferProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) CGRectValue];
  v5 = v4;
  v7 = v6;
  v8 = [v3 configuration];
  [v8 thumbnailSize];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    v36 = NUAssertLogger_30110();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thumbnail size doesn't match the thumbnail extent"];
      *v53 = 138543362;
      *&v53[4] = v38;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v53, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_30110();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v41)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *v53 = 138543618;
        *&v53[4] = v44;
        v54 = 2114;
        v55 = v48;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v53, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *v53 = 138543362;
      *&v53[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v53, 0xCu);
    }

    _NUAssertFailHandler("+[_NUStyleTransferProcessor processWithInputs:arguments:output:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NUStyleTransferNode.m", 2159, @"Thumbnail size doesn't match the thumbnail extent", v49, v50, v51, v52, *v53);
  }

  v14 = [*(a1 + 40) metalTexture];
  [v3 setInputThumbnailTexture:v14];

  v15 = [*(a1 + 48) metalTexture];
  [v3 setTargetThumbnailTexture:v15];

  [v3 setImageSize:{*(a1 + 88), *(a1 + 96)}];
  [v3 setRegionToRender:{NURectFlipYOrigin(*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96))}];
  v16 = [*(a1 + 56) metalTexture];
  [v3 setInputTexture:v16];

  [*(a1 + 56) region];
  [v3 setInputImageRect:{NURectFlipYOrigin(v17, v18, v19, v20, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96))}];
  v21 = [*(a1 + 64) metalTexture];
  [v3 setOutputTexture:v21];

  [*(a1 + 64) region];
  [v3 setOutputImageRect:{NURectFlipYOrigin(v22, v23, v24, v25, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96))}];
  v26 = [v3 prepareToProcess:5];
  if (v26)
  {
    v27 = v26;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v28 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v29 = *(a1 + 136);
    *v53 = 138412546;
    *&v53[4] = v29;
    v54 = 1024;
    LODWORD(v55) = v27;
    v30 = "*** Failed to prepare %@: %d";
    goto LABEL_19;
  }

  v31 = [v3 process];
  if (!v31)
  {
    v33 = 1;
    goto LABEL_16;
  }

  v32 = v31;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v28 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 136);
    *v53 = 138412546;
    *&v53[4] = v35;
    v54 = 1024;
    LODWORD(v55) = v32;
    v30 = "*** Failed to process %@: %d";
LABEL_19:
    _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, v30, v53, 0x12u);
  }

LABEL_15:
  v33 = 0;
LABEL_16:

  return v33;
}

@end