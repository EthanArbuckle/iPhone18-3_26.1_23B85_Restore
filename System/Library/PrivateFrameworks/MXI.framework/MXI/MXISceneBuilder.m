@interface MXISceneBuilder
+ (id)compressScene:(id)a3 withOptions:(id)a4 error:(id *)a5;
- ($94F468A8D4C62B317260615823C2B210)depthRange;
- ($94F468A8D4C62B317260615823C2B210)getLayerRange:(int64_t)a3;
- (MXISceneBuilder)initWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7;
- (MXISceneBuilder)initWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 options:(id)a6;
- (double)getLayerViewMatrix:(uint64_t)a3;
- (float)getLayerProjectionMatrix:(uint64_t)a3;
- (id).cxx_construct;
- (id)buildSceneWithOptions:(id)a3 error:(id *)a4;
- (id)initBuilderWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7;
- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 error:(id *)a8;
- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 normal:(id)a8 extended:(id)a9 error:(id *)a10;
- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 params:(id)a8 error:(id *)a9;
- (void)setAttribute:(id)a3 forKey:(id)a4;
@end

@implementation MXISceneBuilder

- (MXISceneBuilder)initWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 options:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v50 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = _MXISignpostLogSystem();
  v13 = _MXISignpostCreate(v12);
  v14 = _MXISignpostLogSystem();
  v38 = 0u;
  v39 = 0u;
  core::get_info(&v38);
  v15 = v14;
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 134218752;
    v41 = v38;
    v42 = 2048;
    v43 = *(&v38 + 1);
    v44 = 2048;
    v45 = *&v39;
    v46 = 2048;
    v47 = *(&v39 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v16, OS_SIGNPOST_EVENT, v13, "MXI_SCENE_BUILDER_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v21 = CFPreferencesCopyMultiple(0, @"com.apple.mxi", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v21)
  {
    if (v11)
    {
LABEL_6:
      v22 = objc_msgSend_mutableCopy(v11, v17, v18, v19, v20);
      objc_msgSend_addEntriesFromDictionary_(v22, v23, v21, v24, v25);

      goto LABEL_9;
    }
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  v22 = v21;
LABEL_9:
  v26 = _mxi_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = "MXITypeCube";
    *buf = 136316162;
    if (!a3)
    {
      v27 = "MXITypePlane";
    }

    v41 = v27;
    v42 = 2048;
    v43 = a4;
    v44 = 2048;
    v45 = var0;
    v46 = 2048;
    v47 = var1;
    v48 = 2112;
    v49 = v22;
    _os_log_impl(&dword_22F9C3000, v26, OS_LOG_TYPE_DEFAULT, "[MXI.framework] [MXISceneBuilder] Initializing %s with %ld layers in %f and %f range and options %@", buf, 0x34u);
  }

  v28 = [MXISceneBuilderTiled alloc];
  *&v29 = var0;
  *&v30 = var1;
  inited = objc_msgSend_initBuilderWithType_numberOfLayers_depthRange_materialDescriptor_options_(v28, v31, a3, a4, 0, v22, v29, v30);

  v33 = objc_opt_new();
  objc_msgSend_setAttributes_(inited, v34, v33, v35, v36);

  return inited;
}

- ($94F468A8D4C62B317260615823C2B210)getLayerRange:(int64_t)a3
{
  if (self->_overriddenLayerDepths)
  {
    sub_22FA062F4();
  }

  layerOverlap = self->_layerOverlap;
  v8.f32[0] = a3 - layerOverlap;
  *v3.i32 = self->_numLayers;
  v4.i32[0] = LODWORD(self->_depthRange.from);
  v5.i32[0] = LODWORD(self->_depthRange.to);
  *v6.i32 = 1.0 / *v4.i32;
  v8.f32[1] = (a3 + 1.0) + layerOverlap;
  v9 = vdup_lane_s32(v3, 0);
  v10 = vadd_f32(vdup_lane_s32(v6, 0), vdiv_f32(vmul_n_f32(vbic_s8(vbsl_s8(vcgt_f32(v8, v9), v9, v8), vcltz_f32(v8)), (1.0 / *v5.i32) - (1.0 / *v4.i32)), v9));
  __asm { FMOV            V1.2S, #1.0 }

  v16 = vdiv_f32(_D1, v10);
  v17 = vdup_lane_s32(v4, 0);
  v18 = vdup_lane_s32(v5, 0);
  v19 = vbsl_s8(vcgt_f32(v17, v16), v17, vbsl_s8(vcgt_f32(v16, v18), v18, v16));
  v20 = *&v19.i32[1];
  result.var0 = *v19.i32;
  result.var1 = v20;
  return result;
}

- (double)getLayerViewMatrix:(uint64_t)a3
{
  if (*(a1 + 40) == 1)
  {
    sub_22FA0635C();
  }

  if (a3 > 2)
  {
    if (a3 == 5)
    {
      *&result = 3212836864;
      return result;
    }

LABEL_9:
    *&result = 1065353216;
    return result;
  }

  if (!a3)
  {
    return 0.0;
  }

  if (a3 != 1)
  {
    goto LABEL_9;
  }

  return 0.0;
}

- (float)getLayerProjectionMatrix:(uint64_t)a3
{
  objc_msgSend_getLayerRange_(a1, a2, a3, a4, a5);
  v6 = a1[16];
  return (1.0 / tanf(a1[14] * 0.5)) / v6;
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  v11 = objc_msgSend_attributes(self, v7, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, v14, v6, v13);
}

- (id)buildSceneWithOptions:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = CFPreferencesCopyMultiple(0, @"com.apple.mxi", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v10)
  {
    if (v5)
    {
LABEL_3:
      v11 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
      objc_msgSend_addEntriesFromDictionary_(v11, v12, v10, v13, v14);

      goto LABEL_6;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = v10;
LABEL_6:
  v15 = _mxi_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_22F9C3000, v15, OS_LOG_TYPE_DEFAULT, "[MXI.framework] [MXISceneBuilder] Building scene with options %@", buf, 0xCu);
  }

  recording = self->_recording;
  if (recording)
  {
    v22 = @"options";
    v23 = v11;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, &v23, &v22, 1);
    objc_msgSend_captureCommand_withArgs_(recording, v19, @"build_scene", v18, v20);
  }

  return 0;
}

