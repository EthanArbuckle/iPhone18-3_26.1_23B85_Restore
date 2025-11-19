@interface BWCoreMotionMetadataSourceNode
+ (int)extractBWCoreMotionMetadataFromBlockBuffer:(OpaqueCMBlockBuffer *)a3 intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)a4;
+ (int)extractBWCoreMotionMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)a3 intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)a4;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (BWCoreMotionMetadataSourceNode)initWithBufferGenerationRate:(int)a3 samplesPerBuffer:(int)a4;
- (void)_emitMetadataSampleBuffer;
- (void)dealloc;
@end

@implementation BWCoreMotionMetadataSourceNode

- (BOOL)start:(id *)a3
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__BWCoreMotionMetadataSourceNode_start___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

uint64_t __40__BWCoreMotionMetadataSourceNode_start___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = result;
    memset(v6, 0, 28);
    if (*(v1 + 140) >= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = (*(v1 + 152) + v3);
        *v5 = 0u;
        v5[1] = 0u;
        v5[2] = *v6;
        *(v5 + 44) = *&v6[12];
        ++v4;
        v1 = *(result + 32);
        v3 += 60;
      }

      while (v4 < *(v1 + 140));
    }

    *(v1 + 160) = 0;
    [*(*(result + 32) + 16) makeConfiguredFormatLive];
    *(*(v2 + 32) + 144) = 1;
    return [*(*(v2 + 32) + 128) setDeviceMotionCallback:cmmsn_deviceMotionCallback info:*(v2 + 32) interval:1 fsync:1.0 / (*(*(v2 + 32) + 140) * *(*(v2 + 32) + 136))];
  }

  return result;
}

- (BOOL)stop:(id *)a3
{
  if (self->_running)
  {
    block[7] = v3;
    block[8] = v4;
    [(CMMotionManager *)self->_motionManager setDeviceMotionCallback:0 info:0 interval:0 fsync:0.0];
    emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__BWCoreMotionMetadataSourceNode_stop___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(emitSamplesDispatchQueue, block);
  }

  return 1;
}

uint64_t __39__BWCoreMotionMetadataSourceNode_stop___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160))
  {
    [(BWCoreMotionMetadataSourceNode *)v2 _emitMetadataSampleBuffer];
    v2 = *(a1 + 32);
  }

  result = [*(v2 + 16) markEndOfLiveOutput];
  *(*(a1 + 32) + 144) = 0;
  return result;
}

+ (int)extractBWCoreMotionMetadataFromBlockBuffer:(OpaqueCMBlockBuffer *)a3 intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)a4
{
  if (!a4)
  {
    [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:? intoNativeEndianSampleData:?];
    return v13;
  }

  if (!a3)
  {
    [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:? intoNativeEndianSampleData:?];
    return v13;
  }

  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a3, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    v6 = DataPointer;
    +[BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:];
  }

  else if (lengthAtOffsetOut <= 0x43)
  {
    +[BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:];
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = *(dataPointerOut + 24);
    v8 = *(dataPointerOut + 40);
    v9 = *(dataPointerOut + 8);
    *(&a4->var6 + 4) = *(dataPointerOut + 52);
    *&a4->var3 = v7;
    *&a4->var5 = v8;
    *&a4->var0 = v9;
    a4->var1 = 0;
    if ((a4->var0 & 0x2000000) != 0)
    {
      v6 = 0;
      *&a4->var6 = bswap64(*&a4->var6);
      LODWORD(a4->var9) = bswap32(LODWORD(a4->var9));
      *&a4->var2 = vrev64q_s8(*&a4->var2);
      *&a4->var4 = vrev64q_s8(*&a4->var4);
      *&a4->var7 = vrev32_s8(*&a4->var7);
    }
  }

  return v6;
}

+ (int)extractBWCoreMotionMetadataFromSampleBuffer:(opaqueCMSampleBuffer *)a3 intoNativeEndianSampleData:(BWCoreMotionMetadataSampleData *)a4
{
  DataBuffer = CMSampleBufferGetDataBuffer(a3);

  return [BWCoreMotionMetadataSourceNode extractBWCoreMotionMetadataFromBlockBuffer:DataBuffer intoNativeEndianSampleData:a4];
}

