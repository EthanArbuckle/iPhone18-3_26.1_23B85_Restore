@interface MTLTelemetryDevice
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)a3 options:(unint64_t)a4;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)a3;
- (BOOL)supportsFeatureSet:(unint64_t)a3;
- (BOOL)supportsTextureSampleCount:(unint64_t)a3;
- (MTLTelemetryDevice)initWithBaseObject:(id)a3 parent:(id)a4;
- (id).cxx_construct;
- (id)_newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)_newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)_newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6;
- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6;
- (id)newBufferWithDescriptor:(id)a3;
- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4;
- (id)newCommandQueue;
- (id)newCommandQueueWithDescriptor:(id)a3;
- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3;
- (id)newDepthStencilStateWithDescriptor:(id)a3;
- (id)newHeapWithDescriptor:(id)a3;
- (id)newSamplerStateWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3;
- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5;
- (void)_newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)_newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)_newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)emitFeatureQueryUsage;
- (void)emitTelemetry;
- (void)initDistributions;
- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4;
- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4;
- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)setGLMode:(BOOL)a3;
- (void)setTimerInterval:(double)a3;
- (void)startTimerWithInterval:(double)a3;
@end

@implementation MTLTelemetryDevice

- (void)dealloc
{
  free(self->encoderDistribution);
  free(self->commandBufferDistribution);
  free(self->parallellRenderEncoderDistribution);
  free(self->attachmentCount);
  free(self->textureBindCount);
  free(self->renderTargetArrayLengthDistribution);
  free(self->viewportDistribution);
  free(self->scissorRectDistribution);
  free(self->drawDistribution);
  free(self->dispatchDistribution);
  free(self->bufferDistribution);
  free(self->renderPipelineDistribution);
  free(self->computePipelineDistribution);
  free(self->commandBufferDispatchDistribution);
  free(self->computeEncoderDispatchDistribution);
  free(self->samplerDistribution);
  free(self->depthStateDistribution);
  free(self->frontFaceStencilStateDistribution);
  free(self->backFaceStencilStateDistribution);
  free(self->depthClipModeClampDistribution);
  free(self->commandBufferDrawCallDistribution);
  free(self->renderEncoderDrawCallDistribution);
  free(self->commandBufferBlitDistribution);
  free(self->blitEncoderBlitDistribution);
  free(self->commandBufferMemoryBarrierDistribution);
  free(self->kernelDistribution);
  free(self->anisoClippedCounts);

  v3.receiver = self;
  v3.super_class = MTLTelemetryDevice;
  [(MTLToolsDevice *)&v3 dealloc];
}

- (void)initDistributions
{
  self->encoderDistribution = malloc_type_calloc(1uLL, 0x78uLL, 0x10000400012A6C3uLL);
  self->commandBufferDistribution = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  self->parallellRenderEncoderDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->attachmentCount = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->textureBindCount = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->renderTargetArrayLengthDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->viewportDistribution = malloc_type_calloc(1uLL, 0x58uLL, 0x100004038113C5CuLL);
  self->scissorRectDistribution = malloc_type_calloc(1uLL, 0x38uLL, 0x100004095CF6A33uLL);
  self->drawDistribution = malloc_type_calloc(1uLL, 0x9D8uLL, 0x100004010114EAEuLL);
  self->dispatchDistribution = malloc_type_calloc(1uLL, 0xF8uLL, 0x10000406AFDB319uLL);
  self->bufferDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->renderPipelineDistribution = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040C89A4E27uLL);
  self->computePipelineDistribution = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  self->commandBufferDispatchDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->computeEncoderDispatchDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->samplerDistribution = malloc_type_calloc(1uLL, 0x2308uLL, 0x10000405F8ED335uLL);
  self->depthStateDistribution = malloc_type_calloc(1uLL, 0x24uLL, 0x10000408AA14F5FuLL);
  self->frontFaceStencilStateDistribution = malloc_type_calloc(1uLL, 0x300uLL, 0x1000040C91E451AuLL);
  self->backFaceStencilStateDistribution = malloc_type_calloc(1uLL, 0x300uLL, 0x1000040C91E451AuLL);
  self->depthClipModeClampDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->commandBufferDrawCallDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->renderEncoderDrawCallDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->commandBufferBlitDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->blitEncoderBlitDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->commandBufferMemoryBarrierDistribution = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
  self->kernelDistribution = malloc_type_calloc(1uLL, 0x60uLL, 0x10000402D9D9CE9uLL);
  self->anisoClippedCounts = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  self->_isGLMTL = 0;
}

