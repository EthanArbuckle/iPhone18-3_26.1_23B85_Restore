@interface MXIScene
+ (id)getThumbnailData:(id)a3;
- ($94F468A8D4C62B317260615823C2B210)depthRange;
- (BOOL)doWrite:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeHEIC:(const void *)a3 texture:(id)a4 key:(unsigned int)a5 quality:(float)a6 error:(id *)a7;
- (BOOL)writeHEICs:(const void *)a3 textures:(id)a4 key:(unsigned int)a5 quality:(float)a6 error:(id *)a7;
- (BOOL)writeToFile:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)writeToURL:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (BOOL)writeWithWriter:(const void *)a3 options:(id)a4 error:(id *)a5;
- (MXIScene)initWithNSData:(id)a3 forDevice:(id)a4 error:(id *)a5;
- (MXIScene)initWithPosition:(const void *)a3 uvs:(const void *)a4 triangles:(const void *)a5 slices:(const void *)a6 colorTextures:(id)a7 colorTexture:(id)a8 colorTextureSlices:(unsigned int)a9 normalTexture:(id)a10 pbrTextures:(id)a11 pbrMaterialDescriptor:(id)a12 iblFileName:(id)a13;
- (MXIScene)initWithReader:(void *)a3 device:(id)a4 error:(id *)a5;
- (MXIScene)initWithURL:(id)a3 error:(id *)a4;
- (MXIScene)initWithURL:(id)a3 forDevice:(id)a4 error:(id *)a5;
- (__CFString)cgColorSpaceName;
- (__n128)setModelToWorldTransform:(__n128)a3;
- (id)attribute:(id)a3;
- (id)createThumbnailWithError:(id *)a3;
- (id)readHEIC:(const void *)a3 key:(unsigned int)a4 device:(id)a5 error:(id *)a6;
- (id)readHEICs:(const void *)a3 key:(unsigned int)a4 device:(id)a5 error:(id *)a6;
- (id)serializeWithOptions:(id)a3 error:(id *)a4;
- (id)trimmedColorTexture;
- (int64_t)textureCompressionType;
@end

@implementation MXIScene

- (__CFString)cgColorSpaceName
{
  if (!objc_msgSend_colorPrimaries(self, a2, v2, v3, v4))
  {
    return *MEMORY[0x277CBF3E0];
  }

  if (objc_msgSend_colorPrimaries(self, v6, v7, v8, v9) == 1)
  {
    return *MEMORY[0x277CBF4B8];
  }

  return 0;
}

- (MXIScene)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MTLCreateSystemDefaultDevice();
  v9 = objc_msgSend_initWithURL_forDevice_error_(self, v8, v6, v7, a4);

  return v9;
}

- (MXIScene)initWithURL:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  __p[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v14 = v9;
  if (a5)
  {
    *a5 = 0;
  }

  if (v9)
  {
    v15 = objc_msgSend_pathExtension(v8, v10, v11, v12, v13);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"mxi", v17, v18);

    if (isEqualToString)
    {
      v20 = _MXISignpostLogSystem();
      v21 = _MXISignpostCreate(v20);
      v22 = _MXISignpostLogSystem();
      memset(v265, 0, sizeof(v265));
      core::get_info(v265);
      v23 = v22;
      v24 = v23;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 134218752;
        *&buf[4] = *v265;
        *&buf[12] = 2048;
        *&buf[14] = *&v265[8];
        v269 = 2048;
        v270 = *&v265[16];
        LOWORD(v271[0]) = 2048;
        *(v271 + 2) = *&v265[24];
        _os_signpost_emit_with_name_impl(&dword_22F9C3000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
      }

      v29 = objc_msgSend_path(v8, v25, v26, v27, v28);
      v30 = v29;
      v35 = objc_msgSend_UTF8String(v29, v31, v32, v33, v34);
      core::Reader::Create(v14, v35, a5, &v260);

      if (v260)
      {
        self = objc_msgSend_initWithReader_device_error_(self, v36, &v260, v14, a5);
        v40 = _MXISignpostLogSystem();
        memset(v265, 0, sizeof(v265));
        core::get_info(v265);
        v41 = v40;
        v42 = v41;
        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 134218752;
          *&buf[4] = *v265;
          *&buf[12] = 2048;
          *&buf[14] = *&v265[8];
          v269 = 2048;
          v270 = *&v265[16];
          LOWORD(v271[0]) = 2048;
          *(v271 + 2) = *&v265[24];
          _os_signpost_emit_with_name_impl(&dword_22F9C3000, v42, OS_SIGNPOST_INTERVAL_END, v21, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
        }

        v43 = self;
      }

      else
      {
        v42 = objc_msgSend_path(v8, v36, v37, v38, v39);
        objc_msgSend_fillError_withFormattedDescription_(MXIUserError, v84, a5, @"Unable to read from: %@", v85, v42);
        v43 = 0;
      }

      v86 = v260;
      *&v260 = 0;
      if (v86)
      {
        (*(*v86 + 8))(v86);
      }

      goto LABEL_87;
    }

    v47 = _MXISignpostLogSystem();
    v48 = _MXISignpostCreate(v47);
    v49 = _MXISignpostLogSystem();
    memset(v265, 0, sizeof(v265));
    core::get_info(v265);
    v50 = v49;
    v51 = v50;
    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 134218752;
      *&buf[4] = *v265;
      *&buf[12] = 2048;
      *&buf[14] = *&v265[8];
      v269 = 2048;
      v270 = *&v265[16];
      LOWORD(v271[0]) = 2048;
      *(v271 + 2) = *&v265[24];
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v48, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
    }

    v52 = [MXISceneUSDZReader alloc];
    v56 = objc_msgSend_initWithUSDZFileURL_(v52, v53, v8, v54, v55);
    v60 = v56;
    if (!v56)
    {
      v72 = _mxi_log();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v77 = objc_msgSend_path(v8, v73, v74, v75, v76);
        *buf = 138412290;
        *&buf[4] = v77;
        _os_log_impl(&dword_22F9C3000, v72, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:191] Unable to open usdz reader for file: %@", buf, 0xCu);
      }

      v64 = objc_msgSend_path(v8, v78, v79, v80, v81);
      objc_msgSend_fillError_withFormattedDescription_(MXIUserError, v82, a5, @"Unable to open usdz reader for file: %@", v83, v64);
      v43 = 0;
      goto LABEL_86;
    }

    v264 = 0;
    objc_msgSend_copyMXIGeometryWithError_(v56, v57, &v264, v58, v59);
    v61 = v264;
    if (v61)
    {
      v64 = v61;
      v65 = _mxi_log();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v70 = objc_msgSend_description(v64, v66, v67, v68, v69);
        *v265 = 138412290;
        *&v265[4] = v70;
        _os_log_impl(&dword_22F9C3000, v65, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:197] %@", v265, 0xCu);
      }

      if (a5)
      {
        v71 = v64;
        v43 = 0;
        *a5 = v64;
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_78;
    }

    if (v273 == v272)
    {
      v259 = 0;
    }

    else
    {
      v263 = 0;
      v259 = objc_msgSend_copyTexturesWithDevice_error_(v60, v62, v14, &v263, v63);
      v87 = v263;
      if (v87)
      {
        v64 = v87;
        v88 = _mxi_log();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v93 = objc_msgSend_description(v64, v89, v90, v91, v92);
          *v265 = 138412290;
          *&v265[4] = v93;
          _os_log_impl(&dword_22F9C3000, v88, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:205] %@", v265, 0xCu);
        }

        if (a5)
        {
          v94 = v64;
          v43 = 0;
          *a5 = v64;
        }

        else
        {
          v43 = 0;
        }

LABEL_77:

LABEL_78:
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v272)
        {
          v273 = v272;
          operator delete(v272);
        }

        if (v270)
        {
          v271[0] = v270;
          operator delete(v270);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

LABEL_86:

        goto LABEL_87;
      }
    }

    LODWORD(v95) = objc_msgSend_getIntValueForKey_default_(v60, v62, @"mxi_type", 1, v63);
    LODWORD(v96) = 1070141403;
    objc_msgSend_getFloatValueForKey_default_(v60, v97, @"vertical_fov", v98, v99, v96);
    v101 = v100;
    LODWORD(v102) = 1.0;
    objc_msgSend_getFloatValueForKey_default_(v60, v103, @"aspect_ratio", v104, v105, v102);
    v107 = v106;
    v257 = objc_msgSend_getStringValueForKey_(v60, v108, @"attributes", v109, v110);
    if (v257)
    {
      v113 = objc_alloc(MEMORY[0x277CBEA90]);
      v116 = objc_msgSend_initWithBase64EncodedString_options_(v113, v114, v257, 0, v115);
      v258 = sub_22F9C8CF0(v116, a5);
    }

    else
    {
      v258 = 0;
    }

    IntValueForKey_default = objc_msgSend_getIntValueForKey_default_(v60, v111, @"version", 0, v112);
    v95 = v95;
    if (IntValueForKey_default <= 1)
    {
      v121 = objc_msgSend_getStringValueForKey_(v60, v117, @"userdata", v118, v119);
      v125 = v121;
      if (v121)
      {
        objc_msgSend_dataUsingEncoding_(v121, v122, 4, v123, v124);
        v256 = v262 = 0;
        v127 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v126, v256, 0, &v262);
        v255 = v262;
        if (v127)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v254 = objc_msgSend_objectForKey_(v127, v128, @"vertical_fov", v129, v130);
            if (v254)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_floatValue(v254, v131, v134, v132, v133);
                v101 = v135;
              }
            }

            v136 = objc_msgSend_objectForKey_(v127, v131, @"aspect_ratio", v132, v133);
            if (v136)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_floatValue(v136, v137, v138, v139, v140);
                v107 = v141;
              }
            }

            if (v254 | v136)
            {
              v95 = 0;
            }
          }
        }
      }

      IntValueForKey_default = 2;
    }

    objc_msgSend_getFloatValueForKey_default_(v60, v117, @"min_depth", v118, v119, 0.0);
    v143 = v142;
    LODWORD(v144) = 2139095039;
    objc_msgSend_getFloatValueForKey_default_(v60, v145, @"max_depth", v146, v147, v144);
    if (IntValueForKey_default > 3)
    {
      v154 = v152;
    }

    else
    {
      v153 = *buf;
      v154 = 0.0;
      if (*buf == *&buf[8])
      {
        v143 = 3.4028e38;
      }

      else
      {
        v143 = 3.4028e38;
        do
        {
          v155 = *v153++;
          v156 = *(&v155 + 2);
          v157 = vabs_f32(*&v155);
          if (v157.f32[0] < v157.f32[1])
          {
            v157.f32[0] = v157.f32[1];
          }

          v158 = fabsf(v156);
          if (v157.f32[0] >= v158)
          {
            v158 = v157.f32[0];
          }

          if (v158 < v143)
          {
            v143 = v158;
          }

          if (v158 >= v154)
          {
            v154 = v158;
          }
        }

        while (v153 != *&buf[8]);
      }
    }

    v253 = objc_msgSend_arrayLength(v259, v148, v149, v150, v151);
    self = objc_msgSend_initWithPosition_uvs_triangles_slices_colorTextures_colorTexture_colorTextureSlices_normalTexture_pbrTextures_pbrMaterialDescriptor_iblFileName_(self, v159, buf, &v270, &v272, __p, MEMORY[0x277CBEBF8], v259, v253, 0, 0, 0, 0);
    objc_msgSend_setType_(self, v160, v95, v161, v162);
    LODWORD(v163) = v101;
    objc_msgSend_setVerticalFOV_(self, v164, v165, v166, v167, v163);
    LODWORD(v168) = v107;
    objc_msgSend_setAspectRatio_(self, v169, v170, v171, v172, v168);
    *&v173 = v143;
    *&v174 = v154;
    objc_msgSend_setDepthRange_(self, v175, v176, v177, v178, v173, v174);
    LODWORD(v179) = v101;
    objc_msgSend_getFloatValueForKey_default_(v60, v180, @"effective_vertical_fov", v181, v182, v179);
    objc_msgSend_setEffectiveVerticalFOV_(self, v183, v184, v185, v186);
    LODWORD(v187) = v107;
    objc_msgSend_getFloatValueForKey_default_(v60, v188, @"effective_aspect_ratio", v189, v190, v187);
    objc_msgSend_setEffectiveAspectRatio_(self, v191, v192, v193, v194);
    objc_msgSend_getModelToWorldTransformWithDefault_(v60, v195, v196, v197, v198, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
    objc_msgSend_setModelToWorldTransform_(self, v199, v200, v201, v202);
    v205 = objc_msgSend_getIntValueForKey_default_(v60, v203, @"resolution_width", 2048, v204);
    objc_msgSend_setResolutionWidth_(self, v206, v205, v207, v208);
    v211 = objc_msgSend_getIntValueForKey_default_(v60, v209, @"resolution_height", 2048, v210);
    objc_msgSend_setResolutionHeight_(self, v212, v211, v213, v214);
    v217 = objc_msgSend_getIntValueForKey_default_(v60, v215, @"num_layers", 64, v216);
    objc_msgSend_setNumLayers_(self, v218, v217, v219, v220);
    v223 = objc_msgSend_getIntValueForKey_default_(v60, v221, @"num_opaque_triangles", 0, v222);
    objc_msgSend_setNumOpaqueTriangles_(self, v224, v223, v225, v226);
    v229 = objc_msgSend_getIntValueForKey_default_(v60, v227, @"color_primaries", 0, v228);
    objc_msgSend_setColorPrimaries_(self, v230, v229, v231, v232);
    v235 = objc_msgSend_getIntValueForKey_default_(v60, v233, @"premultiplied_alpha", 1, v234) != 0;
    objc_msgSend_setIsPremultipliedAlpha_(self, v236, v235, v237, v238);
    v242 = objc_msgSend_getStringValueForKey_(v60, v239, @"userdata", v240, v241);
    objc_msgSend_setUserdata_(self, v243, v242, v244, v245);

    objc_msgSend_setAttributes_(self, v246, v258, v247, v248);
    v249 = _MXISignpostLogSystem();
    v260 = 0u;
    v261 = 0u;
    core::get_info(&v260);
    v250 = v249;
    v251 = v250;
    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v250))
    {
      *v265 = 134218752;
      *&v265[4] = v260;
      *&v265[12] = 2048;
      *&v265[14] = *(&v260 + 1);
      *&v265[22] = 2048;
      *&v265[24] = v261;
      v266 = 2048;
      v267 = *(&v261 + 1);
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v251, OS_SIGNPOST_INTERVAL_END, v48, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", v265, 0x2Au);
    }

    v64 = 0;
    v43 = self;
    goto LABEL_77;
  }

  v44 = _mxi_log();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v44, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:173] Invalid MTLDevice", buf, 2u);
  }

  objc_msgSend_fillError_withDescription_(MXIUserError, v45, a5, @"Invalid MTLDevice", v46);
  v43 = 0;
