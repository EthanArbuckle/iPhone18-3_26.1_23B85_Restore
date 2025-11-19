@interface BWRenderList
- (BOOL)hasMetalColorCubeRenderer;
- (BOOL)isPrepared;
- (BWRenderList)initWithAnimationSupported:(BOOL)a3 affectsMetadata:(BOOL)a4;
- (BWRenderList)initWithResourceProvider:(id)a3 originalFilters:(id)a4 processedFilters:(id)a5 optimizationStrategy:(signed __int16)a6 stillImageSettings:(id)a7;
- (NSString)description;
- (uint64_t)_appendBatchRendererFromProvider:(void *)a3 toRendererList:(void *)a4 parameterList:(uint64_t)a5 withContext:;
- (uint64_t)_appendSingleRendererOfType:(uint64_t)a3 forFilter:(void *)a4 fromProvider:(void *)a5 toRendererList:(void *)a6 parameterList:(uint64_t)a7 withContext:;
- (uint64_t)_continueOptimizingRendererList:(void *)a3 parameterList:(id)a4 withFilter:(void *)a5 fromProvider:(id *)a6 context:;
- (uint64_t)_finishOptimizingRendererList:(void *)a3 parameterList:(void *)a4 fromProvider:(unsigned __int16 *)a5 context:(void *)a6 stillImageSettings:;
- (uint64_t)_shouldStreamingSDOFRendererConsumeFilter:(uint64_t)a1;
- (uint64_t)_shouldUseMetalRendererForFilterWithName:(uint64_t)a1;
- (void)dealloc;
- (void)prepareWithParameters:(id)a3 forInputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5;
- (void)setPrepared:(BOOL)a3;
@end

@implementation BWRenderList

- (void)dealloc
{
  p_rendererList = &self->_rendererList;
  slh_first = self->_rendererList.slh_first;
  self->_originalMarkerRendererNode = 0;
  if (slh_first)
  {
    do
    {
      var0 = slh_first->var0.var0;

      v6 = p_rendererList->slh_first;
      if (p_rendererList->slh_first == slh_first)
      {
        v7 = p_rendererList;
      }

      else
      {
        do
        {
          v7 = v6;
          v6 = v6->var0.var0;
        }

        while (v6 != slh_first);
      }

      v7->slh_first = v6->var0.var0;
      free(slh_first);
      slh_first = var0;
    }

    while (var0);
  }

  p_parameterList = &self->_parameterList;
  v8 = self->_parameterList.slh_first;
  if (v8)
  {
    do
    {
      v10 = *v8;

      v11 = p_parameterList->slh_first;
      if (p_parameterList->slh_first == v8)
      {
        v12 = &self->_parameterList;
      }

      else
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11 != v8);
      }

      v12->slh_first = *v11;
      free(v8);
      v8 = v10;
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = BWRenderList;
  [(BWRenderList *)&v13 dealloc];
}

- (BOOL)isPrepared
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  preparationIsolationQueue = self->_preparationIsolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__BWRenderList_isPrepared__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(preparationIsolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BWRenderList)initWithAnimationSupported:(BOOL)a3 affectsMetadata:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = BWRenderList;
  v6 = [(BWRenderList *)&v8 init];
  if (v6)
  {
    v6->_preparationIsolationQueue = dispatch_queue_create("com.apple.coremedia.bwrenderlist.preparation-isolation", 0);
    v6->_originalMarkerRendererNode = 0;
    v6->_parameterList.slh_first = 0;
    v6->_rendererList.slh_first = 0;
    v6->_affectsMetadata = a4;
    v6->_supportsAnimation = a3;
  }

  return v6;
}