- (void)setTimerInterval:(double)a3
{
  timer = self->_timer;
  v5 = dispatch_time(0, 5000000000);

  dispatch_source_set_timer(timer, v5, (a3 * 1000000000.0), 0x5F5E100uLL);
}

- (MTLTelemetryDevice)initWithBaseObject:(id)a3 parent:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = MTLTelemetryDevice;
  v4 = [(MTLToolsDevice *)&v15 initWithBaseObject:a3 parent:a4];
  if (v4)
  {
    NSLog(&cfstr_STelemetryDevi.isa, "[MTLTelemetryDevice initWithBaseObject:parent:]");
    snprintf(__str, 0x400uLL, "telemetry::%s", [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")]);
    *(v4 + 104) = os_log_create("com.apple.Metal", __str);
    initLogMode();
    [v4 initDistributions];
    *(v4 + 91) = dispatch_queue_create("com.apple.Metal.telemetryQ", 0);
    mach_timebase_info(v4 + 92);
    LODWORD(v5) = *(v4 + 184);
    LODWORD(v6) = *(v4 + 185);
    *(v4 + 93) = v5 / v6 / 1000000000.0;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MetalTelemetryInterval", @"com.apple.Metal", &keyExistsAndHasValidFormat);
    if (AppIntegerValue <= 0 || keyExistsAndHasValidFormat == 0)
    {
      v9 = 60.0;
    }

    else
    {
      v9 = AppIntegerValue;
    }

    *(v4 + 94) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 91));
    [v4 setTimerInterval:v9];
    v10 = *(v4 + 94);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__MTLTelemetryDevice_initWithBaseObject_parent___block_invoke;
    handler[3] = &unk_2787B4A48;
    handler[4] = v4;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(*(v4 + 94));
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setGLMode:(BOOL)a3
{
  queue = self->queue;
  if (queue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __32__MTLTelemetryDevice_setGLMode___block_invoke;
    v5[3] = &unk_2787B4A98;
    v6 = a3;
    v5[4] = self;
    dispatch_sync(queue, v5);
  }
}

uint64_t __32__MTLTelemetryDevice_setGLMode___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    *(*(result + 32) + 760) = 1;
  }

  return result;
}

- (void)emitFeatureQueryUsage
{
  v23 = *MEMORY[0x277D85DE8];
  p_supportQuery = &self->supportQuery;
  v4 = MEMORY[0x277CD7168];
  if (self->supportQuery.featureSetCount.__table_.__size_)
  {
    v5 = [MEMORY[0x277CCAB68] stringWithString:{@"FeatureSet, "}];
    for (i = p_supportQuery->featureSetCount.__table_.__first_node_.__next_; i; i = *i)
    {
      if (i[39] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(i + 2), *(i + 3));
      }

      else
      {
        v19 = *(i + 16);
      }

      v7 = *(i + 10);
      *v20 = *(i + 10);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v19;
      }

      else
      {
        v8 = v19.__r_.__value_.__r.__words[0];
      }

      [v5 appendFormat:@"%s=%u, ", v8, v7];
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    if (*v4)
    {
      if (*v4 != 1)
      {
        goto LABEL_17;
      }

      printf("\n\n%s", [v5 UTF8String]);
    }

    telemetryLog = self->_telemetryLog;
    if (os_log_type_enabled(telemetryLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 UTF8String];
      LODWORD(v19.__r_.__value_.__l.__data_) = 136315138;
      *(v19.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&dword_22E0FF000, telemetryLog, OS_LOG_TYPE_DEFAULT, "%s", &v19, 0xCu);
    }
  }