LABEL_87:

  return v43;
}

- (MXIScene)initWithNSData:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = _MXISignpostLogSystem();
  v11 = _MXISignpostCreate(v10);
  v12 = _MXISignpostLogSystem();
  v35 = 0u;
  v36 = 0u;
  core::get_info(&v35);
  v13 = v12;
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 134218752;
    v38 = v35;
    v39 = 2048;
    v40 = *(&v35 + 1);
    v41 = 2048;
    v42 = v36;
    v43 = 2048;
    v44 = *(&v36 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  v15 = v8;
  v20 = objc_msgSend_bytes(v8, v16, v17, v18, v19);
  v25 = objc_msgSend_length(v8, v21, v22, v23, v24);
  core::Reader::Create(&v34, v9, v20, v25, a5);
  if (v34)
  {
    self = objc_msgSend_initWithReader_device_error_(self, v26, &v34, v9, a5);
    v28 = _MXISignpostLogSystem();
    v35 = 0u;
    v36 = 0u;
    core::get_info(&v35);
    v29 = v28;
    v30 = v29;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 134218752;
      v38 = v35;
      v39 = 2048;
      v40 = *(&v35 + 1);
      v41 = 2048;
      v42 = v36;
      v43 = 2048;
      v44 = *(&v36 + 1);
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v30, OS_SIGNPOST_INTERVAL_END, v11, "MXI_SCENE_INITIALIZATION", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
    }

    v31 = self;
  }

  else
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIUserError, v26, a5, @"Unable to read from data buffer: %p", v27, v8);
    v31 = 0;
  }

  v32 = v34;
  v34 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  return v31;
}

