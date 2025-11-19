@interface DYMTLCommonDebugFunctionPlayer
+ (id)harvestableTexture:(id)a3;
+ (id)thumbnailTexture:(unint64_t)a3;
- (AttachmentInfo)_attachmentInfoForCommandEncoderID:(SEL)a3;
- (BOOL)isBlitSamplingSupported;
- (BOOL)isCounterAvailable:(id)a3;
- (BOOL)setupProfilingForListAtIndex:(unint64_t)a3;
- (DYMTLCommonDebugFunctionPlayer)initWithCaptureStore:(id)a3;
- (id).cxx_construct;
- (id)_generateDummyPipeline:(id)a3;
- (id)_generateThumbnailAndResourceInfoForRequestedTextures:(id)a3 resolution:(id *)a4 commandBuffer:(id)a5;
- (id)_texture2DFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7;
- (id)collectPixelDrawStats:(id)a3 originalEncoderId:(unint64_t)a4 originalEncoder:(id)a5 originalPipeline:(id)a6 atX:(unint64_t)a7 y:(unint64_t)a8 draw:(id)a9;
- (id)collectPixelDrawStatsTotal:(id)a3 originalPipeline:(id)a4 atX:(unint64_t)a5 y:(unint64_t)a6 draw:(id)a7;
- (id)counterInfo:(id)a3;
- (id)dependencyGraphThumbnailCache;
- (id)derivedCounterData;
- (id)generatePerPrimitiveHistory:(unint64_t)a3 commandQueue:(id)a4 currentEncoderId:(unint64_t)a5 originalEncoder:(id)a6 originalPipeline:(id)a7 atX:(unint64_t)a8 y:(unint64_t)a9;
- (id)generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 total:(unint64_t)a6 commandQueue:(id)a7 currentEncoderId:(unint64_t)a8 originalEncoder:(id)a9 originalPipeline:(id)a10 atX:(unint64_t)a11 y:(unint64_t)a12;
- (id)pixelHistoryCache;
- (id)replayerLayerForDrawableId:(unint64_t)a3;
- (id)setupCounterConfigurationAndGetFrameProfilerCounters;
- (id)thumbnailCache;
- (unint64_t)_executeIndirectCommandBufferUpToSubIndex:(unint64_t)a3 outBuffer:(id *)a4 outDataPointer:(const char *)a5;
- (unint64_t)getStatLocations;
- (void)_addRenderPassDescriptorToEncoderMapFromArgumentPointer:(void *)a3 forEncoder:(unint64_t)a4;
- (void)_addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:(DYMTLRenderPassDescriptor *)a3 forEncoder:(unint64_t)a4;
- (void)_createBatchIdFilterMapping:(BOOL)a3 withCommandEncoder:(id)a4;
- (void)_endEncodingForAllRemainingEncoders:(void *)a3;
- (void)_executeGraphicsFunction;
- (void)_forceAttachmentLoadActionToLoad:(id)a3;
- (void)_forceAttachmentStoreActionToStore:(id)a3;
- (void)_modifyDescriptorForLayering:(id)a3 withBuffer:(id)a4;
- (void)_modifyDescriptorForStore:(id)a3;
- (void)_setupEncodersForBatchIdFiltering;
- (void)_splitBlitEncoder;
- (void)_splitCommandEncoders;
- (void)_splitComputeEncoder;
- (void)_splitRenderEncoders;
- (void)_superExecutePlatformFunction;
- (void)_swizzleAttachmentTextureForLoad:(id)a3 withBuffer:(id)a4;
- (void)_trackObjects;
- (void)_updateMemorylessTextures:(id)a3;
- (void)_updateRemainingCommandsForEncoder;
- (void)commitEncodersAndCommandBuffers;
- (void)enableConsistentState:(BOOL)a3;
- (void)encodeStoreActionForParallelRenderCommandEncoder:(id)a3 withDescriptor:(id)a4;
- (void)encodeStoreActionForRenderCommandEncoder:(id)a3 withDescriptor:(id)a4;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)extractCommandBufferTranslationData;
- (void)extractComputeIndirectArgumentBuffers:(void *)a3;
- (void)extractIndirectArgumentBuffers;
- (void)extractRenderIndirectArgumentBuffers:(void *)a3;
- (void)prepareForCaptureExecution;
- (void)presentDrawable;
- (void)resetPixelHistoryCache;
- (void)sampleEncoderCounters;
- (void)sampleSplitEncoderCounters;
- (void)setDevice:(id)a3;
- (void)setStatLocations:(unint64_t)a3;
- (void)setupAllStatLocationsWithBlitOption:(BOOL)a3;
- (void)setupFrameTimeProfiling;
- (void)setupProfileInfo:(id)a3;
- (void)setupProfilingForCounterLists;
- (void)stopFrameProfiling;
- (void)updateReplayerLayer:(unint64_t)a3 withOriginalLayer:(unint64_t)a4;
- (void)waitForCommmandBuffersCompletion;
@end

@implementation DYMTLCommonDebugFunctionPlayer

- (void)setDevice:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYMTLFunctionPlayer *)&v19 setDevice:v4];
  v5 = [(DYMTLFunctionPlayer *)self device];
  self->_supportsTessellation = [v5 supportsFeatureSet:7];

  v6 = [[DYMTLDebugWireframeRenderer alloc] initWithDebugFunctionPlayer:self];
  wireframeRenderer = self->_wireframeRenderer;
  self->_wireframeRenderer = v6;

  v8 = [[DYMTLPostVertexDump alloc] initWithDebugFunctionPlayer:self];
  postVertexDump = self->_postVertexDump;
  self->_postVertexDump = v8;

  v10 = [[DYMTLShaderDebuggerTraceGenerator alloc] initWithDebugFunctionPlayer:self];
  shaderDebuggerTraceGenerator = self->_shaderDebuggerTraceGenerator;
  self->_shaderDebuggerTraceGenerator = v10;

  v12 = [DYMTLTextureRenderer alloc];
  v13 = [(DYMTLFunctionPlayer *)self device];
  v14 = [(DYMTLTextureRenderer *)v12 initWithDevice:v13];
  textureRenderer = self->_textureRenderer;
  self->_textureRenderer = v14;

  v16 = [[DYMTLPixelHistoryDrawStatsSupport alloc] initWithDebugFunctionPlayer:self];
  pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
  self->_pixelHistoryDrawStatsRenderer = v16;

  v18 = [v4 name];
  self->_isAGXDevice = [v18 compare:@"Unknown Unknown"] == 0;
}

- (DYMTLCommonDebugFunctionPlayer)initWithCaptureStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DYMTLCommonDebugFunctionPlayer;
  v5 = [(DYMTLFunctionPlayer *)&v12 initWithCaptureStore:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    thumbnailDictionary = v5->_thumbnailDictionary;
    v5->_thumbnailDictionary = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dependencyGraphThumbnails = v5->_dependencyGraphThumbnails;
    v5->_dependencyGraphThumbnails = v8;

    [(DYMTLCommonDebugFunctionPlayer *)v5 resetPixelHistoryCache];
    if ([DYMTLCommonDebugFunctionPlayer initWithCaptureStore:]::onceToken != -1)
    {
      [DYMTLCommonDebugFunctionPlayer initWithCaptureStore:];
    }

    v10 = v5;
  }

  return v5;
}

void __55__DYMTLCommonDebugFunctionPlayer_initWithCaptureStore___block_invoke()
{
  v0 = objc_opt_new();
  v1 = sMemorylessTexturesAndReplacements;
  sMemorylessTexturesAndReplacements = v0;

  v2 = objc_opt_new();
  v3 = sThumbnailTextures;
  sThumbnailTextures = v2;
}

- (id)thumbnailCache
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:v3];

  v10[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v11[0] = v5;
  v10[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_thumbnailDictionary];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)dependencyGraphThumbnailCache
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:v3];

  v10[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v11[0] = v5;
  v10[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_dependencyGraphThumbnails];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)resetPixelHistoryCache
{
  v3 = objc_opt_new();
  pixelHistory = self->_pixelHistory;
  self->_pixelHistory = v3;

  v5 = objc_opt_new();
  [(NSMutableDictionary *)self->_pixelHistory setObject:v5 forKeyedSubscript:*MEMORY[0x277D0B3D0]];

  v6 = objc_opt_new();
  [(NSMutableDictionary *)self->_pixelHistory setObject:v6 forKeyedSubscript:*MEMORY[0x277D0B430]];

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_pixelHistoryInverseObjectMap.__table_.__bucket_list_.__ptr_);
  v7 = objc_opt_new();
  pixelHistoryEncoderStateTrackings = self->_pixelHistoryEncoderStateTrackings;
  self->_pixelHistoryEncoderStateTrackings = v7;
}

- (id)pixelHistoryCache
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(DYMTLFunctionPlayer *)self device];
  v4 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:v3 inverseObjectMap:&self->_pixelHistoryInverseObjectMap];

  v10[0] = *MEMORY[0x277D0B4B0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v11[0] = v5;
  v10[1] = *MEMORY[0x277D0B4C0];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_pixelHistory];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_generateThumbnailAndResourceInfoForRequestedTextures:(id)a3 resolution:(id *)a4 commandBuffer:(id)a5
{
  v7 = a3;
  v54 = a5;
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277D25728];
  v9 = [(DYMTLFunctionPlayer *)self device];
  v53 = [v8 forDevice:v9];

  v10 = 0;
  v11 = *MEMORY[0x277D0B0E8];
  v58 = *MEMORY[0x277D0B0F8];
  v57 = *MEMORY[0x277D0B0F0];
  v56 = *MEMORY[0x277D0B0E0];
  v55 = *MEMORY[0x277D0B0D8];
  v48 = *MEMORY[0x277D0B108];
  v47 = *MEMORY[0x277D0B228];
  v60 = v7;
  v51 = self;
  v52 = *MEMORY[0x277D0B0E8];
  while (v10 < [v7 count])
  {
    v12 = [v7 objectAtIndexedSubscript:v10];
    v13 = [v12 objectForKeyedSubscript:v11];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unsignedLongLongValue];
      v16 = [v12 objectForKeyedSubscript:v58];
      v17 = [v16 unsignedLongLongValue];

      v18 = [v12 objectForKeyedSubscript:v57];
      v19 = [v18 unsignedLongLongValue];

      v20 = [v12 objectForKeyedSubscript:v56];
      v21 = [v20 unsignedLongLongValue];

      v62 = [v12 objectForKeyedSubscript:v55];
      v22 = [(DYMTLFunctionPlayer *)self objectForKey:v15];
      if (v22)
      {
        v23 = sMemorylessTexturesAndReplacements;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v22];
        v25 = [v23 objectForKeyedSubscript:v24];

        v59 = v25;
        if (v25)
        {
          v26 = v25;

          v22 = v26;
        }

        v27 = [v22 textureType];
        if (v27 > 9)
        {
          v28 = v22;
        }

        else
        {
          if (((1 << v27) & 0x2EF) != 0)
          {
            [v53 textureFromTexture:v22 slice:v17 level:v19 depthPlane:v21 commandBuffer:v54];
          }

          else
          {
            [v53 resolveMultisampleTexture:v22 slice:v17 level:v19 depthPlane:v21 commandBuffer:v54];
          }
          v28 = ;

          if (v62 && [v62 unsignedLongLongValue] == 9 && objc_msgSend(v28, "pixelFormat") == 260)
          {
            v29 = [v53 stencilTextureFromTexture:v28 commandBuffer:v54];

            v28 = v29;
          }

          if (v28)
          {
            if (objc_opt_respondsToSelector())
            {
              v30 = [v28 isSparse];
              v63 = *&a4->var0;
              var2 = a4->var2;
              if (v30)
              {
                sparseTextureFence = v51->_sparseTextureFence;
              }

              else
              {
                sparseTextureFence = 0;
              }
            }

            else
            {
              sparseTextureFence = 0;
              v63 = *&a4->var0;
              var2 = a4->var2;
            }

            v32 = [v53 generateThumbnailFromTexture:v28 commandBuffer:v54 resolution:&v63 withFence:sparseTextureFence];
            if (v32)
            {
              v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v33 = [v28 pixelFormat];
              v34 = 10;
              if (v33 != 1)
              {
                v34 = v33;
              }

              if (v33 == 261)
              {
                v35 = 253;
              }

              else
              {
                v35 = v34;
              }

              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
              [v61 setObject:v36 forKeyedSubscript:v52];

              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v61 setObject:v37 forKeyedSubscript:v48];

              v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
              [v61 setObject:v38 forKeyedSubscript:v47];

              if (v62)
              {
                [v61 setObject:v62 forKeyedSubscript:v55];
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
                [v61 setObject:v39 forKeyedSubscript:v58];

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
                [v61 setObject:v40 forKeyedSubscript:v57];

                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
                [v61 setObject:v41 forKeyedSubscript:v56];
              }

              [v49 addObject:v61];
              v42 = sThumbnailTextures;
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v42 objectForKey:v43];

              v44 = sThumbnailTextures;
              v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
              [v44 setObject:v32 forKey:v45];
            }
          }
        }

        self = v51;
        v11 = v52;
      }
    }

    ++v10;
    v7 = v60;
  }

  return v49;
}

- (void)_splitBlitEncoder
{
  v10 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v10);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v10];
      if ([v6 conformsToProtocol:&unk_2860CCA30])
      {
        if (self->_nRemainingCommandsForCurrentEncoder)
        {
          v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
          v8 = objc_autoreleasePoolPush();
          [v6 endEncoding];
          v9 = [v7 blitCommandEncoder];
          [(DYMTLFunctionPlayer *)self setObject:v9 forKey:v10];

          objc_autoreleasePoolPop(v8);
        }
      }
    }
  }
}

- (void)_splitComputeEncoder
{
  v14 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v14);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v14];
      if ([v6 conformsToProtocol:&unk_2860CC178] && self->_nRemainingCommandsForCurrentEncoder)
      {
        v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
        v8 = objc_autoreleasePoolPush();
        [v6 endEncoding];
        v9 = DYMTLNewStatefulComputeCommandEncoder(v7, 0);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__DYMTLCommonDebugFunctionPlayer__splitComputeEncoder__block_invoke;
        v13[3] = &unk_27930F6B8;
        v13[4] = self;
        [v6 applyToEncoder:v9 rawBytesBlock:v13];
        if (self->_bSetStageInRegion)
        {
          v10 = *&self->_stageInRegion.origin.z;
          v12[0] = *&self->_stageInRegion.origin.x;
          v12[1] = v10;
          v12[2] = *&self->_stageInRegion.size.height;
          [v9 setStageInRegion:v12];
        }

        else if (self->_stageInIndirectBufferId)
        {
          v11 = [(DYMTLFunctionPlayer *)self objectForKey:?];
          [v9 setStageInRegionWithIndirectBuffer:v11 indirectBufferOffset:self->_stageInIndirectBufferOffset];
        }

        [(DYMTLFunctionPlayer *)self setObject:v9 forKey:v14];

        objc_autoreleasePoolPop(v8);
      }
    }
  }
}

uint64_t __54__DYMTLCommonDebugFunctionPlayer__splitComputeEncoder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [DYMTLFunctionPlayer computeBytesKeyAtIndex:?];

  return [v1 computeBytesForKey:v2];
}

- (void)_splitRenderEncoders
{
  v29 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v29);
  if (v3)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (v4)
    {
      v5 = v4;
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:v29];
      if ([v6 conformsToProtocol:&unk_2860CBE88] && self->_nRemainingCommandsForCurrentEncoder)
      {
        v7 = [(DYMTLFunctionPlayer *)self objectForKey:v5[2]];
        v8 = [v6 descriptor];
        for (i = 0; i != 8; ++i)
        {
          v10 = [v8 colorAttachments];
          v11 = [v10 objectAtIndexedSubscript:i];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v11];

          v12 = [v8 colorAttachments];
          v13 = [v12 objectAtIndexedSubscript:i];
          [v13 setResolveTexture:0];

          v14 = [v8 colorAttachments];
          v15 = [v14 objectAtIndexedSubscript:i];
          [v15 setLoadAction:1];

          v16 = [v8 colorAttachments];
          v17 = [v16 objectAtIndexedSubscript:i];
          [v17 setStoreAction:1];
        }

        v18 = [v8 depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v18];

        v19 = [v8 depthAttachment];
        [v19 setResolveTexture:0];

        v20 = [v8 depthAttachment];
        [v20 setLoadAction:1];

        v21 = [v8 depthAttachment];
        [v21 setStoreAction:1];

        v22 = [v8 stencilAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v22];

        v23 = [v8 stencilAttachment];
        [v23 setResolveTexture:0];

        v24 = [v8 stencilAttachment];
        [v24 setLoadAction:1];

        v25 = [v8 stencilAttachment];
        [v25 setStoreAction:1];

        v26 = objc_autoreleasePoolPush();
        [v6 endEncoding];
        v27 = DYMTLNewStatefulRenderCommandEncoder(v7, v8);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __54__DYMTLCommonDebugFunctionPlayer__splitRenderEncoders__block_invoke;
        v28[3] = &unk_27930F3E0;
        v28[4] = self;
        [v6 applyAllStateToEncoder:v27 rawBytesBlock:v28];
        [(DYMTLFunctionPlayer *)self setObject:v27 forKey:v29];

        objc_autoreleasePoolPop(v26);
      }
    }
  }
}

uint64_t __54__DYMTLCommonDebugFunctionPlayer__splitRenderEncoders__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

- (void)_createBatchIdFilterMapping:(BOOL)a3 withCommandEncoder:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      LODWORD(v22) = 0;
      v23 = 0;
      [v6 commandBatchIdRangeMin:&v22 max:&v23];
      p_currentEncoderBatchInfo = &self->_currentEncoderBatchInfo;
      end = p_currentEncoderBatchInfo->__end_;
      cap = p_currentEncoderBatchInfo->__cap_;
      if (end >= cap)
      {
        begin = p_currentEncoderBatchInfo->__begin_;
        v16 = end - p_currentEncoderBatchInfo->__begin_;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v19 = cap - begin;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(p_currentEncoderBatchInfo, v18);
        }

        v20 = (8 * v17);
        *v20 = v22;
        v20[1] = v23;
        v10 = 8 * v17 + 8;
        memcpy(0, begin, v16);
        v21 = p_currentEncoderBatchInfo->__begin_;
        p_currentEncoderBatchInfo->__begin_ = 0;
        p_currentEncoderBatchInfo->__end_ = v10;
        p_currentEncoderBatchInfo->__cap_ = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *end = v22;
        *(end + 1) = v23;
        v10 = (end + 8);
      }

      p_currentEncoderBatchInfo->__end_ = v10;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = [v6 commandBatchIdOffset];
    v12 = self->_currentEncoderBatchInfo.__begin_;
    v13 = self->_currentEncoderBatchInfo.__end_;
    if (v12 != v13)
    {
      v14 = vdup_n_s32(v11);
      do
      {
        *v12 = vsub_s32(*v12, v14);
        ++v12;
      }

      while (v12 != v13);
    }

    v22 = self->_currentBatchEncoderIndex - 1;
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::vector<std::pair<unsigned int,unsigned int>>&>(&self->_encoderIndexToBatchInfo.__table_.__bucket_list_.__ptr_, &v22);
    self->_currentEncoderBatchInfo.__end_ = self->_currentEncoderBatchInfo.__begin_;
  }
}

- (void)_splitCommandEncoders
{
  v3 = *MEMORY[0x277D0AFA0];
  if ((GPUTools::MTL::IsFuncEnumSampledBlitCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumSampledBlitCallAGX(**(&self->super.super.super.super.isa + v3)))
  {
    --self->_nRemainingCommandsForCurrentEncoder;

    [(DYMTLCommonDebugFunctionPlayer *)self _splitBlitEncoder];
  }
}

- (void)_setupEncodersForBatchIdFiltering
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  v4 = *MEMORY[0x277D0AFA0];
  v5 = **(&self->super.super.super.super.isa + v4);
  if ((v5 + 16354) < 4 || v5 == -16014)
  {
    v11 = v3;
    if ([v3 playbackMode] == 5)
    {
      currentBatchEncoderIndex = self->_currentBatchEncoderIndex;
      v8 = currentBatchEncoderIndex >= [(NSArray *)self->_batchInfos count];
      v3 = v11;
      if (v8)
      {
        goto LABEL_15;
      }

      v9 = [(NSArray *)self->_batchInfos objectAtIndexedSubscript:self->_currentBatchEncoderIndex];
      self->_currentEncoderBatchIndex = [v9 unsignedIntValue];

      if (self->_currentEncoderBatchIndex != -1)
      {
        v10 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 24, 0)];
        std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderIndexToBatchInfo.__table_.__bucket_list_.__ptr_, &self->_currentBatchEncoderIndex);
      }
    }

    else if ([v11 playbackMode] == 12)
    {
      v3 = v11;
      if (self->_currentBatchEncoderIndex)
      {
LABEL_14:
        ++self->_currentBatchEncoderIndex;
        goto LABEL_15;
      }

      std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<unsigned int,unsigned int>>>>>::clear(&self->_encoderIndexToBatchInfo);
    }

    v3 = v11;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)executeGraphicsFunction
{
  v576 = *MEMORY[0x277D85DE8];
  v501 = objc_autoreleasePoolPush();
  v503 = self;
  v502 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  v3 = [v502 playbackMode];
  if (v3 > 6)
  {
    if (v3 <= 9)
    {
      if (v3 != 7)
      {
        if (v3 != 8)
        {
          [(DYMTLCommonDebugFunctionPlayer *)self _splitCommandEncoders];
          [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
          v13 = [(DYMTLCommonDebugFunctionPlayer *)self shouldExecuteGraphicsFunction];
          goto LABEL_125;
        }

        if (!-[DYFunctionPlayer mainExecutionMode](self, "mainExecutionMode") || (v39 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]), v39 != [v502 targetFunctionIndex] - 1))
        {
LABEL_88:
          [(DYMTLCommonDebugFunctionPlayer *)v503 _executeGraphicsFunction];
          v13 = [(DYMTLCommonDebugFunctionPlayer *)v503 shouldExecuteGraphicsFunction];
LABEL_125:
          if (!v13)
          {
            goto LABEL_324;
          }

          goto LABEL_119;
        }

        v40 = *MEMORY[0x277D0AFA0];
        __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v40) + 48, 0);
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &__p))
        {
          goto LABEL_324;
        }

        v41 = [(DYFunctionPlayer *)v503 engine];
        v42 = [v41 playbackOptions];

        v553.i64[0] = 0;
        if (GPUTools::MTL::IsFuncEnumIndirectExecuteCall(**(&v503->super.super.super.super.isa + v40)))
        {
          v528 = 0;
          -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v528, &v553);
          v43 = v528;
        }

        else
        {
          v43 = 0;
        }

        [(DYMTLShaderDebuggerTraceGenerator *)v503->_shaderDebuggerTraceGenerator prepareCommandEncoderForInstrumentedCall:__p generationOptions:v42];
        if (v43)
        {
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v40)))
          {
            v148 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
            v149 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
            [v149 executeIndirectRenderCommand:v148 withData:v553.i64[0] atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v43}];
LABEL_243:

            goto LABEL_244;
          }

          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&v503->super.super.super.super.isa + v40)))
          {
            v148 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
            v149 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
            [v149 executeIndirectComputeCommand:v148 withData:v553.i64[0] atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v43}];
            goto LABEL_243;
          }
        }

        else
        {
          [(DYMTLCommonDebugFunctionPlayer *)v503 _executeGraphicsFunction];
        }

