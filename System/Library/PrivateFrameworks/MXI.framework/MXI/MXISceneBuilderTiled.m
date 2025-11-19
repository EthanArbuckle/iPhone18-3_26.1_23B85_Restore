@interface MXISceneBuilderTiled
- (BOOL)generateBackingPlaneTexture:(id)a3 forScene:(id)a4 error:(id *)a5;
- (id)buildSceneWithOptions:(id)a3 error:(id *)a4;
- (id)initBuilderWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7;
- (void)generateBackingPlaneMesh:(void *)a3 atDepth:(float)a4;
- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 params:(id)a8 error:(id *)a9;
@end

@implementation MXISceneBuilderTiled

- (id)initBuilderWithType:(int64_t)a3 numberOfLayers:(int64_t)a4 depthRange:(id)a5 materialDescriptor:(id)a6 options:(id)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v228 = *MEMORY[0x277D85DE8];
  v210 = a6;
  v11 = a7;
  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v207 = objc_msgSend_initWithSuiteName_(v12, v13, @"com.apple.mxi", v14, v15);
  self->_requestHighCompatibilityUSD = objc_msgSend_BOOLForKey_(v207, v16, @"RequestHighCompatibilityUSD", v17, v18);
  v212.receiver = self;
  v212.super_class = MXISceneBuilderTiled;
  *&v19 = var0;
  *&v20 = var1;
  v21 = [(MXISceneBuilder *)&v212 initBuilderWithType:a3 numberOfLayers:a4 depthRange:v210 materialDescriptor:v11 options:v19, v20];
  if (v21)
  {
    v22 = MTLCreateSystemDefaultDevice();
    v23 = *(v21 + 17);
    *(v21 + 17) = v22;

    if (*(v21 + 17))
    {
      v27 = objc_msgSend_valueForKey_(v11, v24, @"tile_size", v25, v26);
      *(v21 + 39) = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v28, v27, 64, v29);

      v33 = *(v21 + 39);
      if (v33 < 0x20)
      {
        v199 = "_tileSize >= 32";
        v200 = 68;
      }

      else
      {
        if ((v33 & (v33 - 1)) == 0)
        {
          v34 = objc_msgSend_valueForKey_(v11, v30, @"thread_pool_size", v31, v32);
          *(v21 + 38) = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v35, v34, 1, v36);

          v40 = objc_msgSend_valueForKey_(v11, v37, @"atlas_slice_count", v38, v39);
          v205 = objc_msgSend_parseInt_defaultValue_(MXIUtilities, v41, v40, 0, v42);

          v46 = objc_msgSend_valueForKey_(v11, v43, @"pack_in_compressed_atlas", v44, v45);
          v204 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v47, v46, 0, v48);

          v52 = objc_msgSend_valueForKey_(v11, v49, @"atlas_slice_size", v50, v51);
          *(v21 + 40) = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v53, v52, 4096, v54);

          v58 = *(v21 + 40);
          v59 = v58 - 1;
          if (v58 > 0x2000)
          {
            v59 = 0x1FFF;
          }

          if (v58 <= 0x1FF)
          {
            v60 = 511;
          }

          else
          {
            v60 = v59;
          }

          v61 = v60 | (v60 >> 1) | ((v60 | (v60 >> 1)) >> 2);
          v62 = v61 | (v61 >> 4) | ((v61 | (v61 >> 4)) >> 8);
          *(v21 + 40) = (v62 | HIWORD(v62)) + 1;
          v63 = objc_msgSend_valueForKey_(v11, v55, @"astc_quality", v56, v57);
          v206 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v64, v63, @"astc_thorough", v65);

          v69 = objc_msgSend_valueForKey_(v11, v66, @"fail_on_binary_archive_miss", v67, v68);
          v203 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v70, v69, 0, v71);

          v75 = objc_msgSend_valueForKey_(v11, v72, @"separate_opaque_geometry", v73, v74);
          v202 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v76, v75, 0, v77);

          v81 = objc_msgSend_valueForKey_(v11, v78, @"allow_diagonal_flip", v79, v80);
          v201 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v82, v81, 0, v83);

          v87 = objc_msgSend_valueForKey_(v11, v84, @"min_opacity_tolerance", v85, v86);
          objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v88, v87, v89, v90, 0.0);
          v92 = v91;

          v96 = objc_msgSend_valueForKey_(v11, v93, @"max_opacity_tolerance", v94, v95);
          LODWORD(v97) = 1.0;
          objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v98, v96, v99, v100, v97);
          v102 = v101;

          v106 = objc_msgSend_valueForKey_(v11, v103, @"pack_in_array_of_textures", v104, v105);
          v21[165] = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v107, v106, 1, v108);

          v112 = objc_msgSend_valueForKey_(v11, v109, @"include_backing_plane", v110, v111);
          v21[166] = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v113, v112, 0, v114);

          v121 = 0.1;
          if (objc_msgSend_isEqualToString_(v206, v115, @"astc_fast", v116, v117))
          {
            v122 = 1;
          }

          else if (objc_msgSend_isEqualToString_(v206, v118, @"astc_thorough", v119, v120))
          {
            v122 = 3;
          }

          else
          {
            v121 = 1.0;
            if ((objc_msgSend_isEqualToString_(v206, v118, @"astc_exhaustive", v119, v120) & 1) == 0)
            {
              v124 = _mxi_log();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v214 = v206;
                _os_log_impl(&dword_22F9C3000, v124, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:104] Cannot recognize ASTC quality option %@", buf, 0xCu);
              }
            }

            v122 = 5;
          }

          v125 = objc_msgSend_valueForKey_(v11, v118, @"astc_gpu_rank_modes_count_ratio", v119, v120);
          *&v126 = v121;
          objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v127, v125, v128, v129, v126);
          v131 = v130;

          v135 = objc_msgSend_valueForKey_(v11, v132, @"astc_gpu_fast_skip_threshold", v133, v134);
          v138 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v136, v135, v122, v137);

          v143 = objc_msgSend_inputColorPrimaries(v21, v139, v140, v141, v142);
          if (objc_msgSend_isEqualToString_(v143, v144, @"color_primaries_srgb", v145, v146))
          {
            v151 = objc_msgSend_outputColorPrimaries(v21, v147, v148, v149, v150);
            isEqualToString = objc_msgSend_isEqualToString_(v151, v152, @"color_primaries_p3", v153, v154);
          }

          else
          {
            isEqualToString = 0;
          }

          v160 = objc_msgSend_inputColorPrimaries(v21, v156, v157, v158, v159);
          if (objc_msgSend_isEqualToString_(v160, v161, @"color_primaries_p3", v162, v163))
          {
            v168 = objc_msgSend_outputColorPrimaries(v21, v164, v165, v166, v167);
            v172 = objc_msgSend_isEqualToString_(v168, v169, @"color_primaries_srgb", v170, v171);
          }

          else
          {
            v172 = 0;
          }

          v215 = 1;
          v218 = 1065353216;
          v220 = 0x3F80000000000000;
          memset(v227, 0, 7);
          if (v21[164])
          {
            v177 = 0x2000;
          }

          else
          {
            v177 = *(v21 + 40);
          }

          *buf = v177;
          LODWORD(v214) = *(v21 + 39);
          HIDWORD(v214) = objc_msgSend_mipLevelsCount(v21, v173, v174, v175, v176);
          v216 = v205;
          v217 = v138;
          v219 = v131;
          v223 = objc_msgSend_premultipliedAlphaInput(v21, v178, v179, v180, v181);
          v224 = objc_msgSend_premultipliedAlphaOutput(v21, v182, v183, v184, v185);
          v225 = objc_msgSend_infill(v21, v186, v187, v188, v189);
          if (isEqualToString)
          {
            v222 = 0x3B492CA2245FLL;
            v194 = &xmmword_22FA07E70;
          }

          else
          {
            if (!v172)
            {
              v195 = 0;
              v222 = 0x3C0000000000;
              v221 = xmmword_22FA07EA0;
LABEL_37:
              v226 = v195;
              LOBYTE(v227[0]) = objc_msgSend_srgbBlending(v21, v190, v191, v192, v193);
              BYTE1(v227[0]) = v204;
              v215 = *(v21 + 38);
              BYTE2(v227[0]) = v203;
              HIBYTE(v227[0]) = v202;
              LOBYTE(v227[1]) = v201;
              v220 = __PAIR64__(v102, v92);
              *(&v227[1] + 1) = *(v21 + 165);
              v196 = *(v21 + 17);
              v211 = 0;
              tiled::Processor::Create(v196, a3, a4, buf, &v211);
            }

            v222 = 0x3C65AD08A506;
            v194 = &xmmword_22FA07E88;
          }

          v221 = *v194;
          v195 = 1;
          goto LABEL_37;
        }

        v199 = "(_tileSize & (_tileSize - 1)) == 0";
        v200 = 69;
      }

      __assert_rtn("[MXISceneBuilderTiled initBuilderWithType:numberOfLayers:depthRange:materialDescriptor:options:]", "MXISceneBuilderTiled.mm", v200, v199);
    }

    v123 = _mxi_log();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v123, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:63] TiledProcessor cannot move forward with nil MTLDevice", buf, 2u);
    }

    v197 = 0;
  }

  else
  {
    v197 = 0;
  }

  return v197;
}

