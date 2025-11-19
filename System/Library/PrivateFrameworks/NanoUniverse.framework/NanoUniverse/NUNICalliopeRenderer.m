@interface NUNICalliopeRenderer
- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)a2 withState:;
- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5;
- (double)buildFrustumPlane:(float32x4_t)a1 p2:(float32x4_t)a2 p3:(float32x4_t)a3;
- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)a3;
- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)a3 pContents:(NUNICalliopeRenderUniforms *)a4 pOffset:(unint64_t *)a5;
- (id)spheroidAtPoint:(id)a3 scene:(NUNIViewport)a4 viewport:;
- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)a2 withState:;
- (void)_computeBloomChainTextures:(id)a3;
- (void)_renderLocationDot:(const NUNISpheroidStructure *)a3 scene:(const NUNISceneStructure *)a4 uniPtr:(NUNICalliopeRenderUniforms *)a5 viewport:(NUNIViewport)a6 renderEncoder:(id)a7;
- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)a3 frameBufferIndex:(unint64_t)a4;
- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)a3 renderEncoder:(id)a4;
- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)a3 sceneTexture:(id)a4 commandBuffer:(id)a5;
- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6;
- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)a3 spheroids:(id)a4 viewport:(NUNIViewport)a5 commandBuffer:(id)a6 frameBufferIndex:(unint64_t)a7 drawableTexture:(id)a8;
- (void)_renderSaturnRings:(double)a3 frameBufferIndex:(__n128)a4 renderEncoder:(__n128)a5 forwardAngle:(__n128)a6 position:(__n128)a7 isRotated:(float)a8 rotationMatrix:(float)a9 scale:(uint64_t)a10 equatorRotation:(_OWORD *)a11;
- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)a3 frameBufferIndex:(unint64_t)a4 renderEncoder:(id)a5;
- (void)_setupBloomChainWithViewport:(NUNIViewport)a3 bloomTexture:(id)a4;
- (void)_updateBaseUniformsForViewport:(NUNIViewport)a3;
- (void)_updateStateWithScene:(const NUNISceneStructure *)a3 viewport:(NUNIViewport)a4;
- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)a2 drawableSize:(unint64_t)a3;
- (void)dealloc;
- (void)prepareObjectSpaceFrustumWithTransform:(id *)a3 withState:(id *)a4;
- (void)prepareWorldSpaceFrustumWithTransform:(id *)a3 withState:(id *)a4;
- (void)purgeUnusedWithScene:(id)a3;
- (void)renderOffscreenWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5;
- (void)renderWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 passDescriptor:(id)a6;
- (void)setRendererOptions:(id)a3;
@end

@implementation NUNICalliopeRenderer

- (NUNICalliopeRenderer)initWithPixelFormat:(unint64_t)a3 textureSuffix:(id)a4 rendererStyle:(unint64_t)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = NUNICalliopeRenderer;
  v9 = [(NUNIRenderer *)&v19 initWithPixelFormat:a3 textureSuffix:v8 rendererStyle:a5];
  if (v9)
  {
    v10 = [NUNICalliopeResourceManager sharedInstanceWithDisplayPixelFormat:a3];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v10;

    [(NUNICalliopeResourceManager *)v9->_resourceManager addClient];
    v12 = [MEMORY[0x277CFA798] sharedDevice];
    device = v9->_device;
    v9->_device = v12;

    v14 = [(NUNICalliopeResourceManager *)v9->_resourceManager textureGroupWithSuffix:v8];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    [(MTLDevice *)v9->_device supportsFamily:1004];
    v9->_bloomDownsampleUsingTileShaders = 0;
    v9->_bloomEnabled = [(MTLDevice *)v9->_device supportsFamily:1004];
    v16 = MGGetStringAnswer();
    v9->_useLowerResolutionTextures = [v16 isEqualToString:@"t8010"];
    v17 = [MEMORY[0x277D75418] currentDevice];
    v9->_isPhone = [v17 userInterfaceIdiom] == 0;
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

- (void)setRendererOptions:(id)a3
{
  objc_storeStrong(&self->_rendererOptions, a3);
  v5 = a3;
  v6 = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];

  self->_rendererOptionsChangeSequence = v6 - 1;
}