+ (id)compressScene:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v7 = a3;
  v12 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (objc_msgSend_textureCompressionType(v7, v8, v9, v10, v11))
  {
    v13 = _mxi_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:230] Cannot compress MXIScene: scene already compressed", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIUserError, v14, a5, @"Cannot compress MXIScene: scene already compressed", v15);
    v16 = 0;
  }

  else
  {
    v16 = [MXIScene alloc];
    if (v16)
    {
      v21 = objc_msgSend_type(v7, v17, v18, v19, v20);
      objc_msgSend_setType_(v16, v22, v21, v23, v24);
      objc_msgSend_verticalFOV(v7, v25, v26, v27, v28);
      objc_msgSend_setVerticalFOV_(v16, v29, v30, v31, v32);
      objc_msgSend_effectiveVerticalFOV(v7, v33, v34, v35, v36);
      objc_msgSend_setEffectiveVerticalFOV_(v16, v37, v38, v39, v40);
      objc_msgSend_aspectRatio(v7, v41, v42, v43, v44);
      objc_msgSend_setAspectRatio_(v16, v45, v46, v47, v48);
      objc_msgSend_effectiveAspectRatio(v7, v49, v50, v51, v52);
      objc_msgSend_setEffectiveAspectRatio_(v16, v53, v54, v55, v56);
      objc_msgSend_depthRange(v7, v57, v58, v59, v60);
      objc_msgSend_setDepthRange_(v16, v61, v62, v63, v64);
      v69 = objc_msgSend_resolutionWidth(v7, v65, v66, v67, v68);
      objc_msgSend_setResolutionWidth_(v16, v70, v69, v71, v72);
      v77 = objc_msgSend_resolutionHeight(v7, v73, v74, v75, v76);
      objc_msgSend_setResolutionHeight_(v16, v78, v77, v79, v80);
      isPremultipliedAlpha = objc_msgSend_isPremultipliedAlpha(v7, v81, v82, v83, v84);
      objc_msgSend_setIsPremultipliedAlpha_(v16, v86, isPremultipliedAlpha, v87, v88);
      v93 = objc_msgSend_numOpaqueTriangles(v7, v89, v90, v91, v92);
      objc_msgSend_setNumOpaqueTriangles_(v16, v94, v93, v95, v96);
      v101 = objc_msgSend_numLayers(v7, v97, v98, v99, v100);
      objc_msgSend_setNumLayers_(v16, v102, v101, v103, v104);
      objc_msgSend_modelToWorldTransform(v7, v105, v106, v107, v108);
      objc_msgSend_setModelToWorldTransform_(v16, v109, v110, v111, v112);
      v117 = objc_msgSend_userdata(v7, v113, v114, v115, v116);
      objc_msgSend_setUserdata_(v16, v118, v117, v119, v120);

      v125 = objc_msgSend_numVertices(v7, v121, v122, v123, v124);
      objc_msgSend_setNumVertices_(v16, v126, v125, v127, v128);
      v133 = objc_msgSend_numTriangles(v7, v129, v130, v131, v132);
      objc_msgSend_setNumTriangles_(v16, v134, v133, v135, v136);
      v141 = objc_msgSend_colorTextureSlices(v7, v137, v138, v139, v140);
      objc_msgSend_setColorTextureSlices_(v16, v142, v141, v143, v144);
      v149 = objc_msgSend_vertexPositions(v7, v145, v146, v147, v148);
      objc_msgSend_setVertexPositions_(v16, v150, v149, v151, v152);

      v157 = objc_msgSend_vertexUVs(v7, v153, v154, v155, v156);
      objc_msgSend_setVertexUVs_(v16, v158, v157, v159, v160);

      v165 = objc_msgSend_triangleSliceIndices(v7, v161, v162, v163, v164);
      objc_msgSend_setTriangleSliceIndices_(v16, v166, v165, v167, v168);

      v173 = objc_msgSend_triangleIndices(v7, v169, v170, v171, v172);
      objc_msgSend_setTriangleIndices_(v16, v174, v173, v175, v176);

      v180 = objc_msgSend_valueForKey_(v12, v177, @"astc_block_size", v178, v179);
      v183 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v181, v180, 68, v182);

      v187 = objc_msgSend_valueForKey_(v12, v184, @"compress_using_gpu", v185, v186);
      LODWORD(v180) = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v188, v187, 0, v189);

      if (v180)
      {
        v193 = objc_msgSend_valueForKey_(v12, v190, @"astc_gpu_rank_modes_count_ratio", v191, v192);
        LODWORD(v194) = 1.0;
        objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v195, v193, v196, v197, v194);
        v199 = v198;

        v203 = objc_msgSend_valueForKey_(v12, v200, @"astc_gpu_fast_skip_threshold", v201, v202);
        v206 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v204, v203, 5, v205);

        v211 = objc_msgSend_colorTexture(v7, v207, v208, v209, v210);

        if (v211)
        {
          v216 = objc_msgSend_colorTexture(v7, v212, v213, v214, v215);
          v217 = image::ToASTC(v216, v183 >> 4, v183 & 0xF, v206, v199);
          objc_msgSend_setColorTexture_(v16, v218, v217, v219, v220);

          objc_msgSend_setColorTextures_(v16, v221, MEMORY[0x277CBEBF8], v222, v223);
        }

        else
        {
          v263 = objc_opt_new();
          for (i = 0; ; ++i)
          {
            v265 = objc_msgSend_colorTextures(v7, v259, v260, v261, v262);
            v270 = objc_msgSend_count(v265, v266, v267, v268, v269);

            if (v270 <= i)
            {
              break;
            }

            v275 = objc_msgSend_colorTextures(v7, v271, v272, v273, v274);
            v279 = objc_msgSend_objectAtIndex_(v275, v276, i, v277, v278);
            v280 = image::ToASTC(v279, v183 >> 4, v183 & 0xF, v206, v199);

            objc_msgSend_addObject_(v263, v281, v280, v282, v283);
          }

          objc_msgSend_setColorTextures_(v16, v271, v263, v273, v274);
        }
      }

      else
      {
        v228 = objc_msgSend_valueForKey_(v12, v190, @"texture_compression_quality", v191, v192);
        LODWORD(v229) = 0.5;
        objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v230, v228, v231, v232, v229);
        v234 = v233;

        v238 = objc_msgSend_valueForKey_(v12, v235, @"thread_pool_size", v236, v237);
        v241 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v239, v238, 1, v240);

        if (v241 >= 2)
        {
          operator new();
        }

        v246 = objc_msgSend_colorTexture(v7, v242, v243, v244, v245);

        if (v246)
        {
          v251 = objc_msgSend_colorTexture(v7, v247, v248, v249, v250);
          v252 = image::ToASTC(v251, v183 >> 4, v183 & 0xF, 0, v234);
          objc_msgSend_setColorTexture_(v16, v253, v252, v254, v255);

          objc_msgSend_setColorTextures_(v16, v256, MEMORY[0x277CBEBF8], v257, v258);
        }

        else
        {
          v288 = objc_opt_new();
          for (j = 0; ; ++j)
          {
            v290 = objc_msgSend_colorTextures(v7, v284, v285, v286, v287);
            v295 = objc_msgSend_count(v290, v291, v292, v293, v294);

            if (v295 <= j)
            {
              break;
            }

            v300 = objc_msgSend_colorTextures(v7, v296, v297, v298, v299);
            v304 = objc_msgSend_objectAtIndex_(v300, v301, j, v302, v303);
            v305 = image::ToASTC(v304, v183 >> 4, v183 & 0xF, 0, v234);

            objc_msgSend_addObject_(v288, v306, v305, v307, v308);
          }

          objc_msgSend_setColorTextures_(v16, v296, v288, v298, v299);
        }
      }

      v309 = objc_msgSend_normalTexture(v7, v224, v225, v226, v227);
      objc_msgSend_setNormalTexture_(v16, v310, v309, v311, v312);

      v317 = objc_msgSend_pbrTextures(v7, v313, v314, v315, v316);
      objc_msgSend_setPbrTextures_(v16, v318, v317, v319, v320);

      v325 = objc_msgSend_materialDescriptor(v7, v321, v322, v323, v324);
      objc_msgSend_setMaterialDescriptor_(v16, v326, v325, v327, v328);

      v333 = objc_msgSend_iblFileName(v7, v329, v330, v331, v332);
      objc_msgSend_setIblFileName_(v16, v334, v333, v335, v336);

      v341 = objc_msgSend_attributes(v7, v337, v338, v339, v340);
      objc_msgSend_setAttributes_(v16, v342, v341, v343, v344);
    }
  }

  return v16;
}

- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 error:(id *)a8
{
  v77 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = _mxi_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = " and depth";
    *buf = 134218498;
    v72 = a4;
    if (!v16)
    {
      v18 = "";
    }

    v73 = 2048;
    v74 = a5;
    v75 = 2080;
    v76 = v18;
    _os_log_impl(&dword_22F9C3000, v17, OS_LOG_TYPE_DEBUG, "[MXI.framework] [MXISceneBuilderBase] Processing layer %ld for face %ld with color %s", buf, 0x20u);
  }

  v23 = objc_msgSend_width(v15, v19, v20, v21, v22);
  *&v28 = v23 / objc_msgSend_height(v15, v24, v25, v26, v27);
  objc_msgSend_setAspectRatio_(self, v29, v30, v31, v32, v28);
  recording = self->_recording;
  if (recording)
  {
    v39 = objc_msgSend_captureTexture_commandBuffer_(recording, v33, v15, v14, v34);
    if (!v39)
    {
      v55 = _mxi_log();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v55, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:342] Could not capture color texture", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v56, a8, @"Could not capture color texture", v57);
      goto LABEL_18;
    }

    v40 = self->_recording;
    if (v16)
    {
      v44 = objc_msgSend_captureTexture_commandBuffer_(self->_recording, v36, v16, v14, v38);
      if (!v44)
      {
        v64 = _mxi_log();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v64, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:349] Could not capture depth texture", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v65, a8, @"Could not capture depth texture", v66);
        goto LABEL_18;
      }

      v45 = self->_recording;
      v69[0] = @"index";
      v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, a4, v42, v43);
      v70[0] = v46;
      v69[1] = @"face";
      v50 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v47, a5, v48, v49);
      v70[1] = v50;
      v70[2] = v39;
      v69[2] = @"color";
      v69[3] = @"depth";
      v70[3] = v44;
      v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v70, v69, 4);
      objc_msgSend_captureCommand_withArgs_(v45, v53, @"process_layer", v52, v54);
    }

    else
    {
      v44 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, a4, v37, v38, @"index");
      v68[0] = v44;
      v67[1] = @"face";
      v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v58, a5, v59, v60);
      v67[2] = @"color";
      v68[1] = v46;
      v68[2] = v39;
      v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, v68, v67, 3);
      objc_msgSend_captureCommand_withArgs_(v40, v62, @"process_layer", v50, v63);
    }

