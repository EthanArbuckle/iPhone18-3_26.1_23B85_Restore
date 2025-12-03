@interface MXISceneUSDZReader
- (MXIGeometry)copyMXIGeometryWithError:(SEL)error;
- (MXISceneUSDZReader)initWithUSDZFileURL:(id)l;
- (double)getDoubleValueForKey:(id)key default:(double)default;
- (float)getFloatValueForKey:(id)key default:(float)default;
- (float32x4_t)getModelToWorldTransformWithDefault:(uint64_t)default;
- (id)copyTexturesWithDevice:(id)device error:(id *)error;
- (id)getStringValueForKey:(id)key;
- (id)getThumbnailDataInternal:(id)internal;
- (id)getThumbnailDataWithError:(id *)error;
- (int)getIntValueForKey:(id)key default:(int)default;
- (void)getDouble4x4ValueForKey:(_OWORD *)key@<X3> default:(_OWORD *)default@<X8>;
@end

@implementation MXISceneUSDZReader

- (MXISceneUSDZReader)initWithUSDZFileURL:(id)l
{
  v253 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v248.receiver = self;
  v248.super_class = MXISceneUSDZReader;
  v8 = [(MXISceneUSDZReader *)&v248 init];
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = objc_msgSend_pathExtension(lCopy, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"usdz", v11, v12);

  if (isEqualToString)
  {
    v18 = lCopy;
  }

  else
  {
    v20 = objc_msgSend_pathExtension(lCopy, v14, v15, v16, v17);
    v24 = objc_msgSend_isEqualToString_(v20, v21, @"mxibundle", v22, v23);

    if (!v24)
    {
      usdURL = v8->_usdURL;
      v8->_usdURL = 0;
      goto LABEL_9;
    }

    v28 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v25, @"scene.usdc", v26, v27);
    v29 = v8->_usdURL;
    v8->_usdURL = v28;

    v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v30, v31, v32, v33);
    v39 = objc_msgSend_path(v8->_usdURL, v35, v36, v37, v38);
    isReadableFileAtPath = objc_msgSend_isReadableFileAtPath_(v34, v40, v39, v41, v42);

    if (isReadableFileAtPath)
    {
      goto LABEL_10;
    }

    v18 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v44, @"scene.usda", v45, v46);
  }

  usdURL = v8->_usdURL;
  v8->_usdURL = v18;
LABEL_9:

LABEL_10:
  v47 = objc_alloc(MEMORY[0x277D778A8]);
  v48 = v8->_usdURL;
  v247 = 0;
  inited = objc_msgSend_initSceneFromURL_error_(v47, v49, v48, &v247, v50);
  v52 = v247;
  scene = v8->_scene;
  v8->_scene = inited;

  if (!v52)
  {
    v66 = objc_alloc(MEMORY[0x277D77888]);
    v236 = objc_msgSend_initWithString_(v66, v67, @"/Root", v68, v69);
    v73 = objc_msgSend_nodeAtPath_(v8->_scene, v70, v236, v71, v72);
    rootNode = v8->_rootNode;
    v8->_rootNode = v73;

    v75 = objc_alloc(MEMORY[0x277D77888]);
    v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v76, @"/Root/%@", v77, v78, @"MXIMesh");
    v238 = objc_msgSend_initWithString_(v75, v80, v79, v81, v82);

    v86 = objc_msgSend_nodeAtPath_(v8->_scene, v83, v238, v84, v85);
    meshNode = v8->_meshNode;
    v8->_meshNode = v86;

    v88 = objc_alloc(MEMORY[0x277D77888]);
    v92 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v89, @"/Root/%@", v90, v91, @"MXIMaterial");
    v237 = objc_msgSend_initWithString_(v88, v93, v92, v94, v95);

    v99 = objc_msgSend_nodeAtPath_(v8->_scene, v96, v237, v97, v98);
    materialNode = v8->_materialNode;
    v8->_materialNode = v99;

    v101 = v8->_meshNode;
    if (!v101 || !v8->_materialNode)
    {
      v8->_meshNode = 0;

      materialScopeNode = v8->_materialScopeNode;
      location = &v8->_materialScopeNode;
      v8->_materialScopeNode = 0;

      v107 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v103, v104, v105, v106);
      materialNodePathToSliceIndex = v8->_materialNodePathToSliceIndex;
      v8->_materialNodePathToSliceIndex = v107;

      v113 = objc_msgSend_rootNode(v8->_scene, v109, v110, v111, v112);
      v242 = objc_msgSend_childIterator(v113, v114, v115, v116, v117);

      v126 = objc_msgSend_nextObject(v242, v118, v119, v120, v121);
      if (v126)
      {
        v241 = *MEMORY[0x277D77968];
        v240 = *MEMORY[0x277D77970];
        v235 = vdupq_n_s64(1uLL);
        while (1)
        {
          v131 = objc_msgSend_type(v126, v122, v123, v124, v125);
          if (v241 != v131)
          {
            goto LABEL_23;
          }

          v132 = objc_msgSend_path(v126, v127, v128, v129, v130);
          v137 = objc_msgSend_stringValue(v132, v133, v134, v135, v136);
          if ((objc_msgSend_containsString_(v137, v138, @"MXIMesh", v139, v140) & 1) == 0)
          {
            break;
          }

          v141 = v8->_meshNode == 0;

          if (v141)
          {
            v146 = v126;
            v147 = v8->_meshNode;
            v8->_meshNode = v146;
LABEL_33:

            goto LABEL_34;
          }

LABEL_24:
          v147 = objc_msgSend_type(v126, v142, v143, v144, v145);
          if (v240 != v147)
          {
            goto LABEL_33;
          }

          v152 = objc_msgSend_path(v126, v148, v149, v150, v151);
          v157 = objc_msgSend_stringValue(v152, v153, v154, v155, v156);
          if ((objc_msgSend_containsString_(v157, v158, @"MXIMaterialScope", v159, v160) & 1) == 0)
          {

            goto LABEL_33;
          }

          v161 = *location == 0;

          if (v161)
          {
            objc_storeStrong(location, v126);
            v147 = objc_msgSend_childIterator(*location, v166, v167, v168, v169);
            v177 = objc_msgSend_nextObject(v147, v170, v171, v172, v173);
            v178 = v235;
            if (v177)
            {
              v179 = 0;
              v245 = 0u;
              do
              {
                *buf = 0;
                v246 = 0;
                v180 = objc_msgSend_stringByAppendingString_(@"MXIMaterial", v174, @"_atlas_%02d_%02d", v175, v176);
                v185 = objc_msgSend_path(v177, v181, v182, v183, v184);
                v190 = objc_msgSend_stringValue(v185, v186, v187, v188, v189);
                v195 = objc_msgSend_lastPathComponent(v190, v191, v192, v193, v194);
                v196 = v195;
                v201 = objc_msgSend_UTF8String(v195, v197, v198, v199, v200);
                v202 = v180;
                v207 = objc_msgSend_UTF8String(v180, v203, v204, v205, v206);
                sscanf(v201, v207, buf, &v246);

                v244 = __PAIR64__(v246, *buf);
                v211 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v208, v179, v209, v210);
                v212 = v8->_materialNodePathToSliceIndex;
                v217 = objc_msgSend_path(v177, v213, v214, v215, v216);
                v222 = objc_msgSend_stringValue(v217, v218, v219, v220, v221);
                objc_msgSend_setObject_forKeyedSubscript_(v212, v223, v211, v222, v224);

                v229 = objc_msgSend_nextObject(v147, v225, v226, v227, v228);

                *(&v230 + 1) = *(&v245 + 1);
                *&v230 = vmax_u32(*&v245, v244);
                v245 = v230;
                v179 = (v179 + 1);
                v177 = v229;
              }

              while (v229);
              v231 = vadd_s32(*&v230, 0x100000001);
              v232.i64[0] = v231.u32[0];
              v232.i64[1] = v231.u32[1];
              v178 = v232;
            }

            *&v8->_textureArrayLength = v178;
            goto LABEL_33;
          }

LABEL_34:
          v233 = objc_msgSend_nextObject(v242, v162, v163, v164, v165);

          v126 = v233;
          if (!v233)
          {
            goto LABEL_35;
          }
        }