LABEL_244:
        if ([(DYMTLCommonDebugFunctionPlayer *)v503 shouldExecuteGraphicsFunction])
        {
          [(DYMTLCommonDebugFunctionPlayer *)v503 _trackObjects];
        }

        goto LABEL_324;
      }

      v34 = objc_autoreleasePoolPush();
      [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
      [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
      v35 = *MEMORY[0x277D0AFA0];
      if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v35)))
      {
        v553.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v35) + 48, 0);
        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &v553);
        if (v36)
        {
          v37 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandBufferMap.__table_.__bucket_list_.__ptr_, v36 + 3);
          if (v37)
          {
            v565 = 0;
            v38 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553);
            if (v38)
            {
              v565 = v38[3];
              std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v565);
              v462 = [(DYMTLFunctionPlayer *)v503 objectForKey:v565];
            }

            else
            {
              v462 = 0;
            }

            contexta = [(DYMTLFunctionPlayer *)v503 objectForKey:v553.i64[0]];
            v457 = v34;
            if ([contexta conformsToProtocol:&unk_2860CBE88])
            {
              v454 = [(DYMTLFunctionPlayer *)v503 objectForKey:v37[3]];
              v150 = v37[2];
              v482 = [(DYMTLFunctionPlayer *)v503 objectForKey:v150];
              v500 = [contexta descriptor];
              if (v462)
              {
                v151 = DYMTLGetAssociatedObject(v462, 0);

                v500 = v151;
              }

              [v454 commandBuffer];
              v153 = v152 = 0;
              do
              {
                v154 = [v500 colorAttachments];
                v155 = [v154 objectAtIndexedSubscript:v152];
                [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v155];

                v156 = [v500 colorAttachments];
                v157 = [v156 objectAtIndexedSubscript:v152];
                [v157 setResolveTexture:0];

                v158 = [v500 colorAttachments];
                v159 = [v158 objectAtIndexedSubscript:v152];
                [v159 setLoadAction:1];

                v160 = [v500 colorAttachments];
                v161 = [v160 objectAtIndexedSubscript:v152];
                v162 = [v161 storeAction] == 4;

                if (!v162)
                {
                  v163 = [v500 colorAttachments];
                  v164 = [v163 objectAtIndexedSubscript:v152];
                  [v164 setStoreAction:1];
                }

                ++v152;
              }

              while (v152 != 8);
              v165 = [v500 depthAttachment];
              [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v165];

              v166 = [v500 depthAttachment];
              [v166 setResolveTexture:0];

              v167 = [v500 depthAttachment];
              [v167 setLoadAction:1];

              v168 = [v500 depthAttachment];
              v169 = [v168 storeAction] == 4;

              if (!v169)
              {
                v170 = [v500 depthAttachment];
                [v170 setStoreAction:1];
              }

              v171 = [v500 stencilAttachment];
              [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v171];

              v172 = [v500 stencilAttachment];
              [v172 setResolveTexture:0];

              v173 = [v500 stencilAttachment];
              [v173 setLoadAction:1];

              v174 = [v500 stencilAttachment];
              v175 = [v174 storeAction] == 4;

              if (!v175)
              {
                v176 = [v500 stencilAttachment];
                [v176 setStoreAction:1];
              }

              v177 = [v500 stencilAttachment];
              [v177 setStencilResolveFilter:0];

              if (v462)
              {
                v178 = DYMTLNewStatefulParallelRenderCommandEncoder(v153, v500);
                v179 = DYMTLNewStatefulRenderCommandEncoder(v178);
                [(DYMTLCommonDebugFunctionPlayer *)v503 encodeStoreActionForParallelRenderCommandEncoder:v178 withDescriptor:v500];
              }

              else
              {
                v179 = DYMTLNewStatefulRenderCommandEncoder(v153, v500);
                [(DYMTLCommonDebugFunctionPlayer *)v503 encodeStoreActionForRenderCommandEncoder:v179 withDescriptor:v500];
                v178 = 0;
              }

              v564[0] = MEMORY[0x277D85DD0];
              v564[1] = 3221225472;
              v564[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke;
              v564[3] = &unk_27930F3E0;
              v564[4] = v503;
              [contexta applyAllStateToEncoder:v179 rawBytesBlock:v564];
              [(DYMTLFunctionPlayer *)v503 setObject:v153 forKey:v150];
              [(DYMTLFunctionPlayer *)v503 setObject:v179 forKey:v553.i64[0]];
              if (v462)
              {
                [(DYMTLFunctionPlayer *)v503 setObject:v178 forKey:v565];
              }

              [contexta endEncoding];
              if (v462)
              {
                [v462 endEncoding];
              }

              if (objc_opt_respondsToSelector())
              {
                v219 = [v502 playbackOptions];
                if (v219)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v220 = v219;
                    v221 = [v220 objectForKeyedSubscript:*MEMORY[0x277D0B4C8]];
                    GPUTraceResourceResolutionDecode(v221, &__p);
                    v470 = v567;
                    v474 = __p;
                    v467 = v568;

                    v456 = [v220 objectForKeyedSubscript:*MEMORY[0x277D0B4E8]];

                    if (v456)
                    {
LABEL_300:
                      v465 = [v456 containsObject:@"All"];
                      v562 = 0u;
                      v563 = 0u;
                      v560 = 0u;
                      v561 = 0u;
                      v227 = v456;
                      v478 = v227;
                      v228 = [v227 countByEnumeratingWithState:&v560 objects:v575 count:16];
                      if (!v228)
                      {
                        v229 = 0;
                        v230 = 0;
                        goto LABEL_321;
                      }

                      v229 = 0;
                      v230 = 0;
                      v493 = *v561;
                      v496 = v228;
                      while (1)
                      {
                        for (i = 0; i != v496; ++i)
                        {
                          if (*v561 != v493)
                          {
                            objc_enumerationMutation(v227);
                          }

                          v232 = *(*(&v560 + 1) + 8 * i);
                          if ([v232 hasPrefix:@"Color."])
                          {
                            v233 = v232;
                            v234 = [@"Color." length];
                            v235 = [v233 substringWithRange:{v234, objc_msgSend(v233, "length") - v234}];
                            v236 = [v235 integerValue];

                            if ((v236 & 0xFFFFFFF8) != 0)
                            {
                              continue;
                            }

                            v237 = [v500 colorAttachments];
                            v238 = [v237 objectAtIndexedSubscript:v236 & 7];

                            v239 = [v238 texture];
                            v240 = 1;
                          }

                          else if ([v232 isEqualToString:@"Depth."])
                          {
                            v238 = [v500 depthAttachment];

                            v239 = [v238 texture];
                            v240 = 2;
                          }

                          else
                          {
                            if (![v232 isEqualToString:@"Stencil."])
                            {
                              continue;
                            }

                            v238 = [v500 stencilAttachment];

                            v239 = [v238 texture];
                            v240 = 4;
                          }

                          v229 = v238;

                          if (v239 && v238)
                          {
                            v491 = v238;
                            v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                            v242 = MEMORY[0x277D25728];
                            objd = v241;
                            v243 = [(DYMTLFunctionPlayer *)v503 device];
                            v244 = [v242 forDevice:v243];

                            v245 = v240;
                            __p = v474;
                            v567 = v470;
                            v568 = v467;
                            v246 = v229;
                            v247 = [v229 level];
                            v248 = [v246 slice];
                            v249 = [v246 depthPlane];
                            v556[0] = MEMORY[0x277D85DD0];
                            v556[1] = 3221225472;
                            v556[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_2;
                            v556[3] = &unk_27930F6E0;
                            v556[4] = v503;
                            v250 = objd;
                            v557 = v250;
                            v558 = v239;
                            v559 = v232;
                            v230 = v558;
                            LODWORD(v441) = v245;
                            [v244 resizeTexture:v558 resolution:&__p level:v247 slice:v248 depthPlane:v249 inBuffer:v482 withType:v441 completion:v556];

                            v227 = v478;
                            v229 = v491;

                            if ((v465 & 1) == 0)
                            {
                              goto LABEL_321;
                            }
                          }

                          else
                          {
                            v230 = v239;
                          }
                        }

                        v496 = [v227 countByEnumeratingWithState:&v560 objects:v575 count:16];
                        if (!v496)
                        {
LABEL_321:

                          [v482 commit];
                          goto LABEL_322;
                        }
                      }
                    }

LABEL_297:
                    v224 = objc_opt_new();
                    v225 = 0;
                    do
                    {
                      v226 = [MEMORY[0x277CCACA8] stringWithFormat:@"Color.%u", v225];
                      [v224 addObject:v226];

                      v225 = (v225 + 1);
                    }

                    while (v225 != 8);
                    [v224 addObject:@"Depth."];
                    [v224 addObject:@"Stencil."];
                    [v224 addObject:@"First"];
                    v456 = [MEMORY[0x277CBEA60] arrayWithArray:v224];

                    goto LABEL_300;
                  }
                }
              }

              v474 = 512;
              v470 = 128;
              v467 = 32;
              goto LABEL_297;
            }

LABEL_322:

            v34 = v457;
          }
        }
      }

      objc_autoreleasePoolPop(v34);
      goto LABEL_324;
    }

    if ((v3 - 11) < 2)
    {
      goto LABEL_44;
    }

    if (v3 == 10)
    {
      v66 = *MEMORY[0x277D0AFA0];
      v67 = *(&self->super.super.super.super.isa + v66);
      v68 = *v67;
      if (*v67 <= -16163)
      {
        switch(v68)
        {
          case -16351:
            [(DYFunctionPlayer *)self processArguments];
            self->_parallelEncoderCommandBufferID = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v66) + 48, 0);
            v185 = self + *MEMORY[0x277D0AF68];
            v186 = GPUTools::MTL::MakeMTLRenderPassDescriptor(**(v185 + 1), [(DYMTLFunctionPlayer *)self objectMap]);
            dependencyGraphParallelDescriptor = self->_dependencyGraphParallelDescriptor;
            self->_dependencyGraphParallelDescriptor = v186;

            GPUTools::MTL::Utils::MakeDYMTLRenderPassDescriptor(**(v185 + 1), &self->_dependencyGraphDYMTLParallelDescriptor, v188);
            goto LABEL_328;
          case -16286:
            for (j = 0; j != 8; ++j)
            {
              v190 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor colorAttachments];
              v191 = [v190 objectAtIndexedSubscript:j];
              [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v191];

              v192 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor colorAttachments];
              v193 = [v192 objectAtIndexedSubscript:j];
              v194 = [v193 resolveTexture];

              v195 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor colorAttachments];
              v196 = [v195 objectAtIndexedSubscript:j];
              if (v194)
              {
                [v196 setStoreAction:3];
              }

              else
              {
                [v196 setStoreAction:1];
              }
            }

            v197 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor depthAttachment];
            [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v197];

            v198 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor depthAttachment];
            v199 = [v198 resolveTexture];

            v200 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor depthAttachment];
            if (v199)
            {
              [v200 setStoreAction:3];
            }

            else
            {
              [v200 setStoreAction:1];
            }

            v274 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor stencilAttachment];
            [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v274];

            v275 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor stencilAttachment];
            v276 = [v275 resolveTexture];

            v277 = [(MTLRenderPassDescriptor *)v503->_dependencyGraphParallelDescriptor stencilAttachment];
            if (v276)
            {
              [v277 setStoreAction:3];
            }

            else
            {
              [v277 setStoreAction:1];
            }

            v278 = [(DYMTLFunctionPlayer *)v503 objectForKey:v503->_parallelEncoderCommandBufferID];
            v279 = [v278 renderCommandEncoderWithDescriptor:v503->_dependencyGraphParallelDescriptor];
            v553.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v66) + 24, 0);
            [(DYMTLFunctionPlayer *)v503 setObject:v279 forKey:v553.i64[0]];
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &v553);
            __p = v503->_parallelEncoderCommandBufferID;
            v567 = 0;
            v568 = v553.i64[0];
            v569 = 0;
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &v553);
            [(DYMTLCommonDebugFunctionPlayer *)v503 _addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:&v503->_dependencyGraphDYMTLParallelDescriptor forEncoder:v553.i64[0]];
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553);

            goto LABEL_328;
          case -16285:
            currentParallelDescriptor = self->_currentParallelDescriptor;
            self->_currentParallelDescriptor = 0;

            self->_currentParallelId = 0;
            self->_parallelEncoderCommandBufferID = 0;
            v136 = self->_dependencyGraphParallelDescriptor;
            self->_dependencyGraphParallelDescriptor = 0;

            goto LABEL_328;
        }
      }

      else
      {
        if ((v68 + 16162) <= 0xA && ((1 << (v68 + 34)) & 0x73F) != 0)
        {
          goto LABEL_328;
        }

        if (v68 == -15789)
        {
          if (!self->_sparseTextureFence)
          {
            v70 = [(DYMTLFunctionPlayer *)self device];
            v71 = [v70 newFence];
            sparseTextureFence = v503->_sparseTextureFence;
            v503->_sparseTextureFence = v71;

            v67 = *(&v503->super.super.super.super.isa + v66);
          }

          v73 = [(DYMTLFunctionPlayer *)v503 objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v67 + 12), 0)];
          [v73 updateFence:v503->_sparseTextureFence];
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)v503 _executeGraphicsFunction];
      [(DYMTLCommonDebugFunctionPlayer *)v503 _trackObjects];
      v137 = *(&v503->super.super.super.super.isa + v66);
      v138 = *v137;
      if (v138 == -16376 || v138 == -15789 || v138 == -16246)
      {
        __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v137 + 12), 0);
        v141 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
        v142 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandBufferMap.__table_.__bucket_list_.__ptr_, v141 + 3);
        v143 = [(DYMTLFunctionPlayer *)v503 objectForKey:v142[3]];
        v144 = v142[2];
        v145 = [(DYMTLFunctionPlayer *)v503 objectForKey:v144];
        [v145 commit];
        [v145 waitUntilCompleted];
        v146 = [v143 commandBuffer];

        [(DYMTLFunctionPlayer *)v503 setObject:v146 forKey:v144];
        v137 = *(&v503->super.super.super.super.isa + v66);
        v138 = *v137;
      }

      if (v138 == -16361)
      {
        v147 = [(DYMTLFunctionPlayer *)v503 objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v137 + 12), 0)];
        [v147 waitUntilCompleted];
      }

      else if (GPUTools::MTL::IsFuncEnumEndEncoding(v138))
      {
        if (objc_opt_respondsToSelector())
        {
          v201 = [v502 playbackOptions];
          if (v201 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v202 = v201;
            v203 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B4F0]];
            v204 = [v203 BOOLValue];

            v205 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B100]];
            v206 = *MEMORY[0x277D0B4C8];
            v207 = [v202 objectForKeyedSubscript:*MEMORY[0x277D0B4C8]];
            v208 = v207 == 0;

            if (v208)
            {
              v212 = 16;
              v211 = 256;
              v210 = 128;
            }

            else
            {
              v209 = [v202 objectForKeyedSubscript:v206];
              GPUTraceResourceResolutionDecode(v209, &__p);
              v210 = __p;
              v211 = v567;
              v212 = v568;
            }

            v336 = v204 ^ 1;
          }

          else
          {
            v205 = 0;
            v336 = 1;
            v212 = 16;
            v211 = 256;
            v210 = 128;
          }
        }

        else
        {
          v205 = 0;
          v336 = 1;
          v212 = 16;
          v211 = 256;
          v210 = 128;
        }

        v404 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
        v405 = [v205 objectForKey:v404];
        if (v405)
        {
          v406 = v336;
        }

        else
        {
          v406 = 1;
        }

        if ((v406 & 1) == 0)
        {
          v553.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v66) + 48, 0);
          v407 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &v553);
          if (v407)
          {
            v408 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandBufferMap.__table_.__bucket_list_.__ptr_, v407 + 3);
            if (v408)
            {
              v565 = 0;
              v409 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553);
              if (v409)
              {
                v565 = v409[3];
                std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v565);
                v410 = [(DYMTLFunctionPlayer *)v503 objectForKey:v565];
              }

              else
              {
                v410 = 0;
              }

              v411 = [(DYMTLFunctionPlayer *)v503 objectForKey:v408[2]];
              v412 = objc_autoreleasePoolPush();
              __p = v210;
              v567 = v211;
              v568 = v212;
              v413 = [(DYMTLCommonDebugFunctionPlayer *)v503 _generateThumbnailAndResourceInfoForRequestedTextures:v405 resolution:&__p commandBuffer:v411];
              [(NSMutableDictionary *)v503->_dependencyGraphThumbnails setObject:v413 forKey:v404];

              objc_autoreleasePoolPop(v412);
            }
          }
        }
      }

      goto LABEL_324;
    }

    if (v3 != 13)
    {
      goto LABEL_74;
    }

    v22 = objc_autoreleasePoolPush();
    v461 = *MEMORY[0x277D0AFA0];
    v23 = **(&self->super.super.super.super.isa + v461) + 16162;
    if (v23 < 0xB && ((0x73Fu >> v23) & 1) != 0)
    {
      v24 = 1;
      goto LABEL_251;
    }

    context = v22;
    [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
    [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
    __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v461) + 48, 0);
    v75 = *(&self->super.super.super.super.isa + v461);
    if (*v75 == -16353)
    {
      __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v75 + 6), 0);
    }

    if (objc_opt_respondsToSelector())
    {
      v76 = [v502 playbackOptions];
      if (v76)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = v76;
          v78 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B470]];
          v79 = [v78 unsignedLongLongValue];

          v80 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B460]];
          v492 = [v80 unsignedLongLongValue];

          v81 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B468]];
          v490 = [v81 unsignedLongLongValue];

          v82 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B458]];
          v469 = [v82 unsignedLongLongValue] != 0;

          v83 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B450]];
          v473 = [v83 unsignedLongLongValue] != 0;

          v84 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B448]];
          v85 = [v84 unsignedLongLongValue];

          v495 = [v77 objectForKeyedSubscript:*MEMORY[0x277D0B478]];

          v86 = __p;
          if (v79 && __p != v79)
          {
            v24 = 2;
LABEL_250:

            v22 = context;
LABEL_251:
            objc_autoreleasePoolPop(v22);
            if ((v24 | 2) != 2)
            {
              goto LABEL_328;
            }

            goto LABEL_324;
          }

          v101 = v85 != 0;
LABEL_156:
          pixelHistoryEncoderStateTrackings = v503->_pixelHistoryEncoderStateTrackings;
          v103 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v86];
          v104 = [(NSMutableDictionary *)pixelHistoryEncoderStateTrackings objectForKeyedSubscript:v103];

          if (!v104)
          {
            v463 = 0;
            if (**(&v503->super.super.super.super.isa + v461) != -16353)
            {
              v24 = 2;
              v477 = 0;
LABEL_249:

              goto LABEL_250;
            }

            v477 = 0;
            goto LABEL_166;
          }

          v477 = v104;
          v105 = [v104 encoderFunctionIndex];
          v106 = [(NSMutableDictionary *)v503->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B3D0]];
          v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v105];
          v463 = [v106 objectForKeyedSubscript:v107];

          v108 = **(&v503->super.super.super.super.isa + v461);
          if (v108 != -16353)
          {
            if (v463)
            {
              if (GPUTools::MTL::IsFuncEnumDrawCall(v108))
              {
                goto LABEL_166;
              }

              if (v473)
              {
                v109 = **(&v503->super.super.super.super.isa + v461);
                if (IsFuncEnumPixelHistoryInterestingRenderPassStateItems(v109) || v109 == -16246)
                {
                  goto LABEL_166;
                }
              }
            }

            else
            {
              v463 = 0;
            }

LABEL_248:
            v24 = 2;
            goto LABEL_249;
          }

LABEL_166:
          v110 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
          if (v110)
          {
            v111 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v110 + 5);
            if (v111)
            {
              v448 = v111;
              v112 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandBufferMap.__table_.__bucket_list_.__ptr_, v110 + 3);
              if (v112)
              {
                v445 = v101;
                v455 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                v453 = [(DYMTLFunctionPlayer *)v503 objectForKey:v112[3]];
                v446 = v112[2];
                v464 = [(DYMTLFunctionPlayer *)v503 objectForKey:?];
                v499 = [v455 descriptor];
                v113 = v110[4];
                v451 = [(DYMTLFunctionPlayer *)v503 objectForKey:v113];
                v443 = v113;
                if (**(&v503->super.super.super.super.isa + v461) == -16353)
                {
                  v481 = objc_opt_new();
                  v114 = 0;
                  do
                  {
                    v115 = [MEMORY[0x277CCACA8] stringWithFormat:@"Color.%u", v114];
                    [v481 addObject:v115];

                    v114 = (v114 + 1);
                  }

                  while (v114 != 8);
                  [v481 addObject:@"Depth."];
                  [v481 addObject:@"Stencil."];
                  obj = objc_opt_new();
                  v526 = 0u;
                  v527 = 0u;
                  v524 = 0u;
                  v525 = 0u;
                  v116 = v481;
                  v117 = [v116 countByEnumeratingWithState:&v524 objects:v573 count:16];
                  if (v117)
                  {
                    v118 = *v525;
                    do
                    {
                      for (k = 0; k != v117; ++k)
                      {
                        if (*v525 != v118)
                        {
                          objc_enumerationMutation(v116);
                        }

                        v120 = *(*(&v524 + 1) + 8 * k);
                        if (![v120 hasPrefix:@"Color."])
                        {
                          if ([v120 isEqualToString:@"Depth."])
                          {
                            v123 = [v499 depthAttachment];
                            v124 = [v123 texture];
                            v125 = @"Depth";
                            if (!v124)
                            {
                              goto LABEL_192;
                            }
                          }

                          else
                          {
                            if (![v120 isEqualToString:@"Stencil."])
                            {
LABEL_191:
                              v124 = 0;
                              v123 = 0;
                              v125 = 0;
                              goto LABEL_192;
                            }

                            v123 = [v499 stencilAttachment];
                            v124 = [v123 texture];
                            v125 = @"Stencil";
                            if (!v124)
                            {
                              goto LABEL_192;
                            }
                          }

LABEL_186:
                          if (v123)
                          {
                            v126 = [(DYMTLFunctionPlayer *)v503 keyForOriginalObject:v124 inverseObjectMap:&v503->_pixelHistoryInverseObjectMap];
                            if (!v495 || (v127 = v126, ![v495 count]) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v127), v128 = objc_claimAutoreleasedReturnValue(), v129 = objc_msgSend(v495, "containsObject:", v128), v128, (v129 & 1) != 0))
                            {
                              [obj setObject:v123 forKeyedSubscript:v125];
                            }
                          }

                          goto LABEL_192;
                        }

                        Index = GPUThumbnailOptionsColorGetIndex(v120);
                        if (Index >= 8)
                        {
                          goto LABEL_191;
                        }

                        v122 = [v499 colorAttachments];
                        v123 = [v122 objectAtIndexedSubscript:Index];

                        v124 = [v123 texture];
                        v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"Color %i", Index];
                        if (v124)
                        {
                          goto LABEL_186;
                        }

LABEL_192:
                      }

                      v117 = [v116 countByEnumeratingWithState:&v524 objects:v573 count:16];
                    }

                    while (v117);
                  }

                  v130 = objc_opt_new();
                  v131 = v503->_pixelHistoryEncoderStateTrackings;
                  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:__p];
                  [(NSMutableDictionary *)v131 setObject:v130 forKeyedSubscript:v132];

                  [v130 setEncoderFunctionIndex:*(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                  [v130 setFilteredGenerationOptions:obj];
                  v133 = objc_opt_new();
                  [v130 setEncoderStateFunctionIndexes:v133];

                  v134 = v130;
                }

                else
                {
                  v134 = v477;
                }

                v253 = [v134 filteredGenerationOptions];
                v468 = v134;
                v450 = v253;
                v254 = [v253 count];
                if (v463 != 0 && v473)
                {
                  v255 = **(&v503->super.super.super.super.isa + v461);
                  if (IsFuncEnumPixelHistoryInterestingRenderPassStateItems(v255))
                  {
                    v256 = objc_opt_new();
                    v257 = **(&v503->super.super.super.super.isa + v461);
                    switch(v257)
                    {
                      case 0xFFFFC072:
                        v257 = 4294951219;
                        break;
                      case 0xFFFFC077:
                        v257 = 4294951220;
                        break;
                      case 0xFFFFC083:
                        v257 = 4294951077;
                        break;
                    }

                    v452 = v256;
                    v341 = [v134 encoderStateFunctionIndexes];
                    v342 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v257];
                    v449 = [v341 objectForKeyedSubscript:v342];

                    if (v449)
                    {
                      v343 = v452;
                      v344 = [v449 unsignedLongValue];
                      v345 = [v468 lastInterestingFunctionIndex];
                      v346 = *MEMORY[0x277D0B3A8];
                      if (v344 <= v345)
                      {
LABEL_441:
                        v348 = [v463 objectForKeyedSubscript:v346];
                        v349 = *MEMORY[0x277D0AF80];
                        v350 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + v349)];
                        [v348 setObject:v343 forKeyedSubscript:v350];

                        v351 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + v349)];
                        v458 = [v468 encoderStateFunctionIndexes];
                        v352 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v257];
                        [v458 setObject:v351 forKeyedSubscript:v352];
                        v444 = v351;
LABEL_579:

                        v282 = v452;