LABEL_18:
  }
}

- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 params:(id)a8 error:(id *)a9
{
  v140[6] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = _mxi_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = " and depth";
    *buf = 134218498;
    *&buf[4] = a4;
    if (!v17)
    {
      v20 = "";
    }

    *&buf[12] = 2048;
    *&buf[14] = a5;
    *&buf[22] = 2080;
    *&buf[24] = v20;
    _os_log_impl(&dword_22F9C3000, v19, OS_LOG_TYPE_DEBUG, "[MXI.framework] [MXISceneBuilderBase] Processing layer %ld for face %ld with color %s", buf, 0x20u);
  }

  v25 = objc_msgSend_width(v16, v21, v22, v23, v24);
  *&v30 = v25 / objc_msgSend_height(v16, v26, v27, v28, v29);
  objc_msgSend_setAspectRatio_(self, v31, v32, v33, v34, v30);
  recording = self->_recording;
  if (recording)
  {
    v41 = objc_msgSend_captureTexture_commandBuffer_(recording, v35, v16, v15, v36);
    if (!v41)
    {
      v77 = _mxi_log();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v77, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:377] Could not capture color texture", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v78, a9, @"Could not capture color texture", v79);
      goto LABEL_23;
    }

    if (v17)
    {
      v45 = objc_msgSend_captureTexture_commandBuffer_(self->_recording, v38, v17, v15, v40);
      if (!v45)
      {
        v111 = _mxi_log();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v111, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:384] Could not capture depth texture", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v112, a9, @"Could not capture depth texture", v113);
        goto LABEL_23;
      }

      v128 = self->_recording;
      if (v18)
      {
        v139[0] = @"index";
        v129 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v42, a4, v43, v44);
        v140[0] = v129;
        v139[1] = @"face";
        v49 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v46, a5, v47, v48);
        v140[1] = v49;
        v140[2] = v41;
        v139[2] = @"color";
        v139[3] = @"depth";
        v140[3] = v45;
        v139[4] = @"projection";
        objc_msgSend_projection(v18, v50, v51, v52, v53);
        *buf = v54;
        *&buf[16] = v55;
        v137 = v56;
        v138 = v57;
        v62 = sub_22F9C6264(buf, v58, v59, v60, v61, *&v54);
        v140[4] = v62;
        v139[5] = @"linear_depth";
        v63 = MEMORY[0x277CCABB0];
        v68 = objc_msgSend_linearDepth(v18, v64, v65, v66, v67);
        v72 = objc_msgSend_numberWithBool_(v63, v69, v68, v70, v71);
        v140[5] = v72;
        v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, v140, v139, 6);
        objc_msgSend_captureCommand_withArgs_(v128, v75, @"process_layer", v74, v76);
      }

      else
      {
        v134[0] = @"index";
        v129 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v42, a4, v43, v44);
        v135[0] = v129;
        v134[1] = @"face";
        v49 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v114, a5, v115, v116);
        v135[1] = v49;
        v135[2] = v41;
        v134[2] = @"color";
        v134[3] = @"depth";
        v135[3] = v45;
        v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v117, v135, v134, 4);
        objc_msgSend_captureCommand_withArgs_(v128, v119, @"process_layer", v118, v120);
      }
    }

    else
    {
      v80 = self->_recording;
      if (v18)
      {
        v132[0] = @"index";
        v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v38, a4, v39, v40);
        v133[0] = v45;
        v132[1] = @"face";
        v129 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v81, a5, v82, v83);
        v133[1] = v129;
        v133[2] = v41;
        v132[2] = @"color";
        v132[3] = @"projection";
        objc_msgSend_projection(v18, v84, v85, v86, v87);
        *buf = v88;
        *&buf[16] = v89;
        v137 = v90;
        v138 = v91;
        v96 = sub_22F9C6264(buf, v92, v93, v94, v95, *&v88);
        v133[3] = v96;
        v132[4] = @"linear_depth";
        v97 = MEMORY[0x277CCABB0];
        v102 = objc_msgSend_linearDepth(v18, v98, v99, v100, v101);
        v106 = objc_msgSend_numberWithBool_(v97, v103, v102, v104, v105);
        v133[4] = v106;
        v108 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v107, v133, v132, 5);
        objc_msgSend_captureCommand_withArgs_(v80, v109, @"process_layer", v108, v110);
      }

      else
      {
        v130[0] = @"index";
        v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v38, a4, v39, v40);
        v131[0] = v45;
        v130[1] = @"face";
        objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v121, a5, v122, v123);
        v129 = v130[2] = @"color";
        v131[1] = v129;
        v131[2] = v41;
        v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v124, v131, v130, 3);
        objc_msgSend_captureCommand_withArgs_(v80, v126, @"process_layer", v125, v127);
      }
    }