- (void)purgeUnusedWithScene:(id)a3
{
  v4 = *([a3 structure] + 56);
  v11 = [MEMORY[0x277CFA7B0] sharedInstance];
  v5 = [MEMORY[0x277CFA7C0] nullTexture2D];
  for (i = 0; i != 24; ++i)
  {
    if (v4 != i)
    {
      v7 = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
      v8 = [v7 objectAtIndexedSubscript:i];

      if (v8 != v5)
      {
        v9 = [v8 atlas];
        v10 = [v9 uuid];
        [v11 purge:v10];
      }
    }
  }
}

- (void)_updateStateWithScene:(const NUNISceneStructure *)a3 viewport:(NUNIViewport)a4
{
  width = a4.width;
  height = a4.height;
  v8 = [MEMORY[0x277CFA7B0] sharedInstance];
  [v8 updateTextureStreaming];

  v76 = *&a3->var0;
  v67 = *&a3->var3;
  _Q0 = vsubq_f32(v67, *&a3->var0);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v16 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v17 = *&a3->var5;
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

  var1 = a3->var8.var0.var1;
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
  var4 = a3[1].var4;
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

- (void)_updateTextureLODsForPatchSpheroid:(NUNICalliopeRenderer *)self uvRate:(SEL)a2 drawableSize:(unint64_t)a3
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

  v5.i32[0] = v10[a3];
  v12 = vmovl_u8(v5).u64[0];
  v29 = v12;
  v5.i32[0] = 1067030938;
  if (!self->_useLowerResolutionTextures)
  {
    *v5.i32 = -0.5;
  }

  v27 = vdupq_lane_s32(v5, 0);
  v28 = vmovl_u16(v12);
  v33 = vabsq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&v9[8 * a3])), v11));
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
  v20 = [(NUNIRenderer *)self textureSuffix];
  for (i = 0; i != 24; ++i)
  {
    v22 = [(NUNICalliopeResourceManager *)self->_resourceManager patchTextureGroupForSpheroid:a3 index:i suffix:v20, *&v27, *&v28];
    v23 = [v22->var0 atlas];
    [v23 setMaxMipmapLevelsToDrop:v34.i32[0]];

    v24 = [v22->var1 atlas];
    [v24 setMaxMipmapLevelsToDrop:v34.i32[1]];

    v25 = [v22->var2 atlas];
    [v25 setMaxMipmapLevelsToDrop:v34.i32[2]];

    v26 = [v22->var3 atlas];
    [v26 setMaxMipmapLevelsToDrop:v34.i32[3]];
  }
}

- (void)_updateBaseUniformsForViewport:(NUNIViewport)a3
{
  width = a3.width;
  v43 = *MEMORY[0x277D85DE8];
  height = a3.height;
  v6 = 0x27FA49000uLL;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_frame, 2) <= 0x444444444444444uLL)
  {
    v7 = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];
    if (v7 != self->_rendererOptionsChangeSequence)
    {
      v38 = width;
      v39 = height;
      v8 = 0;
      self->_rendererOptionsChangeSequence = v7;
      v9 = self;
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
          if (*(&v9->super.super.isa + v18) != *&_D0)
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

            *(&v9->super.super.isa + v18) = _D0;
            v6 = v19;
          }
        }

        v9 = (v9 + 2);
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

- (id)getUniformsBufferForFrameBufferIndex:(unint64_t)a3 pContents:(NUNICalliopeRenderUniforms *)a4 pOffset:(unint64_t *)a5
{
  v9 = &self->_renderUniformsBuffersCounts[a3];
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
    objc_storeStrong(&self->_renderUniformsBuffers[a3], v12);
  }

  else
  {
    v12 = self->_renderUniformsBuffers[a3];
  }

  v14 = [(MTLBuffer *)v12 contents];
  if (v14)
  {
    *a4 = (v14 + (current << 8));
    *a5 = current << 8;
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
    *a4 = &self->_dummyUniforms;
    *a5 = 0;
  }

  return v15;
}

- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)a3 frameBufferIndex:(unint64_t)a4
{
  v32 = 0;
  v33 = 0;
  v6 = a3;
  v7 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:a4 pContents:&v33 pOffset:&v32];
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
  [v6 setVertexBuffer:v7 offset:v32 atIndex:1];
  v27 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStarfield];
  [v6 setLabel:@"Καλλιόπη Starfield"];
  [v6 setRenderPipelineState:v27];
  v28 = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldVerticesBuffer];
  [v6 setVertexBuffer:v28 offset:0 atIndex:0];

  v29 = [(NUNICalliopeResourceManager *)self->_resourceManager starfieldIndicesBuffer];
  [v6 drawIndexedPrimitives:3 indexCount:384150 indexType:0 indexBuffer:v29 indexBufferOffset:0 instanceCount:1 baseVertex:0 baseInstance:0];

  v30 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForStar];
  [v6 setLabel:@"Καλλιόπη Star"];
  [v6 setRenderPipelineState:v30];
  v31 = [(NUNICalliopeResourceManager *)self->_resourceManager starVerticesBuffer];
  [v6 setVertexBuffer:v31 offset:0 atIndex:0];

  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:702 baseInstance:0];
}

- (void)_renderSaturnRings:(double)a3 frameBufferIndex:(__n128)a4 renderEncoder:(__n128)a5 forwardAngle:(__n128)a6 position:(__n128)a7 isRotated:(float)a8 rotationMatrix:(float)a9 scale:(uint64_t)a10 equatorRotation:(_OWORD *)a11
{
  *&v62[32] = a6;
  *&v62[48] = a7;
  *v62 = a4;
  *&v62[16] = a5;
  v21 = a13;
  v71 = 0;
  v72 = 0;
  v22 = [a1 getUniformsBufferForFrameBufferIndex:a12 pContents:&v72 pOffset:&v71];
  [v21 setVertexBuffer:v22 offset:v71 atIndex:1];
  [v21 setFragmentBuffer:v22 offset:v71 atIndex:0];
  v23 = v72;
  *v72 = *a11;
  v24 = a11[4];
  v26 = a11[1];
  v25 = a11[2];
  v23[3] = a11[3];
  v23[4] = v24;
  v23[1] = v26;
  v23[2] = v25;
  v27 = a11[8];
  v29 = a11[5];
  v28 = a11[6];
  v23[7] = a11[7];
  v23[8] = v27;
  v23[5] = v29;
  v23[6] = v28;
  v30 = a11[12];
  v32 = a11[9];
  v31 = a11[10];
  v23[11] = a11[11];
  v23[12] = v30;
  v23[9] = v32;
  v23[10] = v31;
  v33 = [*(a1 + 48) renderOffscreenPipelineForSaturnRing];
  if (v33)
  {
    [v21 setRenderPipelineState:v33];
    UMFloat4x4MakeScale(a8 * 1.2275);
    if (a14)
    {
      *v35.i64 = UMMul(v34, *v62);
      v67 = v36;
      v69 = v35;
      v63 = v38;
      v65 = v37;
      a2 = a2 - a9;
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
    *&v52 = UMMul(*(a1 + 992), v77);
    v51[6] = v52;
    v51[7] = v53;
    v51[8] = v54;
    v51[9] = v55;
    *v56.i64 = UMFloat4x4MakeRotateZ(a2);
    *(v72 + 32) = vzip1q_s64(v56, v57);
    [v21 setCullMode:0];
    v58 = [*(a1 + 48) saturnRingVerticesBuffer];
    [v21 setVertexBuffer:v58 offset:0 atIndex:0];

    v59 = [*(a1 + 56) gradients];
    v60 = [v59 objectAtIndexedSubscript:7];

    v61 = [v60 atlas];
    [v61 bind:v21 slot:1];

    [v21 drawPrimitives:4 vertexStart:0 vertexCount:26];
  }
}

- (void)_renderLocationDot:(const NUNISpheroidStructure *)a3 scene:(const NUNISceneStructure *)a4 uniPtr:(NUNICalliopeRenderUniforms *)a5 viewport:(NUNIViewport)a6 renderEncoder:(id)a7
{
  v153 = a7;
  v12 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForLocationDot];
  if (v12)
  {
    p_state = &self->_state;
    [v153 setLabel:@"Καλλιόπη LocationDot"];
    [v153 setRenderPipelineState:v12];
    v14 = [(NUNICalliopeResourceManager *)self->_resourceManager rectVerticesBuffer];
    [v153 setVertexBuffer:v14 offset:0 atIndex:0];

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
    distance = a3[4].distance;
    *v24.i64 = UMFloat4x4MakeRotateX(a3[4].distanceScale * -0.017453);
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
    equatorRotation = a3->equatorRotation;
    UMFloat4x4MakeScale(a3[2].equatorRotation * a3[2].opacity);
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

    v54 = *&a3[3].type;
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
    v66.f32[0] = a6.width;
    v66.f32[1] = a6.height;
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
    var1 = a4[1].var8.var0.var1;
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

    *&a5[96].vsh.{?= = v103;
    *&a5[112].vsh.{?= = v104;
    *&a5[128].vsh.{?= = v105;
    *&a5[144].vsh.{?= = v106;
    [v153 setCullMode:{1, *&v107, *&v108, *&v109, *&v110}];
    [v153 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v153 setCullMode:0];
  }
}

- (void)_renderSpriteSpheroid:(const NUNISpheroidStructure *)a3 frameBufferIndex:(unint64_t)a4 renderEncoder:(id)a5
{
  v8 = a5;
  v59 = 0;
  v60 = 0;
  v9 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:a4 pContents:&v60 pOffset:&v59];
  [v8 setVertexBuffer:v9 offset:v59 atIndex:1];
  [v8 setFragmentBuffer:v9 offset:v59 atIndex:0];
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
  type = a3->type;
  v21 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:a3->type layer:0 config:0];
  if (v21)
  {
    [v8 setLabel:@"Καλλιόπη SpriteSpheroid"];
    [v8 setRenderPipelineState:v21];
    v23 = [(NUNICalliopeResourceManager *)self->_resourceManager discVerticesBuffer];
    [v8 setVertexBuffer:v23 offset:0 atIndex:0];

    v24 = v60;
    *v60 = s_sprites[a3[4].type];
    *(v24 + 40) = LODWORD(a3[1].angle);
    v25 = *&a3[3].type;
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
    v38 = a3[2].equatorRotation * a3[2].opacity;
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
    v52 = [(NUNICalliopeTextureGroup *)self->_textureGroup gradients];
    v53 = [v52 objectAtIndexedSubscript:type];

    v54 = [v53 atlas];
    [v54 bind:v8 slot:5];

    [v8 drawPrimitives:4 vertexStart:0 vertexCount:16];
  }
}

- (void)_renderOffscreenSceneWithScene:(const NUNISceneStructure *)a3 spheroids:(id)a4 viewport:(NUNIViewport)a5 commandBuffer:(id)a6 frameBufferIndex:(unint64_t)a7 drawableTexture:(id)a8
{
  v118[4] = *MEMORY[0x277D85DE8];
  height = a5.height;
  v12 = a4;
  v13 = a6;
  v81 = a8;
  [v13 setLabel:@"Καλλιόπη Render"];
  if (__PAIR64__(self->_bloomEnabled, self->_bloomDownsampleUsingTileShaders) == 0x100000001)
  {
    v14 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:a5];
    v15 = [v14 renderPassDescriptor];
    v16 = [v13 renderCommandEncoderWithDescriptor:v15];

    [v16 setLabel:@"Clear Bloom Texture"];
    [v16 endEncoding];
  }

  v17 = self->_offscreenScenes[a7];
  v18 = v17;
  v79 = height;
  v80 = v13;
  if (!v17 || [(NUNCalliopeOffscreen *)v17 width]!= a5.width || [(NUNCalliopeOffscreen *)v18 height]!= height)
  {
    v76 = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v19 = objc_opt_new();
    [v19 setTextureType:2];
    [v19 setWidth:a5.width];
    [v19 setHeight:*&a5 >> 32];
    [v19 setDepth:1];
    [v19 setPixelFormat:10];
    v117[0] = *MEMORY[0x277CD2928];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a5];
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

    v29 = self->_contentMaskSurfaces[a7];
    self->_contentMaskSurfaces[a7] = v28;
    v30 = v28;

    v31 = self->_contentMaskTextures[a7];
    self->_contentMaskTextures[a7] = v27;
    v32 = v27;

    v18 = [[NUNCalliopeOffscreen alloc] initWithDevice:self->_device width:a5 height:v79 texture0:v76 texture1:v32 loadAction:2 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];
    objc_storeStrong(&self->_offscreenScenes[a7], v18);

    v13 = v80;
  }

  [(NUNCalliopeOffscreen *)v18 setTexture0:v81];
  v77 = [v81 width];
  v75 = [v81 height];
  v33 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [v33 setTileWidth:32];

  v34 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  [v34 setTileHeight:32];

  location = &v18->super.isa;
  v35 = [(NUNCalliopeOffscreen *)v18 renderPassDescriptor];
  v36 = [v13 renderCommandEncoderWithDescriptor:v35];

  memset(v116, 0, sizeof(v116));
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v37 = v12;
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

        v43 = [*(*(&v109 + 1) + 8 * i) structure];
        if (v43[5].f32[2] > 0.00001 && v43[3].f32[0] > 0.00001 && v43[9].i8[8] == 1)
        {
          v44 = v43->i32[0];
          _S0 = 0;
          if ((v43->i32[0] - 10) >= 2)
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
                  _S2 = vsubq_f32(self[784], v43[96]).i32[2];
                  __asm { FMLA            S0, S2, V1.S[2] }
                }
              }
            }
          }

          v51 = &__base[8 * v40];
          *v51 = _S0;
          v51[1] = v40;
          *(v116 + v40++) = v43;
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
  *&v89 = a5.width;
  *(&v89 + 1) = v79;
  v90 = xmmword_25B71A440;
  [v36 setViewport:&v88];
  [v36 setCullMode:0];
  [v36 setFrontFacingWinding:0];
  [(NUNICalliopeRenderer *)self _renderOffscreenBackgroundWithRenderEncoder:v36 frameBufferIndex:a7];
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
    *&v52 = v77;
    *(&v52 + 1) = v75;
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
        [(NUNICalliopeRenderer *)self _renderSpriteSpheroid:v56 frameBufferIndex:a7 renderEncoder:v36];
      }

      else if ((v57 & 0x3FE) != 0)
      {
        [(NUNICalliopeRenderer *)self _renderPatchSpheroid:v56 frustumCullingState:&v88 drawableSize:a7 frameBufferIndex:v36 renderEncoder:v82];
      }

      if ((v57 & 8) != 0)
      {
        v58 = *&a3[1].var6;
        if (v58 > 0.00001)
        {
          var7 = a3[1].var7;
          v86 = 0;
          v87 = 0;
          v60 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:a7 pContents:&v87 pOffset:&v86];
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
          v61[43] = a3[1].var8.var0.var0;
          [NUNICalliopeRenderer _renderLocationDot:"_renderLocationDot:scene:uniPtr:viewport:renderEncoder:" scene:v56 uniPtr:a3 viewport:? renderEncoder:?];
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
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureUsingTileShaderWithViewport:a5 renderEncoder:v36];
      [v36 endEncoding];
    }

    else
    {
      [v36 endEncoding];
      v72 = [location texture0];
      [(NUNICalliopeRenderer *)self _renderOffscreenBloomTextureWithViewport:a5 sceneTexture:v72 commandBuffer:v80];
    }

    v73 = [v80 computeCommandEncoder];
    [(NUNICalliopeRenderer *)self _computeBloomChainTextures:v73];
    [v73 endEncoding];
  }

  else
  {
    [v36 endEncoding];
    v71 = v80;
  }

  v74 = *MEMORY[0x277D85DE8];
}

