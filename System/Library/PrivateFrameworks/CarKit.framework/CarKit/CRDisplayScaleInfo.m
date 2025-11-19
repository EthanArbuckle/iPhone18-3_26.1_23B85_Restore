@interface CRDisplayScaleInfo
+ (id)displayScaleInfoWithDictionary:(id)a3 screenType:(unint64_t)a4 zoomFactor:(id)a5 error:(id *)a6;
- (BOOL)allowsSmartZoom;
- (CGSize)_heuristicPixelSize;
- (CGSize)_minHeightDisplaySize;
- (CGSize)_minWidthDisplaySize;
- (CGSize)_pixelSizeByClampingToMinSize:(CGSize)a3 pointScale:(unint64_t)a4;
- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)a3;
- (CGSize)physicalSize;
- (CGSize)pixelSize;
- (CGSize)squaredPixelSize;
- (CRDisplayScaleInfo)initWithPhysicalSize:(CGSize)a3 pixelSize:(CGSize)a4 viewAreas:(id)a5 screenType:(unint64_t)a6 zoomFactor:(id)a7;
- (CRDisplayScaleInfo)initWithScreenInfo:(id)a3;
- (double)_optimalScaleFactorWithPointScale:(unint64_t)a3;
- (id)_allowedScaleModes;
- (id)description;
- (id)displayScaleModesForCanvasPixelSize:(CGSize)a3;
- (int64_t)_scaleMode;
- (int64_t)defaultDisplayMode;
- (unint64_t)optimizedPointScale;
- (unint64_t)originalPointScale;
- (unint64_t)preferredPointScale;
@end

@implementation CRDisplayScaleInfo

+ (id)displayScaleInfoWithDictionary:(id)a3 screenType:(unint64_t)a4 zoomFactor:(id)a5 error:(id *)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v36.width = 0.0;
  v36.height = 0.0;
  if ((CRSizeFromAirPlayDictionaryForKey(v9, *MEMORY[0x1E6962438], &v36) & 1) == 0)
  {
    v13 = CarDisplayScaleLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(CRDisplayScaleInfo *)v9 displayScaleInfoWithDictionary:v13 screenType:v14 zoomFactor:v15 error:v16, v17, v18, v19];
    }

    if (a6)
    {
      v20 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40[0] = @"Unable to parse display physical size";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      *a6 = [v20 errorWithDomain:@"com.apple.carkit" code:-10001 userInfo:v21];
    }

    goto LABEL_14;
  }

  v35.width = 0.0;
  v35.height = 0.0;
  if (CRSizeFromAirPlayDictionaryForKey(v9, *MEMORY[0x1E6962440], &v35))
  {
    objc_opt_class();
    v11 = [v9 objectForKey:@"ViewAreas"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v31 = [v12 bs_map:&__block_literal_global];
    if (!v10)
    {
      objc_opt_class();
      v32 = [v9 objectForKeyedSubscript:@"ZoomFactor"];
      if (v32 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v10 = v32;
      }

      else
      {
        v10 = 0;
      }
    }

    v33 = [CRDisplayScaleInfo alloc];
    v30 = [(CRDisplayScaleInfo *)v33 initWithPhysicalSize:v31 pixelSize:a4 viewAreas:v10 screenType:v36.width zoomFactor:v36.height, v35.width, v35.height];

    goto LABEL_23;
  }

  v22 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [(CRDisplayScaleInfo *)v9 displayScaleInfoWithDictionary:v22 screenType:v23 zoomFactor:v24 error:v25, v26, v27, v28];
  }

  if (!a6)
  {
LABEL_14:
    v30 = 0;
    goto LABEL_24;
  }

  v29 = MEMORY[0x1E696ABC0];
  v37 = *MEMORY[0x1E696A578];
  v38 = @"Unable to parse display pixel size";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v29 errorWithDomain:@"com.apple.carkit" code:-10001 userInfo:v12];
  *a6 = v30 = 0;
LABEL_23:

LABEL_24:

  return v30;
}

CRViewArea *__81__CRDisplayScaleInfo_displayScaleInfoWithDictionary_screenType_zoomFactor_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRViewArea alloc] initWithAirPlayDictionary:v2];

  return v3;
}