LABEL_17:
  count = p_supportQuery->texSampleCount.count;
  if (count)
  {
    if (*v4)
    {
      if (*v4 != 1)
      {
        goto LABEL_26;
      }

      printf("\n\nTextureSampleCountQueries, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u", p_supportQuery->texSampleCount.min, p_supportQuery->texSampleCount.max, (p_supportQuery->texSampleCount.total / count), p_supportQuery->texSampleCount.total, count);
    }

    v12 = self->_telemetryLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      min = p_supportQuery->texSampleCount.min;
      max = p_supportQuery->texSampleCount.max;
      v15 = p_supportQuery->texSampleCount.count;
      total = p_supportQuery->texSampleCount.total;
      if (v15)
      {
        v17 = (total / v15);
      }

      else
      {
        v17 = 0.0;
      }

      LODWORD(v19.__r_.__value_.__l.__data_) = 67110144;
      HIDWORD(v19.__r_.__value_.__r.__words[0]) = min;
      LOWORD(v19.__r_.__value_.__r.__words[1]) = 1024;
      *(&v19.__r_.__value_.__r.__words[1] + 2) = max;
      HIWORD(v19.__r_.__value_.__r.__words[1]) = 2048;
      *&v19.__r_.__value_.__r.__words[2] = v17;
      *v20 = 2048;
      *&v20[2] = total;
      v21 = 1024;
      v22 = v15;
      _os_log_impl(&dword_22E0FF000, v12, OS_LOG_TYPE_DEFAULT, "TextureSampleCountQueries, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u", &v19, 0x28u);
    }
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)emitTelemetry
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD7168];
  v4 = *MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (v4 != 1)
    {
      goto LABEL_7;
    }

    printf("\n\nBeginMetalTelemetry");
  }

  v5 = [(MTLTelemetryDevice *)self telemetryLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.min) = 0;
    _os_log_impl(&dword_22E0FF000, v5, OS_LOG_TYPE_DEFAULT, "BeginMetalTelemetry", &buf, 2u);
  }

  v4 = *v3;
LABEL_7:
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_18;
    }

    if (self->_isGLMTL)
    {
      v6 = "GLonMetal";
    }

    else
    {
      v6 = "Metal";
    }

    printf("\n\nAPI, %s", v6);
  }

  v7 = [(MTLTelemetryDevice *)self telemetryLog];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isGLMTL)
    {
      v8 = "GLonMetal";
    }

    else
    {
      v8 = "Metal";
    }

    buf.min = 136315138;
    *&buf.max = v8;
    _os_log_impl(&dword_22E0FF000, v7, OS_LOG_TYPE_DEFAULT, "API, %s", &buf, 0xCu);
  }