LABEL_23:
  }
}

- ($94F468A8D4C62B317260615823C2B210)depthRange
{
  from = self->_depthRange.from;
  to = self->_depthRange.to;
  result.var1 = to;
  result.var0 = from;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (MXISceneBuilder)initWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v46 = *MEMORY[0x277D85DE8];
  v13 = a6;
  v14 = a7;
  v19 = CFPreferencesCopyMultiple(0, @"com.apple.mxi", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v19)
  {
    if (v14)
    {
LABEL_3:
      v20 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);
      objc_msgSend_addEntriesFromDictionary_(v20, v21, v19, v22, v23);

      goto LABEL_6;
    }
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v20 = v19;
LABEL_6:
  v24 = _mxi_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = "MXITypeCube";
    v36 = 136316162;
    if (!a3)
    {
      v25 = "MXITypePlane";
    }

    v37 = v25;
    v38 = 2048;
    v39 = a4;
    v40 = 2048;
    v41 = var0;
    v42 = 2048;
    v43 = var1;
    v44 = 2112;
    v45 = v20;
    _os_log_impl(&dword_22F9C3000, v24, OS_LOG_TYPE_DEFAULT, "[MXI.framework] [MXISceneBuilder] Initializing for MXIType %s with %ld layers in %f and %f range with material description and options %@", &v36, 0x34u);
  }

  v26 = [MXISceneBuilderTiled alloc];
  *&v27 = var0;
  *&v28 = var1;
  inited = objc_msgSend_initBuilderWithType_numberOfLayers_depthRange_materialDescriptor_options_(v26, v29, a3, a4, v13, v20, v27, v28);

  v31 = objc_opt_new();
  objc_msgSend_setAttributes_(inited, v32, v31, v33, v34);

  return inited;
}

