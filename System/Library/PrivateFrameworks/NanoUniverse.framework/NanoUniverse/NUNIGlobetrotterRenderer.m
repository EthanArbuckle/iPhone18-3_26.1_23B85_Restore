@interface NUNIGlobetrotterRenderer
- (id)_renderGlobeLinesWithCommandBuffer:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5;
- (void)_createPipelineForProgramType:(unint64_t)a3 fromLibrary:(id)a4;
- (void)_initPrograms;
- (void)draw3DWithEncoder:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5;
- (void)drawOffscreen3DWithCommandBuffer:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5;
@end

@implementation NUNIGlobetrotterRenderer

- (void)draw3DWithEncoder:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v9 position];
  v104 = v10;
  v11 = [v9 programType];
  [v8 setFrontFacingWinding:1];
  [v8 setCullMode:2];
  [v9 equatorRotation];
  v13 = v12;
  projectionType = a4->projectionType;
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

    [v9 radius];
    v20 = v19;
    [v9 radiusScale];
    v22 = v20 * v21;
  }

  UMFloat4x4MakeScale(v22);
LABEL_6:
  v96 = v18;
  v98 = v17;
  v100 = v16;
  v102 = v15;
  *v23.columns[0].i64 = UMFloat4x4MakeTranslate();
  if (v13 == 0.0)
  {
    v32.columns[1] = v100;
    v32.columns[0] = v102;
    v32.columns[3] = v96;
    v32.columns[2] = v98;
  }

  else
  {
    v91 = v23.columns[1];
    v93 = v23.columns[0];
    v87 = v23.columns[3];
    v89 = v23.columns[2];
    *v24.i64 = UMFloat4x4MakeRotateZ(v13);
    v147.columns[0] = v24;
    v147.columns[1] = v25;
    v147.columns[2] = v26;
    v147.columns[3] = v27;
    v146.columns[1] = v100;
    v146.columns[0] = v102;
    v146.columns[3] = v96;
    v146.columns[2] = v98;
    *v28.i64 = UMMul(v146, v147);
    v32.columns[0] = v28;
    v32.columns[1] = v29;
    v23.columns[1] = v91;
    v23.columns[0] = v93;
    v32.columns[2] = v30;
    v32.columns[3] = v31;
    v23.columns[3] = v87;
    v23.columns[2] = v89;
  }

  *v33.i64 = UMMul(v23, v32);
  if (v11)
  {
    if (v11 == 1)
    {
      [NUNIGlobetrotterRenderer draw3DWithEncoder:state:spheroid:];
    }
  }

  else
  {
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v101 = v34;
    v103 = v33;
    v97 = v36;
    v99 = v35;
    [(NUNIClassicRenderer *)self bindAssetArt:3 renderEncoder:v8 toSlot:0];
    [v8 setFragmentTexture:self->_globeLinesCurrentTexture atIndex:1];
    v145 = v104;
    v140[0] = v103;
    v140[1] = v101;
    v140[2] = v99;
    v140[3] = v97;
    v37 = *&a4[4].collectionType;
    v140[4] = *&a4[4].viewport.width;
    v140[5] = v37;
    v38 = *&a4[5].viewport.width;
    v140[6] = *&a4[4].octGeomRange.start;
    v140[7] = v38;
    [v9 light];
    v94 = v39;
    v41 = __sincosf_stret(v40);
    v42 = __sincosf_stret(v94);
    v43.f32[0] = v42.__cosval * v41.__sinval;
    v43.f32[1] = v42.__sinval * v41.__sinval;
    v43.i64[1] = LODWORD(v41.__cosval);
    *&v44 = UMMul(*&a4[4].viewport.width, *&a4[4].collectionType, *&a4[4].octGeomRange.start, *&a4[5].viewport.width, v43);
    v111 = v44;
    [v9 blend];
    v105 = v45;
    v46 = ((v45 * 0.35) + ((1.0 - v45) * 0.72));
    v47 = ((v45 * 0.0) + ((1.0 - v45) * 0.92157));
    v48 = ((v45 * 0.15) + ((1.0 - v45) * 0.98431));
    v49 = ((v45 * 0.25) + ((1.0 - v45) * 0.54902));
    v95 = 1.0 - v45;
    v50 = ((v45 * 0.56) + ((1.0 - v45) * 0.87843));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__NUNIGlobetrotterRenderer_draw3DWithEncoder_state_spheroid___block_invoke;
    aBlock[3] = &unk_27995F380;
    v51 = v9;
    v109 = v51;
    v52 = _Block_copy(aBlock);
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __61__NUNIGlobetrotterRenderer_draw3DWithEncoder_state_spheroid___block_invoke_2;
    v106[3] = &unk_27995F380;
    v53 = v51;
    v107 = v53;
    v54 = _Block_copy(v106);
    v55 = v54;
    if (v105 == 0.0)
    {
      v56 = v54 + 2;
      *v57.i64 = v54[2](v54, v46);
      v117 = v57;
      *v58.i64 = (*v56)(v55, v47);
      v116 = v58;
      *v59.i64 = (*v56)(v55, v48);
      v115 = v59;
      *v60.i64 = (*v56)(v55, v49);
      v114 = v60;
      *v61.i64 = (*v56)(v55, v50);
    }

    else
    {
      *v62.i64 = v52[2](v52, v46);
      if (v105 == 1.0)
      {
        v117 = v62;
        *v63.i64 = v52[2](v52, v47);
        v116 = v63;
        *v64.i64 = v52[2](v52, v48);
        v115 = v64;
        *v65.i64 = v52[2](v52, v49);
        v114 = v65;
        *v61.i64 = v52[2](v52, v50);
      }

      else
      {
        v88 = v62;
        *v72.i64 = v52[2](v52, v47);
        v92 = v72;
        *v73.i64 = v52[2](v52, v48);
        v90 = v73;
        *v74.i64 = v52[2](v52, v49);
        v86 = v74;
        *v75.i64 = v52[2](v52, v50);
        v85 = v75;
        *v76.i64 = v55[2](v55, v46);
        v84 = v76;
        *v77.i64 = v55[2](v55, v47);
        v83 = v77;
        *v78.i64 = v55[2](v55, v48);
        v82 = v78;
        *v79.i64 = v55[2](v55, v49);
        v81 = v79;
        *v80.i64 = v55[2](v55, v50);
        v116 = vmlaq_n_f32(vmulq_n_f32(v92, v105), v83, v95);
        v117 = vmlaq_n_f32(vmulq_n_f32(v88, v105), v84, v95);
        v114 = vmlaq_n_f32(vmulq_n_f32(v86, v105), v81, v95);
        v115 = vmlaq_n_f32(vmulq_n_f32(v90, v105), v82, v95);
        v61 = vmlaq_n_f32(vmulq_n_f32(v85, v105), v80, v95);
      }
    }

    v113 = v61;
    [v53 colorize];
    CLKUIConvertToRGBfFromSRGBf_fast();
    v110 = v66;
    [v53 opacity];
    LODWORD(v112) = v67;
    v148.columns[1] = v101;
    v148.columns[0] = v103;
    v148.columns[3] = v97;
    v148.columns[2] = v99;
    *&v68 = UMMul(*&a4[5].collectionType, v148);
    v141 = v68;
    v142 = v69;
    v143 = v70;
    v144 = v71;
    [v8 setVertexBytes:v140 length:208 atIndex:1];
    [v8 setFragmentBytes:&v110 length:480 atIndex:0];
  }

  [v8 drawIndexedPrimitives:3 indexCount:a4->octGeomRange.count indexType:0 indexBuffer:-[NUNIClassicRenderer resources](self indexBufferOffset:{"resources")[40], 2 * a4->octGeomRange.start}];
  [v8 setCullMode:0];
}