LABEL_18:
  [(MTLTelemetryDevice *)self emitFeatureQueryUsage];
  emitBufferDistribution(self, self->bufferDistribution);
  std::unordered_map<MTLPixelFormat,MTLTelemetryTextureDistribution>::unordered_map(v19, &self->textureMap);
  emitTextureDistribution(self, v19);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v19);
  emitEncoderDistribution(self, self->encoderDistribution);
  parallellRenderEncoderDistribution = self->parallellRenderEncoderDistribution;
  if (parallellRenderEncoderDistribution->count)
  {
    v10 = *&parallellRenderEncoderDistribution->min;
    *&buf.count = *&parallellRenderEncoderDistribution->count;
    *&buf.min = v10;
    emitParallellRenderEncoderDistribution(self, &buf);
  }

  std::unordered_map<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>::unordered_map(v18, &self->renderTargetMap);
  emitRenderTargetDistribution(self, v18);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v18);
  emitDrawDistribution(self, self->drawDistribution);
  std::unordered_map<MTLPixelFormat,MTLTelemetryBlitDistribution>::unordered_map(v17, &self->blitMap);
  emitBlitDistribution(self, v17);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v17);
  emitDispatchDistribution(self, self->dispatchDistribution);
  std::unordered_map<unsigned int,MTLTelemetryRenderPipelineUsageRec>::unordered_map(v16, &self->renderPipeUsageMap);
  std::unordered_map<unsigned int,MTLTelemetryRenderFuncUsageRec>::unordered_map(v15, &self->renderFuncUsageMap);
  emitRenderPipelineUsage(self, v16, v15);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v15);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v16);
  emitRenderPipelineStats(self, &self->vtxStatDistributionMap, &self->fragStatDistributionMap, self->renderPipelineDistribution);
  std::unordered_map<unsigned int,MTLTelemetryComputePipelineUsageRec>::unordered_map(v14, &self->computePipeUsageMap);
  std::unordered_map<unsigned int,MTLTelemetryKernelUsageRec>::unordered_map(v13, &self->kernelUsageMap);
  emitComputePipelineUsage(self, v14, v13);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v13);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v14);
  emitComputePipelineStats(self, &self->computeStatDistributionMap, &self->computePipelineDistribution->var0);
  emitSamplerDistribution(self, self->samplerDistribution);
  emitDepthStencilDistribution(self, self->depthStateDistribution, self->frontFaceStencilStateDistribution, self->backFaceStencilStateDistribution);
  emitRenderPassAttributes(self, self->depthClipModeClampDistribution);
  emitKernelTelemetry(self);
  emitAnisoClippedCounts(self, self->anisoClippedCounts);
  if (*v3)
  {
    if (*v3 != 1)
    {
      goto LABEL_25;
    }

    printf("\n\nEndMetalTelemetry");
  }

  v11 = [(MTLTelemetryDevice *)self telemetryLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.min) = 0;
    _os_log_impl(&dword_22E0FF000, v11, OS_LOG_TYPE_DEFAULT, "EndMetalTelemetry", &buf, 2u);
  }

LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)startTimerWithInterval:(double)a3
{
  queue = self->queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__MTLTelemetryDevice_startTimerWithInterval___block_invoke;
  v5[3] = &unk_2787B4A48;
  v5[4] = self;
  self->_timer = createTimerWithInterval(queue, v5, a3);
}

- (id)newCommandQueue
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v4 = result;
    v5 = [(MTLToolsCommandQueue *)[MTLTelemetryCommandQueue alloc] initWithBaseObject:result parent:self];

    return v5;
  }

  return result;
}

- (id)newCommandQueueWithMaxCommandBufferCount:(unint64_t)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsCommandQueue *)[MTLTelemetryCommandQueue alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (id)newCommandQueueWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsCommandQueue *)[MTLTelemetryCommandQueue alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapTextureSizeAndAlignWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  v5 = [v4 heapTextureSizeAndAlignWithDescriptor:a3];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)heapBufferSizeAndAlignWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  v7 = [v6 heapBufferSizeAndAlignWithLength:a3 options:a4];
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (id)newHeapWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetryHeap alloc] initWithHeap:result descriptor:a3 device:self];

    return v7;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)a3 options:(unint64_t)a4
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v7 = result;
    v8 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self options:a4];

    return v8;
  }

  return result;
}

- (id)newBufferWithBytes:(const void *)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v8 = result;
    v9 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self options:a5];

    return v9;
  }

  return result;
}

- (id)newBufferWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 options:(unint64_t)a5 deallocator:(id)a6
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v10 = result;
    v11 = [[MTLTelemetryBuffer alloc] initWithBuffer:result device:self bytes:a3 options:a5];

    return v11;
  }

  return result;
}