LABEL_23:
        goto LABEL_24;
      }

LABEL_35:
    }

LABEL_37:
    v65 = v8;
    goto LABEL_38;
  }

  v54 = _mxi_log();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v59 = objc_msgSend_path(v8->_usdURL, v55, v56, v57, v58);
    v64 = objc_msgSend_localizedDescription(v52, v60, v61, v62, v63);
    *buf = 138412546;
    v250 = v59;
    v251 = 2112;
    v252 = v64;
    _os_log_impl(&dword_22F9C3000, v54, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:77] [USDReader] failed to initialize USKScene with url %@: %@", buf, 0x16u);
  }

  v65 = 0;
LABEL_38:

  return v65;
}

- (MXIGeometry)copyMXIGeometryWithError:(SEL)error
{
  memset(__p, 0, sizeof(__p));
  *v196 = 0u;
  *v194 = 0u;
  memset(v195, 0, sizeof(v195));
  if (a4)
  {
    *a4 = 0;
  }

  meshNode = self->_meshNode;
  if (meshNode)
  {
    v10 = objc_msgSend_properties(meshNode, error, a4, v4, v5);
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"points", v12, v13);

    if (!v14 || (objc_msgSend_data(v14, v15, v16, v17, v18), (v23 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend_data(v14, v19, v20, v21, v22), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v24, v25, v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v30 = *MEMORY[0x277D77908], v29, v24, v23, v30 != v29))
    {
      v35 = _mxi_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v35, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:132] USDZ has no points property", v193, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v36, a4, @"USDZ has no points property", v37);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_10;
    }

    v40 = objc_msgSend_properties(self->_meshNode, v31, v32, v33, v34);
    v44 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"primvars:uv", v42, v43);

    if (!v44 || (objc_msgSend_data(v44, v45, v46, v47, v48), (v53 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend_data(v44, v49, v50, v51, v52), v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v54, v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), v60 = *MEMORY[0x277D778F8], v59, v54, v53, v60 != v59))
    {
      v65 = _mxi_log();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v65, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:138] USDZ has no primvars uv property", v193, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v66, a4, @"USDZ has no primvars uv property", v67);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_29;
    }

    v68 = objc_msgSend_properties(self->_meshNode, v61, v62, v63, v64);
    v72 = objc_msgSend_objectForKeyedSubscript_(v68, v69, @"faceVertexIndices", v70, v71);

    if (!v72 || (objc_msgSend_data(v72, v73, v74, v75, v76), (v81 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend_data(v72, v77, v78, v79, v80), v82 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v82, v83, v84, v85, v86), v87 = objc_claimAutoreleasedReturnValue(), v88 = *MEMORY[0x277D77920], v87, v82, v81, v88 != v87))
    {
      v93 = _mxi_log();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v93, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:144] USDZ has no face vertex indices property", v193, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v94, a4, @"USDZ has no face vertex indices property", v95);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_36;
    }

    v96 = objc_msgSend_properties(self->_meshNode, v89, v90, v91, v92);
    v100 = objc_msgSend_objectForKeyedSubscript_(v96, v97, @"faceSliceIndices", v98, v99);

    if (v100 && (objc_msgSend_data(v100, v101, v102, v103, v104), (v109 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_data(v100, v105, v106, v107, v108), v110 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v110, v111, v112, v113, v114), v115 = objc_claimAutoreleasedReturnValue(), v115, v110, v109, v88 == v115))
    {
      v123 = objc_msgSend_data(v14, v116, v117, v118, v119);
      v128 = objc_msgSend_arraySize(v123, v124, v125, v126, v127);
      v133 = objc_msgSend_data(v44, v129, v130, v131, v132);
      v138 = objc_msgSend_arraySize(v133, v134, v135, v136, v137);

      if (v128 == v138)
      {
        v143 = objc_msgSend_data(v72, v139, v140, v141, v142);
        v148 = objc_msgSend_arraySize(v143, v144, v145, v146, v147);

        if (0xAAAAAAAAAAAAAAABLL * v148 < 0x5555555555555556)
        {
          v159 = objc_msgSend_data(v14, v149, v150, v151, v152);
          v164 = objc_msgSend_arraySize(v159, v160, v161, v162, v163);

          v169 = objc_msgSend_data(v72, v165, v166, v167, v168);
          v174 = objc_msgSend_arraySize(v169, v170, v171, v172, v173);

          sub_22F9CC484(v194, v164);
          v179 = objc_msgSend_data(v14, v175, v176, v177, v178);
          objc_msgSend_float3Array_maxCount_(v179, v180, v194[0], v164, v181);

          sub_22F9CC4B4(&v195[1], v164);
          v186 = objc_msgSend_data(v44, v182, v183, v184, v185);
          objc_msgSend_float2Array_maxCount_(v186, v187, v195[1], v164, v188);

          sub_22F9CC4E4(v196, v174 / 3);
          objc_msgSend_intArray_maxCount_(v72, v189, v196[0], 3 * (v174 / 3), v190);
          sub_22F9C7754(&__p[1], v174 / 3);
          objc_msgSend_intArray_maxCount_(v100, v191, __p[1], v174 / 3, v192);
          *&retstr->var2.var0 = *v194;
          retstr->var2.var2 = v195[0];
          v194[1] = 0;
          v195[0] = 0;
          v194[0] = 0;
          *&retstr->var3.var0 = *&v195[1];
          retstr->var3.var2 = v195[3];
          memset(&v195[1], 0, 24);
          *&retstr[1].var2.var0 = *v196;
          retstr[1].var2.var2 = __p[0];
          v196[1] = 0;
          __p[0] = 0;
          v196[0] = 0;
          *&retstr[1].var3.var0 = *&__p[1];
          retstr[1].var3.var2 = __p[3];
          memset(&__p[1], 0, 24);
          goto LABEL_44;
        }

        v153 = _mxi_log();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          *v193 = 0;
          _os_log_impl(&dword_22F9C3000, v153, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:157] USDZ face indices is not a multiple of 3", v193, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v154, a4, @"USDZ face indices is not a multiple of 3", v155);
      }

      else
      {
        v156 = _mxi_log();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          *v193 = 0;
          _os_log_impl(&dword_22F9C3000, v156, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:154] USDZ points and uv mismatched sizes", v193, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v157, a4, @"USDZ points and uv mismatched sizes", v158);
      }
    }

    else
    {
      v120 = _mxi_log();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v120, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:150] USDZ has no face slice indices property", v193, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v121, a4, @"USDZ has no face slice indices property", v122);
    }

    *&retstr[1].var2.var2 = 0u;
    *&retstr[1].var3.var1 = 0u;
    *&retstr->var3.var1 = 0u;
    *&retstr[1].var2.var0 = 0u;
    *&retstr->var2.var0 = 0u;
    *&retstr->var2.var2 = 0u;