- (CRDisplayScaleInfo)initWithScreenInfo:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [v5 viewAreas];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__CRDisplayScaleInfo_initWithScreenInfo___block_invoke;
  v21[3] = &unk_1E82FBDE8;
  v22 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v21];

  [v5 physicalSize];
  v10 = v9;
  v12 = v11;
  [v5 pixelSize];
  v14 = v13;
  v16 = v15;
  v17 = [v5 screenType];
  v18 = [v5 zoomFactor];

  v19 = [(CRDisplayScaleInfo *)self initWithPhysicalSize:v8 pixelSize:v17 viewAreas:v18 screenType:v10 zoomFactor:v12, v14, v16];
  return v19;
}

void __41__CRDisplayScaleInfo_initWithScreenInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CRViewArea alloc];
  [v3 visibleFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 unadjustedSafeFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CRViewArea *)v4 initWithVisiblePixelFrame:v6 safeAreaPixelFrame:v8, v10, v12, v14, v16, v18, v20];
  [v2 addObject:v21];
}

- (CRDisplayScaleInfo)initWithPhysicalSize:(CGSize)a3 pixelSize:(CGSize)a4 viewAreas:(id)a5 screenType:(unint64_t)a6 zoomFactor:(id)a7
{
  height = a4.height;
  width = a4.width;
  v11 = a3.height;
  v12 = a3.width;
  v59 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a7;
  v52.receiver = self;
  v52.super_class = CRDisplayScaleInfo;
  v16 = [(CRDisplayScaleInfo *)&v52 init];
  if (!v16)
  {
    goto LABEL_51;
  }

  v17 = v14;
  v18 = v12 - *MEMORY[0x1E695F060];
  v19 = -v18;
  if (v18 >= 0.0)
  {
    v19 = v12 - *MEMORY[0x1E695F060];
  }

  if (v19 > 1.0)
  {
    goto LABEL_9;
  }

  v20 = v11 - *(MEMORY[0x1E695F060] + 8);
  if (v20 < 0.0)
  {
    v20 = -v20;
  }

  if (v20 > 1.0)
  {
LABEL_9:
    if (v12 < 1.0 || v11 < 1.0)
    {
      v21 = CarDisplayScaleLogging();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Physical size is zero, pixel density is not valid", buf, 2u);
      }
    }

    else
    {
      if (width / v12 < 2.0)
      {
        v21 = CarDisplayScaleLogging();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v22 = BSNSStringFromCGSize();
        v23 = BSNSStringFromCGSize();
        *buf = 138412546;
        v54 = v22;
        v55 = 2114;
        v56 = v23;
        v24 = "Horizontal density is too low: pixelSize:%{publiic}@; physicalSize:%{public}@";
        goto LABEL_20;
      }

      if (height / v11 >= 2.0)
      {
        goto LABEL_25;
      }

      v21 = CarDisplayScaleLogging();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = BSNSStringFromCGSize();
        v23 = BSNSStringFromCGSize();
        *buf = 138412546;
        v54 = v22;
        v55 = 2114;
        v56 = v23;
        v24 = "Vertical density is too low: pixelSize:%{publiic}@; physicalSize:%{public}@";
LABEL_20:
        _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
      }
    }

LABEL_21:

    v30 = CGSizeSquaredPixelSizeWithPhysicalSize(width, height, v12, v11);
    v32 = v31;
    v33 = 1.0 / CRPointScaleWithSize(a6, v17, width, height, v12, v11);
    v12 = v30 * v33 * 0.376647834;
    v11 = v32 * v33 * 0.376647834;
    v26 = CarDisplayScaleLogging();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = BSNSStringFromCGSize();
      v28 = BSNSStringFromCGSize();
      *buf = 138543874;
      v54 = v27;
      v55 = 2114;
      v56 = v28;
      v57 = 2114;
      v58 = &unk_1F47F2718;
      v29 = "Physical size is not valid, applying default size Result(%{public}@) = PointSize(%{public}@)/CROptimalPointsPerMM(%{public}@)";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v25 = 1.0 / CRPointScaleWithSize(a6, v17, width, height, v12, v11);
  v12 = width * v25 * 0.376647834;
  v11 = height * v25 * 0.376647834;
  v26 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = BSNSStringFromCGSize();
    v28 = BSNSStringFromCGSize();
    *buf = 138543874;
    v54 = v27;
    v55 = 2114;
    v56 = v28;
    v57 = 2114;
    v58 = &unk_1F47F2718;
    v29 = "Physical size is zero, applying default size Result(%{public}@) = PointSize(%{public}@)/CROptimalPointsPerMM(%{public}@)";
