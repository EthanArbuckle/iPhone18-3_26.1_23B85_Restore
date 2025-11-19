@interface FIUIBreathingPetalRingMetalRenderer
- (CGPoint)ringCenter;
- (FIUIBreathingPetalRingMetalRenderer)initWithMetalKitView:(id)a3 petalColor:(int64_t)a4 numberOfPetals:(int64_t)a5 showBlurTrails:(BOOL)a6;
- (void)_clearCirclesInRange:(_NSRange)a3;
- (void)_createBuffers;
- (void)_loadTextures;
- (void)_setCircleAtIndex:(int64_t)a3 center:(CGPoint)a4 radius:(float)a5 blurriness:(float)a6 alpha:(float)a7;
- (void)_setupIndexes;
- (void)_setupProjectionMatrixForSize:(CGSize)a3;
- (void)_setupRenderPipeline;
- (void)_setupVertices;
- (void)_updateVertices;
- (void)drawInMTKView:(id)a3;
- (void)importDataFromPetalRingMetalRenderer:(id)a3;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
- (void)setNumberOfVisiblePetals:(int64_t)a3 showBlurTrails:(BOOL)a4;
- (void)setRingCenter:(CGPoint)a3;
- (void)setRingRadius:(float)a3;
@end

@implementation FIUIBreathingPetalRingMetalRenderer

- (FIUIBreathingPetalRingMetalRenderer)initWithMetalKitView:(id)a3 petalColor:(int64_t)a4 numberOfPetals:(int64_t)a5 showBlurTrails:(BOOL)a6
{
  v11 = a3;
  v21.receiver = self;
  v21.super_class = FIUIBreathingPetalRingMetalRenderer;
  v12 = [(FIUIBreathingPetalRingMetalRenderer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mtkView, a3);
    [(MTKView *)v13->_mtkView setColorPixelFormat:80];
    [(MTKView *)v13->_mtkView setClearColor:0.0, 0.0, 0.0, 0.0];
    v14 = [(MTKView *)v13->_mtkView device];
    device = v13->_device;
    v13->_device = v14;

    v16 = [(MTLDevice *)v13->_device newCommandQueue];
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = v16;

    v13->_petalColor = a4;
    v13->_numberOfPetals = a5;
    v13->_showBlurTrails = a6;
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _createBuffers];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _loadTextures];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupIndexes];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupVertices];
    [v11 bounds];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupProjectionMatrixForSize:v18, v19];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupRenderPipeline];
  }

  return v13;
}

- (void)_loadTextures
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:self->_device];
  v4 = *MEMORY[0x1E69743F0];
  v12[0] = *MEMORY[0x1E69743E8];
  v12[1] = v4;
  v5 = *MEMORY[0x1E6974410];
  v13[0] = MEMORY[0x1E695E118];
  v13[1] = v5;
  v12[2] = *MEMORY[0x1E69743F8];
  v13[2] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v7 = FIUIDeepBreathingGradientImageDataForPetalColor(self->_petalColor);
  v11 = 0;
  v8 = [v3 newTextureWithData:v7 options:v6 error:&v11];
  v9 = v11;
  circleGradient = self->_circleGradient;
  self->_circleGradient = v8;
}