LABEL_580:

                        v253 = v450;
                        goto LABEL_581;
                      }

                      v347 = [v463 objectForKeyedSubscript:*MEMORY[0x277D0B3A8]];
                      [v347 removeObjectForKey:v449];
                    }

                    else
                    {
                      v346 = *MEMORY[0x277D0B3A8];
                    }

                    v343 = v452;
                    goto LABEL_441;
                  }

                  if (v255 == -16246)
                  {
                    v522 = 0u;
                    v523 = 0u;
                    v520 = 0u;
                    v521 = 0u;
                    v280 = [v134 encoderStateFunctionIndexes];
                    v281 = [v280 allKeys];

                    v282 = v281;
                    v283 = [v281 countByEnumeratingWithState:&v520 objects:v572 count:16];
                    if (v283)
                    {
                      v284 = *v521;
                      v285 = *MEMORY[0x277D0B3A8];
                      do
                      {
                        for (m = 0; m != v283; ++m)
                        {
                          if (*v521 != v284)
                          {
                            objc_enumerationMutation(v281);
                          }

                          v287 = *(*(&v520 + 1) + 8 * m);
                          v288 = [v468 encoderStateFunctionIndexes];
                          v289 = [v288 objectForKeyedSubscript:v287];

                          v290 = [v289 unsignedLongValue];
                          if (v290 > [v468 lastInterestingFunctionIndex])
                          {
                            v291 = [v463 objectForKeyedSubscript:v285];
                            [v291 removeObjectForKey:v289];
                          }
                        }

                        v282 = v281;
                        v283 = [v281 countByEnumeratingWithState:&v520 objects:v572 count:16];
                      }

                      while (v283);
                    }

                    goto LABEL_580;
                  }
                }

                if (!v254)
                {
LABEL_581:

                  v24 = 0;
                  v477 = v468;
                  goto LABEL_249;
                }

                if (**(&v503->super.super.super.super.isa + v461) == -16353)
                {
                  v292 = objc_opt_new();

                  v293 = [(NSMutableDictionary *)v503->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B3D0]];
                  v294 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80])];
                  [v293 setObject:v292 forKeyedSubscript:v294];

                  v295 = objc_opt_new();
                  [v292 setObject:v295 forKeyedSubscript:*MEMORY[0x277D0B3A8]];

                  v296 = objc_opt_new();
                  v483 = *MEMORY[0x277D0B3B8];
                  [v292 setObject:v296 forKeyedSubscript:?];

                  v297 = objc_opt_new();
                  v479 = *MEMORY[0x277D0B3C8];
                  [v292 setObject:v297 forKeyedSubscript:?];

                  v298 = objc_opt_new();
                  v475 = *MEMORY[0x277D0B3C0];
                  [v292 setObject:v298 forKeyedSubscript:?];

                  v518 = 0u;
                  v519 = 0u;
                  v516 = 0u;
                  v517 = 0u;
                  v299 = v253;
                  obja = v299;
                  v300 = [v299 countByEnumeratingWithState:&v516 objects:v571 count:16];
                  if (v300)
                  {
                    v301 = *v517;
                    do
                    {
                      for (n = 0; n != v300; ++n)
                      {
                        if (*v517 != v301)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v303 = *(*(&v516 + 1) + 8 * n);
                        v304 = [obja objectForKeyedSubscript:v303];
                        v305 = [v304 texture];
                        v306 = [(DYMTLFunctionPlayer *)v503 keyForOriginalObject:v305 inverseObjectMap:&v503->_pixelHistoryInverseObjectMap];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();
                        v308 = @"Color";
                        if ((isKindOfClass & 1) == 0)
                        {
                          objc_opt_class();
                          v309 = objc_opt_isKindOfClass();
                          v308 = @"Depth";
                          if ((v309 & 1) == 0)
                          {
                            objc_opt_class();
                            v310 = objc_opt_isKindOfClass();
                            v308 = @"Stencil";
                            if ((v310 & 1) == 0)
                            {
                              v308 = 0;
                            }
                          }
                        }

                        v311 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", v308, v306];
                        v312 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v304, "loadAction")}];
                        v313 = [v292 objectForKeyedSubscript:v483];
                        [v313 setObject:v312 forKeyedSubscript:v311];

                        v314 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v304, "storeAction")}];
                        v315 = [v292 objectForKeyedSubscript:v479];
                        [v315 setObject:v314 forKeyedSubscript:v311];

                        v316 = [v292 objectForKeyedSubscript:v475];
                        [v316 setObject:v303 forKeyedSubscript:v311];
                      }

                      v299 = obja;
                      v300 = [obja countByEnumeratingWithState:&v516 objects:v571 count:16];
                    }

                    while (v300);
                  }

                  v463 = v292;
                }

                v317 = [v453 commandBuffer];
                v447 = *MEMORY[0x277D0AF80];
                v318 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-contd-after-%u", *(&v503->super.super.super.super.isa + v447)];
                v452 = v317;
                [v317 setLabel:v318];

                for (ii = 0; ii != 8; ++ii)
                {
                  v320 = [v499 colorAttachments];
                  v321 = [v320 objectAtIndexedSubscript:ii];

                  [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v321];
                  [v321 setResolveTexture:0];
                  [v321 setLoadAction:1];
                  if ([v321 storeAction] != 4)
                  {
                    [v321 setStoreAction:1];
                  }
                }

                v322 = [v499 depthAttachment];
                [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v322];
                [v322 setResolveTexture:0];
                [v322 setLoadAction:1];
                if ([v322 storeAction] != 4)
                {
                  [v322 setStoreAction:1];
                }

                v323 = [v499 stencilAttachment];
                [(DYMTLCommonDebugFunctionPlayer *)v503 _updateMemorylessTextures:v323];
                [v323 setResolveTexture:0];
                [v323 setLoadAction:1];
                if ([v323 storeAction] != 4)
                {
                  [v323 setStoreAction:1];
                }

                v324 = DYMTLNewStatefulRenderCommandEncoder(v452, v499);
                [(DYMTLCommonDebugFunctionPlayer *)v503 encodeStoreActionForRenderCommandEncoder:v324 withDescriptor:v499];
                v515[0] = MEMORY[0x277D85DD0];
                v515[1] = 3221225472;
                v515[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_4;
                v515[3] = &unk_27930F3E0;
                v515[4] = v503;
                [v455 applyAllStateToEncoder:v324 rawBytesBlock:v515];
                [v455 endEncoding];
                [v464 commit];
                [v464 waitUntilCompleted];
                v325 = MEMORY[0x277D25728];
                v326 = [(DYMTLFunctionPlayer *)v503 device];
                v449 = v324;
                v444 = [v325 forDevice:v326];

                v458 = objc_opt_new();
                v327 = objc_opt_new();
                v328 = *MEMORY[0x277D0B420];
                v484 = v327;
                [v458 setObject:? forKeyedSubscript:?];
                v330 = **(&v503->super.super.super.super.isa + v461);
                if (v330 != -16353 && GPUTools::MTL::IsFuncEnumDrawCall(v330))
                {
                  if ([(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer currentRenderPipelineHasBufferOrTextureReadWrite:__p])
                  {
                    v331 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
                    [v458 setObject:v331 forKeyedSubscript:*MEMORY[0x277D0B3D8]];
                  }

                  else
                  {
                    v358 = [v453 commandBuffer];

                    v359 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-total-draws-%u", *(&v503->super.super.super.super.isa + v447)];
                    [v358 setLabel:v359];

                    [(DYMTLPixelHistoryDrawStatsSupport *)v503->_pixelHistoryDrawStatsRenderer prepareWithCommandEncoderId:__p parallelEncoderId:0 pipelineId:v443 renderPassDescriptor:v448 + 3];
                    v514[0] = MEMORY[0x277D85DD0];
                    v514[1] = 3221225472;
                    v514[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_5;
                    v514[3] = &unk_27930F730;
                    v514[4] = v503;
                    v360 = [(DYMTLCommonDebugFunctionPlayer *)v503 collectPixelDrawStatsTotal:v358 originalPipeline:v451 atX:v492 y:v490 draw:v514];
                    [v358 commit];
                    [v358 waitUntilCompleted];
                    [v458 addEntriesFromDictionary:v360];

                    v464 = v358;
                  }
                }

                if (**(&v503->super.super.super.super.isa + v461) != -16353)
                {
                  v361 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
                  v362 = [v361 longLongValue] == 0;

                  v363 = v469 && v362;
                  v329 = v452;
                  v364 = v324;
                  v352 = v484;
                  if (v363)
                  {
LABEL_578:
                    [(DYMTLFunctionPlayer *)v503 setObject:v329 forKey:v446];
                    [(DYMTLFunctionPlayer *)v503 setObject:v364 forKey:__p];
                    goto LABEL_579;
                  }
                }

                v476 = *(v448 + 1616);
                objb = [v453 commandBuffer];

                v365 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-blits-n-additional-stats-%u", *(&v503->super.super.super.super.isa + v447)];
                [objb setLabel:v365];

                v480 = [(NSMutableDictionary *)v503->_pixelHistory objectForKeyedSubscript:*MEMORY[0x277D0B430]];
                v512 = 0u;
                v513 = 0u;
                v510 = 0u;
                v511 = 0u;
                v366 = [v450 allValues];
                v466 = v366;
                v367 = [v366 countByEnumeratingWithState:&v510 objects:v570 count:16];
                if (v367)
                {
                  v471 = *v511;
                  do
                  {
                    for (jj = 0; jj != v367; ++jj)
                    {
                      if (*v511 != v471)
                      {
                        objc_enumerationMutation(v466);
                      }

                      v369 = *(*(&v510 + 1) + 8 * jj);
                      v370 = [v369 texture];
                      v371 = [(DYMTLFunctionPlayer *)v503 keyForOriginalObject:v370 inverseObjectMap:&v503->_pixelHistoryInverseObjectMap];
                      v372 = MEMORY[0x277D25720];
                      v373 = [v369 level];
                      v374 = [v369 slice];
                      v375 = [v369 depthPlane];
                      v505[0] = MEMORY[0x277D85DD0];
                      v505[1] = 3221225472;
                      v505[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_6;
                      v505[3] = &unk_27930F758;
                      v506 = v480;
                      v509 = v371;
                      v376 = v370;
                      v507 = v376;
                      v508 = v484;
                      LOBYTE(v442) = v476;
                      [v372 pixelValueFromTexture:v376 level:v373 slice:v374 depthPlane:v375 atX:v492 y:v490 inCommandBuffer:objb overHarvestForDepthStencil:v442 completion:v505];
                    }

                    v366 = v466;
                    v367 = [v466 countByEnumeratingWithState:&v510 objects:v570 count:16];
                  }

                  while (v367);
                }

                v377 = *MEMORY[0x277D0B3D8];
                v378 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
                v379 = [v378 longLongValue] > 0;

                if (v379)
                {
                  v504[0] = MEMORY[0x277D85DD0];
                  v504[1] = 3221225472;
                  v504[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_7;
                  v504[3] = &unk_27930F730;
                  v504[4] = v503;
                  v380 = objb;
                  v381 = [(DYMTLCommonDebugFunctionPlayer *)v503 collectPixelDrawStats:objb originalEncoderId:__p originalEncoder:v455 originalPipeline:v451 atX:v492 y:v490 draw:v504];
                }

                else
                {
                  v381 = 0;
                  v380 = objb;
                }

                [v380 commit];
                [v380 waitUntilCompleted];
                v472 = v381;
                if (!v381)
                {
                  if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v461)))
                  {
                    [v458 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B3A0]];
                    [v458 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                    [v458 setObject:&unk_2860BA1C8 forKeyedSubscript:*MEMORY[0x277D0B410]];
                  }

                  goto LABEL_565;
                }

                [v458 addEntriesFromDictionary:v381];
                v382 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
                v383 = [v382 longLongValue];

                v384 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B400]];
                v385 = [v384 longLongValue];

                v386 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B3E0]];
                v387 = [v386 longLongValue];

                v388 = [v458 objectForKeyedSubscript:*MEMORY[0x277D0B3F8]];
                v389 = [v388 longLongValue];

                v390 = [MEMORY[0x277CCABB0] numberWithLongLong:v389];
                [v458 setObject:v390 forKeyedSubscript:*MEMORY[0x277D0B3A0]];

                v391 = [v455 depthStencilState];
                v392 = v391;
                if (!v391 || (DYMTLGetAssociatedObject(v391, 0), v393 = objc_claimAutoreleasedReturnValue(), v393, !v393))
                {
                  [v458 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                  [v458 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B410]];
LABEL_564:

                  v380 = objb;
LABEL_565:
                  v426 = [v499 stencilAttachment];
                  v427 = [v426 texture];
                  v428 = [v499 depthAttachment];
                  v429 = [v428 texture];
                  if (v427 | v429)
                  {
                    v430 = [v453 commandBuffer];

                    v380 = v430;
                    v431 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.dt.gputrace-replayer.pixel-history-save-depth-stencil-%u", *(&v503->super.super.super.super.isa + v447)];
                    [v380 setLabel:v431];

                    if (v427)
                    {
                      LOBYTE(v442) = v476;
                      v432 = [MEMORY[0x277D25720] pixelValueFromTexture:v427 level:objc_msgSend(v426 slice:"level") depthPlane:objc_msgSend(v426 atX:"slice") y:objc_msgSend(v426 inCommandBuffer:"depthPlane") overHarvestForDepthStencil:{v492, v490, v380, v442}];
                      pixelHistoryPixelPreviousStencil = v503->_pixelHistoryPixelPreviousStencil;
                      v503->_pixelHistoryPixelPreviousStencil = v432;
                    }

                    if (v429)
                    {
                      if (v427 == v429)
                      {
                        v434 = v503->_pixelHistoryPixelPreviousStencil;
                      }

                      else
                      {
                        LOBYTE(v442) = v476;
                        v434 = [MEMORY[0x277D25720] pixelValueFromTexture:v429 level:objc_msgSend(v428 slice:"level") depthPlane:objc_msgSend(v428 atX:"slice") y:objc_msgSend(v428 inCommandBuffer:"depthPlane") overHarvestForDepthStencil:{v492, v490, v380, v442}];
                      }

                      pixelHistoryPixelPreviousDepth = v503->_pixelHistoryPixelPreviousDepth;
                      v503->_pixelHistoryPixelPreviousDepth = v434;
                    }

                    [v380 commit];
                    [v380 waitUntilCompleted];
                  }

                  objc = v380;

                  [v468 setLastInterestingFunctionIndex:*(&v503->super.super.super.super.isa + v447)];
                  v436 = [v463 objectForKeyedSubscript:*MEMORY[0x277D0B3A8]];
                  v437 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(&v503->super.super.super.super.isa + v447)];
                  [v436 setObject:v458 forKeyedSubscript:v437];

                  if (v445)
                  {
                    v438 = [v458 objectForKeyedSubscript:v377];
                    v439 = [v438 longLongValue];

                    if (v439 >= 1)
                    {
                      v440 = [(DYMTLCommonDebugFunctionPlayer *)v503 generatePerPrimitiveHistory:v439 commandQueue:v453 currentEncoderId:__p originalEncoder:v455 originalPipeline:v451 atX:v492 y:v490];
                      [v458 setObject:v440 forKeyedSubscript:*MEMORY[0x277D0B408]];
                    }
                  }

                  v352 = v484;
                  v464 = objc;
                  v329 = v452;
                  v364 = v449;
                  goto LABEL_578;
                }

                if ([v393 isDepthWriteEnabled])
                {
                  v394 = [MEMORY[0x277CCABB0] numberWithLongLong:v389];
                  [v458 setObject:v394 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                }

                else
                {
                  [v458 setObject:&unk_2860BA1B0 forKeyedSubscript:*MEMORY[0x277D0B3B0]];
                }

                v396 = *MEMORY[0x277D0B440];
                if ((v383 | v385) < 0)
                {
                  v397 = v396;
                }

                else
                {
                  v397 = v385 < v383;
                }

                if ((v385 | v387) < 0)
                {
                  v398 = v396;
                }

                else
                {
                  v398 = v387 < v385;
                }

                if (v389 < 0)
                {
                  if (v389 == *MEMORY[0x277D0B438])
                  {
                    v389 = 1;
                  }

                  else if (v389 == v396)
                  {
                    v389 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v389 = 0;
                  }
                }

                v414 = [v393 frontFaceStencil];
                if ([v414 stencilFailureOperation])
                {
                }

                else
                {
                  v415 = [v393 backFaceStencil];
                  v416 = [v415 stencilFailureOperation] == 0;

                  if (v416)
                  {
                    v397 = 0;
                  }
                }

                v417 = [v393 frontFaceStencil];
                if ([v417 depthFailureOperation])
                {
                }

                else
                {
                  v418 = [v393 backFaceStencil];
                  v419 = [v418 depthFailureOperation] == 0;

                  if (v419)
                  {
                    goto LABEL_552;
                  }
                }

                if (v397)
                {
                  if (v398 > 0 && v397 < 0)
                  {
                    v397 = 1;
                  }

                  else
                  {
                    v397 = v397;
                  }
                }

                else
                {
                  v397 = v398;
                }

LABEL_552:
                v421 = [v393 frontFaceStencil];
                if ([v421 depthStencilPassOperation])
                {
                }

                else
                {
                  v422 = [v393 backFaceStencil];
                  v423 = [v422 depthStencilPassOperation] == 0;

                  if (v423)
                  {
LABEL_563:
                    v425 = [MEMORY[0x277CCABB0] numberWithInt:v397];
                    [v458 setObject:v425 forKeyedSubscript:*MEMORY[0x277D0B410]];

                    goto LABEL_564;
                  }
                }

                if (v397)
                {
                  if (v389 > 0 && v397 < 0)
                  {
                    v397 = 1;
                  }

                  else
                  {
                    v397 = v397;
                  }
                }

                else
                {
                  v397 = v389;
                }

                goto LABEL_563;
              }
            }
          }

          goto LABEL_248;
        }
      }
    }

    v490 = 0;
    v492 = 0;
    v495 = 0;
    v469 = 0;
    v473 = 0;
    v101 = 0;
    v86 = __p;
    goto LABEL_156;
  }

  if (v3 > 3)
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        goto LABEL_44;
      }

      if ([(DYFunctionPlayer *)self mainExecutionMode])
      {
        v14 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v14 == [v502 targetFunctionIndex] - 1)
        {
          v15 = *MEMORY[0x277D0AFA0];
          if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v15)) & 1) != 0 || GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v15)))
          {
            __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v15) + 48, 0);
            v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
            v17 = v16;
            if (v16)
            {
              v18 = v16[4];
              v553.i64[0] = 0;
              v19 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              if (!v19 || (v553.i64[0] = v19[3], (v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553)) != 0))
              {
                v565 = 0;
                if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v15)))
                {
                  v533 = 0;
                  v20 = -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v533, &v565);
                  v21 = v533;
                  if (v20)
                  {
                    v18 = v20;
                  }
                }

                else
                {
                  v21 = 0;
                }

                [(DYMTLPostVertexDump *)v503->_postVertexDump createAndSetPostVertexDumpPipelineState:v17[3] commandEncoderId:__p pipelineId:v18];
                if (v21)
                {
                  v222 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
                  v223 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                  [v222 executeIndirectRenderCommand:v223 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v21}];
                }

                else
                {
                  v532.receiver = v503;
                  v532.super_class = DYMTLCommonDebugFunctionPlayer;
                  [(DYMTLFunctionPlayer *)&v532 executeGraphicsFunction];
                }

                v503->_targetFunctionNeedsSeparatedPostVertexDump = 0;
              }
            }

            goto LABEL_324;
          }
        }
      }

      goto LABEL_88;
    }

    if (!-[DYFunctionPlayer mainExecutionMode](self, "mainExecutionMode") || (v44 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]), v44 != [v502 targetFunctionIndex] - 1) || (v45 = *MEMORY[0x277D0AFA0], (GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v45)) & 1) == 0) && (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v45)) & 1) == 0 && !GPUTools::MTL::IsFuncEnumTileCall(**(&v503->super.super.super.super.isa + v45)))
    {
      if ([(DYFunctionPlayer *)v503 mainExecutionMode])
      {
        v60 = *(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v60 == [v502 targetFunctionIndex] - 1)
        {
          v61 = *MEMORY[0x277D0AFA0];
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&v503->super.super.super.super.isa + v61)))
          {
            v62 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v61) + 48, 0);
            __p = 0;
            v534 = 0;
            -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v534, &__p);
            v63 = v534;
            v64 = [(DYMTLFunctionPlayer *)v503 objectForKey:v62];
            v65 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
            [v65 executeIndirectComputeCommand:v64 withData:__p atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v63}];

            [(DYMTLCommonDebugFunctionPlayer *)v503 extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)v503 extractCommandBufferTranslationData];

            goto LABEL_324;
          }
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)v503 _executeGraphicsFunction];
      if ([(DYFunctionPlayer *)v503 mainExecutionMode])
      {
        v74 = *(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v74 == [v502 targetFunctionIndex] - 1)
        {
          if (GPUTools::MTL::IsFuncEnumComputeCall(**(&v503->super.super.super.super.isa + *MEMORY[0x277D0AFA0])))
          {
            [(DYMTLCommonDebugFunctionPlayer *)v503 extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)v503 extractCommandBufferTranslationData];
          }
        }
      }

      v13 = [(DYMTLCommonDebugFunctionPlayer *)v503 shouldExecuteGraphicsFunction];
      goto LABEL_125;
    }

    __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v45) + 48, 0);
    v46 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
    v47 = v46;
    if (v46)
    {
      v48 = v46[4];
      v553.i64[0] = 0;
      v49 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
      if (!v49 || (v553.i64[0] = v49[3], (v47 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553)) != 0))
      {
        v565 = 0;
        if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v45)))
        {
          v547 = 0;
          v50 = -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v547, &v565);
          v498 = v547;
          if (v50)
          {
            v48 = v50;
          }
        }

        else
        {
          v498 = 0;
        }

        v214 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v47 + 5);
        v215 = v214;
        if (v214)
        {
          v216 = v214 + 3;
        }

        else
        {
          v216 = 0;
        }

        if (v503->_wireframeRenderMode == 2)
        {
          v217 = 2;
        }

        else
        {
          v217 = [(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer prepareWireframeTextureWithCommandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:v553.i64[0] pipelineId:v48 renderPassDescriptor:v216];
          v503->_wireframeRenderMode = v217;
        }

        if (v215)
        {
          v218 = (v215[185] + 1) > 1 || (v215[186] - 1) < 0xFFFFFFFFFFFFFFFELL;
        }

        else
        {
          v218 = 0;
        }

        if (v217 <= 1)
        {
          if (!v217)
          {
            if (v498)
            {
              v268 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
              v269 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
              [v268 executeIndirectRenderCommand:v269 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

              v270 = v503;
            }

            else
            {
              v270 = v503;
              v546.receiver = v503;
              v546.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v546 executeGraphicsFunction];
            }

            [(DYMTLCommonDebugFunctionPlayer *)v270 extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)v270 extractCommandBufferTranslationData];
            if (v218)
            {
              [(DYMTLCommonDebugFunctionPlayer *)v270 _extractTileMemoryWithRenderPassDescriptor:v216 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&v270->super.super.super.super.isa + v45))];
            }

            if ([(DYMTLPostVertexDump *)v270->_postVertexDump createAndSetPostVertexDumpPipelineState:v47[3] commandEncoderId:__p pipelineId:v48])
            {
              if (v498)
              {
                v337 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
                v338 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                [v337 executeIndirectRenderCommand:v338 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

                v270 = v503;
              }

              else
              {
                v270 = v503;
                v545.receiver = v503;
                v545.super_class = DYMTLCommonDebugFunctionPlayer;
                [(DYMTLFunctionPlayer *)&v545 executeGraphicsFunction];
              }
            }

            if ([(DYMTLDebugWireframeRenderer *)v270->_wireframeRenderer createWireframeRenderCommandEncoder:v216])
            {
              if (v498)
              {
                v354 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
                v355 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                [v354 executeIndirectRenderCommand:v355 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

                v270 = v503;
              }

              else
              {
                v270 = v503;
                v544.receiver = v503;
                v544.super_class = DYMTLCommonDebugFunctionPlayer;
                [(DYMTLFunctionPlayer *)&v544 executeGraphicsFunction];
              }

              if (v553.i64[0])
              {
                *(v47 + 48) = 1;
                std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v270->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
                v270->_lastEncoderID = 0;
                v553.i64[0] = 0;
              }

              if ([(DYMTLDebugWireframeRenderer *)v270->_wireframeRenderer createSolidRenderCommandEncoder:v216 commandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:0])
              {
                if (v498)
                {
                  v356 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
                  v357 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                  [v356 executeIndirectRenderCommand:v357 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

                  v270 = v503;
                }

                else
                {
                  v270 = v503;
                  v543.receiver = v503;
                  v543.super_class = DYMTLCommonDebugFunctionPlayer;
                  [(DYMTLFunctionPlayer *)&v543 executeGraphicsFunction];
                }

                [(DYMTLDebugWireframeRenderer *)v270->_wireframeRenderer createOutlineTexture];
              }
            }

            v402 = [(DYMTLDebugWireframeRenderer *)v270->_wireframeRenderer wireframeTexture];
            [(DYMTLFunctionPlayer *)v270 setObject:v402 forKey:*MEMORY[0x277D25740]];

            v403 = [(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer outlineTexture];
            [(DYMTLFunctionPlayer *)v503 setObject:v403 forKey:*MEMORY[0x277D25730]];

            v340 = [(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer solidTexture];
            [(DYMTLFunctionPlayer *)v503 setObject:v340 forKey:*MEMORY[0x277D25738]];
            goto LABEL_518;
          }

          if (v217 == 1)
          {
            if (v553.i64[0])
            {
              *(v47 + 48) = 1;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              v503->_lastEncoderID = 0;
            }

            if (v498)
            {
              v258 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
              v259 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
              [v258 executeIndirectRenderCommand:v259 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

              v260 = v503;
            }

            else
            {
              v260 = v503;
              v542.receiver = v503;
              v542.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v542 executeGraphicsFunction];
            }

            if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v260->super.super.super.super.isa + v45)))
            {
              v339 = 1;
            }

            else
            {
              v339 = GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v45));
            }

            v503->_targetFunctionNeedsSeparatedPostVertexDump = v339;
            v340 = [(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer wireframeTexture];
            [(DYMTLFunctionPlayer *)v503 setObject:v340 forKey:*MEMORY[0x277D25740]];
LABEL_518:
          }