- (void)process:(id)a3 layer:(int64_t)a4 face:(int64_t)a5 color:(id)a6 depth:(id)a7 params:(id)a8 error:(id *)a9
{
  *(&v95[1] + 7) = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = _MXISignpostLogSystem();
  v20 = _MXISignpostCreate(v19);
  v21 = v19;
  v22 = v21;
  spid = v20;
  v23 = v20 - 1;
  if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 134217984;
    *&buf[4] = a4;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_PROCESS_LAYER", "layer_index %ld", buf, 0xCu);
  }

  v90.receiver = self;
  v90.super_class = MXISceneBuilderTiled;
  [(MXISceneBuilder *)&v90 process:v15 layer:a4 face:a5 color:v16 depth:v17 params:v18 error:a9];
  v28 = objc_msgSend_width(v16, v24, v25, v26, v27);
  *&v33 = v28 / objc_msgSend_height(v16, v29, v30, v31, v32);
  objc_msgSend_setAspectRatio_(self, v34, v35, v36, v37, v33);
  v42 = objc_msgSend_width(v16, v38, v39, v40, v41);
  objc_msgSend_setResolutionWidth_(self, v43, v42, v44, v45);
  v50 = objc_msgSend_height(v16, v46, v47, v48, v49);
  objc_msgSend_setResolutionHeight_(self, v51, v50, v52, v53);
  objc_msgSend_getLayerDepth_(self, v54, a4, v55, v56);
  v62 = v61;
  if (v18)
  {
    objc_msgSend_projection(v18, v57, v58, v59, v60);
    v87 = v64;
    v88 = v63;
    v85 = v66;
    v86 = v65;
    v71 = objc_msgSend_linearDepth(v18, v67, v68, v69, v70);
    v73 = v87;
    v72 = v88;
    v75 = v85;
    v74 = v86;
  }

  else
  {
    v72 = *MEMORY[0x277D860B8];
    v73 = *(MEMORY[0x277D860B8] + 16);
    v74 = *(MEMORY[0x277D860B8] + 32);
    v75 = *(MEMORY[0x277D860B8] + 48);
    v71 = 1;
  }

  ptr = self->_proc.__ptr_;
  *buf = v72;
  *&buf[16] = v73;
  v92 = v74;
  v93 = v75;
  v94 = v71;
  v95[0] = 0;
  *(v95 + 7) = 0;
  objc_msgSend_fovInRadians(self, v57, v58, v59, v60);
  v79 = tiled::Processor::AddLayer(ptr, v15, a4, a5, v16, v17, buf, v62, v77);
  if (self->_backingPlane)
  {
    objc_msgSend_processWthCommandBuffer_colorTexture_depthTexture_(self->_backLayer, v78, v15, v16, v17);
  }

  if (v79)
  {
    v80 = _MXISignpostLogSystem();
    v81 = v80;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v81, OS_SIGNPOST_INTERVAL_END, spid, "MXI_PROCESS_LAYER", &unk_22FA1C169, buf, 2u);
    }
  }

  else
  {
    v82 = _mxi_log();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      _os_log_impl(&dword_22F9C3000, v82, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:229] Could not add layer (%ld), face (%ld)", buf, 0x16u);
    }

    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v83, a9, @"Could not add layer (%ld), face (%ld)", v84, a4, a5);
  }
}