- (void)_createBuffers
{
  self->_indexBuffer = [(MTLDevice *)self->_device newBufferWithLength:144 options:0];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setupIndexes
{
  v2 = ([(MTLBuffer *)self->_indexBuffer contents]+ 4);
  v3 = 24;
  v4 = 1;
  do
  {
    *(v2 - 2) = 0;
    *(v2 - 1) = v4;
    if (v4 == 24)
    {
      v4 = 1;
    }

    else
    {
      ++v4;
    }

    *v2 = v4;
    v2 += 3;
    --v3;
  }

  while (v3);
}

- (void)_setupProjectionMatrixForSize:(CGSize)a3
{
  v3 = a3.height / a3.width;
  LODWORD(v4) = 0;
  *(&v4 + 1) = 2.0 / (-v3 - v3);
  LODWORD(v5) = 0x80000000;
  *(&v5 + 1) = (v3 - v3) / (v3 + v3);
  *(&v5 + 1) = __PAIR64__(1.0, 0.5);
  *self->_anon_3b0 = xmmword_1E5DB1F10;
  *&self->_anon_3b0[16] = v4;
  *&self->_anon_3b0[32] = xmmword_1E5DB1F20;
  *&self->_anon_3b0[48] = v5;
}

- (void)_setupVertices
{
  [(FIUIBreathingPetalRingMetalRenderer *)self _maxPetalRingRadius];
  *&v3 = v3;
  [(FIUIBreathingPetalRingMetalRenderer *)self setRingRadius:v3];
  v4 = 0;
  *&self->_anon_220[8] = 0;
  v5 = &self->_anon_220[24];
  do
  {
    v6 = __sincosf_stret(v4 * 0.2618);
    *v5 = vmul_f32(__PAIR64__(LODWORD(v6.__sinval), LODWORD(v6.__cosval)), 0x3F0000003F000000);
    v5 += 2;
    ++v4;
  }

  while (v4 != 24);
}

- (void)_setupRenderPipeline
{
  v3 = objc_alloc_init(MEMORY[0x1E6974148]);
  [v3 setLabel:@"Petal Ring Pipeline"];
  v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.FitnessUI"];
  device = self->_device;
  v37 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v35 error:&v37];
  v6 = v37;
  v7 = [v5 newFunctionWithName:@"petalRingVertexShader"];
  v8 = [v5 newFunctionWithName:@"petalRingFragmentShader"];
  v9 = objc_alloc_init(MEMORY[0x1E69741E0]);
  v10 = [v9 attributes];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setFormat:29];

  v12 = [v9 attributes];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setOffset:0];

  v14 = [v9 attributes];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setBufferIndex:2];

  v16 = [v9 attributes];
  v17 = [v16 objectAtIndexedSubscript:1];
  [v17 setFormat:29];

  v18 = [v9 attributes];
  v19 = [v18 objectAtIndexedSubscript:1];
  [v19 setOffset:8];

  v20 = [v9 attributes];
  v21 = [v20 objectAtIndexedSubscript:1];
  [v21 setBufferIndex:2];

  v22 = [v9 layouts];
  v23 = [v22 objectAtIndexedSubscript:2];
  [v23 setStride:16];

  v24 = [v9 layouts];
  v25 = [v24 objectAtIndexedSubscript:2];
  [v25 setStepRate:1];

  v26 = [v9 layouts];
  v27 = [v26 objectAtIndexedSubscript:2];
  [v27 setStepFunction:1];

  [v3 setVertexDescriptor:v9];
  [v3 setVertexFunction:v7];
  [v3 setFragmentFunction:v8];
  v28 = [(MTKView *)self->_mtkView colorPixelFormat];
  v29 = [v3 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript:0];
  [v30 setPixelFormat:v28];

  v31 = self->_device;
  v36 = v6;
  v32 = [(MTLDevice *)v31 newRenderPipelineStateWithDescriptor:v3 error:&v36];
  v33 = v36;

  renderPipeline = self->_renderPipeline;
  self->_renderPipeline = v32;
}

- (void)importDataFromPetalRingMetalRenderer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    self->_numberOfVisiblePetals = [v4 numberOfVisiblePetals];
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    [v5 circleProperties];
    *&self[1]._anon_28[440] = 0;
    [v5 ringCenter];
    [(FIUIBreathingPetalRingMetalRenderer *)self setRingCenter:?];
    [v5 ringRadius];
    [(FIUIBreathingPetalRingMetalRenderer *)self setRingRadius:?];
    v6 = 0;
    v7 = v19;
    *&self[1]._anon_28[56] = v18;
    *&self[1]._anon_28[72] = v7;
    v8 = v21;
    *&self[1]._anon_28[88] = v20;
    *&self[1]._anon_28[104] = v8;
    v9 = v15;
    *&self[1]._uniforms.numberOfPetals = v14;
    *&self[1]._anon_28[8] = v9;
    v10 = v17;
    *&self[1]._anon_28[24] = v16;
    *&self[1]._anon_28[40] = v10;
    v11 = v13;
    *&self[1].super.isa = v12;
    *&self[1]._device = v11;
    do
    {
      *&self[1]._anon_28[v6 * 16 + 120] = v22[v6];
      ++v6;
    }

    while (v6 != 20);
  }
}

- (void)setNumberOfVisiblePetals:(int64_t)a3 showBlurTrails:(BOOL)a4
{
  v4 = a3;
  self->_numberOfVisiblePetals = a3;
  if (a4)
  {
    v6 = 10 - a3;
    [(FIUIBreathingPetalRingMetalRenderer *)self _clearCirclesInRange:a3, 10 - a3];
    v4 += 10;
  }

  else
  {
    v6 = 20 - a3;
  }

  [(FIUIBreathingPetalRingMetalRenderer *)self _clearCirclesInRange:v4, v6];
}

- (void)_clearCirclesInRange:(_NSRange)a3
{
  if (a3.location < a3.location + a3.length)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a3.length - 1);
    v5 = &self[1]._anon_28[16 * a3.location + 176];
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1E5DB1F40)));
      if (vuzp1_s16(v7, *v4.i8).u8[0])
      {
        *(v5 - 12) = 0;
      }

      if (vuzp1_s16(v7, *&v4).i8[2])
      {
        *(v5 - 8) = 0;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_1E5DB1F30)))).i32[1])
      {
        *(v5 - 4) = 0;
        *v5 = 0;
      }

      v3 += 4;
      v5 += 64;
    }

    while (((a3.length + 3) & 0xFFFFFFFFFFFFFFFCLL) != v3);
  }
}

- (void)setRingRadius:(float)a3
{
  if (!FIUIIsEqual(self->_ringRadius, a3))
  {
    self->_ringRadius = a3;

    [(FIUIBreathingPetalRingMetalRenderer *)self _updateVertices];
  }
}