- (id)createThumbnailWithError:(id *)a3
{
  v5 = _MXISignpostLogSystem();
  v6 = _MXISignpostCreate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MXI_CREATE_THUMBNAIL", &unk_22FA1C169, buf, 2u);
  }

  colorTexture = self->_colorTexture;
  if (colorTexture)
  {
    v14 = objc_msgSend_device(colorTexture, v9, v10, v11, v12);
  }

  else
  {
    v14 = MTLCreateSystemDefaultDevice();
  }

  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_newCommandQueue(v14, v15, v16, v17, v18);
    v25 = v20;
    if (v20)
    {
      v26 = objc_msgSend_commandBuffer(v20, v21, v22, v23, v24);
      if (v26)
      {
        v27 = [MXIRenderer alloc];
        v29 = objc_msgSend_initWithDevice_colorPixelFormat_depthPixelFormat_sampleCount_error_(v27, v28, v19, 71, 252, 1, 0);
        v30 = objc_opt_new();
        objc_msgSend_setTextureType_(v30, v31, 2, v32, v33);
        objc_msgSend_setWidth_(v30, v34, 512, v35, v36);
        objc_msgSend_setHeight_(v30, v37, 512, v38, v39);
        objc_msgSend_setPixelFormat_(v30, v40, 71, v41, v42);
        objc_msgSend_setUsage_(v30, v43, 5, v44, v45);
        v52 = objc_msgSend_newTextureWithDescriptor_(v19, v46, v30, v47, v48);
        if (v52)
        {
          objc_msgSend_setPixelFormat_(v30, v49, 252, v50, v51);
          objc_msgSend_setUsage_(v30, v53, 5, v54, v55);
          objc_msgSend_setStorageMode_(v30, v56, 3, v57, v58);
          v210 = objc_msgSend_newTextureWithDescriptor_(v19, v59, v30, v60, v61);
          if (v210)
          {
            v208 = v29;
            v209 = v52;
            v211 = v26;
            v62 = objc_opt_new();
            v67 = objc_msgSend_colorAttachments(v62, v63, v64, v65, v66);
            v71 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, 0, v69, v70);
            objc_msgSend_setTexture_(v71, v72, v209, v73, v74);

            v79 = objc_msgSend_colorAttachments(v62, v75, v76, v77, v78);
            v83 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, 0, v81, v82);
            objc_msgSend_setClearColor_(v83, v84, v85, v86, v87, 0.0, 0.0, 0.0, 1.0);

            v92 = objc_msgSend_colorAttachments(v62, v88, v89, v90, v91);
            v96 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, 0, v94, v95);
            objc_msgSend_setLoadAction_(v96, v97, 2, v98, v99);

            v104 = objc_msgSend_colorAttachments(v62, v100, v101, v102, v103);
            v108 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, 0, v106, v107);
            objc_msgSend_setStoreAction_(v108, v109, 1, v110, v111);

            v116 = objc_msgSend_depthAttachment(v62, v112, v113, v114, v115);
            objc_msgSend_setTexture_(v116, v117, v210, v118, v119);

            v124 = objc_msgSend_depthAttachment(v62, v120, v121, v122, v123);
            objc_msgSend_setClearDepth_(v124, v125, v126, v127, v128, 1.0);

            v133 = objc_msgSend_depthAttachment(v62, v129, v130, v131, v132);
            objc_msgSend_setLoadAction_(v133, v134, 2, v135, v136);

            v141 = objc_msgSend_depthAttachment(v62, v137, v138, v139, v140);
            objc_msgSend_setStoreAction_(v141, v142, 0, v143, v144);

            v152 = objc_msgSend_renderCommandEncoderWithDescriptor_(v211, v145, v62, v146, v147);
            LODWORD(v153) = 1.0;
            v206 = v153;
            if (!self->_type)
            {
              effectiveVerticalFOV = self->_effectiveVerticalFOV;
              effectiveAspectRatio = self->_effectiveAspectRatio;
              if (effectiveAspectRatio < 1.0)
              {
                effectiveVerticalFOV = effectiveVerticalFOV * effectiveAspectRatio;
              }

              *&v156 = 1.0 / tanf(effectiveVerticalFOV * 0.5);
              v206 = v156;
            }

            objc_msgSend_modelToWorldTransform(self, v148, v149, v150, v151, v206);
            LODWORD(v157) = 0;
            HIDWORD(v157) = v207;
            *buf = v158;
            v213 = v159;
            v214 = v160;
            v215 = v161;
            v162 = *(MEMORY[0x277D860B8] + 16);
            v216 = *MEMORY[0x277D860B8];
            v217 = v162;
            v220 = v216;
            v221 = v162;
            v163 = *(MEMORY[0x277D860B8] + 48);
            v218 = *(MEMORY[0x277D860B8] + 32);
            v219 = v163;
            v222 = v218;
            v223 = v163;
            v224 = v207;
            v225 = v157;
            v226 = xmmword_22FA07C90;
            v227 = xmmword_22FA07CA0;
            v164 = *(MEMORY[0x277D860B8] + 48);
            v230 = v218;
            v231 = v164;
            v228 = v216;
            v229 = v162;
            v232 = 7;
            v233 = -1;
            v234 = 0;
            v235 = 0;
            v236 = 0;
            objc_msgSend_renderScene_withEncoder_context_(v208, v165, self, v152, buf);
            objc_msgSend_endEncoding(v152, v166, v167, v168, v169);
            objc_msgSend_commitAndWaitUntilSubmitted(v211, v170, v171, v172, v173);
            objc_msgSend_waitUntilCompleted(v211, v174, v175, v176, v177);
            if (objc_msgSend_status(v211, v178, v179, v180, v181) == 4)
            {
              v182 = _MXISignpostLogSystem();
              v183 = v182;
              if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v182))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22F9C3000, v183, OS_SIGNPOST_INTERVAL_END, v6, "MXI_CREATE_THUMBNAIL", &unk_22FA1C169, buf, 2u);
              }

              v184 = v209;
            }

            else
            {
              v200 = _mxi_log();
              if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_22F9C3000, v200, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:418] MTLCommandBuffer failed", buf, 2u);
              }

              if (a3)
              {
                objc_msgSend_error(v211, v201, v202, v203, v204);
                *a3 = v184 = 0;
              }

              else
              {
                v184 = 0;
              }
            }

            v26 = v211;
            v29 = v208;
            v52 = v209;
          }

          else
          {
            v197 = _mxi_log();
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v197, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:363] Failed creating MTLTexture", buf, 2u);
            }

            objc_msgSend_fillError_withDescription_(MXIInternalError, v198, a3, @"Failed creating MTLTexture", v199);
            v184 = 0;
          }
        }

        else
        {
          v194 = _mxi_log();
          if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22F9C3000, v194, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:354] Failed creating MTLTexture", buf, 2u);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v195, a3, @"Failed creating MTLTexture", v196);
          v184 = 0;
        }
      }

      else
      {
        v191 = _mxi_log();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v191, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:336] Failed creating MTLCommandBufferSPI", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v192, a3, @"Failed creating MTLCommandBufferSPI", v193);
        v184 = 0;
      }
    }

    else
    {
      v188 = _mxi_log();
      if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v188, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:330] Failed creating MTLCommandQueue", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v189, a3, @"Failed creating MTLCommandQueue", v190);
      v184 = 0;
    }
  }

  else
  {
    v185 = _mxi_log();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v185, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:324] Invalid device", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v186, a3, @"Invalid device", v187);
    v184 = 0;
  }

  return v184;
}

- (id)trimmedColorTexture
{
  v3 = self->_colorTexture;
  colorTextureSlices = self->_colorTextureSlices;
  if (objc_msgSend_arrayLength(self->_colorTexture, v5, v6, v7, v8) > colorTextureSlices)
  {
    colorTexture = self->_colorTexture;
    v14 = objc_msgSend_pixelFormat(colorTexture, v9, v10, v11, v12);
    v19 = objc_msgSend_mipmapLevelCount(self->_colorTexture, v15, v16, v17, v18);
    v21 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(colorTexture, v20, v14, 3, 0, v19, 0, self->_colorTextureSlices);

    v3 = v21;
  }

  return v3;
}

