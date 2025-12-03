@interface NUNIAegirRenderer
- (NUNIAegirRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (id)getOrCreateUniformBufferforFrameBufferIndex:(unint64_t)index;
- (void)_renderLocationDot:(id)dot uniPtr:(NUNIAegirRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder;
- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenBloomWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenPostWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index;
- (void)_renderOffscreenSceneWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture;
- (void)_renderRaytraceSpheroid:(id)spheroid uniPtr:(NUNIAegirRenderUniforms *)ptr renderEncoder:(id)encoder;
- (void)_renderSpriteSpheroid:(id)spheroid uniPtr:(NUNIAegirRenderUniforms *)ptr renderEncoder:(id)encoder;
- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport;
- (void)_updateStateWithScene:(id)scene viewport:(NUNIViewport)viewport;
- (void)dealloc;
- (void)purgeUnusedWithScene:(id)scene;
- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer;
- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setRendererOptions:(id)options;
@end

@implementation NUNIAegirRenderer

- (NUNIAegirRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  v21.receiver = self;
  v21.super_class = NUNIAegirRenderer;
  v9 = [(NUNIRenderer *)&v21 initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:style];
  if (v9)
  {
    v10 = [NUNIAegirResourceManager sharedInstanceWithDisplayPixelFormat:format];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v10;

    [(NUNIAegirResourceManager *)v9->_resourceManager addClient];
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    device = v9->_device;
    v9->_device = mEMORY[0x277CFA798];

    v14 = [(NUNIAegirResourceManager *)v9->_resourceManager textureGroupWithSuffix:suffixCopy];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    v16 = 3;
    v17 = v9;
    do
    {
      v18 = objc_opt_new();
      v19 = v17->_renderUniformsBuffers[0];
      v17->_renderUniformsBuffers[0] = v18;

      v17 = (v17 + 8);
      --v16;
    }

    while (v16);
    v9->_supportsMTLGPUFamilyApple6 = [(MTLDevice *)v9->_device supportsFamily:1006];
  }

  return v9;
}

- (void)dealloc
{
  [(NUNIAegirResourceManager *)self->_resourceManager removeClient];
  v3.receiver = self;
  v3.super_class = NUNIAegirRenderer;
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
  snap = [scene snap];
  mEMORY[0x277CFA7B0] = [MEMORY[0x277CFA7B0] sharedInstance];
  nullTexture2D = [MEMORY[0x277CFA7C0] nullTexture2D];
  for (i = 0; i != 24; ++i)
  {
    if (snap != i)
    {
      albedos = [(NUNIAegirTextureGroup *)self->_textureGroup albedos];
      v8 = [albedos objectAtIndexedSubscript:i];

      if (v8 != nullTexture2D)
      {
        atlas = [v8 atlas];
        uuid = [atlas uuid];
        [mEMORY[0x277CFA7B0] purge:uuid];
      }

      normals = [(NUNIAegirTextureGroup *)self->_textureGroup normals];
      v12 = [normals objectAtIndexedSubscript:i];

      if (v12 != nullTexture2D)
      {
        atlas2 = [v12 atlas];
        uuid2 = [atlas2 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid2];
      }

      emissives = [(NUNIAegirTextureGroup *)self->_textureGroup emissives];
      v16 = [emissives objectAtIndexedSubscript:i];

      if (v16 != nullTexture2D)
      {
        atlas3 = [v16 atlas];
        uuid3 = [atlas3 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid3];
      }

      cloudsLo = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsLo];
      v20 = [cloudsLo objectAtIndexedSubscript:i];

      if (v20 != nullTexture2D)
      {
        atlas4 = [v20 atlas];
        uuid4 = [atlas4 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid4];
      }

      cloudsMd = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsMd];
      v24 = [cloudsMd objectAtIndexedSubscript:i];

      if (v24 != nullTexture2D)
      {
        atlas5 = [v24 atlas];
        uuid5 = [atlas5 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid5];
      }

      cloudsHi = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsHi];
      v28 = [cloudsHi objectAtIndexedSubscript:i];

      if (v28 != nullTexture2D)
      {
        atlas6 = [v28 atlas];
        uuid6 = [atlas6 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid6];
      }

      gradients = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
      v32 = [gradients objectAtIndexedSubscript:i];

      if (v32 != nullTexture2D)
      {
        atlas7 = [v32 atlas];
        uuid7 = [atlas7 uuid];
        [mEMORY[0x277CFA7B0] purge:uuid7];
      }
    }
  }
}

