@interface NUNICalliopeRenderer
- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:;
- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (double)buildFrustumPlane:(float32x4_t)plane p2:(float32x4_t)p2 p3:(float32x4_t)p3;
- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)viewport;
- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)index pContents:(NUNICalliopeRenderUniforms *)contents pOffset:(unint64_t *)offset;
- (id)spheroidAtPoint:(id)point scene:(NUNIViewport)scene viewport:;
- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:;
- (void)_computeBloomChainTextures:(id)textures;
- (void)_renderLocationDot:(const NUNISpheroidStructure *)dot scene:(const NUNISceneStructure *)scene uniPtr:(NUNICalliopeRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder;
- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)viewport renderEncoder:(id)encoder;
- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)viewport sceneTexture:(id)texture commandBuffer:(id)buffer;
- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)scene spheroids:(id)spheroids viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture;
- (void)_renderSaturnRings:(double)rings frameBufferIndex:(__n128)index renderEncoder:(__n128)encoder forwardAngle:(__n128)angle position:(__n128)position isRotated:(float)rotated rotationMatrix:(float)matrix scale:(uint64_t)self0 equatorRotation:(_OWORD *)self1;
- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)spheroid frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder;
- (void)_setupBloomChainWithViewport:(NUNIViewport)viewport bloomTexture:(id)texture;
- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport;
- (void)_updateStateWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport;
- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)rate drawableSize:(unint64_t)size;
- (void)dealloc;
- (void)prepareObjectSpaceFrustumWithTransform:(id *)transform withState:(id *)state;
- (void)prepareWorldSpaceFrustumWithTransform:(id *)transform withState:(id *)state;
- (void)purgeUnusedWithScene:(id)scene;
- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer;
- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setRendererOptions:(id)options;
@end

@implementation NUNICalliopeRenderer

- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  v19.receiver = self;
  v19.super_class = NUNICalliopeRenderer;
  v9 = [(NUNIRenderer *)&v19 initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:style];
  if (v9)
  {
    v10 = [NUNICalliopeResourceManager sharedInstanceWithDisplayPixelFormat:format];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v10;

    [(NUNICalliopeResourceManager *)v9->_resourceManager addClient];
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    device = v9->_device;
    v9->_device = mEMORY[0x277CFA798];

    v14 = [(NUNICalliopeResourceManager *)v9->_resourceManager textureGroupWithSuffix:suffixCopy];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    [(MTLDevice *)v9->_device supportsFamily:1004];
    v9->_bloomDownsampleUsingTileShaders = 0;
    v9->_bloomEnabled = [(MTLDevice *)v9->_device supportsFamily:1004];
    v16 = MGGetStringAnswer();
    v9->_useLowerResolutionTextures = [v16 isEqualToString:@"t8010"];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v9->_isPhone = [currentDevice userInterfaceIdiom] == 0;
  }

  return v9;
}

- (void)dealloc
{
  [(NUNICalliopeResourceManager *)self->_resourceManager removeClient];
  v3.receiver = self;
  v3.super_class = NUNICalliopeRenderer;
  [(NUNIRenderer *)&v3 dealloc];
}

- (void)setRendererOptions:(id)options
{
  objc_storeStrong(&self->_rendererOptions, options);
  optionsCopy = options;
  changeSequence = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];

  self->_rendererOptionsChangeSequence = changeSequence - 1;
}

- (void)purgeUnusedWithScene:(id)scene
{
  v4 = *([scene structure] + 56);
  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  nullTexture2D = [MEMORY[0x277CFA7C0] nullTexture2D];
  for (i = 0; i != 24; ++i)
  {
    if (v4 != i)
    {
      gradients = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
      v8 = [gradients objectAtIndexedSubscript:i];

      if (v8 != nullTexture2D)
      {
        atlas = [v8 atlas];
        uuid = [atlas uuid];
        [mEMORY[0x277CFA7B0] purge:uuid];
      }
    }
  }
}

- (void)_updateStateWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport
{
  width = viewport.width;
  height = viewport.height;
  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  [mEMORY[0x277CFA7B0] updateTextureStreaming];

  v76 = *&scene->var0;
  v67 = *&scene->var3;
  _Q0 = vsubq_f32(v67, *&scene->var0);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v16 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v17 = *&scene->var5;
  v18 = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL);
  _Q3 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), vnegq_f32(v19)), _Q3, v18);
  _Q3.i32[0] = _Q2.i32[2];
  __asm { FMLA            S4, S3, V2.S[2] }

  _Q3.f32[0] = sqrtf(_S4);
  if (_Q3.f32[0] < 0.00001)
  {
    _Q2 = vmlaq_f32(vmulq_f32(v19, xmmword_25B71A3B0), xmmword_25B719C90, v18);
    _Q3.i64[0] = _Q2.u32[2];
    __asm { FMLA            S4, S3, V2.S[2] }

    _Q3.f32[0] = sqrtf(_S4);
    if (_Q3.f32[0] < 0.00001)
    {
      _Q2 = vmlaq_f32(vmulq_f32(v19, xmmword_25B71A3C0), xmmword_25B71A3D0, v18);
      _Q3.i64[0] = _Q2.u32[2];
      __asm { FMLA            S4, S3, V2.S[2] }

      _Q3.f32[0] = sqrtf(_S4);
    }
  }

  var1 = scene->var8.var0.var1;
  v26 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(v18, vnegq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL))), v19, vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v73 = vnegq_f32(vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0)));
  v74 = v26;
  v30 = width / height;
  v75 = v16;
  var4 = scene[1].var4;
  if (v30 >= 1.0)
  {
    v32 = 0.34907;
  }

  else
  {
    v31 = atanf(0.17633 / v30);
    v32 = v31 + v31;
  }

  *v33.f32 = UMFloat4x4MakeLookAt(*v74.i64, v73.f32[0]);
  v79 = v34;
  v80 = v33;
  v77 = v36;
  v78 = v35;
  if (fabsf(var1) > 0.00001)
  {
    v37 = __sincosf_stret(var1 * 0.5);
    v38 = vmul_n_f32(*v75.f32, v37.__sinval);
    *v39.f32 = UMFloat4x4Make(v38.f32[0], v38.f32[1], vmuls_lane_f32(v37.__sinval, v75, 2), v37.__cosval);
    v85.columns[0] = v39;
    v85.columns[1] = v40;
    v85.columns[2] = v41;
    v85.columns[3] = v42;
    v81.columns[1] = v79;
    v81.columns[0] = v80;
    v81.columns[3] = v77;
    v81.columns[2] = v78;
    *v43.i64 = UMMul(v81, v85);
    v79 = v44;
    v80 = v43;
    v77 = v46;
    v78 = v45;
  }

  *v47.i64 = UMFloat4x4MakeTranslate();
  v86.columns[0] = v47;
  v86.columns[1] = v48;
  v86.columns[2] = v49;
  v86.columns[3] = v50;
  v82.columns[1] = v79;
  v82.columns[0] = v80;
  v82.columns[3] = v77;
  v82.columns[2] = v78;
  *v51.i64 = UMMul(v82, v86);
  v71 = v52;
  v72 = v51;
  v69 = v54;
  v70 = v53;
  v55.f32[0] = UMFloat4x4MakePerspective((v32 * 180.0) / 3.1416, width / height, 0.001, 5.0);
  v65 = v56;
  v66 = v55;
  v63 = v58;
  v64 = v57;
  *v83.columns[0].i64 = UMFloat4x4MakeTranslate();
  v87.columns[1] = v65;
  v87.columns[0] = v66;
  v87.columns[3] = v63;
  v87.columns[2] = v64;
  *v84.columns[0].i64 = UMMul(v83, v87);
  v88.columns[1] = v71;
  v88.columns[0] = v72;
  v88.columns[3] = v69;
  v88.columns[2] = v70;
  *&v59 = UMMul(v84, v88);
  self->_state.viewport.width = width;
  self->_state.viewport.height = height;
  self->_state.cameraRoll = var1;
  self->_state.aspect = v30;
  self->_state.fovY = v32;
  *self->_anon_304 = 0;
  *&self->_anon_304[4] = var4;
  *&self->_anon_304[12] = v76;
  *&self->_anon_304[28] = v67;
  *&self->_anon_304[44] = v73;
  *&self->_anon_304[60] = v74;
  *&self->_anon_304[76] = v75;
  *&self->_anon_304[92] = v80;
  *&self->_anon_304[108] = v79;
  *&self->_anon_304[124] = v78;
  *&self->_anon_304[140] = v77;
  *&self->_anon_304[156] = v72;
  *&self->_anon_304[172] = v71;
  *&self->_anon_304[188] = v70;
  *&self->_anon_304[204] = v69;
  *&self->_anon_304[220] = v59;
  *&self->_anon_304[236] = v60;
  *&self->_anon_304[252] = v61;
  *&self->_anon_304[268] = v62;
}

- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)rate drawableSize:(unint64_t)size
{
  v7 = vmul_f32(*v3, v4);
  v8 = fminf(v7.f32[0], v7.f32[1]);
  if (self->_isPhone)
  {
    v9 = &_NUNIAtlasSizes_iphone;
  }

  else
  {
    v9 = &_NUNIAtlasSizes_ipad;
  }

  v10 = &_NUNIAtlasMipCounts_ipad;
  v11 = 1.0 / v8;
  if (self->_isPhone)
  {
    v10 = &_NUNIAtlasMipCounts_iphone;
  }

  v5.i32[0] = v10[size];
  v12 = vmovl_u8(v5).u64[0];
  v29 = v12;
  v5.i32[0] = 1067030938;
  if (!self->_useLowerResolutionTextures)
  {
    *v5.i32 = -0.5;
  }

  v27 = vdupq_lane_s32(v5, 0);
  v28 = vmovl_u16(v12);
  v33 = vabsq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&v9[8 * size])), v11));
  v30 = log2f(*&v33.i32[1]);
  v13.f32[0] = log2f(*v33.i32);
  v13.f32[1] = v30;
  v31 = v13;
  v14 = log2f(*&v33.i32[2]);
  v15 = v31;
  v15.f32[2] = v14;
  v32 = v15;
  v16 = log2f(*&v33.i32[3]);
  v17 = v32;
  v17.f32[3] = v16;
  v18 = vcvtq_s32_f32(vmaxnmq_f32(vaddq_f32(v27, v17), 0));
  v19.i64[0] = -1;
  v19.i64[1] = -1;
  v17.i64[0] = 0x400000004;
  v17.i64[1] = 0x400000004;
  v34 = vminq_s32(vbslq_s8(vcgtq_s32(v28, v18), v18, vaddw_u16(v19, v29)), v17);
  textureSuffix = [(NUNIRenderer *)self textureSuffix];
  for (i = 0; i != 24; ++i)
  {
    v22 = [(NUNICalliopeResourceManager *)self->_resourceManager patchTextureGroupForSpheroid:size index:i suffix:textureSuffix, *&v27, *&v28];
    atlas = [v22->var0 atlas];
    [atlas setMaxMipmapLevelsToDrop:v34.i32[0]];

    atlas2 = [v22->var1 atlas];
    [atlas2 setMaxMipmapLevelsToDrop:v34.i32[1]];

    atlas3 = [v22->var2 atlas];
    [atlas3 setMaxMipmapLevelsToDrop:v34.i32[2]];

    atlas4 = [v22->var3 atlas];
    [atlas4 setMaxMipmapLevelsToDrop:v34.i32[3]];
  }
}

- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport
{
  width = viewport.width;
  v43 = *MEMORY[0x277D85DE8];
  height = viewport.height;
  v6 = 0x27FA49000uLL;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_frame, 2) <= 0x444444444444444uLL)
  {
    changeSequence = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];
    if (changeSequence != self->_rendererOptionsChangeSequence)
    {
      v38 = width;
      v39 = height;
      v8 = 0;
      self->_rendererOptionsChangeSequence = changeSequence;
      selfCopy = self;
      do
      {
        v10 = _updateBaseUniformsForViewport__optionKeys[v8];
        v11 = [(NUNIRendererOptions *)self->_rendererOptions fractionValueForOption:v10];
        v12 = v11;
        if (v11)
        {
          [v11 doubleValue];
          __asm { FCVT            H0, D0 }

          v18 = *(v6 + 2348);
          if (*(&selfCopy->super.super.isa + v18) != *&_D0)
          {
            v19 = v6;
            v20 = NUNILoggingObjectForDomain(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              *&buf[4] = v10;
              *&buf[12] = 2114;
              *&buf[14] = v12;
              _os_log_debug_impl(&dword_25B6D4000, v20, OS_LOG_TYPE_DEBUG, "Overriding option %{public}@ with value %{public}@", buf, 0x16u);
            }

            [v12 doubleValue];
            __asm { FCVT            H0, D0 }

            *(&selfCopy->super.super.isa + v18) = _D0;
            v6 = v19;
          }
        }

        selfCopy = (selfCopy + 2);
        ++v8;
      }

      while (v8 != 35);
      resourceManager = self->_resourceManager;
      v23 = self + *(v6 + 2348);
      v24 = *(v23 + 3);
      v41 = *(v23 + 2);
      *v42 = v24;
      *&v42[14] = *(v23 + 62);
      v25 = *(v23 + 1);
      *buf = *v23;
      *&buf[16] = v25;
      [(NUNICalliopeResourceManager *)resourceManager setPipelineConstants:buf];
      width = v38;
      height = v39;
    }
  }

  v26 = *&self->_anon_304[4];
  v27 = width;
  __asm { FMOV            V4.2S, #1.0 }

  HIDWORD(v29) = HIDWORD(_D4);
  if (height > width)
  {
    *(&_D4 + 1) = height / width;
    v30 = _D4;
  }

  else
  {
    *&v29 = width / height;
    v30 = v29;
  }

  if (height <= width)
  {
    v27 = height;
  }

  v31 = self + *(v6 + 2348);
  _H4 = *(v31 + 5);
  __asm { FCVT            S4, H4 }

  v34 = (_S4 * 5.0) + 1.0;
  LOWORD(_S4) = *(v31 + 6);
  __asm { FCVT            S4, H4 }

  v36 = _S4 * -10.0;
  *&self->_baseUniforms.vsh.{?= = 0u;
  *&self->_anon_421[15] = 0u;
  *&self->_anon_421[31] = 0u;
  *&self->_anon_421[47] = v26;
  *&self->_anon_421[55] = v30;
  *&self->_anon_421[63] = 1.0 / v27;
  *&self->_anon_421[67] = 0u;
  *&self->_anon_421[83] = 0u;
  *&self->_anon_421[99] = 0u;
  *&self->_anon_421[115] = 0u;
  *&self->_anon_421[131] = 0u;
  *&self->_anon_421[147] = 0u;
  *&self->_anon_421[163] = 0x3D4CCCCD3E31D0D4;
  *&self->_anon_421[171] = 0;
  *&self->_anon_421[175] = v36;
  *&self->_anon_421[179] = ((-1.0 / v34) * v36) - v36;
  *&self->_anon_421[183] = v34;
  *&self->_anon_421[195] = 0;
  *&self->_anon_421[187] = 0;
  *&self->_anon_421[203] = 0;
  v37 = *MEMORY[0x277D85DE8];
}

- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)index pContents:(NUNICalliopeRenderUniforms *)contents pOffset:(unint64_t *)offset
{
  v9 = &self->_renderUniformsBuffersCounts[index];
  capacity = v9->capacity;
  current = v9->current;
  v9->current = current + 1;
  if (current >= capacity)
  {
    if (capacity <= 10)
    {
      capacity = 10;
    }

    v13 = capacity + 2;
    v9->capacity = v13;
    v12 = [(MTLDevice *)self->_device newBufferWithLength:(v13 << 8) options:1];
    objc_storeStrong(&self->_renderUniformsBuffers[index], v12);
  }

  else
  {
    v12 = self->_renderUniformsBuffers[index];
  }

  contents = [(MTLBuffer *)v12 contents];
  if (contents)
  {
    *contents = (contents + (current << 8));
    *offset = current << 8;
    v15 = v12;
  }

  else
  {
    v16 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NUNICalliopeRenderer getUniformsBufferForFrameBufferIndex:v16 pContents:? pOffset:?];
    }

    v15 = 0;
    v9->capacity = 0;
    *contents = &self->_dummyUniforms;
    *offset = 0;
  }

  return v15;
}

- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index
{
  v32 = 0;
  v33 = 0;
  encoderCopy = encoder;
  v7 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v33 pOffset:&v32];
  v8 = v33;
  *v33 = *&self->_baseUniforms.vsh.{?=;
  v9 = *&self->_anon_421[63];
  v11 = *&self->_anon_421[15];
  v10 = *&self->_anon_421[31];
  v8[3] = *&self->_anon_421[47];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v12 = *&self->_anon_421[127];
  v14 = *&self->_anon_421[79];
  v13 = *&self->_anon_421[95];
  v8[7] = *&self->_anon_421[111];
  v8[8] = v12;
  v8[5] = v14;
  v8[6] = v13;
  v15 = *&self->_anon_421[191];
  v17 = *&self->_anon_421[143];
  v16 = *&self->_anon_421[159];
  v8[11] = *&self->_anon_421[175];
  v8[12] = v15;
  v8[9] = v17;
  v8[10] = v16;
  v18 = *&self->_anon_304[12];
  *v19.i64 = UMFloat4x4MakeTranslate();
  v34.columns[0] = v19;
  v34.columns[1] = v20;
  v34.columns[2] = v21;
  v34.columns[3] = v22;
  *&v23 = UMMul(*&self->_anon_304[220], v34);
  v8[6] = v23;
  v8[7] = v24;
  v8[8] = v25;
  v8[9] = v26;
  [encoderCopy setVertexBuffer:v7 offset:v32 atIndex:1];
  renderOffscreenPipelineForStarfield = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStarfield];
  [encoderCopy setLabel:@"Καλλιόπη Starfield"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStarfield];
  starfieldVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldVerticesBuffer];
  [encoderCopy setVertexBuffer:starfieldVerticesBuffer offset:0 atIndex:0];

  starfieldIndicesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldIndicesBuffer];
  [encoderCopy drawIndexedPrimitives:3 indexCount:384150 indexType:0 indexBuffer:starfieldIndicesBuffer indexBufferOffset:0 instanceCount:1 baseVertex:0 baseInstance:0];

  renderOffscreenPipelineForStar = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStar];
  [encoderCopy setLabel:@"Καλλιόπη Star"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStar];
  starVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager starVerticesBuffer];
  [encoderCopy setVertexBuffer:starVerticesBuffer offset:0 atIndex:0];

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:702 baseInstance:0];
}

- (void)_renderSaturnRings:(double)rings frameBufferIndex:(__n128)index renderEncoder:(__n128)encoder forwardAngle:(__n128)angle position:(__n128)position isRotated:(float)rotated rotationMatrix:(float)matrix scale:(uint64_t)self0 equatorRotation:(_OWORD *)self1
{
  *&v62[32] = angle;
  *&v62[48] = position;
  *v62 = index;
  *&v62[16] = encoder;
  v21 = a13;
  v71 = 0;
  v72 = 0;
  v22 = [self getUniformsBufferForFrameBufferIndex:a12 pContents:&v72 pOffset:&v71];
  [v21 setVertexBuffer:v22 offset:v71 atIndex:1];
  [v21 setFragmentBuffer:v22 offset:v71 atIndex:0];
  v23 = v72;
  *v72 = *rotation;
  v24 = rotation[4];
  v26 = rotation[1];
  v25 = rotation[2];
  v23[3] = rotation[3];
  v23[4] = v24;
  v23[1] = v26;
  v23[2] = v25;
  v27 = rotation[8];
  v29 = rotation[5];
  v28 = rotation[6];
  v23[7] = rotation[7];
  v23[8] = v27;
  v23[5] = v29;
  v23[6] = v28;
  v30 = rotation[12];
  v32 = rotation[9];
  v31 = rotation[10];
  v23[11] = rotation[11];
  v23[12] = v30;
  v23[9] = v32;
  v23[10] = v31;
  renderOffscreenPipelineForSaturnRing = [*(self + 48) renderOffscreenPipelineForSaturnRing];
  if (renderOffscreenPipelineForSaturnRing)
  {
    [v21 setRenderPipelineState:renderOffscreenPipelineForSaturnRing];
    UMFloat4x4MakeScale(rotated * 1.2275);
    if (a14)
    {
      *v35.i64 = UMMul(v34, *v62);
      v67 = v36;
      v69 = v35;
      v63 = v38;
      v65 = v37;
      a2 = a2 - matrix;
    }

    else
    {
      v67 = v34.columns[1];
      v69 = v34.columns[0];
      v63 = v34.columns[3];
      v65 = v34.columns[2];
    }

    *v39.i64 = UMFloat4x4MakeRotateZ(a2);
    v75.columns[0] = v39;
    v75.columns[1] = v40;
    v75.columns[2] = v41;
    v75.columns[3] = v42;
    v73.columns[1] = v67;
    v73.columns[0] = v69;
    v73.columns[3] = v63;
    v73.columns[2] = v65;
    *v43.i64 = UMMul(v73, v75);
    v68 = v44;
    v70 = v43;
    v64 = v46;
    v66 = v45;
    *v74.columns[0].i64 = UMFloat4x4MakeTranslate();
    v76.columns[1] = v68;
    v76.columns[0] = v70;
    v76.columns[3] = v64;
    v76.columns[2] = v66;
    *v47.i64 = UMMul(v74, v76);
    v77.columns[0] = v47;
    v77.columns[1] = v48;
    v77.columns[2] = v49;
    v77.columns[3] = v50;
    v51 = v72;
    *&v52 = UMMul(*(self + 992), v77);
    v51[6] = v52;
    v51[7] = v53;
    v51[8] = v54;
    v51[9] = v55;
    *v56.i64 = UMFloat4x4MakeRotateZ(a2);
    *(v72 + 32) = vzip1q_s64(v56, v57);
    [v21 setCullMode:0];
    saturnRingVerticesBuffer = [*(self + 48) saturnRingVerticesBuffer];
    [v21 setVertexBuffer:saturnRingVerticesBuffer offset:0 atIndex:0];

    gradients = [*(self + 56) gradients];
    v60 = [gradients objectAtIndexedSubscript:7];

    atlas = [v60 atlas];
    [atlas bind:v21 slot:1];

    [v21 drawPrimitives:4 vertexStart:0 vertexCount:26];
  }
}