- (id)initBuilderWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v338 = *MEMORY[0x277D85DE8];
  v329 = a6;
  v13 = a7;
  v330.receiver = self;
  v330.super_class = MXISceneBuilder;
  v14 = [(MXISceneBuilder *)&v330 init];
  v18 = v14;
  if (!v14)
  {
    goto LABEL_80;
  }

  objc_msgSend_setType_(v14, v15, a3, v16, v17);
  objc_msgSend_setNumLayers_(v18, v19, a4, v20, v21);
  *&v22 = var0;
  *&v23 = var1;
  objc_msgSend_setDepthRange_(v18, v24, v25, v26, v27, v22, v23);
  v31 = objc_msgSend_valueForKey_(v13, v28, @"layer_ranges_overlap", v29, v30);
  LODWORD(v32) = 1028443341;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v33, v31, v34, v35, v32);
  objc_msgSend_setLayerOverlap_(v18, v36, v37, v38, v39);

  v43 = objc_msgSend_valueForKey_(v13, v40, @"vertical_fov", v41, v42);
  LODWORD(v44) = 1070141403;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v45, v43, v46, v47, v44);
  objc_msgSend_setFovInRadians_(v18, v48, v49, v50, v51);

  v55 = objc_msgSend_valueForKey_(v13, v52, @"effective_vertical_fov", v53, v54);
  objc_msgSend_fovInRadians(v18, v56, v57, v58, v59);
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v60, v55, v61, v62);
  objc_msgSend_setEffectiveFovInRadians_(v18, v63, v64, v65, v66);

  v70 = objc_msgSend_valueForKey_(v13, v67, @"effective_aspect_ratio", v68, v69);
  LODWORD(v71) = 2143289344;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v72, v70, v73, v74, v71);
  objc_msgSend_setEffectiveAspectRatio_(v18, v75, v76, v77, v78);

  v82 = objc_msgSend_valueForKey_(v13, v79, @"input_color_primaries", v80, v81);
  v85 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v83, v82, @"color_primaries_p3", v84);
  objc_msgSend_setInputColorPrimaries_(v18, v86, v85, v87, v88);

  v93 = objc_msgSend_inputColorPrimaries(v18, v89, v90, v91, v92);
  if (objc_msgSend_isEqualToString_(v93, v94, @"color_primaries_p3", v95, v96))
  {
    goto LABEL_5;
  }

  v101 = objc_msgSend_inputColorPrimaries(v18, v97, v98, v99, v100);
  if (objc_msgSend_isEqualToString_(v101, v102, @"color_primaries_srgb", v103, v104))
  {

LABEL_5:
    goto LABEL_6;
  }

  v239 = objc_msgSend_inputColorPrimaries(v18, v105, v106, v107, v108);
  isEqualToString = objc_msgSend_isEqualToString_(v239, v240, @"color_primaries_p3", v241, v242);

  if ((isEqualToString & 1) == 0)
  {
    v93 = _mxi_log();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v248 = objc_msgSend_inputColorPrimaries(v18, v244, v245, v246, v247);
      LODWORD(__src[0]) = 138412290;
      *(__src + 4) = v248;
      _os_log_impl(&dword_22F9C3000, v93, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:490] Unknown color primaries specified %@", __src, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_6:
  v112 = objc_msgSend_valueForKey_(v13, v109, @"output_color_primaries", v110, v111);
  v117 = objc_msgSend_inputColorPrimaries(v18, v113, v114, v115, v116);
  v120 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v118, v112, v117, v119);
  objc_msgSend_setOutputColorPrimaries_(v18, v121, v120, v122, v123);

  v128 = objc_msgSend_outputColorPrimaries(v18, v124, v125, v126, v127);
  if (objc_msgSend_isEqualToString_(v128, v129, @"color_primaries_p3", v130, v131))
  {
LABEL_9:

    goto LABEL_10;
  }

  v136 = objc_msgSend_outputColorPrimaries(v18, v132, v133, v134, v135);
  if (objc_msgSend_isEqualToString_(v136, v137, @"color_primaries_srgb", v138, v139))
  {

    goto LABEL_9;
  }

  v249 = objc_msgSend_inputColorPrimaries(v18, v140, v141, v142, v143);
  v253 = objc_msgSend_isEqualToString_(v249, v250, @"color_primaries_p3", v251, v252);

  if ((v253 & 1) == 0)
  {
    v128 = _mxi_log();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      v258 = objc_msgSend_outputColorPrimaries(v18, v254, v255, v256, v257);
      LODWORD(__src[0]) = 138412290;
      *(__src + 4) = v258;
      _os_log_impl(&dword_22F9C3000, v128, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:495] Unknown color primaries specified %@", __src, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:
  LODWORD(v148) = 1.0;
  objc_msgSend_setAspectRatio_(v18, v144, v145, v146, v147, v148);
  v152 = objc_msgSend_valueForKey_(v13, v149, @"premultiplied_alpha_input", v150, v151);
  v155 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v153, v152, 1, v154);
  objc_msgSend_setPremultipliedAlphaInput_(v18, v156, v155, v157, v158);

  v162 = objc_msgSend_valueForKey_(v13, v159, @"premultiplied_alpha_output", v160, v161);
  v165 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v163, v162, 0, v164);
  objc_msgSend_setPremultipliedAlphaOutput_(v18, v166, v165, v167, v168);

  v172 = objc_msgSend_valueForKey_(v13, v169, @"infill", v170, v171);
  v175 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v173, v172, 1, v174);
  objc_msgSend_setInfill_(v18, v176, v175, v177, v178);

  v182 = objc_msgSend_valueForKey_(v13, v179, @"srgb_blending", v180, v181);
  v185 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v183, v182, 0, v184);
  objc_msgSend_setSrgbBlending_(v18, v186, v185, v187, v188);

  v192 = objc_msgSend_valueForKey_(v13, v189, @"mip_levels_count", v190, v191);
  v195 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v193, v192, 2, v194);
  if (v195 >= 4)
  {
    v199 = 4;
  }

  else
  {
    v199 = v195;
  }

  if (v195)
  {
    objc_msgSend_setMipLevelsCount_(v18, v196, v199, v197, v198);
  }

  else
  {
    objc_msgSend_setMipLevelsCount_(v18, v196, 1, v197, v198);
  }

  v328 = objc_msgSend_valueForKey_(v13, v200, @"override_layer_depths", v201, v202);
  if (v328)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_count(v328, v205, v206, v207, v208) == v18->_numLayers)
      {
        __src[0] = 0;
        __src[1] = 0;
        v337 = 0;
        v212 = v328;
        LODWORD(numLayers) = v18->_numLayers;
        if (numLayers)
        {
          v214 = 0;
          v327 = a3;
          while (1)
          {
            v219 = objc_msgSend_objectAtIndex_(v212, v209, v214, v210, v211);
            if (!v219)
            {
              break;
            }

            v220 = objc_msgSend_null(MEMORY[0x277CBEB68], v215, v216, v217, v218);
            v221 = v220;
            if (v219 == v220)
            {

              break;
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              break;
            }

            objc_msgSend_floatValue(v219, v223, v224, v225, v226);
            v228 = __src[1];
            if (__src[1] >= v337)
            {
              v230 = __src[0];
              v231 = __src[1] - __src[0];
              v232 = (__src[1] - __src[0]) >> 2;
              v233 = v232 + 1;
              if ((v232 + 1) >> 62)
              {
                sub_22F9C7AD4();
              }

              v234 = v337 - __src[0];
              if ((v337 - __src[0]) >> 1 > v233)
              {
                v233 = v234 >> 1;
              }

              v235 = v234 >= 0x7FFFFFFFFFFFFFFCLL;
              v236 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v235)
              {
                v236 = v233;
              }

              if (v236)
              {
                sub_22F9C7B7C(__src, v236);
              }

              *(4 * v232) = v227;
              v229 = (4 * v232 + 4);
              memcpy(0, v230, v231);
              v237 = __src[0];
              __src[0] = 0;
              __src[1] = v229;
              v337 = 0;
              if (v237)
              {
                operator delete(v237);
              }

              a3 = v327;
            }

            else
            {
              *__src[1] = v227;
              v229 = v228 + 4;
            }

            __src[1] = v229;

            ++v214;
            numLayers = v18->_numLayers;
            if (v214 >= numLayers)
            {
              goto LABEL_54;
            }
          }

          v265 = _mxi_log();
          if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v335 = v214;
            _os_log_impl(&dword_22F9C3000, v265, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:518] Failed parsing depth for layer %u", buf, 8u);
          }

          LODWORD(numLayers) = v18->_numLayers;
        }

