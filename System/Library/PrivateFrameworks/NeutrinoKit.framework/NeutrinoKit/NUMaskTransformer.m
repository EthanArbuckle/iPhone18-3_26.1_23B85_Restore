@interface NUMaskTransformer
+ (BOOL)isMaskValid:(id)a3;
+ (CGImage)createImageIsolatedToMask:(id)a3 mediaView:(id)a4;
+ (CGImage)createImageIsolatedToMask:(id)a3 source:(id)a4 geometry:(id)a5 composition:(id)a6;
+ (id)applyRenderedOutputGeometryFromSpace:(id)a3 toInputImage:(id)a4 geometry:(id)a5 composition:(id)a6 error:(id *)a7;
+ (id)imageForComposition:(id)a3 size:(CGSize)a4;
+ (id)maskedImageBackgroundImage:(id)a3 source:(id)a4;
+ (id)transformedImage:(id)a3 forComposition:(id)a4 imageSize:(CGSize)a5 error:(id *)a6;
+ (void)imageForComposition:(id)a3 size:(CGSize)a4 completion:(id)a5;
@end

@implementation NUMaskTransformer

+ (id)transformedImage:(id)a3 forComposition:(id)a4 imageSize:(CGSize)a5 error:(id *)a6
{
  height = a5.height;
  width = a5.width;
  v42 = *MEMORY[0x277D85DE8];
  specific = a3;
  v12 = a4;
  if (!a6)
  {
    v37 = NUAssertLogger_155();
    v30 = &off_25BD44000;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "error"];
      LODWORD(v41.a) = 138543362;
      *(&v41.a + 4) = v38;
      _os_log_error_impl(&dword_25BD29000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v41, 0xCu);
    }

    a6 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v13 = NUAssertLogger_155();
    v39 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        specific = dispatch_get_specific(*a6);
        v40 = MEMORY[0x277CCACC8];
        v30 = specific;
        a6 = [v40 callStackSymbols];
        v6 = [a6 componentsJoinedByString:@"\n"];
        LODWORD(v41.a) = 138543618;
        *(&v41.a + 4) = specific;
        WORD2(v41.b) = 2114;
        *(&v41.b + 6) = v6;
        _os_log_error_impl(&dword_25BD29000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v41, 0x16u);
      }
    }

    else if (v39)
    {
      specific = [MEMORY[0x277CCACC8] callStackSymbols];
      a6 = [specific componentsJoinedByString:@"\n"];
      LODWORD(v41.a) = 138543362;
      *(&v41.a + 4) = a6;
      _os_log_error_impl(&dword_25BD29000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v41, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_44;
  }

  v13 = v12;
  if (!v12)
  {
    v23 = MEMORY[0x277D2CF98];
    v24 = @"Nil composition";
    v25 = 0;
    goto LABEL_23;
  }

  [specific extent];
  if (v14 == 0.0 || v15 == 0.0 || ((v16 = *MEMORY[0x277D3A858], v17 = *(MEMORY[0x277D3A858] + 8), v14 == *MEMORY[0x277D3A858]) ? (v18 = v15 == v17) : (v18 = 0), v18))
  {
    v23 = MEMORY[0x277D2CF98];
    v24 = @"Mask image has empty size";
LABEL_21:
    v25 = specific;
LABEL_23:
    [v23 invalidError:v24 object:v25];
    *a6 = v26 = 0;
    goto LABEL_24;
  }

  if (v14 > width || v15 > height)
  {
    CGAffineTransformMakeScale(&v41, width / v14, height / v15);
    v19 = [specific imageByApplyingTransform:&v41];

    specific = v19;
  }

  [specific extent];
  if (v20 == 0.0 || v21 == 0.0 || (v21 == v17 ? (v22 = v20 == v16) : (v22 = 0), v22))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v20 * v21;
  }

  v29 = v28;
  if (v28 <= 0)
  {
    v23 = MEMORY[0x277D2CF98];
    v24 = @"Scaled mask image has empty size";
    goto LABEL_21;
  }

  v30 = [objc_alloc(MEMORY[0x277D2CFB0]) initWithComposition:v13];
  v31 = [objc_alloc(MEMORY[0x277D2CFF0]) initWithTargetPixelCount:v29];
  [v30 setScalePolicy:v31];

  v32 = [v30 submitSynchronous:a6];
  v6 = v32;
  if (!v32)
  {
    if (*MEMORY[0x277D2D078] == -1)
    {
LABEL_32:
      v35 = *MEMORY[0x277D2D080];
      if (os_log_type_enabled(*MEMORY[0x277D2D080], OS_LOG_TYPE_ERROR))
      {
        v36 = *a6;
        LODWORD(v41.a) = 138412290;
        *(&v41.a + 4) = v36;
        _os_log_error_impl(&dword_25BD29000, v35, OS_LOG_TYPE_ERROR, "Geometry request failed: %@", &v41, 0xCu);
      }

      v26 = 0;
      goto LABEL_35;
    }

LABEL_44:
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_164);
    goto LABEL_32;
  }

  v33 = [v32 geometry];
  v34 = [NUMaskTransformer applyRenderedOutputGeometryFromSpace:@"/masterSpace" toInputImage:specific geometry:v33 composition:v13 error:a6];

  specific = v34;
  v26 = specific;