- (MXIScene)initWithReader:(void *)a3 device:(id)a4 error:(id *)a5
{
  v8 = a4;
  v122.receiver = self;
  v122.super_class = MXIScene;
  v9 = [(MXIScene *)&v122 init];
  if (!v9)
  {
    goto LABEL_42;
  }

  v10 = (*(**a3 + 32))(*a3, 560822377, a5);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v17 = objc_msgSend_bytes(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_length(v11, v18, v19, v20, v21);
    if (v22 >= 0x80)
    {
      v23 = 128;
    }

    else
    {
      v23 = v22;
    }

    memcpy(__dst, v17, v23);
    if (__dst[0] > 4u)
    {
      if (__dst[0] != 5)
      {
        if (__dst[0] > 6u)
        {
          if (__dst[0] != 7)
          {
            if (__dst[0] > 8u)
            {
              if (__dst[0] != 9)
              {
LABEL_14:
                v26 = *(&v110 + 1);
                v27 = v113;
                LODWORD(v9->_verticalFOV) = v110;
                LODWORD(v9->_effectiveVerticalFOV) = v27;
                v9->_type = __dst[1];
                v9->_aspectRatio = v26;
                v9->_effectiveAspectRatio = *(&v27 + 1);
                v9->_depthRange = v111;
                v28 = v112;
                *&v9->_resolutionWidth = v114;
                v9->_numLayers = v115;
                v9->_colorPrimaries = v28;
                v9->_isPremultipliedAlpha = v116 & 1;
                v9->_numOpaqueTriangles = v117;
                v29 = v119;
                *&v9[1].super.isa = v118;
                *&v9[1]._numOpaqueTriangles = v29;
                v30 = v121;
                *&v9[1]._vertexUVs = v120;
                *&v9[1]._triangleIndices = v30;
                if ((*(**a3 + 16))(*a3, 1970496628, 0, a5))
                {
                  v31 = (*(**a3 + 32))(*a3, 1970496628, a5);
                  v32 = v31;
                  if (!v31)
                  {
                    goto LABEL_43;
                  }

                  v33 = MEMORY[0x277CCACA8];
                  v34 = v31;
                  v39 = objc_msgSend_bytes(v34, v35, v36, v37, v38);
                  v43 = objc_msgSend_stringWithUTF8String_(v33, v40, v39, v41, v42);
                  userdata = v9->_userdata;
                  v9->_userdata = v43;
                }

                if (((*(**a3 + 40))(*a3, 1835365224, v108, 8, a5) & 1) == 0)
                {
                  goto LABEL_43;
                }

                v50 = v108[0];
                numTriangles = v108[1];
                v9->_numVertices = v108[0];
                v9->_numTriangles = numTriangles;
                if (v50)
                {
                  v51 = objc_msgSend_newBufferWithLength_options_(v8, v45, 16 * v50, 0, v48);
                  vertexPositions = v9->_vertexPositions;
                  v9->_vertexPositions = v51;

                  v55 = objc_msgSend_newBufferWithLength_options_(v8, v53, 8 * v9->_numVertices, 0, v54);
                  vertexUVs = v9->_vertexUVs;
                  v9->_vertexUVs = v55;

                  numTriangles = v9->_numTriangles;
                }

                if (numTriangles)
                {
                  v57 = objc_msgSend_newBufferWithLength_options_(v8, v45, 12 * numTriangles, 0, v48);
                  triangleIndices = v9->_triangleIndices;
                  v9->_triangleIndices = v57;

                  v61 = objc_msgSend_newBufferWithLength_options_(v8, v59, 4 * v9->_numTriangles, 0, v60);
                  triangleSliceIndices = v9->_triangleSliceIndices;
                  v9->_triangleSliceIndices = v61;
                }

                v63 = *a3;
                v64 = objc_msgSend_contents(v9->_vertexPositions, v45, v46, v47, v48);
                if (!(*(*v63 + 40))(v63, 1987080051, v64, 16 * v9->_numVertices, a5))
                {
                  goto LABEL_43;
                }

                v69 = *a3;
                v70 = objc_msgSend_contents(v9->_vertexUVs, v65, v66, v67, v68);
                if (!(*(*v69 + 40))(v69, 1987409523, v70, 8 * v9->_numVertices, a5))
                {
                  goto LABEL_43;
                }

                v75 = *a3;
                v76 = objc_msgSend_contents(v9->_triangleIndices, v71, v72, v73, v74);
                if (!(*(*v75 + 40))(v75, 1953064056, v76, 12 * v9->_numTriangles, a5))
                {
                  goto LABEL_43;
                }

                v81 = *a3;
                v82 = objc_msgSend_contents(v9->_triangleSliceIndices, v77, v78, v79, v80);
                if (!(*(*v81 + 40))(v81, 1953721443, v82, 4 * v9->_numTriangles, a5))
                {
                  goto LABEL_43;
                }

                v83 = (*(**a3 + 24))(*a3, 1668246642, a5);
                v84 = **a3;
                if (v83)
                {
                  v85 = (*(v84 + 56))();
                  colorTextures = v9->_colorTextures;
                  v9->_colorTextures = v85;

                  v91 = objc_msgSend_count(v9->_colorTextures, v87, v88, v89, v90);
                }

                else
                {
                  if (!(*(v84 + 16))())
                  {
LABEL_36:
                    colorTexture = v9->_colorTexture;
                    if (colorTexture)
                    {
                      LODWORD(colorTexture) = objc_msgSend_arrayLength(colorTexture, v92, v93, v94, v95);
                    }

                    v9->_colorTextureSlices = colorTexture;
                    if (!(*(**a3 + 16))(*a3, 1635021938, 0, a5))
                    {
                      goto LABEL_41;
                    }

                    v103 = (*(**a3 + 32))(*a3, 1635021938, a5);
                    v104 = v103;
                    if (v103)
                    {
                      v105 = sub_22F9C8CF0(v103, a5);
                      attributes = v9->_attributes;
                      v9->_attributes = v105;

LABEL_41:
LABEL_42:
                      v11 = v9;
                      goto LABEL_44;
                    }

LABEL_43:

                    v11 = 0;
                    goto LABEL_44;
                  }

                  v96 = objc_msgSend_readHEICs_key_device_error_(v9, v92, a3, 1667786089, v8, a5);
                  v97 = v9->_colorTextures;
                  v9->_colorTextures = v96;

                  v91 = objc_msgSend_count(v9->_colorTextures, v98, v99, v100, v101);
                }

                if (!v91)
                {
                  goto LABEL_43;
                }

                goto LABEL_36;
              }

LABEL_13:
              v24 = *(MEMORY[0x277D860B8] + 16);
              v118 = *MEMORY[0x277D860B8];
              v119 = v24;
              v25 = *(MEMORY[0x277D860B8] + 48);
              v120 = *(MEMORY[0x277D860B8] + 32);
              v121 = v25;
              goto LABEL_14;
            }

LABEL_12:
            v117 = 0;
            goto LABEL_13;
          }

LABEL_11:
          v116 = 1;
          goto LABEL_12;
        }

LABEL_10:
        v114 = 0x80000000800;
        v115 = 64;
        goto LABEL_11;
      }
    }

    else
    {
      v112 = 0;
    }

    v113 = v110;
    goto LABEL_10;
  }

LABEL_44:

  return v11;
}

- (BOOL)writeWithWriter:(const void *)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v12 = objc_msgSend_valueForKey_(v8, v9, @"serielize_option_image_codec", v10, v11);
  v15 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v13, v12, @"serielize_compression_codec_raw", v14);

  v19 = objc_msgSend_valueForKey_(v8, v16, @"serielize_option_image_quality", v17, v18);
  LODWORD(v20) = 1.0;
  objc_msgSend_parseFloat_defaultValue_(MXIUtilities, v21, v19, v22, v23, v20);
  v25 = v24;

  if (objc_msgSend_isEqualToString_(v15, v26, @"serielize_compression_codec_raw", v27, v28))
  {
    goto LABEL_14;
  }

  colorTexture = self->_colorTexture;
  if (colorTexture && objc_msgSend_pixelFormat(colorTexture, v29, v30, v31, v32) != 71 && objc_msgSend_pixelFormat(self->_colorTexture, v29, v30, v31, v32) != 70 && objc_msgSend_pixelFormat(self->_colorTexture, v29, v30, v31, v32) != 81 && objc_msgSend_pixelFormat(self->_colorTexture, v29, v30, v31, v32) != 80)
  {
    goto LABEL_62;
  }

  if (!objc_msgSend_count(self->_colorTextures, v29, v30, v31, v32))
  {
    goto LABEL_14;
  }

  v34 = objc_msgSend_objectAtIndexedSubscript_(self->_colorTextures, v29, 0, v31, v32);
  if (objc_msgSend_pixelFormat(v34, v35, v36, v37, v38) == 71)
  {
    goto LABEL_13;
  }

  v42 = objc_msgSend_objectAtIndexedSubscript_(self->_colorTextures, v39, 0, v40, v41);
  if (objc_msgSend_pixelFormat(v42, v43, v44, v45, v46) == 70)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v50 = objc_msgSend_objectAtIndexedSubscript_(self->_colorTextures, v47, 0, v48, v49);
  if (objc_msgSend_pixelFormat(v50, v51, v52, v53, v54) == 81)
  {

    goto LABEL_12;
  }

  v196 = objc_msgSend_objectAtIndexedSubscript_(self->_colorTextures, v55, 0, v56, v57);
  v201 = objc_msgSend_pixelFormat(v196, v197, v198, v199, v200);

  if (v201 != 80)
  {
LABEL_62:
    objc_msgSend_fillError_withDescription_(MXIUserError, v29, a5, @"HEIC compression can be used only with 32bit non compressed textures.", v32, v201);
    LOBYTE(v132) = 0;
    goto LABEL_60;
  }