LABEL_23:
    _os_log_impl(&dword_1C81FC000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x20u);
  }

LABEL_24:

LABEL_25:
  v16->_physicalSize.width = v12;
  v16->_physicalSize.height = v11;
  v16->_pixelSize.width = width;
  v16->_pixelSize.height = height;
  v16->_squaredPixelSize.width = CGSizeSquaredPixelSizeWithPhysicalSize(width, height, v12, v11);
  v16->_squaredPixelSize.height = v34;
  v35 = [v17 copy];
  viewAreas = v16->_viewAreas;
  v16->_viewAreas = v35;

  v16->_screenType = a6;
  objc_opt_class();
  v37 = +[CARPrototypePref zoomFactor];
  v38 = [v37 internalSettingsValue];
  if (v38 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  [v39 floatValue];
  v41 = v40;
  if (v40 >= 0.001)
  {
    v43 = CarDisplayScaleLogging();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
      *buf = 138543362;
      v54 = v44;
      _os_log_impl(&dword_1C81FC000, v43, OS_LOG_TYPE_DEFAULT, "Internal settings zoom factor specified: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v15 floatValue];
    v41 = v42;
  }

  v45 = v41 / 100.0;
  if (v41 / 100.0 > 5.0 || v45 < 0.1)
  {
    v45 = 1.0;
  }

  v47 = 0.7;
  v48 = v45 <= 0.7;
  v49 = v45 < 1.5 || v45 <= 0.7;
  if (v45 >= 1.5)
  {
    v48 = 1;
  }

  if (!v49)
  {
    v47 = 1.5;
  }

  if (v48)
  {
    v45 = v47;
  }

  v16->_zoomFactor = v45;
  if (![(CRDisplayScaleInfo *)v16 _customZoomEnabled])
  {
    [_TtC6CarKit14DisplayScaling zoomFactorHeuristicsWithScreenType:a6 physicalSize:v12 pixelSize:v11, width, height];
    v16->_zoomFactor = v50;
  }

LABEL_51:
  return v16;
}

- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = [(CRDisplayScaleInfo *)self screenType];
  if (v5 != 1)
  {
    if (v5)
    {
      v25 = *MEMORY[0x1E695F060];
      v27 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_30;
    }

    if (!a3)
    {
      a3 = [(CRDisplayScaleInfo *)self defaultDisplayMode];
    }

    if (a3 == 2)
    {
      if ([(CRDisplayScaleInfo *)self _customZoomEnabled])
      {
        [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
        v38 = v37;
        [(CRDisplayScaleInfo *)self zoomFactor];
        v40 = v38 / v39;
        [(CRDisplayScaleInfo *)self squaredPixelSize];
        v11 = (((v40 * v41) + 1) & 0xFFFFFFFE);
        v12 = (((v40 * v42) + 1) & 0xFFFFFFFE);
        v13 = CarDisplayScaleLogging();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = BSNSStringFromCGSize();
          [(CRDisplayScaleInfo *)self squaredPixelSize];
          v15 = BSNSStringFromCGSize();
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
          v43 = MEMORY[0x1E696AD98];
          [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
          v18 = [v43 numberWithDouble:?];
          v44 = MEMORY[0x1E696AD98];
          [(CRDisplayScaleInfo *)self zoomFactor];
          v45 = [v44 numberWithDouble:?];
          *v59 = 138544642;
          *&v59[4] = v14;
          *&v59[12] = 2114;
          *&v59[14] = v15;
          *&v59[22] = 2114;
          v60 = v17;
          *v61 = 2114;
          *&v61[2] = v18;
          *&v61[10] = 2114;
          *&v61[12] = v45;
          *&v61[20] = 2114;
          *&v61[22] = self;
          _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "Optimal[with ZoomFactor] primary display scale canvas size calculated: Result(%{public}@) = SquaredPixelSize(%{public}@) x AdjustedScale(%{public}@); AdjustedScale=PreferredToOriginalScaleRatio(%{public}@)/zoomFactor(%{public}@)\nDisplayInfo: %{public}@", v59, 0x3Eu);

LABEL_20:
        }
      }

      else
      {
        [(CRDisplayScaleInfo *)self _optimalScaleFactorWithPointScale:[(CRDisplayScaleInfo *)self preferredPointScale]];
        v47 = v46;
        [(CRDisplayScaleInfo *)self squaredPixelSize];
        v11 = (((v47 * v48) + 1) & 0xFFFFFFFE);
        v12 = (((v47 * v49) + 1) & 0xFFFFFFFE);
        v13 = CarDisplayScaleLogging();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = BSNSStringFromCGSize();
          [(CRDisplayScaleInfo *)self squaredPixelSize];
          v15 = BSNSStringFromCGSize();
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
          *v59 = 138544386;
          *&v59[4] = v14;
          *&v59[12] = 2114;
          *&v59[14] = v15;
          *&v59[22] = 2114;
          v60 = v17;
          *v61 = 2114;
          *&v61[2] = v18;
          *&v61[10] = 2114;
          *&v61[12] = self;
          v19 = "Optimal[no ZoomFactor] primary display scale canvas size calculated: Result(%{public}@) = PixelSize(%{public}@) x OptimalScaleFactor(%{public}@) at PointScale(%{public}@)\nDisplayInfo: %{public}@";
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (a3 != 1)
      {
        v11 = *MEMORY[0x1E695F060];
        v12 = *(MEMORY[0x1E695F060] + 8);
        goto LABEL_22;
      }

      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v7 = v6;
      v9 = v8;
      [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
      v11 = v7 * v10;
      v12 = v9 * v10;
      v13 = CarDisplayScaleLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = BSNSStringFromCGSize();
        [(CRDisplayScaleInfo *)self squaredPixelSize];
        v15 = BSNSStringFromCGSize();
        v16 = MEMORY[0x1E696AD98];
        [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
        v17 = [v16 numberWithDouble:?];
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
        *v59 = 138544386;
        *&v59[4] = v14;
        *&v59[12] = 2114;
        *&v59[14] = v15;
        *&v59[22] = 2114;
        v60 = v17;
        *v61 = 2114;
        *&v61[2] = v18;
        *&v61[10] = 2114;
        *&v61[12] = self;
        v19 = "Default primary display scale canvas size calculated: Result(%{public}@)=SquaredPixelSize(%{public}@) x PreferredToOriginalRatio(%{public}@) at PointScale(%{public}@)\nDisplayInfo: %{public}@";
LABEL_19:
        _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, v19, v59, 0x34u);
        goto LABEL_20;
      }
    }

LABEL_22:
    [(CRDisplayScaleInfo *)self _pixelSizeByClampingToMinSize:[(CRDisplayScaleInfo *)self preferredPointScale:*v59] pointScale:v11, v12];
    v25 = v51;
    v27 = v50;
    if (v11 < v51 || v12 < v50)
    {
      v53 = CarDisplayScaleLogging();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = BSNSStringFromCGSize();
        v55 = BSNSStringFromCGSize();
        v56 = BSNSStringFromCGSize();
        *v59 = 138543874;
        *&v59[4] = v54;
        *&v59[12] = 2114;
        *&v59[14] = v55;
        *&v59[22] = 2114;
        v60 = v56;
        _os_log_impl(&dword_1C81FC000, v53, OS_LOG_TYPE_DEFAULT, "Primary display size is less than minimum: Size(%{public}@) < Min(%{public}@); Returning minimal size;\n minSize(%{public}@)", v59, 0x20u);
      }
    }

    goto LABEL_30;
  }

  [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
  v21 = v20;
  [(CRDisplayScaleInfo *)self zoomFactor];
  v23 = v21 / v22;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v25 = v23 * v24;
  v27 = v23 * v26;
  v28 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = BSNSStringFromCGSize();
    [(CRDisplayScaleInfo *)self squaredPixelSize];
    v30 = BSNSStringFromCGSize();
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    v32 = MEMORY[0x1E696AD98];
    [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
    v33 = [v32 numberWithDouble:?];
    v34 = MEMORY[0x1E696AD98];
    [(CRDisplayScaleInfo *)self zoomFactor];
    v35 = [v34 numberWithDouble:?];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
    *v59 = 138544642;
    *&v59[4] = v29;
    *&v59[12] = 2114;
    *&v59[14] = v30;
    *&v59[22] = 2114;
    v60 = v31;
    *v61 = 2114;
    *&v61[2] = v33;
    *&v61[10] = 2114;
    *&v61[12] = v35;
    *&v61[20] = 2114;
    *&v61[22] = v36;
    _os_log_impl(&dword_1C81FC000, v28, OS_LOG_TYPE_DEFAULT, "Secondary display size after scaling: Size(%{public}@) = SquaredPixelSize(%{public}@) x Scale(%{public}@); Scale = PreferredToOriginalScaleRatio(%{public}@)/ZoomFactor(%{public}@) at PointScale(%{public}@)", v59, 0x3Eu);
  }

LABEL_30:
  v57 = v25;
  v58 = v27;
  result.height = v58;
  result.width = v57;
  return result;
}

- (id)displayScaleModesForCanvasPixelSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = floor(width);
  v8 = floor(height);
  for (i = 1; i != 3; ++i)
  {
    [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:i];
    v11 = v10;
    v13 = v12;
    v14 = 1.0 / [(CRDisplayScaleInfo *)self preferredPointScale];
    v15 = floor(v11 * v14);
    v16 = floor(v13 * v14);
    if (v15 == v7 && v16 == v8)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:{i, v16}];
      [v6 addObject:v18];
    }
  }

  return v6;
}