LABEL_519:

          goto LABEL_324;
        }

        if (v217 == 2)
        {
          p_isa = &v503->super.super.super.super.isa;
          if ([(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer createSolidRenderCommandEncoder:v216 commandBufferId:v47[3] commandEncoderId:__p parallelEncoderId:v553.i64[0]])
          {
            if (v553.i64[0])
            {
              *(v47 + 48) = 1;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
              v503->_lastEncoderID = 0;
            }

            if (v498)
            {
              v272 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
              v273 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
              [v272 executeIndirectRenderCommand:v273 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];

              p_isa = &v503->super.super.super.super.isa;
            }

            else
            {
              p_isa = &v503->super.super.super.super.isa;
              v541.receiver = v503;
              v541.super_class = DYMTLCommonDebugFunctionPlayer;
              [(DYMTLFunctionPlayer *)&v541 executeGraphicsFunction];
            }

            [p_isa[256] createOutlineTexture];
          }

          v353 = [p_isa[256] outlineTexture];
          [p_isa setObject:v353 forKey:*MEMORY[0x277D25730]];

          v340 = [(DYMTLDebugWireframeRenderer *)v503->_wireframeRenderer solidTexture];
          [(DYMTLFunctionPlayer *)v503 setObject:v340 forKey:*MEMORY[0x277D25738]];
          goto LABEL_518;
        }

        if (v217 != 3)
        {
          goto LABEL_519;
        }

        if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v45)))
        {
          v497 = [(DYMTLFunctionPlayer *)v503 objectForKey:v48];
          v261 = DYMTLGetAssociatedObject(v497, 2u);
          v494 = v261;
          if (v261)
          {
            v539 = 0u;
            v540 = 0u;
            v537 = 0u;
            v538 = 0u;
            v262 = [v261 vertexBindings];
            v263 = [v262 countByEnumeratingWithState:&v537 objects:v574 count:16];
            if (v263)
            {
              v264 = *v538;
              while (2)
              {
                for (kk = 0; kk != v263; ++kk)
                {
                  if (*v538 != v264)
                  {
                    objc_enumerationMutation(v262);
                  }

                  v266 = *(*(&v537 + 1) + 8 * kk);
                  if ([v266 access] == 1 && (objc_msgSend(v266, "type") | 2) == 2)
                  {
                    v267 = 1;
                    goto LABEL_443;
                  }
                }

                v263 = [v262 countByEnumeratingWithState:&v537 objects:v574 count:16];
                if (v263)
                {
                  continue;
                }

                break;
              }
            }

            v267 = 0;
LABEL_443:
          }

          else
          {
            v267 = 0;
          }

          v503->_targetFunctionNeedsSeparatedPostVertexDump = 0;
          if ([(DYMTLPostVertexDump *)v503->_postVertexDump createAndSetPostVertexDumpPipelineState:v47[3] commandEncoderId:__p pipelineId:v48])
          {
            v536.receiver = v503;
            v536.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v536 executeGraphicsFunction];
            if (v267)
            {
              v503->_targetFunctionNeedsSeparatedPostVertexDump = 1;

LABEL_513:
              [(DYMTLFunctionPlayer *)v503 setObject:0 forKey:*MEMORY[0x277D25740]];
              [(DYMTLFunctionPlayer *)v503 setObject:0 forKey:*MEMORY[0x277D25730]];
              [(DYMTLFunctionPlayer *)v503 setObject:0 forKey:*MEMORY[0x277D25738]];
              goto LABEL_519;
            }

            v399 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
            [v399 setRenderPipelineState:v497];
          }
        }

        if (v498)
        {
          v400 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
          v401 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
          [v400 executeIndirectRenderCommand:v401 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v498}];
        }

        else
        {
          v535.receiver = v503;
          v535.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v535 executeGraphicsFunction];
        }

        [(DYMTLCommonDebugFunctionPlayer *)v503 extractIndirectArgumentBuffers];
        [(DYMTLCommonDebugFunctionPlayer *)v503 extractCommandBufferTranslationData];
        if (v218)
        {
          [(DYMTLCommonDebugFunctionPlayer *)v503 _extractTileMemoryWithRenderPassDescriptor:v216 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v45))];
        }

        goto LABEL_513;
      }
    }

LABEL_324:
    v251 = *MEMORY[0x277D0AFA0];
    if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v251)) & 1) != 0 || (GPUTools::MTL::IsFuncEnumComputeCall(**(&v503->super.super.super.super.isa + v251)) & 1) != 0 || GPUTools::MTL::IsFuncEnumTileCall(**(&v503->super.super.super.super.isa + v251)))
    {
      [v502 setExecutedDrawCallCount:{objc_msgSend(v502, "executedDrawCallCount") + 1}];
    }

    goto LABEL_328;
  }

  if ((v3 - 1) >= 3)
  {
    if (!v3)
    {
      if (self->_wireframeRenderMode == 1 || self->_targetFunctionNeedsSeparatedPostVertexDump)
      {
        if ([(DYFunctionPlayer *)self mainExecutionMode])
        {
          v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
          v31 = v4 == [v502 targetFunctionIndex] - 1;
          self = v503;
          if (v31)
          {
            v5 = *MEMORY[0x277D0AFA0];
            self = v503;
            if (GPUTools::MTL::IsFuncEnumDrawCall(**(&v503->super.super.super.super.isa + v5)) & 1) != 0 || (self = v503, (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v5))) || (self = v503, GPUTools::MTL::IsFuncEnumTileCall(**(&v503->super.super.super.super.isa + v5))))
            {
              __p = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v5) + 48, 0);
              v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &__p);
              if (v6)
              {
                v553.i64[0] = 0;
                v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &__p);
                if (!v7 || (v553.i64[0] = v7[3], (v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v553)) != 0))
                {
                  v9 = v6[5];
                  v8 = v6 + 5;
                  if (v503->_targetCommandEncoderId != v9)
                  {
                    [sMemorylessTexturesAndReplacements removeAllObjects];
                  }

                  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v8);
                  if (v10)
                  {
                    v11 = v10 + 3;
                    v12 = (v10[185] + 1) > 1 || (v10[186] - 1) < 0xFFFFFFFFFFFFFFFELL;
                  }

                  else
                  {
                    v11 = 0;
                    v12 = 0;
                  }

                  v565 = 0;
                  if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&v503->super.super.super.super.isa + v5)))
                  {
                    v531 = 0;
                    -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v531, &v565);
                    v332 = v531;
                    v333 = [(DYMTLFunctionPlayer *)v503 objectForKey:__p];
                    v334 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
                    [v334 executeIndirectRenderCommand:v333 withData:v565 atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v332}];

                    v335 = v503;
                  }

                  else
                  {
                    v335 = v503;
                    v530.receiver = v503;
                    v530.super_class = DYMTLCommonDebugFunctionPlayer;
                    v332 = 0;
                    [(DYMTLFunctionPlayer *)&v530 executeGraphicsFunction];
                  }

                  [(DYMTLCommonDebugFunctionPlayer *)v335 extractIndirectArgumentBuffers];
                  [(DYMTLCommonDebugFunctionPlayer *)v335 extractCommandBufferTranslationData];
                  if (v12)
                  {
                    [(DYMTLCommonDebugFunctionPlayer *)v335 _extractTileMemoryWithRenderPassDescriptor:v11 renderEncoderID:__p isDrawCall:GPUTools::MTL::IsFuncEnumDrawCall(**(&v335->super.super.super.super.isa + v5))];
                  }

                  v335->_targetFunctionNeedsSeparatedPostVertexDump = 0;
                }
              }

              goto LABEL_324;
            }
          }
        }
      }

      if ([(DYFunctionPlayer *)self mainExecutionMode])
      {
        v54 = *(&v503->super.super.super.super.isa + *MEMORY[0x277D0AF80]);
        if (v54 == [v502 targetFunctionIndex] - 1)
        {
          v55 = *MEMORY[0x277D0AFA0];
          if (GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&v503->super.super.super.super.isa + v55)))
          {
            v56 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v55) + 48, 0);
            __p = 0;
            v529 = 0;
            -[DYMTLCommonDebugFunctionPlayer _executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:](v503, "_executeIndirectCommandBufferUpToSubIndex:outBuffer:outDataPointer:", [v502 targetSubCommandIndex], &v529, &__p);
            v57 = v529;
            v58 = [(DYMTLFunctionPlayer *)v503 objectForKey:v56];
            v59 = [(DYMTLFunctionPlayer *)v503 indirectCommandManager];
            [v59 executeIndirectComputeCommand:v58 withData:__p atIndex:objc_msgSend(v502 forIndirectCommandBuffer:{"targetSubCommandIndex"), v57}];

            [(DYMTLCommonDebugFunctionPlayer *)v503 extractIndirectArgumentBuffers];
            [(DYMTLCommonDebugFunctionPlayer *)v503 extractCommandBufferTranslationData];

            goto LABEL_324;
          }
        }
      }

      [(DYMTLCommonDebugFunctionPlayer *)v503 _executeGraphicsFunction];
      if (![(DYMTLCommonDebugFunctionPlayer *)v503 shouldExecuteGraphicsFunction])
      {
        goto LABEL_324;
      }

LABEL_119:
      [(DYMTLCommonDebugFunctionPlayer *)v503 _trackObjects];
      goto LABEL_324;
    }

LABEL_74:
    [(DYMTLCommonDebugFunctionPlayer *)self _executeGraphicsFunction];
    if (![(DYMTLCommonDebugFunctionPlayer *)self shouldExecuteGraphicsFunction])
    {
      goto LABEL_324;
    }

    goto LABEL_119;
  }

LABEL_44:
  if ([v502 playbackMode] == 5 || objc_msgSend(v502, "playbackMode") == 11 || objc_msgSend(v502, "playbackMode") == 12) && (GPUTools::MTL::IsFuncEnumSampleCall(**(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0])))
  {
    goto LABEL_324;
  }

  if (!self->_isAGXDevice || [v502 playbackMode] != 5 && objc_msgSend(v502, "playbackMode") != 2 && objc_msgSend(v502, "playbackMode") != 5 && objc_msgSend(v502, "playbackMode") != 12)
  {
LABEL_57:
    v29 = *MEMORY[0x277D0AFA0];
    v30 = **(&v503->super.super.super.super.isa + v29);
    if ((v30 + 7158) < 3)
    {
      v32 = [(DYMTLCommonFunctionPlayer *)v503 layerManager];
      v33 = [(DYMTLCommonDebugFunctionPlayer *)v503 replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v29) + 48, 0)];
      [v32 prepareLayerForPresent:v33];
    }

    else
    {
      v31 = (v30 + 16359) < 2 || v30 == -16133;
      if (!v31)
      {
        if (v503->_isAGXDevice)
        {
          if ([v502 playbackMode] == 12)
          {
            v95 = *(&v503->super.super.super.super.isa + v29);
            v96 = *(v95 + 16);
            v97 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, (v95 + 16));
            if (v97)
            {
              v96 = v97[3];
            }

            v98 = [(DYMTLFunctionPlayer *)v503 objectForKey:v96];
            v99 = DYMTLGetOriginalObject(v98);

            v555.receiver = v503;
            v555.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v555 executeGraphicsFunction];
            v100 = GPUTools::MTL::IsFuncEnumGPUCommandCall(**(&v503->super.super.super.super.isa + v29));
            if ((v100 & 1) != 0 || GPUTools::MTL::IsFuncEnumEndEncoding(**(&v503->super.super.super.super.isa + v29)))
            {
              [(DYMTLCommonDebugFunctionPlayer *)v503 _createBatchIdFilterMapping:v100 withCommandEncoder:v99];
            }

LABEL_494:

            goto LABEL_495;
          }

          if ([v502 playbackMode] == 5 && v503->_batchInfos)
          {
            v180 = [(DYMTLFunctionPlayer *)v503 objectForKey:(*(&v503->super.super.super.super.isa + v29))[2]];
            v99 = v180;
            currentEncoderBatchIndex = v503->_currentEncoderBatchIndex;
            if (currentEncoderBatchIndex == -1 || (v503->_currentEncoderBatchIndex = currentEncoderBatchIndex - 1, currentEncoderBatchIndex))
            {
              v182 = 0;
            }

            else
            {
              if (v180)
              {
                [v180 viewports];
                v182 = 1;
                goto LABEL_236;
              }

              v182 = 1;
            }

            v567 = 0;
            __p = 0;
            v568 = 0;
LABEL_236:
            v183 = [v99 renderPipelineState];
            if (v182)
            {
              v184 = [(DYMTLCommonDebugFunctionPlayer *)v503 _generateDummyPipeline:v183];
              if (v184)
              {
                [v99 setRenderPipelineState:v184];
                if (GPUTools::MTL::IsFuncEnumTileCall(**(&v503->super.super.super.super.isa + v29)))
                {
                  v553 = vdupq_n_s64(1uLL);
                  v554 = 1;
                  [v99 dispatchThreadsPerTile:&v553];
                }

                else
                {
                  [v99 drawPrimitives:3 vertexStart:0 vertexCount:0 instanceCount:1];
                }

                [v99 setRenderPipelineState:v183];
              }
            }

            else
            {
              v184 = 0;
            }

            v552.receiver = v503;
            v552.super_class = DYMTLCommonDebugFunctionPlayer;
            [(DYMTLFunctionPlayer *)&v552 executeGraphicsFunction];
            if (v184)
            {
              v395 = v182;
            }

            else
            {
              v395 = 0;
            }

            if (v395 == 1)
            {
              [v99 setRenderPipelineState:v184];
              if (GPUTools::MTL::IsFuncEnumTileCall(**(&v503->super.super.super.super.isa + v29)))
              {
                v553 = vdupq_n_s64(1uLL);
                v554 = 1;
                [v99 dispatchThreadsPerTile:&v553];
              }

              else
              {
                [v99 drawPrimitives:3 vertexStart:0 vertexCount:0 instanceCount:1];
              }

              [v99 setRenderPipelineState:v183];
            }

            if (__p)
            {
              v567 = __p;
              operator delete(__p);
            }

            goto LABEL_494;
          }

          v551.receiver = v503;
          v551.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v551 executeGraphicsFunction];
          if (GPUTools::MTL::IsFuncEnumCreateCommandBuffer(**(&v503->super.super.super.super.isa + v29)))
          {
            v213 = [(DYMTLFunctionPlayer *)v503 objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v29) + 24, 0)];
            v99 = DYMTLGetOriginalObject(v213);

            if (v99 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v99 setDisableDeferredEndEncoding:1];
            }

            goto LABEL_494;
          }
        }

        else
        {
          v550.receiver = v503;
          v550.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v550 executeGraphicsFunction];
        }

LABEL_495:
        [(DYMTLCommonDebugFunctionPlayer *)v503 _trackObjects];
LABEL_91:
        if (v503->_isAGXDevice)
        {
          if ([v502 playbackMode] == 3)
          {
            v51 = *(&v503->super.super.super.super.isa + v29);
            v52 = *v51;
            if ((*v51 + 16343) < 2 || v52 == -12544 || v52 == -15701)
            {
              v53 = [(DYMTLFunctionPlayer *)v503 objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v51 + 6), 0)];
              if (v53)
              {
                v548[0] = MEMORY[0x277D85DD0];
                v548[1] = 3221225472;
                v548[2] = __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_3;
                v548[3] = &unk_27930F708;
                v549 = v502;
                [v53 addCompletedHandler:v548];
              }
            }
          }

          else if ([v502 playbackMode] == 5 && v503->_batchInfos || objc_msgSend(v502, "playbackMode") == 12)
          {
            [(DYMTLCommonDebugFunctionPlayer *)v503 _setupEncodersForBatchIdFiltering];
          }
        }

        goto LABEL_328;
      }

      v32 = [(DYMTLCommonFunctionPlayer *)v503 layerManager];
      v33 = [(DYMTLCommonDebugFunctionPlayer *)v503 replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v29) + 72, 0)];
      [v32 prepareLayerForPresent:v33];
    }

    goto LABEL_91;
  }

  v25 = [(DYMTLFunctionPlayer *)self objectMap];
  v26 = *MEMORY[0x277D0AFA0];
  v27 = *(&v503->super.super.super.super.isa + v26);
  v28 = *v27;
  if (*v27 == -16351)
  {
    if ([v502 playbackMode] == 2)
    {
      goto LABEL_328;
    }

    [(DYFunctionPlayer *)v503 processArguments];
    v90 = [(DYMTLFunctionPlayer *)v503 objectForKey:(*(&v503->super.super.super.super.isa + v26))[2]];
    v91 = GPUTools::MTL::MakeMTLRenderPassDescriptor(**(&v503->super.super.super._executePlatform + *MEMORY[0x277D0AF68]), [(DYMTLFunctionPlayer *)v503 objectMap]);
    v92 = DYMTLNewStatefulRenderCommandEncoder(v90, v91);
    v553.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v26) + 24, 0);
    __p = &v553;
    v93 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v25, &v553);
    v94 = v93[3];
    v93[3] = v92;
  }

  else if (v28 == -16286)
  {
    v87 = [(DYMTLFunctionPlayer *)v503 objectForKey:*(v27 + 2)];
    v553.i64[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&v503->super.super.super.super.isa + v26) + 24, 0);
    __p = &v553;
    v88 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v25, &v553);
    v89 = v88[3];
    v88[3] = v87;
  }

  else if (v28 != -16246 || !std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v503->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, v27 + 2))
  {
    goto LABEL_57;
  }

  if ([v502 playbackMode] == 5 && v503->_batchInfos || objc_msgSend(v502, "playbackMode") == 12)
  {
    [(DYMTLCommonDebugFunctionPlayer *)v503 _setupEncodersForBatchIdFiltering];
  }

  [(DYMTLCommonDebugFunctionPlayer *)v503 _trackObjects];
LABEL_328:

  objc_autoreleasePoolPop(v501);
  v252 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_2(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 4176) objectForKeyedSubscript:*(a1 + 40)];
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  v6 = *MEMORY[0x277D0B4C0];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D0B4C0]];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "pixelFormat")}];
  v8 = *MEMORY[0x277D0B228];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D0B228]];

  v9 = *MEMORY[0x277D0B4D0];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D0B4D0]];
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v17[0] = v6;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  v17[1] = v8;
  v18[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "pixelFormat")}];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v10 setObject:v13 forKeyedSubscript:*(a1 + 56)];

  [v4 setObject:v10 forKeyedSubscript:v9];
  [*(*(a1 + 32) + 4176) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  v14 = sThumbnailTextures;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  [v14 setObject:v3 forKey:v15];

  v16 = *MEMORY[0x277D85DE8];
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v7 GPUStartTime];
    v5 = v4;
    [v7 GPUEndTime];
    [v3 addCommandBufferDurationStart:v5 andEnd:v6];
  }
}

uint64_t __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v9 = *(a1 + 32);
    v10 = [DYMTLFunctionPlayer tileBytesKeyAtIndex:a4];

    return [v9 tileBytesForKey:v10];
  }

  else if (a2 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [DYMTLFunctionPlayer fragmentBytesKeyAtIndex:a4];

    return [v7 fragmentBytesForKey:v8];
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [DYMTLFunctionPlayer vertexBytesKeyAtIndex:a4];

    return [v4 vertexBytesForKey:v5];
  }
}

id __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_5(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DYMTLCommonDebugFunctionPlayer;
  return objc_msgSendSuper2(&v2, sel_executeGraphicsFunction);
}

void __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_6(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *MEMORY[0x277D0B428];
  }

  else
  {
    v5 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
    [v7 setObject:v5 forKeyedSubscript:v8];

    v9 = objc_opt_new();
    v6 = *MEMORY[0x277D0B428];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0B428]];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "pixelFormat")}];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0B228]];

    v11 = [*(a1 + 40) label];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0B418]];
  }

  v12 = [v5 objectForKeyedSubscript:v6];
  [v12 addObject:v17];
  v13 = [v12 indexOfObject:v17];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v15 = *(a1 + 48);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  [v15 setObject:v14 forKeyedSubscript:v16];
}

id __57__DYMTLCommonDebugFunctionPlayer_executeGraphicsFunction__block_invoke_7(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = DYMTLCommonDebugFunctionPlayer;
  return objc_msgSendSuper2(&v2, sel_executeGraphicsFunction);
}

- (id)collectPixelDrawStatsTotal:(id)a3 originalPipeline:(id)a4 atX:(unint64_t)a5 y:(unint64_t)a6 draw:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = objc_opt_new();
  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumTotalRenderCommandEncoderInCommandBuffer:v12 originalPipeline:v13])
  {
    v14[2](v14);
    pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __89__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStatsTotal_originalPipeline_atX_y_draw___block_invoke;
    v19[3] = &unk_27930F780;
    v20 = v15;
    [(DYMTLPixelHistoryDrawStatsSupport *)pixelHistoryDrawStatsRenderer collectPixelHistoryStencilDrawStatsAtX:a5 y:a6 completion:v19];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D0B3D8]];
  }

  return v15;
}

