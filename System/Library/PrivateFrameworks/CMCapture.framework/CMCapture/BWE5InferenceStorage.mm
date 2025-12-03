@interface BWE5InferenceStorage
- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors;
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)requirement elementCount:;
- (void)clear;
- (void)dealloc;
- (void)setTensorPort:(e5rt_io_port *)port forRequirement:(id)requirement;
@end

@implementation BWE5InferenceStorage

- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors
{
  v12.receiver = self;
  v12.super_class = BWE5InferenceStorage;
  v8 = [(BWInferenceProviderStorage *)&v12 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  if (v8)
  {
    v8->_bindingNameByRequirement = [requirement copy];
    v9 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v10 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:259];
    v8->_tensorPortByRequirement = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v9 valuePointerFunctions:v10 capacity:{objc_msgSend(tensors, "count")}];
  }

  return v8;
}

- (void)dealloc
{
  objectEnumerator = [(NSMapTable *)self->_tensorPortByRequirement objectEnumerator];
  v4 = objectEnumerator;
  while ([(NSEnumerator *)objectEnumerator nextObject])
  {
    e5rt_io_port_release();
    objectEnumerator = v4;
  }

  v5.receiver = self;
  v5.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v5 dealloc];
}

- (void)setTensorPort:(e5rt_io_port *)port forRequirement:(id)requirement
{
  if ([(NSMapTable *)self->_tensorPortByRequirement objectForKey:requirement])
  {
    e5rt_io_port_release();
  }

  tensorPortByRequirement = self->_tensorPortByRequirement;

  [(NSMapTable *)tensorPortByRequirement setObject:port forKey:requirement];
}

- (void)clear
{
  v2.receiver = self;
  v2.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v2 clear];
}

- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)requirement elementCount:
{
  if (result)
  {
    v4 = ![result tensorPortForRequirement:a2] || e5rt_io_port_retain_tensor_desc() || e5rt_io_port_retain_buffer_object() || e5rt_tensor_desc_get_rank();
    if (requirement)
    {
      *requirement = v4;
    }

    return 0;
  }

  return result;
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadataKeys = [requirement metadataKeys];
  v29 = 0;
  v7 = [(BWE5InferenceStorage *)self _newPackedFloat32SurfaceForRequirement:requirement elementCount:&v29];
  if (!v7)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return v5;
  }

  v8 = v7;
  BaseAddress = IOSurfaceGetBaseAddress(v7);
  mappingOption = [requirement mappingOption];
  v11 = mappingOption;
  if (!mappingOption || mappingOption == 2)
  {
    v19 = [metadataKeys count];
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
      v22 = [metadataKeys objectAtIndexedSubscript:i];
      LODWORD(v23) = BaseAddress[i];
      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), v22}];
    }

    if (v11 != 2 || v29 <= v20)
    {
      goto LABEL_25;
    }

    v25 = [metadataKeys objectAtIndexedSubscript:v20 - 1];
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
    firstObject = v25;
    goto LABEL_24;
  }

  if (mappingOption == 1)
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

    firstObject = [metadataKeys firstObject];
    v17 = v5;
    v18 = v13;
LABEL_24:
    [v17 setObject:v18 forKeyedSubscript:firstObject];
  }

LABEL_25:
  CFRelease(v8);
  return v5;
}

@end