- (id)buildSceneWithOptions:(id)a3 error:(id *)a4
{
  v266 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v263.receiver = self;
  v263.super_class = MXISceneBuilderTiled;
  v7 = [(MXISceneBuilder *)&v263 buildSceneWithOptions:v6 error:a4];
  v254 = CFPreferencesCopyMultiple(0, @"com.apple.mxi", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (!v254)
  {
    v254 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  if (v6)
  {
    v12 = objc_msgSend_mutableCopy(v6, v8, v9, v10, v11);
    objc_msgSend_addEntriesFromDictionary_(v12, v13, v254, v14, v15);
  }

  else
  {
    v12 = v254;
  }

  tiled::Processor::GetMesh(self->_proc.__ptr_, a4, &v257);
  if (a4 && *a4)
  {
    v19 = 0;
    goto LABEL_82;
  }

  v20 = objc_msgSend_valueForKey_(v12, v16, @"compress_using_gpu", v17, v18);
  v23 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v21, v20, 0, v22);

  v27 = objc_msgSend_valueForKey_(v12, v24, @"texture_compression_quality", v25, v26);
  LODWORD(v28) = 0.5;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v29, v27, v30, v31, v28);
  v33 = v32;

  v37 = objc_msgSend_valueForKey_(v12, v34, @"astc_gpu_rank_modes_count_ratio", v35, v36);
  LODWORD(v38) = 1.0;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v39, v37, v40, v41, v38);
  v43 = v42;

  if (v23)
  {
    v33 = v43;
  }

  v47 = objc_msgSend_valueForKey_(v12, v44, @"skip_texture_compression", v45, v46);
  v50 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v48, v47, self->_requestHighCompatibilityUSD, v49);

  v54 = objc_msgSend_valueForKey_(v12, v51, @"astc_block_size", v52, v53);
  v57 = objc_msgSend_parseUInt_defaultValue_(MXIUtilities, v55, v54, 68, v56);

  v256 = 0;
  if (self->_packInArrayOfTextures)
  {
    memset(v265, 0, sizeof(v265));
    if (tiled::Processor::GetAtlas(self->_proc.__ptr_, v265, v50, v23, v57, a4, v33))
    {
      v252 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, *v265, (*&v265[8] - *v265) >> 3, v59);
      *buf = v265;
      sub_22F9DC140(buf);
      v253 = 0;
      if (!a4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v67 = _mxi_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v67, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:270] Could not create the atlas", buf, 2u);
    }

    *buf = v265;
    sub_22F9DC140(buf);
    v253 = 0;
  }

  else
  {
    ptr = self->_proc.__ptr_;
    v255 = 0;
    Atlas = tiled::Processor::GetAtlas(ptr, &v255, &v256, v50, v23, v57, a4, v33);
    v253 = v255;
    if (Atlas)
    {
      v252 = MEMORY[0x277CBEBF8];
      if (!a4)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (*a4)
      {
LABEL_33:
        v19 = 0;
LABEL_80:
        v69 = v252;
        goto LABEL_81;
      }

LABEL_18:
      if (self->_packInArrayOfTextures)
      {
        v66 = objc_msgSend_count(v252, v60, v61, v62, v63);
      }

      else
      {
        v66 = objc_msgSend_arrayLength(v253, v60, v61, v62, v63);
      }

      v70 = v66;
      v71 = _MXISignpostLogSystem();
      v72 = _MXISignpostCreate(v71);
      v73 = v265;
      v74 = v71;
      v75 = v74;
      if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
      {
        v80 = objc_msgSend_resolutionWidth(self, v76, v77, v78, v79);
        v85 = objc_msgSend_resolutionHeight(self, v81, v82, v83, v84);
        *v265 = 67109632;
        *&v265[4] = v70;
        *&v265[8] = 1024;
        *&v265[10] = v80;
        *&v265[14] = 1024;
        *&v265[16] = v85;
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v75, OS_SIGNPOST_EVENT, v72, "MXI_ATLAS_DATA", "Number of slices: %u\nResolution: %u x %u", v265, 0x14u);
      }

      if (v70 >= 0x21)
      {
        objc_msgSend_fillError_withFormattedDescription_(MXIError, v86, a4, @"Atlas slice count (%d) exceeds the limit of 32. You can try to set MXISceneBuilderConfigurationAtlasSliceSize option to use fewer, larger slices.", v88, v70);
        goto LABEL_33;
      }

      if (self->_backingPlane)
      {
        v90 = 4;
      }

      else
      {
        v90 = 0;
      }

      v91 = (v258 - v257) >> 4;
      if (v91 <= v90)
      {
        v93 = 0.0;
        v94 = 3.4028e38;
        if (!self->_backingPlane)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v92 = v90 + 1;
        v93 = 0.0;
        v94 = 3.4028e38;
        do
        {
          v89 = *(v257 + v90);
          v95 = vabs_f32(*&v89);
          if (v95.f32[0] < v95.f32[1])
          {
            v95.f32[0] = v95.f32[1];
          }

          v96 = fabsf(*(&v89 + 2));
          if (v95.f32[0] >= v96)
          {
            v96 = v95.f32[0];
          }

          if (v96 < v94)
          {
            v94 = v96;
          }

          if (v96 >= v93)
          {
            v93 = v96;
          }

          v90 = v92;
        }

        while (v91 > v92++);
        if (!self->_backingPlane)
        {
LABEL_52:
          v98 = objc_msgSend_objectForKeyedSubscript_(v12, v86, @"environment_map_filename", v87, v88);
          v101 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v99, v98, 0, v100);

          v102 = [MXIScene alloc];
          v104 = objc_msgSend_initWithPosition_uvs_triangles_slices_colorTextures_colorTexture_colorTextureSlices_normalTexture_pbrTextures_pbrMaterialDescriptor_iblFileName_(v102, v103, &v257, v259, v260, __p, v252, v253, v256, 0, 0, 0, v101);
          v109 = objc_msgSend_type(self, v105, v106, v107, v108);
          objc_msgSend_setType_(v104, v110, v109, v111, v112);
          objc_msgSend_fovInRadians(self, v113, v114, v115, v116);
          objc_msgSend_setVerticalFOV_(v104, v117, v118, v119, v120);
          objc_msgSend_effectiveFovInRadians(self, v121, v122, v123, v124);
          objc_msgSend_setEffectiveVerticalFOV_(v104, v125, v126, v127, v128);
          objc_msgSend_aspectRatio(self, v129, v130, v131, v132);
          objc_msgSend_setAspectRatio_(v104, v133, v134, v135, v136);
          objc_msgSend_effectiveAspectRatio(self, v137, v138, v139, v140);
          objc_msgSend_effectiveAspectRatio(self, v141, v142, v143, v144);
          objc_msgSend_setEffectiveAspectRatio_(v104, v145, v146, v147, v148);
          *&v149 = v94;
          *&v150 = v93;
          objc_msgSend_setDepthRange_(v104, v151, v152, v153, v154, v149, v150);
          v159 = objc_msgSend_outputColorPrimaries(self, v155, v156, v157, v158);
          isEqualToString = objc_msgSend_isEqualToString_(v159, v160, @"color_primaries_p3", v161, v162);

          if (isEqualToString)
          {
            objc_msgSend_setColorPrimaries_(v104, v164, 0, v166, v167);
          }

          else
          {
            v172 = objc_msgSend_outputColorPrimaries(self, v164, v165, v166, v167);
            v176 = objc_msgSend_isEqualToString_(v172, v173, @"color_primaries_srgb", v174, v175);

            objc_msgSend_setColorPrimaries_(v104, v177, v176, v178, v179);
          }

          v180 = objc_msgSend_premultipliedAlphaOutput(self, v168, v169, v170, v171);
          objc_msgSend_setIsPremultipliedAlpha_(v104, v181, v180, v182, v183);
          v188 = objc_msgSend_resolutionWidth(self, v184, v185, v186, v187);
          objc_msgSend_setResolutionWidth_(v104, v189, v188, v190, v191);
          v196 = objc_msgSend_resolutionHeight(self, v192, v193, v194, v195);
          objc_msgSend_setResolutionHeight_(v104, v197, v196, v198, v199);
          v204 = objc_msgSend_numLayers(self, v200, v201, v202, v203);
          objc_msgSend_setNumLayers_(v104, v205, v204, v206, v207);
          objc_msgSend_setNumOpaqueTriangles_(v104, v208, v262, v209, v210);
          v215 = objc_msgSend_attributes(self, v211, v212, v213, v214);
          objc_msgSend_setAttributes_(v104, v216, v215, v217, v218);

          if (self->_backingPlane && (objc_msgSend_generateBackingPlaneTexture_forScene_error_(self, v219, self->_device, v104, a4) & 1) == 0)
          {
            v230 = _mxi_log();
            if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
            {
              *v265 = 0;
              _os_log_impl(&dword_22F9C3000, v230, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:351] Failed generating backing plane", v265, 2u);
            }

            v19 = 0;
            goto LABEL_79;
          }

          v220 = _mxi_log();
          if (!os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
          {
LABEL_78:

            v19 = v104;
LABEL_79:

            goto LABEL_80;
          }

          if (self->_packInArrayOfTextures)
          {
            v225 = objc_msgSend_count(v252, v221, v222, v223, v224);
          }

          else
          {
            v225 = objc_msgSend_arrayLength(v253, v221, v222, v223, v224);
          }

          v231 = v225;
          if (self->_packInArrayOfTextures)
          {
            if (objc_msgSend_count(v252, v226, v227, v228, v229))
            {
              v73 = objc_msgSend_objectAtIndexedSubscript_(v252, v232, 0, v234, v235);
              v240 = objc_msgSend_width(v73, v236, v237, v238, v239);
              v241 = 1;
            }

            else
            {
              v241 = 0;
              v240 = 0;
            }
          }

          else
          {
            v240 = objc_msgSend_width(v253, v226, v227, v228, v229);
            v241 = 0;
          }

          if (self->_packInArrayOfTextures)
          {
            v242 = objc_msgSend_count(v252, v232, v233, v234, v235);
            if (v242)
            {
              self = objc_msgSend_objectAtIndexedSubscript_(v252, v243, 0, v244, v245);
              LODWORD(v242) = objc_msgSend_height(self, v246, v247, v248, v249);
              v250 = 1;
LABEL_74:
              *v265 = 134218496;
              *&v265[4] = v231;
              *&v265[12] = 1024;
              *&v265[14] = v240;
              *&v265[18] = 1024;
              *&v265[20] = v242;
              _os_log_impl(&dword_22F9C3000, v220, OS_LOG_TYPE_DEFAULT, "[MXI.framework] [MXIScene] scene created with %lu slices, resolution %u x %u", v265, 0x18u);
              if (v250)
              {
              }

              if (v241)
              {
              }

              goto LABEL_78;
            }
          }

          else
          {
            LODWORD(v242) = objc_msgSend_height(v253, v232, v233, v234, v235);
          }

          v250 = 0;
          goto LABEL_74;
        }
      }

      *&v89 = v93 + 1.0;
      objc_msgSend_generateBackingPlaneMesh_atDepth_(self, v86, &v257, v87, v88, *&v89);
      goto LABEL_52;
    }

    v68 = _mxi_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *v265 = 0;
      _os_log_impl(&dword_22F9C3000, v68, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:276] Could not create the atlas", v265, 2u);
    }
  }

  v19 = 0;
  v69 = MEMORY[0x277CBEBF8];
