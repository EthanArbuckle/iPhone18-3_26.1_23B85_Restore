@interface DYMTLShaderDebuggerTraceGenerator
- (BOOL)_createAndSetInstrumentedComputePipelineStateWithDescriptor:(id)descriptor computeCommandEncoder:(id)encoder;
- (BOOL)_createAndSetInstrumentedRenderPipelineStateWithDescriptor:(id)descriptor renderCommandEncoder:(id)encoder roiType:(int)type;
- (BOOL)_createAndSetInstrumentedTileRenderPipelineStateWithDescriptor:(id)descriptor renderCommandEncoder:(id)encoder;
- (BOOL)_createTraceBufferWithGenerationOptions:(id)options;
- (BOOL)_fragmentBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder;
- (BOOL)_kernelBindingNeedsPlaceholderResource:(id)resource computeCommandEncoder:(id)encoder;
- (BOOL)_prepareComputeCommandEncoder:(id)encoder generationOptions:(id)options;
- (BOOL)_prepareRenderCommandEncoder:(id)encoder generationOptions:(id)options;
- (BOOL)_prepareTraceBufferWithGenerationOptions:(id)options;
- (BOOL)_tileBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder;
- (BOOL)_vertexBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder;
- (DYMTLShaderDebuggerTraceGenerator)initWithDebugFunctionPlayer:(id)player;
- (id).cxx_construct;
- (id)_createInstrumentedFunctionWithInstrumentedLibrary:(id)library originalFunction:(id)function;
- (id)_generateConstantSamplerReflectionWithUniqueIdentifiers:(id)identifiers descriptors:(id)descriptors;
- (id)_generateResourceResolutionRemappingTables;
- (id)_instrumentLibrary:(id)library generationOptions:(id)options;
- (id)_placeholderTextureWithType:(unint64_t)type;
- (id)notifyReplayFinishedAndGenerateTraceContainer;
- (uint64_t)notifyReplayFinishedAndGenerateTraceContainer;
- (void)notifyReplayFinishedAndGenerateTraceContainer;
- (void)prepareCommandEncoderForInstrumentedCall:(unint64_t)call generationOptions:(id)options;
@end

@implementation DYMTLShaderDebuggerTraceGenerator

- (DYMTLShaderDebuggerTraceGenerator)initWithDebugFunctionPlayer:(id)player
{
  v27[2] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v26.receiver = self;
  v26.super_class = DYMTLShaderDebuggerTraceGenerator;
  v6 = [(DYMTLShaderDebuggerTraceGenerator *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    indirectArgumentManager = [playerCopy indirectArgumentManager];
    indirectArgumentManager = v7->_indirectArgumentManager;
    v7->_indirectArgumentManager = indirectArgumentManager;

    device = [(DYMTLFunctionPlayer *)v7->_player device];
    constantSamplerReflection = v7->_constantSamplerReflection;
    v7->_constantSamplerReflection = MEMORY[0x277CBEC10];

    v12 = [device newBufferWithLength:2048 options:0];
    placeholderBuffer = v7->_placeholderBuffer;
    v7->_placeholderBuffer = v12;

    v14 = objc_alloc_init(MEMORY[0x277CD6FC8]);
    [v14 setSupportArgumentBuffers:1];
    v15 = [device newSamplerStateWithDescriptor:v14];
    placeholderSamplerState = v7->_placeholderSamplerState;
    v7->_placeholderSamplerState = v15;

    argumentDescriptor = [MEMORY[0x277CD6C78] argumentDescriptor];
    [argumentDescriptor setDataType:58];
    [argumentDescriptor setIndex:0];
    argumentDescriptor2 = [MEMORY[0x277CD6C78] argumentDescriptor];
    [argumentDescriptor2 setDataType:59];
    [argumentDescriptor2 setIndex:1];
    v27[0] = argumentDescriptor;
    v27[1] = argumentDescriptor2;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [device newArgumentEncoderWithArguments:v19];
    dummyArgumentEncoder = v7->_dummyArgumentEncoder;
    v7->_dummyArgumentEncoder = v20;

    v22 = [device newBufferWithLength:4096 options:0];
    dummyArgumentBuffer = v7->_dummyArgumentBuffer;
    v7->_dummyArgumentBuffer = v22;

    [(MTLArgumentEncoder *)v7->_dummyArgumentEncoder setArgumentBuffer:v7->_dummyArgumentBuffer offset:0];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_placeholderTextureWithType:(unint64_t)type
{
  v17[0] = type;
  p_end_node = &self->_placeholderTextures.__tree_.__end_node_;
  left = self->_placeholderTextures.__tree_.__end_node_.__left_;
  if (left)
  {
    v6 = &self->_placeholderTextures.__tree_.__end_node_;
    do
    {
      v7 = *(left + 4);
      v8 = v7 >= type;
      v9 = v7 < type;
      if (v8)
      {
        v6 = left;
      }

      left = *(left + v9);
    }

    while (left);
    if (v6 != p_end_node && v6[4].__left_ <= type)
    {
      v13 = v6[5].__left_;
      goto LABEL_20;
    }
  }

  device = [(DYMTLFunctionPlayer *)self->_player device];
  if (type < 2)
  {
    goto LABEL_12;
  }

  if (type == 4)
  {
    v11 = 1;
LABEL_16:
    v12 = 16;
    goto LABEL_17;
  }

  if (type != 9)
  {
    v11 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v11 = 0;
  v12 = 1;
LABEL_17:
  v14 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v14 setTextureType:type];
  [v14 setPixelFormat:125];
  [v14 setWidth:16];
  [v14 setHeight:v12];
  [v14 setDepth:1];
  [v14 setMipmapLevelCount:1];
  if (v11)
  {
    [v14 setSampleCount:4];
    [v14 setResourceOptions:32];
  }

  v13 = DYMTLNewTexture(device, v14);
  v17[2] = v17;
  v15 = std::__tree<std::__value_type<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<MTLTextureType,objc_object  {objcproto10MTLTexture}* {__strong},std::less<MTLTextureType>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<MTLTextureType,std::piecewise_construct_t const&,std::tuple<MTLTextureType const&>,std::piecewise_construct_t const&<>>(&p_end_node[-1], v17);
  objc_storeStrong(v15 + 5, v13);

LABEL_20:

  return v13;
}

- (id)_instrumentLibrary:(id)library generationOptions:(id)options
{
  libraryCopy = library;
  optionsCopy = options;
  if (objc_opt_respondsToSelector())
  {
    v8 = libraryCopy;
    code = [v8 code];
    if (objc_opt_respondsToSelector())
    {
      debugType = [v8 debugType];
    }

    else
    {
      debugType = [v8 type];
    }

    type = debugType;
    compileOptions = [v8 compileOptions];
  }

  else
  {
    v8 = DYMTLGetAssociatedObject(libraryCopy, 3u);
    type = [v8 type];
    code = [v8 code];
    compileOptions = [v8 compileOptions];
  }

  v13 = compileOptions;

  if (type == 2)
  {
    v14 = [v13 copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CD6D10]);
    }

    v18 = v16;

    [v18 setTracingEnabled:1];
    if (objc_opt_respondsToSelector())
    {
      [v18 setAdditionalCompilerArguments:@"-fno-tracepoint-instrument-line-markers"];
    }

    device = [libraryCopy device];
    argumentBuffersSupport = [device argumentBuffersSupport];

    if (!argumentBuffersSupport)
    {
      [v18 setAdditionalCompilerArguments:@"-fno-tracepoint-instrument-argument-buffers"];
    }

    objc_storeStrong(&self->_onlineSrc, code);
    device2 = [libraryCopy device];
    onlineSrc = self->_onlineSrc;
    v38 = 0;
    v21 = [device2 newLibraryWithSource:onlineSrc options:v18 error:&v38];
    v22 = v38;

    if (v21)
    {
      goto LABEL_19;
    }

    v29 = MEMORY[0x277CCACA8];
    v19 = [v22 description];
    v30 = [v29 stringWithFormat:@"Error creating instrumented library: %@", v19];
    errorStr = self->_errorStr;
    self->_errorStr = v30;

LABEL_23:
    goto LABEL_24;
  }

  v17 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D0B298]];
  v18 = v17;
  if (v17)
  {
    v19 = dispatch_data_create([v17 bytes], objc_msgSend(v17, "length"), 0, 0);
    device3 = [libraryCopy device];
    v37 = 0;
    v21 = [device3 newLibraryWithData:v19 error:&v37];
    v22 = v37;

    if (v21)
    {

LABEL_19:
      v27 = v21;
      goto LABEL_25;
    }

    v32 = MEMORY[0x277CCACA8];
    v33 = [v22 description];
    v34 = [v32 stringWithFormat:@"Error creating instrumented library: %@", v33];
    v35 = self->_errorStr;
    self->_errorStr = v34;

    goto LABEL_23;
  }

  v28 = self->_errorStr;
  self->_errorStr = @"kDYMTLShaderDebuggerInstrumentedMetallib is nil";

  v22 = 0;
LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (BOOL)_kernelBindingNeedsPlaceholderResource:(id)resource computeCommandEncoder:(id)encoder
{
  resourceCopy = resource;
  encoderCopy = encoder;
  if (([resourceCopy isActive] & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    type = [resourceCopy type];
    if (type)
    {
      if (type == 2)
      {
        v9 = v12;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke_2;
        v12[3] = &unk_27930F4C0;
        v12[4] = resourceCopy;
        v12[5] = &v14;
        [encoderCopy enumerateTexturesUsingBlock:v12];
      }

      else
      {
        if (type != 3)
        {
LABEL_10:
          v7 = *(v15 + 24);
          _Block_object_dispose(&v14, 8);
          goto LABEL_11;
        }

        v9 = v11;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke_3;
        v11[3] = &unk_27930F4E8;
        v11[4] = resourceCopy;
        v11[5] = &v14;
        [encoderCopy enumerateSamplersUsingBlock:v11];
      }
    }

    else
    {
      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke;
      v13[3] = &unk_27930F408;
      v13[4] = resourceCopy;
      v13[5] = &v14;
      [encoderCopy enumerateBuffersUsingBlock:v13];
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) index] == a3)
  {
    v7 = *(a2 + 8);
    if (*a2)
    {
      if (!v7)
      {
        v8 = *a2;
        v9 = [v8 length];
        if (v9 >= [*(a1 + 32) bufferDataSize])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }
    }

    else if (v7)
    {
      v10 = *(a2 + 16);
      if (v10 >= [*(a1 + 32) bufferDataSize])
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    *a4 = 1;
  }
}

void __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) index] == a3)
  {
    v7 = [v8 textureType];
    if (v7 == [*(a1 + 32) textureType])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }
}

uint64_t __98__DYMTLShaderDebuggerTraceGenerator__kernelBindingNeedsPlaceholderResource_computeCommandEncoder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) index];
  if (result == a3)
  {
    if (*a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }

  return result;
}

- (BOOL)_vertexBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder
{
  resourceCopy = resource;
  encoderCopy = encoder;
  if (([resourceCopy isActive] & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    type = [resourceCopy type];
    if (type)
    {
      if (type == 2)
      {
        v9 = v12;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2;
        v12[3] = &unk_27930F4C0;
        v12[4] = resourceCopy;
        v12[5] = &v14;
        [encoderCopy enumerateVertexTexturesUsingBlock:v12];
      }

      else
      {
        if (type != 3)
        {
LABEL_10:
          v7 = *(v15 + 24);
          _Block_object_dispose(&v14, 8);
          goto LABEL_11;
        }

        v9 = v11;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3;
        v11[3] = &unk_27930F4E8;
        v11[4] = resourceCopy;
        v11[5] = &v14;
        [encoderCopy enumerateVertexSamplersUsingBlock:v11];
      }
    }

    else
    {
      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke;
      v13[3] = &unk_27930F408;
      v13[4] = resourceCopy;
      v13[5] = &v14;
      [encoderCopy enumerateVertexBuffersUsingBlock:v13];
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) index] == a3)
  {
    v7 = *(a2 + 8);
    if (*a2)
    {
      if (!v7)
      {
        v8 = *a2;
        v9 = [v8 length];
        if (v9 >= [*(a1 + 32) bufferDataSize])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }
    }

    else if (v7)
    {
      v10 = *(a2 + 16);
      if (v10 >= [*(a1 + 32) bufferDataSize])
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    *a4 = 1;
  }
}

void __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) index] == a3)
  {
    v7 = [v8 textureType];
    if (v7 == [*(a1 + 32) textureType])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }
}

uint64_t __97__DYMTLShaderDebuggerTraceGenerator__vertexBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) index];
  if (result == a3)
  {
    if (*a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }

  return result;
}

- (BOOL)_fragmentBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder
{
  resourceCopy = resource;
  encoderCopy = encoder;
  if (([resourceCopy isActive] & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    type = [resourceCopy type];
    if (type)
    {
      if (type == 2)
      {
        v9 = v12;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2;
        v12[3] = &unk_27930F4C0;
        v12[4] = resourceCopy;
        v12[5] = &v14;
        [encoderCopy enumerateFragmentTexturesUsingBlock:v12];
      }

      else
      {
        if (type != 3)
        {
LABEL_10:
          v7 = *(v15 + 24);
          _Block_object_dispose(&v14, 8);
          goto LABEL_11;
        }

        v9 = v11;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3;
        v11[3] = &unk_27930F4E8;
        v11[4] = resourceCopy;
        v11[5] = &v14;
        [encoderCopy enumerateFragmentSamplersUsingBlock:v11];
      }
    }

    else
    {
      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke;
      v13[3] = &unk_27930F408;
      v13[4] = resourceCopy;
      v13[5] = &v14;
      [encoderCopy enumerateFragmentBuffersUsingBlock:v13];
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) index] == a3)
  {
    v7 = *(a2 + 8);
    if (*a2)
    {
      if (!v7)
      {
        v8 = *a2;
        v9 = [v8 length];
        if (v9 >= [*(a1 + 32) bufferDataSize])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }
    }

    else if (v7)
    {
      v10 = *(a2 + 16);
      if (v10 >= [*(a1 + 32) bufferDataSize])
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    *a4 = 1;
  }
}

void __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) index] == a3)
  {
    v7 = [v8 textureType];
    if (v7 == [*(a1 + 32) textureType])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }
}

uint64_t __99__DYMTLShaderDebuggerTraceGenerator__fragmentBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) index];
  if (result == a3)
  {
    if (*a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }

  return result;
}

- (BOOL)_tileBindingNeedsPlaceholderResource:(id)resource renderCommandEncoder:(id)encoder
{
  resourceCopy = resource;
  encoderCopy = encoder;
  if (([resourceCopy isActive] & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    type = [resourceCopy type];
    if (type)
    {
      if (type == 2)
      {
        v9 = v12;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2;
        v12[3] = &unk_27930F4C0;
        v12[4] = resourceCopy;
        v12[5] = &v14;
        [encoderCopy enumerateTileTexturesUsingBlock:v12];
      }

      else
      {
        if (type != 3)
        {
LABEL_10:
          v7 = *(v15 + 24);
          _Block_object_dispose(&v14, 8);
          goto LABEL_11;
        }

        v9 = v11;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3;
        v11[3] = &unk_27930F4E8;
        v11[4] = resourceCopy;
        v11[5] = &v14;
        [encoderCopy enumerateTileSamplersUsingBlock:v11];
      }
    }

    else
    {
      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke;
      v13[3] = &unk_27930F408;
      v13[4] = resourceCopy;
      v13[5] = &v14;
      [encoderCopy enumerateTileBuffersUsingBlock:v13];
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) index] == a3)
  {
    v7 = *(a2 + 8);
    if (*a2)
    {
      if (!v7)
      {
        v8 = *a2;
        v9 = [v8 length];
        if (v9 >= [*(a1 + 32) bufferDataSize])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }
      }
    }

    else if (v7)
    {
      v10 = *(a2 + 16);
      if (v10 >= [*(a1 + 32) bufferDataSize])
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }

    *a4 = 1;
  }
}

void __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 32) index] == a3)
  {
    v7 = [v8 textureType];
    if (v7 == [*(a1 + 32) textureType])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }
}

uint64_t __95__DYMTLShaderDebuggerTraceGenerator__tileBindingNeedsPlaceholderResource_renderCommandEncoder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) index];
  if (result == a3)
  {
    if (*a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    *a4 = 1;
  }

  return result;
}

