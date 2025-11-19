@interface BWE5InferenceStorage
- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)a3 requirementsNeedingPixelBuffers:(id)a4 requirementsNeedingPixelBufferPools:(id)a5 requirementsNeedingTensors:(id)a6;
- (id)newMetadataDictionarySatisfyingRequirement:(id)a3;
- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)a3 elementCount:;
- (void)clear;
- (void)dealloc;
- (void)setTensorPort:(e5rt_io_port *)a3 forRequirement:(id)a4;
@end

@implementation BWE5InferenceStorage

- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)a3 requirementsNeedingPixelBuffers:(id)a4 requirementsNeedingPixelBufferPools:(id)a5 requirementsNeedingTensors:(id)a6
{
  v12.receiver = self;
  v12.super_class = BWE5InferenceStorage;
  v8 = [(BWInferenceProviderStorage *)&v12 initWithRequirementsNeedingPixelBuffers:a4 requirementsNeedingPixelBufferPools:a5];
  if (v8)
  {
    v8->_bindingNameByRequirement = [a3 copy];
    v9 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v10 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:259];
    v8->_tensorPortByRequirement = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v9 valuePointerFunctions:v10 capacity:{objc_msgSend(a6, "count")}];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(NSMapTable *)self->_tensorPortByRequirement objectEnumerator];
  v4 = v3;
  while ([(NSEnumerator *)v3 nextObject])
  {
    e5rt_io_port_release();
    v3 = v4;
  }

  v5.receiver = self;
  v5.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v5 dealloc];
}

- (void)setTensorPort:(e5rt_io_port *)a3 forRequirement:(id)a4
{
  if ([(NSMapTable *)self->_tensorPortByRequirement objectForKey:a4])
  {
    e5rt_io_port_release();
  }

  tensorPortByRequirement = self->_tensorPortByRequirement;

  [(NSMapTable *)tensorPortByRequirement setObject:a3 forKey:a4];
}

- (void)clear
{
  v2.receiver = self;
  v2.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v2 clear];
}

- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)a3 elementCount:
{
  if (result)
  {
    v4 = ![result tensorPortForRequirement:a2] || e5rt_io_port_retain_tensor_desc() || e5rt_io_port_retain_buffer_object() || e5rt_tensor_desc_get_rank();
    if (a3)
    {
      *a3 = v4;
    }

    return 0;
  }

  return result;
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [a3 metadataKeys];
  v29 = 0;
  v7 = [(BWE5InferenceStorage *)self _newPackedFloat32SurfaceForRequirement:a3 elementCount:&v29];
  if (!v7)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return v5;
  }

  v8 = v7;
  BaseAddress = IOSurfaceGetBaseAddress(v7);
  v10 = [a3 mappingOption];
  v11 = v10;
  if (!v10 || v10 == 2)
  {
    v19 = [v6 count];
    if (v19 >= v29)
    {
      v20 = v29;
    }

    else
    {
      v20 = v19;
    }

    if (!v20)
    {
      goto LABEL_25;
    }

    for (i = 0; i != v20; ++i)
    {
      v22 = [v6 objectAtIndexedSubscript:i];
      LODWORD(v23) = BaseAddress[i];
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), v22}];
    }

    if (v11 != 2 || v29 <= v20)
    {
      goto LABEL_25;
    }

    v25 = [v6 objectAtIndexedSubscript:v20 - 1];
    v26 = [v5 objectForKeyedSubscript:v25];
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v26, 0}];
    while (v20 < v29)
    {
      LODWORD(v27) = BaseAddress[v20];
      [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v27)}];
      ++v20;
    }

    v17 = v5;
    v18 = v13;
    v16 = v25;
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    v12 = objc_alloc(MEMORY[0x1E695DF70]);
    v13 = [v12 initWithCapacity:v29];
    if (v29)
    {
      for (j = 0; j < v29; ++j)
      {
        LODWORD(v14) = BaseAddress[j];
        [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v14)}];
      }
    }

    v16 = [v6 firstObject];
    v17 = v5;
    v18 = v13;
LABEL_24:
    [v17 setObject:v18 forKeyedSubscript:v16];
  }

LABEL_25:
  CFRelease(v8);
  return v5;
}

@end