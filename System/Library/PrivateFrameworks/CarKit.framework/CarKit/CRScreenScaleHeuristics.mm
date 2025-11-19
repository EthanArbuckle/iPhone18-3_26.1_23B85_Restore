@interface CRScreenScaleHeuristics
+ (BOOL)viewAreas:(id)a3 containsSize:(CGSize)a4;
+ (double)getPrimaryDisplayScale:(CGSize)a3 viewAreas:(id)a4 widthThreshold:(double)a5 heightThreshold:(double)a6;
+ (void)scaledDisplays:(id)a3 withDisplayScaling:(BOOL)a4 reply:(id)a5;
@end

@implementation CRScreenScaleHeuristics

+ (void)scaledDisplays:(id)a3 withDisplayScaling:(BOOL)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v8 = a5;
    v9 = a3;
    v10 = objc_opt_new();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__CRScreenScaleHeuristics_scaledDisplays_withDisplayScaling_reply___block_invoke;
    v13[3] = &unk_1E82FC710;
    v16 = a4;
    v11 = v10;
    v14 = v11;
    v15 = a1;
    [v9 enumerateObjectsUsingBlock:v13];

    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1C81FC000, v12, OS_LOG_TYPE_DEFAULT, "CRScreenScaleHeuristics: displays: %@", buf, 0xCu);
    }

    v8[2](v8, v11, 0);
  }
}

void __67__CRScreenScaleHeuristics_scaledDisplays_withDisplayScaling_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6962438];
  v6 = a2;
  v7 = [v6 objectForKey:v5];
  v8 = *MEMORY[0x1E6962440];
  v9 = [v6 objectForKey:*MEMORY[0x1E6962440]];
  v28.width = 0.0;
  v28.height = 0.0;
  v27.width = 0.0;
  v27.height = 0.0;
  CRSizeFromDictionary(v7, &v28);
  CRSizeFromDictionary(v9, &v27);
  width = v27.width;
  height = v27.height;
  if (*(a1 + 48) == 1)
  {
    v26 = 0;
    v12 = [CRDisplayScaleInfo displayScaleInfoWithDictionary:v6 screenType:a3 != 0 zoomFactor:0 error:&v26, v9];

    v13 = v26;
    if (v13)
    {
      DictionaryRepresentation = CarGeneralLogging();
      if (os_log_type_enabled(DictionaryRepresentation, OS_LOG_TYPE_ERROR))
      {
        __67__CRScreenScaleHeuristics_scaledDisplays_withDisplayScaling_reply___block_invoke_cold_1(v13, DictionaryRepresentation);
      }
    }

    else
    {
      v33.height = height;
      v33.width = width;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v33);
      v17 = [v12 preferredPointScale];
      v31[0] = v5;
      v31[1] = v8;
      v32[0] = v7;
      v32[1] = DictionaryRepresentation;
      v31[2] = @"preferredUIScale";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
      v32[2] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      [*(a1 + 32) addObject:v19];
    }
  }

  else
  {
    v15 = 684.0;
    v16 = v28.width / v28.height;
    v13 = [v6 objectForKey:{@"ViewAreas", v9}];

    if (v28.height > 80.0 || v27.height < 600.0 || v27.height >= 684.0 || v16 < 1.6)
    {
      if (v28.height == 156.0 && v27.height == 1172.0 && v16 <= 1.0)
      {
        width = ((v16 * 1380.0) + 1) & 0xFFFFFFFE;
        height = 1380;
      }

      else if (v28.height == 91.0 && v27.height == 720.0)
      {
        v20 = v16 < 2.4 || v13 == 0;
        if (!v20 && [*(a1 + 40) viewAreas:v13 containsSize:{1760.0, 660.0}])
        {
          width = ((v16 * 774.0) + 1) & 0xFFFFFFFE;
          height = 774;
          v15 = 660.0;
        }
      }
    }

    else
    {
      width = ((v16 * 720.0) + 1) & 0xFFFFFFFE;
      height = 720;
    }

    v34.width = width;
    v34.height = height;
    v12 = CGSizeCreateDictionaryRepresentation(v34);
    if (a3)
    {
      v21 = +[CARPrototypePref force3xCluster];
      v22 = [v21 valueBool];

      v23 = 3.0;
      if ((v22 & 1) == 0)
      {
        [*(a1 + 40) getSecondaryDisplayScale:width physicalSize:{height, v28.width, v28.height}];
      }
    }

    else
    {
      [*(a1 + 40) getPrimaryDisplayScale:v13 viewAreas:width widthThreshold:height heightThreshold:{1122.0, v15}];
    }

    v29[0] = v5;
    v29[1] = v8;
    v30[0] = v7;
    v30[1] = v12;
    v29[2] = @"preferredUIScale";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
    v30[2] = v24;
    DictionaryRepresentation = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

    [*(a1 + 32) addObject:DictionaryRepresentation];
  }
}

+ (double)getPrimaryDisplayScale:(CGSize)a3 viewAreas:(id)a4 widthThreshold:(double)a5 heightThreshold:(double)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a4;
  v11 = v10;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v12 = 2.0;
  if (width >= a5 && height >= a6)
  {
    v12 = 3.0;
  }

  v19 = v12;
  if (v10 && width >= a5 && height >= a6 && [v10 count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CRScreenScaleHeuristics_getPrimaryDisplayScale_viewAreas_widthThreshold_heightThreshold___block_invoke;
    v15[3] = &unk_1E82FC738;
    *&v15[5] = a5;
    *&v15[6] = a6;
    v15[4] = &v16;
    [v11 enumerateObjectsUsingBlock:v15];
  }

  v13 = v17[6];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __91__CRScreenScaleHeuristics_getPrimaryDisplayScale_viewAreas_widthThreshold_heightThreshold___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKey:@"safeArea"];

  v8 = v6;
  if (v7)
  {
    v8 = [v6 objectForKey:@"safeArea"];
  }

  if (v8)
  {
    v11 = 0.0;
    v12 = 0.0;
    CRSizeFromAirPlayDictionary(v8, &v11);
    if (v11 < *(a1 + 40))
    {
      goto LABEL_8;
    }

    v9 = 2.0;
    if (v12 >= *(a1 + 48))
    {
      v9 = 3.0;
    }

    v10 = v9;
    if (v10 < 3.0)
    {
LABEL_8:
      *(*(*(a1 + 32) + 8) + 24) = 0x40000000;
      *a4 = 1;
    }
  }
}

+ (BOOL)viewAreas:(id)a3 containsSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CRScreenScaleHeuristics_viewAreas_containsSize___block_invoke;
  v9[3] = &unk_1E82FC738;
  *&v9[5] = width;
  *&v9[6] = height;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __50__CRScreenScaleHeuristics_viewAreas_containsSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = 0.0;
  v10 = 0.0;
  result = CRSizeFromAirPlayDictionary(a2, &v9);
  if (v9 == *(a1 + 40) && v10 == *(a1 + 48) && (v9 != *MEMORY[0x1E695F060] || v10 != *(MEMORY[0x1E695F060] + 8)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __67__CRScreenScaleHeuristics_scaledDisplays_withDisplayScaling_reply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "CRScreenScaleHeuristics: error creating CRDisplayScaleInfo: %@", &v2, 0xCu);
}

@end