void __89__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStatsTotal_originalPipeline_atX_y_draw___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v4 = *MEMORY[0x277D0B3D8];
  v5 = v3;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)collectPixelDrawStats:(id)a3 originalEncoderId:(unint64_t)a4 originalEncoder:(id)a5 originalPipeline:(id)a6 atX:(unint64_t)a7 y:(unint64_t)a8 draw:(id)a9
{
  v68 = a3;
  v15 = a5;
  v65 = a6;
  v60 = v15;
  v61 = a9;
  v67 = objc_opt_new();
  v16 = [v15 descriptor];
  v17 = MEMORY[0x277D25728];
  v66 = v16;
  v18 = [(DYMTLFunctionPlayer *)self device];
  v59 = [v17 forDevice:v18];

  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumFragmentPassesRenderCommandEncoderInCommandBuffer:v68 originalRenderPassDescriptor:v66 originalPipeline:v65])
  {
    v19 = [(DYMTLFunctionPlayer *)self objectForKey:a4];
    v90[0] = 0;
    v90[1] = 0;
    v90[2] = [v19 width];
    v90[3] = [v19 height];
    [v19 setScissorRect:v90];
    v61[2]();
    pixelHistoryDrawStatsRenderer = self->_pixelHistoryDrawStatsRenderer;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke;
    v88[3] = &unk_27930F780;
    v89 = v67;
    [(DYMTLPixelHistoryDrawStatsSupport *)pixelHistoryDrawStatsRenderer collectPixelHistoryStencilDrawStatsAtX:a7 y:a8 completion:v88];
  }

  else
  {
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v67 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0B3E8]];
  }

  if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumFragmentPassesRenderCommandEncoderInCommandBuffer:v68 originalRenderPassDescriptor:v66 originalPipeline:v65])
  {
    v61[2]();
    v22 = self->_pixelHistoryDrawStatsRenderer;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_2;
    v86[3] = &unk_27930F780;
    v87 = v67;
    [(DYMTLPixelHistoryDrawStatsSupport *)v22 collectPixelHistoryStencilDrawStatsAtX:a7 y:a8 completion:v86];
    v23 = v87;
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    [v67 setObject:v23 forKeyedSubscript:*MEMORY[0x277D0B3F0]];
  }

  v24 = [v60 depthStencilState];
  v58 = v24;
  if (v24)
  {
    v63 = DYMTLGetAssociatedObject(v24, 0);
  }

  else
  {
    v63 = 0;
  }

  v64 = [v66 stencilAttachment];
  v62 = [v66 depthAttachment];
  v25 = [v64 texture];
  if (v25)
  {
    v26 = [v63 frontFaceStencil];
    if ([v26 stencilCompareFunction] == 7)
    {
      v27 = [v63 backFaceStencil];
      v28 = [v27 stencilCompareFunction] == 7;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  v29 = [v62 texture];
  if (v29)
  {
    v30 = [v63 depthCompareFunction] == 7;
  }

  else
  {
    v30 = 1;
  }

  v31 = [(DYMTLFunctionPlayer *)self device];
  if ([v31 supportsFamily:3002])
  {
  }

  else
  {
    v32 = [(DYMTLFunctionPlayer *)self device];
    v33 = [v32 supportsFamily:3003];

    if (!v33)
    {
      v34 = 1;
      if (v28)
      {
        goto LABEL_23;
      }

LABEL_28:
      if (v30)
      {
        v45 = MEMORY[0x277D25720];
        v46 = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockStencilTexture];
        [v45 pixelValueToTexture:v46 buffer:self->_pixelHistoryPixelPreviousStencil level:objc_msgSend(v64 slice:"level") depthPlane:objc_msgSend(v64 atX:"slice") y:objc_msgSend(v64 inCommandBuffer:{"depthPlane"), a7, a8, v68}];

        v47 = self->_pixelHistoryDrawStatsRenderer;
        v48 = [(DYMTLPixelHistoryDrawStatsSupport *)v47 mockStencilTexture];
        v49 = [(DYMTLPixelHistoryDrawStatsSupport *)v47 createNumVisibleRenderCommandEncoderInCommandBuffer:v68 originalRenderPassDescriptor:v66 originalPipeline:v65 depthStencilDescriptor:v63 mockStencilTexture:v48 visibilityResultMode:v34 atX:a7 y:a8];

        if (v49)
        {
          v61[2]();
          v50 = self->_pixelHistoryDrawStatsRenderer;
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_6;
          v76[3] = &unk_27930F7A8;
          v78 = v34;
          v77 = v67;
          [(DYMTLPixelHistoryDrawStatsSupport *)v50 collectPixelHistoryVisibilityDrawStatsAtCompletion:v76];
          v51 = v77;
        }

        else
        {
          v51 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
          [v67 setObject:v51 forKeyedSubscript:*MEMORY[0x277D0B400]];
        }

        v36 = v60;
        v37 = v66;
        v54 = v58;

        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_7;
        v74[3] = &unk_27930F708;
        v75 = v67;
        [v68 addCompletedHandler:v74];
        v35 = v75;
        goto LABEL_40;
      }

      v35 = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockStencilTexture];
      [MEMORY[0x277D25720] pixelValueToTexture:v35 buffer:self->_pixelHistoryPixelPreviousStencil level:objc_msgSend(v64 slice:"level") depthPlane:objc_msgSend(v64 atX:"slice") y:objc_msgSend(v64 inCommandBuffer:{"depthPlane"), a7, a8, v68}];
      if ([(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer createNumVisibleRenderCommandEncoderInCommandBuffer:v68 originalRenderPassDescriptor:v66 originalPipeline:v65 depthStencilDescriptor:v63 mockDepthStencilTexture:v35 visibilityResultMode:v34 atX:a7 y:a8])
      {
        v61[2]();
        v52 = self->_pixelHistoryDrawStatsRenderer;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_8;
        v71[3] = &unk_27930F7A8;
        v73 = v34;
        v72 = v67;
        [(DYMTLPixelHistoryDrawStatsSupport *)v52 collectPixelHistoryVisibilityDrawStatsAtCompletion:v71];
        v53 = v72;
      }

      else
      {
        v53 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
        [v67 setObject:v53 forKeyedSubscript:*MEMORY[0x277D0B3F8]];
      }

      v37 = v66;

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_9;
      v69[3] = &unk_27930F708;
      v70 = v67;
      [v68 addCompletedHandler:v69];

      v36 = v60;
      goto LABEL_35;
    }
  }

  v34 = 2;
  if (!v28)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (!v30)
  {
    v38 = MEMORY[0x277D25720];
    v39 = [(DYMTLPixelHistoryDrawStatsSupport *)self->_pixelHistoryDrawStatsRenderer mockDepthTexture];
    [v38 pixelValueToTexture:v39 buffer:self->_pixelHistoryPixelPreviousDepth level:objc_msgSend(v62 slice:"level") depthPlane:objc_msgSend(v62 atX:"slice") y:objc_msgSend(v62 inCommandBuffer:{"depthPlane"), a7, a8, v68}];

    v40 = self->_pixelHistoryDrawStatsRenderer;
    v41 = [(DYMTLPixelHistoryDrawStatsSupport *)v40 mockDepthTexture];
    v42 = [(DYMTLPixelHistoryDrawStatsSupport *)v40 createNumVisibleRenderCommandEncoderInCommandBuffer:v68 originalRenderPassDescriptor:v66 originalPipeline:v65 depthStencilDescriptor:v63 mockDepthTexture:v41 visibilityResultMode:v34 atX:a7 y:a8];

    if (v42)
    {
      v61[2]();
      v43 = self->_pixelHistoryDrawStatsRenderer;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_4;
      v81[3] = &unk_27930F7A8;
      v83 = v34;
      v82 = v67;
      [(DYMTLPixelHistoryDrawStatsSupport *)v43 collectPixelHistoryVisibilityDrawStatsAtCompletion:v81];
      v44 = v82;
    }

    else
    {
      v55 = *MEMORY[0x277D0B440];
      v56 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
      [v67 setObject:v56 forKeyedSubscript:*MEMORY[0x277D0B3E0]];

      v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v55];
      [v67 setObject:v44 forKeyedSubscript:*MEMORY[0x277D0B3F8]];
    }

    v36 = v60;
    v37 = v66;
    v54 = v58;

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_5;
    v79[3] = &unk_27930F708;
    v80 = v67;
    [v68 addCompletedHandler:v79];
    v35 = v80;
    goto LABEL_40;
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_3;
  v84[3] = &unk_27930F708;
  v85 = v67;
  [v68 addCompletedHandler:v84];
  v35 = v85;
  v36 = v60;
  v37 = v66;
LABEL_35:
  v54 = v58;
LABEL_40:

  return v67;
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v4 = *MEMORY[0x277D0B3E8];
  v5 = v3;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v4 = *MEMORY[0x277D0B3F0];
  v5 = v3;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  v3 = *MEMORY[0x277D0B400];
  v8 = v2;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = *MEMORY[0x277D0B3E0];
  v9 = v4;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v7 = *MEMORY[0x277D0B3F8];
  v10 = v6;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v10 = *MEMORY[0x277D0B3E0];
    v15 = v9;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v12 = *MEMORY[0x277D0B3F8];
    v14 = v11;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v4 = *MEMORY[0x277D0B438];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    v6 = *MEMORY[0x277D0B3E0];
    v13 = v5;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v4];
    v8 = *MEMORY[0x277D0B3F8];
    v14 = v7;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  v3 = *MEMORY[0x277D0B400];
  v4 = v2;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v6 = *MEMORY[0x277D0B400];
    v7 = v5;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    v4 = *MEMORY[0x277D0B400];
    v7 = v3;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_7(uint64_t a1)
{
  v2 = *MEMORY[0x277D0B400];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B400]];
  v4 = *MEMORY[0x277D0B3E0];
  v7 = v3;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v2];
  v6 = *MEMORY[0x277D0B3F8];
  v8 = v5;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_8(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 40) == 2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v6 = *MEMORY[0x277D0B3F8];
    v7 = v5;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B438]];
    v4 = *MEMORY[0x277D0B3F8];
    v7 = v3;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }
}

void __118__DYMTLCommonDebugFunctionPlayer_collectPixelDrawStats_originalEncoderId_originalEncoder_originalPipeline_atX_y_draw___block_invoke_9(uint64_t a1)
{
  v12 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F8]];
  v2 = *MEMORY[0x277D0B3F0];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D0B3F0]];
  v4 = [v12 isEqualToNumber:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v2];
    v6 = *MEMORY[0x277D0B400];
    v13 = v5;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    [*(a1 + 32) objectForKeyedSubscript:v2];
  }

  else
  {
    v9 = *MEMORY[0x277D0B440];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*MEMORY[0x277D0B440]];
    v11 = *MEMORY[0x277D0B400];
    v15 = v10;
    [*(a1 + 32) setObject:? forKeyedSubscript:?];

    [MEMORY[0x277CCABB0] numberWithLongLong:v9];
  }
  v7 = ;
  v8 = *MEMORY[0x277D0B3E0];
  v14 = v7;
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)generatePerPrimitiveHistory:(unint64_t)a3 commandQueue:(id)a4 currentEncoderId:(unint64_t)a5 originalEncoder:(id)a6 originalPipeline:(id)a7 atX:(unint64_t)a8 y:(unint64_t)a9
{
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  v19 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]);
  if (*v19 == -16250)
  {
    v20 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:**(v19 + 72) vertexStart:**(v19 + 96) vertexCount:**(v19 + 120) total:a3 commandQueue:v15 currentEncoderId:a5 originalEncoder:v16 originalPipeline:v17 atX:a8 y:a9];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 total:(unint64_t)a6 commandQueue:(id)a7 currentEncoderId:(unint64_t)a8 originalEncoder:(id)a9 originalPipeline:(id)a10 atX:(unint64_t)a11 y:(unint64_t)a12
{
  v18 = a9;
  v46[1] = *MEMORY[0x277D85DE8];
  v40 = a7;
  v39 = a9;
  v41 = a10;
  if (!a6)
  {
    v18 = objc_opt_new();
    goto LABEL_24;
  }

  if (a3 != 3)
  {
    goto LABEL_24;
  }

  if (a5 == 3)
  {
    v19 = MEMORY[0x277CBEB38];
    v46[0] = *MEMORY[0x277D0B3D8];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v38 = [v19 dictionaryWithObjects:&unk_2860BA1F8 forKeys:v20];

    v21 = MEMORY[0x277CBEAC0];
    v45 = v38;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v44 = v37;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v18 = [v21 dictionaryWithObjects:v36 forKeys:v22];
  }

  else
  {
    v18 = objc_opt_new();
    v38 = [v40 commandBuffer];
    v23 = (a5 / 6);
    v24 = 3 * v23;
    if (v23)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke;
      v43[3] = &unk_27930F7D0;
      v43[4] = self;
      v43[5] = a8;
      v43[6] = 3;
      v43[7] = a4;
      v43[8] = 3 * v23;
      v36 = [(DYMTLCommonDebugFunctionPlayer *)self collectPixelDrawStatsTotal:v38 originalPipeline:v41 atX:a11 y:a12 draw:v43];
    }

    else
    {
      v36 = 0;
    }

    v34 = a5 - v24;
    v35 = v24 + a4;
    if (a5 == v24)
    {
      v37 = 0;
      v25 = v38;
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke_2;
      v42[3] = &unk_27930F7D0;
      v42[4] = self;
      v42[5] = a8;
      v42[6] = 3;
      v42[7] = v24 + a4;
      v42[8] = a5 - v24;
      v25 = v38;
      v37 = [(DYMTLCommonDebugFunctionPlayer *)self collectPixelDrawStatsTotal:v38 originalPipeline:v41 atX:a11 y:a12 draw:v42];
    }

    [v25 commit];
    [v25 waitUntilCompleted];
    v26 = MEMORY[0x277D0B3D8];
    if (v36)
    {
      v27 = [v36 objectForKeyedSubscript:*MEMORY[0x277D0B3D8]];
      v28 = [v27 longLongValue];
    }

    else
    {
      v28 = 0;
    }

    if (v37)
    {
      v29 = [v37 objectForKeyedSubscript:*v26];
      v30 = [v29 longLongValue];
    }

    else
    {
      v30 = 0;
    }

    if (v28 >= 1)
    {
      v31 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:3 vertexStart:a4 vertexCount:v24 total:v28 commandQueue:v40 currentEncoderId:a8 originalEncoder:v39 originalPipeline:v41 atX:a11 y:a12];
      [v18 addEntriesFromDictionary:v31];
    }

    if (v30 < 1)
    {
      goto LABEL_23;
    }

    v22 = [(DYMTLCommonDebugFunctionPlayer *)self generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount:3 vertexStart:v35 vertexCount:v34 total:v30 commandQueue:v40 currentEncoderId:a8 originalEncoder:v39 originalPipeline:v41 atX:a11 y:a12];
    [v18 addEntriesFromDictionary:v22];
  }

LABEL_23:
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

void __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [v2 drawPrimitives:*(a1 + 48) vertexStart:*(a1 + 56) vertexCount:*(a1 + 64)];
}

void __200__DYMTLCommonDebugFunctionPlayer_generatePerPrimitiveHistory_drawPrimitives_vertexStart_vertexCount_vertexStart_vertexCount_total_commandQueue_currentEncoderId_originalEncoder_originalPipeline_atX_y___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  [v2 drawPrimitives:*(a1 + 48) vertexStart:*(a1 + 56) vertexCount:*(a1 + 64)];
}

- (void)extractIndirectArgumentBuffers
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = *MEMORY[0x277D0AFA0];
  if ((GPUTools::MTL::IsFuncEnumDrawCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumTileCall(**(&self->super.super.super.super.isa + v3)))
  {
    [(DYMTLCommonDebugFunctionPlayer *)self extractRenderIndirectArgumentBuffers:&v5];
  }

  else if ((GPUTools::MTL::IsFuncEnumComputeCall(**(&self->super.super.super.super.isa + v3)) & 1) != 0 || GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&self->super.super.super.super.isa + v3)))
  {
    [(DYMTLCommonDebugFunctionPlayer *)self extractComputeIndirectArgumentBuffers:&v5];
  }

  v4 = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
  [v4 notifyReplayerTargetIndirectArgumentBuffers:&v5];

  std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::destroy(&v5, v6[0]);
}

- (void)extractCommandBufferTranslationData
{
  v2 = [(DYMTLFunctionPlayer *)self indirectCommandManager];
  [v2 updateReplayerTranslationBuffer];
}

- (void)extractRenderIndirectArgumentBuffers:(void *)a3
{
  v55[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v52[0] = v55;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>([(DYMTLFunctionPlayer *)self objectMap], v55)[3];
  v6 = [v5 renderPipelineState];
  v7 = DYMTLGetAssociatedObject(v6, 2u);
  if (v7)
  {
    v30 = DYMTLGetNullableAssociatedObject(v6, 0);
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x4812000000;
    v52[3] = __Block_byref_object_copy__4;
    v52[4] = __Block_byref_object_dispose__4;
    v52[5] = "";
    v54[0] = 0;
    v54[1] = 0;
    v53 = v54;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke;
    v51[3] = &unk_27930F430;
    v51[4] = v52;
    [v5 enumerateVertexBuffersUsingBlock:v51];
    v8 = [v7 vertexBindings];
    v9 = [v8 firstObject];
    if (v9)
    {
      v10 = [v8 firstObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_21:
        goto LABEL_22;
      }

      v11 = [v8 firstObject];
      v12 = [v11 dataTypeDescription];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_22:

        _Block_object_dispose(v52, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v53, v54[0]);

        goto LABEL_23;
      }
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_2;
    v47[3] = &unk_27930F7F8;
    v49 = v52;
    v50 = a3;
    v14 = v30;
    v48 = v14;
    [v8 enumerateObjectsUsingBlock:v47];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x4812000000;
    v44[3] = __Block_byref_object_copy__4;
    v44[4] = __Block_byref_object_dispose__4;
    v44[5] = "";
    v46[0] = 0;
    v46[1] = 0;
    v45 = v46;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_3;
    v43[3] = &unk_27930F430;
    v43[4] = v44;
    [v5 enumerateFragmentBuffersUsingBlock:v43];
    v28 = a3;
    v29 = [v7 fragmentBindings];
    v15 = [v29 firstObject];
    if (v15)
    {
      v16 = [v29 firstObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_19:
        goto LABEL_20;
      }

      v17 = [v29 firstObject];
      v18 = [v17 dataTypeDescription];
      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0)
      {
LABEL_20:

        _Block_object_dispose(v44, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v45, v46[0]);
        v9 = v48;
        goto LABEL_21;
      }
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_4;
    v39[3] = &unk_27930F7F8;
    v41 = v44;
    v42 = v28;
    v40 = v14;
    [v29 enumerateObjectsUsingBlock:v39];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_18:
      v15 = v40;
      goto LABEL_19;
    }

    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x4812000000;
    v36[3] = __Block_byref_object_copy__4;
    v36[4] = __Block_byref_object_dispose__4;
    v36[5] = "";
    v38[0] = 0;
    v38[1] = 0;
    v37 = v38;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_5;
    v35[3] = &unk_27930F430;
    v35[4] = v36;
    [v5 enumerateTileBuffersUsingBlock:v35];
    v27 = DYMTLGetNullableAssociatedObject(v6, 1u);
    v20 = [v7 tileBindings];
    v21 = [v20 firstObject];
    if (!v21)
    {
      goto LABEL_12;
    }

    v22 = [v20 firstObject];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 firstObject];
      v24 = [v23 dataTypeDescription];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
LABEL_12:
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_6;
        v31[3] = &unk_27930F7F8;
        v33 = v36;
        v34 = v28;
        v26 = v27;
        v32 = v26;
        [v20 enumerateObjectsUsingBlock:v31];

LABEL_17:
        _Block_object_dispose(v36, 8);
        std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v37, v38[0]);
        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_23:
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7[0] = a3;
  v7[2] = v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v4 + 48, v7);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v23 = v16;
              v17 = *(a1 + 48);
              v20 = &v23;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v23);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              [*(a1 + 32) vertexFunction];
              v21 = v20 = v19;
              v22 = v3;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v20);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7[0] = a3;
  v7[2] = v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v4 + 48, v7);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v23 = v16;
              v17 = *(a1 + 48);
              v20 = &v23;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v23);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              [*(a1 + 32) fragmentFunction];
              v21 = v20 = v19;
              v22 = v3;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v20);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

id *__71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_5(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7[0] = a3;
  v7[2] = v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v4 + 48, v7);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __71__DYMTLCommonDebugFunctionPlayer_extractRenderIndirectArgumentBuffers___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v23 = v16;
              v17 = *(a1 + 48);
              v20 = &v23;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v23);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              [*(a1 + 32) tileFunction];
              v21 = v20 = v19;
              v22 = v3;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v20);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

- (void)extractComputeIndirectArgumentBuffers:(void *)a3
{
  v23 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 48, 0);
  v20[0] = &v23;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>([(DYMTLFunctionPlayer *)self objectMap], &v23)[3];
  v6 = [v5 computePipelineState];
  v13 = DYMTLGetAssociatedObject(v6, 2u);
  v14 = DYMTLGetAssociatedObject(v6, 0);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4812000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v20[5] = "";
  v22[0] = 0;
  v22[1] = 0;
  v21 = v22;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke;
  v19[3] = &unk_27930F430;
  v19[4] = v20;
  [v5 enumerateBuffersUsingBlock:v19];
  v7 = [v13 arguments];
  v8 = [v7 firstObject];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [v7 firstObject];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = [v7 firstObject];
  v11 = [v10 dataTypeDescription];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
LABEL_4:
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke_2;
    v15[3] = &unk_27930F7F8;
    v17 = v20;
    v18 = a3;
    v16 = v14;
    [v7 enumerateObjectsUsingBlock:v15];
    v8 = v16;
LABEL_6:
  }

  _Block_object_dispose(v20, 8);
  std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::destroy(&v21, v22[0]);
}

id *__72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v7[0] = a3;
  v7[2] = v7;
  v5 = std::__tree<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,DYMTLBoundBufferInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,DYMTLBoundBufferInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v4 + 48, v7);
  return DYMTLBoundBufferInfo::operator=(v5 + 5, a2);
}

void __72__DYMTLCommonDebugFunctionPlayer_extractComputeIndirectArgumentBuffers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 type] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 dataTypeDescription];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v3 dataTypeDescription];
      v6 = [v5 elementIsArgumentBuffer];

      if (v6)
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = [v3 index];
        v11 = *(v7 + 56);
        v10 = (v7 + 56);
        v9 = v11;
        if (!v11)
        {
          goto LABEL_13;
        }

        v12 = v10;
        do
        {
          v13 = v9[4];
          v14 = v13 >= v8;
          v15 = v13 < v8;
          if (v14)
          {
            v12 = v9;
          }

          v9 = v9[v15];
        }

        while (v9);
        if (v12 == v10 || v8 < v12[4])
        {
LABEL_13:
          v12 = v10;
        }

        if (v12 != (*(*(a1 + 40) + 8) + 56))
        {
          v16 = v12[5];
          if (v16)
          {
            if (!v12[6])
            {
              v23 = v16;
              v17 = *(a1 + 48);
              v20 = &v23;
              v18 = std::__tree<std::__value_type<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>,std::__map_value_compare<objc_object  {objcproto9MTLBuffer}*,std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>,std::less<objc_object  {objcproto9MTLBuffer}*>,true>,std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}><std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>>>::__emplace_unique_key_args<objc_object  {objcproto9MTLBuffer}*,std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto9MTLBuffer} const&>,std::tuple<>>(v17, &v23);
              if (v12[5] && !v12[6])
              {
                v19 = v12[7];
              }

              else
              {
                v19 = 0;
              }

              [*(a1 + 32) computeFunction];
              v21 = v20 = v19;
              v22 = v3;
              std::vector<std::tuple<unsigned long long,objc_object  {objcproto11MTLFunction}* {__strong},MTLArgument * {__strong}>>::push_back[abi:ne200100](v18 + 5, &v20);
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

void __104__DYMTLCommonDebugFunctionPlayer__extractTileMemoryWithRenderPassDescriptor_renderEncoderID_isDrawCall___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [*(*(a1 + 32) + 3952) harvestThreadgroupAtIndex:a3 size:*a2];
  if (v4)
  {
    std::vector<objc_object  {objcproto9MTLBuffer}* {__strong}>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v4);
  }
}

- (void)_superExecutePlatformFunction
{
  if ((**(&self->super.super.super.super.isa + *MEMORY[0x277D0AFA0]) + 7167) >= 2)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = DYMTLCommonDebugFunctionPlayer;
    [(DYMTLCommonFunctionPlayer *)&v4 executePlatformFunction];
  }
}

- (void)executePlatformFunction
{
  v3 = objc_autoreleasePoolPush();
  v4 = *MEMORY[0x277D0AFA0];
  if (**(&self->super.super.super.super.isa + v4) != -7161)
  {
    v5 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    v6 = [v5 playbackMode];
    v7 = v6 > 0xC || ((1 << v6) & 0x182E) == 0;
    if (v7 || (**(&self->super.super.super.super.isa + v4) + 7158) > 2)
    {
      [(DYMTLCommonDebugFunctionPlayer *)self _superExecutePlatformFunction];
    }

    else
    {
      v8 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      v9 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 48, 0)];
      [v8 prepareLayerForPresent:v9];
    }

    v10 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 48, 0);
    v11 = *(&self->super.super.super.super.isa + v4);
    if (*v11 == -7167)
    {
      v18 = v10;
      v19 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v11 + 6), 0);
      v24 = v19;
      v20 = [(DYMTLFunctionPlayer *)self objectForKey:v18];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 texture];
        DYMTLAddDrawableTextureDescriptor(v22);
        [(DYMTLFunctionPlayer *)self setObject:v22 forKey:v19];
        v25 = &v24;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_textureToDrawableMap.__table_.__bucket_list_.__ptr_, &v24)[3] = v18;
      }
    }

    else if (*v11 == -7166)
    {
      v12 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v11 + 12), 0);
      v24 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v4) + 24, 0);
      v13 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v24];
      v23 = v12;
      [(DYMTLCommonDebugFunctionPlayer *)self updateReplayerLayer:v24 withOriginalLayer:v12];
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v24);
      if (!v14 || *(v14 + 24) != 1 || ([(DYMTLFunctionPlayer *)self objectForKey:v24], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        do
        {
          v15 = [v13 nextDrawable];
          v25 = &v24;
          *(std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v24) + 24) = 1;
        }

        while (!v15);
      }

      [(DYMTLFunctionPlayer *)self setObject:v15 forKey:v24];
      v25 = &v24;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_drawableIdToLayerIdMap.__table_.__bucket_list_.__ptr_, &v24)[3] = v23;
      v25 = &v24;
      v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong}>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto15CAMetalDrawable}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto15CAMetalDrawable}* {__strong}>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->super._drawableMap.__table_.__bucket_list_.__ptr_, &v24);
      v17 = v16[3];
      v16[3] = v15;
    }

    if ([v5 playbackMode] <= 1)
    {
      [(DYMTLCommonDebugFunctionPlayer *)self _trackObjects];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)enableConsistentState:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = DYMTLCommonDebugFunctionPlayer;
  v4 = [(DYMTLFunctionPlayer *)&v7 commandQueue];
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v6 = [v4 getStatOptions] | 0x80000000;
    }

    else
    {
      v6 = [v4 getStatOptions] & 0x7FFFFFFF;
    }

    [v5 setStatOptions:v6];
  }
}

- (void)prepareForCaptureExecution
{
  v4.receiver = self;
  v4.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYFunctionPlayer *)&v4 prepareForCaptureExecution];
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_encoderMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_);
  self->_lastEncoderID = 0;
  self->_disableWireframe = 0;
  [(DYMTLCommonDebugFunctionPlayer *)self resetFunctionPlayerData];
  v3 = [(DYMTLCommonFunctionPlayer *)self layerManager];
  [v3 resetLayersVisibility];
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->super._drawableMap);
}