- (BOOL)_prepareRenderCommandEncoder:(id)encoder generationOptions:(id)options
{
  encoderCopy = encoder;
  optionsCopy = options;
  v8 = [optionsCopy valueForKey:*MEMORY[0x277D0B338]];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = [optionsCopy valueForKey:*MEMORY[0x277D0B2A0]];
  renderPipelineState = [encoderCopy renderPipelineState];
  v12 = DYMTLGetNullableAssociatedObject(renderPipelineState, 0);
  v13 = [v12 copy];

  v14 = -[DYMTLFunctionPlayer objectForKey:](self->_player, "objectForKey:", [v10 unsignedLongLongValue]);
  v101 = v14;
  if (v14)
  {
    v100 = [(DYMTLShaderDebuggerTraceGenerator *)self _instrumentLibrary:v14 generationOptions:optionsCopy];
    if (!v100)
    {
      v15 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v99 = DYMTLGetAssociatedObject(renderPipelineState, 2u);
    v15 = 1;
    if (unsignedIntValue > 1)
    {
      if (unsignedIntValue == 2)
      {
        fragmentFunction = [v13 fragmentFunction];
        v62 = [(DYMTLShaderDebuggerTraceGenerator *)self _createInstrumentedFunctionWithInstrumentedLibrary:v100 originalFunction:fragmentFunction];
        if (v62)
        {
          [v13 setFragmentFunction:v62];
          if ([(DYMTLShaderDebuggerTraceGenerator *)self _createAndSetInstrumentedRenderPipelineStateWithDescriptor:v13 renderCommandEncoder:encoderCopy roiType:2])
          {
            fragmentBindings = [v99 fragmentBindings];
            v114[0] = MEMORY[0x277D85DD0];
            v114[1] = 3221225472;
            v114[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_3;
            v114[3] = &unk_27930F510;
            v114[4] = self;
            v64 = encoderCopy;
            v115 = v64;
            v98 = optionsCopy;
            v91 = v13;
            v94 = renderPipelineState;
            v84 = fragmentFunction;
            v87 = v62;
            [fragmentBindings enumerateObjectsUsingBlock:v114];

            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_4;
            v113[3] = &unk_27930F538;
            v113[4] = self;
            [v64 enumerateFragmentTexturesUsingBlock:v113];
            v121 = 0;
            v122 = &v121;
            v123 = 0x4812000000;
            v124 = __Block_byref_object_copy__2;
            v125 = __Block_byref_object_dispose__2;
            v126 = "";
            v129 = 0;
            v128 = 0;
            v127 = &v128;
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_5;
            v112[3] = &unk_27930F560;
            v112[4] = &v121;
            [v64 enumerateFragmentSamplersUsingBlock:v112];
            v65 = v122[6];
            v66 = v122 + 7;
            if (v65 != v122 + 7)
            {
              do
              {
                v67 = v65[4];
                v68 = *(v65 + 12);
                v69 = *(v65 + 13);
                v70 = v65[5];
                v71 = DYMTLGetAssociatedObject(v70, 0);
                v72 = [v71 copy];

                [v72 setSupportArgumentBuffers:1];
                device = [v70 device];
                v119 = [device newSamplerStateWithDescriptor:v72];

                [(MTLArgumentEncoder *)self->_dummyArgumentEncoder setSamplerState:v119 atIndex:1];
                LODWORD(v74) = v68;
                LODWORD(v75) = v69;
                [v64 setFragmentSamplerState:v119 lodMinClamp:v67 lodMaxClamp:v74 atIndex:v75];
                v76 = [(DYMTLFunctionPlayer *)self->_player keyForOriginalObject:v70];
                v133 = &v119;
                std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<objc_object  {objcproto15MTLSamplerState}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto15MTLSamplerState} const {__strong}&>,std::piecewise_construct_t const&<>>(&self->_replacedSamplerStates, &v119)[5] = v76;

                v77 = v65[1];
                if (v77)
                {
                  do
                  {
                    v78 = v77;
                    v77 = *v77;
                  }

                  while (v77);
                }

                else
                {
                  do
                  {
                    v78 = v65[2];
                    v35 = *v78 == v65;
                    v65 = v78;
                  }

                  while (!v35);
                }

                v65 = v78;
              }

              while (v78 != v66);
            }

            v109[0] = MEMORY[0x277D85DD0];
            v109[1] = 3221225472;
            v109[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_6;
            v109[3] = &unk_27930F588;
            v79 = v64;
            v110 = v79;
            selfCopy = self;
            [v79 enumerateFragmentBuffersUsingBlock:v109];
            p_first_node = &self->_bytesBufferReplacements.__table_.__first_node_;
            optionsCopy = v98;
            v13 = v91;
            renderPipelineState = v94;
            v38 = v87;
            while (1)
            {
              p_first_node = p_first_node->__next_;
              if (!p_first_node)
              {
                break;
              }

              [v79 setFragmentBuffer:p_first_node[3].__next_ offset:0 atIndex:p_first_node[2].__next_];
            }

            _Block_object_dispose(&v121, 8);
            std::__tree<BufferEntry>::destroy(&v127, v128);
            v81 = v115;
            goto LABEL_54;
          }
        }

        goto LABEL_49;
      }

      if (unsignedIntValue != 3)
      {
LABEL_57:

        goto LABEL_58;
      }
    }

    else
    {
      if (!unsignedIntValue)
      {
        v39 = DYMTLGetAssociatedObject(renderPipelineState, 1u);
        v40 = [v39 copy];

        [v40 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(renderPipelineState, "maxTotalThreadsPerThreadgroup")}];
        tileFunction = [v40 tileFunction];
        v42 = [(DYMTLShaderDebuggerTraceGenerator *)self _createInstrumentedFunctionWithInstrumentedLibrary:v100 originalFunction:tileFunction];
        if (v42)
        {
          v86 = v42;
          [v40 setTileFunction:?];
          v43 = [(DYMTLShaderDebuggerTraceGenerator *)self _createAndSetInstrumentedTileRenderPipelineStateWithDescriptor:v40 renderCommandEncoder:encoderCopy];
          v42 = v86;
          if (v43)
          {
            tileBindings = [v99 tileBindings];
            v90 = v13;
            v93 = renderPipelineState;
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_7;
            v107[3] = &unk_27930F510;
            v107[4] = self;
            v45 = encoderCopy;
            v108 = v45;
            v88 = encoderCopy;
            v96 = v10;
            v83 = tileFunction;
            [tileBindings enumerateObjectsUsingBlock:v107];

            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_8;
            v106[3] = &unk_27930F538;
            v106[4] = self;
            [v45 enumerateTileTexturesUsingBlock:v106];
            v121 = 0;
            v122 = &v121;
            v123 = 0x4812000000;
            v124 = __Block_byref_object_copy__2;
            v125 = __Block_byref_object_dispose__2;
            v126 = "";
            v129 = 0;
            v128 = 0;
            v127 = &v128;
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_9;
            v105[3] = &unk_27930F560;
            v105[4] = &v121;
            [v45 enumerateTileSamplersUsingBlock:v105];
            v46 = v122[6];
            v47 = v122 + 7;
            if (v46 != v122 + 7)
            {
              do
              {
                v48 = v46[4];
                v49 = v46[5];
                v50 = *(v46 + 12);
                v51 = *(v46 + 13);
                v52 = DYMTLGetAssociatedObject(v49, 0);
                v53 = [v52 copy];

                [v53 setSupportArgumentBuffers:1];
                device2 = [v49 device];
                v119 = [device2 newSamplerStateWithDescriptor:v53];

                [(MTLArgumentEncoder *)self->_dummyArgumentEncoder setSamplerState:v119 atIndex:1];
                LODWORD(v55) = v50;
                LODWORD(v56) = v51;
                [v45 setTileSamplerState:v119 lodMinClamp:v48 lodMaxClamp:v55 atIndex:v56];
                v57 = [(DYMTLFunctionPlayer *)self->_player keyForOriginalObject:v49];
                v133 = &v119;
                std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<objc_object  {objcproto15MTLSamplerState}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto15MTLSamplerState} const {__strong}&>,std::piecewise_construct_t const&<>>(&self->_replacedSamplerStates, &v119)[5] = v57;

                v58 = v46[1];
                if (v58)
                {
                  do
                  {
                    v59 = v58;
                    v58 = *v58;
                  }

                  while (v58);
                }

                else
                {
                  do
                  {
                    v59 = v46[2];
                    v35 = *v59 == v46;
                    v46 = v59;
                  }

                  while (!v35);
                }

                v46 = v59;
              }

              while (v59 != v47);
            }

            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_10;
            v102[3] = &unk_27930F588;
            v60 = v45;
            v103 = v60;
            selfCopy2 = self;
            [v60 enumerateTileBuffersUsingBlock:v102];
            v61 = &self->_bytesBufferReplacements.__table_.__first_node_;
            encoderCopy = v88;
            v13 = v90;
            v10 = v96;
            renderPipelineState = v93;
            while (1)
            {
              v61 = v61->__next_;
              if (!v61)
              {
                break;
              }

              [v60 setTileBuffer:v61[3].__next_ offset:0 atIndex:v61[2].__next_];
            }

            _Block_object_dispose(&v121, 8);
            std::__tree<BufferEntry>::destroy(&v127, v128);

            goto LABEL_56;
          }
        }

        goto LABEL_51;
      }

      if (unsignedIntValue != 1)
      {
        goto LABEL_57;
      }
    }

    fragmentFunction = [v13 vertexFunction];
    v18 = [(DYMTLShaderDebuggerTraceGenerator *)self _createInstrumentedFunctionWithInstrumentedLibrary:v100 originalFunction:fragmentFunction];
    if (v18)
    {
      [v13 setVertexFunction:v18];
      if ([(DYMTLShaderDebuggerTraceGenerator *)self _createAndSetInstrumentedRenderPipelineStateWithDescriptor:v13 renderCommandEncoder:encoderCopy roiType:unsignedIntValue])
      {
        vertexBindings = [v99 vertexBindings];
        v85 = v18;
        v131[0] = MEMORY[0x277D85DD0];
        v131[1] = 3221225472;
        v131[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke;
        v131[3] = &unk_27930F510;
        v131[4] = self;
        v20 = encoderCopy;
        v132 = v20;
        v89 = v13;
        v95 = v10;
        v97 = optionsCopy;
        v92 = renderPipelineState;
        v84 = fragmentFunction;
        [vertexBindings enumerateObjectsUsingBlock:v131];

        v130[0] = MEMORY[0x277D85DD0];
        v130[1] = 3221225472;
        v130[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_2;
        v130[3] = &unk_27930F538;
        v130[4] = self;
        [v20 enumerateVertexTexturesUsingBlock:v130];
        v121 = 0;
        v122 = &v121;
        v123 = 0x4812000000;
        v124 = __Block_byref_object_copy__2;
        v125 = __Block_byref_object_dispose__2;
        v126 = "";
        v129 = 0;
        v128 = 0;
        v127 = &v128;
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_67;
        v120[3] = &unk_27930F560;
        v120[4] = &v121;
        [v20 enumerateVertexSamplersUsingBlock:v120];
        v21 = v122[6];
        v22 = v122 + 7;
        if (v21 != v122 + 7)
        {
          do
          {
            v23 = v21[4];
            v24 = *(v21 + 12);
            v25 = *(v21 + 13);
            v26 = v21[5];
            v27 = DYMTLGetAssociatedObject(v26, 0);
            v28 = [v27 copy];

            [v28 setSupportArgumentBuffers:1];
            device3 = [v26 device];
            v119 = [device3 newSamplerStateWithDescriptor:v28];

            [(MTLArgumentEncoder *)self->_dummyArgumentEncoder setSamplerState:v119 atIndex:1];
            LODWORD(v30) = v24;
            LODWORD(v31) = v25;
            [v20 setVertexSamplerState:v119 lodMinClamp:v23 lodMaxClamp:v30 atIndex:v31];
            v32 = [(DYMTLFunctionPlayer *)self->_player keyForOriginalObject:v26];
            v133 = &v119;
            std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<objc_object  {objcproto15MTLSamplerState}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto15MTLSamplerState} const {__strong}&>,std::piecewise_construct_t const&<>>(&self->_replacedSamplerStates, &v119)[5] = v32;

            v33 = v21[1];
            if (v33)
            {
              do
              {
                v34 = v33;
                v33 = *v33;
              }

              while (v33);
            }

            else
            {
              do
              {
                v34 = v21[2];
                v35 = *v34 == v21;
                v21 = v34;
              }

              while (!v35);
            }

            v21 = v34;
          }

          while (v34 != v22);
        }

        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_2_68;
        v116[3] = &unk_27930F588;
        v36 = v20;
        v117 = v36;
        selfCopy3 = self;
        [v36 enumerateVertexBuffersUsingBlock:v116];
        v37 = &self->_bytesBufferReplacements.__table_.__first_node_;
        v13 = v89;
        v10 = v95;
        optionsCopy = v97;
        renderPipelineState = v92;
        v38 = v85;
        while (1)
        {
          v37 = v37->__next_;
          if (!v37)
          {
            break;
          }

          [v36 setVertexBuffer:v37[3].__next_ offset:0 atIndex:v37[2].__next_];
        }

        _Block_object_dispose(&v121, 8);
        std::__tree<BufferEntry>::destroy(&v127, v128);
        v81 = v132;
LABEL_54:

LABEL_56:
        v15 = 1;
        goto LABEL_57;
      }
    }

LABEL_49:
LABEL_51:
    v15 = 0;
    goto LABEL_57;
  }

  errorStr = self->_errorStr;
  self->_errorStr = @"kDYMTLShaderDebuggerLibraryId library not found in object map";

  v15 = 0;
LABEL_59:

  return v15;
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if ([*(a1 + 32) _vertexBindingNeedsPlaceholderResource:? renderCommandEncoder:?])
  {
    v5 = [v7 type];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = [*(a1 + 32) _placeholderTextureWithType:{objc_msgSend(v7, "textureType")}];
        [*(a1 + 40) setVertexTexture:v6 atIndex:{objc_msgSend(v7, "index")}];
      }

      else if (v5 == 3)
      {
        [*(a1 + 40) setVertexSamplerState:*(*(a1 + 32) + 56) atIndex:{objc_msgSend(v7, "index")}];
      }
    }

    else
    {
      [*(a1 + 40) setVertexBuffer:*(*(a1 + 32) + 40) offset:0 atIndex:{objc_msgSend(v7, "index")}];
    }
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_67(uint64_t a1, void **a2, unint64_t a3)
{
  v7[0] = a3;
  v5 = DYMTLGetAssociatedObject(*a2, 0);
  if (([v5 supportArgumentBuffers] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7[2] = v7;
    *(std::__tree<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v6 + 48, v7) + 5) = *a2;
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_2_68(uint64_t a1, void *a2, unint64_t a3)
{
  v13[0] = a3;
  if (!*a2 && a2[1])
  {
    v5 = [*(a1 + 32) device];
    v6 = v5;
    v7 = 0;
    v8 = a2[1];
    if (!*a2)
    {
      if (v8)
      {
        v7 = a2[2];
      }
    }

    v9 = [v5 newBufferWithBytes:v8 length:v7 options:0];

    v10 = *(a1 + 40);
    v13[2] = v13;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::piecewise_construct_t const&<>>((v10 + 136), v13);
    v12 = v11[3];
    v11[3] = v9;
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if ([*(a1 + 32) _fragmentBindingNeedsPlaceholderResource:? renderCommandEncoder:?])
  {
    v5 = [v7 type];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = [*(a1 + 32) _placeholderTextureWithType:{objc_msgSend(v7, "textureType")}];
        [*(a1 + 40) setFragmentTexture:v6 atIndex:{objc_msgSend(v7, "index")}];
      }

      else if (v5 == 3)
      {
        [*(a1 + 40) setFragmentSamplerState:*(*(a1 + 32) + 56) atIndex:{objc_msgSend(v7, "index")}];
      }
    }

    else
    {
      [*(a1 + 40) setFragmentBuffer:*(*(a1 + 32) + 40) offset:0 atIndex:{objc_msgSend(v7, "index")}];
    }
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_5(uint64_t a1, void **a2, unint64_t a3)
{
  v7[0] = a3;
  v5 = DYMTLGetAssociatedObject(*a2, 0);
  if (([v5 supportArgumentBuffers] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7[2] = v7;
    *(std::__tree<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v6 + 48, v7) + 5) = *a2;
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_6(uint64_t a1, void *a2, unint64_t a3)
{
  v13[0] = a3;
  if (!*a2 && a2[1])
  {
    v5 = [*(a1 + 32) device];
    v6 = v5;
    v7 = 0;
    v8 = a2[1];
    if (!*a2)
    {
      if (v8)
      {
        v7 = a2[2];
      }
    }

    v9 = [v5 newBufferWithBytes:v8 length:v7 options:0];

    v10 = *(a1 + 40);
    v13[2] = v13;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::piecewise_construct_t const&<>>((v10 + 136), v13);
    v12 = v11[3];
    v11[3] = v9;
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if ([*(a1 + 32) _tileBindingNeedsPlaceholderResource:? renderCommandEncoder:?])
  {
    v5 = [v7 type];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = [*(a1 + 32) _placeholderTextureWithType:{objc_msgSend(v7, "textureType")}];
        [*(a1 + 40) setTileTexture:v6 atIndex:{objc_msgSend(v7, "index")}];
      }

      else if (v5 == 3)
      {
        [*(a1 + 40) setTileSamplerState:*(*(a1 + 32) + 56) atIndex:{objc_msgSend(v7, "index")}];
      }
    }

    else
    {
      [*(a1 + 40) setTileBuffer:*(*(a1 + 32) + 40) offset:0 atIndex:{objc_msgSend(v7, "index")}];
    }
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2860C54E8])
  {
    [*(*(a1 + 32) + 88) setTexture:v3 atIndex:0];
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_9(uint64_t a1, void **a2, unint64_t a3)
{
  v7[0] = a3;
  if ([*a2 conformsToProtocol:&unk_2860CB168])
  {
    v5 = DYMTLGetAssociatedObject(*a2, 0);
    if (([v5 supportArgumentBuffers] & 1) == 0)
    {
      v6 = *(*(a1 + 32) + 8);
      v7[2] = v7;
      *(std::__tree<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v6 + 48, v7) + 5) = *a2;
    }
  }
}

void __84__DYMTLShaderDebuggerTraceGenerator__prepareRenderCommandEncoder_generationOptions___block_invoke_10(uint64_t a1, void *a2, unint64_t a3)
{
  v13[0] = a3;
  if (!*a2 && a2[1])
  {
    v5 = [*(a1 + 32) device];
    v6 = v5;
    v7 = 0;
    v8 = a2[1];
    if (!*a2)
    {
      if (v8)
      {
        v7 = a2[2];
      }
    }

    v9 = [v5 newBufferWithBytes:v8 length:v7 options:0];

    v10 = *(a1 + 40);
    v13[2] = v13;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::piecewise_construct_t const&<>>((v10 + 136), v13);
    v12 = v11[3];
    v11[3] = v9;
  }
}

- (BOOL)_prepareComputeCommandEncoder:(id)encoder generationOptions:(id)options
{
  encoderCopy = encoder;
  optionsCopy = options;
  v8 = [optionsCopy valueForKey:*MEMORY[0x277D0B2A0]];
  computePipelineState = [encoderCopy computePipelineState];
  v10 = DYMTLGetAssociatedObject(computePipelineState, 0);
  v11 = [v10 copy];

  [v11 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(computePipelineState, "maxTotalThreadsPerThreadgroup")}];
  v12 = -[DYMTLFunctionPlayer objectForKey:](self->_player, "objectForKey:", [v8 unsignedLongLongValue]);
  if (v12)
  {
    v13 = [(DYMTLShaderDebuggerTraceGenerator *)self _instrumentLibrary:v12 generationOptions:optionsCopy];
    if (v13)
    {
      v42 = v13;
      computeFunction = [v11 computeFunction];
      v14 = [(DYMTLShaderDebuggerTraceGenerator *)self _createInstrumentedFunctionWithInstrumentedLibrary:v13 originalFunction:computeFunction];
      v43 = v14;
      if (v14 && ([v11 setComputeFunction:v14], -[DYMTLShaderDebuggerTraceGenerator _createAndSetInstrumentedComputePipelineStateWithDescriptor:computeCommandEncoder:](self, "_createAndSetInstrumentedComputePipelineStateWithDescriptor:computeCommandEncoder:", v11, encoderCopy)))
      {
        v41 = encoderCopy;
        v39 = computePipelineState;
        v40 = v8;
        v38 = v12;
        v37 = DYMTLGetAssociatedObject(computePipelineState, 2u);
        arguments = [v37 arguments];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke;
        v59[3] = &unk_27930F510;
        v59[4] = self;
        v16 = encoderCopy;
        v60 = v16;
        [arguments enumerateObjectsUsingBlock:v59];

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke_2;
        v58[3] = &unk_27930F538;
        v58[4] = self;
        [v16 enumerateTexturesUsingBlock:v58];
        v50 = 0;
        v51 = &v50;
        v52 = 0x4812000000;
        v53 = __Block_byref_object_copy__2;
        v54 = __Block_byref_object_dispose__2;
        v55 = "";
        v57[0] = 0;
        v57[1] = 0;
        v56 = v57;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke_3;
        v49[3] = &unk_27930F560;
        v49[4] = &v50;
        [v16 enumerateSamplersUsingBlock:v49];
        v17 = v51[6];
        v18 = v51 + 7;
        if (v17 != v51 + 7)
        {
          do
          {
            v19 = v17[4];
            v20 = *(v17 + 12);
            v21 = *(v17 + 13);
            v22 = v17[5];
            v23 = DYMTLGetAssociatedObject(v22, 0);
            v24 = [v23 copy];

            [v24 setSupportArgumentBuffers:1];
            device = [v22 device];
            v48 = [device newSamplerStateWithDescriptor:v24];

            [(MTLArgumentEncoder *)self->_dummyArgumentEncoder setSamplerState:v48 atIndex:1];
            LODWORD(v26) = v20;
            LODWORD(v27) = v21;
            [v16 setSamplerState:v48 lodMinClamp:v19 lodMaxClamp:v26 atIndex:v27];
            v28 = [(DYMTLFunctionPlayer *)self->_player keyForOriginalObject:v22];
            v61 = &v48;
            std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::__emplace_unique_key_args<objc_object  {objcproto15MTLSamplerState}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto15MTLSamplerState} const {__strong}&>,std::piecewise_construct_t const&<>>(&self->_replacedSamplerStates, &v48)[5] = v28;

            v29 = v17[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v17[2];
                v31 = *v30 == v17;
                v17 = v30;
              }

              while (!v31);
            }

            v17 = v30;
          }

          while (v30 != v18);
        }

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke_4;
        v45[3] = &unk_27930F588;
        v32 = v16;
        v46 = v32;
        selfCopy = self;
        [v32 enumerateBuffersUsingBlock:v45];
        p_first_node = &self->_bytesBufferReplacements.__table_.__first_node_;
        encoderCopy = v41;
        computePipelineState = v39;
        v8 = v40;
        v12 = v38;
        while (1)
        {
          p_first_node = p_first_node->__next_;
          if (!p_first_node)
          {
            break;
          }

          [v32 setBuffer:p_first_node[3].__next_ offset:0 atIndex:p_first_node[2].__next_];
        }

        _Block_object_dispose(&v50, 8);
        std::__tree<BufferEntry>::destroy(&v56, v57[0]);

        v35 = 1;
        v13 = v42;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    errorStr = self->_errorStr;
    self->_errorStr = @"kDYMTLShaderDebuggerLibraryId library not found in object map";

    v35 = 0;
  }

  return v35;
}

void __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if ([*(a1 + 32) _kernelBindingNeedsPlaceholderResource:? computeCommandEncoder:?])
  {
    v5 = [v7 type];
    if (v5)
    {
      if (v5 == 2)
      {
        v6 = [*(a1 + 32) _placeholderTextureWithType:{objc_msgSend(v7, "textureType")}];
        [*(a1 + 40) setTexture:v6 atIndex:{objc_msgSend(v7, "index")}];
      }

      else if (v5 == 3)
      {
        [*(a1 + 40) setSamplerState:*(*(a1 + 32) + 56) atIndex:{objc_msgSend(v7, "index")}];
      }
    }

    else
    {
      [*(a1 + 40) setBuffer:*(*(a1 + 32) + 40) offset:0 atIndex:{objc_msgSend(v7, "index")}];
    }
  }
}

void __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke_3(uint64_t a1, void **a2, unint64_t a3)
{
  v7[0] = a3;
  v5 = DYMTLGetAssociatedObject(*a2, 0);
  if (([v5 supportArgumentBuffers] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7[2] = v7;
    *(std::__tree<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,DYMTLBoundSamplerInfo>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,DYMTLBoundSamplerInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v6 + 48, v7) + 5) = *a2;
  }
}

void __85__DYMTLShaderDebuggerTraceGenerator__prepareComputeCommandEncoder_generationOptions___block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v13[0] = a3;
  if (!*a2 && a2[1])
  {
    v5 = [*(a1 + 32) device];
    v6 = v5;
    v7 = 0;
    v8 = a2[1];
    if (!*a2)
    {
      if (v8)
      {
        v7 = a2[2];
      }
    }

    v9 = [v5 newBufferWithBytes:v8 length:v7 options:0];

    v10 = *(a1 + 40);
    v13[2] = v13;
    v11 = std::__hash_table<std::__hash_value_type<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong}>,std::__unordered_map_hasher<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,objc_object  {objcproto9MTLBuffer}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}* {__strong}>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::piecewise_construct_t const&<>>((v10 + 136), v13);
    v12 = v11[3];
    v11[3] = v9;
  }
}

