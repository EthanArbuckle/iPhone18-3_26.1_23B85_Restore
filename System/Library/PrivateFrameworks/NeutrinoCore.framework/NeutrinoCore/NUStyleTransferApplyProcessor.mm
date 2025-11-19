@interface NUStyleTransferApplyProcessor
@end

@implementation NUStyleTransferApplyProcessor

uint64_t __75___NUStyleTransferApplyProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 configuration];
  [_NUStyleEngineConfiguration coefficientTextureSizeForStyleEngineConfiguration:v4];
  v6 = v5;
  v8 = v7;

  if (*(a1 + 104) != v6 || *(a1 + 112) != v8)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v10 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v51 = 134218752;
    v52 = v11;
    v53 = 2048;
    v54 = v12;
    v55 = 2048;
    v56 = v6;
    v57 = 2048;
    v58 = v8;
    v13 = "*** Unexpected style buffer size: %0.0fx%0.0f, expected: %0.0fx%0.0f";
    v14 = v10;
    v15 = 42;
    goto LABEL_34;
  }

  if (*(a1 + 88) != *MEMORY[0x1E695EFF8] || *(a1 + 96) != *(MEMORY[0x1E695EFF8] + 8))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v17 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v18 = *(a1 + 88);
    v19 = *(a1 + 96);
    v51 = 134218240;
    v52 = v18;
    v53 = 2048;
    v54 = v19;
    v13 = "*** Unexpected style buffer origin: %0.0fx%0.0f, expected: 0x0";
    v14 = v17;
    v15 = 22;
    goto LABEL_34;
  }

  [v3 setImageSize:{*(a1 + 136), *(a1 + 144)}];
  [v3 setRegionToRender:{NURectFlipYOrigin(*(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144))}];
  v20 = [*(a1 + 32) metalTexture];
  [v3 setInputTexture:v20];

  [*(a1 + 32) region];
  [v3 setInputImageRect:{NURectFlipYOrigin(v21, v22, v23, v24, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144))}];
  v25 = [*(a1 + 40) metalTexture];
  [v3 setInputLinearSystemCoefficientsTexture:v25];

  v26 = *(a1 + 48);
  if (v26)
  {
    v27 = [v26 metalTexture];
    [v3 setInputThumbnailTexture:v27];
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    v29 = [v28 metalTexture];
    [v3 setInputDeltaMapTexture:v29];

    [*(a1 + 56) region];
    [v3 setInputDeltaMapImageRect:{NURectFlipYOrigin(v30, v31, v32, v33, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144))}];
  }

  v34 = *(a1 + 64);
  if (v34)
  {
    v35 = [v34 metalTexture];
    [v3 setTargetThumbnailTexture:v35];
  }

  v36 = [*(a1 + 72) objectForKeyedSubscript:@"noiseModel"];
  [v3 setInputNoiseModel:v36];

  v37 = [*(a1 + 80) metalTexture];
  [v3 setOutputTexture:v37];

  [*(a1 + 80) region];
  [v3 setOutputImageRect:{NURectFlipYOrigin(v38, v39, v40, v41, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144))}];
  v42 = [v3 prepareToProcess:6];
  if (v42)
  {
    v43 = v42;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
    }

    v44 = _NULogger;
    if (!os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v45 = *(a1 + 184);
    v51 = 138412546;
    v52 = v45;
    v53 = 1024;
    LODWORD(v54) = v43;
    v13 = "*** Failed to prepare %@: %d";
    goto LABEL_33;
  }

  v46 = [v3 process];
  if (!v46)
  {
    v49 = 1;
    goto LABEL_36;
  }

  v47 = v46;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v44 = _NULogger;
  if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
  {
    v48 = *(a1 + 184);
    v51 = 138412546;
    v52 = v48;
    v53 = 1024;
    LODWORD(v54) = v47;
    v13 = "*** Failed to process %@: %d";
LABEL_33:
    v14 = v44;
    v15 = 18;
LABEL_34:
    _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, v13, &v51, v15);
  }

LABEL_35:
  v49 = 0;
LABEL_36:

  return v49;
}

@end