- (void)_endEncodingForAllRemainingEncoders:(void *)a3
{
  v3 = *(a3 + 2);
  if (v3)
  {
    v4 = self;
    v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
    while ((v3[6] & 1) != 0)
    {
LABEL_42:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    v37 = [(DYMTLFunctionPlayer *)v4 objectForKey:v3[2]];
    if ([v37 conformsToProtocol:v5[205]])
    {
      if ([objc_msgSend(v37 performSelector:{sel_parent), "conformsToProtocol:", &unk_2860CCE90}])
      {
        v6 = DYMTLGetAssociatedObject(v37, 0);
        for (i = 0; i != 8; ++i)
        {
          v8 = [v6 colorAttachments];
          v9 = [v8 objectAtIndexedSubscript:i];
          v10 = [v9 texture];
          if (v10)
          {
            v11 = [v6 colorAttachments];
            v12 = [v11 objectAtIndexedSubscript:i];
            v13 = [v12 storeAction];

            if (v13 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v37 setColorStoreAction:1 atIndex:i];
            }
          }

          else
          {
          }
        }

        [v6 depthAttachment];
        v4 = self;
        v14 = v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
        v15 = [v14 texture];
        if (v15)
        {
          v16 = [v6 depthAttachment];
          v17 = [v16 storeAction];

          if (v17 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setDepthStoreAction:1];
          }
        }

        else
        {
        }

        v29 = [v6 stencilAttachment];
        v33 = [v29 texture];
        if (v33)
        {
          v34 = [v6 stencilAttachment];
          v35 = [v34 storeAction];

          if (v35 != 4 || (objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_33;
        }

        goto LABEL_39;
      }
    }

    else if ([v37 conformsToProtocol:&unk_2860CCF90])
    {
      v6 = DYMTLGetAssociatedObject(v37, 0);
      for (j = 0; j != 8; ++j)
      {
        v19 = [v6 colorAttachments];
        v20 = [v19 objectAtIndexedSubscript:j];
        v21 = [v20 texture];
        if (v21)
        {
          v22 = [v6 colorAttachments];
          v23 = [v22 objectAtIndexedSubscript:j];
          v24 = [v23 storeAction];

          if (v24 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setColorStoreAction:1 atIndex:j];
          }
        }

        else
        {
        }
      }

      [v6 depthAttachment];
      v4 = self;
      v25 = v5 = &selRef_newRenderPipelineStateWithBinaryFunctions_error_;
      v26 = [v25 texture];
      if (v26)
      {
        v27 = [v6 depthAttachment];
        v28 = [v27 storeAction];

        if (v28 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v37 setDepthStoreAction:1];
        }
      }

      else
      {
      }

      v29 = [v6 stencilAttachment];
      v30 = [v29 texture];
      if (v30)
      {
        v31 = [v6 stencilAttachment];
        v32 = [v31 storeAction];

        if (v32 != 4 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_33:
        [v37 setStencilStoreAction:1];
LABEL_40:

        goto LABEL_41;
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_41:
    [v37 endEncoding];
    *(v3 + 48) = 1;

    goto LABEL_42;
  }
}

- (void)commitEncodersAndCommandBuffers
{
  [(DYMTLCommonDebugFunctionPlayer *)self _endEncodingForAllRemainingEncoders:&self->_encoderMap];
  [(DYMTLCommonDebugFunctionPlayer *)self _endEncodingForAllRemainingEncoders:&self->_parallelEncoderMap];
  currentParallelDescriptor = self->_currentParallelDescriptor;
  self->_currentParallelDescriptor = 0;

  self->_currentParallelId = 0;
  for (i = self->_commandBufferMap.__table_.__first_node_.__next_; i; i = *i)
  {
    if ((i[4] & 1) == 0)
    {
      v5 = [(DYMTLFunctionPlayer *)self objectForKey:i[2]];
      [v5 commit];
      *(i + 32) = 1;
    }
  }
}

- (void)waitForCommmandBuffersCompletion
{
  for (i = self->_commandQueueSet.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = [(DYMTLFunctionPlayer *)self objectForKey:i[2]];
    [v4 finish];
  }
}

- (id)_texture2DFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = objc_opt_new();
  [v14 setTextureType:2];
  [v14 setPixelFormat:objc_msgSend(v12, "pixelFormat")];
  v15 = [v12 width];
  if (v15 >> a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 >> a4;
  }

  [v14 setWidth:v16];
  v17 = [v12 height];
  if (v17 >> a4 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 >> a4;
  }

  [v14 setHeight:v18];
  if (!self->_isAGXDevice)
  {
    [v14 setResourceOptions:32];
  }

  if ([v12 isFramebufferOnly])
  {
    v19 = v12;
  }

  else
  {
    v20 = [(DYMTLFunctionPlayer *)self device];
    v19 = DYMTLNewTexture(v20, v14);

    if ([v12 textureType] == 4 || objc_msgSend(v12, "textureType") == 8)
    {
      v21 = [MEMORY[0x277CD6F48] renderPassDescriptor];
      v22 = [v21 colorAttachments];
      v23 = [v22 objectAtIndexedSubscript:0];

      [v23 setTexture:v12];
      [v23 setLevel:a4];
      [v23 setSlice:a5];
      [v23 setDepthPlane:a6];
      [v23 setResolveTexture:v19];
      [v23 setLoadAction:1];
      [v23 setStoreAction:2];
      v24 = DYMTLNewStatefulRenderCommandEncoder(v13, v21);
      [v24 endEncoding];
    }

    else
    {
      v21 = [v13 blitCommandEncoder];
      v28[0] = 0;
      v28[1] = 0;
      v28[2] = a6;
      v27[0] = [v19 width];
      v27[1] = [v19 height];
      v27[2] = 1;
      memset(v26, 0, sizeof(v26));
      [v21 copyFromTexture:v12 sourceSlice:a5 sourceLevel:a4 sourceOrigin:v28 sourceSize:v27 toTexture:v19 destinationSlice:0 destinationLevel:0 destinationOrigin:v26];
      [v21 endEncoding];
    }
  }

  return v19;
}

- (void)presentDrawable
{
  v73 = *MEMORY[0x277D85DE8];
  if (self->_lastEncoderID)
  {
    GPUTools::AutoCATransaction::AutoCATransaction(v72, 1, 1);
    v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &self->_lastEncoderID);
    if (!v3)
    {
      goto LABEL_45;
    }

    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, v3 + 5);
    if (v4)
    {
      v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, v4 + 3);
      if (!v3)
      {
        goto LABEL_45;
      }
    }

    if (!v3[5])
    {
      goto LABEL_45;
    }

    [(DYMTLCommonDebugFunctionPlayer *)self _attachmentInfoForCommandEncoderID:?];
    if (!v68)
    {
      goto LABEL_45;
    }

    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, v3 + 3);
    if (!v5)
    {
      goto LABEL_45;
    }

    v66 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_textureToDrawableMap.__table_.__bucket_list_.__ptr_, &v68);
    v67 = 0;
    if (v6)
    {
      v67 = v6[3];
      v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_drawableIdToLayerIdMap.__table_.__bucket_list_.__ptr_, &v67);
      v8 = v67;
      if (v7)
      {
        v9 = [(DYMTLFunctionPlayer *)self objectForKey:v67];
        v10 = [v9 texture];

        v11 = v7[3] == -1;
        v8 = v67;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    v11 = 1;
LABEL_13:
    v12 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v8];
    if (v11)
    {
      v13 = [(DYMTLFunctionPlayer *)self objectForKey:v68];

      if (!v13)
      {
        v10 = 0;
        v28 = 0;
        v27 = 0;
LABEL_44:

LABEL_45:
        GPUTools::AutoCATransaction::~AutoCATransaction(v72);
        goto LABEL_46;
      }

      v14 = [v13 width];
      if (v14 >> v69 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 >> v69;
      }

      v16 = [v13 height];
      if (v16 >> v69 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 >> v69;
      }

      v18 = objc_opt_class();
      v19 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [v19 boundsForCurrentInterfaceOrientation];
      [v18 shrinkSourceSize:v15 toDestSize:v17];
      v21 = v20;
      v23 = v22;

      [v12 setBounds:{0.0, 0.0, v21, v23}];
      [v12 setDrawableSize:{objc_msgSend(v13, "width"), objc_msgSend(v13, "height")}];
      v24 = [(DYMTLFunctionPlayer *)self device];
      [v12 setDevice:v24];

      [v12 setPixelFormat:80];
      v25 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [v25 defaultContentsScale];
      [v12 setContentsScale:?];

      v10 = v13;
    }

    context = objc_autoreleasePoolPush();
    do
    {
      v26 = [v12 nextDrawable];
      v27 = v26;
    }

    while (!v26);
    v28 = [v26 texture];
    if (v28 && v10)
    {
      v62 = [(DYMTLFunctionPlayer *)self objectForKey:v5[3]];
      v65 = [v62 commandBuffer];
      v63 = [MEMORY[0x277CD6F48] renderPassDescriptor];
      v29 = [v63 colorAttachments];
      v30 = [v29 objectAtIndexedSubscript:0];

      [v30 setTexture:v28];
      [v30 setLoadAction:2];
      [v30 setStoreAction:1];
      [v30 setClearColor:{0.0, 0.0, 0.0, 1.0}];
      if (!v67)
      {
        v31 = v10;
        v32 = v31;
        if (([v31 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
        {
          v33 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:objc_msgSend(v28 width:"pixelFormat") height:objc_msgSend(v28 mipmapped:"width"), objc_msgSend(v28, "height"), 0];
          v34 = [v62 device];
          v32 = DYMTLNewTexture(v34, v33);
        }

        if ([v32 storageMode] == 3)
        {
          v35 = sMemorylessTexturesAndReplacements;
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v32];
          v37 = [v35 objectForKeyedSubscript:v36];

          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v32;
          }

          v39 = v38;

          v32 = v39;
        }

        v40 = [(DYMTLCommonDebugFunctionPlayer *)self _texture2DFromTexture:v32 level:v69 slice:v70 depthPlane:v71 commandBuffer:v65];

        v10 = v40;
      }

      v41 = DYMTLNewStatefulRenderCommandEncoder(v65, v63);
      [(DYMTLTextureRenderer *)self->_textureRenderer renderTexture:v10 withEncoder:v41 enableBlending:0 layerIndex:0];
      if ([v66 enableWireframePresent])
      {
        if (!self->_disableWireframe)
        {
          v42 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer wireframeTexture];
          v43 = v42 == 0;

          if (!v43)
          {
            v61 = [v66 wireframeLineColor];
            v60 = [v66 wireframeLineColor];
            v44 = [v66 wireframeLineColor];
            v45 = [v66 wireframeLineColor];
            *&v46 = (v61 & 0xFF000000) / 4278200000.0;
            *&v47 = (v60 & 0xFF0000) / 16712000.0;
            *&v48 = (v44 & 0xFF00) / 65280.0;
            *&v49 = v45 / 255.0;
            [(DYMTLTextureRenderer *)self->_textureRenderer setBlendColorRed:v46 green:v47 blue:v48 alpha:v49];
            textureRenderer = self->_textureRenderer;
            v51 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer wireframeTexture];
            [(DYMTLTextureRenderer *)textureRenderer renderTexture:v51 withEncoder:v41 enableBlending:1 layerIndex:0];
          }
        }
      }

      if ([v66 enableOutlinePresent])
      {
        v52 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer outlineTexture];
        v53 = v52 == 0;

        if (!v53)
        {
          LODWORD(v54) = 1.0;
          LODWORD(v55) = 1.0;
          [(DYMTLTextureRenderer *)self->_textureRenderer setBlendColorRed:v54 green:0.0 blue:0.0 alpha:v55];
          v56 = self->_textureRenderer;
          v57 = [(DYMTLDebugWireframeRenderer *)self->_wireframeRenderer outlineTexture];
          [(DYMTLTextureRenderer *)v56 renderTexture:v57 withEncoder:v41 enableBlending:1 layerIndex:0];
        }
      }

      [v41 endEncoding];
      [v65 commit];
      [v65 waitUntilCompleted];
      v58 = [(DYMTLCommonFunctionPlayer *)self layerManager];
      [v58 prepareLayerForPresent:v12];
      [v27 present];
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_44;
  }

LABEL_46:
  v59 = *MEMORY[0x277D85DE8];
}

- (id)replayerLayerForDrawableId:(unint64_t)a3
{
  v20[0] = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, v20);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v6 = *MEMORY[0x277D0AF98];
    if ([*(&self->super.super.super.super.isa + v6) conformsToProtocol:&unk_2860CCFF0])
    {
      v7 = *(&self->super.super.super.super.isa + v6);
      v5 = [v7 createLayerWithID:v20[0] contentRect:0 contentsScale:0 properties:0.0 isCoreAnimationSurface:{0.0, 1.0, 1.0, 1.0}];
      if (v5)
      {
        v8 = v20[0] == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        [v7 boundsForCurrentInterfaceOrientation];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        [v7 defaultContentsScale];
        [v7 updateLayer:v5 contentRect:0 contentsScale:v10 properties:{v12, v14, v16, v17}];
        [v5 setFramebufferOnly:0];
        v20[2] = v20;
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, v20);
        objc_storeStrong(v18 + 3, v5);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)updateReplayerLayer:(unint64_t)a3 withOriginalLayer:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v5 = [(DYMTLCommonFunctionPlayer *)self layerForID:a4];
  *&v10[0] = &v19;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CAMetalLayer * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_metalLayers.__table_.__bucket_list_.__ptr_, &v19)[3];
  GPUTools::AutoCATransaction::AutoCATransaction(v20, 1, 1);
  [v5 bounds];
  [v6 setBounds:?];
  [v5 position];
  [v6 setPosition:?];
  [v5 anchorPoint];
  [v6 setAnchorPoint:?];
  [v5 anchorPointZ];
  [v6 setAnchorPointZ:?];
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
  }

  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  [v6 setTransform:v10];
  [v6 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
  v7 = [v5 device];
  if (v7)
  {
    [v5 device];
  }

  else
  {
    [(DYMTLFunctionPlayer *)self device];
  }
  v8 = ;
  [v6 setDevice:v8];

  [v5 contentsScale];
  [v6 setContentsScale:?];
  [v6 setFramebufferOnly:0];
  [v5 drawableSize];
  [v6 setDrawableSize:?];
  GPUTools::AutoCATransaction::~AutoCATransaction(v20);

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)thumbnailTexture:(unint64_t)a3
{
  v4 = sThumbnailTextures;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = sThumbnailTextures;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v7 removeObjectForKey:v8];

  return v6;
}

+ (id)harvestableTexture:(id)a3
{
  v3 = a3;
  v4 = sMemorylessTexturesAndReplacements;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = v3;
  if (v6)
  {
    v8 = sMemorylessTexturesAndReplacements;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v3];
    v7 = [v8 objectForKeyedSubscript:v9];
  }

  return v7;
}

- (void)encodeStoreActionForRenderCommandEncoder:(id)a3 withDescriptor:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 depthAttachment];
  v7 = [v6 storeAction];

  if (v7 == 4)
  {
    [v14 setDepthStoreAction:1];
  }

  v8 = [v5 stencilAttachment];
  v9 = [v8 storeAction];

  if (v9 == 4)
  {
    [v14 setStencilStoreAction:1];
  }

  for (i = 0; i != 8; ++i)
  {
    v11 = [v5 colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:i];
    v13 = [v12 storeAction];

    if (v13 == 4)
    {
      [v14 setColorStoreAction:1 atIndex:i];
    }
  }
}

- (void)encodeStoreActionForParallelRenderCommandEncoder:(id)a3 withDescriptor:(id)a4
{
  v24 = a3;
  v5 = a4;
  v6 = [v5 depthAttachment];
  v7 = [v6 storeAction];

  if (v7 == 4)
  {
    v8 = [v5 depthAttachment];
    v9 = [v8 resolveTexture];
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    [v24 setDepthStoreAction:v10];
  }

  v11 = [v5 stencilAttachment];
  v12 = [v11 storeAction];

  if (v12 == 4)
  {
    v13 = [v5 stencilAttachment];
    v14 = [v13 resolveTexture];
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    [v24 setStencilStoreAction:v15];
  }

  for (i = 0; i != 8; ++i)
  {
    v17 = [v5 colorAttachments];
    v18 = [v17 objectAtIndexedSubscript:i];
    v19 = [v18 storeAction];

    if (v19 == 4)
    {
      v20 = [v5 colorAttachments];
      v21 = [v20 objectAtIndexedSubscript:i];
      v22 = [v21 resolveTexture];
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      [v24 setColorStoreAction:v23 atIndex:i];
    }
  }
}

- (void)_executeGraphicsFunction
{
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.super.super.isa + v3);
  v5 = *v4;
  if (*v4 > -16161)
  {
    if (v5 > -16154)
    {
      if (v5 > -7159)
      {
        if ((v5 + 7158) >= 3)
        {
          goto LABEL_83;
        }

        v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        v6 = [(DYMTLCommonFunctionPlayer *)self layerManager];
        v7 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v61];
        [v6 prepareLayerForPresent:v7];
        v59.receiver = self;
        v59.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v59 executeGraphicsFunction];
        v69 = &v61;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v61);
        goto LABEL_46;
      }

      if (v5 != -16153)
      {
        if (v5 != -16152)
        {
          if (v5 != -16133)
          {
            goto LABEL_83;
          }

LABEL_14:
          v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 18), 0);
          v6 = [(DYMTLCommonFunctionPlayer *)self layerManager];
          v7 = [(DYMTLCommonDebugFunctionPlayer *)self replayerLayerForDrawableId:v61];
          [v6 prepareLayerForPresent:v7];
          v60.receiver = self;
          v60.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v60 executeGraphicsFunction];
          v69 = &v61;
          v8 = std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->super._drawableRenderabilityStatusMap.__table_.__bucket_list_.__ptr_, &v61);
LABEL_46:
          *(v8 + 24) = 0;
LABEL_47:

          return;
        }

        goto LABEL_71;
      }

LABEL_78:
      v6 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
      v7 = [v6 descriptor];
      v50 = [v7 depthAttachment];
      v51 = [v50 storeAction];

      if (v51 == 4)
      {
        v65.receiver = self;
        v65.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v65 executeGraphicsFunction];
      }

      goto LABEL_47;
    }

    if (v5 <= -16159)
    {
      if (v5 != -16160)
      {
        v28 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        v29 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (self->_currentParallelDescriptor)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30 && v29[3] == v28)
        {
          return;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v5 == -16158)
      {
        v47 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
        v48 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (self->_currentParallelDescriptor)
        {
          v49 = v48 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (!v49 && v48[3] == v47)
        {
          return;
        }

        goto LABEL_78;
      }

      if (v5 != -16157)
      {
        if (v5 != -16154)
        {
          goto LABEL_83;
        }

        goto LABEL_58;
      }

      v42 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v4 + 12), 0);
      v43 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
      if (self->_currentParallelDescriptor)
      {
        v44 = v43 == 0;
      }

      else
      {
        v44 = 1;
      }

      if (!v44 && v43[3] == v42)
      {
        return;
      }
    }

LABEL_71:
    v6 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
    v7 = [v6 descriptor];
    v45 = [v7 stencilAttachment];
    v46 = [v45 storeAction];

    if (v46 == 4)
    {
      v64.receiver = self;
      v64.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v64 executeGraphicsFunction];
    }

    goto LABEL_47;
  }

  if (v5 <= -16287)
  {
    if (v5 <= -16354)
    {
      if ((v5 + 16359) >= 2)
      {
        if (v5 == -16354)
        {
          if ([*(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]) playbackMode] == 9)
          {
            [(DYMTLCommonDebugFunctionPlayer *)self _updateRemainingCommandsForEncoder];
          }

          v62.receiver = self;
          v62.super_class = DYMTLCommonDebugFunctionPlayer;
          [(DYMTLFunctionPlayer *)&v62 executeGraphicsFunction];
          return;
        }

LABEL_83:
        v58.receiver = self;
        v58.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v58 executeGraphicsFunction];
        return;
      }

      goto LABEL_14;
    }

    if (v5 != -16353)
    {
      if (v5 == -16352)
      {
        v63.receiver = self;
        v63.super_class = DYMTLCommonDebugFunctionPlayer;
        [(DYMTLFunctionPlayer *)&v63 executeGraphicsFunction];
        self->_bSetStageInRegion = 0;
        self->_stageInIndirectBufferId = 0;
        return;
      }

      if (v5 != -16351)
      {
        goto LABEL_83;
      }
    }

    goto LABEL_28;
  }

  if (v5 > -16196)
  {
    if (v5 == -16195)
    {
LABEL_28:
      [(DYFunctionPlayer *)self processArguments];
      self->_isTileRenderPassDescriptor = 0;
      obj = GPUTools::MTL::MakeMTLRenderPassDescriptor(**(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]), [(DYMTLFunctionPlayer *)self objectMap]);
      v9 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 24, 0);
      v10 = v9;
      targetCommandEncoderId = self->_targetCommandEncoderId;
      if (targetCommandEncoderId)
      {
        v12 = v9 == targetCommandEncoderId;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForStore:obj];
      }

      v13 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0)];
      [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForLayering:obj withBuffer:v13];
      if (**(&self->super.super.super.super.isa + v3) == -16353)
      {
        v14 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
        if ([v14 playbackMode] == 10 || objc_msgSend(v14, "playbackMode") == 13)
        {
          for (i = 0; i != 8; ++i)
          {
            v16 = [obj colorAttachments];
            v17 = [v16 objectAtIndexedSubscript:i];
            [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v17];

            v18 = [obj colorAttachments];
            v19 = [v18 objectAtIndexedSubscript:i];
            v20 = [v19 resolveTexture];

            v21 = [obj colorAttachments];
            v22 = [v21 objectAtIndexedSubscript:i];
            if (v20)
            {
              [v22 setStoreAction:3];
            }

            else
            {
              [v22 setStoreAction:1];
            }
          }

          v23 = [obj depthAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v23];

          v24 = [obj depthAttachment];
          v25 = [v24 resolveTexture];

          v26 = [obj depthAttachment];
          if (v25)
          {
            [v26 setStoreAction:3];
          }

          else
          {
            [v26 setStoreAction:1];
          }

          v52 = [obj stencilAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v52];

          v53 = [obj stencilAttachment];
          v54 = [v53 resolveTexture];

          v55 = [obj stencilAttachment];
          if (v54)
          {
            [v55 setStoreAction:3];
          }

          else
          {
            [v55 setStoreAction:1];
          }
        }

        v56 = DYMTLNewStatefulRenderCommandEncoder(v13, obj);
        [(DYMTLFunctionPlayer *)self setObject:v56 forKey:v10];
        [(DYMTLCommonDebugFunctionPlayer *)self encodeStoreActionForRenderCommandEncoder:v56 withDescriptor:obj];
      }

      else
      {
        objc_storeStrong(&self->_currentParallelDescriptor, obj);
        self->_currentParallelId = v10;
        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &self->_targetCommandEncoderId);
        if (v36 && v36[3] == v10)
        {
          for (j = 0; j != 8; ++j)
          {
            v38 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor colorAttachments];
            v39 = [v38 objectAtIndexedSubscript:j];
            [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v39];
          }

          v40 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor depthAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v40];

          v41 = [(MTLRenderPassDescriptor *)self->_currentParallelDescriptor stencilAttachment];
          [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v41];

          [(DYMTLCommonDebugFunctionPlayer *)self _modifyDescriptorForStore:self->_currentParallelDescriptor];
        }

        v14 = DYMTLNewStatefulParallelRenderCommandEncoder(v13, obj);
        [(DYMTLFunctionPlayer *)self setObject:v14 forKey:v10];
        [(DYMTLCommonDebugFunctionPlayer *)self encodeStoreActionForParallelRenderCommandEncoder:v14 withDescriptor:obj];
      }

      return;
    }

    if (v5 != -16162)
    {
      if (v5 != -16161)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

LABEL_58:
    v31 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0);
    v32 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 96, 0);
    v6 = [(DYMTLFunctionPlayer *)self objectForKey:v31];
    v7 = [v6 descriptor];
    v33 = [v7 colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:v32];
    v35 = [v34 storeAction];

    if (v35 == 4)
    {
      v66.receiver = self;
      v66.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v66 executeGraphicsFunction];
    }

    goto LABEL_47;
  }

  if (v5 != -16286)
  {
    if (v5 == -16285)
    {
      currentParallelDescriptor = self->_currentParallelDescriptor;
      self->_currentParallelDescriptor = 0;

      self->_currentParallelId = 0;
      v67.receiver = self;
      v67.super_class = DYMTLCommonDebugFunctionPlayer;
      [(DYMTLFunctionPlayer *)&v67 executeGraphicsFunction];
      return;
    }

    goto LABEL_83;
  }

  v68.receiver = self;
  v68.super_class = DYMTLCommonDebugFunctionPlayer;
  [(DYMTLFunctionPlayer *)&v68 executeGraphicsFunction];
  v69 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 24, 0);
  if (self->_currentParallelId)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &v69);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned long long &>(&self->_persistantEncoder2ParallelMap.__table_.__bucket_list_.__ptr_, &v69);
  }
}

- (AttachmentInfo)_attachmentInfoForCommandEncoderID:(SEL)a3
{
  v15 = a4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x5012000000;
  v10 = __Block_byref_object_copy__633;
  v11 = __Block_byref_object_dispose__634;
  v12 = "";
  v13 = 0u;
  v14 = 0u;
  if (std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, &v15))
  {
    GPUTools::MTL::Utils::EnumerateValidAttachmentsForType();
  }

  v5 = *(v8 + 4);
  *&retstr->var0 = *(v8 + 3);
  *&retstr->var2 = v5;
  _Block_object_dispose(&v7, 8);
  return result;
}

uint64_t __69__DYMTLCommonDebugFunctionPlayer__attachmentInfoForCommandEncoderID___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  v5 = 3;
  v6 = 2;
  v7 = 1;
  v8 = a2 + 4;
  if ((a2[9] & 0xFFFFFFFELL) == 2)
  {
    v7 = 5;
  }

  else
  {
    v8 = a2;
  }

  if ((a2[9] & 0xFFFFFFFELL) == 2)
  {
    v6 = 6;
    v5 = 7;
  }

  *(*(*(result + 32) + 8) + 48) = *v8;
  *(*(*(result + 32) + 8) + 56) = a2[v7];
  *(*(*(result + 32) + 8) + 64) = a2[v6];
  *(*(*(result + 32) + 8) + 72) = a2[v5];
  return result;
}

- (void)_addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:(DYMTLRenderPassDescriptor *)a3 forEncoder:(unint64_t)a4
{
  v6[0] = a4;
  v6[2] = v6;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,GPUTools::MTL::Utils::DYMTLRenderPassDescriptor>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_commandEncoderDescriptorMap.__table_.__bucket_list_.__ptr_, v6);
  memcpy(v5 + 3, a3, 0x63BuLL);
}

