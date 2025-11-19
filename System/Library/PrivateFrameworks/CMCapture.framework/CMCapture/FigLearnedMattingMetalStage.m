@interface FigLearnedMattingMetalStage
- (FigLearnedMattingMetalStage)initWithMetalContext:(id)a3;
- (id)_runKernel:(void *)a3 sourceTexture:(void *)a4 destinationTexture:(__int128 *)a5 gridSize:(void *)a6 setParamsBlock:;
- (id)_textureFromPixelBuffer:(uint64_t)a3 usage:;
- (int)clearBuffer:(__CVBuffer *)a3;
- (int)createTileFrom:(FigLearnedMattingMetalStage *)self to:(SEL)a2 withStart:(__CVBuffer *)a3 withScale:(__CVBuffer *)a4 outCommandBuffer:(id *)a5;
- (int)createTileFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withStart:(id)a5 commandBuffer:;
- (int)pasteTileFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withStart:(id *)a5 withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:;
- (uint64_t)_compileShaders;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation FigLearnedMattingMetalStage

- (FigLearnedMattingMetalStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = FigLearnedMattingMetalStage;
  v6 = [(FigLearnedMattingMetalStage *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_2;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  if (!*(v7 + 8))
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v10 andOptionalCommandQueue:0];
    v12 = *(v7 + 8);
    *(v7 + 8) = v11;

    if (!*(v7 + 8))
    {
      [FigLearnedMattingMetalStage initWithMetalContext:];
      goto LABEL_11;
    }
  }

  if ([(FigLearnedMattingMetalStage *)v7 _compileShaders])
  {
    [FigLearnedMattingMetalStage initWithMetalContext:];
    goto LABEL_11;
  }

  v16 = *MEMORY[0x1E6966000];
  v17 = &unk_1F2242AA8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = *MEMORY[0x1E695E480];
  v15 = [*(v7 + 8) device];
  LODWORD(v13) = CVMetalTextureCacheCreate(v14, v13, v15, 0, (v7 + 40));

  if (v13)
  {
    [FigLearnedMattingMetalStage initWithMetalContext:];
LABEL_11:
    v8 = 0;
    goto LABEL_3;
  }

LABEL_2:
  v8 = v7;
LABEL_3:

  return v8;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = FigLearnedMattingMetalStage;
  [(FigLearnedMattingMetalStage *)&v4 dealloc];
}

- (int)clearBuffer:(__CVBuffer *)a3
{
  if (!a3)
  {
    [FigLearnedMattingMetalStage clearBuffer:?];
    return v11;
  }

  v4 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:a3 usage:2];
  if (!v4)
  {
    [FigLearnedMattingMetalStage clearBuffer:?];
    return v11;
  }

  v5 = v4;
  v6 = [v4 width];
  v7 = [v5 height];
  clearTextureKernel = self->_clearTextureKernel;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v12 = 1;
  v9 = [(FigLearnedMattingMetalStage *)self _runKernel:v5 sourceTexture:0 destinationTexture:&v11 gridSize:0 setParamsBlock:?];
  [v9 commit];

  return 0;
}

- (int)createTileFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withStart:(id)a5 commandBuffer:
{
  v6 = a5;
  v10 = v5;
  if (!a3)
  {
    [FigLearnedMattingMetalStage createTileFrom:v23 to:? withStart:? commandBuffer:?];
LABEL_13:
    v19 = v23[0];
    goto LABEL_7;
  }

  if (!a4)
  {
    [FigLearnedMattingMetalStage createTileFrom:v23 to:? withStart:? commandBuffer:?];
    goto LABEL_13;
  }

  v11 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:a3 usage:1];
  if (!v11)
  {
    [FigLearnedMattingMetalStage createTileFrom:v23 to:? withStart:? commandBuffer:?];
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:a4 usage:2];
  if (!v13)
  {
    [FigLearnedMattingMetalStage createTileFrom:v12 to:v23 withStart:? commandBuffer:?];
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 width];
  v16 = [v14 height];
  v17 = [v10 blitCommandEncoder];
  if (!v17)
  {
    [FigLearnedMattingMetalStage createTileFrom:v14 to:v12 withStart:v23 commandBuffer:?];
    goto LABEL_13;
  }

  v18 = v17;
  memset(v23, 0, sizeof(v23));
  v22[0] = v6;
  v22[1] = HIWORD(v6);
  v22[2] = 0;
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = 1;
  [v17 copyFromTexture:v12 sourceSlice:0 sourceLevel:0 sourceOrigin:v22 sourceSize:v21 toTexture:v14 destinationSlice:0 destinationLevel:0 destinationOrigin:v23];
  [v18 endEncoding];

  v19 = 0;