- (id)_getOrCreateOffscreenBloomWithViewport:(NUNIViewport)a3
{
  v5 = (a3.width >> 2);
  v6 = *&a3 >> 34;
  offscreenBloom = self->_offscreenBloom;
  if (!offscreenBloom || [(NUNCalliopeOffscreen *)offscreenBloom width]!= v5 || [(NUNCalliopeOffscreen *)self->_offscreenBloom height]!= v6)
  {
    v8 = _NUNCalliopeCreateTexture(self->_device, v5, v6, 1, 10, 1);
    [(NUNICalliopeRenderer *)self _setupBloomChainWithViewport:a3 bloomTexture:v8];
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

- (void)_renderOffscreenBloomTextureUsingTileShaderWithViewport:(NUNIViewport)a3 renderEncoder:(id)a4
{
  v6 = a4;
  v7 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:a3];
  [v6 pushDebugGroup:@"Καλλιόπη Bloom Downsample"];
  v8 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsampleUsingTileShader];
  [v6 setRenderPipelineState:v8];

  v9 = [v7 texture0];
  [v6 setTileTexture:v9 atIndex:0];

  v10[0] = [v6 tileWidth] >> 1;
  v10[1] = [v6 tileHeight] >> 1;
  v10[2] = 1;
  [v6 dispatchThreadsPerTile:v10];
  [v6 setTileTexture:0 atIndex:0];
  [v6 popDebugGroup];
}

