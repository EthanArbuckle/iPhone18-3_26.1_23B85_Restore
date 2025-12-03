@interface MXIRenderer
- (MXIRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(int64_t)count error:(id *)error;
- (void)renderScene:(id)scene withEncoder:(id)encoder context:(MXIRenderingContext *)context;
@end

@implementation MXIRenderer

- (MXIRenderer)initWithDevice:(id)device colorPixelFormat:(unint64_t)format depthPixelFormat:(unint64_t)pixelFormat sampleCount:(int64_t)count error:(id *)error
{
  deviceCopy = device;
  v193.receiver = self;
  v193.super_class = MXIRenderer;
  v15 = [(MXIRenderer *)&v193 init];
  if (v15)
  {
    v16 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v12, @"com.apple.mxi", v13, v14);
    v19 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v17, v16, 0, v18);
    v15->_stencilSupport = pixelFormat == 260;
    if (pixelFormat == 260)
    {
      v20 = 260;
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_opt_new();
    objc_msgSend_setLabel_(v21, v22, @"mxi_pipeline", v23, v24);
    v28 = objc_msgSend_newFunctionWithName_(v19, v25, @"vert_mxi", v26, v27);
    objc_msgSend_setVertexFunction_(v21, v29, v28, v30, v31);

    v35 = objc_msgSend_newFunctionWithName_(v19, v32, @"frag_mxi", v33, v34);
    objc_msgSend_setFragmentFunction_(v21, v36, v35, v37, v38);

    objc_msgSend_setRasterSampleCount_(v21, v39, count, v40, v41);
    v46 = objc_msgSend_colorAttachments(v21, v42, v43, v44, v45);
    v50 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, 0, v48, v49);
    objc_msgSend_setPixelFormat_(v50, v51, format, v52, v53);

    v58 = objc_msgSend_colorAttachments(v21, v54, v55, v56, v57);
    v62 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 0, v60, v61);
    objc_msgSend_setBlendingEnabled_(v62, v63, 1, v64, v65);

    v70 = objc_msgSend_colorAttachments(v21, v66, v67, v68, v69);
    v74 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, 0, v72, v73);
    objc_msgSend_setSourceRGBBlendFactor_(v74, v75, 1, v76, v77);

    v82 = objc_msgSend_colorAttachments(v21, v78, v79, v80, v81);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 0, v84, v85);
    objc_msgSend_setRgbBlendOperation_(v86, v87, 0, v88, v89);

    v94 = objc_msgSend_colorAttachments(v21, v90, v91, v92, v93);
    v98 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 0, v96, v97);
    objc_msgSend_setDestinationRGBBlendFactor_(v98, v99, 5, v100, v101);

    v106 = objc_msgSend_colorAttachments(v21, v102, v103, v104, v105);
    v110 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, 0, v108, v109);
    objc_msgSend_setSourceAlphaBlendFactor_(v110, v111, 1, v112, v113);

    v118 = objc_msgSend_colorAttachments(v21, v114, v115, v116, v117);
    v122 = objc_msgSend_objectAtIndexedSubscript_(v118, v119, 0, v120, v121);
    objc_msgSend_setAlphaBlendOperation_(v122, v123, 0, v124, v125);

    v130 = objc_msgSend_colorAttachments(v21, v126, v127, v128, v129);
    v134 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, 0, v132, v133);
    objc_msgSend_setDestinationAlphaBlendFactor_(v134, v135, 5, v136, v137);

    objc_msgSend_setDepthAttachmentPixelFormat_(v21, v138, pixelFormat, v139, v140);
    objc_msgSend_setStencilAttachmentPixelFormat_(v21, v141, v20, v142, v143);
    if (objc_msgSend_supportsVertexAmplificationCount_(deviceCopy, v144, 2, v145, v146))
    {
      objc_msgSend_setMaxVertexAmplificationCount_(v21, v147, 2, v148, v149);
    }

    v150 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(deviceCopy, v147, v21, 0, v149);
    texturePipelineState = v15->_texturePipelineState;
    v15->_texturePipelineState = v150;

    v155 = objc_msgSend_newFunctionWithName_(v19, v152, @"frag_mxi_array", v153, v154);
    objc_msgSend_setFragmentFunction_(v21, v156, v155, v157, v158);

    v161 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(deviceCopy, v159, v21, 0, v160);
    arrayPipelineState = v15->_arrayPipelineState;
    v15->_arrayPipelineState = v161;

    if (pixelFormat)
    {
      v163 = objc_opt_new();
      objc_msgSend_setDepthWriteEnabled_(v163, v164, 1, v165, v166);
      objc_msgSend_setDepthCompareFunction_(v163, v167, 1, v168, v169);
      v173 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v170, v163, v171, v172);
      depthStateDefault = v15->_depthStateDefault;
      v15->_depthStateDefault = v173;

      objc_msgSend_setDepthCompareFunction_(v163, v175, 4, v176, v177);
      v181 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v178, v163, v179, v180);
      depthStateInvZ = v15->_depthStateInvZ;
      v15->_depthStateInvZ = v181;

      objc_msgSend_setDepthCompareFunction_(v163, v183, 7, v184, v185);
      v189 = objc_msgSend_newDepthStencilStateWithDescriptor_(deviceCopy, v186, v163, v187, v188);
      depthStateAlways = v15->_depthStateAlways;
      v15->_depthStateAlways = v189;

      v15->_useStencil = 0;
    }

    v191 = v15;
  }

  return v15;
}