- (id)_allowedScaleModes
{
  v25 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:1];
  v4 = v3;
  v6 = v5;
  [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:2];
  v9 = v8;
  v10 = v4 - v7;
  if (v4 - v7 < 0.0)
  {
    v10 = -(v4 - v7);
  }

  if (v10 <= v4 * 0.05)
  {
    v12 = v6 - v8;
    if (v6 - v9 < 0.0)
    {
      v12 = -(v6 - v9);
    }

    v11 = v12 <= v6 * 0.05;
  }

  else
  {
    v11 = 0;
  }

  v13 = CarDisplayScaleLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = BSStringFromCGSize();
    v15 = BSStringFromCGSize();
    v16 = NSStringFromBOOL();
    v19 = 138543874;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_DEFAULT, "Allowed scale modes: defaultSize:%{public}@, optimizedSize:%{public}@; Original equals to default?: %{public}@", &v19, 0x20u);
  }

  if (v11)
  {
    v17 = &unk_1F47F26D0;
  }

  else
  {
    v17 = &unk_1F47F26E8;
  }

  return v17;
}

- (BOOL)allowsSmartZoom
{
  v2 = [(CRDisplayScaleInfo *)self _allowedScaleModes];
  v3 = [v2 count] > 1;

  return v3;
}

- (unint64_t)optimizedPointScale
{
  v39 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self _optimalScaleFactorWithPointScale:[(CRDisplayScaleInfo *)self originalPointScale]];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v7 = v4 * v6;
  v8 = (((v4 * v5) + 1) & 0xFFFFFFFE);
  v9 = ((v7 + 1) & 0xFFFFFFFE);
  [(CRDisplayScaleInfo *)self _pixelSizeByClampingToMinSize:[(CRDisplayScaleInfo *)self originalPointScale] pointScale:v8, v9];
  v11 = v10;
  v13 = v12;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v15 = v11 / v14;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v17 = v13 / v16;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  if (v15 >= v17)
  {
    v20 = v13 / v19;
  }

  else
  {
    v20 = v11 / v18;
  }

  if ([(CRDisplayScaleInfo *)self originalPointScale]== 2 && v20 < 0.96)
  {
    v21 = CarDisplayScaleLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v22 = BSStringFromCGSize();
      v23 = BSStringFromCGSize();
      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v33 = 138412802;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Jumping to 3x scale: squaredPixelSize:%{self.squaredPixelSize}@, minSize:%{public}@; ratio: %{public}@", &v33, 0x20u);
    }

    return 3;
  }

  else
  {
    [(CRDisplayScaleInfo *)self physicalSize];
    v27 = v26;
    v29 = v28;
    v30 = [(CRDisplayScaleInfo *)self screenType];
    v31 = [(CRDisplayScaleInfo *)self viewAreas];
    v32 = CRPointScaleWithSize(v30, v31, v8, v9, v27, v29);

    return v32;
  }
}