LABEL_7:

  return v19;
}

- (int)createTileFrom:(FigLearnedMattingMetalStage *)self to:(SEL)a2 withStart:(__CVBuffer *)a3 withScale:(__CVBuffer *)a4 outCommandBuffer:(id *)a5
{
  if (!a3)
  {
    [FigLearnedMattingMetalStage createTileFrom:? to:? withStart:? withScale:? outCommandBuffer:?];
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = a4;
  if (!a4)
  {
    [FigLearnedMattingMetalStage createTileFrom:? to:? withStart:? withScale:? outCommandBuffer:?];
LABEL_14:
    v12 = 0;
LABEL_17:
    v16 = 0;
    v19 = 0;
    v21 = v23;
    goto LABEL_9;
  }

  if (!a5)
  {
    [FigLearnedMattingMetalStage createTileFrom:? to:? withStart:? withScale:? outCommandBuffer:?];
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v5;
  v12 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:a3 usage:1];
  if (!v12)
  {
    [FigLearnedMattingMetalStage createTileFrom:? to:? withStart:? withScale:? outCommandBuffer:?];
    v7 = 0;
    goto LABEL_17;
  }

  v13 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:v7 usage:2];
  v7 = v13;
  if (!v13)
  {
    [FigLearnedMattingMetalStage createTileFrom:? to:? withStart:? withScale:? outCommandBuffer:?];
    goto LABEL_17;
  }

  v14 = [(__CVBuffer *)v13 width];
  v15 = [(__CVBuffer *)v7 height];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__FigLearnedMattingMetalStage_createTileFrom_to_withStart_withScale_outCommandBuffer___block_invoke;
  aBlock[3] = &__block_descriptor_48_e36_v16__0___MTLComputeCommandEncoder__8l;
  aBlock[4] = v10;
  aBlock[5] = v9;
  v16 = _Block_copy(aBlock);
  createTileWithScaleKernel = self->_createTileWithScaleKernel;
  *&v23 = v14;
  *(&v23 + 1) = v15;
  v24 = 1;
  v18 = [(FigLearnedMattingMetalStage *)self _runKernel:v12 sourceTexture:v7 destinationTexture:&v23 gridSize:v16 setParamsBlock:?];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    v21 = 0;
    *a5 = v19;
  }

  else
  {
    v21 = 0;
  }

LABEL_9:

  return v21;
}

void __86__FigLearnedMattingMetalStage_createTileFrom_to_withStart_withScale_outCommandBuffer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setBytes:a1 + 32 length:8 atIndex:0];
  [v3 setBytes:a1 + 40 length:8 atIndex:1];
}

- (int)pasteTileFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 withStart:(id *)a5 withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:
{
  if (!a3)
  {
    [FigLearnedMattingMetalStage pasteTileFrom:? to:? withStart:? withNoOverlapStart:? withNoOverlapEnd:? outCommandBuffer:?];
    v8 = 0;
LABEL_11:
    v14 = 0;
LABEL_14:
    v17 = 0;
    v20 = 0;
    v21 = v24;
    goto LABEL_8;
  }

  v8 = a4;
  if (!a4)
  {
    [FigLearnedMattingMetalStage pasteTileFrom:? to:? withStart:? withNoOverlapStart:? withNoOverlapEnd:? outCommandBuffer:?];
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = a5;
  v14 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:a3 usage:1];
  if (!v14)
  {
    [FigLearnedMattingMetalStage pasteTileFrom:? to:? withStart:? withNoOverlapStart:? withNoOverlapEnd:? outCommandBuffer:?];
    v8 = 0;
    goto LABEL_14;
  }

  v8 = [(FigLearnedMattingMetalStage *)self _textureFromPixelBuffer:v8 usage:2];
  if (!v8)
  {
    [FigLearnedMattingMetalStage pasteTileFrom:? to:? withStart:? withNoOverlapStart:? withNoOverlapEnd:? outCommandBuffer:?];
    goto LABEL_14;
  }

  v15 = [v14 width];
  v16 = [v14 height];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__FigLearnedMattingMetalStage_pasteTileFrom_to_withStart_withNoOverlapStart_withNoOverlapEnd_outCommandBuffer___block_invoke;
  aBlock[3] = &__block_descriptor_44_e36_v16__0___MTLComputeCommandEncoder__8l;
  v27 = v12;
  v28 = v11;
  v29 = v10;
  v17 = _Block_copy(aBlock);
  pasteTileKernel = self->_pasteTileKernel;
  *&v24 = v15;
  *(&v24 + 1) = v16;
  v25 = 1;
  v19 = [(FigLearnedMattingMetalStage *)self _runKernel:v14 sourceTexture:v8 destinationTexture:&v24 gridSize:v17 setParamsBlock:?];
  v20 = v19;
  v21 = 0;
  if (v9 && v19)
  {
    v22 = v19;
    v21 = 0;
    *v9 = v20;
  }

LABEL_8:

  return v21;
}