- (void)_renderOffscreenBloomTextureWithViewport:(NUNIViewport)a3 sceneTexture:(id)a4 commandBuffer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(NUNICalliopeRenderer *)self _getOrCreateOffscreenBloomWithViewport:a3];
  v11 = [v10 renderPassDescriptor];
  v12 = [v8 renderCommandEncoderWithDescriptor:v11];

  v13 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForBloomDownsample];
  [v12 setLabel:@"Καλλιόπη Bloom Downsample"];
  [v12 setRenderPipelineState:v13];
  v14[0] = 0;
  v14[1] = 0;
  *&v14[2] = [v10 width];
  *&v14[3] = [v10 height];
  v15 = xmmword_25B71A440;
  [v12 setViewport:v14];
  [v12 setCullMode:0];
  [v12 setFragmentTexture:v9 atIndex:0];

  [v12 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v12 endEncoding];
}

- (void)_setupBloomChainWithViewport:(NUNIViewport)a3 bloomTexture:(id)a4
{
  v30 = a4;
  if (!v30)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v6 = 0;
  v7 = fmaxf(a3.width, a3.height) * 0.025;
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
  [v11 setWidth:{objc_msgSend(v30, "width") >> 1}];
  [v11 setHeight:{objc_msgSend(v30, "height") >> 1}];
  [v11 setMipmapLevelCount:v9 - 1];
  [v11 setPixelFormat:25];
  [v11 setUsage:3];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  texture = self->_bloomChain.texture;
  self->_bloomChain.texture = v12;

  v14 = [v30 width];
  v15 = [v30 height];
  if (!v14)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  if (!v15)
  {
    [NUNICalliopeRenderer _setupBloomChainWithViewport:bloomTexture:];
  }

  v16 = 0;
  v17.i64[0] = v14;
  v17.i64[1] = v15;
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
      v23 = v30;
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

- (void)_computeBloomChainTextures:(id)a3
{
  v4 = a3;
  v5 = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainDownsample];
  v6 = [(NUNICalliopeResourceManager *)self->_resourceManager computePipelineForBloomChainUpsample];
  if (!v5)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  v7 = v6;
  if (!v6)
  {
    [NUNICalliopeRenderer _computeBloomChainTextures:];
  }

  [v4 pushDebugGroup:@"Καλλιόπη Bloom Chain Downsample"];
  [v4 setComputePipelineState:v5];
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
      [v4 setTexture:? atIndex:?];
      [v4 setTexture:v9->texture atIndex:1];
      v17 = *&v9->numThreadgroups.width;
      depth = v9->numThreadgroups.depth;
      v15 = v13;
      v16 = 1;
      [v4 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      ++v9;
    }

    while (v8 < self->_bloomChain.numLevels - 1);
  }

  [v4 popDebugGroup];
  [v4 pushDebugGroup:@"Καλλιόπη Bloom Chain Upsample"];
  [v4 setComputePipelineState:v7];
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

      [v4 setTexture:? atIndex:?];
      [v4 setTexture:*v12 atIndex:1];
      v17 = *(v12 + 1);
      depth = v12[3];
      v15 = v14;
      v16 = 1;
      [v4 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
      --v11;
      v12 -= 4;
    }

    while (v11 > 1);
  }

  [v4 popDebugGroup];
}