LABEL_14:
  v58 = objc_msgSend_valueForKey_(v8, v29, @"serielize_option_compression_algorithm", v31, v32, v201);
  v61 = objc_msgSend_parseString_defaultValue_(MXIUtilities, v59, v58, @"serielize_compression_algorithm_lzfse", v60);

  if (objc_msgSend_isEqualToString_(v61, v62, @"serielize_compression_algorithm_none", v63, v64))
  {
    v69 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v61, v65, @"serielize_compression_algorithm_lzfse", v67, v68))
  {
    v69 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v61, v65, @"serielize_compression_algorithm_lz4", v67, v68))
  {
    v69 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v61, v65, @"serielize_compression_algorithm_lzma", v67, v68))
  {
    v69 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v61, v65, @"serielize_compression_algorithm_zlib", v67, v68))
  {
    v69 = 3;
  }

  else
  {
    v69 = 0;
  }

  v204 = 0u;
  v203[0] = 10;
  v203[1] = objc_msgSend_type(self, v65, v66, v67, v68);
  objc_msgSend_verticalFOV(self, v70, v71, v72, v73);
  v203[2] = v74;
  objc_msgSend_aspectRatio(self, v75, v76, v77, v78);
  v203[3] = v79;
  objc_msgSend_depthRange(self, v80, v81, v82, v83);
  v203[4] = v84;
  objc_msgSend_depthRange(self, v85, v86, v87, v88);
  v203[5] = v89;
  v203[6] = objc_msgSend_colorPrimaries(self, v90, v91, v92, v93);
  objc_msgSend_effectiveVerticalFOV(self, v94, v95, v96, v97);
  v203[7] = v98;
  objc_msgSend_effectiveAspectRatio(self, v99, v100, v101, v102);
  v203[8] = v103;
  v203[9] = objc_msgSend_resolutionWidth(self, v104, v105, v106, v107);
  v203[10] = objc_msgSend_resolutionHeight(self, v108, v109, v110, v111);
  v203[11] = objc_msgSend_numLayers(self, v112, v113, v114, v115);
  LOBYTE(v204) = objc_msgSend_isPremultipliedAlpha(self, v116, v117, v118, v119);
  DWORD1(v204) = objc_msgSend_numOpaqueTriangles(self, v120, v121, v122, v123);
  objc_msgSend_modelToWorldTransform(self, v124, v125, v126, v127);
  v205 = v128;
  v206 = v129;
  v207 = v130;
  v208 = v131;
  v202 = *&self->_numVertices;
  v132 = (*(**a3 + 24))(*a3, 560822377, v203, 128, 4, a5);
  v136 = objc_msgSend_valueForKey_(v8, v133, @"serielize_option_generate_thumbnail", v134, v135);
  v139 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v137, v136, 1, v138);

  if (v139)
  {
    v148 = objc_msgSend_createThumbnailWithError_(self, v140, a5, v142, v143);
    if (v148)
    {
      v149 = objc_msgSend_cgColorSpaceName(self, v144, v145, v146, v147);
      v150 = image::toPNG(v148, v149);
      if (v132)
      {
        v132 = (*(**a3 + 16))(*a3, 1953000802, v150, 4, a5);
      }
    }
  }

  v151 = objc_msgSend_userdata(self, v140, v141, v142, v143);

  if (v151)
  {
    v156 = objc_msgSend_userdata(self, v152, v153, v154, v155);
    v157 = v156;
    v162 = objc_msgSend_UTF8String(v157, v158, v159, v160, v161);

    if (!v132)
    {
      goto LABEL_41;
    }

    v163 = strlen(v162);
    v132 = (*(**a3 + 24))(*a3, 1970496628, v162, (v163 + 1), 4, a5);
  }

  if (v132)
  {
    if ((*(**a3 + 24))(*a3, 1835365224, &v202, 8, 4, a5) && (v164 = *a3, v165 = objc_msgSend_contents(self->_vertexPositions, v152, v153, v154, v155), (*(*v164 + 24))(v164, 1987080051, v165, 16 * self->_numVertices, v69, a5)) && (v166 = *a3, v167 = objc_msgSend_contents(self->_vertexUVs, v152, v153, v154, v155), (*(*v166 + 24))(v166, 1987409523, v167, 8 * self->_numVertices, v69, a5)) && (v168 = *a3, v169 = objc_msgSend_contents(self->_triangleIndices, v152, v153, v154, v155), (*(*v168 + 24))(v168, 1953064056, v169, 12 * self->_numTriangles, v69, a5)))
    {
      v170 = *a3;
      v171 = objc_msgSend_contents(self->_triangleSliceIndices, v152, v153, v154, v155);
      v132 = (*(*v170 + 24))(v170, 1953721443, v171, 4 * self->_numTriangles, v69, a5);
    }

    else
    {
      v132 = 0;
    }
  }

LABEL_41:
  if (self->_colorTexture)
  {
    if (objc_msgSend_isEqualToString_(v15, v152, @"serielize_compression_codec_heic", v154, v155))
    {
      if (v132)
      {
        v176 = objc_msgSend_trimmedColorTexture(self, v172, v173, v174, v175);
        LODWORD(v177) = v25;
        v179 = objc_msgSend_writeHEIC_texture_key_quality_error_(self, v178, a3, v176, 1667786089, a5, v177);
LABEL_51:
        v132 = v179;
      }
    }

    else if (v132)
    {
      v182 = *a3;
      v176 = objc_msgSend_trimmedColorTexture(self, v172, v173, v174, v175);
      v179 = (*(*v182 + 32))(v182, 1668246642, v176, v69, a5);
      goto LABEL_51;
    }
  }

  else if (objc_msgSend_count(self->_colorTextures, v152, v153, v154, v155))
  {
    if (objc_msgSend_isEqualToString_(v15, v172, @"serielize_compression_codec_heic", v174, v175))
    {
      if (!v132)
      {
        goto LABEL_55;
      }

      LODWORD(v180) = v25;
      v181 = objc_msgSend_writeHEICs_textures_key_quality_error_(self, v172, a3, self->_colorTextures, 1667786089, a5, v180);
    }

    else
    {
      if (!v132)
      {
        goto LABEL_55;
      }

      v181 = (*(**a3 + 40))(*a3, 1668246642, self->_colorTextures, v69, a5);
    }

    v132 = v181;
  }

LABEL_55:
  v183 = objc_msgSend_attributes(self, v172, v173, v174, v175);
  v188 = objc_msgSend_count(v183, v184, v185, v186, v187);

  if (v188)
  {
    v193 = objc_msgSend_attributes(self, v189, v190, v191, v192);
    v194 = sub_22F9CAB90(v193, a5);

    if (v132)
    {
      LOBYTE(v132) = (*(**a3 + 16))(*a3, 1635021938, v194, 4, a5);
    }
  }

LABEL_60:
  return v132;
}

- (id)serializeWithOptions:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _mxi_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_22F9C3000, v7, OS_LOG_TYPE_DEBUG, "[MXI.framework] [MXIScene] serialize with options %@", buf, 0xCu);
  }

  v16 = 0;
  *buf = 0;
  core::Writer::Create(buf, &v16, a4, &v15);
  if (!v15)
  {
    v12 = *buf;
    if (!*buf)
    {
      v11 = 0;
      goto LABEL_13;
    }

LABEL_9:
    MEMORY[0x2319050F0](v12, 0x1000C4077774924);
    goto LABEL_10;
  }

  if (objc_msgSend_writeWithWriter_options_error_(self, v8, &v15, v6, a4))
  {
    v11 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v9, *buf, v16, 1);
    goto LABEL_11;
  }

  objc_msgSend_fillError_withDescription_(MXIInternalError, v9, a4, @"Failed serializing scene.", v10);
  v12 = *buf;
  if (*buf)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11 = 0;
LABEL_11:
  v13 = v15;
  v15 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

LABEL_13:

  return v11;
}

- (BOOL)writeToFile:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v15 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
  core::Writer::Create(v15, a5, &v21);
  if (v21)
  {
    v18 = objc_msgSend_writeWithWriter_options_error_(self, v16, &v21, v9, a5);
  }

  else
  {
    objc_msgSend_fillError_withDescription_(MXIInternalError, v16, a5, @"Failed writing scene to file.", v17);
    v18 = 0;
  }

  v19 = v21;
  v21 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  return v18;
}

- (BOOL)writeHEIC:(const void *)a3 texture:(id)a4 key:(unsigned int)a5 quality:(float)a6 error:(id *)a7
{
  v9 = *&a5;
  v11 = a4;
  v40[0] = objc_msgSend_pixelFormat(v11, v12, v13, v14, v15);
  v40[1] = objc_msgSend_width(v11, v16, v17, v18, v19);
  v40[2] = objc_msgSend_height(v11, v20, v21, v22, v23);
  v40[3] = objc_msgSend_arrayLength(v11, v24, v25, v26, v27);
  v40[4] = objc_msgSend_mipmapLevelCount(v11, v28, v29, v30, v31);
  v36 = (*(**a3 + 24))(*a3, v9, v40, 20, 4, a7);
  for (i = 0; objc_msgSend_arrayLength(v11, v32, v33, v34, v35) > i; ++i)
  {
    v38 = image::toHEIC(v11, i, 0, a6);
    v9 = v9 & 0xFFFFFF00 | i;
    if (v36)
    {
      v36 = (*(**a3 + 16))(*a3, v9, v38, 4, a7);
    }

    else
    {
      v36 = 0;
    }
  }

  return v36 & 1;
}

- (BOOL)writeHEICs:(const void *)a3 textures:(id)a4 key:(unsigned int)a5 quality:(float)a6 error:(id *)a7
{
  v9 = *&a5;
  v11 = a4;
  v15 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, 0, v13, v14);
  v60[0] = objc_msgSend_pixelFormat(v15, v16, v17, v18, v19);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v11, v20, 0, v21, v22);
  v60[1] = objc_msgSend_width(v23, v24, v25, v26, v27);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v11, v28, 0, v29, v30);
  v60[2] = objc_msgSend_height(v31, v32, v33, v34, v35);
  v60[3] = objc_msgSend_count(v11, v36, v37, v38, v39);
  v43 = objc_msgSend_objectAtIndexedSubscript_(v11, v40, 0, v41, v42);
  v60[4] = objc_msgSend_mipmapLevelCount(v43, v44, v45, v46, v47);

  v52 = (*(**a3 + 24))(*a3, v9, v60, 20, 4, a7);
  for (i = 0; objc_msgSend_count(v11, v48, v49, v50, v51) > i; ++i)
  {
    v57 = objc_msgSend_objectAtIndexedSubscript_(v11, v54, i, v55, v56);
    v58 = image::toHEIC(v57, 0, 0, a6);

    v9 = v9 & 0xFFFFFF00 | i;
    if (v52)
    {
      v52 = (*(**a3 + 16))(*a3, v9, v58, 4, a7);
    }

    else
    {
      v52 = 0;
    }
  }

  return v52 & 1;
}