- (void)setRingCenter:(CGPoint)a3
{
  y = a3.y;
  if (self->_ringCenter.x != a3.x || self->_ringCenter.y != a3.y)
  {
    x = a3.x;
    [(MTKView *)self->_mtkView bounds];
    v7.f64[0] = x;
    self->_ringCenter.x = x;
    self->_ringCenter.y = v6 - y;
    v7.f64[1] = v6 - y;
    *self->_ringCenterVector = vcvt_f32_f64(vaddq_f64(v7, v7));

    [(FIUIBreathingPetalRingMetalRenderer *)self _updateVertices];
  }
}

- (void)_setCircleAtIndex:(int64_t)a3 center:(CGPoint)a4 radius:(float)a5 blurriness:(float)a6 alpha:(float)a7
{
  y = a4.y;
  v8 = vmulq_f64(a4, xmmword_1E5DB1F50);
  *(&self[1].super.isa + a3) = vadd_f32(*self->_ringCenterVector, vcvt_f32_f64(v8));
  *v8.f64 = (a5 + a5) * (a5 + a5);
  *(v8.f64 + 1) = 1.0 / (a5 * a6);
  *&v8.f64[1] = a7;
  *&self[1]._anon_28[16 * a3 + 120] = v8;
}

- (void)_updateVertices
{
  if (_updateVertices_onceToken != -1)
  {
    [FIUIBreathingPetalRingMetalRenderer _updateVertices];
  }

  ringRadius = self->_ringRadius;
  [(FIUIBreathingPetalRingMetalRenderer *)self _maxPetalRingRadius];
  v5 = ringRadius / v4 * 1.05;
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v5 * 0.8;
  *&v6 = v6;
  [(MTKView *)self->_mtkView center];
  v7 = 0;
  v9.f64[1] = v8;
  v10 = vcvt_f32_f64(vdivq_f64(vsubq_f64(self->_ringCenter, v9), v9));
  *self->_anon_220 = v10;
  v11 = &self->_anon_220[16];
  do
  {
    v12 = __sincosf_stret(v7 * 0.2618);
    *v11 = vadd_f32(vmul_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v13), v10);
    v11 += 2;
    ++v7;
  }

  while (v7 != 24);
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B938];
  if (os_log_type_enabled(*MEMORY[0x1E696B938], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v16.width = width;
    v16.height = height;
    v10 = NSStringFromCGSize(v16);
    v11 = 138412546;
    v12 = v7;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1E5D0F000, v9, OS_LOG_TYPE_DEFAULT, "mktView:%@ drawableSizeWillChange: %{public}@", &v11, 0x16u);
  }

  [(FIUIBreathingPetalRingMetalRenderer *)self _setupProjectionMatrixForSize:width, height];
}

- (void)drawInMTKView:(id)a3
{
  v11 = a3;
  v4 = [(FIUIBreathingPetalRingMetalRenderer *)self stateUpdateBlock];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    showBlurTrails = self->_showBlurTrails;
    self->_uniforms.numberOfPetals = self->_numberOfPetals;
    self->_uniforms.showBlurTrails = showBlurTrails;
    *&self->_anon_28[96] = *&self[1]._anon_28[56];
    *&self->_anon_28[112] = *&self[1]._anon_28[72];
    *&self->_anon_28[128] = *&self[1]._anon_28[88];
    *&self->_anon_28[144] = *&self[1]._anon_28[104];
    *&self->_anon_28[32] = *&self[1]._uniforms.numberOfPetals;
    *&self->_anon_28[48] = *&self[1]._anon_28[8];
    *&self->_anon_28[64] = *&self[1]._anon_28[24];
    *&self->_anon_28[80] = *&self[1]._anon_28[40];
    *self->_anon_28 = *&self[1].super.isa;
    *&self->_anon_28[16] = *&self[1]._device;
    memcpy(&self->_anon_28[168], &self[1]._anon_28[120], 0x148uLL);
  }

  v7 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v7 setLabel:@"Drawable Command Buffer"];
  v8 = [v11 currentRenderPassDescriptor];
  if (v8)
  {
    v9 = [v7 renderCommandEncoderWithDescriptor:v8];
    [v9 setLabel:@"Drawable Render Encoder"];
    [v9 setRenderPipelineState:self->_renderPipeline];
    [v9 setVertexBytes:self->_anon_220 length:400 atIndex:2];
    [v9 setVertexBytes:self->_anon_3b0 length:64 atIndex:0];
    [v9 setFragmentBytes:&self->_uniforms length:512 atIndex:1];
    [v9 setFragmentTexture:self->_circleGradient atIndex:0];
    [v9 drawIndexedPrimitives:3 indexCount:72 indexType:0 indexBuffer:self->_indexBuffer indexBufferOffset:0];
    [v9 endEncoding];
    v10 = [v11 currentDrawable];
    [v7 presentDrawable:v10];
  }

  [v7 commit];
  [v7 waitUntilCompleted];
}

- (CGPoint)ringCenter
{
  x = self->_ringCenter.x;
  y = self->_ringCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end