LABEL_54:
        v266 = *__src;
        if (numLayers == (__src[1] - __src[0]) >> 2)
        {
          begin = v18->_layerDepths.__begin_;
          if (begin)
          {
            v18->_layerDepths.__end_ = begin;
            operator delete(begin);
            v18->_layerDepths.__begin_ = 0;
            v18->_layerDepths.__end_ = 0;
            v18->_layerDepths.__cap_ = 0;
            v266 = *__src;
          }

          *&v18->_layerDepths.__begin_ = v266;
          v18->_layerDepths.__cap_ = v337;
          __src[0] = 0;
          __src[1] = 0;
          v337 = 0;
        }

        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        goto LABEL_60;
      }

      v238 = _mxi_log();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
      {
        v263 = objc_msgSend_count(v328, v259, v260, v261, v262);
        v264 = v18->_numLayers;
        LODWORD(__src[0]) = 67109376;
        HIDWORD(__src[0]) = v263;
        LOWORD(__src[1]) = 1024;
        *(&__src[1] + 2) = v264;
        _os_log_impl(&dword_22F9C3000, v238, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:511] Layer depths array size (%u) shold match number of layers (%u)", __src, 0xEu);
      }
    }

    else
    {
      v238 = _mxi_log();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__src[0]) = 0;
        _os_log_impl(&dword_22F9C3000, v238, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:509] Layer depths should be overridden with NSArray<NSNumber*>, but the value is not NSArray", __src, 2u);
      }
    }
  }