- (BWRenderList)initWithResourceProvider:(id)a3 originalFilters:(id)a4 processedFilters:(id)a5 optimizationStrategy:(signed __int16)a6 stillImageSettings:(id)a7
{
  v8 = a6;
  v44.receiver = self;
  v44.super_class = BWRenderList;
  v12 = [(BWRenderList *)&v44 init];
  if (v12)
  {
    v27 = a7;
    v14 = dispatch_queue_create("com.apple.coremedia.bwrenderlist.preparation-isolation", 0);
    v12->_rendererList.slh_first = 0;
    p_rendererList = &v12->_rendererList;
    v12->_preparationIsolationQueue = v14;
    v12->_parameterList.slh_first = 0;
    v43 = 0;
    v42 = 4uLL;
    v38 = v8;
    v39 = 0uLL;
    v40 = [a4 lastObject];
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [a4 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(a4);
          }

          [(BWRenderList *)v12 _continueOptimizingRendererList:&v12->_parameterList.slh_first parameterList:*(*(&v34 + 1) + 8 * i) withFilter:a3 fromProvider:&v38 context:?];
        }

        v17 = [a4 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v17);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = [a5 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(a5);
          }

          [(BWRenderList *)v12 _continueOptimizingRendererList:&v12->_parameterList.slh_first parameterList:*(*(&v29 + 1) + 8 * j) withFilter:a3 fromProvider:&v38 context:?];
        }

        v21 = [a5 countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v21);
    }

    [(BWRenderList *)v12 _finishOptimizingRendererList:&v12->_parameterList.slh_first parameterList:a3 fromProvider:&v38 context:v27 stillImageSettings:?];
    if (v8 == 4)
    {
      slh_first = p_rendererList->slh_first;
      if (p_rendererList->slh_first)
      {
        v25 = 0;
        do
        {
          objc_opt_class();
          v25 += objc_opt_isKindOfClass() & 1;
          slh_first = slh_first->var0.var0;
        }

        while (slh_first);
        v26 = v25 < 2;
      }

      else
      {
        v26 = 1;
      }

      BYTE1(v43) = v26;
    }

    else
    {
      v26 = BYTE1(v43);
    }

    v12->_originalMarkerRendererNode = *(&v39 + 1);
    v12->_affectsMetadata = v43;
    v12->_supportsAnimation = v26;
    v12->_originalFilterNames = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(a4, "valueForKeyPath:", @"name"}];
    v12->_processedFilterNames = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(a5, "valueForKeyPath:", @"name"}];
  }

  return v12;
}

- (uint64_t)_continueOptimizingRendererList:(void *)a3 parameterList:(id)a4 withFilter:(void *)a5 fromProvider:(id *)a6 context:
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [a4 name];
  v13 = [objc_opt_class() shallowDepthOfFieldFilterName];
  v14 = [v12 isEqualToString:@"CIDepthEffectMakeBlurMap"];
  v15 = [v12 isEqualToString:v13];
  v16 = [BWRenderList _shouldUseMetalRendererForFilterWithName:v11];
  if (!*(a6 + 24))
  {
    if ([BWRenderList _shouldStreamingSDOFRendererConsumeFilter:v11])
    {
      [a6[5] addObject:a4];
      if (a6[4] == a4)
      {
        *(a6 + 50) = 1;
      }

      return [(BWRenderList *)v11 _appendBatchRendererFromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
    }

    [(BWRenderList *)v11 _appendBatchRendererFromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
  }

  if ((v15 | v14))
  {
    result = [(BWRenderList *)v11 _appendBatchRendererFromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
    v17 = *a6;
    if (v17 <= 1)
    {
      if (*a6)
      {
        if (v17 != 1)
        {
          return result;
        }

        a6[7] = a4;
        v18 = v11;
        v19 = 1;
        goto LABEL_29;
      }

      return [BWRenderList _continueOptimizingRendererList:a6 parameterList:a4 withFilter:? fromProvider:? context:?];
    }

    if (v17 != 2)
    {
      if (v17 != 4)
      {
        return result;
      }

      return [BWRenderList _continueOptimizingRendererList:a6 parameterList:a4 withFilter:? fromProvider:? context:?];
    }

    if (([objc_msgSend(a4 "name")] & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"CIFilter must be of type CIDepthEffectMakeBlurMap.  Received: %@.", objc_msgSend(a4, "name")), 0}]);
    }

    v18 = v11;
    v19 = 3;
LABEL_29:

    return [(BWRenderList *)v18 _appendSingleRendererOfType:v19 forFilter:a4 fromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
  }

  v20 = *(a6 + 24);
  if (v16)
  {
    if (v20 != 5)
    {
      [(BWRenderList *)v11 _appendBatchRendererFromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
      *(a6 + 24) = 5;
    }

    v18 = v11;
    v19 = 5;
    goto LABEL_29;
  }

  if (v20 != 4)
  {
    [(BWRenderList *)v11 _appendBatchRendererFromProvider:a5 toRendererList:a2 parameterList:a3 withContext:a6];
    *(a6 + 24) = 4;
  }

  result = [a6[5] addObject:a4];
  if (a6[4] == a4)
  {
    *(a6 + 50) = 1;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>", objc_opt_class(), self];
  if ([(NSSet *)self->_originalFilterNames count])
  {
    [v3 appendFormat:@", Original:[%@]", -[NSArray componentsJoinedByString:](-[NSSet allObjects](self->_originalFilterNames, "allObjects"), "componentsJoinedByString:", @", ")];
  }

  if ([(NSSet *)self->_processedFilterNames count])
  {
    [v3 appendFormat:@", Processed:[%@]", -[NSArray componentsJoinedByString:](-[NSSet allObjects](self->_processedFilterNames, "allObjects"), "componentsJoinedByString:", @", ")];
  }

  slh_first = self->_rendererList.slh_first;
  if (slh_first)
  {
    v5 = @", Renderers: ";
  }

  else
  {
    v5 = @", No Renderers";
  }

  [v3 appendString:v5];
  if (slh_first)
  {
    v6 = 0;
    do
    {
      v7 = objc_opt_class();
      [v3 appendFormat:@"[%u] %@ ", v6, NSStringFromClass(v7)];
      slh_first = slh_first->var0.var0;
      v6 = (v6 + 1);
    }

    while (slh_first);
  }

  v8 = self->_parameterList.slh_first;
  if (v8)
  {
    v9 = @", Parameters: ";
  }

  else
  {
    v9 = @", No Parameters";
  }

  [v3 appendString:v9];
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = objc_opt_class();
      [v3 appendFormat:@"[%u] %@ ", v10, NSStringFromClass(v11)];
      v8 = *v8;
      v10 = (v10 + 1);
    }

    while (v8);
  }

  return v3;
}