- (id)newBufferWithDescriptor:(id)a3
{
  v5 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a3 contents];
  v8 = [MTLTelemetryBuffer alloc];
  if (v7)
  {
    v9 = -[MTLTelemetryBuffer initWithBuffer:device:bytes:options:](v8, "initWithBuffer:device:bytes:options:", v6, self, [a3 contents], objc_msgSend(a3, "resourceOptions"));
  }

  else
  {
    v9 = -[MTLTelemetryBuffer initWithBuffer:device:options:](v8, "initWithBuffer:device:options:", v6, self, [a3 resourceOptions]);
  }

  v10 = v9;

  return v10;
}

- (id)newDepthStencilStateWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetryDepthStencilState alloc] initWithBaseDepthStencilState:result device:self descriptor:a3];

    return v7;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self descriptor:a3];

    return v7;
  }

  return result;
}

- (id)newTextureWithDescriptor:(id)a3 iosurface:(__IOSurface *)a4 plane:(unint64_t)a5
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v9 = result;
    v10 = [[MTLTelemetryTexture alloc] initWithBaseTexture:result device:self descriptor:a3 plane:a5];

    return v10;
  }

  return result;
}

- (id)newSamplerStateWithDescriptor:(id)a3
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v6 = result;
    v7 = [[MTLTelemetrySamplerState alloc] initWithBaseSamplerState:result device:self descriptor:a3];

    return v7;
  }

  return result;
}

- (id)_newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v14 = 0;
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = v9;
  if (a5)
  {
    *a5 = v14;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = [MTLTelemetryRenderPipelineState alloc];
  v12 = [(MTLTelemetryRenderPipelineState *)v11 initWithPipelineState:v10 reflection:v14 parent:self descriptor:a3];

  return v12;
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__MTLTelemetryDevice_newRenderPipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3AE0;
  v4[4] = a4;
  [(MTLTelemetryDevice *)self _newRenderPipelineStateWithDescriptor:a3 options:0x20000 completionHandler:v4];
}

- (void)newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__MTLTelemetryDevice_newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3AE0;
  v5[4] = a5;
  [(MTLTelemetryDevice *)self _newRenderPipelineStateWithDescriptor:a3 options:a4 & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newRenderPipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = [(MTLToolsDevice *)self unwrapMTLRenderPipelineDescriptor:?];
  v10 = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__MTLTelemetryDevice__newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B4AC0;
  v11[4] = self;
  v11[5] = a3;
  v11[6] = a5;
  [v10 newRenderPipelineStateWithDescriptor:v9 options:a4 | 0x40000 completionHandler:v11];
}

void __86__MTLTelemetryDevice__newRenderPipelineStateWithDescriptor_options_completionHandler___block_invoke(void *a1, MTLTelemetryRenderPipelineState *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = [[MTLTelemetryRenderPipelineState alloc] initWithPipelineState:a2 reflection:a3 parent:a1[4] descriptor:a1[5]];
  }

  v4 = a2;
  (*(a1[6] + 16))();
}

- (id)_newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v14 = 0;
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = v9;
  if (a5)
  {
    *a5 = v14;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = [MTLTelemetryComputePipelineState alloc];
  v12 = [(MTLTelemetryComputePipelineState *)v11 initWithComputePipelineState:v10 reflection:v14 parent:self descriptor:a3];

  return v12;
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__MTLTelemetryDevice_newComputePipelineStateWithDescriptor_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = a4;
  [(MTLTelemetryDevice *)self _newComputePipelineStateWithDescriptor:a3 options:0x20000 completionHandler:v4];
}

- (void)newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__MTLTelemetryDevice_newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3B58;
  v5[4] = a5;
  [(MTLTelemetryDevice *)self _newComputePipelineStateWithDescriptor:a3 options:a4 & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newComputePipelineStateWithDescriptor:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = [a3 copy];
  v9 = [(MTLToolsDevice *)self unwrapMTLComputePipelineDescriptor:v8];
  v10 = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__MTLTelemetryDevice__newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B4AE8;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = a5;
  [v10 newComputePipelineStateWithDescriptor:v9 options:a4 | 0x40000 completionHandler:v11];
}

