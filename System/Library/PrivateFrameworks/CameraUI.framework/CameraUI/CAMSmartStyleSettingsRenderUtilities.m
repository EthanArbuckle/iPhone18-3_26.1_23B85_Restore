@interface CAMSmartStyleSettingsRenderUtilities
+ (id)compositionForStyle:(id)a3 compositionController:(id)a4 originalAsset:(id)a5 fileURL:(id)a6 fileURLImageProperties:(id)a7 aspectRatio:(double)a8 cropRect:(CGRect)a9;
@end

@implementation CAMSmartStyleSettingsRenderUtilities

+ (id)compositionForStyle:(id)a3 compositionController:(id)a4 originalAsset:(id)a5 fileURL:(id)a6 fileURLImageProperties:(id)a7 aspectRatio:(double)a8 cropRect:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = 0;
  if (a3 && v19)
  {
    v23 = MEMORY[0x1E69C4958];
    v24 = a3;
    v25 = [a1 _styleCastForSmartStyle:{objc_msgSend(v24, "castType")}];
    [v24 toneBias];
    v27 = v26;
    [v24 colorBias];
    v29 = v28;
    [v24 castIntensity];
    v31 = v30;

    [v23 updateCompositionController:v19 withStyleCast:v25 tone:v27 color:v29 intensity:v31];
    v32 = [v19 orientationAdjustmentControllerCreatingIfNecessary:0];
    v33 = [v32 orientation];
    if (a6)
    {
      a6 = [CAMOrientationUtilities pixelWidthFromImageProperties:v21];
      v34 = [CAMOrientationUtilities pixelHeightFromImageProperties:v21];
    }

    else
    {
      v34 = 0;
    }

    v35 = v20 != 0;
    if (a6)
    {
      v36 = v34 == 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = !v36;
    if (!v36)
    {
      v35 = 1;
    }

    if (a8 != 0.0 && v35)
    {
      v38 = *MEMORY[0x1E69BDFC0];
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __148__CAMSmartStyleSettingsRenderUtilities_compositionForStyle_compositionController_originalAsset_fileURL_fileURLImageProperties_aspectRatio_cropRect___block_invoke;
      v44 = &unk_1E76FCB18;
      v46 = a8;
      v45 = v20;
      v47 = v33;
      v48 = a6;
      v49 = v34;
      v54 = v37;
      v50 = x;
      v51 = y;
      v52 = width;
      v53 = height;
      [v19 modifyAdjustmentWithKey:v38 modificationBlock:&v41];
    }

    v39 = [v19 composition];
    v22 = [v39 copy];

    [v22 setMediaType:1];
  }

  return v22;
}

void __148__CAMSmartStyleSettingsRenderUtilities_compositionForStyle_compositionController_originalAsset_fileURL_fileURLImageProperties_aspectRatio_cropRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 40);
  if (*(a1 + 40) == 1.0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = [v7 pixelWidth];
      v9 = [*(a1 + 32) pixelHeight];
    }

    else
    {
      v10 = *(a1 + 48);
      v11 = v10 >= 5;
      v12 = v10 - 5;
      if (v11)
      {
        if (v12 >= 4)
        {
          v9 = 0;
          v8 = 0;
        }

        else
        {
          v9 = *(a1 + 56);
          v8 = *(a1 + 64);
        }
      }

      else
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 64);
      }
    }

    v13 = fmin(v8, v9);
    if (v5)
    {
      [v5 suggestedCropForTargetSize:{v13, v13}];
    }

    else
    {
      v18 = *MEMORY[0x1E695F058];
      v19 = *(MEMORY[0x1E695F058] + 8);
      v20 = *(MEMORY[0x1E695F058] + 16);
      v21 = *(MEMORY[0x1E695F058] + 24);
      if (*(a1 + 104) != 1)
      {
        goto LABEL_20;
      }

      v22 = *MEMORY[0x1E695F058];
      v23 = *(MEMORY[0x1E695F058] + 8);
      if (!CGRectEqualToRect(*(a1 + 72), *(&v20 - 2)))
      {
        v18 = *(a1 + 72);
        v19 = *(a1 + 80);
        v24 = 1;
        v20 = *(a1 + 88);
        v21 = *(a1 + 96);
LABEL_21:
        v25 = *(a1 + 48);
        if (v25 == 7)
        {
          if (v24)
          {
            goto LABEL_24;
          }
        }

        else if (v24)
        {
LABEL_24:
          [v3 setCropRect:{v18, v19, v20, v21}];
          [v3 setEnabled:1];

          goto LABEL_25;
        }

        NUOrientationTransformRect();
        v18 = v26;
        v19 = v27;
        v20 = v28;
        v21 = v29;
        goto LABEL_24;
      }

      UIRectCenteredIntegralRect();
    }

    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
LABEL_20:
    v24 = 0;
    goto LABEL_21;
  }

  v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __148__CAMSmartStyleSettingsRenderUtilities_compositionForStyle_compositionController_originalAsset_fileURL_fileURLImageProperties_aspectRatio_cropRect___block_invoke_cold_1(v4, v6);
  }

LABEL_25:
}

void __148__CAMSmartStyleSettingsRenderUtilities_compositionForStyle_compositionController_originalAsset_fileURL_fileURLImageProperties_aspectRatio_cropRect___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Need to handle aspect ratio %.3f", &v3, 0xCu);
}

@end