LABEL_44:

LABEL_36:
LABEL_29:

LABEL_10:
    goto LABEL_14;
  }

  v38 = _mxi_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *v193 = 0;
    _os_log_impl(&dword_22F9C3000, v38, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:127] No mesh node", v193, 2u);
  }

  *&retstr[1].var2.var2 = 0u;
  *&retstr[1].var3.var1 = 0u;
  *&retstr->var3.var1 = 0u;
  *&retstr[1].var2.var0 = 0u;
  *&retstr->var2.var0 = 0u;
  *&retstr->var2.var2 = 0u;
LABEL_14:
  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }

  if (v196[0])
  {
    v196[1] = v196[0];
    operator delete(v196[0]);
  }

  if (v195[1])
  {
    v195[2] = v195[1];
    operator delete(v195[1]);
  }

  result = v194[0];
  if (v194[0])
  {
    v194[1] = v194[0];
    operator delete(v194[0]);
  }

  return result;
}

- (id)copyTexturesWithDevice:(id)device error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_alloc(MEMORY[0x277D77888]);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"/Root/%@/RealityKitTexture2DArray", v9, v10, @"MXIMaterial");
  v15 = objc_msgSend_initWithString_(v7, v12, v11, v13, v14);

  v19 = objc_msgSend_nodeAtPath_(self->_scene, v16, v15, v17, v18);
  v24 = v19;
  if (v19)
  {
    v25 = objc_msgSend_properties(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"inputs:file", v27, v28);

    if (v29 && (objc_msgSend_resourcePath(v29, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
    {
      v39 = MEMORY[0x277D77898];
      v40 = objc_msgSend_resourcePath(v29, v35, v36, v37, v38);
      v44 = objc_msgSend_resourceWithResourcePath_(v39, v41, v40, v42, v43);

      if (v44)
      {
        v49 = objc_msgSend_dataNoCopy(v44, v45, v46, v47, v48);
        IntValueForKey_default = objc_msgSend_getIntValueForKey_default_(self, v50, @"version", 0, v51);
        v53 = v49;
        *&v86 = &unk_28449BD40;
        *(&v86 + 1) = objc_msgSend_bytes(v53, v54, v55, v56, v57);
        v87 = objc_msgSend_length(v49, v58, v59, v60, v61);
        v88 = 0;
        v62 = image::ReadKTX(&v86, deviceCopy, 1, IntValueForKey_default < 3);
        if (!v62)
        {
          v63 = _mxi_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22F9C3000, v63, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:207] Could not read ktx", buf, 2u);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v64, error, @"Could not read ktx", v65);
        }
      }

      else
      {
        v72 = _mxi_log();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v77 = objc_msgSend_resourcePath(v29, v73, v74, v75, v76);
          LODWORD(v86) = 138412290;
          *(&v86 + 4) = v77;
          _os_log_impl(&dword_22F9C3000, v72, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:196] Could not get resource from path: %@", &v86, 0xCu);
        }

        v49 = objc_msgSend_resourcePath(v29, v78, v79, v80, v81);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v82, error, @"Could not get resource from path: %@", v83, v49);
        v62 = 0;
      }
    }

    else
    {
      v66 = _mxi_log();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v86) = 0;
        _os_log_impl(&dword_22F9C3000, v66, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:190] Could not get inputs file property", &v86, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v67, error, @"Could not get inputs file property", v68);
      v62 = 0;
    }
  }

  else
  {
    v69 = _mxi_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v86) = 138412290;
      *(&v86 + 4) = v15;
      _os_log_impl(&dword_22F9C3000, v69, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:184] Could not get texture 2D array from path: %@", &v86, 0xCu);
    }

    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v70, error, @"Could not get texture 2D array from path: %@", v71, v15);
    v62 = 0;
  }

  return v62;
}