- (void)_updateStateWithScene:(id)scene viewport:(NUNIViewport)viewport
{
  width = viewport.width;
  height = viewport.height;
  sceneCopy = scene;
  [sceneCopy cameraPosition];
  v83 = v8;
  [sceneCopy cameraTarget];
  v77 = v9;
  [sceneCopy cameraRoll];
  v11 = v10;
  [sceneCopy cameraOffset];
  v76 = v12;
  _Q0 = vsubq_f32(v77, v83);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v84 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  [sceneCopy cameraUp];
  v81 = v20;

  v21 = v84;
  v22 = vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL);
  _Q4 = v81;
  _Q3 = vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL);
  v24 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q4, _Q4, 0xCuLL), _Q4, 8uLL), vnegq_f32(v24)), _Q3, v22);
  _Q3.i32[0] = _Q2.i32[2];
  __asm { FMLA            S4, S3, V2.S[2] }

  _Q3.f32[0] = sqrtf(*_Q4.i32);
  if (_Q3.f32[0] < 0.00001)
  {
    _Q2 = vmlaq_f32(vmulq_f32(v24, xmmword_25B71A3B0), xmmword_25B719C90, v22);
    _Q3.i64[0] = _Q2.u32[2];
    __asm { FMLA            S4, S3, V2.S[2] }

    _Q3.f32[0] = sqrtf(_S4);
    if (_Q3.f32[0] < 0.00001)
    {
      _Q2 = vmlaq_f32(vmulq_f32(v24, xmmword_25B71A3C0), xmmword_25B71A3D0, v22);
      _Q3.i64[0] = _Q2.u32[2];
      __asm { FMLA            S4, S3, V2.S[2] }

      _Q3.f32[0] = sqrtf(_S4);
    }
  }

  v29 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(v22, vnegq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL))), v24, vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v74 = vnegq_f32(vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0)));
  v75 = v29;
  v33 = width / height;
  if (v33 >= 1.0)
  {
    v35 = 0.34907;
  }

  else
  {
    v34 = atanf(0.17633 / v33);
    v35 = v34 + v34;
  }

  *v36.f32 = UMFloat4x4MakeLookAt(*v75.i64, v74.f32[0]);
  v80 = v37;
  v82 = v36;
  v78 = v39;
  v79 = v38;
  if (fabsf(v11) > 0.00001)
  {
    v40 = __sincosf_stret(v11 * 0.5);
    v41 = vmul_n_f32(*v84.f32, v40.__sinval);
    *v42.f32 = UMFloat4x4Make(v41.f32[0], v41.f32[1], vmuls_lane_f32(v40.__sinval, v84, 2), v40.__cosval);
    v89.columns[0] = v42;
    v89.columns[1] = v43;
    v89.columns[2] = v44;
    v89.columns[3] = v45;
    v85.columns[1] = v80;
    v85.columns[0] = v82;
    v85.columns[3] = v78;
    v85.columns[2] = v79;
    *v46.i64 = UMMul(v85, v89);
    v80 = v47;
    v82 = v46;
    v78 = v49;
    v79 = v48;
  }

  *v50.i64 = UMFloat4x4MakeTranslate();
  v90.columns[0] = v50;
  v90.columns[1] = v51;
  v90.columns[2] = v52;
  v90.columns[3] = v53;
  v86.columns[1] = v80;
  v86.columns[0] = v82;
  v86.columns[3] = v78;
  v86.columns[2] = v79;
  *v54.i64 = UMMul(v86, v90);
  v72 = v55;
  v73 = v54;
  v70 = v57;
  v71 = v56;
  v58.f32[0] = UMFloat4x4MakePerspective((v35 * 180.0) / 3.1416, width / height, 0.001, 5.0);
  v68 = v59;
  v69 = v58;
  v66 = v61;
  v67 = v60;
  *v87.columns[0].i64 = UMFloat4x4MakeTranslate();
  v91.columns[1] = v68;
  v91.columns[0] = v69;
  v91.columns[3] = v66;
  v91.columns[2] = v67;
  *v88.columns[0].i64 = UMMul(v87, v91);
  v92.columns[1] = v72;
  v92.columns[0] = v73;
  v92.columns[3] = v70;
  v92.columns[2] = v71;
  *&v62 = UMMul(v88, v92);
  self->_state.viewport.width = width;
  self->_state.viewport.height = height;
  self->_state.cameraRoll = v11;
  self->_state.aspect = v33;
  self->_state.fovY = v35;
  *self->_anon_f4 = 0;
  *&self->_anon_f4[4] = v76;
  *&self->_anon_f4[12] = v83;
  *&self->_anon_f4[28] = v77;
  *&self->_anon_f4[44] = v74;
  *&self->_anon_f4[60] = v75;
  *&self->_anon_f4[76] = v84;
  *&self->_anon_f4[92] = v82;
  *&self->_anon_f4[108] = v80;
  *&self->_anon_f4[124] = v79;
  *&self->_anon_f4[140] = v78;
  *&self->_anon_f4[156] = v73;
  *&self->_anon_f4[172] = v72;
  *&self->_anon_f4[188] = v71;
  *&self->_anon_f4[204] = v70;
  *&self->_anon_f4[220] = v62;
  *&self->_anon_f4[236] = v63;
  *&self->_anon_f4[252] = v64;
  *&self->_anon_f4[268] = v65;
}