- (void)_addRenderPassDescriptorToEncoderMapFromArgumentPointer:(void *)a3 forEncoder:(unint64_t)a4
{
  v6 = 0;
  v9 = 0;
  do
  {
    v7 = &v8[v6];
    *(v7 + 3) = 0uLL;
    *(v7 + 4) = 0uLL;
    *(v7 + 1) = 0uLL;
    *(v7 + 2) = 0uLL;
    *(v7 + 10) = 0;
    *(v7 + 11) = 1;
    *(v7 + 6) = 0uLL;
    *(v7 + 7) = 0uLL;
    *(v7 + 16) = 0x3FF0000000000000;
    v6 += 144;
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
  }

  while (v6 != 1152);
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = 1;
  v27 = 0u;
  v26 = 0u;
  v28 = 0x3FF0000000000000;
  v29 = 0u;
  GPUTools::MTL::Utils::MakeDYMTLRenderPassDescriptor(*a3, v8, a3);
  [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromRenderPassDescriptor:v8 forEncoder:a4];
}

- (void)_trackObjects
{
  v3 = *MEMORY[0x277D0AFA0];
  v22 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 48, 0);
  v4 = [(DYMTLCommonDebugFunctionPlayer *)self _isFunctionCommandEncoderCreation];
  if ([(DYMTLCommonDebugFunctionPlayer *)self _isReceiverTypeCommandEncoderRelated]|| v4)
  {
    v5 = 48;
    if (v4)
    {
      v5 = 24;
    }

    self->_lastEncoderID = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + v5, 0);
    self->_disableWireframe = v4;
  }

  v6 = *(&self->super.super.super.super.isa + v3);
  v7 = *v6;
  if (*v6 <= -16247)
  {
    if (v7 <= -16339)
    {
      if (v7 <= -16354)
      {
        if (v7 > -16364)
        {
          if (v7 != -16363)
          {
            if (v7 != -16361)
            {
              if (v7 != -16354)
              {
                return;
              }

LABEL_54:
              v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
              v18 = 0;
              v19 = 0;
              v17 = v22;
              v20 = 0;
              std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
              return;
            }

LABEL_42:
            *(std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v22) + 32) = 1;
            return;
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v22);
LABEL_62:
          self->_lastEncoderID = 0;
          return;
        }

        if (v7 != -16383)
        {
          v11 = -16376;
LABEL_59:
          if (v7 != v11)
          {
            return;
          }

          goto LABEL_72;
        }

        goto LABEL_61;
      }

      if (v7 <= -16344)
      {
        if (v7 != -16353)
        {
          if (v7 == -16352)
          {
            goto LABEL_54;
          }

          if (v7 == -16351)
          {
            v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v21);
            v17 = v22;
            v18 = 0;
            v19 = v21;
            v20 = 0;
            std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v21);
            [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromArgumentPointer:*(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]) forEncoder:v21];
          }

          return;
        }

        goto LABEL_74;
      }

      if ((v7 + 16343) >= 2)
      {
        return;
      }

LABEL_71:
      v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
      std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v21);
      v17 = v22;
      LOBYTE(v18) = 0;
      std::__hash_table<std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CommandBufferInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CommandBufferInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,CommandBufferInfo>(&self->_commandBufferMap.__table_.__bucket_list_.__ptr_, &v21);
      return;
    }

    if (v7 <= -16287)
    {
      if (v7 <= -16317)
      {
        if (v7 != -16338)
        {
          v11 = -16325;
          goto LABEL_59;
        }

LABEL_61:
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v22);
        goto LABEL_62;
      }

      if ((v7 + 16316) >= 2)
      {
        if (v7 == -16287)
        {
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v22);
        }

        return;
      }

LABEL_46:
      v17 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(&self->_commandQueueSet.__table_.__bucket_list_.__ptr_, &v17);
      return;
    }

    if (v7 <= -16281)
    {
      if (v7 == -16286)
      {
        v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
        v15 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_parallelEncoderMap.__table_.__bucket_list_.__ptr_, &v22);
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
        v17 = v15[3];
        v18 = 0;
        v19 = v21;
        v20 = 0;
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
        v16 = v22;
        v17 = &v21;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_encoderToParallelEncoderMap.__table_.__bucket_list_.__ptr_, &v21)[3] = v16;
      }

      else if (v7 == -16285)
      {
        v10 = 1912;
LABEL_73:
        *(std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>((&self->super.super.super.super.isa + v10), &v22) + 48) = 1;
        return;
      }

      return;
    }

    if (v7 == -16280)
    {
      goto LABEL_61;
    }

    v8 = -16279;
LABEL_49:
    if (v7 == v8)
    {
      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v22);
      v12[4] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v3) + 72, 0);
    }

    return;
  }

  if (v7 <= -15890)
  {
    if (v7 > -16171)
    {
      if ((v7 + 16014) < 2)
      {
        goto LABEL_54;
      }

      if (v7 != -16170)
      {
        if (v7 == -15908)
        {
          goto LABEL_42;
        }

        return;
      }
    }

    else
    {
      if (v7 > -16196)
      {
        if (v7 == -16195)
        {
LABEL_74:
          v21 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v6 + 6), 0);
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
          v17 = v22;
          v18 = 0;
          v19 = v21;
          v20 = 0;
          std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,EncoderInfo>(&self->_encoderMap.__table_.__bucket_list_.__ptr_, &v21);
          [(DYMTLCommonDebugFunctionPlayer *)self _addRenderPassDescriptorToEncoderMapFromArgumentPointer:*(&self->super.super.super._executePlatform + *MEMORY[0x277D0AF68]) forEncoder:v21];
          p_encoderToParallelEncoderMap = &self->_encoderToParallelEncoderMap;
          v14 = &v21;
          goto LABEL_75;
        }

        if (v7 == -16193)
        {
          goto LABEL_61;
        }

        v8 = -16192;
        goto LABEL_49;
      }

      if (v7 != -16246)
      {
        if (v7 != -16238)
        {
          return;
        }

        p_encoderToParallelEncoderMap = &self->_textureToDrawableMap;
        v14 = &v22;
LABEL_75:
        std::__hash_table<std::__hash_value_type<unsigned long long,EncoderInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,EncoderInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,EncoderInfo>>>::__erase_unique<unsigned long long>(p_encoderToParallelEncoderMap, v14);
        return;
      }
    }

LABEL_72:
    v10 = 1872;
    goto LABEL_73;
  }

  if (v7 > -15790)
  {
    if (v7 <= -15351)
    {
      if (v7 == -15789)
      {
        goto LABEL_72;
      }

      v9 = -15701;
    }

    else
    {
      if (v7 == -15350)
      {
        goto LABEL_46;
      }

      if (v7 == -15343)
      {
        goto LABEL_42;
      }

      v9 = -12544;
    }

    if (v7 != v9)
    {
      return;
    }

    goto LABEL_71;
  }

  if (v7 <= -15871)
  {
    if (v7 != -15889)
    {
      v11 = -15884;
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  if (v7 == -15870)
  {
    goto LABEL_54;
  }

  if (v7 == -15790)
  {
    goto LABEL_61;
  }
}

- (void)_forceAttachmentLoadActionToLoad:(id)a3
{
  v5 = a3;
  v3 = [v5 texture];
  if (v3)
  {
    v4 = [v5 loadAction];

    if (!v4)
    {
      [v5 setLoadAction:1];
    }
  }
}

- (void)_forceAttachmentStoreActionToStore:(id)a3
{
  v7 = a3;
  v3 = [v7 texture];
  if (v3)
  {
    if ([v7 storeAction])
    {
      v4 = [v7 storeAction];

      if (v4 != 4)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v5 = [v7 resolveTexture];
    if (v5)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    [v7 setStoreAction:v6];
  }

LABEL_10:
}

- (void)_updateMemorylessTextures:(id)a3
{
  v20 = a3;
  v4 = [v20 texture];
  if ([v4 storageMode] == 3)
  {
    v5 = sMemorylessTexturesAndReplacements;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = DYMTLGetAssociatedObject(v4, 0);
      [v8 setStorageMode:2];
      v9 = [(DYMTLFunctionPlayer *)self device];
      v7 = DYMTLNewTexture(v9, v8);

      if (!v7)
      {
        goto LABEL_15;
      }

      v10 = sMemorylessTexturesAndReplacements;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
      [v10 setObject:v7 forKeyedSubscript:v11];
    }

    if (![v20 loadAction])
    {
      [v20 setLoadAction:2];
    }

    [v20 setTexture:v7];
  }

  v12 = [v20 resolveTexture];

  if (!v12)
  {
    goto LABEL_16;
  }

  v8 = [v20 resolveTexture];
  if ([v8 storageMode] == 3)
  {
    v13 = sMemorylessTexturesAndReplacements;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = DYMTLGetAssociatedObject(v8, 0);
      [v16 setStorageMode:2];
      v17 = [(DYMTLFunctionPlayer *)self device];
      v15 = DYMTLNewTexture(v17, v16);

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v18 = sMemorylessTexturesAndReplacements;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
      [v18 setObject:v15 forKeyedSubscript:v19];
    }

    [v20 setResolveTexture:v15];
    v16 = v15;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
}

- (id)_generateDummyPipeline:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v6 = DYMTLGetAssociatedObject(v4, 2u);
  if (v6)
  {
    if (!self->_nopDrawVertexFunction)
    {
      v7 = [(DYMTLFunctionPlayer *)self device];
      v23 = 0;
      v8 = [v7 newLibraryWithSource:@"#include <metal_stdlib>\n\nusing namespace metal;\n\nstruct TransformMatrices\n{\n    float4 modelview_projection_matrix[4];\n};\n\nstruct VertexOutput\n{\n    float4 pos [[position]];\n    float4 color;\n};\n\nvertex VertexOutput defaultVertexProgram(uint vid [[ vertex_id ]])\n{\n    VertexOutput out;\n\n    out.pos   = float4(0.0 options:0.0 error:{0.0, 1.0);\n    out.color = float4(0.0, 0.0, 0.0, 1.0);\n\n    return out;\n}\n\nfragment float4 defaultFragmentProgram(VertexOutput vo [[ stage_in ]])\n{\n    return float4(vo.color.bgr, 1.0f);\n}\n\nkernel void defaultKernel()\n{\n\n}\n\n", 0, &v23}];
      v9 = v23;

      v10 = [v8 newFunctionWithName:@"defaultVertexProgram"];
      nopDrawVertexFunction = self->_nopDrawVertexFunction;
      self->_nopDrawVertexFunction = v10;

      v12 = [v8 newFunctionWithName:@"defaultFragmentProgram"];
      nopDrawFragFunction = self->_nopDrawFragFunction;
      self->_nopDrawFragFunction = v12;

      v14 = [v8 newFunctionWithName:@"defaultKernel"];
      nopTileFunction = self->_nopTileFunction;
      self->_nopTileFunction = v14;
    }

    v16 = DYMTLGetNullableAssociatedObject(v5, 0);
    v17 = [v16 copy];

    if (v17)
    {
      if (!self->_nopDrawVertexFunction || !self->_nopDrawFragFunction)
      {
        v19 = 0;
LABEL_17:

        goto LABEL_18;
      }

      [v17 setVertexFunction:?];
      [v17 setFragmentFunction:self->_nopDrawFragFunction];
      v18 = [(DYMTLFunctionPlayer *)self device];
      v19 = [v18 newRenderPipelineStateWithDescriptor:v17 error:0];
    }

    else
    {
      v20 = DYMTLGetNullableAssociatedObject(v5, 1u);
      v18 = [v20 copy];

      if (v18 && self->_nopTileFunction)
      {
        [v18 setTileFunction:?];
        v21 = [(DYMTLFunctionPlayer *)self device];
        v19 = [v21 newRenderPipelineStateWithTileDescriptor:v18 options:0 reflection:0 error:0];
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:

LABEL_19:

  return v19;
}

- (void)_swizzleAttachmentTextureForLoad:(id)a3 withBuffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 texture];
  v9 = v8;
  if (v8)
  {
    v10 = DYMTLGetAssociatedObject(v8, 0);
    [v10 setRotation:0];
    if (([v10 usage] & 1) == 0)
    {
      [v10 setUsage:{objc_msgSend(v10, "usage") | 5}];
      v11 = [(DYMTLFunctionPlayer *)self device];
      v12 = DYMTLNewTexture(v11, v10);

      if ([v6 loadAction] == 1)
      {
        v13 = [v7 blitCommandEncoder];
        v17 = [v6 slice];
        v14 = [v6 level];
        v20[0] = 0;
        v20[1] = 0;
        v20[2] = [v6 depthPlane];
        v19[0] = [v9 width];
        v19[1] = [v9 height];
        v19[2] = 1;
        v15 = [v6 slice];
        v16 = [v6 level];
        v18[0] = 0;
        v18[1] = 0;
        v18[2] = [v6 depthPlane];
        [v13 copyFromTexture:v9 sourceSlice:v17 sourceLevel:v14 sourceOrigin:v20 sourceSize:v19 toTexture:v12 destinationSlice:v15 destinationLevel:v16 destinationOrigin:v18];
        [v13 endEncoding];
      }

      [v6 setTexture:v12];
      [(DYMTLFunctionPlayer *)self setObject:v12 forKey:v12];
    }
  }
}

- (void)_modifyDescriptorForLayering:(id)a3 withBuffer:(id)a4
{
  v46 = a3;
  v6 = a4;
  v7 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  if ([v7 playbackMode] != 7)
  {
    goto LABEL_23;
  }

  for (i = 0; i != 8; ++i)
  {
    v9 = [v46 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:v10];

    v11 = [v46 colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:i];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v12];

    v13 = [v46 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:i];
    if (v14)
    {
      v15 = [v46 colorAttachments];
      v16 = [v15 objectAtIndexedSubscript:i];
      v17 = [v16 texture];

      if (v17)
      {
        v18 = [v46 colorAttachments];
        v19 = [v18 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v19];

        v20 = [v46 colorAttachments];
        v21 = [v20 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:v21 withBuffer:v6];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v20 = [v46 colorAttachments];
    [v20 setObject:0 atIndexedSubscript:i];
LABEL_8:
  }

  v22 = [v46 depthAttachment];
  if (v22)
  {
    v23 = [v46 stencilAttachment];
    if (v23)
    {
      v24 = [v46 depthAttachment];
      v25 = [v24 texture];
      v26 = [v46 stencilAttachment];
      v27 = [v26 texture];

      if (v25 == v27)
      {
        v28 = [v46 depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v28];

        v29 = [v46 depthAttachment];
        [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:v29 withBuffer:v6];

        v30 = [v46 depthAttachment];
        v31 = [v30 texture];
        v32 = [v46 stencilAttachment];
        [v32 setTexture:v31];

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v33 = [v46 depthAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:v33];

  v34 = [v46 depthAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v34];

  v35 = [v46 depthAttachment];
  if (v35 && ([v46 depthAttachment], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "texture"), v37 = objc_claimAutoreleasedReturnValue(), v37, v36, v35, v37))
  {
    v38 = [v46 depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v38];

    v39 = [v46 depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:v39 withBuffer:v6];
  }

  else
  {
    [v46 setDepthAttachment:0];
  }

  v40 = [v46 stencilAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentLoadActionToLoad:v40];

  v41 = [v46 stencilAttachment];
  [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v41];

  v42 = [v46 stencilAttachment];
  if (v42 && ([v46 stencilAttachment], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "texture"), v44 = objc_claimAutoreleasedReturnValue(), v44, v43, v42, v44))
  {
    v45 = [v46 stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v45];

    v30 = [v46 stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _swizzleAttachmentTextureForLoad:v30 withBuffer:v6];
LABEL_21:
  }

  else
  {
    [v46 setStencilAttachment:0];
  }

LABEL_23:
}

- (void)_modifyDescriptorForStore:(id)a3
{
  v21 = a3;
  v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
  if ([v4 playbackMode] == 4 || !objc_msgSend(v4, "playbackMode"))
  {
    for (i = 0; i != 8; ++i)
    {
      v6 = [v21 colorAttachments];
      v7 = [v6 objectAtIndexedSubscript:i];
      [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v7];

      v8 = [v21 colorAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 texture];

      v11 = [v21 colorAttachments];
      if (v10)
      {
        v12 = [v11 objectAtIndexedSubscript:i];
        [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v12];
      }

      else
      {
        [v11 setObject:0 atIndexedSubscript:i];
      }
    }

    v13 = [v21 depthAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v13];

    v14 = [v21 depthAttachment];
    v15 = [v14 texture];

    if (v15)
    {
      v16 = [v21 depthAttachment];
      [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v16];
    }

    else
    {
      [v21 setDepthAttachment:0];
    }

    v17 = [v21 stencilAttachment];
    [(DYMTLCommonDebugFunctionPlayer *)self _forceAttachmentStoreActionToStore:v17];

    v18 = [v21 stencilAttachment];
    v19 = [v18 texture];

    if (v19)
    {
      v20 = [v21 stencilAttachment];
      [(DYMTLCommonDebugFunctionPlayer *)self _updateMemorylessTextures:v20];
    }

    else
    {
      [v21 setStencilAttachment:0];
    }
  }
}

- (BOOL)isBlitSamplingSupported
{
  v9.receiver = self;
  v9.super_class = DYMTLCommonDebugFunctionPlayer;
  v2 = [(DYMTLFunctionPlayer *)&v9 device];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 name];
    v5 = [v4 lowercaseString];
    v6 = [v5 hasPrefix:@"nvidia"];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)setupCounterConfigurationAndGetFrameProfilerCounters
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DYMTLCommonDebugFunctionPlayer;
  v3 = [(DYMTLFunctionPlayer *)&v16 commandQueue];
  if (v3)
  {
    if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
    {
      v4 = 41493;
    }

    else
    {
      v4 = 33297;
    }

    [v3 setStatLocations:v4];
    [v3 availableCounters];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v12 + 1) + 8 * i) isEqualToString:{self->_statVertices, v12}])
          {

            goto LABEL_15;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(NSMutableArray *)self->_frameCounters removeObject:self->_statVertices];
    [(NSMutableArray *)self->_frameCounters removeObject:self->_statPixels];
LABEL_15:
    v9 = self->_frameCounters;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isCounterAvailable:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DYMTLCommonDebugFunctionPlayer;
  v5 = [(DYMTLFunctionPlayer *)&v17 commandQueue];
  v6 = v5;
  if (v5)
  {
    [v5 availableCounters];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v7 = v14 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([v4 isEqualToString:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setupAllStatLocationsWithBlitOption:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = DYMTLCommonDebugFunctionPlayer;
  v5 = [(DYMTLFunctionPlayer *)&v7 commandQueue];
  if (v5)
  {
    if (self->_isAGXDevice)
    {
      v6 = 63;
    }

    else
    {
      v6 = 33297;
    }

    if (!self->_isAGXDevice && v3)
    {
      if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
      {
        v6 = 41493;
      }

      else
      {
        v6 = 33297;
      }
    }

    [v5 setStatLocations:v6];
  }
}

- (void)setupProfilingForCounterLists
{
  if (self->_isAGXDevice)
  {
    v10.receiver = self;
    v10.super_class = DYMTLCommonDebugFunctionPlayer;
    v3 = [(DYMTLFunctionPlayer *)&v10 commandQueue];
    if (v3)
    {
      v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke_2;
      v8[3] = &unk_27930F870;
      v5 = &v9;
      v8[4] = self;
      v9 = v4;
      v6 = v4;
      [v3 addPerfSampleHandler:v8];
LABEL_6:
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = DYMTLCommonDebugFunctionPlayer;
    v3 = [(DYMTLFunctionPlayer *)&v13 commandQueue];
    if (v3)
    {
      v7 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke;
      v11[3] = &unk_27930F870;
      v5 = &v12;
      v11[4] = self;
      v12 = v7;
      v6 = v7;
      [v3 addPerfSampleHandler:v11];
      goto LABEL_6;
    }
  }
}

void __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v55 = a2;
  v7 = a3;
  if (v7 && a4)
  {
    v54 = v55;
    v57 = v7;
    v8 = [v54 getListIndex];
    v9 = [*(*(a1 + 32) + 5904) objectAtIndexedSubscript:v8];
    v62 = [v9 count];

    if ([v7 length] < (8 * v62))
    {
LABEL_43:

      goto LABEL_44;
    }

    v60 = v8;
    v56 = a4;
    v10 = [v7 bytes];
    v11 = *(a1 + 32);
    v12 = *(v10 + 8 * *(v11 + 3976));
    if (*(v11 + 4056) == v54)
    {
      v13 = 4096;
      v14 = v62;
      if (*(v11 + 4064) == v12 && v62 == (*(v11 + 4104) - *(v11 + 4096)) >> 3)
      {
LABEL_12:
        v21 = 0;
        v22 = 0;
        *(v11 + 4056) = v54;
        v64 = 0;
        v65 = 0;
        v58 = 8 * v14;
        v66 = 0;
        v23 = v56;
        v24 = v60;
        do
        {
          v25 = v13;
          v26 = [v7 bytes];
          v27 = v62;
          v28 = v26 + 8 * v22 * v62;
          v29 = *(a1 + 32);
          v30 = *(v28 + 8 * *(v29 + 3976));
          v31 = *(v28 + 8 * *(v29 + 3980));
          if (*(v29 + 4080) != v30 || *(v29 + 4088) != v31)
          {
            ++*(v29 + 4072);
            v33 = (*(a1 + 32) + 4080);
            *v33 = v30;
            v33[1] = v31;
          }

          v13 = v25;
          if (v62)
          {
            v59 = v22;
            v34 = 0;
            v35 = v26 + v21;
            v61 = v26 + v21;
            do
            {
              v36 = *(a1 + 32);
              v37 = *(v36 + 3984);
              if (*(v28 + 8 * v37))
              {
                v38 = *(v35 + 8 * v34);
                if ((*(*(v36 + 3912) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
                {
                  v39 = *(*(v36 + v13) + 8 * v34);
                  v40 = v38 >= v39;
                  v41 = v38 - v39;
                  if (v40)
                  {
                    v38 = v41;
                  }

                  else
                  {
                    v38 = 0;
                  }
                }

                v42 = v34 + *(*(v36 + 1808) + 8 * v24);
                v43 = v65;
                if (v65 >= v66)
                {
                  v63 = v13;
                  v45 = a1;
                  v46 = v64;
                  v47 = v65 - v64;
                  v48 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 4);
                  v49 = v48 + 1;
                  if (v48 + 1 > 0x555555555555555)
                  {
                    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
                  }

                  v50 = v28;
                  if (0x5555555555555556 * ((v66 - v64) >> 4) > v49)
                  {
                    v49 = 0x5555555555555556 * ((v66 - v64) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v49 = 0x555555555555555;
                  }

                  if (v49)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&v64, v49);
                  }

                  v51 = (16 * ((v65 - v64) >> 4));
                  *v51 = *(v36 + 4064);
                  v51[1] = *(v36 + 4072);
                  v51[2] = *(v28 + 8 * v37);
                  v51[3] = v42;
                  v51[4] = v38;
                  v51[5] = 0;
                  v44 = 48 * v48 + 48;
                  v52 = (48 * v48 - v47);
                  memcpy(v52, v46, v47);
                  v53 = v64;
                  v64 = v52;
                  v65 = v44;
                  v66 = 0;
                  if (v53)
                  {
                    operator delete(v53);
                  }

                  a1 = v45;
                  v24 = v60;
                  v35 = v61;
                  v27 = v62;
                  v13 = v63;
                  v28 = v50;
                }

                else
                {
                  *v65 = *(v36 + 4064);
                  v43[1] = *(v36 + 4072);
                  v43[2] = *(v28 + 8 * v37);
                  v43[3] = v42;
                  v43[4] = v38;
                  v43[5] = 0;
                  v44 = (v43 + 6);
                }

                v65 = v44;
                v36 = *(a1 + 32);
              }

              *(*(v36 + 4096) + 8 * v34) = *(v35 + 8 * v34);
              ++v34;
            }

            while (v27 != v34);
            v23 = v56;
            v7 = v57;
            v22 = v59;
          }

          ++v22;
          v21 += v58;
        }

        while (v22 != v23);
        [*(a1 + 40) addCommandBufferFrameProfile:&v64];
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }

        goto LABEL_43;
      }
    }

    else
    {
      v14 = v62;
    }

    std::vector<unsigned long long>::resize((v11 + 4096), v14);
    v15 = *(a1 + 32);
    v16 = *(v15 + 4104) - *(v15 + 4096);
    if (v16 >= 1)
    {
      bzero(*(v15 + 4096), v16);
      v15 = *(a1 + 32);
    }

    *(v15 + 4064) = v12;
    *(*(a1 + 32) + 4072) = 0;
    v17 = *(a1 + 32);
    v18 = [v7 bytes];
    v19 = *(a1 + 32);
    v20 = *(v18 + 8 * *(v19 + 3980));
    v19 += 4080;
    *v19 = *(v17 + 4064);
    *(v19 + 8) = v20;
    v11 = *(a1 + 32);
    v14 = v62;
    v13 = 4096;
    goto LABEL_12;
  }

LABEL_44:
}

void __63__DYMTLCommonDebugFunctionPlayer_setupProfilingForCounterLists__block_invoke_2(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v6 = a2;
  v68 = a3;
  v7 = v6;
  v72 = [v7 getListIndex];
  v8 = [*(*(a1 + 32) + 5904) objectAtIndexedSubscript:v72];
  v73 = [v8 count];

  v9 = *(a1 + 32);
  if (v9[507] != v7 || v73 != (v9[513] - v9[512]) >> 3)
  {
    std::vector<unsigned long long>::resize(v9 + 512, v73);
    v9 = *(a1 + 32);
    v10 = v9[512];
    v11 = v9[513] - v10;
    if (v11 >= 1)
    {
      bzero(v10, v11);
      v9 = *(a1 + 32);
    }
  }

  v66 = v7;
  v9[507] = v7;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v78 = 0u;
  v79 = 0u;
  v80 = 1065353216;
  v12 = 4 * ([*(a1 + 40) playbackMode] != 9);
  v71 = a1;
  if (v12 < a4)
  {
    v70 = 8 * v12 * v73;
    do
    {
      v13 = [v68 bytes];
      v69 = v12;
      v14 = v13 + 8 * v12 * v73;
      v15 = *(a1 + 32);
      if (*(v14 + 8 * *(v15 + 3976)) != -1)
      {
        v16 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&v78, (v14 + 8 * *(v15 + 3980)));
        v17 = v72;
        v18 = v73;
        if (v16)
        {
          v74 = v16[3];
          if (v73)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v19 = *(&v79 + 1);
          __src = (v14 + 8 * *(*(a1 + 32) + 3980));
          v74 = 0;
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v78, __src)[3] = v19;
          v17 = v72;
          v18 = v73;
          if (v73)
          {
LABEL_12:
            v20 = 0;
            v21 = v13 + v70;
            do
            {
              v22 = *(a1 + 32);
              if (*(v14 + 8 * *(v22 + 3992)) == 2)
              {
                v23 = *(v22 + 3912);
                v24 = *(v21 + 8 * v20);
                if ((*(v23 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
                {
                  v24 -= *(*(v22 + 4096) + 8 * v20);
                }

                v25 = *(v22 + 3996);
                v26 = *(v14 + 8 * v25);
                if ((*(v23 + ((v25 >> 3) & 0x1FFFFFF8)) >> v25))
                {
                  v26 -= *(*(v22 + 4096) + 8 * v25);
                }

                v27 = *(v22 + 3976);
                v28 = *(v22 + 3988);
                v29 = v20 + *(*(v22 + 1808) + 8 * v17);
                v30 = v82;
                if (v82 >= v83)
                {
                  v32 = v81;
                  v33 = v82 - v81;
                  v34 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 4);
                  v35 = v34 + 1;
                  if (v34 + 1 > 0x555555555555555)
                  {
                    std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v83 - v81) >> 4) > v35)
                  {
                    v35 = 0x5555555555555556 * ((v83 - v81) >> 4);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v83 - v81) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v35 = 0x555555555555555;
                  }

                  if (v35)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&v81, v35);
                  }

                  v36 = (16 * ((v82 - v81) >> 4));
                  *v36 = *(v14 + 8 * v27);
                  v36[1] = v74;
                  v36[2] = *(v14 + 8 * v28);
                  v36[3] = v29;
                  v36[4] = v24;
                  v36[5] = v26;
                  v31 = (48 * v34 + 48);
                  v37 = (48 * v34 - v33);
                  memcpy(v37, v32, v33);
                  v38 = v81;
                  v81 = v37;
                  v82 = v31;
                  v83 = 0;
                  if (v38)
                  {
                    operator delete(v38);
                  }

                  a1 = v71;
                  v17 = v72;
                  v18 = v73;
                }

                else
                {
                  *v82 = *(v14 + 8 * v27);
                  *(v30 + 1) = v74;
                  *(v30 + 2) = *(v14 + 8 * v28);
                  *(v30 + 3) = v29;
                  *(v30 + 4) = v24;
                  *(v30 + 5) = v26;
                  v31 = (v30 + 48);
                }

                v82 = v31;
              }

              else
              {
                *(*(v22 + 4096) + 8 * v20) = *(v21 + 8 * v20);
              }

              ++v20;
            }

            while (v18 != v20);
          }
        }
      }

      v12 = v69 + 1;
      v70 += 8 * v73;
    }

    while (v69 + 1 != a4);
  }

  v39 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 4));
  if (v82 == v81)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long> *,false>(v81, v82, &__src, v40, 1);
  __src = 0;
  v76 = 0;
  v77 = 0;
  std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>::reserve(&__src, 2 * v73 * *(&v79 + 1));
  v41 = v81;
  v42 = v82;
  v43 = v72;
  if (v81 != v82)
  {
    v44 = 0;
    do
    {
      if (v44 && (v45 = *(v44 + 3), v45 == *(v41 + 3)) && *(v44 + 2) == *(v41 + 2) && ((v47 = v44, v46 = *v44, *(v47 + 1) == *(v41 + 1)) ? (v48 = v46 == *v41) : (v48 = 0), v48))
      {
        v62 = *(a1 + 32);
        v63 = v45 - *(*(v62 + 1808) + 8 * v43);
        if (v63 != *(v62 + 3976) && v63 != *(v62 + 3980) && v63 != *(v62 + 3984) && v63 != *(v62 + 3988) && v63 != *(v62 + 3992))
        {
          v64 = v76;
          v65 = *(v76 - 1);
          *(v76 - 2) += *(v41 + 4);
          *(v64 - 1) = v65 + *(v41 + 5);
        }
      }

      else
      {
        v49 = v76;
        if (v76 >= v77)
        {
          v53 = __src;
          v54 = v76 - __src;
          v55 = 0xAAAAAAAAAAAAAAABLL * ((v76 - __src) >> 4);
          v56 = v55 + 1;
          if (v55 + 1 > 0x555555555555555)
          {
            std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v77 - __src) >> 4) > v56)
          {
            v56 = 0x5555555555555556 * ((v77 - __src) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v77 - __src) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v56 = 0x555555555555555;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(&__src, v56);
          }

          v57 = (16 * ((v76 - __src) >> 4));
          v58 = *v41;
          v59 = *(v41 + 2);
          v57[1] = *(v41 + 1);
          v57[2] = v59;
          *v57 = v58;
          v52 = 48 * v55 + 48;
          v60 = v57 - v54;
          memcpy(v57 - v54, v53, v54);
          v61 = __src;
          __src = v60;
          v76 = v52;
          v77 = 0;
          if (v61)
          {
            operator delete(v61);
          }

          a1 = v71;
          v43 = v72;
        }

        else
        {
          v50 = *v41;
          v51 = *(v41 + 2);
          *(v76 + 1) = *(v41 + 1);
          v49[2] = v51;
          *v49 = v50;
          v52 = (v49 + 3);
        }

        v76 = v52;
      }

      v44 = v41;
      v41 += 48;
    }

    while (v41 != v42);
  }

  [*(a1 + 40) addCommandBufferFrameProfile:&__src];
  if (__src)
  {
    v76 = __src;
    operator delete(__src);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,BOOL>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BOOL>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BOOL>>>::~__hash_table(&v78);
  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }
}