LABEL_81:

LABEL_82:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v260[0])
  {
    v260[1] = v260[0];
    operator delete(v260[0]);
  }

  if (v259[0])
  {
    v259[1] = v259[0];
    operator delete(v259[0]);
  }

  if (v257)
  {
    v258 = v257;
    operator delete(v257);
  }

  return v19;
}

- (void)generateBackingPlaneMesh:(void *)a3 atDepth:(float)a4
{
  objc_msgSend_fovInRadians(self, a2, a3, v4, v5);
  v34 = tanf(v8 * 0.5);
  objc_msgSend_aspectRatio(self, v9, v10, v11, v12);
  v14 = v13 * v34;
  __asm { FMOV            V2.4S, #-1.0 }

  v20 = _Q2;
  v20.f32[0] = -(v13 * v34);
  v21 = v20;
  v21.f32[1] = v34;
  **a3 = vmulq_n_f32(v21, a4);
  v20.f32[1] = -v34;
  _Q2.f32[0] = v14;
  *(*a3 + 16) = vmulq_n_f32(v20, a4);
  v22 = _Q2;
  v22.f32[1] = v34;
  *(*a3 + 32) = vmulq_n_f32(v22, a4);
  _Q2.f32[1] = -v34;
  *(*a3 + 48) = vmulq_n_f32(_Q2, a4);
  v27 = vcvts_n_f32_s32(1 << (objc_msgSend_mipLevelsCount(self, v23, v24, v25, v26) - 1), 2uLL);
  atlasSize = self->_atlasSize;
  *v29.i32 = v27 / atlasSize;
  *v30.i32 = (self->_tileSize - v27) / atlasSize;
  v31 = vdup_lane_s32(v29, 0);
  v29.i32[1] = v30.i32[0];
  **(a3 + 3) = v31;
  *(*(a3 + 3) + 8) = v29;
  *(*(a3 + 3) + 16) = __PAIR64__(v29.u32[0], v30.u32[0]);
  *(*(a3 + 3) + 24) = vdup_lane_s32(v30, 0);
  v32 = *(a3 + 6);
  *v32 = 0x100000000;
  *(v32 + 8) = 2;
  v33 = *(a3 + 6);
  *(v33 + 12) = 0x100000002;
  *(v33 + 20) = 3;
  **(a3 + 9) = 0;
}

- (BOOL)generateBackingPlaneTexture:(id)a3 forScene:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_newCommandQueue(v7, v9, v10, v11, v12);
  v18 = objc_msgSend_commandBuffer(v13, v14, v15, v16, v17);
  objc_msgSend_createBackLayerWthCommandBuffer_(self->_backLayer, v19, v18, v20, v21);
  objc_msgSend_commitAndWaitUntilSubmitted(v18, v22, v23, v24, v25);
  objc_msgSend_waitUntilCompleted(v18, v26, v27, v28, v29);
  if (objc_msgSend_status(v18, v30, v31, v32, v33) == 4)
  {
    v38 = objc_msgSend_tileTexture(self->_backLayer, v34, v35, v36, v37);
    if (objc_msgSend_textureCompressionType(v8, v39, v40, v41, v42) == 1)
    {
      v47 = image::ToASTC(v38, 4, 4u, 5, 1.0);

      v38 = v47;
    }

    v52 = objc_msgSend_colorTexture(v8, v43, v44, v45, v46);
    if (v52 || (objc_msgSend_colorTextures(v8, v48, v49, v50, v51), v93 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend_count(v93, v94, v95, v96, v97), v93, v98) && (objc_msgSend_colorTextures(v8, v99, v100, v101, v102), v103 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndex_(v103, v104, 0, v105, v106), v52 = objc_claimAutoreleasedReturnValue(), v103, v52))
    {
      v53 = objc_msgSend_commandBuffer(v13, v48, v49, v50, v51);

      v62 = objc_msgSend_blitCommandEncoder(v53, v54, v55, v56, v57);
      for (i = 0; i < objc_msgSend_mipLevelsCount(self, v58, v59, v60, v61); ++i)
      {
        v68 = self->_tileSize >> i;
        *buf = 0;
        v112 = 0;
        v113 = 0;
        v110[0] = v68;
        v110[1] = v68;
        v110[2] = 1;
        memset(v109, 0, sizeof(v109));
        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v62, v64, v38, 0, i, buf, v110, v52, 0, i, v109);
      }

      objc_msgSend_endEncoding(v62, v64, v65, v66, v67);
      objc_msgSend_commitAndWaitUntilSubmitted(v53, v75, v76, v77, v78);
      objc_msgSend_waitUntilCompleted(v53, v79, v80, v81, v82);
      v87 = objc_msgSend_status(v53, v83, v84, v85, v86);
      v74 = v87 == 4;
      if (v87 != 4)
      {
        v88 = _mxi_log();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v88, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:436] MTLCommandBuffer failed", buf, 2u);
        }

        if (a5)
        {
          *a5 = objc_msgSend_error(v53, v89, v90, v91, v92);
        }
      }
    }

    else
    {
      v74 = 0;
      v53 = v18;
    }

    v18 = v53;
  }

  else
  {
    v69 = _mxi_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v69, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneBuilderTiled.mm:395] MTLCommandBuffer failed", buf, 2u);
    }

    if (a5)
    {
      objc_msgSend_error(v18, v70, v71, v72, v73);
      *a5 = v74 = 0;
    }

    else
    {
      v74 = 0;
    }
  }

  return v74;
}

@end