- (id)getThumbnailDataInternal:(id)internal
{
  internalCopy = internal;
  v8 = internalCopy;
  if (internalCopy && (objc_msgSend_type(internalCopy, v4, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = *MEMORY[0x277D77930], v9, v9 == v10))
  {
    v16 = MEMORY[0x277D77898];
    v17 = objc_msgSend_resourcePath(v8, v11, v12, v13, v14);
    v21 = objc_msgSend_resourceWithResourcePath_(v16, v18, v17, v19, v20);

    if (v21)
    {
      v26 = MEMORY[0x277CBEA90];
      v27 = objc_msgSend_dataNoCopy(v21, v22, v23, v24, v25);
      v15 = objc_msgSend_dataWithData_(v26, v28, v27, v29, v30);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getThumbnailDataWithError:(id *)error
{
  v5 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_rootNode, a2, @"assetInfo", @"previews:thumbnails:default:defaultImage", v3);
  v11 = objc_msgSend_getThumbnailDataInternal_(self, v6, v5, v7, v8);
  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v13 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v9, @"customLayerData", @"thumbnail", v10);

    v11 = objc_msgSend_getThumbnailDataInternal_(self, v14, v13, v15, v16);
    if (v11)
    {
      v12 = v13;
    }

    else
    {
      v12 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v17, @"thumbnail", v18, v19);

      v11 = objc_msgSend_getThumbnailDataInternal_(self, v20, v12, v21, v22);
    }
  }

  return v11;
}