LABEL_60:
  v268 = v18->_numLayers;
  v269 = v18->_layerDepths.__end_ - v18->_layerDepths.__begin_ == v268;
  v18->_overriddenLayerDepths = v269;
  if (!v269)
  {
    sub_22F9C7754(&v18->_layerDepths.__begin_, v268);
    v270 = v18->_numLayers;
    if (v270)
    {
      v271 = 0;
      v272 = v270;
      v273 = v18->_layerDepths.__begin_;
      do
      {
        v274 = v271;
        from = v18->_depthRange.from;
        to = v18->_depthRange.to;
        if (v272 < v271)
        {
          v274 = v270;
        }

        v277 = 1.0 / ((1.0 / from) + ((v274 * ((1.0 / to) - (1.0 / from))) / v272));
        if (to >= v277)
        {
          to = v277;
        }

        if (v277 >= from)
        {
          v278 = to;
        }

        else
        {
          v278 = v18->_depthRange.from;
        }

        v273[v271++] = v278;
      }

      while (v270 != v271);
    }
  }

  objc_msgSend_setMaterialDescriptor_(v18, v268, v329, v203, v204);
  v282 = objc_msgSend_valueForKey_(v13, v279, @"debug_recording", v280, v281);
  v285 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v283, v282, 0, v284);

  if (v285)
  {
    v289 = _mxi_log();
    if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__src[0]) = 138412290;
      *(__src + 4) = v285;
      _os_log_impl(&dword_22F9C3000, v289, OS_LOG_TYPE_DEFAULT, "[MXI.framework] Recording at path: %@", __src, 0xCu);
    }

    v293 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v290, v285, v291, v292);
    if (v293)
    {
      v294 = [MXIRecording alloc];
      v295 = MTLCreateSystemDefaultDevice();
      v298 = objc_msgSend_initWithURL_device_(v294, v296, v293, v295, v297);
      recording = v18->_recording;
      v18->_recording = v298;
    }
  }

  v300 = v18->_recording;
  if (v300)
  {
    v301 = a4;
    v332[0] = @"type";
    v302 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v286, a3, v287, v288);
    v333[0] = v302;
    v332[1] = @"layers";
    v306 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v303, v301, v304, v305);
    v333[1] = v306;
    v332[2] = @"range";
    *&v307 = var0;
    v312 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v308, v309, v310, v311, v307);
    v331[0] = v312;
    *&v313 = var1;
    v318 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v314, v315, v316, v317, v313);
    v331[1] = v318;
    v321 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v319, v331, 2, v320);
    v332[3] = @"options";
    v333[2] = v321;
    v333[3] = v13;
    v323 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v322, v333, v332, 4);
    objc_msgSend_captureCommand_withArgs_(v300, v324, @"init_builder", v323, v325);
  }

LABEL_80:
  return v18;
}

- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 normal:(id)a8 extended:(id)a9 error:(id *)a10
{
  v65 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = _mxi_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v62 = a4;
    v63 = 2048;
    v64 = a5;
    _os_log_impl(&dword_22F9C3000, v18, OS_LOG_TYPE_DEBUG, "[MXI.framework] [MXISceneBuilder] Processing layer %ld for face %ld with color with depth, normal and extended textures", buf, 0x16u);
  }

  v23 = objc_msgSend_width(v16, v19, v20, v21, v22);
  *&v28 = v23 / objc_msgSend_height(v16, v24, v25, v26, v27);
  objc_msgSend_setAspectRatio_(self, v29, v30, v31, v32, v28);
  recording = self->_recording;
  if (recording)
  {
    v38 = objc_msgSend_captureTexture_commandBuffer_(recording, v33, v16, v15, v34);
    if (v38)
    {
      v42 = objc_msgSend_captureTexture_commandBuffer_(self->_recording, v36, v17, v15, v37);
      if (v42)
      {
        v43 = self->_recording;
        v44 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, a4, v40, v41, @"index");
        v60[0] = v44;
        v59[1] = @"face";
        v48 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v45, a5, v46, v47);
        v60[1] = v48;
        v60[2] = v38;
        v59[2] = @"color";
        v59[3] = @"normal";
        v60[3] = v42;
        v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, v60, v59, 4);
        objc_msgSend_captureCommand_withArgs_(v43, v51, @"process_layer", v50, v52);
      }

      else
      {
        v56 = _mxi_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v56, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:576] Could not capture normal texture", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v57, a10, @"Could not capture normal texture", v58);
      }
    }

    else
    {
      v53 = _mxi_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v53, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderBase.mm:571] Could not capture color texture", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v54, a10, @"Could not capture color texture", v55);
    }
  }
}

@end