@interface NUNIClassicRenderer
- (NUNIClassicRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style;
- (void)_createPipelineForProgramType:(unint64_t)type fromLibrary:(id)library;
- (void)_initHemi;
- (void)_initPrograms;
- (void)_updateStateWithScene:(id)scene viewport:(NUNIViewport)viewport;
- (void)bindAssetArt:(unint64_t)art renderEncoder:(id)encoder toSlot:(unint64_t)slot;
- (void)dealloc;
- (void)discard;
- (void)draw3DWithEncoder:(id)encoder state:(const NUNIClassicRendererState *)state spheroid:(id)spheroid;
- (void)drawSpriteWithEncoder:(id)encoder state:(const NUNIClassicRendererState *)state spheroid:(id)spheroid;
- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer;
- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor;
@end

@implementation NUNIClassicRenderer

- (void)discard
{
  p_resources = &self->_resources;
  vertexBuffer = self->_resources.vertexBuffer;
  self->_resources.vertexBuffer = 0;

  indexBuffer = p_resources->indexBuffer;
  p_resources->indexBuffer = 0;

  for (i = 0; i != 4; ++i)
  {
    v6 = p_resources->pipelines[i];
    p_resources->pipelines[i] = 0;
  }
}

- (NUNIClassicRenderer)initWithPixelFormat:(unint64_t)format textureSuffix:(id)suffix rendererStyle:(unint64_t)style
{
  suffixCopy = suffix;
  v17.receiver = self;
  v17.super_class = NUNIClassicRenderer;
  v9 = [(NUNIRenderer *)&v17 initWithPixelFormat:format textureSuffix:suffixCopy rendererStyle:style];
  if (v9)
  {
    mEMORY[0x277CFA798] = [MEMORY[0x277CFA798] sharedDevice];
    mtlDevice = v9->_mtlDevice;
    v9->_mtlDevice = mEMORY[0x277CFA798];

    v12 = +[NUNIClassicResourceManager sharedInstance];
    resourceManager = v9->_resourceManager;
    v9->_resourceManager = v12;

    [(NUNIClassicResourceManager *)v9->_resourceManager addClient];
    v14 = [(NUNIClassicResourceManager *)v9->_resourceManager textureGroupWithSuffix:suffixCopy];
    textureGroup = v9->_textureGroup;
    v9->_textureGroup = v14;

    [(NUNIClassicRenderer *)v9 _initPrograms];
    [(NUNIClassicRenderer *)v9 _initHemi];
  }

  return v9;
}

- (void)dealloc
{
  [(NUNIClassicResourceManager *)self->_resourceManager removeClient];
  v3.receiver = self;
  v3.super_class = NUNIClassicRenderer;
  [(NUNIRenderer *)&v3 dealloc];
}

- (void)_initHemi
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4.i32[0] = 1.0;
  v5 = _NTKCreateHalfOctahedron(v3, v4);
  v6.i32[0] = -1.0;
  _NTKCreateHalfOctahedron(v3, v6);

  self->_octahedronGeomRange = (v5 | 0xD8000000000);
  v7 = acosf(0.0) / 3.1416;
  v27 = 0;
  v8 = &unk_25B726E9C;
  v25 = xmmword_25B726EC0;
  LODWORD(v9) = vld1_dup_f32(v8).u32[0];
  *(&v9 + 1) = v7;
  v26 = v9;
  v28 = xmmword_25B726ED0;
  __asm { FMOV            V1.2S, #0.875 }

  *(&_D1 + 1) = v7;
  v30 = 0;
  v29 = _D1;
  v33 = 0;
  v31 = xmmword_25B726EE0;
  __asm { FMOV            V1.2S, #0.375 }

  *(&_D1 + 1) = v7;
  v32 = _D1;
  v36 = 0;
  v34 = xmmword_25B726EF0;
  __asm { FMOV            V1.2S, #0.625 }

  *(&_D1 + 1) = v7;
  v35 = _D1;
  v17 = v3;
  v18 = [v17 addVertices:&v25 count:4];
  v19 = [v17 addIndices:&_NTKCreateQuad_indices count:4 vbase:{v18, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];

  self->_quadGeomRange = (v19 | 0x400000000);
  v20 = -[MTLDevice newBufferWithBytes:length:options:](self->_mtlDevice, "newBufferWithBytes:length:options:", [v17 vertices], 32 * objc_msgSend(v17, "vcount"), 0);
  vertexBuffer = self->_resources.vertexBuffer;
  self->_resources.vertexBuffer = v20;

  v22 = -[MTLDevice newBufferWithBytes:length:options:](self->_mtlDevice, "newBufferWithBytes:length:options:", [v17 indices], 2 * objc_msgSend(v17, "icount"), 0);
  indexBuffer = self->_resources.indexBuffer;
  self->_resources.indexBuffer = v22;

  v24 = *MEMORY[0x277D85DE8];
}

- (void)bindAssetArt:(unint64_t)art renderEncoder:(id)encoder toSlot:(unint64_t)slot
{
  textureGroup = self->_textureGroup;
  encoderCopy = encoder;
  textures = [(NUNIClassicTextureGroup *)textureGroup textures];
  v11 = [textures objectAtIndexedSubscript:art];

  atlas = [v11 atlas];
  [atlas bind:encoderCopy slot:slot];
}

- (void)draw3DWithEncoder:(id)encoder state:(const NUNIClassicRendererState *)state spheroid:(id)spheroid
{
  encoderCopy = encoder;
  spheroidCopy = spheroid;
  [spheroidCopy position];
  v79 = v10;
  programType = [spheroidCopy programType];
  [encoderCopy setFrontFacingWinding:1];
  [encoderCopy setCullMode:2];
  [spheroidCopy equatorRotation];
  v13 = v12;
  projectionType = state->projectionType;
  if (projectionType == 1)
  {
    v22 = 1.0;
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    if (projectionType)
    {
      goto LABEL_6;
    }

    [spheroidCopy radius];
    v20 = v19;
    [spheroidCopy radiusScale];
    v22 = v20 * v21;
  }

  UMFloat4x4MakeScale(v22);
LABEL_6:
  v74 = v18;
  v76 = v17;
  v77 = v16;
  v78 = v15;
  *v23.columns[0].i64 = UMFloat4x4MakeTranslate();
  if (v13 == 0.0)
  {
    v34.columns[1] = v77;
    v34.columns[0] = v78;
    v34.columns[3] = v74;
    v34.columns[2] = v76;
  }

  else
  {
    v69 = v23.columns[1];
    v71 = v23.columns[0];
    v67 = v23.columns[3];
    v68 = v23.columns[2];
    type = [spheroidCopy type];
    v25 = 1.5708;
    if (type != 4)
    {
      v25 = 0.0;
    }

    *v26.i64 = UMFloat4x4MakeRotateZ(v13 + v25);
    v108.columns[0] = v26;
    v108.columns[1] = v27;
    v108.columns[2] = v28;
    v108.columns[3] = v29;
    v107.columns[1] = v77;
    v107.columns[0] = v78;
    v107.columns[3] = v74;
    v107.columns[2] = v76;
    *v30.i64 = UMMul(v107, v108);
    v34.columns[0] = v30;
    v34.columns[1] = v31;
    v23.columns[1] = v69;
    v23.columns[0] = v71;
    v34.columns[2] = v32;
    v34.columns[3] = v33;
    v23.columns[3] = v67;
    v23.columns[2] = v68;
  }

  *v35.i64 = UMMul(v23, v34);
  if (programType == 1)
  {
    [NUNIClassicRenderer draw3DWithEncoder:state:spheroid:];
  }

  v75.columns[0] = v35;
  v75.columns[1] = v36;
  v75.columns[2] = v37;
  v75.columns[3] = v38;
  [spheroidCopy light];
  v70 = v39;
  v41 = __sincosf_stret(v40);
  v42 = __sincosf_stret(v70);
  v43.f32[0] = v42.__cosval * v41.__sinval;
  v43.f32[1] = v42.__sinval * v41.__sinval;
  v43.i64[1] = LODWORD(v41.__cosval);
  v44 = state + 4;
  *v45.i64 = UMMul(*&state[4].viewport.width, *&state[4].collectionType, *&state[4].octGeomRange.start, *&state[5].viewport.width, v43);
  if (programType == 2)
  {
    v90 = 0;
    v91 = 0;
    v73 = v45;
    [(NUNIClassicRenderer *)self bindAssetArt:5 renderEncoder:encoderCopy toSlot:0];
    [(NUNIClassicRenderer *)self bindAssetArt:6 renderEncoder:encoderCopy toSlot:1];
    v104 = v79;
    v92 = v75.columns[0];
    v93 = v75.columns[1];
    v94 = v75.columns[2];
    v95 = v75.columns[3];
    v80 = v75.columns[0];
    v81 = v75.columns[1];
    v82 = v75.columns[2];
    v83 = v75.columns[3];
    v58 = *&state[4].collectionType;
    v96 = *&v44->viewport.width;
    v97 = v58;
    v59 = *&state[5].viewport.width;
    v98 = *&state[4].octGeomRange.start;
    v99 = v59;
    v84 = v96;
    v85 = v58;
    v86 = v98;
    v87 = v59;
    v89 = v73;
    [spheroidCopy colorize];
    v88 = v60;
    [spheroidCopy opacity];
    v61 = fminf(fmaxf((state->viewport.width + -42.0) / 326.0, 0.0), 1.0);
    LODWORD(v90) = v62;
    *(&v90 + 1) = ((v61 * 0.08) + ((1.0 - v61) * 0.3)) + 0.17365;
    *&v63 = UMMul(*&state[5].collectionType, v75);
    v100 = v63;
    v101 = v64;
    v102 = v65;
    v103 = v66;
    [encoderCopy setVertexBytes:&v92 length:208 atIndex:1];
    v56 = encoderCopy;
    v57 = 176;
    goto LABEL_16;
  }

  if (!programType)
  {
    v106 = 0;
    v105 = 0;
    v82 = 0uLL;
    v72 = v45;
    [(NUNIClassicRenderer *)self bindAssetArt:3 renderEncoder:encoderCopy toSlot:0];
    [(NUNIClassicRenderer *)self bindAssetArt:4 renderEncoder:encoderCopy toSlot:1];
    v104 = v79;
    v92 = v75.columns[0];
    v93 = v75.columns[1];
    v94 = v75.columns[2];
    v95 = v75.columns[3];
    v46 = *&state[4].collectionType;
    v96 = *&v44->viewport.width;
    v97 = v46;
    v47 = *&state[5].viewport.width;
    v98 = *&state[4].octGeomRange.start;
    v99 = v47;
    v48 = -(v13 - ((((state->yearsSince1970 * 32.0) - floorf(state->yearsSince1970 * 32.0)) * -3.1416) * 2.0));
    *&v105 = (v48 + (floorf(v48 / 6.2832) * -6.2832)) / 6.2832;
    v81 = v72;
    [spheroidCopy colorize];
    v80 = v49;
    [spheroidCopy opacity];
    v50 = fminf(fmaxf((state->viewport.width + -42.0) / 326.0, 0.0), 1.0);
    v82.i32[0] = v51;
    v82.f32[1] = ((v50 * 0.08) + ((1.0 - v50) * 0.3)) + 0.17365;
    *&v52 = UMMul(*&state[5].collectionType, v75);
    v100 = v52;
    v101 = v53;
    v102 = v54;
    v103 = v55;
    [encoderCopy setVertexBytes:&v92 length:224 atIndex:1];
    v56 = encoderCopy;
    v57 = 48;
LABEL_16:
    [v56 setFragmentBytes:&v80 length:v57 atIndex:0];
  }

  [encoderCopy drawIndexedPrimitives:3 indexCount:state->octGeomRange.count indexType:0 indexBuffer:self->_resources.indexBuffer indexBufferOffset:{2 * state->octGeomRange.start, *v45.i64}];
  [encoderCopy setCullMode:0];
}

- (void)drawSpriteWithEncoder:(id)encoder state:(const NUNIClassicRendererState *)state spheroid:(id)spheroid
{
  spheroidCopy = spheroid;
  encoderCopy = encoder;
  v53[4] = s_sprites_0[13 * state->collectionType + [spheroidCopy spriteType]];
  [spheroidCopy opacity];
  v52 = v10;
  [spheroidCopy position];
  v48 = v11;
  if ([spheroidCopy isFacing] && !state->projectionType)
  {
    _Q0 = vsubq_f32(*&state[1].viewport.width, v48);
    _Q1 = vmulq_f32(_Q0, _Q0);
    _S2 = _Q0.i32[2];
    __asm { FMLA            S1, S2, V0.S[2] }

    _Q1.f32[0] = sqrtf(_Q1.f32[0]);
    v39 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
    v41 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
    v42 = vmlaq_f32(vmulq_f32(v41, vnegq_f32(vextq_s8(vuzp1q_s32(*&state[1].octGeomRange.start, *&state[1].octGeomRange.start), *&state[1].octGeomRange.start, 0xCuLL))), v40, vextq_s8(vextq_s8(*&state[1].octGeomRange.start, *&state[1].octGeomRange.start, 0xCuLL), *&state[1].octGeomRange.start, 8uLL));
    v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
    v44 = vmulq_f32(vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL), vnegq_f32(v40));
    v42.i32[3] = 0;
    v45 = vmlaq_f32(v44, v43, v41);
    v39.i32[3] = 0;
    v50 = v42;
    v51 = v39;
    __asm { FMOV            V0.4S, #1.0 }

    _Q0.i64[0] = v48.i64[0];
    _Q0.i32[2] = v48.i32[2];
    v49 = _Q0;
    [spheroidCopy radius];
  }

  else
  {
    *v12.i64 = UMFloat4x4MakeTranslate();
    v50 = v12;
    v51 = v13;
    v49 = v14;
    [spheroidCopy radius];
  }

  v18 = v17;
  [spheroidCopy radiusScale];
  UMFloat4x4MakeScale(v18 * v19);
  v55.columns[0] = v20;
  v55.columns[1] = v21;
  v55.columns[2] = v22;
  v55.columns[3] = v23;
  v54.columns[0] = v50;
  v54.columns[2] = v51;
  v54.columns[1] = v47;
  v54.columns[3] = v49;
  *v24.i64 = UMMul(v54, v55);
  v56.columns[0] = v24;
  v56.columns[1] = v25;
  v56.columns[2] = v26;
  v56.columns[3] = v27;
  *&v28 = UMMul(*&state[5].collectionType, v56);
  v53[0] = v28;
  v53[1] = v29;
  v53[2] = v30;
  v53[3] = v31;
  [encoderCopy setVertexBytes:v53 length:80 atIndex:1];
  [encoderCopy setFragmentBytes:&v52 length:4 atIndex:0];
  [encoderCopy drawIndexedPrimitives:4 indexCount:state->quadGeomRange.count indexType:0 indexBuffer:self->_resources.indexBuffer indexBufferOffset:2 * state->quadGeomRange.start];
}

- (void)renderWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  v52 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v10 = [buffer renderCommandEncoderWithDescriptor:descriptor];
  kdebug_trace();
  selfCopy = self;
  memcpy(__dst, &self->_state, sizeof(__dst));
  memset(v51, 0, sizeof(v51));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = sceneCopy;
  spheroids = [sceneCopy spheroids];
  v12 = [spheroids countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(spheroids);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        [v17 radiusScale];
        if (v18 > 0.00001)
        {
          [v17 opacity];
          if (v19 > 0.00001)
          {
            type = [v17 type];
            if (type == 10)
            {
              _S0 = 1258291200;
            }

            else if (type == 13)
            {
              _S0 = 1258291198;
            }

            else
            {
              _S0 = 1258291196;
              if (((1 << type) & 0xFFC000) == 0)
              {
                _S0 = 1258291194;
                if (type != 12)
                {
                  v42 = __dst[3];
                  [v17 position];
                  _S2 = vsubq_f32(v42, v22).i32[2];
                  __asm { FMLA            S0, S2, V1.S[2] }
                }
              }
            }

            v28 = &__base[8 * v14];
            *v28 = _S0;
            v28[1] = v14;
            objc_storeStrong(v51 + v14++, v17);
          }
        }
      }

      v13 = [spheroids countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  qsort(__base, v14, 8uLL, _NUNIClassicRenderCompareObject);
  v29 = selfCopy;
  p_resources = &selfCopy->_resources;
  [v10 setVertexBuffer:selfCopy->_resources.vertexBuffer offset:0 atIndex:0];
  if (v14 >= 1)
  {
    v31 = &v50;
    v32 = 4;
    for (j = v14; j; --j)
    {
      v34 = *v31;
      v31 += 2;
      v35 = *(v51 + v34);
      if ([v35 isVisible])
      {
        programType = [v35 programType];
        if (v32 == programType)
        {
          if (v32 != 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v37 = programType;
          [v10 setRenderPipelineState:p_resources->pipelines[programType]];
          v32 = v37;
          if (v37 != 1)
          {
LABEL_29:
            [(NUNIClassicRenderer *)v29 draw3DWithEncoder:v10 state:__dst spheroid:v35, selfCopy];
            goto LABEL_30;
          }

          [(NUNIClassicRenderer *)v29 bindAssetArt:0 renderEncoder:v10 toSlot:0];
        }

        [(NUNIClassicRenderer *)v29 drawSpriteWithEncoder:v10 state:__dst spheroid:v35, selfCopy];
        v32 = 1;
      }

LABEL_30:
    }
  }

  kdebug_trace();
  [v10 endEncoding];
  for (k = 184; k != -8; k -= 8)
  {
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)renderOffscreenWithScene:(id)scene viewport:(NUNIViewport)viewport commandBuffer:(id)buffer
{
  v46 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  bufferCopy = buffer;
  kdebug_trace();
  [(NUNIClassicRenderer *)self _updateStateWithScene:sceneCopy viewport:viewport];
  memcpy(__dst, &self->_state, sizeof(__dst));
  memset(v45, 0, sizeof(v45));
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = sceneCopy;
  spheroids = [sceneCopy spheroids];
  v10 = [spheroids countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v38;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(spheroids);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      [v15 radiusScale];
      if (v16 > 0.00001)
      {
        [v15 opacity];
        if (v17 > 0.00001)
        {
          type = [v15 type];
          if (type == 10)
          {
            v19 = 1266679808;
LABEL_12:
            _S0 = v19;
          }

          else
          {
            if (type == 13)
            {
              v19 = 1266679807;
              goto LABEL_12;
            }

            _S0 = 1266679806;
            if (((1 << type) & 0xFFC000) == 0)
            {
              _S0 = 1266679805;
              if (type != 12)
              {
                v36 = __dst[3];
                [v15 position];
                _S2 = vsubq_f32(v36, v21).i32[2];
                __asm { FMLA            S0, S2, V1.S[2] }
              }
            }
          }

          v27 = &__base[8 * v12];
          *v27 = _S0;
          v27[1] = v12;
          objc_storeStrong(v45 + v12++, v15);
          continue;
        }
      }
    }

    v11 = [spheroids countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v11);
LABEL_21:

  qsort(__base, v12, 8uLL, _NUNIClassicRenderCompareObject);
  if (v12 >= 1)
  {
    v28 = v12;
    v29 = &v44;
    do
    {
      v30 = *v29;
      v29 += 2;
      v31 = *(v45 + v30);
      if ([v31 isVisible] && objc_msgSend(v31, "programType") != 1)
      {
        [(NUNIClassicRenderer *)self drawOffscreen3DWithCommandBuffer:bufferCopy state:__dst spheroid:v31];
      }

      --v28;
    }

    while (v28);
  }

  kdebug_trace();
  for (j = 184; j != -8; j -= 8)
  {
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateWithScene:(id)scene viewport:(NUNIViewport)viewport
{
  width = viewport.width;
  height = viewport.height;
  sceneCopy = scene;
  [sceneCopy yearsSince1970];
  v9 = v8;
  [sceneCopy cameraPosition];
  v95 = v10;
  [sceneCopy cameraTarget];
  v94 = v11;
  projectionType = [sceneCopy projectionType];
  octahedronGeomRange = self->_octahedronGeomRange;
  quadGeomRange = self->_quadGeomRange;
  collectionType = [sceneCopy collectionType];
  [sceneCopy cameraRoll];
  v17 = v16;
  _Q0 = vsubq_f32(v94, v95);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v96 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  [sceneCopy cameraUp];
  v92 = v25;

  v26 = v96;
  v27 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
  _Q4 = v92;
  _Q3 = vextq_s8(vuzp1q_s32(_Q4, _Q4), v92, 0xCuLL);
  v29 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q4, _Q4, 0xCuLL), v92, 8uLL), vnegq_f32(v29)), _Q3, v27);
  _Q3.i32[0] = _Q2.i32[2];
  __asm { FMLA            S4, S3, V2.S[2] }

  _Q3.f32[0] = sqrtf(*_Q4.i32);
  if (_Q3.f32[0] < 0.00001)
  {
    _Q2 = vmlaq_f32(vmulq_f32(v29, xmmword_25B71A3B0), xmmword_25B719C90, v27);
    _Q3.i64[0] = _Q2.u32[2];
    __asm { FMLA            S4, S3, V2.S[2] }

    _Q3.f32[0] = sqrtf(_S4);
    if (_Q3.f32[0] < 0.00001)
    {
      _Q2 = vmlaq_f32(vmulq_f32(v29, xmmword_25B71A3C0), xmmword_25B71A3D0, v27);
      _Q3.i64[0] = _Q2.u32[2];
      __asm { FMLA            S4, S3, V2.S[2] }

      _Q3.f32[0] = sqrtf(_S4);
    }
  }

  v34 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(v27, vnegq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL))), v29, vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v38 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v91 = vnegq_f32(v38);
  v93 = v34;
  if (projectionType)
  {
    __asm { FMOV            V3.2S, #1.0 }

    v40.i32[0] = _D3.i32[0];
    if (_NF ^ _VF | _ZF)
    {
      v40.f32[1] = height / width;
      v41 = v40;
    }

    else
    {
      _D3.f32[0] = width / height;
      v41 = _D3;
    }

    v38.f32[0] = -v41.f32[0];
    v42.f32[0] = UMFloat4x4MakeOrtho(*v38.f32, v41, -v41.f32[1], v41.f32[1], -0.001, 5.0);
    v89 = v43;
    v90 = v42;
    v87 = v45;
    v88 = v44;
    *v46.f32 = UMFloat4x4MakeLookAt(*v93.i64, v91.f32[0]);
    goto LABEL_13;
  }

  v50 = width / height;
  v51 = 20.0;
  if (v50 < 1.0)
  {
    v52 = atanf(0.17633 / v50);
    v51 = (v52 + v52) * 180.0 / 3.14159274;
  }

  v53.f32[0] = UMFloat4x4MakePerspective(v51, width / height, 0.001, 5.0);
  v89 = v54;
  v90 = v53;
  v87 = v56;
  v88 = v55;
  *v57.f32 = UMFloat4x4MakeLookAt(*v93.i64, v91.f32[0]);
  v83 = v58;
  v85 = v57;
  v79 = v60;
  v81 = v59;
  if (fabsf(v17) > 0.00001)
  {
    v61 = __sincosf_stret(v17 * 0.5);
    v62 = vmul_n_f32(*v96.f32, v61.__sinval);
    *v63.f32 = UMFloat4x4Make(v62.f32[0], v62.f32[1], vmuls_lane_f32(v61.__sinval, v96, 2), v61.__cosval);
    v100.columns[0] = v63;
    v100.columns[1] = v64;
    v100.columns[2] = v65;
    v100.columns[3] = v66;
    v97.columns[1] = v83;
    v97.columns[0] = v85;
    v97.columns[3] = v79;
    v97.columns[2] = v81;
    *v46.i64 = UMMul(v97, v100);
LABEL_13:
    v83 = v47;
    v85 = v46;
    v79 = v49;
    v81 = v48;
  }

  *v67.i64 = UMFloat4x4MakeTranslate();
  v101.columns[0] = v67;
  v101.columns[1] = v68;
  v101.columns[2] = v69;
  v101.columns[3] = v70;
  v98.columns[1] = v83;
  v98.columns[0] = v85;
  v98.columns[3] = v79;
  v98.columns[2] = v81;
  *v71.i64 = UMMul(v98, v101);
  v102.columns[0] = v71;
  v84 = v72;
  v86 = v71;
  v102.columns[1] = v72;
  v102.columns[2] = v73;
  v80 = v74;
  v82 = v73;
  v102.columns[3] = v74;
  v99.columns[1] = v89;
  v99.columns[0] = v90;
  v99.columns[3] = v87;
  v99.columns[2] = v88;
  *&v75 = UMMul(v99, v102);
  self->_state.viewport.width = width;
  self->_state.viewport.height = height;
  self->_state.projectionType = projectionType;
  self->_state.collectionType = collectionType;
  self->_state.yearsSince1970 = v9;
  self->_state.cameraRoll = v17;
  self->_state.octGeomRange = octahedronGeomRange;
  self->_state.quadGeomRange = quadGeomRange;
  *self->_anon_a0 = v95;
  *&self->_anon_a0[16] = v94;
  *&self->_anon_a0[32] = v91;
  *&self->_anon_a0[48] = v93;
  *&self->_anon_a0[64] = v96;
  *&self->_anon_a0[80] = v90;
  *&self->_anon_a0[96] = v89;
  *&self->_anon_a0[112] = v88;
  *&self->_anon_a0[128] = v87;
  *&self->_anon_a0[144] = v86;
  *&self->_anon_a0[160] = v84;
  *&self->_anon_a0[176] = v82;
  *&self->_anon_a0[192] = v80;
  *&self->_anon_a0[208] = v75;
  *&self->_anon_a0[224] = v76;
  *&self->_anon_a0[240] = v77;
  *&self->_anon_a0[256] = v78;
}

- (void)_createPipelineForProgramType:(unint64_t)type fromLibrary:(id)library
{
  libraryCopy = library;
  pixelFormat = [(NUNIRenderer *)self pixelFormat];
  if (type >= 3)
  {
    [NUNIClassicRenderer _createPipelineForProgramType:fromLibrary:];
  }

  v6 = off_27995FAD0[type];
  v7 = off_27995FAE8[type];
  v8 = MEMORY[0x277CFA788];
  v9 = NUNIBundle();
  v10 = [v8 archiveWithName:@"NUNIClassicShaders" bundle:v9 device:self->_mtlDevice];

  functionDescriptor = [MEMORY[0x277CD6D78] functionDescriptor];
  [functionDescriptor setName:v7];
  v12 = [v10 newFunctionInLibrary:libraryCopy withDescriptor:functionDescriptor];
  [functionDescriptor setName:v6];
  v13 = [v10 newFunctionInLibrary:libraryCopy withDescriptor:functionDescriptor];
  v14 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v14 setLabel:_NUNIClassicPipelineNames[type]];
  [v14 setVertexFunction:v12];
  [v14 setFragmentFunction:v13];
  colorAttachments = [v14 colorAttachments];
  v16 = [colorAttachments objectAtIndexedSubscript:0];

  [v16 setPixelFormat:pixelFormat];
  [v16 setBlendingEnabled:1];
  [v16 setRgbBlendOperation:0];
  [v16 setAlphaBlendOperation:0];
  [v16 setSourceRGBBlendFactor:1];
  [v16 setSourceAlphaBlendFactor:1];
  [v16 setDestinationRGBBlendFactor:5];
  [v16 setDestinationAlphaBlendFactor:5];
  v17 = [v10 newRenderPipelineStateForDevice:self->_mtlDevice withDescriptor:v14];
  p_resources = &self->_resources;
  v19 = p_resources->pipelines[type];
  p_resources->pipelines[type] = v17;

  if (!p_resources->pipelines[type])
  {
    [NUNIClassicRenderer _createPipelineForProgramType:fromLibrary:];
  }
}

- (void)_initPrograms
{
  v4 = NUNIBundle();
  v3 = [(MTLDevice *)self->_mtlDevice newDefaultLibraryWithBundle:v4 error:0];
  [(NUNIClassicRenderer *)self _createPipelineForProgramType:0 fromLibrary:v3];
  [(NUNIClassicRenderer *)self _createPipelineForProgramType:1 fromLibrary:v3];
  [(NUNIClassicRenderer *)self _createPipelineForProgramType:2 fromLibrary:v3];
}

@end