- (id)_generateConstantSamplerReflectionWithUniqueIdentifiers:(id)identifiers descriptors:(id)descriptors
{
  identifiersCopy = identifiers;
  descriptorsCopy = descriptors;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [identifiersCopy count];
  if (v8 == [descriptorsCopy count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__DYMTLShaderDebuggerTraceGenerator__generateConstantSamplerReflectionWithUniqueIdentifiers_descriptors___block_invoke;
    v13[3] = &unk_27930F5B0;
    v14 = identifiersCopy;
    v9 = dictionary;
    v15 = v9;
    [descriptorsCopy enumerateObjectsUsingBlock:v13];
    v10 = v15;
    v11 = v9;
  }

  return dictionary;
}

void __105__DYMTLShaderDebuggerTraceGenerator__generateConstantSamplerReflectionWithUniqueIdentifiers_descriptors___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GPUTools::MTL::CaptureHelper::SaveObject();
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
}

- (BOOL)_createAndSetInstrumentedRenderPipelineStateWithDescriptor:(id)descriptor renderCommandEncoder:(id)encoder roiType:(int)type
{
  descriptorCopy = descriptor;
  encoderCopy = encoder;
  device = [encoderCopy device];
  v22 = 0;
  v23 = 0;
  v11 = [device newRenderPipelineStateWithDescriptor:descriptorCopy options:0x200000 reflection:&v23 error:&v22];
  v12 = v23;
  v13 = v22;

  if (v11)
  {
    DYMTLSetAssociatedObject(v11, 0, descriptorCopy);
    DYMTLSetAssociatedObject(v11, 2u, v12);
    traceBuffer = self->_traceBuffer;
    if (type == 2)
    {
      [encoderCopy setFragmentBuffer:traceBuffer offset:0 atIndex:{objc_msgSend(v12, "traceBufferIndex")}];
    }

    else
    {
      [encoderCopy setVertexBuffer:traceBuffer offset:0 atIndex:{objc_msgSend(v12, "traceBufferIndex")}];
    }

    [encoderCopy setRenderPipelineState:v11];
    constantSamplerUniqueIdentifiers = [v12 constantSamplerUniqueIdentifiers];
    errorStr = [v12 constantSamplerDescriptors];
    v19 = [(DYMTLShaderDebuggerTraceGenerator *)self _generateConstantSamplerReflectionWithUniqueIdentifiers:constantSamplerUniqueIdentifiers descriptors:errorStr];
    constantSamplerReflection = self->_constantSamplerReflection;
    self->_constantSamplerReflection = v19;
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    constantSamplerUniqueIdentifiers = [v13 description];
    v17 = [v15 stringWithFormat:@"Error creating instrumented render pipeline state: %@", constantSamplerUniqueIdentifiers];
    errorStr = self->_errorStr;
    self->_errorStr = v17;
  }

  return v11 != 0;
}