- (void)_renderOffscreenPostWithScene:(const NUNISceneStructure *)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 frameBufferIndex:(unint64_t)a6
{
  height = a4.height;
  v11 = self->_offscreenScenes[a6];
  v12 = self->_offscreenPosts;
  p_bloomChain = &self->_bloomChain;
  *&self->_anon_421[191] = 1.0 / (self->_bloomChain.numLevels - 1);
  v40 = 0;
  v41 = 0;
  v14 = a5;
  v15 = [(NUNICalliopeRenderer *)self getUniformsBufferForFrameBufferIndex:a6 pContents:&v41 pOffset:&v40];
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
  if (!v12 || [(NUNCalliopeOffscreen *)v12 width]!= a4.width || [(NUNCalliopeOffscreen *)v12 height]!= height)
  {
    v26 = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v36 = v12;
    v37 = v15;
    v27 = v11;
    v28 = [NUNCalliopeOffscreen alloc];
    device = self->_device;
    v30 = [(NUNCalliopeOffscreen *)v27 texture1];
    v31 = device;
    p_bloomChain = &self->_bloomChain;
    v12 = [(NUNCalliopeOffscreen *)v28 initWithDevice:v31 width:a4 height:height texture0:v26 texture1:v30 loadAction:1 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(&self->_offscreenPosts, v12);
    v11 = v27;
    v15 = v37;
  }

  v32 = [(NUNCalliopeOffscreen *)v11 texture0];
  [(NUNCalliopeOffscreen *)v12 setTexture0:v32];

  v33 = [(NUNCalliopeOffscreen *)v12 renderPassDescriptor];
  v34 = [v14 renderCommandEncoderWithDescriptor:v33];

  v35 = [(NUNICalliopeResourceManager *)self->_resourceManager renderOffscreenPipelineForPost];
  [v34 setLabel:@"Καλλιόπη Post"];
  [v34 setRenderPipelineState:v35];
  v38[0] = 0;
  v38[1] = 0;
  *&v38[2] = a4.width;
  *&v38[3] = height;
  v39 = xmmword_25B71A440;
  [v34 setViewport:v38];
  [v34 setCullMode:0];
  [v34 setFragmentBuffer:v15 offset:v40 atIndex:0];
  [v34 setFragmentTexture:p_bloomChain->texture atIndex:1];
  [v34 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v34 endEncoding];
}

- (void)renderOffscreenWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5
{
  -[NUNICalliopeRenderer _updateStateWithScene:viewport:](self, "_updateStateWithScene:viewport:", [a3 structure], a4);

  [(NUNICalliopeRenderer *)self _updateBaseUniformsForViewport:a4];
}

- (void)renderWithScene:(id)a3 viewport:(NUNIViewport)a4 commandBuffer:(id)a5 passDescriptor:(id)a6
{
  v18 = a5;
  v10 = self->_frame % 3;
  v11 = a6;
  v12 = a3;
  v13 = [v12 structure];
  v14 = [v11 colorAttachments];

  v15 = [v14 objectAtIndexedSubscript:0];

  v16 = [v15 texture];
  self->_renderUniformsBuffersCounts[v10].current = 0;
  v17 = [v12 spheroids];

  [(NUNICalliopeRenderer *)self _renderOffscreenSceneWithScene:v13 spheroids:v17 viewport:a4 commandBuffer:v18 frameBufferIndex:v10 drawableTexture:v16];
  if (self->_bloomEnabled)
  {
    [(NUNICalliopeRenderer *)self _renderOffscreenPostWithScene:v13 viewport:a4 commandBuffer:v18 frameBufferIndex:v10];
  }

  [(NUNCalliopeOffscreen *)self->_offscreenScenes[v10] setTexture0:0];
  [(NUNCalliopeOffscreen *)self->_offscreenPosts setTexture0:0];
  [(CALayer *)self->_contentMaskLayer setContents:self->_contentMaskSurfaces[v10]];
  ++self->_frame;
}

- (void)prepareWorldSpaceFrustumWithTransform:(id *)a3 withState:(id *)a4
{
  v12.columns[2] = *(a3 + 2);
  v12.columns[3] = *(a3 + 3);
  v12.columns[0] = *a3;
  v12.columns[1] = *(a3 + 1);
  v13 = __invert_f4(v12);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = &prepareWorldSpaceFrustumWithTransform_withState__projectedPositions + 64 * v5;
    v10 = a4 + 64 * v5;
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

- (void)prepareObjectSpaceFrustumWithTransform:(id *)a3 withState:(id *)a4
{
  v17.columns[2] = *(a3 + 2);
  v17.columns[3] = *(a3 + 3);
  v17.columns[0] = *a3;
  v17.columns[1] = *(a3 + 1);
  v18 = __invert_f4(v17);
  v6 = 0;
  LOBYTE(v7) = 1;
  do
  {
    v8 = v7;
    v9 = (a4 + 64 * v6 + 128);
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
  v10 = (a4 + 256);
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

    [(NUNICalliopeRenderer *)self buildFrustumPlane:*(v10 - 16) p2:*(v10 - 8) p3:*(a4 + 2 * v14 + 24)];
    *v10 = v15;
    v10 += 2;
    v11 = v13;
  }

  while (v13);
  [(NUNICalliopeRenderer *)self buildFrustumPlane:*(a4 + 16) p2:*(a4 + 18) p3:*(a4 + 20)];
  *(a4 + 20) = v16;
}

- (double)buildFrustumPlane:(float32x4_t)a1 p2:(float32x4_t)a2 p3:(float32x4_t)a3
{
  v3 = vsubq_f32(a2, a1);
  v4 = vsubq_f32(a3, a2);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(v3)), v4, vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL));
  v6 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v7 = vmulq_f32(v5, v5);
  v5.f32[0] = v7.f32[1] + (v7.f32[2] + v7.f32[0]);
  *v7.f32 = vrsqrte_f32(v5.u32[0]);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32)));
  *&result = vmulq_n_f32(v6, vmul_f32(*v7.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v7.f32, *v7.f32))).f32[0]).u64[0];
  return result;
}