- (BWCoreMotionMetadataSourceNode)initWithBufferGenerationRate:(int)a3 samplesPerBuffer:(int)a4
{
  if (!a3)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Need a non-zero buffer generation rate";
    goto LABEL_13;
  }

  if (!a4)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Need a non-zero samplesPerBuffer";
LABEL_13:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

  v21.receiver = self;
  v21.super_class = BWCoreMotionMetadataSourceNode;
  v6 = [(BWNode *)&v21 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69634D0]) initUsing6AxisSensorFusion];
    v6->_motionManager = v7;
    if (-[CMMotionManager isDeviceMotionAvailable](v7, "isDeviceMotionAvailable") && -[CMMotionManager isAccelerometerAvailable](v6->_motionManager, "isAccelerometerAvailable") && (v8 = *MEMORY[0x1E6962908], v9 = *MEMORY[0x1E6960338], v18[0] = *MEMORY[0x1E6960348], v18[1] = v9, v10 = *MEMORY[0x1E6960260], v19[0] = v8, v19[1] = v10, v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2], v11 = objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v20, 1), !CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v11, &v6->_boxedMetadataFormatDescription)) && (LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors(), v6->_localIDOfCoreMotionMetadata_BE = bswap32(LocalIDForMetadataIdentifyingFactors), LocalIDForMetadataIdentifyingFactors))
    {
      v6->_sampleDataForBuffer = malloc_type_malloc(60 * a4, 0x1000040C2DCA394uLL);
      v6->_emitSamplesDispatchQueue = FigDispatchQueueCreateWithPriority();
      v14 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v6];
      [(BWNodeOutput *)v14 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v6->_boxedMetadataFormatDescription]];
      [(BWNode *)v6 addOutput:v14];

      v6->_bufferGenerationRate = a3;
      v6->_samplesPerBuffer = a4;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  boxedMetadataFormatDescription = self->_boxedMetadataFormatDescription;
  if (boxedMetadataFormatDescription)
  {
    CFRelease(boxedMetadataFormatDescription);
  }

  free(self->_sampleDataForBuffer);

  v4.receiver = self;
  v4.super_class = BWCoreMotionMetadataSourceNode;
  [(BWNode *)&v4 dealloc];
}

- (void)_emitMetadataSampleBuffer
{
  if (!a1)
  {
    return;
  }

  sampleBufferOut = 0;
  blockBufferOut = 0;
  v2 = 68 * *(a1 + 160);
  v3 = malloc_type_malloc(v2, 0x68D099D8uLL);
  if (*(a1 + 160) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 + 8;
    do
    {
      *(v7 - 2) = 1140850688;
      *(v7 - 1) = *(a1 + 176);
      v8 = (*(a1 + 152) + v4);
      v10 = v8[1];
      v9 = v8[2];
      v11 = *v8;
      *(v7 + 44) = *(v8 + 44);
      v7[1] = v10;
      v7[2] = v9;
      *v7 = v11;
      v7 = (v7 + 68);
      v6 += 68;
      ++v5;
      v4 += 60;
    }

    while (v5 < *(a1 + 160));
  }

  *(a1 + 160) = 0;
  v12 = *MEMORY[0x1E695E480];
  if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v3, v2, *MEMORY[0x1E695E488], 0, 0, v6, 0, &blockBufferOut))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
LABEL_17:
    FigDebugAssert3();
    goto LABEL_10;
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  CMTimeMakeWithSeconds(&__dst.presentationTimeStamp, *(*(a1 + 152) + 8), 1000000000);
  DataLength = CMBlockBufferGetDataLength(blockBufferOut);
  v14 = *(a1 + 168);
  v16 = DataLength;
  if (CMSampleBufferCreate(v12, blockBufferOut, 1u, 0, 0, v14, 1, 1, &__dst, 1, &v16, &sampleBufferOut))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    goto LABEL_17;
  }

  v15 = [a1 output];
  [v15 emitSampleBuffer:sampleBufferOut];
LABEL_10:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:intoNativeEndianSampleData:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:(_DWORD *)a1 intoNativeEndianSampleData:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

+ (uint64_t)extractBWCoreMotionMetadataFromBlockBuffer:(_DWORD *)a1 intoNativeEndianSampleData:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end