- (void)_renderLocationDot:(const NUNISpheroidStructure *)dot scene:(const NUNISceneStructure *)scene uniPtr:(NUNICalliopeRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  renderOffscreenPipelineForLocationDot = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForLocationDot];
  if (renderOffscreenPipelineForLocationDot)
  {
    p_state = &self->_state;
    [encoderCopy setLabel:@"Καλλιόπη LocationDot"];
    [encoderCopy setRenderPipelineState:renderOffscreenPipelineForLocationDot];
    rectVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager rectVerticesBuffer];
    [encoderCopy setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

    UMFloat4x4MakeScale(0.11);
    v143 = v16;
    v148 = v15;
    v133 = v18;
    v138 = v17;
    *v155.columns[0].i64 = UMFloat4x4MakeTranslate();
    v121 = v155.columns[1];
    v122 = v155.columns[0];
    v119 = v155.columns[3];
    v120 = v155.columns[2];
    v167.columns[1] = v143;
    v167.columns[0] = v148;
    v167.columns[3] = v133;
    v167.columns[2] = v138;
    *v19.i64 = UMMul(v155, v167);
    v144 = v20;
    v149 = v19;
    v134 = v22;
    v139 = v21;
    distance = dot[4].distance;
    *v24.i64 = UMFloat4x4MakeRotateX(dot[4].distanceScale * -0.017453);
    v127 = v25;
    v128 = v24;
    v125 = v27;
    v126 = v26;
    *v28.i64 = UMFloat4x4MakeRotateZ(distance * 0.017453);
    v131 = v29;
    v132 = v28;
    v129 = v31;
    v130 = v30;
    v156.columns[1] = v127;
    v156.columns[0] = v128;
    v156.columns[3] = v125;
    v156.columns[2] = v126;
    v168.columns[1] = v144;
    v168.columns[0] = v149;
    v168.columns[3] = v134;
    v168.columns[2] = v139;
    *v32.i64 = UMMul(v156, v168);
    v169.columns[0] = v32;
    v169.columns[1] = v33;
    v169.columns[2] = v34;
    v169.columns[3] = v35;
    v157.columns[1] = v131;
    v157.columns[0] = v132;
    v157.columns[3] = v129;
    v157.columns[2] = v130;
    *v36.i64 = UMMul(v157, v169);
    v145 = v37;
    v150 = v36;
    v135 = v39;
    v140 = v38;
    equatorRotation = dot->equatorRotation;
    UMFloat4x4MakeScale(dot[2].equatorRotation * dot[2].opacity);
    v117 = v158.columns[1];
    v118 = v158.columns[0];
    v115 = v158.columns[3];
    v116 = v158.columns[2];
    v170.columns[1] = v145;
    v170.columns[0] = v150;
    v170.columns[3] = v135;
    v170.columns[2] = v140;
    *v41.i64 = UMMul(v158, v170);
    v146 = v42;
    v151 = v41;
    v136 = v44;
    v141 = v43;
    v45 = fabsf(equatorRotation);
    if (v45 <= 0.00001)
    {
      UMFloat4x4MakeScale(1.0);
      v109 = v51;
      v110 = v50;
      v107 = v53;
      v108 = v52;
    }

    else
    {
      *v159.columns[0].i64 = UMFloat4x4MakeRotateZ(equatorRotation);
      v109 = v159.columns[1];
      v110 = v159.columns[0];
      v107 = v159.columns[3];
      v108 = v159.columns[2];
      v171.columns[1] = v146;
      v171.columns[0] = v151;
      v171.columns[3] = v136;
      v171.columns[2] = v141;
      *v46.i64 = UMMul(v159, v171);
      v146 = v47;
      v151 = v46;
      v136 = v49;
      v141 = v48;
    }

    v54 = *&dot[3].type;
    *v160.columns[0].i64 = UMFloat4x4MakeTranslate();
    v113 = v160.columns[1];
    v114 = v160.columns[0];
    v111 = v160.columns[3];
    v112 = v160.columns[2];
    v172.columns[1] = v146;
    v172.columns[0] = v151;
    v172.columns[3] = v136;
    v172.columns[2] = v141;
    *v55.i64 = UMMul(v160, v172);
    v173.columns[0] = v55;
    v173.columns[1] = v56;
    v173.columns[2] = v57;
    v173.columns[3] = v58;
    *v59.i64 = UMMul(*&p_state[12].viewport.width, v173);
    v147 = v60;
    v152 = v59;
    v137 = v62;
    v142 = v61;
    *v63.i64 = UMMul(v59, v60, v61, v62, xmmword_25B71A410);
    v124 = v63;
    *v64.i64 = UMMul(v152, v147, v142, v137, xmmword_25B71A420);
    v123 = v64;
    *v65.i64 = UMMul(v152, v147, v142, v137, xmmword_25B719D40);
    v66.f32[0] = viewport.width;
    v66.f32[1] = viewport.height;
    v67 = vmul_f32(v66, 0x3F0000003F000000);
    v68 = vdiv_f32(vmul_f32(v67, *v123.i8), vdup_laneq_s32(v123, 3));
    *v65.i8 = vdiv_f32(vmul_f32(v67, *v65.i8), vdup_laneq_s32(v65, 3));
    v69 = vsub_f32(vdiv_f32(vmul_f32(v67, *v124.i8), vdup_laneq_s32(v124, 3)), *v65.i8);
    v70 = vmul_f32(v69, v69);
    *v65.i8 = vsub_f32(v68, *v65.i8);
    *v65.i8 = vmul_f32(*v65.i8, *v65.i8);
    v71 = vsqrt_f32(vadd_f32(vzip1_s32(v70, *v65.i8), vzip2_s32(v70, *v65.i8)));
    if (v71.f32[0] >= v71.f32[1])
    {
      v71.f32[0] = v71.f32[1];
    }

    v72 = v71.f32[0] * 0.23077;
    var1 = scene[1].var8.var0.var1;
    if (v72 <= var1)
    {
      v104 = v147;
      v103 = v152;
      v106 = v137;
      v105 = v142;
    }

    else
    {
      UMFloat4x4MakeScale((var1 * 0.11) / v72);
      v174.columns[0] = v74;
      v174.columns[1] = v75;
      v174.columns[2] = v76;
      v174.columns[3] = v77;
      v161.columns[1] = v121;
      v161.columns[0] = v122;
      v161.columns[3] = v119;
      v161.columns[2] = v120;
      *v78.i64 = UMMul(v161, v174);
      v175.columns[0] = v78;
      v175.columns[1] = v79;
      v175.columns[2] = v80;
      v175.columns[3] = v81;
      v162.columns[1] = v127;
      v162.columns[0] = v128;
      v162.columns[3] = v125;
      v162.columns[2] = v126;
      *v82.i64 = UMMul(v162, v175);
      v176.columns[0] = v82;
      v176.columns[1] = v83;
      v176.columns[2] = v84;
      v176.columns[3] = v85;
      v163.columns[1] = v131;
      v163.columns[0] = v132;
      v163.columns[3] = v129;
      v163.columns[2] = v130;
      *v86.i64 = UMMul(v163, v176);
      v177.columns[0] = v86;
      v177.columns[1] = v87;
      v177.columns[2] = v88;
      v177.columns[3] = v89;
      v164.columns[1] = v117;
      v164.columns[0] = v118;
      v164.columns[3] = v115;
      v164.columns[2] = v116;
      *v90.i64 = UMMul(v164, v177);
      v94.columns[0] = v90;
      v94.columns[1] = v91;
      v94.columns[2] = v92;
      v94.columns[3] = v93;
      if (v45 > 0.00001)
      {
        v165.columns[1] = v109;
        v165.columns[0] = v110;
        v165.columns[3] = v107;
        v165.columns[2] = v108;
        *v95.i64 = UMMul(v165, v94);
        v94.columns[0] = v95;
        v94.columns[1] = v96;
        v94.columns[2] = v97;
        v94.columns[3] = v98;
      }

      v166.columns[1] = v113;
      v166.columns[0] = v114;
      v166.columns[3] = v111;
      v166.columns[2] = v112;
      *v99.i64 = UMMul(v166, v94);
      v178.columns[0] = v99;
      v178.columns[1] = v100;
      v178.columns[2] = v101;
      v178.columns[3] = v102;
      *v103.i64 = UMMul(*&p_state[12].viewport.width, v178);
    }

    *&ptr[96].vsh.{?= = v103;
    *&ptr[112].vsh.{?= = v104;
    *&ptr[128].vsh.{?= = v105;
    *&ptr[144].vsh.{?= = v106;
    [encoderCopy setCullMode:{1, *&v107, *&v108, *&v109, *&v110}];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
    [encoderCopy setCullMode:0];
  }
}

- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)spheroid frameBufferIndex:(unint64_t)index renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  v59 = 0;
  v60 = 0;
  v9 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v60 pOffset:&v59];
  [encoderCopy setVertexBuffer:v9 offset:v59 atIndex:1];
  [encoderCopy setFragmentBuffer:v9 offset:v59 atIndex:0];
  v10 = v60;
  *v60 = *&self->_baseUniforms.vsh.{?=;
  v11 = *&self->_anon_421[63];
  v13 = *&self->_anon_421[15];
  v12 = *&self->_anon_421[31];
  v10[3] = *&self->_anon_421[47];
  v10[4] = v11;
  v10[1] = v13;
  v10[2] = v12;
  v14 = *&self->_anon_421[127];
  v16 = *&self->_anon_421[79];
  v15 = *&self->_anon_421[95];
  v10[7] = *&self->_anon_421[111];
  v10[8] = v14;
  v10[5] = v16;
  v10[6] = v15;
  v17 = *&self->_anon_421[191];
  v19 = *&self->_anon_421[143];
  v18 = *&self->_anon_421[159];
  v10[11] = *&self->_anon_421[175];
  v10[12] = v17;
  v10[9] = v19;
  v10[10] = v18;
  type = spheroid->type;
  v21 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:spheroid->type layer:0 config:0];
  if (v21)
  {
    [encoderCopy setLabel:@"Καλλιόπη SpriteSpheroid"];
    [encoderCopy setRenderPipelineState:v21];
    discVerticesBuffer = [(NUNICalliopeResourceManager *)self->_resourceManager discVerticesBuffer];
    [encoderCopy setVertexBuffer:discVerticesBuffer offset:0 atIndex:0];

    v24 = v60;
    *v60 = s_sprites[spheroid[4].type];
    *(v24 + 40) = LODWORD(spheroid[1].angle);
    v25 = *&spheroid[3].type;
    if (type == 10)
    {
      v58 = xmmword_25B719C90;
      v56 = xmmword_25B719EC0;
      v57 = xmmword_25B71A430;
    }

    else
    {
      _Q0 = vsubq_f32(*&self->_anon_304[12], v25);
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      v33 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
      v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v35 = vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL);
      p_state = &self->_state;
      v36 = vmlaq_f32(vmulq_f32(v35, vnegq_f32(vextq_s8(vuzp1q_s32(*&p_state[3].viewport.height, *&p_state[3].viewport.height), *&p_state[3].viewport.height, 0xCuLL))), v34, vextq_s8(vextq_s8(*&p_state[3].viewport.height, *&p_state[3].viewport.height, 0xCuLL), *&p_state[3].viewport.height, 8uLL));
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL), vnegq_f32(v34)), vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v35);
      v36.i32[3] = 0;
      v37.i32[3] = 0;
      v56 = v37;
      v57 = v36;
      v33.i32[3] = 0;
      v58 = v33;
    }

    v25.i32[3] = 1.0;
    v55 = v25;
    v38 = spheroid[2].equatorRotation * spheroid[2].opacity;
    if (type == 14)
    {
      v38 = v38 + v38;
    }

    UMFloat4x4MakeScale(v38);
    v62.columns[0] = v39;
    v62.columns[1] = v40;
    v62.columns[2] = v41;
    v62.columns[3] = v42;
    v61.columns[1] = v56;
    v61.columns[0] = v57;
    v61.columns[2] = v58;
    v61.columns[3] = v55;
    *v43.i64 = UMMul(v61, v62);
    v63.columns[0] = v43;
    v63.columns[1] = v44;
    v63.columns[2] = v45;
    v63.columns[3] = v46;
    *&v47 = UMMul(*&self->_anon_304[220], v63);
    v48 = v60;
    v60[6] = v47;
    v48[7] = v49;
    v48[8] = v50;
    v48[9] = v51;
    gradients = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
    v53 = [gradients objectAtIndexedSubscript:type];

    atlas = [v53 atlas];
    [atlas bind:encoderCopy slot:5];

    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:16];
  }
}

- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)scene spheroids:(id)spheroids viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture
{
  v118[4] = *MEMORY[0x277D85DE8];
  height = viewport.height;
  spheroidsCopy = spheroids;
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy setLabel:@"Καλλιόπη Render"];
  if (__PAIR64__(self->_bloomEnabled, self->_bloomDownsampleUsingTileShaders) == 0x100000001)
  {
    v14 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
    renderPassDescriptor = [v14 renderPassDescriptor];
    v16 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

    [v16 setLabel:@"Clear Bloom Texture"];
    [v16 endEncoding];
  }

  v17 = self->_offscreenScenes[index];
  v18 = v17;
  v79 = height;
  v80 = bufferCopy;
  if (!v17 || [(NUNCalliopeOffscreen *)v17 width]!= viewport.width || [(NUNCalliopeOffscreen *)v18 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v19 = objc_opt_new();
    [v19 setTextureType:2];
    [v19 setWidth:viewport.width];
    [v19 setHeight:*&viewport >> 32];
    [v19 setDepth:1];
    [v19 setPixelFormat:10];
    v117[0] = *MEMORY[0x277CD2928];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:viewport];
    v118[0] = v20;
    v117[1] = *MEMORY[0x277CD28D0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:height];
    v22 = *MEMORY[0x277CD28D8];
    v118[1] = v21;
    v118[2] = &unk_286CFF4E0;
    v23 = *MEMORY[0x277CD28B0];
    v117[2] = v22;
    v117[3] = v23;
    v118[3] = &unk_286CFF4F8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:4];

    v25 = MGGetStringAnswer();
    v26 = v18;
    if ([v25 isEqualToString:@"t8010"])
    {
      [v19 setUsage:4];
      [v19 setResourceOptions:48];
      v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v19];
      v28 = 0;
    }

    else
    {
      [v19 setUsage:5];
      [v19 setResourceOptions:0];
      v28 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v24];
      v27 = [(MTLDevice *)self->_device newTextureWithDescriptor:v19 iosurface:v28 plane:0];
    }

    v29 = self->_contentMaskSurfaces[index];
    self->_contentMaskSurfaces[index] = v28;
    v30 = v28;

    v31 = self->_contentMaskTextures[index];
    self->_contentMaskTextures[index] = v27;
    v32 = v27;

    v18 = [[NUNCalliopeOffscreen alloc] initWithDevice:self->_device width:viewport height:v79 texture0:mEMORY[0x277CFA798] texture1:v32 loadAction:2 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];
    objc_storeStrong(&self->_offscreenScenes[index], v18);

    bufferCopy = v80;
  }

  [(NUNCalliopeOffscreen *)v18 setTexture0:textureCopy];
  width = [textureCopy width];
  height = [textureCopy height];
  renderPassDescriptor2 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [renderPassDescriptor2 setTileWidth:32];

  renderPassDescriptor3 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [renderPassDescriptor3 setTileHeight:32];

  location = &v18->super.isa;
  renderPassDescriptor4 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  v36 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor4];

  memset(v116, 0, sizeof(v116));
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v37 = spheroidsCopy;
  v38 = [v37 countByEnumeratingWithState:&v109 objects:v113 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v110;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v110 != v41)
        {
          objc_enumerationMutation(v37);
        }

        structure = [*(*(&v109 + 1) + 8 * i) structure];
        if (structure[5].f32[2] > 0.00001 && structure[3].f32[0] > 0.00001 && structure[9].i8[8] == 1)
        {
          v44 = structure->i32[0];
          _S0 = 0;
          if ((structure->i32[0] - 10) >= 2)
          {
            if (v44 == 13)
            {
              _S0 = 1258291194;
            }

            else if (v44 == 3)
            {
              _S0 = 1258291192;
            }

            else
            {
              _S0 = 1258291196;
              if (((1 << v44) & 0xFFC000) == 0)
              {
                _S0 = 1258291198;
                if (v44 != 12)
                {
                  _S2 = vsubq_f32(self[784], structure[96]).i32[2];
                  __asm { FMLA            S0, S2, V1.S[2] }
                }
              }
            }
          }

          v51 = &__base[8 * v40];
          *v51 = _S0;
          v51[1] = v40;
          *(v116 + v40++) = structure;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v109 objects:v113 count:16];
    }

    while (v39);
  }

  else
  {
    v40 = 0;
  }

  qsort(__base, v40, 8uLL, _NUNICalliopeRenderCompareObject);
  [v36 setLabel:@"Καλλιόπη Offscreen Scene"];
  v88 = 0uLL;
  *&v89 = viewport.width;
  *(&v89 + 1) = v79;
  v90 = xmmword_25B71A440;
  [v36 setViewport:&v88];
  [v36 setCullMode:0];
  [v36 setFrontFacingWinding:0];
  [(NUNICalliopeRenderer *)self _renderOffscreenBackgroundWithRenderEncoder:v36 frameBufferIndex:index];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  [(NUNICalliopeRenderer *)self prepareWorldSpaceFrustumWithTransform:&self->_anon_304[220] withState:&v88];
  if (v40 >= 1)
  {
    *&v52 = width;
    *(&v52 + 1) = height;
    v82 = v52;
    v53 = v40;
    v54 = &v115;
    do
    {
      v55 = *v54;
      v54 += 2;
      v56 = *(v116 + v55);
      v57 = 1 << *v56;
      if ((v57 & 0xFBFC00) != 0)
      {
        [(NUNICalliopeRenderer *)self _renderSpriteSpheroid:v56 frameBufferIndex:index renderEncoder:v36];
      }

      else if ((v57 & 0x3FE) != 0)
      {
        [(NUNICalliopeRenderer *)self _renderPatchSpheroid:v56 frustumCullingState:&v88 drawableSize:index frameBufferIndex:v36 renderEncoder:v82];
      }

      if ((v57 & 8) != 0)
      {
        v58 = *&scene[1].var6;
        if (v58 > 0.00001)
        {
          var7 = scene[1].var7;
          v86 = 0;
          v87 = 0;
          v60 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v87 pOffset:&v86];
          [v36 setVertexBuffer:v60 offset:v86 atIndex:1];
          [v36 setFragmentBuffer:v60 offset:v86 atIndex:0];
          v61 = v87;
          *v87 = *&self->_baseUniforms.vsh.{?=;
          v62 = *&self->_anon_421[15];
          v63 = *&self->_anon_421[31];
          v64 = *&self->_anon_421[63];
          *(v61 + 3) = *&self->_anon_421[47];
          *(v61 + 4) = v64;
          *(v61 + 1) = v62;
          *(v61 + 2) = v63;
          v65 = *&self->_anon_421[79];
          v66 = *&self->_anon_421[95];
          v67 = *&self->_anon_421[127];
          *(v61 + 7) = *&self->_anon_421[111];
          *(v61 + 8) = v67;
          *(v61 + 5) = v65;
          *(v61 + 6) = v66;
          v69 = *&self->_anon_421[143];
          v68 = *&self->_anon_421[159];
          v70 = *&self->_anon_421[191];
          *(v61 + 11) = *&self->_anon_421[175];
          *(v61 + 12) = v70;
          *(v61 + 9) = v69;
          *(v61 + 10) = v68;
          v61[40] = v58 * *(v56 + 48);
          v61[41] = var7 - floorf(var7);
          v61[43] = scene[1].var8.var0.var0;
          [NUNICalliopeRenderer _renderLocationDot:"_renderLocationDot:scene:uniPtr:viewport:renderEncoder:" scene:v56 uniPtr:scene viewport:? renderEncoder:?];
        }
      }

      --v53;
    }

    while (v53);
  }

  if (self->_bloomEnabled)
  {
    v71 = v80;
    if (self->_bloomDownsampleUsingTileShaders)
    {
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureUsingTileShaderWithViewport:viewport renderEncoder:v36];
      [v36 endEncoding];
    }

    else
    {
      [v36 endEncoding];
      texture0 = [location texture0];
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureWithViewport:viewport sceneTexture:texture0 commandBuffer:v80];
    }

    computeCommandEncoder = [v80 computeCommandEncoder];
    [(NUNICalliopeRenderer *)self _computeBloomChainTextures:computeCommandEncoder];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    [v36 endEncoding];
    v71 = v80;
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)viewport
{
  v5 = (viewport.width >> 2);
  v6 = *&viewport >> 34;
  offscreenBloom = self->_offscreenBloom;
  if (!offscreenBloom || [(NUNCalliopeOffscreen *)offscreenBloom width]!= v5 || [(NUNCalliopeOffscreen *)self->_offscreenBloom height]!= v6)
  {
    v8 = _NUNCalliopeCreateTexture(self->_device, v5, v6, 1, 10, 1);
    [(NUNICalliopeRenderer *)self _setupBloomChainWithViewport:viewport bloomTexture:v8];
    v9 = [NUNCalliopeOffscreen alloc];
    if (self->_bloomDownsampleUsingTileShaders)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NUNCalliopeOffscreen *)v9 initWithDevice:self->_device width:v5 height:v6 texture0:v8 texture1:0 loadAction:v10 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
    v12 = self->_offscreenBloom;
    self->_offscreenBloom = v11;
  }

  v13 = self->_offscreenBloom;

  return v13;
}

- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)viewport renderEncoder:(id)encoder
{
  encoderCopy = encoder;
  v7 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
  [encoderCopy pushDebugGroup:@"Καλλιόπη Bloom Downsample"];
  renderOffscreenPipelineForBloomDownsampleUsingTileShader = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsampleUsingTileShader];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForBloomDownsampleUsingTileShader];

  texture0 = [v7 texture0];
  [encoderCopy setTileTexture:texture0 atIndex:0];

  v10[0] = [encoderCopy tileWidth] >> 1;
  v10[1] = [encoderCopy tileHeight] >> 1;
  v10[2] = 1;
  [encoderCopy dispatchThreadsPerTile:v10];
  [encoderCopy setTileTexture:0 atIndex:0];
  [encoderCopy popDebugGroup];
}

- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)viewport sceneTexture:(id)texture commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  textureCopy = texture;
  v10 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:viewport];
  renderPassDescriptor = [v10 renderPassDescriptor];
  v12 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForBloomDownsample = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsample];
  [v12 setLabel:@"Καλλιόπη Bloom Downsample"];
  [v12 setRenderPipelineState:renderOffscreenPipelineForBloomDownsample];
  v14[0] = 0;
  v14[1] = 0;
  *&v14[2] = [v10 width];
  *&v14[3] = [v10 height];
  v15 = xmmword_25B71A440;
  [v12 setViewport:v14];
  [v12 setCullMode:0];
  [v12 setFragmentTexture:textureCopy atIndex:0];

  [v12 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v12 endEncoding];
}

