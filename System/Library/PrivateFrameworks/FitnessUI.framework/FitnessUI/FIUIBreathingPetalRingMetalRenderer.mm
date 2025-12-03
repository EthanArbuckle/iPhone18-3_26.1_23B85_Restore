@interface FIUIBreathingPetalRingMetalRenderer
- (CGPoint)ringCenter;
- (FIUIBreathingPetalRingMetalRenderer)initWithMetalKitView:(id)view petalColor:(int64_t)color numberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails;
- (void)_clearCirclesInRange:(_NSRange)range;
- (void)_createBuffers;
- (void)_loadTextures;
- (void)_setCircleAtIndex:(int64_t)index center:(CGPoint)center radius:(float)radius blurriness:(float)blurriness alpha:(float)alpha;
- (void)_setupIndexes;
- (void)_setupProjectionMatrixForSize:(CGSize)size;
- (void)_setupRenderPipeline;
- (void)_setupVertices;
- (void)_updateVertices;
- (void)drawInMTKView:(id)view;
- (void)importDataFromPetalRingMetalRenderer:(id)renderer;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
- (void)setNumberOfVisiblePetals:(int64_t)petals showBlurTrails:(BOOL)trails;
- (void)setRingCenter:(CGPoint)center;
- (void)setRingRadius:(float)radius;
@end

@implementation FIUIBreathingPetalRingMetalRenderer

- (FIUIBreathingPetalRingMetalRenderer)initWithMetalKitView:(id)view petalColor:(int64_t)color numberOfPetals:(int64_t)petals showBlurTrails:(BOOL)trails
{
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = FIUIBreathingPetalRingMetalRenderer;
  v12 = [(FIUIBreathingPetalRingMetalRenderer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mtkView, view);
    [(MTKView *)v13->_mtkView setColorPixelFormat:80];
    [(MTKView *)v13->_mtkView setClearColor:0.0, 0.0, 0.0, 0.0];
    device = [(MTKView *)v13->_mtkView device];
    device = v13->_device;
    v13->_device = device;

    newCommandQueue = [(MTLDevice *)v13->_device newCommandQueue];
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = newCommandQueue;

    v13->_petalColor = color;
    v13->_numberOfPetals = petals;
    v13->_showBlurTrails = trails;
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _createBuffers];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _loadTextures];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupIndexes];
    [(FIUIBreathingPetalRingMetalRenderer *)v13 _setupVertices];
    [viewCopy bounds];
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

- (void)_setupProjectionMatrixForSize:(CGSize)size
{
  v3 = size.height / size.width;
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
  attributes = [v9 attributes];
  v11 = [attributes objectAtIndexedSubscript:0];
  [v11 setFormat:29];

  attributes2 = [v9 attributes];
  v13 = [attributes2 objectAtIndexedSubscript:0];
  [v13 setOffset:0];

  attributes3 = [v9 attributes];
  v15 = [attributes3 objectAtIndexedSubscript:0];
  [v15 setBufferIndex:2];

  attributes4 = [v9 attributes];
  v17 = [attributes4 objectAtIndexedSubscript:1];
  [v17 setFormat:29];

  attributes5 = [v9 attributes];
  v19 = [attributes5 objectAtIndexedSubscript:1];
  [v19 setOffset:8];

  attributes6 = [v9 attributes];
  v21 = [attributes6 objectAtIndexedSubscript:1];
  [v21 setBufferIndex:2];

  layouts = [v9 layouts];
  v23 = [layouts objectAtIndexedSubscript:2];
  [v23 setStride:16];

  layouts2 = [v9 layouts];
  v25 = [layouts2 objectAtIndexedSubscript:2];
  [v25 setStepRate:1];

  layouts3 = [v9 layouts];
  v27 = [layouts3 objectAtIndexedSubscript:2];
  [v27 setStepFunction:1];

  [v3 setVertexDescriptor:v9];
  [v3 setVertexFunction:v7];
  [v3 setFragmentFunction:v8];
  colorPixelFormat = [(MTKView *)self->_mtkView colorPixelFormat];
  colorAttachments = [v3 colorAttachments];
  v30 = [colorAttachments objectAtIndexedSubscript:0];
  [v30 setPixelFormat:colorPixelFormat];

  v31 = self->_device;
  v36 = v6;
  v32 = [(MTLDevice *)v31 newRenderPipelineStateWithDescriptor:v3 error:&v36];
  v33 = v36;

  renderPipeline = self->_renderPipeline;
  self->_renderPipeline = v32;
}