LABEL_35:

LABEL_24:

  return v26;
}

+ (void)imageForComposition:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277D2CFC8]) initWithComposition:v8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = objc_opt_new();
  if ((width * height) <= 0)
  {
    v11 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"Size is negative or zero";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [v11 errorWithDomain:@"NUMaskTransformerErrorDomain" code:2 userInfo:v12];

    [v23[5] setError:v13];
    v9[2](v9, v23[5]);
  }

  v14 = [objc_alloc(MEMORY[0x277D2CFF0]) initWithTargetPixelCount:(width * height)];
  [v10 setScalePolicy:v14];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__NUMaskTransformer_imageForComposition_size_completion___block_invoke;
  v16[3] = &unk_279973D68;
  v18 = v20;
  v19 = &v22;
  v15 = v9;
  v17 = v15;
  [v10 submit:v16];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
}

void __57__NUMaskTransformer_imageForComposition_size_completion___block_invoke(void *a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  v5 = MEMORY[0x277CBF758];
  v6 = [v3 buffer];
  v7 = [v5 imageWithCVPixelBuffer:{objc_msgSend(v6, "CVPixelBuffer")}];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 geometry];
  [*(*(a1[6] + 8) + 40) setError:v4];
  [*(*(a1[6] + 8) + 40) setImage:*(*(a1[5] + 8) + 40)];
  [*(*(a1[6] + 8) + 40) setGeometry:v10];
  (*(a1[4] + 16))();
}

+ (id)imageForComposition:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D2CFC8]) initWithComposition:v6];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = objc_opt_new();
  if ((width * height) > 0)
  {
    v8 = [objc_alloc(MEMORY[0x277D2CFF0]) initWithTargetPixelCount:(width * height)];
    [v7 setScalePolicy:v8];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy_;
    v28[4] = __Block_byref_object_dispose_;
    v29 = 0;
    v9 = dispatch_semaphore_create(0);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __46__NUMaskTransformer_imageForComposition_size___block_invoke;
    v24 = &unk_279973D40;
    v26 = v28;
    v27 = &v30;
    v10 = v9;
    v25 = v10;
    [v7 submit:&v21];
    v11 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v10, v11);
    v12 = [v31[5] error];
    if (!v12)
    {
      v12 = [v31[5] image];
      if (!v12)
      {
        v17 = [v31[5] geometry];
        v18 = v17 == 0;

        if (!v18)
        {
          goto LABEL_5;
        }

        v19 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = @"Timeout reached";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v12 = [v19 errorWithDomain:@"NUMaskTransformerErrorDomain" code:1 userInfo:v20];

        [v31[5] setError:v12];
      }
    }

