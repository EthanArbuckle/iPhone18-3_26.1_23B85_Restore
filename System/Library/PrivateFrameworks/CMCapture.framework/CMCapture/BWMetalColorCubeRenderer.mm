@interface BWMetalColorCubeRenderer
+ (id)bundle;
+ (uint64_t)bundle;
- (BWMetalColorCubeRenderer)initWithMetalCommandQueue:(id)queue mixInGammaDomain:(BOOL)domain;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (uint64_t)_loadAndConfigureFilterBundle;
- (void)_attachFiltersForZoomPIPWithInputBuffer:(void *)buffer rendererParameters:;
- (void)_interpolatedLookupTableForEntry:(void *)entry inputLookupTable:(float)table strength:;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWMetalColorCubeRenderer

- (BWMetalColorCubeRenderer)initWithMetalCommandQueue:(id)queue mixInGammaDomain:(BOOL)domain
{
  v10.receiver = self;
  v10.super_class = BWMetalColorCubeRenderer;
  v6 = [(BWMetalColorCubeRenderer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_mtlCommandQueue = queue;
    v6->_previousInterpolationFractionComplete = 1.0;
    if (![(BWMetalColorCubeRenderer *)v6 _loadAndConfigureFilterBundle])
    {
      v9 = 16;
      while (1)
      {
        *([*(&v7->super.isa + v9) filterDescriptor] + 8) = 1;
        *([*(&v7->super.isa + v9) filterDescriptor] + 4) = 1;
        *[*(&v7->super.isa + v9) filterDescriptor] = 32;
        *([*(&v7->super.isa + v9) filterDescriptor] + 12) = 0;
        *([*(&v7->super.isa + v9) filterDescriptor] + 16) = domain;
        v7->_mixingColorCubesInGammaDomain = domain;
        if ([*(&v7->super.isa + v9) prepareToProcess:0])
        {
          break;
        }

        v9 += 8;
        if (v9 == 56)
        {
          v7->_colorLookupCache = objc_alloc_init(BWColorLookupCache);
          return v7;
        }
      }
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  interpolatedForegroundColorLookupTables = self->_interpolatedForegroundColorLookupTables;
  p_interpolatedTable = &self->_interpolatedBackgroundColorLookupTables[0].interpolatedTable;
  for (i = 7; i != 12; ++i)
  {

    v6 = *p_interpolatedTable;
    p_interpolatedTable += 3;
  }

  v7.receiver = self;
  v7.super_class = BWMetalColorCubeRenderer;
  [(BWMetalColorCubeRenderer *)&v7 dealloc];
}

+ (id)bundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/MetalFilter.bundle"];
  v3 = v2;
  if (v2)
  {
    v5 = 0;
    if (([v2 loadAndReturnError:&v5] & 1) == 0)
    {
      +[BWMetalColorCubeRenderer bundle];
    }
  }

  else
  {
    +[BWMetalColorCubeRenderer bundle];
  }

  return v3;
}

- (uint64_t)_loadAndConfigureFilterBundle
{
  if (!self)
  {
    return 0;
  }

  bundle = [objc_opt_class() bundle];
  *(self + 8) = bundle;
  if (!bundle)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return 0;
  }

  v3 = 16;
  while (1)
  {
    v4 = [objc_alloc(NSClassFromString(&cfstr_Figcolorcubeme.isa)) initWithCommandQueue:*(self + 384)];
    *(self + v3) = v4;
    if (!v4)
    {
      break;
    }

    v3 += 8;
    if (v3 == 56)
    {
      return 0;
    }
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  v5 = FigSignalErrorAtGM();
  if (v5)
  {

    *(self + 8) = 0;
    for (i = 16; i != 56; i += 8)
    {

      *(self + i) = 0;
    }
  }

  return v5;
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  v8 = [format colorSpaceProperties] - 5 < 0xFFFFFFFE;
  for (i = 16; i != 56; i += 8)
  {
    *([*(&self->super.isa + i) filterDescriptor] + 12) = v8;
  }

  OUTLINED_FUNCTION_10_27();
  if (v10)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  [parameters prepareForRenderingWithInputVideoFormat:format];
  v11 = self->_filters[0];
  v17 = [objc_msgSend(parameters "colorFilter")];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  foregroundColorLookupTable = [parameters foregroundColorLookupTable];
  v13 = -[FigColorCubeMetalFilter setForegroundCubesWithNames:data:](v11, "setForegroundCubesWithNames:data:", v12, [MEMORY[0x1E695DEC8] arrayWithObjects:&foregroundColorLookupTable count:1]);
  if (!v13)
  {
    v13 = -[FigColorCubeMetalFilter setBackgroundCubeWithName:data:](self->_filters[0], "setBackgroundCubeWithName:data:", [objc_msgSend(parameters "colorFilter")], objc_msgSend(parameters, "backgroundColorLookupTable"));
  }

  v14 = v13;
  OUTLINED_FUNCTION_10_27();
  if (v10)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  return v14;
}

- (void)_interpolatedLookupTableForEntry:(void *)entry inputLookupTable:(float)table strength:
{
  if (!self)
  {
    return 0;
  }

  if (*a2 != entry || *(a2 + 8) != table)
  {
    if (table == 0.0)
    {
      identityColorLookupTable = [*(self + 376) identityColorLookupTable];
    }

    else
    {
      entryCopy = entry;
      if (table == 1.0)
      {
LABEL_10:

        *a2 = entry;
        *(a2 + 8) = table;
        *(a2 + 16) = entryCopy;
        return entryCopy;
      }

      v9 = *(self + 376);
      identityColorLookupTable2 = [v9 identityColorLookupTable];
      *&v11 = table;
      identityColorLookupTable = [v9 interpolatedColorLookupTableFromTable:identityColorLookupTable2 toTable:entry fractionComplete:v11];
    }

    entryCopy = identityColorLookupTable;
    goto LABEL_10;
  }

  return *(a2 + 16);
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  [(BWMetalColorCubeRenderer *)self _attachFiltersForZoomPIPWithInputBuffer:sampleBuffer rendererParameters:parameters];
  [parameters interpolationFractionComplete];
  if (v12 != self->_previousInterpolationFractionComplete)
  {
    [parameters interpolationFractionComplete];
    self->_previousInterpolationFractionComplete = v13;
    v14 = self->_filters[0];
    v54 = [objc_msgSend(parameters "colorFilter")];
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    foregroundColorLookupTable = [parameters foregroundColorLookupTable];
    if (-[FigColorCubeMetalFilter setForegroundCubesWithNames:data:](v14, "setForegroundCubesWithNames:data:", v15, [MEMORY[0x1E695DEC8] arrayWithObjects:&foregroundColorLookupTable count:1]) || -[FigColorCubeMetalFilter setBackgroundCubeWithName:data:](self->_filters[0], "setBackgroundCubeWithName:data:", objc_msgSend(objc_msgSend(parameters, "colorFilter"), "name"), objc_msgSend(parameters, "backgroundColorLookupTable")))
    {
      v40 = 0;
      goto LABEL_31;
    }
  }

  ImageBuffer = CMGetAttachment(sampleBuffer, @"PortraitStillImageFaceAdjustedBlurMap", 0);
  if (ImageBuffer)
  {
    goto LABEL_5;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABF0);
  if (!AttachedMedia)
  {
    ImageBuffer = 0;
LABEL_5:
    v42 = 0;
    goto LABEL_8;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  v17 = OUTLINED_FUNCTION_47_1();
  v42 = CMGetAttachment(v17, v18, v19);
LABEL_8:
  v20 = CMGetAttachment(sampleBuffer, @"FiltersAndRegionArray", 0);
  v21 = v20;
  handlerCopy = handler;
  if (!v20)
  {
    [(FigColorCubeMetalFilter *)self->_filters[0] setInputPixelBuffer:buffer];
    [(FigColorCubeMetalFilter *)self->_filters[0] setMattePixelbuffer:ImageBuffer];
    [(FigColorCubeMetalFilter *)self->_filters[0] setOutputPixelBuffer:processedPixelBuffer];
    [(FigColorCubeMetalFilter *)self->_filters[0] setTargetRectangle:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    -[FigColorCubeMetalFilter setMatteToInputPixelBufferRotationDegrees:](self->_filters[0], "setMatteToInputPixelBufferRotationDegrees:", [v42 intValue]);
    OUTLINED_FUNCTION_10_27();
    if (v38)
    {
      OUTLINED_FUNCTION_10();
      kdebug_trace();
    }

    if ([(FigColorCubeMetalFilter *)self->_filters[0] process])
    {
      v40 = 0;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (![v20 count])
  {
LABEL_27:
    if ([v21 count])
    {
      v39 = [v21 count] - 1;
    }

    else
    {
      v39 = 0;
    }

    handler = handlerCopy;
    v40 = 2 * ([(FigColorCubeMetalFilter *)self->_filters[v39] finishProcessing]== 0);
    goto LABEL_31;
  }

  v22 = 0;
  currentForegroundColorLookupTables = self->_currentForegroundColorLookupTables;
  filters = self->_filters;
  currentBackgroundColorLookupTables = self->_currentBackgroundColorLookupTables;
  v26 = 1;
  while ([objc_msgSend(objc_msgSend(v21 objectAtIndexedSubscript:{v22), "objectForKeyedSubscript:", 0x1F21AA490), "count"}])
  {
    v48 = v26;
    v27 = [objc_msgSend(v21 objectAtIndexedSubscript:{v22), "objectForKeyedSubscript:", 0x1F21AA4D0}];
    v28 = 1.0;
    if (v27)
    {
      [v27 floatValue];
      v28 = v29;
    }

    v30 = -[BWColorLookupCache colorLookupTablesForFilter:](self->_colorLookupCache, "colorLookupTablesForFilter:", [OUTLINED_FUNCTION_47_1() objectAtIndexedSubscript:?]);
    foregroundColorLookupTable2 = [v30 foregroundColorLookupTable];
    backgroundColorLookupTable = [v30 backgroundColorLookupTable];
    v33 = [(BWMetalColorCubeRenderer *)self _interpolatedLookupTableForEntry:foregroundColorLookupTable2 inputLookupTable:v28 strength:?];
    v34 = [(BWMetalColorCubeRenderer *)self _interpolatedLookupTableForEntry:backgroundColorLookupTable inputLookupTable:v28 strength:?];
    v35 = v34;
    if (currentForegroundColorLookupTables[v22] != v33)
    {
      v46 = v34;
      v47 = filters[v22];
      v52 = [objc_msgSend(OUTLINED_FUNCTION_47_1() "objectAtIndexedSubscript:"name"")];
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v51 = v33;
      if (-[FigColorCubeMetalFilter setForegroundCubesWithNames:data:](v47, "setForegroundCubesWithNames:data:", v36, [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1]))
      {
        break;
      }

      currentForegroundColorLookupTables[v22] = v33;
      v35 = v46;
    }

    if (currentBackgroundColorLookupTables[v22] != v35)
    {
      [objc_msgSend(OUTLINED_FUNCTION_47_1() "objectAtIndexedSubscript:"name"")];
      if ([OUTLINED_FUNCTION_37_0() setBackgroundCubeWithName:? data:?])
      {
        break;
      }

      currentBackgroundColorLookupTables[v22] = v35;
    }

    v37 = *(MEMORY[0x1E695F058] + 16);
    v49 = *MEMORY[0x1E695F058];
    v50 = v37;
    [objc_msgSend(objc_msgSend(v21 objectAtIndexedSubscript:{v22), "objectForKeyedSubscript:", 0x1F21AA4B0), "getValue:", &v49}];
    [(FigColorCubeMetalFilter *)filters[v22] setInputPixelBuffer:buffer];
    [(FigColorCubeMetalFilter *)filters[v22] setMattePixelbuffer:ImageBuffer];
    [(FigColorCubeMetalFilter *)filters[v22] setOutputPixelBuffer:processedPixelBuffer];
    [(FigColorCubeMetalFilter *)filters[v22] setTargetRectangle:v49, v50];
    -[FigColorCubeMetalFilter setMatteToInputPixelBufferRotationDegrees:](filters[v22], "setMatteToInputPixelBufferRotationDegrees:", [v42 intValue]);
    if ([(FigColorCubeMetalFilter *)filters[v22] process])
    {
      break;
    }

    v22 = v48;
    v26 = v48 + 1;
    if ([v21 count] <= v48)
    {
      goto LABEL_27;
    }
  }

  v40 = 0;
  handler = handlerCopy;
LABEL_31:
  OUTLINED_FUNCTION_10_27();
  if (v38)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  if (handler)
  {
    (*(handler + 2))(handler, v40, 0);
  }
}

- (void)_attachFiltersForZoomPIPWithInputBuffer:(void *)buffer rendererParameters:
{
  if (self)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(a2, 0x1F21AAEB0);
    if (AttachedMedia)
    {
      v6 = AttachedMedia;
      array = CMGetAttachment(AttachedMedia, @"FiltersForZoomPIPOverlay", 0);
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      v8 = CMGetAttachment(a2, @"FiltersAndRegionArray", 0);
      if (v8)
      {
        v9 = v8;
        if ([v8 count])
        {
          v10 = 0;
          v11 = 0;
          v12 = 0.0;
          v13 = 1;
          v14 = MEMORY[0x1E695F058];
          do
          {
            v15 = [objc_msgSend(v9 objectAtIndexedSubscript:{v10), "objectForKeyedSubscript:", 0x1F21AA490}];
            if (v15)
            {
              v16 = v15;
              v17 = v14[1];
              v26 = *v14;
              v27 = v17;
              [objc_msgSend(objc_msgSend(v9 objectAtIndexedSubscript:{v10), "objectForKeyedSubscript:", 0x1F21AA4B0), "getValue:", &v26}];
              v18 = *&v27 * *(&v27 + 1);
              if (v12 < v18)
              {
                v12 = *&v27 * *(&v27 + 1);
                v11 = v16;
              }
            }

            v10 = v13;
          }

          while ([v9 count] > v13++);
        }

        else
        {
          v11 = 0;
        }

        colorFilter = [v11 objectAtIndexedSubscript:0];
        NSClassFromString(&cfstr_Cicolorcubesmi.isa);
        if (OUTLINED_FUNCTION_5_62())
        {
          cube1Data = [colorFilter cube1Data];
        }

        else
        {
          cube1Data = 0;
        }

        if (!colorFilter)
        {
          goto LABEL_30;
        }
      }

      else
      {
        colorFilter = [buffer colorFilter];
        if ([buffer backgroundColorLookupTable])
        {
          backgroundColorLookupTable = [buffer backgroundColorLookupTable];
        }

        else
        {
          backgroundColorLookupTable = [buffer foregroundColorLookupTable];
        }

        cube1Data = backgroundColorLookupTable;
        if (!colorFilter)
        {
          goto LABEL_30;
        }
      }

      NSClassFromString(&cfstr_Cicolorcubesmi.isa);
      if (OUTLINED_FUNCTION_5_62())
      {
        colorCubeWithColorSpaceFilter = [MEMORY[0x1E695F648] colorCubeWithColorSpaceFilter];
        [colorFilter name];
        [OUTLINED_FUNCTION_37_0() setName:?];
        [colorFilter cubeDimension];
        [colorCubeWithColorSpaceFilter setCubeDimension:?];
        [colorFilter colorSpace];
        [OUTLINED_FUNCTION_37_0() setColorSpace:?];
      }

      else
      {
        NSClassFromString(&cfstr_Ciphotoeffect3_1.isa);
        if ((OUTLINED_FUNCTION_5_62() & 1) == 0)
        {
          NSClassFromString(&cfstr_Ciphotoeffect.isa);
          if ((OUTLINED_FUNCTION_5_62() & 1) == 0)
          {
            v24 = array;
            v25 = colorFilter;
            goto LABEL_29;
          }
        }

        colorCubeWithColorSpaceFilter = [MEMORY[0x1E695F648] colorCubeWithColorSpaceFilter];
        [colorFilter name];
        [OUTLINED_FUNCTION_37_0() setName:?];
        [colorCubeWithColorSpaceFilter setCubeDimension:8589936700.0];
      }

      [colorCubeWithColorSpaceFilter setCubeData:cube1Data];
      v24 = array;
      v25 = colorCubeWithColorSpaceFilter;
LABEL_29:
      [v24 addObject:v25];
LABEL_30:
      if ([array count])
      {
        CMSetAttachment(v6, @"FiltersForZoomPIPOverlay", array, 1u);
      }
    }
  }
}

+ (uint64_t)bundle
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM();
}

@end