uint64_t __61__NUNIGlobetrotterRenderer_draw3DWithEncoder_state_spheroid___block_invoke(uint64_t a1, double a2)
{
  if (a2 >= 0.5)
  {
    [*(a1 + 32) colorize];
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    [*(a1 + 32) colorize];
  }

  return CLKUIConvertToRGBfFromSRGBf_fast();
}

- (void)drawOffscreen3DWithCommandBuffer:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (![v8 programType] && !UMFloat4x4Equal(*&a4[4].viewport.width, *self->_anon_1d0))
  {
    v9 = [(NUNIGlobetrotterRenderer *)self _renderGlobeLinesWithCommandBuffer:v14 state:a4 spheroid:v8];
    globeLinesCurrentTexture = self->_globeLinesCurrentTexture;
    self->_globeLinesCurrentTexture = v9;

    v11 = *&a4[4].viewport.width;
    v12 = *&a4[4].collectionType;
    v13 = *&a4[5].viewport.width;
    *&self->_anon_1d0[32] = *&a4[4].octGeomRange.start;
    *&self->_anon_1d0[48] = v13;
    *self->_anon_1d0 = v11;
    *&self->_anon_1d0[16] = v12;
  }
}

- (id)_renderGlobeLinesWithCommandBuffer:(id)a3 state:(const NUNIClassicRendererState *)a4 spheroid:(id)a5
{
  v7 = a3;
  globeLineTextureResourcePool = self->_globeLineTextureResourcePool;
  if (!globeLineTextureResourcePool)
  {
    v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:a4->viewport.width height:a4->viewport.height mipmapped:0];
    [v9 setUsage:5];
    v10 = [MEMORY[0x277CFA7A0] texturePoolWithDescriptor:v9 expectedCountPerFrame:3];
    v11 = self->_globeLineTextureResourcePool;
    self->_globeLineTextureResourcePool = v10;

    globeLineTextureResourcePool = self->_globeLineTextureResourcePool;
  }

  v12 = [(CLKUIMetalResourcePool *)globeLineTextureResourcePool dequeueReusableResourceForUseOnCommandBuffer:v7];
  v13 = objc_opt_new();
  v14 = [v13 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setTexture:v12];

  v16 = [v13 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];
  [v17 setLoadAction:2];

  v18 = [v13 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript:0];
  [v19 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v20 = [v13 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setStoreAction:1];

  v22 = [v7 renderCommandEncoderWithDescriptor:v13];
  [v22 setRenderPipelineState:{-[NUNIClassicRenderer resources](self, "resources")[24]}];
  v39 = 0u;
  v40 = 0u;
  memset(&v38[4], 0, 384);
  v23 = *&a4[4].collectionType;
  v38[0] = *&a4[4].viewport.width;
  v38[1] = v23;
  v24 = *&a4[5].viewport.width;
  v38[2] = *&a4[4].octGeomRange.start;
  v38[3] = v24;
  for (i = 8; i != 32; ++i)
  {
    v26 = (i - 8) * 6.28318531 / 24.0;
    *(v38 + i) = __sincosf_stret(v26);
  }

  for (j = 0; j != 12; ++j)
  {
    v28 = j * 3.14159265 / 12.0;
    v29 = __sincosf_stret(v28);
    *&v30 = UMMul(*&a4[4].viewport.width, *&a4[4].collectionType, *&a4[4].octGeomRange.start, *&a4[5].viewport.width, v29);
    v38[j + 16] = v30;
  }

  *&_Q0 = UMMul(*&a4[4].viewport.width, *&a4[4].collectionType, *&a4[4].octGeomRange.start, *&a4[5].viewport.width, xmmword_25B719C90);
  v39 = _Q0;
  v37[0] = 0;
  v37[1] = 0x3F80000000000000;
  v37[2] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v37[3] = _Q0;
  [v22 setVertexBytes:v37 length:32 atIndex:1];
  [v22 setFragmentBytes:v38 length:480 atIndex:0];
  [v22 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v22 setCullMode:0];
  [v22 endEncoding];

  return v12;
}