- (id)getStringValueForKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend_metadataWithKey_(self->_scene, v5, keyCopy, v6, v7);
  v13 = v8;
  v14 = MEMORY[0x277D77938];
  if (v8 && (objc_msgSend_type(v8, v9, v10, v11, v12), v15 = objc_claimAutoreleasedReturnValue(), v16 = *v14, v15, v16 == v15))
  {
    v39 = objc_msgSend_stringValue(v13, v9, v17, v18, v12);
  }

  else
  {
    v19 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v9, @"customLayerData", keyCopy, v12);

    if (v19 && (objc_msgSend_type(v19, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = *v14, v24, v24 == v25))
    {
      v13 = v19;
      objc_msgSend_stringValue(v19, v20, v26, v22, v23);
    }

    else
    {
      v27 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v20, keyCopy, v22, v23);

      if (!v27)
      {
        v38 = 0;
        v13 = 0;
        goto LABEL_14;
      }

      v32 = objc_msgSend_type(v27, v28, v29, v30, v31);
      v33 = *v14;

      if (v32 != v33)
      {
        v38 = 0;
        v13 = v27;
        goto LABEL_14;
      }

      v13 = v27;
      objc_msgSend_stringValue(v27, v34, v35, v36, v37);
    }
    v39 = ;
  }

  v38 = v39;
LABEL_14:

  return v38;
}

- (int)getIntValueForKey:(id)key default:(int)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D77918];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      default = objc_msgSend_intValue(v15, v11, v19, v20, v14);
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (float)getFloatValueForKey:(id)key default:(float)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778E8];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      objc_msgSend_floatValue(v15, v11, v19, v20, v14);
      default = v32;
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (double)getDoubleValueForKey:(id)key default:(double)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778D0];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      objc_msgSend_doubleValue(v15, v11, v19, v20, v14);
      default = v32;
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (void)getDouble4x4ValueForKey:(_OWORD *)key@<X3> default:(_OWORD *)default@<X8>
{
  v44 = a2;
  v10 = objc_msgSend_metadataWithKey_(*(self + 16), v7, v44, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778E0];
  if (v10 && (objc_msgSend_type(v10, v11, v12, v13, v14), v17 = objc_claimAutoreleasedReturnValue(), v18 = *v16, v17, v18 == v17))
  {
    objc_msgSend_double4x4Value(v15, v11, v19, v20, v14);
  }

  else
  {
    v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(*(self + 16), v11, @"customLayerData", v44, v14);

    if (v21 && (objc_msgSend_type(v21, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v27 = *v16, v26, v27 == v26))
    {
      v15 = v21;
      objc_msgSend_double4x4Value(v21, v22, v28, v24, v25);
    }

    else
    {
      v29 = objc_msgSend_customMetadataWithKey_(*(self + 24), v22, v44, v24, v25);

      if (v29 && (objc_msgSend_type(v29, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v35 = *v16, v34, v35 == v34))
      {
        v15 = v29;
        objc_msgSend_double4x4Value(v29, v36, v37, v38, v39);
      }

      else
      {
        v40 = key[5];
        default[4] = key[4];
        default[5] = v40;
        v41 = key[7];
        default[6] = key[6];
        default[7] = v41;
        v42 = key[1];
        *default = *key;
        default[1] = v42;
        v43 = key[3];
        v15 = v29;
        default[2] = key[2];
        default[3] = v43;
      }
    }
  }
}

- (float32x4_t)getModelToWorldTransformWithDefault:(uint64_t)default
{
  v6 = objc_msgSend_properties(*(self + 24), a2, default, a4, a5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"xformOp:transform", v8, v9);

  if (v10)
  {
    v19 = objc_msgSend_data(v10, v11, v12, v13, v14);
    if (v19)
    {
      v20 = objc_msgSend_data(v10, v15, v16, v17, v18);
      v25 = objc_msgSend_type(v20, v21, v22, v23, v24);
      v26 = *MEMORY[0x277D778E0];

      if (v26 == v25)
      {
        v39 = 0u;
        v40 = 0u;
        v31 = objc_msgSend_data(v10, v27, v28, v29, v30);
        v36 = v31;
        if (v31)
        {
          objc_msgSend_double4x4Value(v31, v32, v33, v34, v35);
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
        }

        a6 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
      }
    }
  }

  return a6;
}

@end