LABEL_5:
    v13 = v31[5];

    _Block_object_dispose(v28, 8);
    goto LABEL_7;
  }

  v14 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"Size is negative or zero";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v8 = [v14 errorWithDomain:@"NUMaskTransformerErrorDomain" code:2 userInfo:v15];

  [v31[5] setError:v8];
  v13 = v31[5];
LABEL_7:

  _Block_object_dispose(&v30, 8);

  return v13;
}

void __46__NUMaskTransformer_imageForComposition_size___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  v5 = MEMORY[0x277CBF758];
  v6 = [v3 buffer];
  v7 = [v5 imageWithCVPixelBuffer:{objc_msgSend(v6, "CVPixelBuffer")}];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 geometry];
  [*(*(*(a1 + 48) + 8) + 40) setError:v4];
  [*(*(*(a1 + 48) + 8) + 40) setImage:*(*(*(a1 + 40) + 8) + 40)];
  [*(*(*(a1 + 48) + 8) + 40) setGeometry:v10];
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)isMaskValid:(id)a3
{
  [a3 extent];
  if (v3 < 0.0 && v4 < 0.0)
  {
    return 0;
  }

  if (v6 > 0.0)
  {
    return 1;
  }

  return v5 > 0.0;
}

+ (id)maskedImageBackgroundImage:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 extent];
  v8 = v7;
  [v6 extent];
  v10 = v8 / v9;
  [v5 extent];
  v12 = v11;
  [v6 extent];
  CGAffineTransformMakeScale(&v18, v10, v12 / v13);
  v14 = [v6 imageByApplyingTransform:&v18];

  v15 = [MEMORY[0x277CBF750] blendWithAlphaMaskFilter];
  [v15 setBackgroundImage:v14];
  [v15 setMaskImage:v14];
  [v15 setInputImage:v5];

  v16 = [v15 outputImage];

  return v16;
}