- (void)_updateBaseUniformsForViewport:(NUNIViewport)viewport
{
  width = viewport.width;
  v47 = *MEMORY[0x277D85DE8];
  height = viewport.height;
  v6 = 0x27FA49000uLL;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_frame, 2) <= 0x444444444444444uLL)
  {
    changeSequence = [(NUNIRendererOptions *)self->_rendererOptions changeSequence];
    if (changeSequence != self->_rendererOptionsChangeSequence)
    {
      v41 = height;
      v42 = width;
      v8 = 0;
      self->_rendererOptionsChangeSequence = changeSequence;
      selfCopy = self;
      do
      {
        v10 = _updateBaseUniformsForViewport__optionKeys_0[v8];
        v11 = [(NUNIRendererOptions *)self->_rendererOptions fractionValueForOption:v10];
        v12 = v11;
        if (v11)
        {
          [v11 doubleValue];
          *&v13 = v13;
          v14 = *(v6 + 3020);
          _H1 = *(&selfCopy->super.super.isa + v14);
          __asm { FCVT            S1, H1 }

          if (*&v13 != _S1)
          {
            v21 = v6;
            v22 = NUNILoggingObjectForDomain(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              *&buf[4] = v10;
              *&buf[12] = 2114;
              *&buf[14] = v12;
              _os_log_debug_impl(&dword_25B6D4000, v22, OS_LOG_TYPE_DEBUG, "Overriding option %{public}@ with value %{public}@", buf, 0x16u);
            }

            [v12 doubleValue];
            __asm { FCVT            H0, D0 }

            *(&selfCopy->super.super.isa + v14) = _D0;
            v6 = v21;
          }
        }

        selfCopy = (selfCopy + 2);
        ++v8;
      }

      while (v8 != 35);
      resourceManager = self->_resourceManager;
      v25 = self + *(v6 + 3020);
      v26 = *(v25 + 3);
      v45 = *(v25 + 2);
      v46[0] = v26;
      *(v46 + 14) = *(v25 + 62);
      v27 = *(v25 + 1);
      *buf = *v25;
      *&buf[16] = v27;
      [(NUNIAegirResourceManager *)resourceManager setPipelineConstants:buf];
      height = v41;
      width = v42;
    }
  }

  v28 = *&self->_anon_f4[4];
  aspect = self->_state.aspect;
  if (height <= width)
  {
    v30 = height;
    __asm { FMOV            V2.2S, #1.0 }

    *&_D2 = width / height;
  }

  else
  {
    v30 = width;
    __asm { FMOV            V2.2S, #1.0 }

    *(&_D2 + 1) = height / width;
  }

  v43 = _D2;
  v32 = tanf(self->_state.fovY * 0.5);
  v33 = self + *(v6 + 3020);
  _H4 = *(v33 + 5);
  __asm { FCVT            S4, H4 }

  v36 = (_S4 * 5.0) + 1.0;
  LOWORD(_S4) = *(v33 + 6);
  __asm { FCVT            S4, H4 }

  v38 = _S4 * -10.0;
  LODWORD(v33) = *(v33 + 6);
  *&self->_baseUniforms.var5 = 0u;
  *&self->_baseUniforms.var9 = 0u;
  *&self->_baseUniforms.var13 = 0u;
  *&self->_baseUniforms.var17 = 0u;
  *&self->_baseUniforms.var21 = 0u;
  *self->_anon_260 = 0u;
  *&self->_anon_260[16] = 0u;
  *&self->_anon_260[32] = 0u;
  *&self->_anon_260[48] = 0u;
  *&self->_anon_260[64] = 0u;
  *&self->_anon_260[80] = 0u;
  *&self->_anon_260[96] = 0u;
  *&self->_anon_260[112] = 0u;
  *&self->_anon_260[128] = 0u;
  v39.i32[0] = v33;
  *&self->_anon_260[144] = 0u;
  *&self->_anon_260[160] = 0u;
  *&self->_anon_260[176] = 0u;
  *&self->_anon_260[192] = 0u;
  *&self->_anon_260[208] = 0u;
  *&self->_anon_260[224] = 0u;
  *&self->_anon_260[240] = 0u;
  *&self->_anon_260[256] = v28;
  *&self->_anon_260[264] = v43;
  *&self->_anon_260[272] = 1.0 / v30;
  *&self->_anon_260[276] = (-1.0 / v32) / aspect;
  *&self->_anon_260[280] = 0x3E31D0D400000000;
  *&self->_anon_260[288] = 0;
  *&self->_anon_260[292] = v38;
  *&self->_anon_260[296] = ((-1.0 / v36) * v38) - v38;
  *&self->_anon_260[300] = vcvtq_f32_f16(vmul_f16(v39, v39)).u64[0];
  *&self->_anon_260[308] = v36;
  *&self->_anon_260[312] = 0u;
  *&self->_anon_260[328] = 0u;
  *&self->_anon_260[344] = 0;
  v40 = *MEMORY[0x277D85DE8];
}

- (id)getOrCreateUniformBufferforFrameBufferIndex:(unint64_t)index
{
  v5 = self->_renderUniformsBuffers[index];
  v6 = self->_renderUniformBuffersCounts[index];
  self->_renderUniformBuffersCounts[index] = v6 + 1;
  if ([(NSMutableArray *)v5 count]<= v6)
  {
    v7 = [(MTLDevice *)self->_device newBufferWithLength:432 options:1];
    [(NSMutableArray *)v5 addObject:v7];
  }

  else
  {
    v7 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (void)_renderOffscreenBackgroundWithRenderEncoder:(id)encoder frameBufferIndex:(unint64_t)index
{
  encoderCopy = encoder;
  v24 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:index];
  v7 = v24;
  contents = [v24 contents];
  memcpy(contents, &self->_baseUniforms, 0x1B0uLL);
  *(contents + 144) = __invert_f4(*&self->_anon_f4[156]);
  v9 = *&self->_anon_f4[12];
  *v10.i64 = UMFloat4x4MakeTranslate();
  v26.columns[0] = v10;
  v26.columns[1] = v11;
  v26.columns[2] = v12;
  v26.columns[3] = v13;
  *&v14 = UMMul(*&self->_anon_f4[220], v26);
  *(contents + 272) = v14;
  *(contents + 288) = v15;
  *(contents + 304) = v16;
  *(contents + 320) = v17;
  [encoderCopy setVertexBuffer:v24 offset:0 atIndex:1];
  rectVerticesBuffer = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [encoderCopy setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

  renderOffscreenPipelineForStarfield = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForStarfield];
  [encoderCopy setLabel:@"Ægir Starfield"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStarfield];
  [encoderCopy setFragmentBuffer:v24 offset:0 atIndex:0];
  starfield = [(NUNIAegirTextureGroup *)self->_textureGroup starfield];
  atlas = [starfield atlas];
  [atlas bind:encoderCopy slot:1];

  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  starVerticesBuffer = [(NUNIAegirResourceManager *)self->_resourceManager starVerticesBuffer];
  [encoderCopy setVertexBuffer:starVerticesBuffer offset:0 atIndex:0];

  renderOffscreenPipelineForStar = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForStar];
  [encoderCopy setLabel:@"Ægir Star"];
  [encoderCopy setRenderPipelineState:renderOffscreenPipelineForStar];
  [encoderCopy setFragmentBuffer:v24 offset:0 atIndex:0];
  [encoderCopy drawPrimitives:3 vertexStart:0 vertexCount:4212];
}

- (void)_renderRaytraceSpheroid:(id)spheroid uniPtr:(NUNIAegirRenderUniforms *)ptr renderEncoder:(id)encoder
{
  spheroidCopy = spheroid;
  encoderCopy = encoder;
  type = [spheroidCopy type];
  [spheroidCopy opacity];
  ptr[4].var15 = v10;
  [spheroidCopy equatorRotation];
  v12 = v11;
  [spheroidCopy radius];
  v14 = v13;
  [spheroidCopy radiusScale];
  v94 = v14 * v15;
  UMFloat4x4MakeScale(v14 * v15);
  v99 = v17;
  v101 = v16;
  v95 = v19;
  v97 = v18;
  if (v12 != 0.0)
  {
    *v20.i64 = UMFloat4x4MakeRotateZ(v12 + 1.5708);
    v110.columns[0] = v20;
    v110.columns[1] = v21;
    v110.columns[2] = v22;
    v110.columns[3] = v23;
    v105.columns[1] = v99;
    v105.columns[0] = v101;
    v105.columns[3] = v95;
    v105.columns[2] = v97;
    *v24.i64 = UMMul(v105, v110);
    v99 = v25;
    v101 = v24;
    v95 = v27;
    v97 = v26;
  }

  [spheroidCopy position];
  *v28.i64 = UMFloat4x4MakeTranslate();
  v89 = v29;
  v90 = v28;
  v87 = v31;
  v88 = v30;
  v111.columns[1] = v99;
  v111.columns[0] = v101;
  v111.columns[3] = v95;
  v111.columns[2] = v97;
  *v106.columns[0].i64 = UMMul(*&self->_anon_f4[92], v111);
  v107 = __invert_f4(v106);
  v91 = v107.columns[0];
  v92 = v107.columns[1];
  v93 = v107.columns[2];
  v107.columns[1] = v89;
  v107.columns[0] = v90;
  v107.columns[3] = v87;
  v107.columns[2] = v88;
  v112.columns[1] = v99;
  v112.columns[0] = v101;
  v112.columns[3] = v95;
  v112.columns[2] = v97;
  *v32.i64 = UMMul(v107, v112);
  v113.columns[0] = v32;
  v113.columns[1] = v33;
  v113.columns[2] = v34;
  v113.columns[3] = v35;
  *v108.columns[0].i64 = UMMul(*&self->_anon_f4[156], v113);
  v100 = v108.columns[1];
  v102 = v108.columns[0];
  v96 = v108.columns[3];
  v98 = v108.columns[2];
  v109 = __invert_f4(v108);
  v36 = vcvt_f16_f32(v91);
  _S5 = v91.i32[2];
  __asm { FCVT            H5, S5 }

  v36.i16[2] = _S5;
  _D5 = vcvt_f16_f32(v92);
  _S6 = v92.i32[2];
  __asm { FCVT            H6, S6 }

  _D5.i16[2] = _S6;
  *&ptr[1].var13 = v36;
  *&ptr[1].var15 = _D5;
  v44 = vcvt_f16_f32(v93);
  _D5.i32[0] = v93.i32[2];
  __asm { FCVT            H5, S5 }

  v44.i16[2] = _D5.i16[0];
  v45 = vcvt_f16_f32(v109.columns[3]);
  _S6 = v109.columns[3].i32[2];
  __asm { FCVT            H6, S6 }

  v45.i16[2] = _S6;
  *&ptr[1].var17 = v44;
  *&ptr[1].var19 = v45;
  *&ptr[1].var21 = v109;
  *&ptr[2].var17 = v102;
  *&ptr[2].var21 = v100;
  *&ptr[3].var5 = v98;
  *&ptr[3].var9 = v96;
  [spheroidCopy light];
  v92.i32[0] = v47;
  v49 = __sincosf_stret(v48);
  v50 = __sincosf_stret(v92.f32[0]);
  v51.f32[0] = v50.__cosval * v49.__sinval;
  v51.f32[1] = v50.__sinval * v49.__sinval;
  v51.i64[1] = LODWORD(v49.__cosval);
  *&v52 = UMMul(*&self->_anon_f4[156], *&self->_anon_f4[172], *&self->_anon_f4[188], *&self->_anon_f4[204], v51);
  *&ptr->var13 = v52;
  *&v53 = UMMul(v102, v100, v98, v96, xmmword_25B719D40);
  *(&v53 + 3) = v94 * v94;
  *&ptr->var9 = v53;
  if (type == 3)
  {
    if (ptr->var15 < 0.0 && self->_supportsMTLGPUFamilyApple6)
    {
      *&ptr[4].var23 = vmul_f32(vmul_n_f32(0x42DA000046B73E00, v94), *&ptr[4].var20);
      v54 = 2;
    }

    else
    {
      v54 = 0;
    }

    _H0 = *&self->_anon_3c4[46];
    __asm { FCVT            S8, H0 }

    [spheroidCopy cloudOpacity];
    v60 = v59 * _S8;
    ptr[5].var10 = v60;
    v61 = v60 <= 0.00001;
    v56 = v60 > 0.00001;
    if (v60 <= 0.00001)
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 + 1;
    }

    v62 = v94 * 0.98;
    if (!v61)
    {
      ptr[5].var6 = v94 * v94;
      v63 = vcvt_f32_f64(vmulq_n_f64(xmmword_25B737AB0, v94));
      *&ptr[5].var7 = vmul_f32(v63, v63);
      ptr[5].var9 = v94 * 0.02;
    }

    v64 = v62 * 1.125;
    ptr[5].var5 = v62 * v62;
    v65 = v62 * 0.95;
    ptr[5].var11 = v64;
    ptr[5].var12 = v65;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v66 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:type config:v55, *&v87, *&v88, *&v89, *&v90];
  if (v66)
  {
    [encoderCopy setLabel:@"Ægir RaytraceSpheroid"];
    [encoderCopy setRenderPipelineState:v66];
    albedos = [(NUNIAegirTextureGroup *)self->_textureGroup albedos];
    v68 = [albedos objectAtIndexedSubscript:type];

    atlas = [v68 atlas];
    [atlas bind:encoderCopy slot:1];

    normals = [(NUNIAegirTextureGroup *)self->_textureGroup normals];
    v71 = [normals objectAtIndexedSubscript:type];

    atlas2 = [v71 atlas];
    [atlas2 bind:encoderCopy slot:2];

    emissives = [(NUNIAegirTextureGroup *)self->_textureGroup emissives];
    v74 = [emissives objectAtIndexedSubscript:type];

    atlas3 = [v74 atlas];
    [atlas3 bind:encoderCopy slot:3];

    if (v56)
    {
      cloudsLo = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsLo];
      v77 = [cloudsLo objectAtIndexedSubscript:type];

      atlas4 = [v77 atlas];
      [atlas4 bind:encoderCopy slot:5];

      cloudsMd = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsMd];
      v80 = [cloudsMd objectAtIndexedSubscript:type];

      atlas5 = [v80 atlas];
      [atlas5 bind:encoderCopy slot:6];

      cloudsHi = [(NUNIAegirTextureGroup *)self->_textureGroup cloudsHi];
      v74 = [cloudsHi objectAtIndexedSubscript:type];

      atlas6 = [v74 atlas];
      [atlas6 bind:encoderCopy slot:7];
    }

    gradients = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
    v85 = [gradients objectAtIndexedSubscript:type];

    atlas7 = [v85 atlas];
    [atlas7 bind:encoderCopy slot:4];

    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_renderLocationDot:(id)dot uniPtr:(NUNIAegirRenderUniforms *)ptr viewport:(NUNIViewport)viewport renderEncoder:(id)encoder
{
  dotCopy = dot;
  encoderCopy = encoder;
  renderOffscreenPipelineForLocationDot = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForLocationDot];
  if (renderOffscreenPipelineForLocationDot)
  {
    p_state = &self->_state;
    [encoderCopy setLabel:@"Ægir LocationDot"];
    [encoderCopy setRenderPipelineState:renderOffscreenPipelineForLocationDot];
    UMFloat4x4MakeScale(0.11);
    v152 = v14;
    v157 = v13;
    v142 = v16;
    v147 = v15;
    *v164.columns[0].i64 = UMFloat4x4MakeTranslate();
    v130 = v164.columns[1];
    v131 = v164.columns[0];
    v128 = v164.columns[3];
    v129 = v164.columns[2];
    v176.columns[1] = v152;
    v176.columns[0] = v157;
    v176.columns[3] = v142;
    v176.columns[2] = v147;
    *v17.i64 = UMMul(v164, v176);
    v153 = v18;
    v158 = v17;
    v143 = v20;
    v148 = v19;
    [dotCopy homeCoordinate];
    v22 = v21;
    *&v23 = v23;
    *v24.i64 = UMFloat4x4MakeRotateX(*&v23 * -0.017453);
    v136 = v25;
    v137 = v24;
    v134 = v27;
    v135 = v26;
    v24.f32[0] = v22;
    *v28.i64 = UMFloat4x4MakeRotateZ(v24.f32[0] * 0.017453);
    v140 = v29;
    v141 = v28;
    v138 = v31;
    v139 = v30;
    v165.columns[1] = v136;
    v165.columns[0] = v137;
    v165.columns[3] = v134;
    v165.columns[2] = v135;
    v177.columns[1] = v153;
    v177.columns[0] = v158;
    v177.columns[3] = v143;
    v177.columns[2] = v148;
    *v32.i64 = UMMul(v165, v177);
    v178.columns[0] = v32;
    v178.columns[1] = v33;
    v178.columns[2] = v34;
    v178.columns[3] = v35;
    v166.columns[1] = v140;
    v166.columns[0] = v141;
    v166.columns[3] = v138;
    v166.columns[2] = v139;
    *v36.i64 = UMMul(v166, v178);
    v154 = v37;
    v159 = v36;
    v144 = v39;
    v149 = v38;
    [dotCopy equatorRotation];
    v41 = v40;
    [dotCopy radius];
    v43 = v42;
    [dotCopy radiusScale];
    UMFloat4x4MakeScale(v43 * v44);
    v126 = v167.columns[1];
    v127 = v167.columns[0];
    v124 = v167.columns[3];
    v125 = v167.columns[2];
    v179.columns[1] = v154;
    v179.columns[0] = v159;
    v179.columns[3] = v144;
    v179.columns[2] = v149;
    *v45.i64 = UMMul(v167, v179);
    v155 = v46;
    v160 = v45;
    v145 = v48;
    v150 = v47;
    v49 = fabsf(v41);
    if (v49 <= 0.00001)
    {
      UMFloat4x4MakeScale(1.0);
      v116 = v55;
      v118 = v54;
      v112 = v57;
      v114 = v56;
    }

    else
    {
      *v168.columns[0].i64 = UMFloat4x4MakeRotateZ(v41 + 1.5708);
      v116 = v168.columns[1];
      v118 = v168.columns[0];
      v112 = v168.columns[3];
      v114 = v168.columns[2];
      v180.columns[1] = v155;
      v180.columns[0] = v160;
      v180.columns[3] = v145;
      v180.columns[2] = v150;
      *v50.i64 = UMMul(v168, v180);
      v155 = v51;
      v160 = v50;
      v145 = v53;
      v150 = v52;
    }

    [dotCopy position];
    *v169.columns[0].i64 = UMFloat4x4MakeTranslate();
    v122 = v169.columns[1];
    v123 = v169.columns[0];
    v120 = v169.columns[3];
    v121 = v169.columns[2];
    v181.columns[1] = v155;
    v181.columns[0] = v160;
    v181.columns[3] = v145;
    v181.columns[2] = v150;
    *v58.i64 = UMMul(v169, v181);
    v182.columns[0] = v58;
    v182.columns[1] = v59;
    v182.columns[2] = v60;
    v182.columns[3] = v61;
    *v62.i64 = UMMul(*&p_state[12].viewport.width, v182);
    v156 = v63;
    v161 = v62;
    v146 = v65;
    v151 = v64;
    *v66.i64 = UMMul(v62, v63, v64, v65, xmmword_25B71A410);
    v133 = v66;
    *v67.i64 = UMMul(v161, v156, v151, v146, xmmword_25B71A420);
    v132 = v67;
    *v68.i64 = UMMul(v161, v156, v151, v146, xmmword_25B719D40);
    v69.f32[0] = viewport.width;
    v69.f32[1] = viewport.height;
    v70 = vmul_f32(v69, 0x3F0000003F000000);
    v71 = vdiv_f32(vmul_f32(v70, *v132.i8), vdup_laneq_s32(v132, 3));
    *v68.i8 = vdiv_f32(vmul_f32(v70, *v68.i8), vdup_laneq_s32(v68, 3));
    v72 = vsub_f32(vdiv_f32(vmul_f32(v70, *v133.i8), vdup_laneq_s32(v133, 3)), *v68.i8);
    v73 = vmul_f32(v72, v72);
    *v68.i8 = vsub_f32(v71, *v68.i8);
    *v68.i8 = vmul_f32(*v68.i8, *v68.i8);
    v74 = vsqrt_f32(vadd_f32(vzip1_s32(v73, *v68.i8), vzip2_s32(v73, *v68.i8)));
    if (v74.f32[0] >= v74.f32[1])
    {
      v74.f32[0] = v74.f32[1];
    }

    v75 = v74.f32[0] * 0.23077;
    scene = [dotCopy scene];
    [scene locationDotMaximumRadius];
    v78 = v77;

    if (v75 <= v78)
    {
      v109 = v156;
      v108 = v161;
      v111 = v146;
      v110 = v151;
    }

    else
    {
      UMFloat4x4MakeScale((v78 * 0.11) / v75);
      v183.columns[0] = v79;
      v183.columns[1] = v80;
      v183.columns[2] = v81;
      v183.columns[3] = v82;
      v170.columns[1] = v130;
      v170.columns[0] = v131;
      v170.columns[3] = v128;
      v170.columns[2] = v129;
      *v83.i64 = UMMul(v170, v183);
      v184.columns[0] = v83;
      v184.columns[1] = v84;
      v184.columns[2] = v85;
      v184.columns[3] = v86;
      v171.columns[1] = v136;
      v171.columns[0] = v137;
      v171.columns[3] = v134;
      v171.columns[2] = v135;
      *v87.i64 = UMMul(v171, v184);
      v185.columns[0] = v87;
      v185.columns[1] = v88;
      v185.columns[2] = v89;
      v185.columns[3] = v90;
      v172.columns[1] = v140;
      v172.columns[0] = v141;
      v172.columns[3] = v138;
      v172.columns[2] = v139;
      *v91.i64 = UMMul(v172, v185);
      v186.columns[0] = v91;
      v186.columns[1] = v92;
      v186.columns[2] = v93;
      v186.columns[3] = v94;
      v173.columns[1] = v126;
      v173.columns[0] = v127;
      v173.columns[3] = v124;
      v173.columns[2] = v125;
      *v95.i64 = UMMul(v173, v186);
      v99.columns[0] = v95;
      v99.columns[1] = v96;
      v99.columns[2] = v97;
      v99.columns[3] = v98;
      if (v49 > 0.00001)
      {
        v174.columns[1] = v117;
        v174.columns[0] = v119;
        v174.columns[3] = v113;
        v174.columns[2] = v115;
        *v100.i64 = UMMul(v174, v99);
        v99.columns[0] = v100;
        v99.columns[1] = v101;
        v99.columns[2] = v102;
        v99.columns[3] = v103;
      }

      v175.columns[1] = v122;
      v175.columns[0] = v123;
      v175.columns[3] = v120;
      v175.columns[2] = v121;
      *v104.i64 = UMMul(v175, v99);
      v187.columns[0] = v104;
      v187.columns[1] = v105;
      v187.columns[2] = v106;
      v187.columns[3] = v107;
      *v108.i64 = UMMul(*&p_state[12].viewport.width, v187);
    }

    *&ptr[3].var13 = v108;
    *&ptr[3].var17 = v109;
    *&ptr[3].var21 = v110;
    *&ptr[4].var5 = v111;
    [encoderCopy setCullMode:1];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
    [encoderCopy setCullMode:0];
  }
}