- (unint64_t)preferredPointScale
{
  v3 = [(CRDisplayScaleInfo *)self optimizedPointScale];
  if (v3 <= [(CRDisplayScaleInfo *)self originalPointScale])
  {

    return [(CRDisplayScaleInfo *)self originalPointScale];
  }

  else
  {

    return [(CRDisplayScaleInfo *)self optimizedPointScale];
  }
}

- (int64_t)defaultDisplayMode
{
  if ([(CRDisplayScaleInfo *)self isHeuristicScalable])
  {
    return 2;
  }

  if ([(CRDisplayScaleInfo *)self _customZoomEnabled])
  {
    return 2;
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CRDisplayScaleInfo *)self physicalSize];
  v4 = BSStringFromCGSize();
  [(CRDisplayScaleInfo *)self pixelSize];
  v5 = BSStringFromCGSize();
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = BSStringFromCGSize();
  v7 = [(CRDisplayScaleInfo *)self viewAreas];
  v8 = [(CRDisplayScaleInfo *)self screenType];
  v9 = @"Unknown";
  if (v8 == 1)
  {
    v9 = @"Secondary";
  }

  if (!v8)
  {
    v9 = @"Primary";
  }

  v10 = MEMORY[0x1E696AD98];
  v11 = v9;
  [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
  v12 = [v10 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(CRDisplayScaleInfo *)self zoomFactor];
  v14 = [v13 numberWithDouble:?];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
  v16 = [v3 stringWithFormat:@"DisplayInfo: physicalSize: %@ pixelSize: %@; squaredPixelSize: %@; viewAreas: %@; screenType: %@; Scale Information = PreferredToOriginalScaleRatio(%@)/ZoomFactor(%@) at PointScale(%@);", v4, v5, v6, v7, v11, v12, v14, v15];;

  return v16;
}