- (BOOL)_createAndSetInstrumentedComputePipelineStateWithDescriptor:(id)descriptor computeCommandEncoder:(id)encoder
{
  descriptorCopy = descriptor;
  encoderCopy = encoder;
  device = [encoderCopy device];
  v19 = 0;
  v20 = 0;
  v9 = [device newComputePipelineStateWithDescriptor:descriptorCopy options:0x200000 reflection:&v20 error:&v19];
  v10 = v20;
  v11 = v19;

  if (v9)
  {
    DYMTLSetAssociatedObject(v9, 0, descriptorCopy);
    DYMTLSetAssociatedObject(v9, 2u, v10);
    [encoderCopy setBuffer:self->_traceBuffer offset:0 atIndex:{objc_msgSend(v10, "traceBufferIndex")}];
    [encoderCopy setComputePipelineState:v9];
    constantSamplerUniqueIdentifiers = [v10 constantSamplerUniqueIdentifiers];
    errorStr = [v10 constantSamplerDescriptors];
    v14 = [(DYMTLShaderDebuggerTraceGenerator *)self _generateConstantSamplerReflectionWithUniqueIdentifiers:constantSamplerUniqueIdentifiers descriptors:errorStr];
    constantSamplerReflection = self->_constantSamplerReflection;
    self->_constantSamplerReflection = v14;
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    constantSamplerUniqueIdentifiers = [v11 description];
    v17 = [v16 stringWithFormat:@"Error creating instrumented compute pipeline state: %@", constantSamplerUniqueIdentifiers];
    errorStr = self->_errorStr;
    self->_errorStr = v17;
  }

  return v9 != 0;
}