- (void)_createPipelineForProgramType:(unint64_t)a3 fromLibrary:(id)a4
{
  v38 = a4;
  v6 = [(NUNIRenderer *)self pixelFormat];
  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 == 2)
      {
        v7 = @"classic_luna_vsh";
        v8 = @"classic_luna_fsh";
        goto LABEL_8;
      }

LABEL_17:
      [NUNIGlobetrotterRenderer _createPipelineForProgramType:fromLibrary:];
    }

    v7 = @"globetrotter_lines_vsh";
    v8 = @"globetrotter_lines_fsh";
    v6 = 10;
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = @"classic_sprite_vsh";
        v8 = @"classic_sprite_fsh";
LABEL_8:
        v9 = @"NUNIClassicShaders";
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v7 = @"globetrotter_globe_vsh";
    v8 = @"globetrotter_globe_fsh";
  }

  v9 = @"NUNIGlobetrotterShaders";
LABEL_12:
  v10 = MEMORY[0x277CFA788];
  v11 = NUNIBundle();
  v12 = [(NUNIClassicRenderer *)self mtlDevice];
  v13 = [v10 archiveWithName:v9 bundle:v11 device:v12];

  v14 = [MEMORY[0x277CD6D78] functionDescriptor];
  [v14 setName:v7];
  v15 = [v13 newFunctionInLibrary:v38 withDescriptor:v14];
  [v14 setName:v8];
  v16 = [v13 newFunctionInLibrary:v38 withDescriptor:v14];
  v17 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v17 setLabel:_NUNIGlobetrotterPipelineNames[a3]];
  [v17 setVertexFunction:v15];
  [v17 setFragmentFunction:v16];
  v18 = [v17 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript:0];
  [v19 setPixelFormat:v6];

  v20 = [v17 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  [v21 setBlendingEnabled:1];

  v22 = [v17 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript:0];
  [v23 setRgbBlendOperation:0];

  v24 = [v17 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript:0];
  [v25 setAlphaBlendOperation:0];

  v26 = [v17 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript:0];
  [v27 setSourceRGBBlendFactor:1];

  v28 = [v17 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript:0];
  [v29 setSourceAlphaBlendFactor:1];

  v30 = [v17 colorAttachments];
  v31 = [v30 objectAtIndexedSubscript:0];
  [v31 setDestinationRGBBlendFactor:5];

  v32 = [v17 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript:0];
  [v33 setDestinationAlphaBlendFactor:5];

  v34 = [(NUNIClassicRenderer *)self mtlDevice];
  v35 = [v13 newRenderPipelineStateForDevice:v34 withDescriptor:v17];
  v36 = [(NUNIClassicRenderer *)self resources];
  v37 = v36->pipelines[a3];
  v36->pipelines[a3] = v35;

  if (![(NUNIClassicRenderer *)self resources][8 * a3])
  {
    [NUNIGlobetrotterRenderer _createPipelineForProgramType:fromLibrary:];
  }
}

- (void)_initPrograms
{
  v5 = NUNIBundle();
  v3 = [(NUNIClassicRenderer *)self mtlDevice];
  v4 = [v3 newDefaultLibraryWithBundle:v5 error:0];

  [(NUNIGlobetrotterRenderer *)self _createPipelineForProgramType:0 fromLibrary:v4];
  [(NUNIGlobetrotterRenderer *)self _createPipelineForProgramType:1 fromLibrary:v4];
  [(NUNIGlobetrotterRenderer *)self _createPipelineForProgramType:2 fromLibrary:v4];
  [(NUNIGlobetrotterRenderer *)self _createPipelineForProgramType:3 fromLibrary:v4];
}

@end