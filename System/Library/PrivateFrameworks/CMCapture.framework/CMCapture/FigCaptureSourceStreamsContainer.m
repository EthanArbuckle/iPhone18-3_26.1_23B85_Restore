@interface FigCaptureSourceStreamsContainer
- (uint64_t)_populateStreamsFromDeviceVendorForPosition:(uint64_t)a3 baseZoomFactorOverrides:(uint64_t)a4 clientBaseZoomFactorsByPortType:;
- (uint64_t)portTypesSupportingDepth;
- (uint64_t)streamProvidingSDOFRenderingParameters;
- (uint64_t)switchOverZoomFactors;
- (uint64_t)switchOverZoomFactorsWithoutFudge;
- (void)dealloc;
- (void)initWithDeviceType:(uint64_t)a3 position:(int)a4 stillImageDepthDataType:(void *)a5 device:(uint64_t)a6 baseZoomFactorOverrides:(uint64_t)a7 clientBaseZoomFactorsByPortType:;
- (void)zoomFactorsForDepth;
@end

@implementation FigCaptureSourceStreamsContainer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceStreamsContainer;
  [(FigCaptureSourceStreamsContainer *)&v3 dealloc];
}

- (void)initWithDeviceType:(uint64_t)a3 position:(int)a4 stillImageDepthDataType:(void *)a5 device:(uint64_t)a6 baseZoomFactorOverrides:(uint64_t)a7 clientBaseZoomFactorsByPortType:
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = FigCaptureSourceStreamsContainer;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = v13;
  if (v13)
  {
    *(v13 + 2) = a2;
    *(v13 + 3) = a4;
    *(v13 + 2) = a5;
    if ([(FigCaptureSourceStreamsContainer *)v14 _populateStreamsFromDeviceVendorForPosition:a3 baseZoomFactorOverrides:a6 clientBaseZoomFactorsByPortType:a7])
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();

      return 0;
    }
  }

  return v14;
}

- (uint64_t)_populateStreamsFromDeviceVendorForPosition:(uint64_t)a3 baseZoomFactorOverrides:(uint64_t)a4 clientBaseZoomFactorsByPortType:
{
  if (result)
  {
    v7 = result;
    v75[0] = 0;
    v8 = FigCaptureSourceUnderlyingDeviceTypes(*(result + 8));
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v8 count])
    {
      v11 = 0;
      do
      {
        [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
        ++v11;
      }

      while ([v8 count] > v11);
    }

    v12 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    *(v7 + 24) = v12;
    if (v75[0])
    {
      OUTLINED_FUNCTION_14_21();
      FigDebugAssert3();
    }

    else
    {
      v13 = [v12 firstObject];
      *(v7 + 32) = v13;
      v14 = *(v7 + 24);
      v22 = OUTLINED_FUNCTION_14_8(v13, v15, v16, v17, v18, v19, v20, v21, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, 0);
      if (v22)
      {
        v23 = v22;
        v24 = MEMORY[0];
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (MEMORY[0] != v24)
            {
              objc_enumerationMutation(v14);
            }

            [*(8 * i) portType];
            v26 = [OUTLINED_FUNCTION_23_12() setObject:? forKeyedSubscript:?];
          }

          v23 = OUTLINED_FUNCTION_14_8(v26, v27, v28, v29, v30, v31, v32, v33, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v74);
        }

        while (v23);
      }

      *(v7 + 40) = [v10 copy];
      v34 = *(v7 + 8);
      if (v34 <= 9 && ((1 << v34) & 0x310) != 0)
      {
        v35 = [*(v7 + 16) copySynchronizedStreamsGroupForStreams:*(v7 + 24) error:v75];
        if (v75[0])
        {
          OUTLINED_FUNCTION_14_21();
          FigDebugAssert3();
        }

        else
        {
          v36 = [[BWFigVideoCaptureSynchronizedStreamsGroup alloc] initWithSynchronizedStreamsGroup:v35 activeStreams:*(v7 + 24) readOnly:1 baseZoomFactorOverrides:a3 clientBaseZoomFactorsByPortType:a4 error:v75];

          if (v75[0])
          {
            OUTLINED_FUNCTION_14_21();
            FigDebugAssert3();
          }

          else
          {
            v37 = [(BWFigVideoCaptureSynchronizedStreamsGroup *)v36 clientBaseZoomFactorsByPortType];
            if (!v37)
            {
              v37 = [(BWFigVideoCaptureSynchronizedStreamsGroup *)v36 baseZoomFactorsByPortType];
            }

            *(v7 + 48) = v37;
            *(v7 + 56) = [(BWFigVideoCaptureSynchronizedStreamsGroup *)v36 baseZoomFactorsByPortType];
          }
        }
      }
    }

    return v75[0];
  }

  return result;
}

- (uint64_t)portTypesSupportingDepth
{
  if (result)
  {
    switch(*(result + 12))
    {
      case 1:
      case 2:
      case 8:
        v4 = *(result + 8);
        switch(v4)
        {
          case 9:
            v5 = *off_1E798A0D8;
            v8[0] = *off_1E798A0C0;
            v8[1] = v5;
            v1 = MEMORY[0x1E695DEC8];
            v2 = v8;
            v3 = 2;
            goto LABEL_5;
          case 8:
            v9 = *off_1E798A0C0;
            v1 = MEMORY[0x1E695DEC8];
            v2 = &v9;
            break;
          case 4:
            v10 = *off_1E798A0D8;
            v1 = MEMORY[0x1E695DEC8];
            v2 = &v10;
            break;
          default:
            goto LABEL_11;
        }

        goto LABEL_4;
      case 3:
        v11 = *off_1E798A0E8;
        v1 = MEMORY[0x1E695DEC8];
        v2 = &v11;
        goto LABEL_4;
      case 4:
      case 5:
      case 6:
      case 9:
      case 0xA:
        v7 = [*(result + 32) portType];
        v1 = MEMORY[0x1E695DEC8];
        v2 = &v7;
        goto LABEL_4;
      case 7:
        v6 = *off_1E798A0C8;
        v1 = MEMORY[0x1E695DEC8];
        v2 = &v6;
LABEL_4:
        v3 = 1;
LABEL_5:
        result = [v1 arrayWithObjects:v2 count:v3];
        break;
      default:
LABEL_11:
        result = 0;
        break;
    }
  }

  return result;
}