- (void)setupFrameTimeProfiling
{
  v8.receiver = self;
  v8.super_class = DYMTLCommonDebugFunctionPlayer;
  v3 = [(DYMTLFunctionPlayer *)&v8 commandQueue];
  if (v3)
  {
    v4 = *(&self->super.super.super.super.isa + *MEMORY[0x277D0AF98]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__DYMTLCommonDebugFunctionPlayer_setupFrameTimeProfiling__block_invoke;
    v6[3] = &unk_27930F898;
    v7 = v4;
    v5 = v4;
    [v3 addPerfSampleHandler:v6];
  }
}

void __57__DYMTLCommonDebugFunctionPlayer_setupFrameTimeProfiling__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 label];
  v7 = [v6 isEqualToString:*MEMORY[0x277D0B020]];

  if ((v7 & 1) == 0)
  {
    memset(__p, 0, sizeof(__p));
    [v4 GPUStartTime];
    [v4 GPUEndTime];
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>(__p, 1uLL);
  }
}

- (BOOL)setupProfilingForListAtIndex:(unint64_t)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = DYMTLCommonDebugFunctionPlayer;
  v38 = [(DYMTLFunctionPlayer *)&v43 commandQueue];
  if (!v38 || (-[NSMutableArray objectAtIndexedSubscript:](self->_counterListsPerPass, "objectAtIndexedSubscript:", a3), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v38 requestCounters:v5 withIndex:a3], v5, v6))
  {
    v7 = 0;
    goto LABEL_40;
  }

  counterInfos = self->_counterInfos;
  if (!counterInfos)
  {
    v9 = [v38 counterInfo];
    v10 = self->_counterInfos;
    self->_counterInfos = v9;

    counterInfos = self->_counterInfos;
  }

  if ([(NSDictionary *)counterInfos count])
  {
    std::vector<BOOL>::resize(&self->_isDeltaCounter, [(NSDictionary *)self->_counterInfos count], 0);
  }

  if (self->_isAGXDevice)
  {
    self->_nSecIndex = -1;
    v11 = 7;
  }

  else
  {
    v11 = 3;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [(NSMutableArray *)self->_counterListsPerPass objectAtIndexedSubscript:a3];
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v13)
  {
    v7 = 1;
    goto LABEL_39;
  }

  obj = v12;
  v14 = 0;
  v15 = 0;
  v16 = *v40;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v40 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v39 + 1) + 8 * i);
      v19 = [(NSDictionary *)self->_counterInfos objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"type"];

      if (!v20)
      {
        v7 = 0;
        goto LABEL_37;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 unsignedIntegerValue];
        begin = self->_isDeltaCounter.__begin_;
        v23 = v14 >> 6;
        v24 = 1 << v14;
        if (v21 == 1)
        {
LABEL_19:
          v25 = begin[v23] | v24;
LABEL_23:
          begin[v23] = v25;
          goto LABEL_24;
        }

LABEL_22:
        v25 = begin[v23] & ~v24;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v20 isEqualToString:@"DELTA"];
        begin = self->_isDeltaCounter.__begin_;
        v23 = v14 >> 6;
        v24 = 1 << v14;
        if (v26)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }

LABEL_24:
      if (v15 < v11)
      {
        v27 = [@"MTLStatCommandBufferIndex" isEqualToString:v18];
        v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__commandBufferIndex;
        if (v27)
        {
          goto LABEL_32;
        }

        v29 = [@"MTLStatEncoderIndex" isEqualToString:v18];
        v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__encoderIndex;
        if (v29)
        {
          goto LABEL_32;
        }

        v30 = [@"MTLStatCommandIndex" isEqualToString:v18];
        v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__drawIndex;
        if (v30)
        {
          goto LABEL_32;
        }

        v31 = [@"MTLStatDataMaster" isEqualToString:v18];
        v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__datamasterIndex;
        if (v31 & 1) != 0 || (v32 = [@"MTLStatSampleLocation" isEqualToString:v18], v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__sampleLocationIndex, (v32) || (v33 = objc_msgSend(@"MTLStatTotalGPUCycles", "isEqualToString:", v18), v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__gpuCyclesIndex, (v33) || (v34 = objc_msgSend(@"MTLStat_nSec", "isEqualToString:", v18), v28 = &OBJC_IVAR___DYMTLCommonDebugFunctionPlayer__nSecIndex, v34))
        {
LABEL_32:
          *(&self->super.super.super.super.isa + *v28) = v14;
          ++v15;
        }
      }

      ++v14;
    }

    v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v7 = 1;
LABEL_37:
  v12 = obj;
LABEL_39:

LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)counterInfo:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = v4;
  v41 = objc_opt_new();
  v47.receiver = self;
  v47.super_class = DYMTLCommonDebugFunctionPlayer;
  v5 = [(DYMTLFunctionPlayer *)&v47 commandQueue];
  v6 = v5;
  if (v5)
  {
    v40 = v5;
    v39 = [v5 isStatEnabled];
    if ((v39 & 1) == 0)
    {
      [v6 setStatEnabled:1];
    }

    if (v4)
    {
      v7 = v4;
      if (self->_isAGXDevice)
      {
        [MEMORY[0x277CBEB18] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStatDataMaster", @"MTLStatSampleLocation", @"MTLStatTotalGPUCycles", @"MTLStat_nSec", 0}];
      }

      else
      {
        [MEMORY[0x277CBEB18] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStat_nSec", 0}];
      }
      v9 = ;
      v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        v13 = *v44;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v44 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v43 + 1) + 8 * i);
            if (([v10 containsObject:v15] & 1) == 0)
            {
              [v9 addObject:v15];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v12);
      }

      v8 = v9;
      v6 = v40;
    }

    else
    {
      v8 = [v6 availableCounters];
    }

    v16 = [v6 subdivideCounterList:v8];
    v17 = [v16 mutableCopy];
    counterListsPerPass = self->_counterListsPerPass;
    self->_counterListsPerPass = v17;

    v19 = [(NSMutableArray *)self->_counterListsPerPass count];
    p_baseCounterIndexForList = &self->_baseCounterIndexForList;
    self->_baseCounterIndexForList.__end_ = self->_baseCounterIndexForList.__begin_;
    if (v19)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        end = self->_baseCounterIndexForList.__end_;
        cap = self->_baseCounterIndexForList.__cap_;
        if (end >= cap)
        {
          begin = p_baseCounterIndexForList->__begin_;
          v27 = end - p_baseCounterIndexForList->__begin_;
          v28 = v27 >> 3;
          v29 = (v27 >> 3) + 1;
          if (v29 >> 61)
          {
            std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
          }

          v30 = cap - begin;
          if (v30 >> 2 > v29)
          {
            v29 = v30 >> 2;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFF8;
          v32 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&self->_baseCounterIndexForList, v32);
          }

          *(8 * v28) = v22;
          v25 = (8 * v28 + 8);
          memcpy(0, begin, v27);
          v33 = p_baseCounterIndexForList->__begin_;
          p_baseCounterIndexForList->__begin_ = 0;
          self->_baseCounterIndexForList.__end_ = v25;
          self->_baseCounterIndexForList.__cap_ = 0;
          if (v33)
          {
            operator delete(v33);
          }

          v4 = v42;
        }

        else
        {
          *end = v22;
          v25 = end + 1;
        }

        self->_baseCounterIndexForList.__end_ = v25;
        v34 = [(NSMutableArray *)self->_counterListsPerPass objectAtIndexedSubscript:v21];
        v35 = [v34 count];

        v22 += v35;
        ++v21;
      }

      while (v19 != v21);
    }

    [v41 setObject:self->_counterListsPerPass forKeyedSubscript:*MEMORY[0x277D0B0C8]];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    [v41 setObject:v36 forKeyedSubscript:*MEMORY[0x277D0B398]];

    [v41 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0B0D0]];
    if ((v39 & 1) == 0)
    {
      [v40 setStatEnabled:0];
    }

    v6 = v40;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v41;
}

- (void)sampleEncoderCounters
{
  v5.receiver = self;
  v5.super_class = DYMTLCommonDebugFunctionPlayer;
  v3 = [(DYMTLFunctionPlayer *)&v5 commandQueue];
  if (v3)
  {
    if (self->_isAGXDevice)
    {
      v4 = 63;
    }

    else if ([(DYMTLCommonDebugFunctionPlayer *)self isBlitSamplingSupported])
    {
      v4 = 63;
    }

    else
    {
      v4 = 51;
    }

    [v3 setStatLocations:v4];
  }
}

- (void)sampleSplitEncoderCounters
{
  v4.receiver = self;
  v4.super_class = DYMTLCommonDebugFunctionPlayer;
  v2 = [(DYMTLFunctionPlayer *)&v4 commandQueue];
  v3 = v2;
  if (v2)
  {
    [v2 setStatLocations:12];
  }
}

- (void)setStatLocations:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = DYMTLCommonDebugFunctionPlayer;
  v4 = [(DYMTLFunctionPlayer *)&v6 commandQueue];
  v5 = v4;
  if (v4)
  {
    [v4 setStatLocations:a3];
  }
}

- (unint64_t)getStatLocations
{
  v6.receiver = self;
  v6.super_class = DYMTLCommonDebugFunctionPlayer;
  v2 = [(DYMTLFunctionPlayer *)&v6 commandQueue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 getStatLocations];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)stopFrameProfiling
{
  v5.receiver = self;
  v5.super_class = DYMTLCommonDebugFunctionPlayer;
  v3 = [(DYMTLFunctionPlayer *)&v5 commandQueue];
  v4 = v3;
  if (v3)
  {
    [v3 setStatEnabled:0];
    if (self->_isAGXDevice)
    {
      [v4 setGPUPriority:1];
    }
  }
}

- (id)derivedCounterData
{
  v15.receiver = self;
  v15.super_class = DYMTLCommonDebugFunctionPlayer;
  v2 = [(DYMTLFunctionPlayer *)&v15 device];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D25718]) initWithMTLDevice:v2];
    v4 = objc_opt_new();
    v5 = [v3 counterDictionary];
    v6 = [v5 allKeys];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v3 counterDictionary];
      [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0B138]];

      v9 = [v3 derivedCounterScript];
      [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0B140]];

      v10 = [v3 analysisScript];
      [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277D0B110]];

      v11 = [v3 configurationVariables];
      [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0B120]];

      v12 = [v3 metalPluginName];

      if (v12)
      {
        v13 = [v3 metalPluginName];
        [v4 setObject:v13 forKeyedSubscript:@"MetalPluginName"];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setupProfileInfo:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_profileInfo, a3);
  profileInfo = self->_profileInfo;
  if (profileInfo)
  {
    v6 = [(NSDictionary *)profileInfo objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
    splitEncoderCommandCount = self->_splitEncoderCommandCount;
    self->_splitEncoderCommandCount = v6;
  }
}

- (void)_updateRemainingCommandsForEncoder
{
  if (self->_splitEncoderCommandCount)
  {
    v3 = [(DYMTLCommonDebugFunctionPlayer *)self currentEncoderIndex];
    if ([(NSArray *)self->_splitEncoderCommandCount count]> v3)
    {
      v4 = [(NSArray *)self->_splitEncoderCommandCount objectAtIndexedSubscript:[(DYMTLCommonDebugFunctionPlayer *)self currentEncoderIndex]];
      if (v4)
      {
        v5 = v4;
        self->_nRemainingCommandsForCurrentEncoder = [v4 unsignedIntValue];
        v4 = v5;
      }
    }
  }
}

- (unint64_t)_executeIndirectCommandBufferUpToSubIndex:(unint64_t)a3 outBuffer:(id *)a4 outDataPointer:(const char *)a5
{
  v10 = *MEMORY[0x277D0AFA0];
  v11 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 48, 0);
  v12 = [(DYMTLFunctionPlayer *)self objectForKey:GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 72, 0)];
  v13 = [v12 size];
  if (v13 - 1 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13 - 1;
  }

  [(DYFunctionPlayer *)self processArguments];
  v15 = 0;
  v16 = *(&self->super.super.super.super.isa + v10);
  v17 = *v16;
  if (v17 <= -15963)
  {
    if (v17 != -15964)
    {
      v18 = -15963;
      goto LABEL_9;
    }

LABEL_11:
    v15 = **(&self->super.super.super._executeGraphics + *MEMORY[0x277D0AF68]);
    v5 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v16 + 24), 0);
    GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.super.super.isa + v10) + 96, 1uLL);
    v17 = **(&self->super.super.super.super.isa + v10);
    goto LABEL_12;
  }

  if (v17 == -15962)
  {
    goto LABEL_11;
  }

  v18 = -15961;
LABEL_9:
  if (v17 == v18)
  {
    v19 = self + *MEMORY[0x277D0AF68];
    v15 = **(v19 + 4);
    v5 = ***(v19 + 5);
  }

LABEL_12:
  if (GPUTools::MTL::IsFuncEnumIndirectExecuteDrawCall(v17))
  {
    v20 = [(DYMTLFunctionPlayer *)self objectForKey:v11];
    v21 = v20;
    if (v14 > v5)
    {
      [v20 executeCommandsInBuffer:v12 withRange:{v5, v14 - v5}];
    }

    v22 = [(DYMTLFunctionPlayer *)self indirectCommandManager];
    v23 = [v22 setupRenderCommandEncoder:v21 withData:v15 atIndex:v14 forIndirectCommandBuffer:v12];
  }

  else
  {
    if (!GPUTools::MTL::IsFuncEnumIndirectExecuteComputeCall(**(&self->super.super.super.super.isa + v10)))
    {
      v25 = 0;
      goto LABEL_22;
    }

    v24 = [(DYMTLFunctionPlayer *)self objectForKey:v11];
    v21 = v24;
    if (v14 > v5)
    {
      [v24 executeCommandsInBuffer:v12 withRange:{v5, v14 - v5}];
    }

    v22 = [(DYMTLFunctionPlayer *)self indirectCommandManager];
    v23 = [v22 setupComputeCommandEncoder:v21 withData:v15 atIndex:v14 forIndirectCommandBuffer:v12];
  }

  v25 = v23;

LABEL_22:
  v26 = v12;
  *a4 = v12;
  *a5 = v15;

  return v25;
}

- (id).cxx_construct
{
  *(self + 105) = 0u;
  *(self + 106) = 0u;
  *(self + 428) = 1065353216;
  *(self + 1720) = 0u;
  *(self + 1736) = 0u;
  *(self + 438) = 1065353216;
  *(self + 110) = 0u;
  *(self + 111) = 0u;
  *(self + 448) = 1065353216;
  *(self + 227) = 0;
  *(self + 228) = 0;
  *(self + 226) = 0;
  *(self + 1832) = 0u;
  *(self + 1848) = 0u;
  *(self + 466) = 1065353216;
  *(self + 117) = 0u;
  *(self + 118) = 0u;
  *(self + 476) = 1065353216;
  *(self + 1912) = 0u;
  *(self + 1928) = 0u;
  *(self + 486) = 1065353216;
  *(self + 122) = 0u;
  *(self + 123) = 0u;
  *(self + 496) = 1065353216;
  *(self + 510) = 1065353216;
  *(self + 2008) = 0u;
  *(self + 2024) = 0u;
  *(self + 261) = 0;
  v2 = self + 2224;
  v3 = 1152;
  do
  {
    *(v2 - 6) = 0uLL;
    *(v2 - 5) = 0uLL;
    *(v2 - 8) = 0uLL;
    *(v2 - 7) = 0uLL;
    *(v2 - 8) = 0;
    *(v2 - 7) = 1;
    *(v2 - 3) = 0uLL;
    *(v2 - 2) = 0uLL;
    *(v2 - 2) = 0x3FF0000000000000;
    *v2 = 0;
    v2[1] = 0;
    v2 += 18;
    v3 -= 144;
  }

  while (v3);
  *(self + 414) = 0;
  *(self + 206) = 0u;
  *(self + 205) = 0u;
  *(self + 204) = 0u;
  *(self + 203) = 0u;
  *(self + 415) = 1;
  *(self + 208) = 0u;
  *(self + 209) = 0u;
  *(self + 420) = 0x3FF0000000000000;
  *(self + 211) = 0u;
  *(self + 212) = 0u;
  *(self + 213) = 0u;
  *(self + 214) = 0u;
  *(self + 215) = 0u;
  *(self + 432) = 0;
  *(self + 433) = 1;
  *(self + 218) = 0u;
  *(self + 217) = 0u;
  *(self + 438) = 0x3FF0000000000000;
  *(self + 220) = 0u;
  *(self + 3720) = 0u;
  *(self + 3736) = 0u;
  *(self + 938) = 1065353216;
  *(self + 471) = 0;
  *(self + 472) = 0;
  *(self + 470) = 0;
  *(self + 490) = 0;
  *(self + 491) = 0;
  *(self + 489) = 0;
  *(self + 251) = 0u;
  *(self + 252) = 0u;
  *(self + 1012) = 1065353216;
  *(self + 510) = 0;
  *(self + 511) = 0;
  *(self + 513) = 0;
  *(self + 514) = 0;
  *(self + 512) = 0;
  *(self + 4136) = 0u;
  *(self + 4152) = 0u;
  *(self + 1042) = 1065353216;
  *(self + 527) = 0;
  v4 = self + 4352;
  v5 = 1152;
  do
  {
    *(v4 - 6) = 0uLL;
    *(v4 - 5) = 0uLL;
    *(v4 - 8) = 0uLL;
    *(v4 - 7) = 0uLL;
    *(v4 - 8) = 0;
    *(v4 - 7) = 1;
    *(v4 - 3) = 0uLL;
    *(v4 - 2) = 0uLL;
    *(v4 - 2) = 0x3FF0000000000000;
    *v4 = 0;
    v4[1] = 0;
    v4 += 18;
    v5 -= 144;
  }

  while (v5);
  *(self + 680) = 0;
  *(self + 339) = 0u;
  *(self + 338) = 0u;
  *(self + 337) = 0u;
  *(self + 336) = 0u;
  *(self + 681) = 1;
  *(self + 341) = 0u;
  *(self + 342) = 0u;
  *(self + 686) = 0x3FF0000000000000;
  *(self + 344) = 0u;
  *(self + 345) = 0u;
  *(self + 346) = 0u;
  *(self + 347) = 0u;
  *(self + 348) = 0u;
  *(self + 698) = 0;
  *(self + 699) = 1;
  *(self + 351) = 0u;
  *(self + 350) = 0u;
  *(self + 704) = 0x3FF0000000000000;
  *(self + 353) = 0u;
  *(self + 365) = 0u;
  *(self + 366) = 0u;
  *(self + 1468) = 1065353216;
  return self;
}

@end