- (BOOL)_createAndSetInstrumentedTileRenderPipelineStateWithDescriptor:(id)descriptor renderCommandEncoder:(id)encoder
{
  descriptorCopy = descriptor;
  encoderCopy = encoder;
  device = [encoderCopy device];
  v19 = 0;
  v20 = 0;
  v9 = [device newRenderPipelineStateWithTileDescriptor:descriptorCopy options:0x200000 reflection:&v20 error:&v19];
  v10 = v20;
  v11 = v19;

  if (v9)
  {
    DYMTLSetAssociatedObject(v9, 0, descriptorCopy);
    DYMTLSetAssociatedObject(v9, 2u, v10);
    [encoderCopy setTileBuffer:self->_traceBuffer offset:0 atIndex:{objc_msgSend(v10, "traceBufferIndex")}];
    [encoderCopy setRenderPipelineState:v9];
    constantSamplerUniqueIdentifiers = [v10 constantSamplerUniqueIdentifiers];
    errorStr = [v10 constantSamplerDescriptors];
    v14 = [(DYMTLShaderDebuggerTraceGenerator *)self _generateConstantSamplerReflectionWithUniqueIdentifiers:constantSamplerUniqueIdentifiers descriptors:errorStr];
    constantSamplerReflection = self->_constantSamplerReflection;
    self->_constantSamplerReflection = v14;
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    constantSamplerUniqueIdentifiers = [v11 description];
    v17 = [v16 stringWithFormat:@"Error creating instrumented render pipeline state: %@", constantSamplerUniqueIdentifiers];
    errorStr = self->_errorStr;
    self->_errorStr = v17;
  }

  return v9 != 0;
}

- (id)_createInstrumentedFunctionWithInstrumentedLibrary:(id)library originalFunction:(id)function
{
  libraryCopy = library;
  functionCopy = function;
  if ([DYMTLShaderDebuggerTraceGenerator _createInstrumentedFunctionWithInstrumentedLibrary:originalFunction:]::onceToken != -1)
  {
    [DYMTLShaderDebuggerTraceGenerator _createInstrumentedFunctionWithInstrumentedLibrary:originalFunction:];
  }

  if (([DYMTLShaderDebuggerTraceGenerator _createInstrumentedFunctionWithInstrumentedLibrary:originalFunction:]::llvmLoaded & 1) == 0)
  {
    errorStr = self->_errorStr;
    self->_errorStr = @"Shader Debugger is not supported in this system configuration. Please install an Xcode with an SDK that is aligned to your OS version.";

    v13 = 0;
    goto LABEL_17;
  }

  v8 = DYMTLGetNullableAssociatedObject(functionCopy, 4u);
  if (v8)
  {
    name = [functionCopy name];
    v21 = 0;
    v10 = [libraryCopy newFunctionWithName:name constantValues:v8 error:&v21];
    v11 = v21;

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    v16 = MEMORY[0x277CCACA8];
    bitcodeData = [v11 description];
    v17 = [v16 stringWithFormat:@"Error creating instrumented function: %@", bitcodeData];
    v18 = self->_errorStr;
    self->_errorStr = v17;
LABEL_15:

    v13 = 0;
    goto LABEL_16;
  }

  name2 = [functionCopy name];
  v10 = [libraryCopy newFunctionWithName:name2];

  v11 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  bitcodeData = [v10 bitcodeData];
  if (!bitcodeData)
  {
    v18 = self->_errorStr;
    v19 = @"Shader bitcode not found.";
LABEL_14:
    self->_errorStr = &v19->isa;
    goto LABEL_15;
  }

  if (!self->_metadata)
  {
    v18 = self->_errorStr;
    v19 = @"Could not generate shader metadata. Please update your target device to the latest OS version";
    goto LABEL_14;
  }

  v13 = v10;
LABEL_16:

LABEL_17:

  return v13;
}

char *__105__DYMTLShaderDebuggerTraceGenerator__createInstrumentedFunctionWithInstrumentedLibrary_originalFunction___block_invoke()
{
  result = _dyld_image_count();
  if (result)
  {
    v1 = 0;
    v2 = result - 1;
    do
    {
      image_name = _dyld_get_image_name(v1);
      result = strstr(image_name, "libLLVM.dylib");
      [DYMTLShaderDebuggerTraceGenerator _createInstrumentedFunctionWithInstrumentedLibrary:originalFunction:]::llvmLoaded |= result != 0;
      if ([DYMTLShaderDebuggerTraceGenerator _createInstrumentedFunctionWithInstrumentedLibrary:originalFunction:]::llvmLoaded)
      {
        break;
      }
    }

    while (v2 != v1++);
  }

  return result;
}

- (BOOL)_createTraceBufferWithGenerationOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy valueForKey:*MEMORY[0x277D0B338]];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D0B380]];
  v8 = v7;
  if ((unsignedIntValue & 0xFFFFFFFD) != 0)
  {
    unsignedIntegerValue = 0x200000;
  }

  else
  {
    unsignedIntegerValue = 0x4000000;
  }

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  device = [(DYMTLFunctionPlayer *)self->_player device];
  v11 = [device newBufferWithLength:unsignedIntegerValue options:0];
  traceBuffer = self->_traceBuffer;
  self->_traceBuffer = v11;

  v13 = self->_traceBuffer != 0;
  return v13;
}