void __87__MTLTelemetryDevice__newComputePipelineStateWithDescriptor_options_completionHandler___block_invoke(void *a1, MTLTelemetryComputePipelineState *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = [[MTLTelemetryComputePipelineState alloc] initWithComputePipelineState:a2 reflection:a3 parent:a1[4] descriptor:a1[5]];
  }

  v4 = a2;
  (*(a1[6] + 16))();
}

- (id)_newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 reflection:(id *)a5 error:(id *)a6
{
  v15 = 0;
  v9 = [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = v9;
  if (a5)
  {
    *a5 = v15;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = objc_opt_new();
  [v11 setComputeFunction:a3];
  v12 = [MTLTelemetryComputePipelineState alloc];
  v13 = [(MTLTelemetryComputePipelineState *)v12 initWithComputePipelineState:v10 reflection:v15 parent:self descriptor:v11];

  return v13;
}

- (void)newComputePipelineStateWithFunction:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__MTLTelemetryDevice_newComputePipelineStateWithFunction_completionHandler___block_invoke;
  v4[3] = &unk_2787B3B58;
  v4[4] = a4;
  [(MTLTelemetryDevice *)self _newComputePipelineStateWithFunction:a3 options:0x20000 completionHandler:v4];
}

- (void)newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__MTLTelemetryDevice_newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v5[3] = &unk_2787B3B58;
  v5[4] = a5;
  [(MTLTelemetryDevice *)self _newComputePipelineStateWithFunction:a3 options:a4 & 0xFFFFFFFFFFFDFFFFLL completionHandler:v5];
}

- (void)_newComputePipelineStateWithFunction:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a3 baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__MTLTelemetryDevice__newComputePipelineStateWithFunction_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B4AE8;
  v11[4] = a3;
  v11[5] = self;
  v11[6] = a5;
  [v9 newComputePipelineStateWithFunction:v10 options:a4 | 0x40000 completionHandler:v11];
}

void __85__MTLTelemetryDevice__newComputePipelineStateWithFunction_options_completionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = objc_opt_new();
    [v6 setComputeFunction:a1[4]];
    v7 = [[MTLTelemetryComputePipelineState alloc] initWithComputePipelineState:a2 reflection:a3 parent:a1[5] descriptor:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(a1[6] + 16))();
}

- (BOOL)supportsFeatureSet:(unint64_t)a3
{
  if (a3 > 0x12)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_2787B4B08[a3];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  v10 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->supportQuery.featureSetCount.__table_.__bucket_list_.__ptr_, __p);
  ++*(v6 + 10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (BOOL)supportsTextureSampleCount:(unint64_t)a3
{
  if (a3)
  {
    count = self->supportQuery.texSampleCount.count;
    if (count)
    {
      if (self->supportQuery.texSampleCount.max < a3)
      {
        self->supportQuery.texSampleCount.max = a3;
      }

      if (self->supportQuery.texSampleCount.min <= a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      self->supportQuery.texSampleCount.max = a3;
    }

    self->supportQuery.texSampleCount.min = a3;
LABEL_9:
    self->supportQuery.texSampleCount.total += a3;
    self->supportQuery.texSampleCount.count = count + 1;
  }

  v5 = [(MTLToolsObject *)self baseObject];

  return [v5 supportsTextureSampleCount:a3];
}

- (id).cxx_construct
{
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 76) = 1065353216;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 86) = 1065353216;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 98) = 1065353216;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 108) = 1065353216;
  *(self + 472) = 0u;
  *(self + 488) = 0u;
  *(self + 126) = 1065353216;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 136) = 1065353216;
  *(self + 35) = 0u;
  *(self + 36) = 0u;
  *(self + 148) = 1065353216;
  *(self + 648) = 0u;
  *(self + 664) = 0u;
  *(self + 170) = 1065353216;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 200) = 1065353216;
  return self;
}

@end