- (int)classifyObjectBoundingBoxVersusFrustum:(NUNICalliopeRenderer *)self max:(SEL)a2 withState:
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

- (BOOL)isObjectBoundingBoxInsideOrIntersectingFrustum:(NUNICalliopeRenderer *)self max:(SEL)a2 withState:
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

- (id)spheroidAtPoint:(id)a3 scene:(NUNIViewport)a4 viewport:
{
  v6 = v4;
  v65 = *MEMORY[0x277D85DE8];
  height = a4.height;
  v9 = a3;
  -[NUNICalliopeRenderer _updateStateWithScene:viewport:](self, "_updateStateWithScene:viewport:", [v9 structure], a4);
  p_state = &self->_state;
  memset(v64, 0, sizeof(v64));
  v55 = v9;
  v11 = [v9 spheroids];
  v12 = [v11 count];
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
      v16 = [v11 objectAtIndexedSubscript:v13];
      v17 = [v16 structure];

      if (v17[5].f32[2] > 0.00001 && v17[3].f32[0] > 0.00001 && v17[9].i8[8] == 1 && ((1 << v17->i32[0]) & 0x3FE) != 0)
      {
        _S2 = vsubq_f32(p_state[32], v17[96]).i32[2];
        __asm { FMLA            S1, S2, V0.S[2] }

        v24 = &__base[8 * v14];
        *v24 = _S1;
        v24[1] = v13;
        *(v64 + v13) = v17;
        ++v14;
      }

      ++v13;
    }

    while (v15 != v13);
  }

  width = a4.width;
  v58 = height;
  qsort(__base, v14, 8uLL, _NUNICalliopeRenderCompareObject);
  if (a4.width <= height)
  {
    aspect = p_state->aspect;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v27.i32[1] = _D1.i32[1];
  if (height > a4.width)
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

    v29.f32[0] = a4.width;
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

    v52 = [v11 objectAtIndexedSubscript:v36];
  }

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

@end