- (void)_setupBloomChainWithViewport:(NUNIViewport)viewport bloomTexture:(id)texture
{
  textureCopy = texture;
  if (!textureCopy)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v6 = 0;
  v7 = fmaxf(viewport.width, viewport.height) * 0.025;
  do
  {
    ++v6;
  }

  while (((1 << v6) * 1.5) < v7);
  v8 = 16;
  if (v6 < 0x10)
  {
    v8 = v6;
  }

  if (v8 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  p_bloomChain = &self->_bloomChain;
  self->_bloomChain.numLevels = v9;
  v11 = objc_opt_new();
  [v11 setWidth:{objc_msgSend(textureCopy, "width") >> 1}];
  [v11 setHeight:{objc_msgSend(textureCopy, "height") >> 1}];
  [v11 setMipmapLevelCount:v9 - 1];
  [v11 setPixelFormat:25];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  texture = self->_bloomChain.texture;
  self->_bloomChain.texture = v12;

  width = [textureCopy width];
  height = [textureCopy height];
  if (!width)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  if (!height)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v16 = 0;
  v17.i64[0] = width;
  v17.i64[1] = height;
  v18 = 16;
  if (v6 < 0x10)
  {
    v18 = v6;
  }

  if (v18 <= 2)
  {
    v18 = 2;
  }

  v19 = 32 * v18;
  v20 = -1;
  v31 = vdupq_n_s64(1uLL);
  v32 = vdupq_n_s64(7uLL);
  do
  {
    v33 = v17;
    if (v16)
    {
      v21 = [(MTLTexture *)p_bloomChain->texture newTextureViewWithPixelFormat:[(MTLTexture *)p_bloomChain->texture pixelFormat] textureType:[(MTLTexture *)p_bloomChain->texture textureType] levels:v20 slices:1, 0, 1];
      v22 = p_bloomChain->levels[v16 / 0x20].texture;
      p_bloomChain->levels[v16 / 0x20].texture = v21;
    }

    else
    {
      v23 = textureCopy;
      v22 = self->_bloomChain.levels[0].texture;
      self->_bloomChain.levels[0].texture = v23;
    }

    v24 = (p_bloomChain + v16);
    v24[1] = vshrq_n_u64(vaddq_s64(v33, v32), 3uLL);
    v24[2].i64[0] = 1;
    v25 = vcgtq_u64(v33, v31);
    v17 = vsubq_s64(vandq_s8(vshrq_n_u64(v33, 1uLL), v25), vmvnq_s8(v25));
    v16 += 32;
    ++v20;
  }

  while (v19 != v16);
  if (v6 <= 0xF)
  {
    v26 = v6;
    if (v6 <= 2)
    {
      v26 = 2;
    }

    v27 = v26 - 1;
    v28 = &self->_bloomChain.levels[v26];
    do
    {
      v29 = v28->texture;
      v28->texture = 0;

      v28->numThreadgroups.width = 0;
      v28->numThreadgroups.height = 0;
      v28->numThreadgroups.depth = 0;
      ++v27;
      ++v28;
    }

    while (v27 < 0xF);
  }
}

- (void)_computeBloomChainTextures:(id)textures
{
  texturesCopy = textures;
  computePipelineForBloomChainDownsample = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainDownsample];
  computePipelineForBloomChainUpsample = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainUpsample];
  if (!computePipelineForBloomChainDownsample)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  v7 = computePipelineForBloomChainUpsample;
  if (!computePipelineForBloomChainUpsample)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  [texturesCopy pushDebugGroup:@"Καλλιόπη Bloom Chain Downsample"];
  [texturesCopy setComputePipelineState:computePipelineForBloomChainDownsample];
  if (self->_bloomChain.numLevels != 1)
  {
    v8 = 0;
    v9 = &self->_bloomChain.levels[1];
    v13 = vdupq_n_s64(8uLL);
    do
    {
      if (!v9[-1].texture)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      if (!v9->texture)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      ++v8;
      [texturesCopy setTexture:? atIndex:?];
      [texturesCopy setTexture:v9->texture atIndex:1];
      v17 = *&v9->numThreadgroups.width;
      depth = v9->numThreadgroups.depth;
      v15 = v13;
      v16 = 1;
      [texturesCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      ++v9;
    }

    while (v8 < self->_bloomChain.numLevels - 1);
  }

  [texturesCopy popDebugGroup];
  [texturesCopy pushDebugGroup:@"Καλλιόπη Bloom Chain Upsample"];
  [texturesCopy setComputePipelineState:v7];
  numLevels = self->_bloomChain.numLevels;
  v11 = numLevels - 1;
  if (numLevels - 1 >= 2)
  {
    v12 = &self->_contentMaskTextures[4 * numLevels];
    v14 = vdupq_n_s64(8uLL);
    do
    {
      if (!v12[4])
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      if (!*v12)
      {
        [NUNICalliopeRenderer _computeBloomChainTextures:];
      }

      [texturesCopy setTexture:? atIndex:?];
      [texturesCopy setTexture:*v12 atIndex:1];
      v17 = *(v12 + 1);
      depth = v12[3];
      v15 = v14;
      v16 = 1;
      [texturesCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      --v11;
      v12 -= 4;
    }

    while (v11 > 1);
  }

  [texturesCopy popDebugGroup];
}

- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index
{
  height = viewport.height;
  v11 = self->_offscreenScenes[index];
  v12 = self->_offscreenPosts;
  p_bloomChain = &self->_bloomChain;
  *&self->_anon_421[191] = 1.0 / (self->_bloomChain.numLevels - 1);
  v40 = 0;
  v41 = 0;
  bufferCopy = buffer;
  v15 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:index pContents:&v41 pOffset:&v40];
  v16 = v41;
  *v41 = *&self->_baseUniforms.vsh.{?=;
  v17 = *&self->_anon_421[63];
  v19 = *&self->_anon_421[15];
  v18 = *&self->_anon_421[31];
  v16[3] = *&self->_anon_421[47];
  v16[4] = v17;
  v16[1] = v19;
  v16[2] = v18;
  v20 = *&self->_anon_421[127];
  v22 = *&self->_anon_421[79];
  v21 = *&self->_anon_421[95];
  v16[7] = *&self->_anon_421[111];
  v16[8] = v20;
  v16[5] = v22;
  v16[6] = v21;
  v23 = *&self->_anon_421[191];
  v25 = *&self->_anon_421[143];
  v24 = *&self->_anon_421[159];
  v16[11] = *&self->_anon_421[175];
  v16[12] = v23;
  v16[9] = v25;
  v16[10] = v24;
  if (!v12 || [(NUNCalliopeOffscreen *)v12 width]!= viewport.width || [(NUNCalliopeOffscreen *)v12 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v36 = v12;
    v37 = v15;
    v27 = v11;
    v28 = [NUNCalliopeOffscreen alloc];
    device = self->_device;
    texture1 = [(NUNCalliopeOffscreen *)v27 texture1];
    v31 = device;
    p_bloomChain = &self->_bloomChain;
    v12 = [(NUNCalliopeOffscreen *)v28 initWithDevice:v31 width:viewport height:height texture0:mEMORY[0x277CFA798] texture1:texture1 loadAction:1 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(&self->_offscreenPosts, v12);
    v11 = v27;
    v15 = v37;
  }

  texture0 = [(NUNCalliopeOffscreen *)v11 texture0];
  [(NUNCalliopeOffscreen *)v12 setTexture0:texture0];

  renderPassDescriptor = [(NUNCalliopeOffscreen *)v12 renderPassDescriptor];
  v34 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForPost = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForPost];
  [v34 setLabel:@"Καλλιόπη Post"];
  [v34 setRenderPipelineState:renderOffscreenPipelineForPost];
  v38[0] = 0;
  v38[1] = 0;
  *&v38[2] = viewport.width;
  *&v38[3] = height;
  v39 = xmmword_25B71A440;
  [v34 setViewport:v38];
  [v34 setCullMode:0];
  [v34 setFragmentBuffer:v15 offset:v40 atIndex:0];
  [v34 setFragmentTexture:p_bloomChain->texture atIndex:1];
  [v34 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v34 endEncoding];
}

- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer
{
  -[NUNICalliopeRenderer _updateStateWithScene:viewport:](self, "_updateStateWithScene:viewport:", [scene structure], viewport);

  [(NUNICalliopeRenderer *)self _updateBaseUniformsForViewport:viewport];
}

- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  v10 = self->_frame % 3;
  descriptorCopy = descriptor;
  sceneCopy = scene;
  structure = [sceneCopy structure];
  colorAttachments = [descriptorCopy colorAttachments];

  v15 = [colorAttachments objectAtIndexedSubscript:0];

  texture = [v15 texture];
  self->_renderUniformsBuffersCounts[v10].current = 0;
  spheroids = [sceneCopy spheroids];

  [(NUNICalliopeRenderer *)self _renderOffscreenSceneWithScene:structure spheroids:spheroids viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v10 drawableTexture:texture];
  if (self->_bloomEnabled)
  {
    [(NUNICalliopeRenderer *)self _renderOffscreenPostWithScene:structure viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v10];
  }

  [(NUNCalliopeOffscreen *)self->_offscreenScenes[v10] setTexture0:0];
  [(NUNCalliopeOffscreen *)self->_offscreenPosts setTexture0:0];
  [(CALayer *)self->_contentMaskLayer setContents:self->_contentMaskSurfaces[v10]];
  ++self->_frame;
}

- (void)prepareWorldSpaceFrustumWithTransform:(id *)transform withState:(id *)state
{
  v12.columns[2] = *(transform + 2);
  v12.columns[3] = *(transform + 3);
  v12.columns[0] = *transform;
  v12.columns[1] = *(transform + 1);
  v13 = __invert_f4(v12);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = &prepareWorldSpaceFrustumWithTransform_withState__projectedPositions + 64 * v5;
    v10 = state + 64 * v5;
    do
    {
      v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13.columns[0], COERCE_FLOAT(*&v9[v7])), v13.columns[1], *&v9[v7], 1), v13.columns[2], *&v9[v7], 2), v13.columns[3], *&v9[v7], 3);
      *&v10[v7] = vdivq_f32(v11, vdupq_laneq_s32(v11, 3));
      v7 += 16;
    }

    while (v7 != 64);
    v6 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)prepareObjectSpaceFrustumWithTransform:(id *)transform withState:(id *)state
{
  v17.columns[2] = *(transform + 2);
  v17.columns[3] = *(transform + 3);
  v17.columns[0] = *transform;
  v17.columns[1] = *(transform + 1);
  v18 = __invert_f4(v17);
  v6 = 0;
  LOBYTE(v7) = 1;
  do
  {
    v8 = v7;
    v9 = (state + 64 * v6 + 128);
    v7 = 4;
    do
    {
      *v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18.columns[0], COERCE_FLOAT(*&v9[-8])), v18.columns[1], *v9[-8].f32, 1), v18.columns[2], v9[-8], 2), v18.columns[3], v9[-8], 3);
      ++v9;
      --v7;
    }

    while (v7);
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v10 = (state + 256);
  v11 = -4;
  do
  {
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    v14 = v11 + 5;
    if (v12)
    {
      v14 = 0;
    }

    [(NUNICalliopeRenderer *)self buildFrustumPlane:*(v10 - 16) p2:*(v10 - 8) p3:*(state + 2 * v14 + 24)];
    *v10 = v15;
    v10 += 2;
    v11 = v13;
  }

  while (v13);
  [(NUNICalliopeRenderer *)self buildFrustumPlane:*(state + 16) p2:*(state + 18) p3:*(state + 20)];
  *(state + 20) = v16;
}