- (void)setPrepared:(BOOL)a3
{
  preparationIsolationQueue = self->_preparationIsolationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__BWRenderList_setPrepared___block_invoke;
  v4[3] = &unk_1E7990078;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(preparationIsolationQueue, v4);
}

- (void)prepareWithParameters:(id)a3 forInputVideoFormat:(id)a4 inputMediaPropertiesByAttachedMediaKey:(id)a5
{
  if (![(BWRenderList *)self isPrepared])
  {
    if (a3)
    {
      p_parameterList = [a3 parameterList];
    }

    else
    {
      p_parameterList = &self->_parameterList;
    }

    p_rendererList = &self->_rendererList;
    while (1)
    {
      p_rendererList = p_rendererList->slh_first;
      if (!p_rendererList)
      {
        break;
      }

      p_parameterList = p_parameterList->slh_first;
      if ([(BWRenderListRendererNode *)p_rendererList[1].slh_first prepareForRenderingWithParameters:p_parameterList[1].slh_first inputVideoFormat:a4 inputMediaPropertiesByAttachedMediaKey:a5])
      {
        [BWRenderList prepareWithParameters:forInputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
        return;
      }
    }

    [(BWRenderList *)self setPrepared:1];
  }
}

- (uint64_t)_appendBatchRendererFromProvider:(void *)a3 toRendererList:(void *)a4 parameterList:(uint64_t)a5 withContext:
{
  if (result)
  {
    if (a5)
    {
      v9 = *(a5 + 40);
      result = [v9 count];
      if (result)
      {
        v10 = *(a5 + 48);
        v11 = *(a5 + 50);
        v12 = *(a5 + 32);
        v21 = 0;
        v22 = 0;
        result = rl_concreteRendererWithParametersForType(v10, a2, &v22, &v21, v9, v12, v11);
        if (v22)
        {
          v13 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v14 = v22;
          v15 = *(a5 + 8);
          if (!v15)
          {
            v15 = a3;
          }

          *v13 = *v15;
          v13[1] = v14;
          *v15 = v13;
          *(a5 + 8) = v13;
          v16 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v17 = v21;
          v18 = *(a5 + 16);
          if (!v18)
          {
            v18 = a4;
          }

          *v16 = *v18;
          v16[1] = v17;
          *v18 = v16;
          *(a5 + 16) = v16;
          if (v11)
          {
            *(a5 + 24) = v13;
          }

          if (*(a5 + 64))
          {
            v19 = 1;
          }

          else
          {
            v19 = [v22 adjustsMetadata];
          }

          *(a5 + 64) = v19;
          if (*(a5 + 65))
          {
            v20 = 1;
          }

          else
          {
            v20 = [v22 supportsAnimation];
          }

          *(a5 + 65) = v20;
          result = [v9 removeAllObjects];
          *(a5 + 50) = 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)hasMetalColorCubeRenderer
{
  p_rendererList = &self->_rendererList;
  do
  {
    p_rendererList = p_rendererList->slh_first;
    if (!p_rendererList)
    {
      break;
    }

    objc_opt_class();
  }

  while ((objc_opt_isKindOfClass() & 1) == 0);
  return p_rendererList != 0;
}

- (uint64_t)_finishOptimizingRendererList:(void *)a3 parameterList:(void *)a4 fromProvider:(unsigned __int16 *)a5 context:(void *)a6 stillImageSettings:
{
  if (result)
  {
    [(BWRenderList *)result _appendBatchRendererFromProvider:a4 toRendererList:a2 parameterList:a3 withContext:a5];
    if (*(a5 + 7) && *a5 - 1 <= 2)
    {
      OUTLINED_FUNCTION_1_98();
      [(BWRenderList *)v15 _appendSingleRendererOfType:v16 forFilter:v17 fromProvider:v18 toRendererList:v19 parameterList:v20 withContext:v21];
    }

    if (!FigCaptureCurrentProcessIsDeferredmediad() && FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata())
    {
      [objc_msgSend(a6 "captureSettings")];
    }

    result = BWIsSmartStyleAllowedForAdjustedImage(a6);
    if (result)
    {
      OUTLINED_FUNCTION_1_98();

      return [(BWRenderList *)v8 _appendSingleRendererOfType:v9 forFilter:v10 fromProvider:v11 toRendererList:v12 parameterList:v13 withContext:v14];
    }
  }

  return result;
}

- (uint64_t)_shouldUseMetalRendererForFilterWithName:(uint64_t)a1
{
  if (a1)
  {
    NSClassFromString(&cfstr_Ciphotoeffect.isa);
    v1 = OUTLINED_FUNCTION_2_85();
    NSClassFromString(&cfstr_Ciphotoeffect3_1.isa);
    v2 = OUTLINED_FUNCTION_2_85();
    NSClassFromString(&cfstr_Cicolorcubewit.isa);
    if (OUTLINED_FUNCTION_2_85())
    {
      v3 = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Cicolorcubesmi.isa);
      v3 = OUTLINED_FUNCTION_2_85();
    }

    if (v1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v2 | v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_shouldStreamingSDOFRendererConsumeFilter:(uint64_t)a1
{
  if (a1)
  {
    NSClassFromString(&cfstr_Ciphotoeffect.isa);
    v1 = OUTLINED_FUNCTION_0_85();
    NSClassFromString(&cfstr_Ciphotoeffect3_1.isa);
    v2 = OUTLINED_FUNCTION_0_85();
    NSClassFromString(&cfstr_Ciportraiteffe_8.isa);
    if (OUTLINED_FUNCTION_0_85())
    {
      v3 = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Ciportraiteffe_9.isa);
      v3 = OUTLINED_FUNCTION_0_85();
    }

    NSClassFromString(&cfstr_Cicolorcubewit.isa);
    if (OUTLINED_FUNCTION_0_85())
    {
      v4 = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Cicolorcubesmi.isa);
      v4 = OUTLINED_FUNCTION_0_85();
    }

    if ((v1 | v2))
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 | v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)_appendSingleRendererOfType:(uint64_t)a3 forFilter:(void *)a4 fromProvider:(void *)a5 toRendererList:(void *)a6 parameterList:(uint64_t)a7 withContext:
{
  if (result)
  {
    v12 = *(a7 + 32);
    v13 = a3 && v12 == a3;
    v14 = v13;
    v24 = 0;
    v25 = 0;
    if (a3)
    {
      v23 = a3;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    result = rl_concreteRendererWithParametersForType(a2, a4, &v25, &v24, v15, v12, v14);
    if (v25)
    {
      v16 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v17 = v25;
      v18 = *(a7 + 8);
      if (!v18)
      {
        v18 = a5;
      }

      *v16 = *v18;
      v16[1] = v17;
      *v18 = v16;
      *(a7 + 8) = v16;
      v19 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v20 = v24;
      v21 = *(a7 + 16);
      if (!v21)
      {
        v21 = a6;
      }

      *v19 = *v21;
      v19[1] = v20;
      *v21 = v19;
      *(a7 + 16) = v19;
      if (v14)
      {
        *(a7 + 24) = v16;
      }

      if (*(a7 + 64))
      {
        v22 = 1;
      }

      else
      {
        v22 = [v25 adjustsMetadata];
      }

      *(a7 + 64) = v22;
      if (*(a7 + 65))
      {
        result = 1;
      }

      else
      {
        result = [v25 supportsAnimation];
      }

      *(a7 + 65) = result;
    }
  }

  return result;
}

- (uint64_t)_continueOptimizingRendererList:(uint64_t)a3 parameterList:withFilter:fromProvider:context:.cold.1(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  result = [*(a2 + 40) addObject:?];
  if (*(a2 + 32) == a3)
  {
    *(a2 + 50) = 1;
  }

  return result;
}

@end