- (id)readHEIC:(const void *)a3 key:(unsigned int)a4 device:(id)a5 error:(id *)a6
{
  v7 = *&a4;
  v9 = a5;
  (*(**a3 + 40))(*a3, v7, v83, 20, a6);
  v10 = objc_opt_new();
  objc_msgSend_setTextureType_(v10, v11, 3, v12, v13);
  objc_msgSend_setPixelFormat_(v10, v14, v83[0], v15, v16);
  objc_msgSend_setWidth_(v10, v17, v83[1], v18, v19);
  objc_msgSend_setHeight_(v10, v20, v83[2], v21, v22);
  objc_msgSend_setArrayLength_(v10, v23, v84, v24, v25);
  objc_msgSend_setMipmapLevelCount_(v10, v26, v85, v27, v28);
  objc_msgSend_setStorageMode_(v10, v29, 2, v30, v31);
  v39 = objc_msgSend_newSharedTextureWithDescriptor_(v9, v32, v10, v33, v34);
  if (v84)
  {
    for (i = 0; i < v84; ++i)
    {
      v7 = v7 & 0xFFFFFF00 | i;
      v41 = (*(**a3 + 32))(*a3, v7, a6);
      image::fromHEIC(v39, i, 0, v41);
    }
  }

  v42 = objc_msgSend_newCommandQueue(v9, v35, v36, v37, v38);
  v47 = objc_msgSend_commandBuffer(v42, v43, v44, v45, v46);
  v52 = objc_msgSend_blitCommandEncoder(v47, v48, v49, v50, v51);
  objc_msgSend_setLabel_(v52, v53, @"MXI: MipMapping", v54, v55);
  objc_msgSend_generateMipmapsForTexture_(v52, v56, v39, v57, v58);
  objc_msgSend_endEncoding(v52, v59, v60, v61, v62);
  objc_msgSend_commit(v47, v63, v64, v65, v66);
  objc_msgSend_waitUntilCompleted(v47, v67, v68, v69, v70);
  if (objc_msgSend_status(v47, v71, v72, v73, v74) == 4)
  {
    v75 = v39;
  }

  else
  {
    v76 = _mxi_log();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *v82 = 0;
      _os_log_impl(&dword_22F9C3000, v76, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:798] Failed generating mipmaps", v82, 2u);
    }

    if (a6)
    {
      objc_msgSend_error(v47, v77, v78, v79, v80);
      *a6 = v75 = 0;
    }

    else
    {
      v75 = 0;
    }
  }

  return v75;
}

- (id)readHEICs:(const void *)a3 key:(unsigned int)a4 device:(id)a5 error:(id *)a6
{
  v7 = *&a4;
  v9 = a5;
  (*(**a3 + 40))(*a3, v7, v87, 20, a6);
  v10 = objc_opt_new();
  objc_msgSend_setTextureType_(v10, v11, 2, v12, v13);
  objc_msgSend_setPixelFormat_(v10, v14, v87[0], v15, v16);
  objc_msgSend_setWidth_(v10, v17, v87[1], v18, v19);
  objc_msgSend_setHeight_(v10, v20, v87[2], v21, v22);
  objc_msgSend_setMipmapLevelCount_(v10, v23, v89, v24, v25);
  objc_msgSend_setStorageMode_(v10, v26, 2, v27, v28);
  v33 = objc_opt_new();
  if (v88)
  {
    for (i = 0; i < v88; ++i)
    {
      v35 = objc_msgSend_newSharedTextureWithDescriptor_(v9, v29, v10, v31, v32);
      objc_msgSend_addObject_(v33, v36, v35, v37, v38);
      v7 = v7 & 0xFFFFFF00 | i;
      v39 = (*(**a3 + 32))(*a3, v7, a6);
      image::fromHEIC(v35, 0, 0, v39);
    }
  }

  v40 = objc_msgSend_newCommandQueue(v9, v29, v30, v31, v32);
  v45 = v40;
  if (v40)
  {
    v46 = objc_msgSend_commandBuffer(v40, v41, v42, v43, v44);
    v51 = objc_msgSend_blitCommandEncoder(v46, v47, v48, v49, v50);
    v55 = v51;
    if (v51)
    {
      objc_msgSend_setLabel_(v51, v52, @"MXI: MipMapping", v53, v54);
      if (v88)
      {
        for (j = 0; j < v88; ++j)
        {
          v61 = objc_msgSend_objectAtIndex_(v33, v56, j, v58, v59);
          objc_msgSend_generateMipmapsForTexture_(v55, v62, v61, v63, v64);
        }
      }

      objc_msgSend_endEncoding(v55, v56, v57, v58, v59);
      objc_msgSend_commit(v46, v65, v66, v67, v68);
      objc_msgSend_waitUntilCompleted(v46, v69, v70, v71, v72);
      if (objc_msgSend_status(v46, v73, v74, v75, v76) == 4)
      {
        v77 = v33;
LABEL_21:

        goto LABEL_22;
      }

      v81 = _mxi_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *v86 = 0;
        _os_log_impl(&dword_22F9C3000, v81, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:863] Failed generating mipmaps", v86, 2u);
      }

      v82 = @"Failed generating mipmaps";
    }

    else
    {
      v81 = _mxi_log();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *v86 = 0;
        _os_log_impl(&dword_22F9C3000, v81, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:851] Failed creating MTLBlitCommandEncoder", v86, 2u);
      }

      v82 = @"Failed creating MTLBlitCommandEncoder";
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v83, a6, v82, v84);
    v77 = MEMORY[0x277CBEBF8];
    goto LABEL_21;
  }

  v78 = _mxi_log();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    *v86 = 0;
    _os_log_impl(&dword_22F9C3000, v78, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:839] Failed creating MTLCommandQueue", v86, 2u);
  }

  objc_msgSend_fillError_withDescription_(MXIInternalError, v79, a6, @"Failed creating MTLCommandQueue", v80);
  v77 = MEMORY[0x277CBEBF8];
LABEL_22:

  return v77;
}