- (double)buildFrustumPlane:(float32x4_t)plane p2:(float32x4_t)p2 p3:(float32x4_t)p3
{
  v3 = vsubq_f32(p2, plane);
  v4 = vsubq_f32(p3, p2);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v3)), v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v6 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v7 = vmulq_f32(v5, v5);
  v5.f32[0] = v7.f32[1] + (v7.f32[2] + v7.f32[0]);
  *v7.f32 = vrsqrte_f32(v5.u32[0]);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32)));
  *&result = vmulq_n_f32(v6, vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32))).f32[0]).u64[0];
  return result;
}

- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:
{
  v5 = 0;
  v6 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v21 = v2;
  v22 = v3;
  v7 = 1;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v13 = 0;
    v14 = -3.4028e38;
    v15 = 3.4028e38;
    do
    {
      v16.i32[3] = HIDWORD(_Q0);
      v16.i32[0] = **(&v21 + (v13 & 1));
      v16.i32[1] = *(*(&v21 + ((v13 >> 1) & 1)) + 4);
      v16.i32[2] = *(*(&v21 + (v13 >> 2)) + 8);
      v17 = vmulq_f32(*(v4 + 256 + 16 * v5), v16);
      *v17.i32 = vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)));
      v15 = fminf(v15, *v17.i32);
      v14 = fmaxf(v14, *v17.i32);
      ++v13;
    }

    while (v13 != 8);
    if (v14 < 0.0)
    {
      break;
    }

    v7 &= v15 >= 0.0;
    v6 = v5++ > 3;
  }

  while (v5 != 5);
  if (v7)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  if (v6)
  {
    result = v18;
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)max withState:
{
  v5 = 0;
  v6 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v18 = v2;
  v19 = v3;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v12 = 0;
    v13 = -3.4028e38;
    do
    {
      v14.i32[3] = HIDWORD(_Q0);
      v14.i32[0] = **(&v18 + (v12 & 1));
      v14.i32[1] = *(*(&v18 + ((v12 >> 1) & 1)) + 4);
      v14.i32[2] = *(*(&v18 + (v12 >> 2)) + 8);
      v15 = vmulq_f32(*(v4 + 256 + 16 * v5), v14);
      v13 = fmaxf(v13, vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL))));
      ++v12;
    }

    while (v12 != 8);
    if (v13 < 0.0)
    {
      break;
    }

    v6 = v5++ > 3;
  }

  while (v5 != 5);
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)spheroidAtPoint:(id)point scene:(NUNIViewport)scene viewport:
{
  v6 = v4;
  v65 = *MEMORY[0x277D85DE8];
  height = scene.height;
  pointCopy = point;
  -[NUNICalliopeRenderer _updateStateWithScene:viewport:](self, "_updateStateWithScene:viewport:", [pointCopy structure], scene);
  p_state = &self->_state;
  memset(v64, 0, sizeof(v64));
  v55 = pointCopy;
  spheroids = [pointCopy spheroids];
  v12 = [spheroids count];
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 & 0x7FFFFFFF;
    do
    {
      v16 = [spheroids objectAtIndexedSubscript:v13];
      structure = [v16 structure];

      if (structure[5].f32[2] > 0.00001 && structure[3].f32[0] > 0.00001 && structure[9].i8[8] == 1 && ((1 << structure->i32[0]) & 0x3FE) != 0)
      {
        _S2 = vsubq_f32(p_state[32], structure[96]).i32[2];
        __asm { FMLA            S1, S2, V0.S[2] }

        v24 = &__base[8 * v14];
        *v24 = _S1;
        v24[1] = v13;
        *(v64 + v13) = structure;
        ++v14;
      }

      ++v13;
    }

    while (v15 != v13);
  }

  width = scene.width;
  v58 = height;
  qsort(__base, v14, 8uLL, _NUNICalliopeRenderCompareObject);
  if (scene.width <= height)
  {
    aspect = p_state->aspect;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v27.i32[1] = _D1.i32[1];
  if (height > scene.width)
  {
    _D1.f32[1] = width / v58;
    v28 = _D1;
  }

  else
  {
    v27.f32[0] = v58 / width;
    v28 = v27;
  }

  if (v14 < 1)
  {
LABEL_20:
    v52 = 0;
  }

  else
  {
    v29.f32[1] = height;
    __asm { FMOV            V1.2S, #-1.0 }

    v29.f32[0] = scene.width;
    v31 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), vdiv_f32(v6, v29));
    v59 = *&p_state[9].aspect;
    v61 = *&p_state[8].fovY;
    v56 = *&p_state[11].viewport.height;
    v57 = *&p_state[10].cameraRoll;
    fovY = p_state->fovY;
    v33 = *&p_state[1].viewport.height;
    v34 = v14;
    v35 = &v63;
    while (1)
    {
      v37 = *v35;
      v35 += 2;
      v36 = v37;
      v38 = *(v64 + v37);
      v39 = v38[6];
      v39.i32[3] = 1.0;
      UMMul(v61, v59, v57, v56, v39);
      v40 = v38[5].f32[1] * v38[5].f32[2];
      _NUNICalliopeRenderer_ComputeProjectedSpheroid(fovY);
      v42 = vmul_f32(v28, v41);
      v44 = vmul_f32(v28, v43);
      v46 = vmul_f32(v42, v42);
      v47 = vmul_f32(v44, v44);
      v48 = vadd_f32(vzip1_s32(v46, v47), vzip2_s32(v46, v47));
      v49 = vsub_f32(v31, vmul_f32(v28, vsub_f32(v45, v33)));
      v50 = vmul_f32(v49, v49);
      v51 = vadd_f32(vzip1_s32(v50, v48), vzip2_s32(v50, v48));
      if ((vmvn_s8(vcgt_f32(vdup_lane_s32(v51, 1), v51)).u8[0] & 1) == 0)
      {
        break;
      }

      if (!--v34)
      {
        goto LABEL_20;
      }
    }

    v52 = [spheroids objectAtIndexedSubscript:v36];
  }

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

@end