- (BOOL)_prepareTraceBufferWithGenerationOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy valueForKey:*MEMORY[0x277D0B338]];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = 1;
  if (unsignedIntValue > 1)
  {
    if (unsignedIntValue != 2)
    {
      if (unsignedIntValue == 3)
      {
        v20 = *MEMORY[0x277D0B2C0];
        v21 = [optionsCopy objectForKey:*MEMORY[0x277D0B2C0]];

        if (v21)
        {
          v22 = *MEMORY[0x277D0B328];
          v23 = [optionsCopy objectForKey:*MEMORY[0x277D0B328]];

          if (v23)
          {
            self->_traceType = 3;
            v12 = [optionsCopy objectForKeyedSubscript:v20];
            v13 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D0B2B8]];
            v14 = [optionsCopy objectForKeyedSubscript:v22];
            ShaderDebugger::TraceBufferVersionedHeader::TraceBufferVersionedHeader(&v94, [(MTLBuffer *)self->_traceBuffer contents], self->_traceBufferVersion);
            v94 = &unk_2860B2BB8;
            v95->i32[0] = 1;
            v24 = [(MTLBuffer *)self->_traceBuffer length];
            v95->i32[1] = v24;
            v25 = [v14 count];
            if (v96 > 2)
            {
              v28 = 0;
            }

            else
            {
              v26 = qword_24D740D30[v96];
              v27 = v95;
              *(v95->i32 + qword_24D740D18[v96]) = v25;
              v28 = v27 + v26;
            }

            for (i = 0; i < [v14 count]; ++i)
            {
              v88 = [v14 objectAtIndexedSubscript:i];
              *(v28 + 4 * i) = [v88 unsignedIntegerValue];
            }

            unsignedIntegerValue = [v12 unsignedIntegerValue];
            if (v96 <= 2)
            {
              v95->i32[3] = unsignedIntegerValue;
            }

            unsignedIntegerValue2 = [v13 unsignedIntegerValue];
            if (v96 - 1 <= 1)
            {
              v95[1].i32[0] = unsignedIntegerValue2;
            }

            HeaderSize = ShaderDebugger::PostTessellationVertexTraceBufferVersionedHeader::getHeaderSize(&v94);
            goto LABEL_58;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_60;
    }

    v53 = *MEMORY[0x277D0B2F8];
    v54 = [optionsCopy objectForKey:*MEMORY[0x277D0B2F8]];

    if (v54)
    {
      v55 = *MEMORY[0x277D0B300];
      v56 = [optionsCopy objectForKey:*MEMORY[0x277D0B300]];

      if (v56)
      {
        v57 = *MEMORY[0x277D0B2C8];
        v58 = [optionsCopy objectForKey:*MEMORY[0x277D0B2C8]];

        if (v58)
        {
          v59 = *MEMORY[0x277D0B2D0];
          v60 = [optionsCopy objectForKey:*MEMORY[0x277D0B2D0]];

          if (v60)
          {
            v61 = *MEMORY[0x277D0B308];
            v62 = [optionsCopy objectForKey:*MEMORY[0x277D0B308]];

            if (v62)
            {
              v63 = *MEMORY[0x277D0B2D8];
              v64 = [optionsCopy objectForKey:*MEMORY[0x277D0B2D8]];

              if (v64)
              {
                v12 = [optionsCopy objectForKeyedSubscript:v53];
                v13 = [optionsCopy objectForKeyedSubscript:v55];
                v14 = [optionsCopy objectForKeyedSubscript:v57];
                v41 = [optionsCopy objectForKeyedSubscript:v59];
                v42 = [optionsCopy objectForKeyedSubscript:v61];
                v43 = [optionsCopy objectForKeyedSubscript:v63];
                v65 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D0B330]];
                self->_traceType = 1;
                ShaderDebugger::TraceBufferVersionedHeader::TraceBufferVersionedHeader(&v94, [(MTLBuffer *)self->_traceBuffer contents], self->_traceBufferVersion);
                v94 = &unk_2860B2B68;
                v95->i32[0] = 1;
                v66 = [(MTLBuffer *)self->_traceBuffer length];
                v95->i32[1] = v66;
                [v12 floatValue];
                v92 = v67;
                [v13 floatValue];
                if (v96 <= 2)
                {
                  v69 = &unk_24D740CF0;
                  v70 = vld1q_dup_f32(v69);
                  v70.i64[0] = __PAIR64__(v68, v92);
                  v95[1] = v70;
                }

                [v14 floatValue];
                v93 = v71;
                [v41 floatValue];
                if (v96 <= 2)
                {
                  v73 = &unk_24D740CF4;
                  v74 = vld1q_dup_f32(v73);
                  v74.i64[0] = __PAIR64__(v72, v93);
                  v95[2] = v74;
                }

                unsignedIntValue2 = [v42 unsignedIntValue];
                if (v96 <= 2)
                {
                  v95[3].i32[0] = unsignedIntValue2;
                }

                unsignedIntValue3 = [v43 unsignedIntValue];
                if (v96 <= 2)
                {
                  v95[3].i32[1] = unsignedIntValue3;
                }

                unsignedIntValue4 = [v65 unsignedIntValue];
                if (v96 == 2)
                {
                  v95[3].i32[2] = unsignedIntValue4;
                }

                v78 = ShaderDebugger::FragmentTraceBufferVersionedHeader::getHeaderSize(&v94);
                v95->i32[2] = v78;
                DispatchMPSMethod(&v94, v79);

                goto LABEL_38;
              }
            }
          }
        }
      }
    }