- (void)importDataFromPetalRingMetalRenderer:(id)renderer
{
  rendererCopy = renderer;
  v5 = rendererCopy;
  if (rendererCopy)
  {
    self->_numberOfVisiblePetals = [rendererCopy numberOfVisiblePetals];
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

- (void)setNumberOfVisiblePetals:(int64_t)petals showBlurTrails:(BOOL)trails
{
  petalsCopy = petals;
  self->_numberOfVisiblePetals = petals;
  if (trails)
  {
    v6 = 10 - petals;
    [(FIUIBreathingPetalRingMetalRenderer *)self _clearCirclesInRange:petals, 10 - petals];
    petalsCopy += 10;
  }

  else
  {
    v6 = 20 - petals;
  }

  [(FIUIBreathingPetalRingMetalRenderer *)self _clearCirclesInRange:petalsCopy, v6];
}

- (void)_clearCirclesInRange:(_NSRange)range
{
  if (range.location < range.location + range.length)
  {
    v3 = 0;
    v4 = vdupq_n_s64(range.length - 1);
    v5 = &self[1]._anon_28[16 * range.location + 176];
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

    while (((range.length + 3) & 0xFFFFFFFFFFFFFFFCLL) != v3);
  }
}

- (void)setRingRadius:(float)radius
{
  if (!FIUIIsEqual(self->_ringRadius, radius))
  {
    self->_ringRadius = radius;

    [(FIUIBreathingPetalRingMetalRenderer *)self _updateVertices];
  }
}

- (void)setRingCenter:(CGPoint)center
{
  y = center.y;
  if (self->_ringCenter.x != center.x || self->_ringCenter.y != center.y)
  {
    x = center.x;
    [(MTKView *)self->_mtkView bounds];
    v7.f64[0] = x;
    self->_ringCenter.x = x;
    self->_ringCenter.y = v6 - y;
    v7.f64[1] = v6 - y;
    *self->_ringCenterVector = vcvt_f32_f64(vaddq_f64(v7, v7));

    [(FIUIBreathingPetalRingMetalRenderer *)self _updateVertices];
  }
}

- (void)_setCircleAtIndex:(int64_t)index center:(CGPoint)center radius:(float)radius blurriness:(float)blurriness alpha:(float)alpha
{
  y = center.y;
  v8 = vmulq_f64(center, xmmword_1E5DB1F50);
  *(&self[1].super.isa + index) = vadd_f32(*self->_ringCenterVector, vcvt_f32_f64(v8));
  *v8.f64 = (radius + radius) * (radius + radius);
  *(v8.f64 + 1) = 1.0 / (radius * blurriness);
  *&v8.f64[1] = alpha;
  *&self[1]._anon_28[16 * index + 120] = v8;
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

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B938];
  if (os_log_type_enabled(*MEMORY[0x1E696B938], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v16.width = width;
    v16.height = height;
    v10 = NSStringFromCGSize(v16);
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_1E5D0F000, v9, OS_LOG_TYPE_DEFAULT, "mktView:%@ drawableSizeWillChange: %{public}@", &v11, 0x16u);
  }

  [(FIUIBreathingPetalRingMetalRenderer *)self _setupProjectionMatrixForSize:width, height];
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  stateUpdateBlock = [(FIUIBreathingPetalRingMetalRenderer *)self stateUpdateBlock];
  v5 = stateUpdateBlock;
  if (stateUpdateBlock)
  {
    (*(stateUpdateBlock + 16))(stateUpdateBlock);
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

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"Drawable Command Buffer"];
  currentRenderPassDescriptor = [viewCopy currentRenderPassDescriptor];
  if (currentRenderPassDescriptor)
  {
    v9 = [commandBuffer renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
    [v9 setLabel:@"Drawable Render Encoder"];
    [v9 setRenderPipelineState:self->_renderPipeline];
    [v9 setVertexBytes:self->_anon_220 length:400 atIndex:2];
    [v9 setVertexBytes:self->_anon_3b0 length:64 atIndex:0];
    [v9 setFragmentBytes:&self->_uniforms length:512 atIndex:1];
    [v9 setFragmentTexture:self->_circleGradient atIndex:0];
    [v9 drawIndexedPrimitives:3 indexCount:72 indexType:0 indexBuffer:self->_indexBuffer indexBufferOffset:0];
    [v9 endEncoding];
    currentDrawable = [viewCopy currentDrawable];
    [commandBuffer presentDrawable:currentDrawable];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
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