- (BOOL)doWrite:(id)a3 options:(id)a4 error:(id *)a5
{
  v294 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v11 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  iblFileName = self->_iblFileName;
  if (iblFileName)
  {
    v285 = 0;
    objc_msgSend_addImageBasedLightingWithFileName_error_(v8, v9, iblFileName, &v285, v10);
    v13 = v285;
    if (v13)
    {
      v14 = v13;
      v15 = _mxi_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_msgSend_description(v14, v16, v17, v18, v19);
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&dword_22F9C3000, v15, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:880] %@", buf, 0xCu);
      }

      if (a5)
      {
        v21 = v14;
        v22 = 0;
        *a5 = v14;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_54;
    }
  }

  *__p = 0u;
  v293 = 0u;
  v290 = 0u;
  *v291 = 0u;
  *buf = 0u;
  *v289 = 0u;
  sub_22F9CC484(buf, self->_numVertices);
  sub_22F9CC4B4(&v289[1], self->_numVertices);
  sub_22F9CC4E4(v291, self->_numTriangles);
  sub_22F9C7754(&__p[1], self->_numTriangles);
  v23 = *buf;
  v28 = objc_msgSend_vertexPositions(self, v24, v25, v26, v27);
  v29 = v28;
  v34 = objc_msgSend_contents(v28, v30, v31, v32, v33);
  memcpy(v23, v34, 16 * self->_numVertices);

  v35 = v289[1];
  v40 = objc_msgSend_vertexUVs(self, v36, v37, v38, v39);
  v41 = v40;
  v46 = objc_msgSend_contents(v40, v42, v43, v44, v45);
  memcpy(v35, v46, 8 * self->_numVertices);

  v47 = v291[0];
  v52 = objc_msgSend_triangleIndices(self, v48, v49, v50, v51);
  v53 = v52;
  v58 = objc_msgSend_contents(v52, v54, v55, v56, v57);
  memcpy(v47, v58, 12 * self->_numTriangles);

  v59 = __p[1];
  v64 = objc_msgSend_triangleSliceIndices(self, v60, v61, v62, v63);
  v65 = v64;
  v70 = objc_msgSend_contents(v64, v66, v67, v68, v69);
  memcpy(v59, v70, 4 * self->_numTriangles);

  v284 = 0;
  objc_msgSend_addMeshWithMXIGeometry_error_(v8, v71, buf, &v284, v72);
  v73 = v284;
  if (!v73)
  {
    if (self->_colorTexture)
    {
      v85 = objc_msgSend_trimmedColorTexture(self, v74, v75, v76, v77);
      normalTexture = self->_normalTexture;
      pbrTextures = self->_pbrTextures;
      materialDescriptor = self->_materialDescriptor;
      v283 = 0;
      objc_msgSend_addMaterialsWithColorTextures_normalTexture_pbrTextures_pbrMaterialDescriptor_depthTesselated_error_(v8, v89, v85, normalTexture, pbrTextures, materialDescriptor, 0, &v283);
      v14 = v283;

      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      colorTextures = self->_colorTextures;
      if (!colorTextures)
      {
        v101 = _mxi_log();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          *v286 = 0;
          _os_log_impl(&dword_22F9C3000, v101, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:924] Texture not available", v286, 2u);
        }

LABEL_28:
        v102 = objc_msgSend_valueForKey_(v11, v90, @"serielize_option_generate_thumbnail", v91, v92);
        v105 = objc_msgSend_parseBool_defaultValue_(MXIUtilities, v103, v102, 1, v104);

        if (v105)
        {
          v281 = 0;
          v109 = objc_msgSend_createThumbnailWithError_(self, v106, &v281, v107, v108);
          v110 = v281;
          if (v110)
          {
            v14 = v110;
            v115 = _mxi_log();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              v120 = objc_msgSend_description(v14, v116, v117, v118, v119);
              *v286 = 138412290;
              v287 = v120;
              _os_log_impl(&dword_22F9C3000, v115, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:936] Failed generating thumbnail: %@", v286, 0xCu);
            }

            v121 = a5 == 0;

LABEL_33:
            if (!v121)
            {
              v122 = v14;
              *a5 = v14;
            }

            goto LABEL_36;
          }

          if (v109)
          {
            v123 = objc_msgSend_cgColorSpaceName(self, v111, v112, v113, v114);
            v124 = image::toPNG(v109, v123);
            if (!v124)
            {
              v265 = _mxi_log();
              if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
              {
                v270 = objc_msgSend_description(0, v266, v267, v268, v269);
                *v286 = 138412290;
                v287 = v270;
                _os_log_impl(&dword_22F9C3000, v265, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:942] Failed compressing thumbnail: %@", v286, 0xCu);
              }

              v280 = 0;
              objc_msgSend_addThumbnailData_error_(v8, v271, 0, &v280, v272);
              v273 = v280;
              if (v273)
              {
                v14 = v273;
                v274 = _mxi_log();
                if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
                {
                  v279 = objc_msgSend_description(v14, v275, v276, v277, v278);
                  *v286 = 138412290;
                  v287 = v279;
                  _os_log_impl(&dword_22F9C3000, v274, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:944] Failed writing thumbnail data: %@", v286, 0xCu);
                }

                v121 = a5 == 0;

                goto LABEL_33;
              }
            }
          }
        }

        objc_msgSend_addStringValue_forKey_(v8, v106, @"Root", @"defaultPrim", v108);
        objc_msgSend_addStringValue_forKey_(v8, v125, @"Y", @"upAxis", v126);
        objc_msgSend_addDoubleValue_forKey_(v8, v127, @"metersPerUnit", v128, v129, 1.0);
        objc_msgSend_addIntValue_forKey_(v8, v130, 10, @"version", v131);
        v136 = objc_msgSend_type(self, v132, v133, v134, v135);
        objc_msgSend_addIntValue_forKey_(v8, v137, v136, @"mxi_type", v138);
        objc_msgSend_verticalFOV(self, v139, v140, v141, v142);
        objc_msgSend_addFloatValue_forKey_(v8, v143, @"vertical_fov", v144, v145);
        objc_msgSend_effectiveVerticalFOV(self, v146, v147, v148, v149);
        objc_msgSend_addFloatValue_forKey_(v8, v150, @"effective_vertical_fov", v151, v152);
        objc_msgSend_aspectRatio(self, v153, v154, v155, v156);
        objc_msgSend_addFloatValue_forKey_(v8, v157, @"aspect_ratio", v158, v159);
        objc_msgSend_effectiveAspectRatio(self, v160, v161, v162, v163);
        objc_msgSend_addFloatValue_forKey_(v8, v164, @"effective_aspect_ratio", v165, v166);
        objc_msgSend_depthRange(self, v167, v168, v169, v170);
        objc_msgSend_addFloatValue_forKey_(v8, v171, @"min_depth", v172, v173);
        objc_msgSend_depthRange(self, v174, v175, v176, v177);
        LODWORD(v179) = v178;
        objc_msgSend_addFloatValue_forKey_(v8, v180, @"max_depth", v181, v182, v179);
        v187 = objc_msgSend_resolutionWidth(self, v183, v184, v185, v186);
        objc_msgSend_addIntValue_forKey_(v8, v188, v187, @"resolution_width", v189);
        v194 = objc_msgSend_resolutionHeight(self, v190, v191, v192, v193);
        objc_msgSend_addIntValue_forKey_(v8, v195, v194, @"resolution_height", v196);
        v201 = objc_msgSend_numLayers(self, v197, v198, v199, v200);
        objc_msgSend_addIntValue_forKey_(v8, v202, v201, @"num_layers", v203);
        v208 = objc_msgSend_colorPrimaries(self, v204, v205, v206, v207);
        objc_msgSend_addIntValue_forKey_(v8, v209, v208, @"color_primaries", v210);
        isPremultipliedAlpha = objc_msgSend_isPremultipliedAlpha(self, v211, v212, v213, v214);
        objc_msgSend_addIntValue_forKey_(v8, v216, isPremultipliedAlpha, @"premultiplied_alpha", v217);
        v222 = objc_msgSend_numOpaqueTriangles(self, v218, v219, v220, v221);
        objc_msgSend_addIntValue_forKey_(v8, v223, v222, @"num_opaque_triangles", v224);
        objc_msgSend_modelToWorldTransform(self, v225, v226, v227, v228);
        objc_msgSend_addModelToWorldTransform_(v8, v229, v230, v231, v232);
        v237 = objc_msgSend_userdata(self, v233, v234, v235, v236);
        v238 = v237 == 0;

        if (!v238)
        {
          v243 = objc_msgSend_userdata(self, v239, v240, v241, v242);
          objc_msgSend_addStringValue_forKey_(v8, v244, v243, @"userdata", v245);
        }

        v246 = objc_msgSend_attributes(self, v239, v240, v241, v242);
        v251 = objc_msgSend_count(v246, v247, v248, v249, v250) == 0;

        if (!v251)
        {
          v256 = objc_msgSend_attributes(self, v252, v253, v254, v255);
          v257 = sub_22F9CAB90(v256, a5);

          v261 = objc_msgSend_base64EncodedStringWithOptions_(v257, v258, 0, v259, v260);
          objc_msgSend_addStringValue_forKey_(v8, v262, v261, @"attributes", v263);
        }

        objc_msgSend_package(v8, v252, v253, v254, v255);
        v14 = 0;
        v22 = 1;
        goto LABEL_46;
      }

      v282 = 0;
      objc_msgSend_addMaterialsWithColorTextures_depthTesselated_error_(v8, v74, colorTextures, 0, &v282);
      v14 = v282;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    v94 = _mxi_log();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      v99 = objc_msgSend_description(v14, v95, v96, v97, v98);
      *v286 = 138412290;
      v287 = v99;
      _os_log_impl(&dword_22F9C3000, v94, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:927] %@", v286, 0xCu);
    }

    if (a5)
    {
      v100 = v14;
      goto LABEL_24;
    }

LABEL_36:
    v22 = 0;
    goto LABEL_46;
  }

  v14 = v73;
  v78 = _mxi_log();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    v83 = objc_msgSend_description(v14, v79, v80, v81, v82);
    *v286 = 138412290;
    v287 = v83;
    _os_log_impl(&dword_22F9C3000, v78, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:907] %@", v286, 0xCu);
  }

  if (!a5)
  {
    goto LABEL_36;
  }

  v84 = v14;
LABEL_24:
  v22 = 0;
  *a5 = v14;
LABEL_46:
  if (__p[1])
  {
    *&v293 = __p[1];
    operator delete(__p[1]);
  }

  if (v291[0])
  {
    v291[1] = v291[0];
    operator delete(v291[0]);
  }

  if (v289[1])
  {
    *&v290 = v289[1];
    operator delete(v289[1]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_54:

  return v22;
}

- (BOOL)writeToURL:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _MXISignpostLogSystem();
  spid = _MXISignpostCreate(v10);
  v11 = _MXISignpostLogSystem();
  v87 = 0u;
  v88 = 0u;
  core::get_info(&v87);
  v12 = v11;
  v13 = v12;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 134218752;
    v90 = v87;
    v91 = 2048;
    v92 = *(&v87 + 1);
    v93 = 2048;
    v94 = v88;
    v95 = 2048;
    v96 = *(&v88 + 1);
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MXI_WRITE_TO_URL", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
  }

  if (a5)
  {
    *a5 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v19 = CFPreferencesCopyMultiple(0, @"com.apple.mxi", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v19)
  {
    if (v9)
    {
LABEL_8:
      v20 = objc_msgSend_mutableCopy(v9, v15, v16, v17, v18);
      objc_msgSend_addEntriesFromDictionary_(v20, v21, v19, v22, v23);

      goto LABEL_11;
    }
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v20 = v19;
LABEL_11:
  v28 = objc_msgSend_pathExtension(v8, v24, v25, v26, v27);
  if (objc_msgSend_isEqualToString_(v28, v29, @"mxi", v30, v31))
  {
    v36 = objc_msgSend_path(v8, v32, v33, v34, v35);
    v86 = 0;
    v38 = objc_msgSend_writeToFile_options_error_(self, v37, v36, v20, &v86);
    v39 = v86;

    if (v38)
    {
      v42 = v39;
      goto LABEL_29;
    }

    v85 = v39;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v40, &v85, @"Failed writing to file.", v41);
    v58 = v85;
    goto LABEL_27;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = v43;
  if (self->_colorPrimaries == 1)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, @"colorPrimariesSRGB", @"colorPrimaries", v45);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v43, v44, @"colorPrimariesP3", @"colorPrimaries", v45);
  }

  if (!objc_msgSend_isEqualToString_(v28, v46, @"mxibundle", v47, v48))
  {
    if (objc_msgSend_isEqualToString_(v28, v49, @"usdz", v50, v51))
    {
      v61 = [MXISceneUSDZWriter alloc];
      v66 = objc_msgSend_initWithUSDZFileURL_options_(v61, v62, v8, v39, v63);
      if (v66)
      {
        v82 = 0;
        objc_msgSend_doWrite_options_error_(self, v64, v66, v39, &v82);
        v42 = v82;

        goto LABEL_28;
      }

      v81 = 0;
      objc_msgSend_fillError_withDescription_(MXIInternalError, v64, &v81, @"Failed ot create USDZ writer.", v65);
      v58 = v81;
    }

    else
    {
      v80 = 0;
      objc_msgSend_fillError_withFormattedDescription_(MXIUserError, v59, &v80, @"Unsupported output format %@", v60, v28);
      v58 = v80;
    }

LABEL_27:
    v42 = v58;
    goto LABEL_28;
  }

  v52 = [MXISceneUSDZWriter alloc];
  v57 = objc_msgSend_initWithUSDBundleFileURL_options_(v52, v53, v8, v39, v54);
  if (!v57)
  {
    v83 = 0;
    objc_msgSend_fillError_withDescription_(MXIInternalError, v55, &v83, @"Failed ot create USDZ writer.", v56);
    v58 = v83;
    goto LABEL_27;
  }

  v84 = 0;
  objc_msgSend_doWrite_options_error_(self, v55, v57, v39, &v84);
  v42 = v84;