LABEL_39:
    errorStr = self->_errorStr;
    self->_errorStr = @"Incorrect ROI parameters";

    v7 = 0;
    goto LABEL_60;
  }

  if (!unsignedIntValue)
  {
    v29 = *MEMORY[0x277D0B310];
    v30 = [optionsCopy objectForKey:*MEMORY[0x277D0B310]];

    if (v30)
    {
      v31 = *MEMORY[0x277D0B318];
      v32 = [optionsCopy objectForKey:*MEMORY[0x277D0B318]];

      if (v32)
      {
        v33 = *MEMORY[0x277D0B320];
        v34 = [optionsCopy objectForKey:*MEMORY[0x277D0B320]];

        if (v34)
        {
          v35 = *MEMORY[0x277D0B2E0];
          v36 = [optionsCopy objectForKey:*MEMORY[0x277D0B2E0]];

          if (v36)
          {
            v37 = *MEMORY[0x277D0B2E8];
            v38 = [optionsCopy objectForKey:*MEMORY[0x277D0B2E8]];

            if (v38)
            {
              v39 = *MEMORY[0x277D0B2F0];
              v40 = [optionsCopy objectForKey:*MEMORY[0x277D0B2F0]];

              if (v40)
              {
                v12 = [optionsCopy objectForKeyedSubscript:v29];
                v13 = [optionsCopy objectForKeyedSubscript:v31];
                v14 = [optionsCopy objectForKeyedSubscript:v33];
                v41 = [optionsCopy objectForKeyedSubscript:v35];
                v42 = [optionsCopy objectForKeyedSubscript:v37];
                v43 = [optionsCopy objectForKeyedSubscript:v39];
                self->_traceType = 2;
                contents = [(MTLBuffer *)self->_traceBuffer contents];
                ShaderDebugger::TraceBufferVersionedHeader::TraceBufferVersionedHeader(&v94, contents, self->_traceBufferVersion);
                v94 = &unk_2860B2B90;
                v97 = contents;
                v95->i32[0] = 1;
                v45 = [(MTLBuffer *)self->_traceBuffer length];
                v95->i32[1] = v45;
                unsignedIntValue5 = [v12 unsignedIntValue];
                LODWORD(contents) = [v13 unsignedIntValue];
                unsignedIntValue6 = [v14 unsignedIntValue];
                v97[4] = unsignedIntValue5;
                v97[5] = contents;
                v97[6] = unsignedIntValue6;
                unsignedIntValue7 = [v41 unsignedIntValue];
                LODWORD(contents) = [v42 unsignedIntValue];
                unsignedIntValue8 = [v43 unsignedIntValue];
                v50 = v97;
                v97[8] = unsignedIntValue7;
                v50[9] = contents;
                v50[10] = unsignedIntValue8;
                v51 = ShaderDebugger::KernelTraceBufferVersionedHeader::getHeaderSize(&v94);
                v95->i32[2] = v51;
                DispatchMPSMethod(&v94, v52);
LABEL_38:

LABEL_59:
                v7 = 1;
                goto LABEL_60;
              }
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

  if (unsignedIntValue == 1)
  {
    v8 = *MEMORY[0x277D0B2C0];
    v9 = [optionsCopy objectForKey:*MEMORY[0x277D0B2C0]];

    if (v9)
    {
      v10 = *MEMORY[0x277D0B340];
      v11 = [optionsCopy objectForKey:*MEMORY[0x277D0B340]];

      if (v11)
      {
        self->_traceType = 0;
        v12 = [optionsCopy objectForKeyedSubscript:v8];
        v13 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D0B2B8]];
        v14 = [optionsCopy objectForKeyedSubscript:v10];
        ShaderDebugger::TraceBufferVersionedHeader::TraceBufferVersionedHeader(&v94, [(MTLBuffer *)self->_traceBuffer contents], self->_traceBufferVersion);
        v94 = &unk_2860B2B40;
        v95->i32[0] = 1;
        v15 = [(MTLBuffer *)self->_traceBuffer length];
        v95->i32[1] = v15;
        v16 = [v14 count];
        if (v96 > 2)
        {
          v19 = 0;
        }

        else
        {
          v17 = qword_24D740D30[v96];
          v18 = v95;
          *(v95->i32 + qword_24D740D18[v96]) = v16;
          v19 = v18 + v17;
        }

        for (j = 0; j < [v14 count]; ++j)
        {
          v82 = [v14 objectAtIndexedSubscript:j];
          *(v19 + 4 * j) = [v82 unsignedIntegerValue];
        }

        unsignedIntegerValue3 = [v12 unsignedIntegerValue];
        if (v96 <= 2)
        {
          v95->i32[3] = unsignedIntegerValue3;
        }

        unsignedIntegerValue4 = [v13 unsignedIntegerValue];
        if (v96 - 1 <= 1)
        {
          v95[1].i32[0] = unsignedIntegerValue4;
        }

        HeaderSize = ShaderDebugger::VertexTraceBufferVersionedHeader::getHeaderSize(&v94);
LABEL_58:
        v95->i32[2] = HeaderSize;
        DispatchMPSMethod(&v94, v86);
        goto LABEL_59;
      }
    }

    goto LABEL_39;
  }

LABEL_60:

  return v7;
}

- (void)prepareCommandEncoderForInstrumentedCall:(unint64_t)call generationOptions:(id)options
{
  optionsCopy = options;
  v6 = [(DYMTLFunctionPlayer *)self->_player objectForKey:call];
  v7 = *MEMORY[0x277D0B338];
  v8 = [optionsCopy objectForKey:*MEMORY[0x277D0B338]];

  if (!v8 || ([optionsCopy objectForKey:*MEMORY[0x277D0B2A8]], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9) || (objc_msgSend(optionsCopy, "objectForKey:", *MEMORY[0x277D0B2A0]), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v13 = @"Incorrect ROI parameters";
LABEL_10:
    errorStr = self->_errorStr;
    self->_errorStr = &v13->isa;

    goto LABEL_11;
  }

  if (![(DYMTLShaderDebuggerTraceGenerator *)self _createTraceBufferWithGenerationOptions:optionsCopy])
  {
    v13 = @"Unable to create trace buffer.";
    goto LABEL_10;
  }

  v11 = [optionsCopy valueForKey:v7];
  unsignedIntValue = [v11 unsignedIntValue];

  std::__tree<std::__value_type<objc_object  {objcproto15MTLSamplerState}* {__strong},unsigned long long>,std::__map_value_compare<objc_object  {objcproto15MTLSamplerState}*,objc_object  {objcproto15MTLSamplerState}* {__strong},std::less<objc_object  {objcproto15MTLSamplerState}*>,true>,std::allocator<objc_object  {objcproto15MTLSamplerState}* {__strong}>>::destroy(&self->_replacedSamplerStates, self->_replacedSamplerStates.__tree_.__end_node_.__left_);
  self->_replacedSamplerStates.__tree_.__end_node_.__left_ = 0;
  self->_replacedSamplerStates.__tree_.__size_ = 0;
  self->_replacedSamplerStates.__tree_.__begin_node_ = &self->_replacedSamplerStates.__tree_.__end_node_;
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_bytesBufferReplacements);
  if (unsignedIntValue > 1)
  {
    if (unsignedIntValue == 2)
    {
      if (([v6 conformsToProtocol:&unk_2860CBE88] & 1) == 0)
      {
        v13 = @"Invalid command encoder for Fragment ROI type";
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (unsignedIntValue != 3)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (([v6 conformsToProtocol:&unk_2860CBE88] & 1) == 0)
    {
      v13 = @"Invalid command encoder for Vertex ROI type";
      goto LABEL_10;
    }

LABEL_26:
    [(DYMTLShaderDebuggerTraceGenerator *)self _prepareRenderCommandEncoder:v6 generationOptions:optionsCopy];
    goto LABEL_27;
  }

  if (unsignedIntValue)
  {
    if (unsignedIntValue != 1)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (([v6 conformsToProtocol:&unk_2860CC178] & 1) == 0 && !objc_msgSend(v6, "conformsToProtocol:", &unk_2860CBE88))
  {
    v13 = @"Invalid command encoder for Kernel ROI type";
    goto LABEL_10;
  }

  if ([v6 conformsToProtocol:&unk_2860CC178])
  {
    [(DYMTLShaderDebuggerTraceGenerator *)self _prepareComputeCommandEncoder:v6 generationOptions:optionsCopy];
    goto LABEL_27;
  }

  if ([v6 conformsToProtocol:&unk_2860CBE88])
  {
    goto LABEL_26;
  }

LABEL_27:
  if (![(DYMTLShaderDebuggerTraceGenerator *)self _prepareTraceBufferWithGenerationOptions:optionsCopy])
  {
    v13 = @"Error while preparing trace buffer.";
    goto LABEL_10;
  }

LABEL_11:
}

- (id)_generateResourceResolutionRemappingTables
{
  v57[5] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  indirectArgumentManager = [(DYMTLFunctionPlayer *)self->_player indirectArgumentManager];
  bufferVitualAddressMap = [indirectArgumentManager bufferVitualAddressMap];
  v4 = bufferVitualAddressMap + 1;
  v5 = *bufferVitualAddressMap;
  if (*bufferVitualAddressMap != bufferVitualAddressMap + 1)
  {
    do
    {
      v6 = v5[5];
      v51 = v5[4];
      v53 = 0;
      v54 = 0;
      v52 = 0;
      std::vector<DYMTLOriginalProcessBuffer>::__init_with_size[abi:ne200100]<DYMTLOriginalProcessBuffer*,DYMTLOriginalProcessBuffer*>(&v52, v6, v5[6], (v5[6] - v6) >> 4);
      v8 = v52;
      v7 = v53;
      if (v52 != v53)
      {
        do
        {
          objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
          v55 = v8;
          v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(objectMap, v8);
          v11 = DYMTLGetOriginalObject(v10[3]);
          gpuAddress = [v11 gpuAddress];
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:gpuAddress];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
          [dictionary setObject:v13 forKeyedSubscript:v14];

          v8 += 2;
        }

        while (v8 != v7);
        v8 = v52;
      }

      if (v8)
      {
        v53 = v8;
        operator delete(v8);
      }

      v15 = v5[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v17 = *v16 == v5;
          v5 = v16;
        }

        while (!v17);
      }

      v5 = v16;
    }

    while (v16 != v4);
  }

  v18 = *([(DYMTLFunctionPlayer *)self->_player objectMap]+ 16);
  if (v18)
  {
    while (1)
    {
      v19 = v18[2];
      v20 = v18[3];
      v21 = DYMTLGetOriginalObject(v20);
      if ([v21 conformsToProtocol:&unk_2860CC658])
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uniqueIdentifier = [v21 uniqueIdentifier];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uniqueIdentifier];
        [dictionary3 setObject:v23 forKeyedSubscript:v24];
        goto LABEL_18;
      }

LABEL_19:

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    uniqueIdentifier2 = [v21 uniqueIdentifier];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uniqueIdentifier2];
    [dictionary2 setObject:v23 forKeyedSubscript:v24];
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
  begin_node = self->_replacedSamplerStates.__tree_.__begin_node_;
  if (begin_node != &self->_replacedSamplerStates.__tree_.__end_node_)
  {
    do
    {
      v27 = begin_node->_errorStr;
      placeholderBuffer = begin_node->_placeholderBuffer;
      v29 = DYMTLGetOriginalObject(v27);
      uniqueIdentifier3 = [v29 uniqueIdentifier];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:placeholderBuffer];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uniqueIdentifier3];
      [dictionary3 setObject:v31 forKeyedSubscript:v32];

      player = begin_node->_player;
      if (player)
      {
        do
        {
          indirectArgumentManager = player;
          player = player->super.super.super.super.isa;
        }

        while (player);
      }

      else
      {
        do
        {
          indirectArgumentManager = begin_node->_indirectArgumentManager;
          v17 = indirectArgumentManager->super.isa == begin_node;
          begin_node = indirectArgumentManager;
        }

        while (!v17);
      }

      begin_node = indirectArgumentManager;
    }

    while (indirectArgumentManager != &self->_replacedSamplerStates.__tree_.__end_node_);
  }

  for (i = self->_bytesBufferReplacements.__table_.__first_node_.__next_; i; i = i->isa)
  {
    v36 = DYMTLGetOriginalObject(i[3].isa);
    gpuAddress2 = [v36 gpuAddress];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:gpuAddress2];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:i[2].isa];
    [dictionary4 setObject:v38 forKeyedSubscript:v39];
  }

  v40 = *MEMORY[0x277D0B370];
  v56[0] = *MEMORY[0x277D0B350];
  v56[1] = v40;
  v57[0] = dictionary;
  v57[1] = dictionary2;
  v41 = *MEMORY[0x277D0B360];
  v56[2] = *MEMORY[0x277D0B368];
  v56[3] = v41;
  constantSamplerReflection = self->_constantSamplerReflection;
  v57[2] = dictionary3;
  v57[3] = constantSamplerReflection;
  v56[4] = *MEMORY[0x277D0B358];
  v57[4] = dictionary4;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:5];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)notifyReplayFinishedAndGenerateTraceContainer
{
  v25[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  errorStr = self->_errorStr;
  if (errorStr)
  {
    v23 = *MEMORY[0x277D0B290];
    v24 = errorStr;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v5 = self->_errorStr;
    self->_errorStr = 0;
  }

  else
  {
    v22[3] = 0;
    v25[0] = &unk_2860B2A20;
    v25[1] = &selfCopy;
    v25[3] = v25;
    std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v25, v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v25);
    contents = [(MTLBuffer *)selfCopy->_traceBuffer contents];
    if (*(contents + 8) <= *(contents + 4))
    {
      v8 = [MEMORY[0x277CBEB28] dataWithBytes:&selfCopy->_traceType length:4];
      v7 = v8;
      v10 = *(contents + 4);
      v9 = *(contents + 8);
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      [v8 appendBytes:contents length:{v11, selfCopy}];
      _generateResourceResolutionRemappingTables = [(DYMTLShaderDebuggerTraceGenerator *)selfCopy _generateResourceResolutionRemappingTables];
      metadata = selfCopy->_metadata;
      v14 = *MEMORY[0x277D0B378];
      v18[0] = *MEMORY[0x277D0B2B0];
      v18[1] = v14;
      v19[0] = metadata;
      v19[1] = v7;
      v18[2] = *MEMORY[0x277D0B348];
      v19[2] = _generateResourceResolutionRemappingTables;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    }

    else
    {
      v20[0] = *MEMORY[0x277D0B380];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      v20[1] = *MEMORY[0x277D0B290];
      v21[0] = v7;
      v21[1] = @"Trace buffer not big enough. Retry with new size.";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    }

    dy_defer::~dy_defer(v22);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 8) = self + 72;
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  return self;
}

- (uint64_t)notifyReplayFinishedAndGenerateTraceContainer
{
  v2 = *(result + 8);
  *a2 = &unk_2860B2A20;
  a2[1] = v2;
  return result;
}

- (void)notifyReplayFinishedAndGenerateTraceContainer
{
  v2 = **(self + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = **(self + 8);
  v5 = *(v4 + 200);
  *(v4 + 200) = 0;

  v6 = **(self + 8);
  v7 = *(v6 + 184);
  *(v6 + 184) = 0;
}

@end