- (double)_optimalScaleFactorWithPointScale:(unint64_t)a3
{
  [(CRDisplayScaleInfo *)self pixelSize];
  v5 = 1.0 / a3;
  v7 = v5 * v6;
  v9 = v5 * v8;
  [(CRDisplayScaleInfo *)self physicalSize];
  v11 = v10;
  [(CRDisplayScaleInfo *)self physicalSize];
  v13 = v9 / v7 * (v11 / v12);
  [(CRDisplayScaleInfo *)self physicalSize];
  if (v13 <= 1.01)
  {
    v16 = v7 / v14;
  }

  else
  {
    v16 = v9 / v15;
  }

  return 2.655 / v16;
}

- (unint64_t)originalPointScale
{
  v3 = [(CRDisplayScaleInfo *)self screenType];
  if (v3 == 1)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    return 1;
  }

  v4 = [(CRDisplayScaleInfo *)self _scaleMode];
  if ((v4 - 1) >= 3)
  {
    if (!v4)
    {
      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v7 = v6;
      v9 = v8;
      [(CRDisplayScaleInfo *)self physicalSize];
      v11 = v10;
      v13 = v12;
      v14 = [(CRDisplayScaleInfo *)self screenType];
      v15 = [(CRDisplayScaleInfo *)self viewAreas];
      v5 = CRPointScaleWithSize(v14, v15, v7, v9, v11, v13);
      goto LABEL_12;
    }

LABEL_8:
    v16 = [(CRDisplayScaleInfo *)self screenType];
    [(CRDisplayScaleInfo *)self physicalSize];
    v18 = v17;
    v20 = v19;
    [(CRDisplayScaleInfo *)self pixelSize];
    v5 = [_TtC6CarKit14DisplayScaling exceptionPointScaleWithScreenType:v16 physicalSize:v18 pixelSize:v20, v21, v22];
    if (v5 > 0)
    {
      return v5;
    }

    v15 = +[CARPrototypePref force3xCluster];
    if ([v15 valueBool])
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

LABEL_12:

    return v5;
  }

  return 3;
}