- (void)_renderSpriteSpheroid:(id)spheroid uniPtr:(NUNIAegirRenderUniforms *)ptr renderEncoder:(id)encoder
{
  spheroidCopy = spheroid;
  encoderCopy = encoder;
  type = [spheroidCopy type];
  v10 = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForSpheroid:type config:0];
  if (v10)
  {
    p_state = &self->_state;
    [encoderCopy setLabel:@"Ægir SpriteSpheroid"];
    [encoderCopy setRenderPipelineState:v10];
    *&ptr->var5 = s_sprites_1[[spheroidCopy spriteType]];
    [spheroidCopy opacity];
    ptr[4].var15 = v12;
    [spheroidCopy position];
    _Q3 = vsubq_f32(*&self->_anon_f4[12], v13);
    v15 = v13;
    _Q1 = vmulq_f32(_Q3, _Q3);
    _S2 = _Q3.i32[2];
    __asm { FMLA            S1, S2, V3.S[2] }

    _Q1.f32[0] = sqrtf(_Q1.f32[0]);
    v22 = vdivq_f32(_Q3, vdupq_lane_s32(*_Q1.f32, 0));
    v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v24 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
    v25 = vmlaq_f32(vmulq_f32(v24, vnegq_f32(vextq_s8(vuzp1q_s32(*&p_state[3].viewport.height, *&p_state[3].viewport.height), *&p_state[3].viewport.height, 0xCuLL))), v23, vextq_s8(vextq_s8(*&p_state[3].viewport.height, *&p_state[3].viewport.height, 0xCuLL), *&p_state[3].viewport.height, 8uLL));
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), vnegq_f32(v23)), vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v24);
    v25.i32[3] = 0;
    v26.i32[3] = 0;
    v48 = v26;
    v49 = v25;
    v22.i32[3] = 0;
    v15.i32[3] = 1.0;
    v46 = v15;
    v47 = v22;
    [spheroidCopy radius];
    v28 = v27;
    [spheroidCopy radiusScale];
    v30 = v28 * v29;
    if (type == 14)
    {
      v30 = v30 + v30;
    }

    UMFloat4x4MakeScale(v30);
    v53.columns[0] = v31;
    v53.columns[1] = v32;
    v53.columns[2] = v33;
    v53.columns[3] = v34;
    v52.columns[1] = v48;
    v52.columns[0] = v49;
    v52.columns[3] = v46;
    v52.columns[2] = v47;
    *v35.i64 = UMMul(v52, v53);
    v54.columns[0] = v35;
    v54.columns[1] = v36;
    v54.columns[2] = v37;
    v54.columns[3] = v38;
    *&v39 = UMMul(*&self->_anon_f4[220], v54);
    *&ptr[3].var13 = v39;
    *&ptr[3].var17 = v40;
    *&ptr[3].var21 = v41;
    *&ptr[4].var5 = v42;
    gradients = [(NUNIAegirTextureGroup *)self->_textureGroup gradients];
    v44 = [gradients objectAtIndexedSubscript:type];

    atlas = [v44 atlas];
    [atlas bind:encoderCopy slot:4];

    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  }
}