+ (id)applyRenderedOutputGeometryFromSpace:(id)a3 toInputImage:(id)a4 geometry:(id)a5 composition:(id)a6 error:(id *)a7
{
  v110 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!a7)
  {
    v82 = NUAssertLogger_155();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "error"];
      *buf = 138543362;
      v107 = v83;
      _os_log_error_impl(&dword_25BD29000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v84 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v86 = NUAssertLogger_155();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v87)
      {
        v90 = dispatch_get_specific(*v84);
        v91 = MEMORY[0x277CCACC8];
        v92 = v90;
        v93 = [v91 callStackSymbols];
        v94 = [v93 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v107 = v90;
        v108 = 2114;
        v109 = v94;
        _os_log_error_impl(&dword_25BD29000, v86, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v87)
    {
      v88 = [MEMORY[0x277CCACC8] callStackSymbols];
      v89 = [v88 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v107 = v89;
      _os_log_error_impl(&dword_25BD29000, v86, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v15 = v14;
  if (v13)
  {
    v16 = [v13 transformWithSourceSpace:v11 destinationSpace:@"/Image" error:a7];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277D2CFB0]) initWithComposition:v15];
      v18 = [MEMORY[0x277D2D010] stopAtTagFilter:v11];
      v105 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
      [v17 setPipelineFilters:v19];

      v20 = objc_alloc(MEMORY[0x277D2CFF0]);
      [v12 extent];
      v22 = v21;
      [v12 extent];
      v24 = [v20 initWithTargetPixelCount:(v22 * v23)];
      [v17 setScalePolicy:v24];

      v25 = [v17 submitSynchronous:a7];
      if (v25)
      {
        v100 = v25;
        v97 = [v25 geometry];
        [v97 renderScale];
        NUScaleToDouble();
        v27 = v26;
        [v12 extent];
        v95 = 1.0 / v27;
        NUScaleRect();
        v29 = v28;
        v31 = v30;
        [v16 transformPoint:{0.0, v30}];
        v33 = v32;
        v35 = v34;
        [v16 transformPoint:{v29, v31}];
        v37 = v36;
        v39 = v38;
        [v16 transformPoint:{0.0, 0.0}];
        v41 = v40;
        v43 = v42;
        [v16 transformPoint:{v29, 0.0}];
        v44 = v27 * v33;
        v45 = v27 * v35;
        v46 = v27 * v37;
        v47 = v27 * v39;
        v48 = v27 * v41;
        v49 = v27 * v43;
        v50 = MEMORY[0x277CBF750];
        v52 = v27 * v51;
        v103[0] = @"inputTopLeft";
        v99 = v15;
        v54 = v27 * v53;
        v55 = [MEMORY[0x277CBF788] vectorWithX:v44 Y:v45];
        v104[0] = v55;
        v103[1] = @"inputTopRight";
        v56 = [MEMORY[0x277CBF788] vectorWithX:v46 Y:v47];
        v104[1] = v56;
        v103[2] = @"inputBottomRight";
        [MEMORY[0x277CBF788] vectorWithX:v52 Y:v54];
        v57 = v98 = v17;
        v104[2] = v57;
        v103[3] = @"inputBottomLeft";
        v58 = [MEMORY[0x277CBF788] vectorWithX:v48 Y:v49];
        v103[4] = *MEMORY[0x277CBFAF0];
        v104[3] = v58;
        v104[4] = v12;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:5];
        v96 = [v50 filterWithName:@"CIPerspectiveTransform" withInputParameters:v59];

        v60 = [v96 outputImage];
        [v13 renderScale];
        NUScaleToDouble();
        v62 = v95 * v61;
        [v97 scaledExtent];
        v64 = v63;
        [v97 scaledExtent];
        v66 = v64 / v65;
        [v12 extent];
        v69 = v67 / v68 / v66;
        v70 = [v97 scaledSize];
        [v97 scaledSize];
        LODWORD(v57) = v70 > v71;
        v72 = [v13 scaledSize];
        [v13 scaledSize];
        if (v57 == v72 <= v73)
        {
          v69 = 1.0 / v69;
        }

        v101[0] = @"inputScale";
        v74 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
        v101[1] = @"inputAspectRatio";
        v102[0] = v74;
        v75 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
        v102[1] = v75;
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
        v77 = [v60 imageByApplyingFilter:@"CILanczosScaleTransform" withInputParameters:v76];

        [v13 scaledExtent];
        v78 = [v77 imageByCroppingToRect:?];

        v79 = [MEMORY[0x277CBF750] colorClampFilter];
        [v79 setInputImage:v78];
        v80 = [v79 outputImage];

        v15 = v99;
        v17 = v98;

        v25 = v100;
      }

      else
      {
        v80 = 0;
      }
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    [MEMORY[0x277D2CF98] invalidError:@"Nil geometry passed to NUMaskTransformer" object:0];
    *a7 = v80 = 0;
  }

  return v80;
}

+ (CGImage)createImageIsolatedToMask:(id)a3 mediaView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 _geometry];
  v9 = [v6 snapshotImage];
  v10 = [v6 composition];

  v11 = [a1 createImageIsolatedToMask:v7 source:v9 geometry:v8 composition:v10];
  return v11;
}

+ (CGImage)createImageIsolatedToMask:(id)a3 source:(id)a4 geometry:(id)a5 composition:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [a3 imageByApplyingFilter:@"CIColorInvert"];
  v14 = [v13 imageByApplyingFilter:@"CIMaskToAlpha"];
  v22 = 0;
  v15 = [a1 applyRenderedOutputGeometryFromSpace:@"/masterSpace" toInputImage:v14 geometry:v12 composition:v11 error:&v22];

  v16 = v22;
  if (v15)
  {
    v17 = [a1 maskedImageBackgroundImage:v15 source:v10];
    v18 = [MEMORY[0x277CBF740] context];
    [v17 extent];
    v19 = [v18 createCGImage:v17 fromRect:?];
  }

  else
  {
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_164);
    }

    v20 = *MEMORY[0x277D2D080];
    if (os_log_type_enabled(*MEMORY[0x277D2D080], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_error_impl(&dword_25BD29000, v20, OS_LOG_TYPE_ERROR, "Error applying rendered geometry: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

@end