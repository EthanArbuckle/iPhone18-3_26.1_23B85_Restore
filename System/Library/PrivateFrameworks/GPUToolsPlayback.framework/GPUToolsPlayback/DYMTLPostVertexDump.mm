@interface DYMTLPostVertexDump
- (BOOL)createAndSetPostVertexDumpPipelineState:(unint64_t)state commandEncoderId:(unint64_t)id pipelineId:(unint64_t)pipelineId;
- (DYMTLPostVertexDump)initWithDebugFunctionPlayer:(id)player;
- (void)_reservePostVertexDumpBufferWithLength:(unint64_t)length;
- (void)notifyReplayerTargetCommandBuffersFinished;
@end

@implementation DYMTLPostVertexDump

- (DYMTLPostVertexDump)initWithDebugFunctionPlayer:(id)player
{
  playerCopy = player;
  v10.receiver = self;
  v10.super_class = DYMTLPostVertexDump;
  v6 = [(DYMTLPostVertexDump *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_player, player);
    device = [(DYMTLFunctionPlayer *)v7->_player device];

    if (!device)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)createAndSetPostVertexDumpPipelineState:(unint64_t)state commandEncoderId:(unint64_t)id pipelineId:(unint64_t)pipelineId
{
  v54 = *MEMORY[0x277D85DE8];
  p_player = &self->_player;
  v9 = [(DYMTLFunctionPlayer *)self->_player objectForKey:state];
  v10 = [(DYMTLFunctionPlayer *)*p_player objectForKey:id];
  v11 = [(DYMTLFunctionPlayer *)self->_player objectForKey:pipelineId];
  v12 = v11;
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v11 == 0)
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_opt_new();
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      v18 = DYMTLGetAssociatedObject(v12, 0);
      for (i = 0; ; ++i)
      {
        device = [(DYMTLFunctionPlayer *)self->_player device];
        maxColorAttachments = [device maxColorAttachments];

        if (maxColorAttachments <= i)
        {
          break;
        }

        colorAttachments = [v18 colorAttachments];
        v23 = [colorAttachments objectAtIndexedSubscript:i];
        colorAttachments2 = [v16 colorAttachments];
        [colorAttachments2 setObject:v23 atIndexedSubscript:i];
      }

      internalPipelineStateLabel = [objc_opt_class() internalPipelineStateLabel];
      [v16 setLabel:internalPipelineStateLabel];

      [v16 setDepthAttachmentPixelFormat:objc_msgSend(v18, "depthAttachmentPixelFormat")];
      [v16 setStencilAttachmentPixelFormat:objc_msgSend(v18, "stencilAttachmentPixelFormat")];
      vertexDescriptor = [v18 vertexDescriptor];
      [v16 setVertexDescriptor:vertexDescriptor];

      vertexFunction = [v18 vertexFunction];
      [v16 setVertexFunction:vertexFunction];

      [v16 setRasterizationEnabled:0];
      if (objc_opt_respondsToSelector())
      {
        [v16 setInputPrimitiveTopology:{objc_msgSend(v18, "inputPrimitiveTopology")}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v16 setTessellationFactorFormat:objc_msgSend(v18, "tessellationFactorFormat")];
        [v16 setTessellationPartitionMode:1];
        [v16 setTessellationOutputWindingOrder:{objc_msgSend(v18, "tessellationOutputWindingOrder")}];
        [v16 setTessellationFactorScaleEnabled:{objc_msgSend(v18, "isTessellationFactorScaleEnabled")}];
        [v16 setTessellationFactorStepFunction:{objc_msgSend(v18, "tessellationFactorStepFunction")}];
        [v16 setMaxTessellationFactor:1];
        [v16 setTessellationControlPointIndexType:{objc_msgSend(v18, "tessellationControlPointIndexType")}];
        [v16 setSampleCount:{objc_msgSend(v18, "sampleCount")}];
        [v16 setSampleMask:{objc_msgSend(v18, "sampleMask")}];
        [v16 setTessellationFactorScaleEnabled:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [v16 setMaxVertexAmplificationCount:{objc_msgSend(v18, "maxVertexAmplificationCount")}];
        [v16 setVertexAmplificationMode:{objc_msgSend(v18, "vertexAmplificationMode")}];
      }

      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 0;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __91__DYMTLPostVertexDump_createAndSetPostVertexDumpPipelineState_commandEncoderId_pipelineId___block_invoke;
      v48[3] = &unk_27930F430;
      v48[4] = &v49;
      [v10 enumerateVertexBuffersUsingBlock:v48];
      device2 = [(DYMTLFunctionPlayer *)self->_player device];
      maxVertexBuffers = [device2 maxVertexBuffers];

      if (v50[3] >= maxVertexBuffers)
      {
        v15 = 0;
      }

      else
      {
        [v16 setPostVertexDumpBufferIndex:?];
        device3 = [(DYMTLFunctionPlayer *)self->_player device];
        v46 = 0;
        v47 = 0;
        v45 = [device3 newRenderPipelineStateWithDescriptor:v16 options:524291 reflection:&v47 error:&v46];
        v31 = v47;
        v44 = v46;

        DYMTLSetAssociatedObject(v45, 0, v16);
        v15 = v45 != 0;
        if (v45)
        {
          [(DYMTLPostVertexDump *)self _reservePostVertexDumpBufferWithLength:0x1000000];
          postVertexDumpOutputs = [v31 postVertexDumpOutputs];
          v42 = v31;
          MEMORY[0x253031C70](v53);
          contents = [(MTLBuffer *)self->_postVertexDumpBuffer contents];
          [v31 postVertexDumpStride];
          v33 = vcvtpd_u64_f64(vcvtd_n_f64_u64(GPUTools::MTL::CaptureHelper::SaveObject() + 4, 8uLL)) << 8;
          self->_reflectionSizeAligned256 = v33;
          *contents = v33;
          self->_reflectionPostVertexDumpStride = [v31 postVertexDumpStride];
          v34 = [(MTLBuffer *)self->_postVertexDumpBuffer length];
          reflectionSizeAligned256 = self->_reflectionSizeAligned256;
          reflectionPostVertexDumpStride = self->_reflectionPostVertexDumpStride;
          v37 = ([(MTLBuffer *)self->_postVertexDumpBuffer contents]+ (reflectionSizeAligned256 & 0xFFFFFFFFFFFFFFFCLL));
          *v37 = 0;
          v37[1] = (v34 - reflectionSizeAligned256 - 8) / reflectionPostVertexDumpStride;
          v31 = v42;
          device4 = [(DYMTLFunctionPlayer *)self->_player device];
          LODWORD(reflectionPostVertexDumpStride) = [device4 supportsFeatureSet:7];

          if (reflectionPostVertexDumpStride)
          {
            LODWORD(v39) = 925353388;
            [v10 setTessellationFactorScale:v39];
          }

          [v10 setRenderPipelineState:v45];
          [v10 setVertexBuffer:self->_postVertexDumpBuffer offset:self->_reflectionSizeAligned256 atIndex:v50[3]];
          MEMORY[0x253031C80](v53);
        }
      }

      _Block_object_dispose(&v49, 8);
    }

    else
    {
      v15 = 0;
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __91__DYMTLPostVertexDump_createAndSetPostVertexDumpPipelineState_commandEncoderId_pipelineId___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 24) == a3)
  {
    *(v4 + 24) = a3 + 1;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (void)notifyReplayerTargetCommandBuffersFinished
{
  p_postVertexDumpBuffer = &self->_postVertexDumpBuffer;
  postVertexDumpBuffer = self->_postVertexDumpBuffer;
  if (postVertexDumpBuffer && self->_reflectionSizeAligned256 && self->_reflectionPostVertexDumpStride)
  {
    contents = [(MTLBuffer *)postVertexDumpBuffer contents];
    reflectionSizeAligned256 = self->_reflectionSizeAligned256;
    v7 = (contents + (reflectionSizeAligned256 & 0xFFFFFFFFFFFFFFFCLL));
    v9 = *v7;
    v8 = v7[1];
    reflectionPostVertexDumpStride = self->_reflectionPostVertexDumpStride;
    device = [(DYMTLFunctionPlayer *)self->_player device];
    contents2 = [(MTLBuffer *)self->_postVertexDumpBuffer contents];
    if (v8 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v8;
    }

    v14 = [device newBufferWithBytes:contents2 length:(reflectionSizeAligned256 + reflectionPostVertexDumpStride * v13 + 263) & 0xFFFFFFFFFFFFFF00 options:0];

    objc_storeStrong(p_postVertexDumpBuffer, v14);
    v15 = self->_postVertexDumpBuffer;
    objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(objectMap, MEMORY[0x277D0B268]);
    objc_storeStrong(v17 + 3, v15);
    self->_reflectionSizeAligned256 = 0;
    self->_reflectionPostVertexDumpStride = 0;
  }
}

- (void)_reservePostVertexDumpBufferWithLength:(unint64_t)length
{
  if ([(MTLBuffer *)self->_postVertexDumpBuffer length]< length)
  {
    device = [(DYMTLFunctionPlayer *)self->_player device];
    v6 = [device newBufferWithLength:length options:0];
    postVertexDumpBuffer = self->_postVertexDumpBuffer;
    self->_postVertexDumpBuffer = v6;

    v8 = self->_postVertexDumpBuffer;
    objectMap = [(DYMTLFunctionPlayer *)self->_player objectMap];
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(objectMap, MEMORY[0x277D0B268]);
    objc_storeStrong(v10 + 3, v8);
  }
}

@end