- (void)_renderOffscreenSceneWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index drawableTexture:(id)texture
{
  v89[4] = *MEMORY[0x277D85DE8];
  height = viewport.height;
  sceneCopy = scene;
  bufferCopy = buffer;
  textureCopy = texture;
  indexCopy = index;
  v15 = &self->_offscreenScenes[index];
  v16 = *v15;
  v17 = v16;
  v72 = textureCopy;
  v73 = bufferCopy;
  v71 = height;
  if (!v16 || [(NUNAegirOffscreen *)v16 width]!= viewport.width || [(NUNAegirOffscreen *)v17 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v18 = objc_opt_new();
    [v18 setTextureType:2];
    [v18 setWidth:viewport.width];
    [v18 setHeight:*&viewport >> 32];
    [v18 setDepth:1];
    [v18 setPixelFormat:10];
    [v18 setUsage:5];
    [v18 setResourceOptions:0];
    v88[0] = *MEMORY[0x277CD2928];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:viewport];
    v89[0] = v19;
    v88[1] = *MEMORY[0x277CD28D0];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:height];
    v21 = *MEMORY[0x277CD28D8];
    v89[1] = v20;
    v89[2] = &unk_286CFF540;
    v22 = *MEMORY[0x277CD28B0];
    v88[2] = v21;
    v88[3] = v22;
    v89[3] = &unk_286CFF558;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];

    v24 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v23];
    v25 = self->_contentMaskSurfaces[indexCopy];
    self->_contentMaskSurfaces[indexCopy] = v24;

    device = self->_device;
    v27 = v24;
    v28 = [(MTLDevice *)device newTextureWithDescriptor:v18 iosurface:v27 plane:0];
    v29 = self->_contentMaskTextures[indexCopy];
    self->_contentMaskTextures[indexCopy] = v28;

    v30 = v28;
    v31 = [[NUNAegirOffscreen alloc] initWithDevice:self->_device width:viewport height:v71 texture0:mEMORY[0x277CFA798] texture1:v30 loadAction:2 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(v15, v31);
    bufferCopy = v73;

    textureCopy = v72;
    v17 = v31;
  }

  [(NUNAegirOffscreen *)v17 setTexture0:textureCopy];
  v70 = v17;
  renderPassDescriptor = [(NUNAegirOffscreen *)v17 renderPassDescriptor];
  v33 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  memset(v87, 0, sizeof(v87));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  spheroids = [sceneCopy spheroids];
  v35 = [spheroids countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v81;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v81 != v38)
        {
          objc_enumerationMutation(spheroids);
        }

        v40 = *(*(&v80 + 1) + 8 * i);
        [v40 radiusScale];
        if (v41 > 0.00001)
        {
          [v40 opacity];
          if (v42 > 0.00001)
          {
            if ([v40 isVisible])
            {
              type = [v40 type];
              if (type == 10)
              {
                _S0 = 1258291200;
              }

              else if (type == 13)
              {
                _S0 = 1258291194;
              }

              else
              {
                _S0 = 1258291196;
                if (((1 << type) & 0xFFC000) == 0)
                {
                  _S0 = 1258291198;
                  if (type != 12)
                  {
                    v75 = *&self->_anon_f4[12];
                    [v40 position];
                    _S2 = vsubq_f32(v75, v45).i32[2];
                    __asm { FMLA            S0, S2, V1.S[2] }
                  }
                }
              }

              v51 = &__base[8 * v37];
              *v51 = _S0;
              v51[1] = v37;
              objc_storeStrong(v87 + v37++, v40);
            }
          }
        }
      }

      v36 = [spheroids countByEnumeratingWithState:&v80 objects:v84 count:16];
    }

    while (v36);
  }

  else
  {
    v37 = 0;
  }

  qsort(__base, v37, 8uLL, _NUNIAegirRenderCompareObject);
  [v33 setLabel:@"Ægir Offscreen Scene"];
  v78[0] = 0;
  v78[1] = 0;
  *&v78[2] = viewport.width;
  *&v78[3] = v71;
  v79 = xmmword_25B71A440;
  [v33 setViewport:v78];
  [v33 setCullMode:0];
  [(NUNIAegirRenderer *)self _renderOffscreenBackgroundWithRenderEncoder:v33 frameBufferIndex:indexCopy];
  rectVerticesBuffer = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v33 setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

  if (v37 >= 1)
  {
    v53 = &v86;
    v54 = v37;
    do
    {
      v55 = *v53;
      v53 += 2;
      v56 = *(v87 + v55);
      v57 = 1 << [v56 type];
      v58 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:indexCopy];
      [v33 setVertexBuffer:v58 offset:0 atIndex:1];
      [v33 setFragmentBuffer:v58 offset:0 atIndex:0];
      contents = [v58 contents];
      memcpy(contents, &self->_baseUniforms, 0x1B0uLL);
      if ((*&v57 & 0xFBF400) != 0)
      {
        [(NUNIAegirRenderer *)self _renderSpriteSpheroid:v56 uniPtr:contents renderEncoder:v33];
      }

      else if ((v57 & 0x3FE) != 0)
      {
        [(NUNIAegirRenderer *)self _renderRaytraceSpheroid:v56 uniPtr:contents renderEncoder:v33];
      }

      if ((v57 & 8) != 0)
      {
        [sceneCopy locationDotAlpha];
        if (v60 > 0.00001)
        {
          v61 = v60;
          [sceneCopy locationDotPulse];
          v63 = v62;
          v64 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:indexCopy];
          [v33 setVertexBuffer:v64 offset:0 atIndex:1];
          [v33 setFragmentBuffer:v64 offset:0 atIndex:0];
          contents2 = [v64 contents];
          memcpy(contents2, &self->_baseUniforms, 0x1B0uLL);
          [v56 opacity];
          *(contents2 + 360) = v61 * v66;
          *(contents2 + 364) = v63 - floorf(v63);
          [sceneCopy locationDotPulseOverrideAlpha];
          *(contents2 + 368) = v67;
          [(NUNIAegirRenderer *)self _renderLocationDot:v56 uniPtr:contents2 viewport:viewport renderEncoder:v33];
        }
      }

      --v54;
    }

    while (v54);
  }

  [v33 endEncoding];
  for (j = 184; j != -8; j -= 8)
  {
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (void)_renderOffscreenBloomWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index
{
  v10 = self->_offscreenScenes[index];
  v11 = self->_offscreenBlooms;
  bufferCopy = buffer;
  v13 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:index];
  memcpy([v13 contents], &self->_baseUniforms, 0x1B0uLL);
  v14 = viewport.width >> 1;
  v15 = *&viewport >> 33;
  if (!v11 || [(NUNAegirOffscreen *)v11 width]!= v14 || [(NUNAegirOffscreen *)v11 height]!= v15)
  {
    v16 = [[NUNAegirOffscreen alloc] initWithDevice:self->_device width:(viewport.width >> 1) height:*&viewport >> 33 pixelFormat0:10 pixelFormat1:0 mipmaps:3 loadAction:0.0 clearColor0:0.0 clearColor1:0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 2];

    objc_storeStrong(&self->_offscreenBlooms, v16);
    v11 = v16;
  }

  renderPassDescriptor = [(NUNAegirOffscreen *)v11 renderPassDescriptor];
  v18 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForThreshold = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForThreshold];
  [v18 setLabel:@"Ægir Threshold"];
  v24[0] = 0;
  v24[1] = 0;
  *&v24[2] = v14;
  *&v24[3] = v15;
  v25 = xmmword_25B71A440;
  [v18 setViewport:v24];
  [v18 setCullMode:0];
  [v18 setRenderPipelineState:renderOffscreenPipelineForThreshold];
  rectVerticesBuffer = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v18 setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

  [v18 setVertexBuffer:v13 offset:0 atIndex:1];
  [v18 setFragmentBuffer:v13 offset:0 atIndex:0];
  texture0 = [(NUNAegirOffscreen *)v10 texture0];
  [v18 setFragmentTexture:texture0 atIndex:1];

  [v18 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v18 endEncoding];
  blitCommandEncoder = [bufferCopy blitCommandEncoder];

  texture02 = [(NUNAegirOffscreen *)v11 texture0];
  [blitCommandEncoder generateMipmapsForTexture:texture02];

  [blitCommandEncoder endEncoding];
}