LABEL_28:
LABEL_29:
  v67 = _mxi_log();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v90 = v8;
    v91 = 2112;
    v92 = v20;
    _os_log_impl(&dword_22F9C3000, v67, OS_LOG_TYPE_DEBUG, "[MXI.framework] [MXIScene] wrote to URL %@ with options %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (v42)
  {
    v68 = _mxi_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v73 = objc_msgSend_description(v42, v69, v70, v71, v72);
      *buf = 138412290;
      v90 = v73;
      _os_log_impl(&dword_22F9C3000, v68, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:1056] %@", buf, 0xCu);
    }

    if (a5 && !*a5)
    {
      v74 = v42;
      *a5 = v42;
    }
  }

  else
  {
    v75 = _MXISignpostLogSystem();
    v87 = 0u;
    v88 = 0u;
    core::get_info(&v87);
    v76 = v75;
    v77 = v76;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
    {
      *buf = 134218752;
      v90 = v87;
      v91 = 2048;
      v92 = *(&v87 + 1);
      v93 = 2048;
      v94 = v88;
      v95 = 2048;
      v96 = *(&v88 + 1);
      _os_signpost_emit_with_name_impl(&dword_22F9C3000, v77, OS_SIGNPOST_INTERVAL_END, spid, "MXI_WRITE_TO_URL", "process-unwired-current  %llu MB process-unwired-peak %llu MB system-wired-current %llu system-unwired-current %llu", buf, 0x2Au);
    }
  }

  return v42 == 0;
}

- (id)attribute:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_attributes(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, v4, v11, v12);

  return v13;
}

+ (id)getThumbnailData:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_pathExtension(v3, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"mxibundle", v10, v11);

  if (isEqualToString)
  {
    v17 = objc_msgSend_URLByAppendingPathComponent_(v3, v13, @"thumbnail.png", v15, v16);
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19, v20, v21);
    v27 = objc_msgSend_path(v17, v23, v24, v25, v26);
    isReadableFileAtPath = objc_msgSend_isReadableFileAtPath_(v22, v28, v27, v29, v30);

    if (isReadableFileAtPath)
    {
      v35 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x277CBEA90], v32, v17, v33, v34);
LABEL_10:
      v54 = v35;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v36 = objc_msgSend_pathExtension(v3, v13, v14, v15, v16);
  v40 = objc_msgSend_isEqualToString_(v36, v37, @"mxi", v38, v39);

  if (!v40)
  {
    v56 = [MXISceneUSDZReader alloc];
    v60 = objc_msgSend_initWithUSDZFileURL_(v56, v57, v3, v58, v59);
    v17 = v60;
    if (v60)
    {
      v35 = objc_msgSend_getThumbnailDataWithError_(v60, v61, 0, v62, v63);
      goto LABEL_10;
    }

    v64 = _mxi_log();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v64, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIScene.mm:1092] ", buf, 2u);
    }

    goto LABEL_14;
  }

  v45 = objc_msgSend_path(v3, v41, v42, v43, v44);
  v46 = v45;
  v51 = objc_msgSend_UTF8String(v46, v47, v48, v49, v50);
  v69 = 0;
  core::Reader::Create(0, v51, &v69, buf);
  v17 = v69;

  if (!*buf)
  {
LABEL_14:
    v54 = 0;
    goto LABEL_19;
  }

  v68 = v17;
  v52 = (*(**buf + 16))(*buf, 1953000802, 0, &v68);
  v53 = v68;

  if (v52)
  {
    v67 = v53;
    v54 = (*(**buf + 32))(*buf, 1953000802, &v67);
    v55 = v67;

    v53 = v55;
  }

  else
  {
    v54 = 0;
  }

  v65 = *buf;
  *buf = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v17 = v53;
LABEL_19:

  return v54;
}

- (int64_t)textureCompressionType
{
  if (objc_msgSend_count(self->_colorTextures, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_objectAtIndex_(self->_colorTextures, v6, 0, v8, v9);
    v15 = objc_msgSend_pixelFormat(v10, v11, v12, v13, v14);
  }

  else
  {
    result = self->_colorTexture;
    if (!result)
    {
      return result;
    }

    v15 = objc_msgSend_pixelFormat(result, v6, v7, v8, v9);
  }

  if ((v15 - 186) > 0x20)
  {
    return 0;
  }

  else
  {
    return qword_22FA07CB0[v15 - 186];
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

- (__n128)setModelToWorldTransform:(__n128)a3
{
  result[11] = a2;
  result[12] = a3;
  result[13] = a4;
  result[14] = a5;
  return result;
}

- (MXIScene)initWithPosition:(const void *)a3 uvs:(const void *)a4 triangles:(const void *)a5 slices:(const void *)a6 colorTextures:(id)a7 colorTexture:(id)a8 colorTextureSlices:(unsigned int)a9 normalTexture:(id)a10 pbrTextures:(id)a11 pbrMaterialDescriptor:(id)a12 iblFileName:(id)a13
{
  v18 = a7;
  v84 = a8;
  v83 = a10;
  v82 = a11;
  v19 = v18;
  v81 = a12;
  v80 = a13;
  v85.receiver = self;
  v85.super_class = MXIScene;
  v24 = [(MXIScene *)&v85 init];
  if (v24)
  {
    if (v84)
    {
      v27 = objc_msgSend_device(v84, v20, v21, v22, v23);
      v28 = a6;
LABEL_6:
      v37 = *(a3 + 1) - *a3;
      v38 = -1431655765 * ((*(a5 + 1) - *a5) >> 2);
      *(v24 + 2) = v37 >> 4;
      *(v24 + 12) = v38;
      v39 = objc_msgSend_newBufferWithLength_options_(v27, v25, v37, 0, v26);
      v40 = *(v24 + 3);
      *(v24 + 3) = v39;

      v43 = objc_msgSend_newBufferWithLength_options_(v27, v41, *(a4 + 1) - *a4, 0, v42);
      v44 = *(v24 + 4);
      *(v24 + 4) = v43;

      v47 = objc_msgSend_newBufferWithLength_options_(v27, v45, *(a5 + 1) - *a5, 0, v46);
      v48 = *(v24 + 6);
      *(v24 + 6) = v47;

      v51 = objc_msgSend_newBufferWithLength_options_(v27, v49, v28[1] - *v28, 0, v50);
      v52 = *(v24 + 5);
      *(v24 + 5) = v51;

      v57 = objc_msgSend_contents(*(v24 + 3), v53, v54, v55, v56);
      memcpy(v57, *a3, *(a3 + 1) - *a3);
      v62 = objc_msgSend_contents(*(v24 + 4), v58, v59, v60, v61);
      memcpy(v62, *a4, *(a4 + 1) - *a4);
      v67 = objc_msgSend_contents(*(v24 + 6), v63, v64, v65, v66);
      memcpy(v67, *a5, *(a5 + 1) - *a5);
      v72 = objc_msgSend_contents(*(v24 + 5), v68, v69, v70, v71);
      memcpy(v72, *v28, v28[1] - *v28);
      objc_storeStrong(v24 + 7, a8);
      objc_storeStrong(v24 + 8, a7);
      objc_storeStrong(v24 + 9, a10);
      objc_storeStrong(v24 + 10, a11);
      objc_storeStrong(v24 + 11, a12);
      objc_storeStrong(v24 + 12, a13);
      *(v24 + 26) = a9;
      v73 = MEMORY[0x277D860B8];
      v74 = *(MEMORY[0x277D860B8] + 16);
      *(v24 + 11) = *MEMORY[0x277D860B8];
      *(v24 + 12) = v74;
      v75 = *(v73 + 48);
      *(v24 + 13) = *(v73 + 32);
      *(v24 + 14) = v75;

      goto LABEL_7;
    }

    if (objc_msgSend_count(v18, v20, v21, v22, v23))
    {
      v77 = v18;
      v32 = objc_msgSend_objectAtIndexedSubscript_(v18, v29, 0, v30, v31);
      objc_msgSend_device(v32, v33, v34, v35, v36);
      v27 = v28 = a6;

      v19 = v77;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v24;
}

@end