- (CGSize)_pixelSizeByClampingToMinSize:(CGSize)a3 pointScale:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  [(CRDisplayScaleInfo *)self _minHeightDisplaySize];
  v10 = (((v8 * a4) + 1) & 0xFFFFFFFE);
  v11 = (((v9 * a4) + 1) & 0xFFFFFFFE);
  [(CRDisplayScaleInfo *)self _minWidthDisplaySize];
  v14 = (((v12 * a4) + 1) & 0xFFFFFFFE);
  v15 = (((v13 * a4) + 1) & 0xFFFFFFFE);
  if (v10 >= v14 && v11 >= v15)
  {
    v14 = v10;
    v15 = v11;
  }

  if (width >= v14 && height >= v15)
  {
    v14 = width;
    v15 = height;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_minHeightDisplaySize
{
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = v5;
  v8 = v7;
  v9 = [(CRDisplayScaleInfo *)self viewAreas];
  CRMinViewAreaPixelSize(v9, v6, v8);
  v11 = v4 / v10;

  v12 = v11 * 240.0;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v14 = v12 * v13;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v16 = v14 / v15;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)_minWidthDisplaySize
{
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = v5;
  v8 = v7;
  v9 = [(CRDisplayScaleInfo *)self viewAreas];
  v10 = v4 / CRMinViewAreaPixelSize(v9, v6, v8);

  v11 = v10 * 355.0;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v13 = v11 * v12;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v15 = v13 / v14;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGSize)_heuristicPixelSize
{
  v3 = [(CRDisplayScaleInfo *)self _scaleMode];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v10;
      v5 = 1380.0;
      goto LABEL_10;
    }

    if (v3 == 3)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v9;
      v5 = 774.0;
      goto LABEL_10;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v7;
      v5 = 720.0;
LABEL_10:
      v4 = v6 * v5 / v8;
    }
  }

  else
  {
    [(CRDisplayScaleInfo *)self squaredPixelSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)_scaleMode
{
  v29 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self physicalSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self physicalSize];
  v6 = v4 / v5;
  [(CRDisplayScaleInfo *)self physicalSize];
  if (v7 <= 80.0)
  {
    [(CRDisplayScaleInfo *)self pixelSize];
    if (v8 >= 600.0)
    {
      [(CRDisplayScaleInfo *)self pixelSize];
      if (v21 < 684.0 && v6 >= 1.6)
      {
        return 1;
      }
    }
  }

  [(CRDisplayScaleInfo *)self physicalSize];
  if (fabs(v9 + -156.0) < 0.00001)
  {
    [(CRDisplayScaleInfo *)self pixelSize];
    if (fabs(v10 + -1172.0) < 0.00001 && v6 <= 1.0)
    {
      return 2;
    }
  }

  [(CRDisplayScaleInfo *)self physicalSize];
  if (fabs(v12 + -91.0) >= 0.00001)
  {
    return 0;
  }

  [(CRDisplayScaleInfo *)self pixelSize];
  v22 = 0;
  if (fabs(v13 + -720.0) < 0.00001 && v6 >= 2.4)
  {
    [(CRDisplayScaleInfo *)self viewAreas];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v27 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v24 + 1) + 8 * i) visiblePixelFrame];
          if (v20 == 1760.0 && v19 == 660.0)
          {

            v22 = 3;
            goto LABEL_27;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_27:
  }

  return v22;
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)squaredPixelSize
{
  width = self->_squaredPixelSize.width;
  height = self->_squaredPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end