- (void)_renderOffscreenPostWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer frameBufferIndex:(unint64_t)index
{
  viewportCopy = viewport;
  height = viewport.height;
  v11 = self->_offscreenScenes[index];
  v12 = self->_offscreenBlooms;
  v13 = self->_offscreenPosts;
  bufferCopy = buffer;
  v15 = [(NUNIAegirRenderer *)self getOrCreateUniformBufferforFrameBufferIndex:index];
  memcpy([v15 contents], &self->_baseUniforms, 0x1B0uLL);
  if (!v13 || [(NUNAegirOffscreen *)v13 width]!= viewportCopy.width || [(NUNAegirOffscreen *)v13 height]!= height)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedNilTexture2D];
    v33 = v13;
    v17 = bufferCopy;
    v18 = v15;
    v19 = height;
    v20 = viewportCopy;
    v21 = v12;
    v22 = [NUNAegirOffscreen alloc];
    device = self->_device;
    [(NUNAegirOffscreen *)v11 texture1];
    v24 = v34 = v11;
    v25 = v22;
    v12 = v21;
    viewportCopy = v20;
    height = v19;
    v15 = v18;
    bufferCopy = v17;
    v13 = [(NUNAegirOffscreen *)v25 initWithDevice:device width:viewportCopy height:height texture0:mEMORY[0x277CFA798] texture1:v24 loadAction:1 clearColor0:0.0 clearColor1:0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0];

    objc_storeStrong(&self->_offscreenPosts, v13);
    v11 = v34;
  }

  [(NUNAegirOffscreen *)v11 texture0];
  v27 = v26 = v11;
  [(NUNAegirOffscreen *)v13 setTexture0:v27];

  renderPassDescriptor = [(NUNAegirOffscreen *)v13 renderPassDescriptor];
  v29 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];

  renderOffscreenPipelineForPost = [(NUNIAegirResourceManager *)self->_resourceManager renderOffscreenPipelineForPost];
  [v29 setLabel:@"Ægir Post"];
  [v29 setRenderPipelineState:renderOffscreenPipelineForPost];
  v35[0] = 0;
  v35[1] = 0;
  *&v35[2] = viewportCopy.width;
  *&v35[3] = height;
  v36 = xmmword_25B71A440;
  [v29 setViewport:v35];
  [v29 setCullMode:0];
  rectVerticesBuffer = [(NUNIAegirResourceManager *)self->_resourceManager rectVerticesBuffer];
  [v29 setVertexBuffer:rectVerticesBuffer offset:0 atIndex:0];

  [v29 setVertexBuffer:v15 offset:0 atIndex:1];
  [v29 setFragmentBuffer:v15 offset:0 atIndex:0];
  texture0 = [(NUNAegirOffscreen *)v12 texture0];
  [v29 setFragmentTexture:texture0 atIndex:1];

  [v29 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v29 endEncoding];
}

- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer
{
  [(NUNIAegirRenderer *)self _updateStateWithScene:scene viewport:viewport, buffer];

  [(NUNIAegirRenderer *)self _updateBaseUniformsForViewport:viewport];
}

- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  sceneCopy = scene;
  colorAttachments = [descriptor colorAttachments];
  v15 = [colorAttachments objectAtIndexedSubscript:0];

  texture = [v15 texture];
  v14 = self->_frame % 3;
  self->_renderUniformBuffersCounts[v14] = 0;
  [(NUNIAegirRenderer *)self _renderOffscreenSceneWithScene:sceneCopy viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v14 drawableTexture:texture];
  [(NUNIAegirRenderer *)self _renderOffscreenBloomWithScene:sceneCopy viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v14];
  [(NUNIAegirRenderer *)self _renderOffscreenPostWithScene:sceneCopy viewport:viewport commandBuffer:bufferCopy frameBufferIndex:v14];

  [(CALayer *)self->_contentMaskLayer setContents:self->_contentMaskSurfaces[v14]];
  ++self->_frame;
}

@end