- (void)zoomFactorsForDepth
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [(FigCaptureSourceStreamsContainer *)v1 portTypesSupportingDepth];
  v32 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v32)
  {
    v30 = *v44;
    v29 = *off_1E798C1B8;
    v31 = v1;
    do
    {
      v3 = 0;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v43 + 1) + 8 * v3);
        v5 = *(v1 + 8);
        v6 = v5 > 9;
        v7 = (1 << v5) & 0x310;
        v8 = v6 || v7 == 0;
        if (v8)
        {
          v10 = 1.0;
        }

        else
        {
          [objc_msgSend(*(v1 + 48) objectForKeyedSubscript:{*(*(&v43 + 1) + 8 * v3)), "floatValue"}];
          v10 = v9;
        }

        v33 = v3;
        v11 = [MEMORY[0x1E695DFA8] set];
        v12 = [objc_msgSend(*(v1 + 40) objectForKeyedSubscript:{v4), "getProperty:error:", v29, 0}];
        if ([v12 count])
        {
          v14 = 0;
          v34 = v4;
          do
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v15 = csu_secondaryNativeResolutionZoomFactorsForFormatIndex(v4, v12, v14);
            v16 = [v15 countByEnumeratingWithState:&v38 objects:v37 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v39;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v39 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = MEMORY[0x1E696AD98];
                  [*(*(&v38 + 1) + 8 * i) floatValue];
                  *&v22 = v10 * v21;
                  [v20 numberWithFloat:v22];
                  [OUTLINED_FUNCTION_15() addObject:?];
                }

                v17 = [v15 countByEnumeratingWithState:&v38 objects:v37 count:16];
              }

              while (v17);
            }

            ++v14;
            v4 = v34;
          }

          while ([v12 count] > v14);
        }

        *&v13 = v10;
        [MEMORY[0x1E696AD98] numberWithFloat:v13];
        [OUTLINED_FUNCTION_4() addObject:?];
        v23 = [objc_msgSend(v11 "allObjects")];
        memset(v36, 0, sizeof(v36));
        v24 = [v23 countByEnumeratingWithState:v36 objects:v35 count:16];
        if (v24)
        {
          v25 = v24;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              OUTLINED_FUNCTION_49_7();
              if (!v8)
              {
                objc_enumerationMutation(v23);
              }

              [v2 addObject:*(*(&v36[0] + 1) + 8 * j)];
            }

            v25 = [v23 countByEnumeratingWithState:v36 objects:v35 count:16];
          }

          while (v25);
        }

        v3 = v33 + 1;
        v1 = v31;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v32);
  }

  return v2;
}

- (uint64_t)streamProvidingSDOFRenderingParameters
{
  if (result)
  {
    [-[FigCaptureSourceStreamsContainer portTypesSupportingDepth](result) firstObject];
    v1 = OUTLINED_FUNCTION_17();

    return [v1 objectForKeyedSubscript:?];
  }

  return result;
}

- (uint64_t)switchOverZoomFactors
{
  if (result)
  {
    v1 = *(result + 8);
    switch(v1)
    {
      case 9:
        v5[1] = [*(result + 48) objectForKeyedSubscript:{*off_1E798A0D8, objc_msgSend(*(result + 48), "objectForKeyedSubscript:", *off_1E798A0C0)}];
        v2 = MEMORY[0x1E695DEC8];
        v3 = v5;
        v4 = 2;
        return [v2 arrayWithObjects:v3 count:v4];
      case 8:
        v6 = [*(result + 48) objectForKeyedSubscript:*off_1E798A0C0];
        v2 = MEMORY[0x1E695DEC8];
        v3 = &v6;
        goto LABEL_7;
      case 4:
        v7 = [*(result + 48) objectForKeyedSubscript:*off_1E798A0D8];
        v2 = MEMORY[0x1E695DEC8];
        v3 = &v7;
LABEL_7:
        v4 = 1;
        return [v2 arrayWithObjects:v3 count:v4];
    }

    return 0;
  }

  return result;
}

- (uint64_t)switchOverZoomFactorsWithoutFudge
{
  if (result)
  {
    v1 = *(result + 8);
    switch(v1)
    {
      case 9:
        v5[1] = [*(result + 48) objectForKeyedSubscript:{*off_1E798A0D8, objc_msgSend(*(result + 56), "objectForKeyedSubscript:", *off_1E798A0C0)}];
        v2 = MEMORY[0x1E695DEC8];
        v3 = v5;
        v4 = 2;
        return [v2 arrayWithObjects:v3 count:v4];
      case 8:
        v6 = [*(result + 56) objectForKeyedSubscript:*off_1E798A0C0];
        v2 = MEMORY[0x1E695DEC8];
        v3 = &v6;
        goto LABEL_7;
      case 4:
        v7 = [*(result + 56) objectForKeyedSubscript:*off_1E798A0D8];
        v2 = MEMORY[0x1E695DEC8];
        v3 = &v7;
LABEL_7:
        v4 = 1;
        return [v2 arrayWithObjects:v3 count:v4];
    }

    return 0;
  }

  return result;
}

@end