- (void)renderScene:(id)scene withEncoder:(id)encoder context:(MXIRenderingContext *)context
{
  v298 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  encoderCopy = encoder;
  if (!objc_msgSend_triangleCount(sceneCopy, v10, v11, v12, v13))
  {
    goto LABEL_53;
  }

  v18 = objc_msgSend_colorTextures(sceneCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

  if (v23 < 0x21)
  {
    if (self->_stencilSupport && self->_useStencil == (*&context[13].var4 == 7))
    {
      v38 = objc_opt_new();
      objc_msgSend_setDepthWriteEnabled_(v38, v39, 1, v40, v41);
      self->_useStencil = 0;
      if (*&context[13].var4 != 7)
      {
        v45 = objc_opt_new();
        objc_msgSend_setStencilCompareFunction_(v45, v46, *&context[13].var4, v47, v48);
        objc_msgSend_setStencilFailureOperation_(v45, v49, 0, v50, v51);
        objc_msgSend_setDepthFailureOperation_(v45, v52, 0, v53, v54);
        objc_msgSend_setDepthStencilPassOperation_(v45, v55, 0, v56, v57);
        objc_msgSend_setReadMask_(v45, v58, *&context[13].var6, v59, v60);
        objc_msgSend_setWriteMask_(v45, v61, 0, v62, v63);
        objc_msgSend_setFrontFaceStencil_(v38, v64, v45, v65, v66);
        objc_msgSend_setBackFaceStencil_(v38, v67, v45, v68, v69);
        self->_useStencil = 1;
      }

      objc_msgSend_setDepthCompareFunction_(v38, v42, 1, v43, v44);
      v74 = objc_msgSend_device(encoderCopy, v70, v71, v72, v73);
      v78 = objc_msgSend_newDepthStencilStateWithDescriptor_(v74, v75, v38, v76, v77);
      depthStateDefault = self->_depthStateDefault;
      self->_depthStateDefault = v78;

      objc_msgSend_setDepthCompareFunction_(v38, v80, 4, v81, v82);
      v87 = objc_msgSend_device(encoderCopy, v83, v84, v85, v86);
      v91 = objc_msgSend_newDepthStencilStateWithDescriptor_(v87, v88, v38, v89, v90);
      depthStateInvZ = self->_depthStateInvZ;
      self->_depthStateInvZ = v91;

      objc_msgSend_setDepthCompareFunction_(v38, v93, 7, v94, v95);
      v100 = objc_msgSend_device(encoderCopy, v96, v97, v98, v99);
      v104 = objc_msgSend_newDepthStencilStateWithDescriptor_(v100, v101, v38, v102, v103);
      depthStateAlways = self->_depthStateAlways;
      self->_depthStateAlways = v104;
    }

    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v280 = 0u;
    v281 = 0u;
    *buf = 0u;
    v279 = 0u;
    memset(v277, 0, sizeof(v277));
    v106 = objc_msgSend_colorTextures(sceneCopy, v24, v25, v26, v27);
    v111 = objc_msgSend_count(v106, v107, v108, v109, v110);

    if (v111)
    {
      for (i = 0; ; ++i)
      {
        v117 = objc_msgSend_colorTextures(sceneCopy, v112, v113, v114, v115);
        v122 = objc_msgSend_count(v117, v118, v119, v120, v121);

        if (v122 <= i)
        {
          break;
        }

        v127 = objc_msgSend_colorTextures(sceneCopy, v123, v124, v125, v126);
        v131 = objc_msgSend_objectAtIndex_(v127, v128, i, v129, v130);
        v132 = *&buf[8 * i];
        *&buf[8 * i] = v131;

        *(v277 + i) = objc_msgSend_gpuResourceID(v131, v133, v134, v135, v136);
      }

      v137 = objc_msgSend_colorTextures(sceneCopy, v123, v124, v125, v126);
      v142 = objc_msgSend_count(v137, v138, v139, v140, v141);
      objc_msgSend_useResources_count_usage_stages_(encoderCopy, v143, buf, v142, 1, 2);
    }

    v144 = 0;
    v145 = *&context[8].var3;
    v146 = *&context[8].var6;
    v147 = *&context[9].var4;
    v148 = *&context[10].var3;
    v149 = *&context[3].var4;
    v150 = *&context[4].var3;
    v151 = *&context[4].var6;
    v273 = *&context[2].var6;
    v274 = v149;
    v275 = v150;
    v276 = v151;
    do
    {
      *(&v294 + v144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v145, COERCE_FLOAT(*(&v273 + v144))), v146, *(&v273 + v144), 1), v147, *(&v273 + v144), 2), v148, *(&v273 + v144), 3);
      v144 += 16;
    }

    while (v144 != 64);
    v152 = 0;
    v153 = v294;
    v154 = v295;
    v155 = v296;
    v156 = v297;
    v157 = *&context->var3;
    v158 = *&context->var6;
    v159 = *&context[1].var4;
    v160 = *&context[2].var3;
    v273 = *&context->var3;
    v274 = v158;
    v275 = v159;
    v276 = v160;
    do
    {
      *(&v294 + v152) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v153, COERCE_FLOAT(*(&v273 + v152))), v154, *(&v273 + v152), 1), v155, *(&v273 + v152), 2), v156, *(&v273 + v152), 3);
      v152 += 16;
    }

    while (v152 != 64);
    v265 = v294;
    v266 = v295;
    v267 = v296;
    v268 = v297;
    if (LOBYTE(context[14].var3) == 1)
    {
      v161 = 0;
      v162 = *&context[10].var6;
      v163 = *&context[11].var4;
      v164 = *&context[12].var3;
      v165 = *&context[12].var6;
      v166 = *&context[6].var3;
      v167 = *&context[6].var6;
      v168 = *&context[7].var4;
      v273 = *&context[5].var4;
      v274 = v166;
      v275 = v167;
      v276 = v168;
      do
      {
        *(&v294 + v161) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v162, COERCE_FLOAT(*(&v273 + v161))), v163, *(&v273 + v161), 1), v164, *(&v273 + v161), 2), v165, *(&v273 + v161), 3);
        v161 += 16;
      }

      while (v161 != 64);
      v169 = 0;
      v170 = v294;
      v171 = v295;
      v172 = v296;
      v173 = v297;
      v273 = v157;
      v274 = v158;
      v275 = v159;
      v276 = v160;
      do
      {
        *(&v294 + v169) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*(&v273 + v169))), v171, *(&v273 + v169), 1), v172, *(&v273 + v169), 2), v173, *(&v273 + v169), 3);
        v169 += 16;
      }

      while (v169 != 64);
      v269 = v294;
      v270 = v295;
      v271 = v296;
      v272 = v297;
    }

    LOBYTE(v273) = objc_msgSend_isPremultipliedAlpha(sceneCopy, v112, v113, v114, v115, v265, *&v266, *&v267, *&v268, v269, *&v270, *&v271, *&v272, v273, v274, v275, v276);
    v178 = objc_msgSend_device(encoderCopy, v174, v175, v176, v177);
    v182 = objc_msgSend_supportsVertexAmplificationCount_(v178, v179, 2, v180, v181);

    if (v182)
    {
      v294 = xmmword_22FA07EC0;
      if (LOBYTE(context[14].var3))
      {
        objc_msgSend_setVertexAmplificationCount_viewMappings_(encoderCopy, v183, 2, &v294, v186);
      }

      else
      {
        objc_msgSend_setVertexAmplificationCount_viewMappings_(encoderCopy, v183, 1, &v294, v186);
      }
    }

    v187 = objc_msgSend_colorTextures(sceneCopy, v183, v184, v185, v186);
    v192 = objc_msgSend_count(v187, v188, v189, v190, v191);
    v196 = 16;
    if (!v192)
    {
      v196 = 8;
    }

    objc_msgSend_setRenderPipelineState_(encoderCopy, v193, *(&self->super.isa + v196), v194, v195);

    objc_msgSend_setStencilReferenceValue_(encoderCopy, v197, *(&context[13].var6 + 1), v198, v199);
    v204 = objc_msgSend_vertexPositions(sceneCopy, v200, v201, v202, v203);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v205, v204, 0, 1);

    v210 = objc_msgSend_vertexUVs(sceneCopy, v206, v207, v208, v209);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v211, v210, 0, 2);

    v216 = objc_msgSend_triangleIndices(sceneCopy, v212, v213, v214, v215);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v217, v216, 0, 0);

    v222 = objc_msgSend_triangleSliceIndices(sceneCopy, v218, v219, v220, v221);
    objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v223, v222, 0, 3);

    objc_msgSend_setVertexBytes_length_atIndex_(encoderCopy, v224, &v265, 128, 4);
    objc_msgSend_setFragmentBytes_length_atIndex_(encoderCopy, v225, &v273, 1, 0);
    v230 = objc_msgSend_colorTextures(sceneCopy, v226, v227, v228, v229);
    v235 = objc_msgSend_count(v230, v231, v232, v233, v234) == 0;

    if (v235)
    {
      v244 = objc_msgSend_colorTexture(sceneCopy, v236, v237, v238, v239);
      objc_msgSend_setFragmentTexture_atIndex_(encoderCopy, v245, v244, 0, v246);
    }

    else
    {
      objc_msgSend_setFragmentBytes_length_atIndex_(encoderCopy, v236, v277, 256, 1);
    }

    v251 = objc_msgSend_opaqueTriangleCount(sceneCopy, v240, v241, v242, v243);
    v252 = (3 * v251);
    if (v251 <= 0)
    {
      v253 = 0;
    }

    else
    {
      v253 = v252;
    }

    v261 = 3 * objc_msgSend_triangleCount(sceneCopy, v247, v248, v249, v250) - v253;
    if (objc_msgSend_opaqueTriangleCount(sceneCopy, v254, v255, v256, v257))
    {
      v262 = self->_depthStateDefault;
      if (v262)
      {
        if ((*&context[10].var4 - *&context[9].var6) >= ((*&context[10].var4 + (*&context[9].var6 * -100.0)) / 100.0))
        {
          objc_msgSend_setDepthStencilState_(encoderCopy, v258, self->_depthStateInvZ, v259, v260);
        }

        else
        {
          objc_msgSend_setDepthStencilState_(encoderCopy, v258, v262, v259, v260);
        }
      }

      if (v251 >= 1)
      {
        objc_msgSend_drawPrimitives_vertexStart_vertexCount_(encoderCopy, v258, 3, 0, v252);
      }

      if (v261 <= 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v263 = self->_depthStateAlways;
      if (v263)
      {
        objc_msgSend_setDepthStencilState_(encoderCopy, v258, v263, v259, v260);
      }

      if (v261 < 1)
      {
        goto LABEL_51;
      }
    }

    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(encoderCopy, v258, 3, v253, v261);
LABEL_51:
    for (j = 248; j != -8; j -= 8)
    {
    }

    goto LABEL_53;
  }

  v28 = _mxi_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v33 = objc_msgSend_colorTextures(sceneCopy, v29, v30, v31, v32);
    *buf = 67109376;
    *&buf[4] = objc_msgSend_count(v33, v34, v35, v36, v37);
    *&buf[8] = 1024;
    *&buf[10] = 32;
    _os_log_impl(&dword_22F9C3000, v28, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIRenderer.mm:118] [MXI] scene.colorTextures.count (%d) > ATLAS_SLICES_CAPACITY (%d)", buf, 0xEu);
  }

LABEL_53:
}

@end