void __111__FigLearnedMattingMetalStage_pasteTileFrom_to_withStart_withNoOverlapStart_withNoOverlapEnd_outCommandBuffer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setBytes:a1 + 32 length:4 atIndex:0];
  [v3 setBytes:a1 + 36 length:4 atIndex:1];
  [v3 setBytes:a1 + 40 length:4 atIndex:2];
}

- (void)finishProcessing
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CVMetalTextureCacheFlush(textureCache, 0);
  }
}

- (uint64_t)_compileShaders
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 8) computePipelineStateFor:@"clearTexture" constants:0];
  v3 = *(a1 + 32);
  *(a1 + 32) = v2;

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 8) computePipelineStateFor:@"createTileWithScale" constants:0];
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;

    if (*(a1 + 16))
    {
      v6 = [*(a1 + 8) computePipelineStateFor:@"pasteTile" constants:0];
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      if (*(a1 + 24))
      {
        return 0;
      }
    }
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_27();

  return FigSignalErrorAtGM();
}

- (id)_textureFromPixelBuffer:(uint64_t)a3 usage:
{
  if (!a1)
  {
    goto LABEL_6;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType == 1111970369)
  {
    v7 = MTLPixelFormatBGRA8Unorm;
    goto LABEL_9;
  }

  if (PixelFormatType == 1278226536)
  {
    v7 = MTLPixelFormatR16Float;
    goto LABEL_9;
  }

  if (PixelFormatType != 1278226488)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_12;
  }

  v7 = MTLPixelFormatR8Unorm;
LABEL_9:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  v16 = *MEMORY[0x1E6966010];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v17 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  image = 0;
  v13 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], *(a1 + 40), pixelBuffer, v12, v7, WidthOfPlane, HeightOfPlane, 0, &image);
  v8 = 0;
  if (!v13 && image)
  {
    v8 = CVMetalTextureGetTexture(image);
    CFRelease(image);
  }

LABEL_12:

  return v8;
}

- (id)_runKernel:(void *)a3 sourceTexture:(void *)a4 destinationTexture:(__int128 *)a5 gridSize:(void *)a6 setParamsBlock:
{
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = *(a1 + 8);
    v15 = a3;
    v16 = [v14 commandQueue];
    v17 = [v16 commandBuffer];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_runKernel_%@", v11];
    [v17 setLabel:v18];

    v19 = [v17 computeCommandEncoder];
    [v19 setComputePipelineState:v11];
    [v19 setTexture:v15 atIndex:0];

    if (v12)
    {
      [v19 setTexture:v12 atIndex:1];
    }

    if (v13)
    {
      v13[2](v13, v19);
    }

    v23[0] = [v11 threadExecutionWidth];
    v23[1] = [v11 maxTotalThreadsPerThreadgroup] / v23[0];
    v23[2] = 1;
    v21 = *a5;
    v22 = *(a5 + 2);
    [v19 dispatchThreads:&v21 threadsPerThreadgroup:v23];
    [v19 endEncoding];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (uint64_t)initWithMetalContext:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithMetalContext:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)clearBuffer:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)clearBuffer:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)createTileFrom:(_DWORD *)a3 to:withStart:commandBuffer:.cold.1(void *a1, void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_27();
  *a3 = FigSignalErrorAtGM();
}

- (void)createTileFrom:(void *)a1 to:(_DWORD *)a2 withStart:commandBuffer:.cold.2(void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  *a2 = FigSignalErrorAtGM();
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:commandBuffer:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:commandBuffer:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:commandBuffer:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:withScale:outCommandBuffer:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:withScale:outCommandBuffer:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:withScale:outCommandBuffer:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:withScale:outCommandBuffer:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createTileFrom:(_DWORD *)a1 to:withStart:withScale:outCommandBuffer:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)pasteTileFrom:(_DWORD *)a1 to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)pasteTileFrom:(_DWORD *)a1 to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)pasteTileFrom:(_DWORD *)a1 to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)pasteTileFrom:(_DWORD *)a1 to:withStart:withNoOverlapStart:withNoOverlapEnd:outCommandBuffer:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_27();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end