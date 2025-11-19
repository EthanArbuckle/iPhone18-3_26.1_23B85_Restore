@interface MXISceneUSDZWriter
- (BOOL)addCombineNode:(id)a3 node:(id *)a4 inputNode:(id)a5 input1:(id)a6 input2:(id)a7 input3:(id)a8 suffix:(id)a9;
- (BOOL)addDoubleValue:(double)a3 forKey:(id)a4;
- (BOOL)addFloatValue:(float)a3 forKey:(id)a4;
- (BOOL)addImageBasedLightingWithFileName:(id)a3 error:(id *)a4;
- (BOOL)addIntValue:(int)a3 forKey:(id)a4;
- (BOOL)addMaterialsWithColorTextures:(id)a3 depthTesselated:(BOOL)a4 error:(id *)a5;
- (BOOL)addMaterialsWithColorTextures:(id)a3 normalTexture:(id)a4 pbrTextures:(id)a5 pbrMaterialDescriptor:(id)a6 depthTesselated:(BOOL)a7 error:(id *)a8;
- (BOOL)addMeshWithMXIGeometry:(const void *)a3 error:(id *)a4;
- (BOOL)addPBRShaderGraphWithMaterialPath:(id)a3 texcoordGetter:(id)a4 indexGetter:(id)a5 PBRSurface:(id *)a6 pbrMaterialDescriptor:(id)a7;
- (BOOL)addSeparateNode:(id)a3 node:(id *)a4 inputNode:(id)a5 separateCount:(unint64_t)a6 suffix:(id)a7;
- (BOOL)addShaderGraphWithColorKTXResource:(id)a3 NormalKTXResource:(id)a4 pbrKTXFilename:(id)a5 pbrMaterialDescriptor:(id)a6 depthTesselated:(BOOL)a7;
- (BOOL)addSimpleMaterialWithColorArrayTextures:(id)a3;
- (BOOL)addSimpleMaterialWithColorTextures:(id)a3;
- (BOOL)addStringValue:(id)a3 forKey:(id)a4;
- (BOOL)addTexture2DArrayWithMaterialPath:(id)a3 ktxFilename:(id)a4 nodeSuffix:(id)a5 texcoordGetter:(id)a6 indexGetter:(id)a7 colorSpace:(id)a8 node:(id *)a9;
- (BOOL)addThumbnailData:(id)a3 error:(id *)a4;
- (BOOL)addUdimMaterialWithColorArrayTextures:(id)a3;
- (BOOL)addUdimMaterialWithColorTextures:(id)a3;
- (BOOL)initCommon;
- (BOOL)setMetadataWithValue:(id)a3 forKey:(id)a4;
- (MXISceneUSDZWriter)initWithOptions:(id)a3;
- (MXISceneUSDZWriter)initWithUSDBundleFileURL:(id)a3 options:(id)a4;
- (MXISceneUSDZWriter)initWithUSDZFileURL:(id)a3 options:(id)a4;
- (id)addGeomSubsetToMesh:(id)a3 withTriangleIndices:(int *)a4 triangleIndicesCount:(unint64_t)a5 sliceId:(int)a6;
- (id)addShaderToMaterial:(id)a3 withIdentifier:(id)a4 name:(id)a5;
- (id)buildShaderGraphNodeWithPath:(id)a3 identifier:(id)a4;
- (uint64_t)addDouble4x4Value:(_OWORD *)a3 forKey:(void *)a4;
- (void)addModelToWorldTransform:(float32x4_t)a3;
- (void)exportSlicesToPNG:(id)a3;
- (void)package;
@end

@implementation MXISceneUSDZWriter

- (MXISceneUSDZWriter)initWithOptions:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = MXISceneUSDZWriter;
  v5 = [(MXISceneUSDZWriter *)&v54 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v10 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.mxi", v8, v9);
    v5->m_requestTextFormatUSD = objc_msgSend_BOOLForKey_(v10, v11, @"RequestTextFormatUSD", v12, v13);
    v5->m_requestHighCompatibilityUSD = objc_msgSend_BOOLForKey_(v10, v14, @"RequestHighCompatibilityUSD", v15, v16);
    v5->m_useUdim = objc_msgSend_BOOLForKey_(v10, v17, @"UseUdim", v18, v19);
    if (v4)
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"colorPrimaries", v21, v22);
      m_colorPrimaries = v5->m_colorPrimaries;
      v5->m_colorPrimaries = v23;

      v28 = objc_msgSend_objectForKeyedSubscript_(v4, v25, @"requestTextFormat", v26, v27);
      v33 = v28;
      if (v28)
      {
        m_requestTextFormatUSD = objc_msgSend_BOOLValue(v28, v29, v30, v31, v32);
      }

      else
      {
        m_requestTextFormatUSD = v5->m_requestTextFormatUSD;
      }

      v5->m_requestTextFormatUSD = m_requestTextFormatUSD & 1;
      v35 = objc_msgSend_objectForKeyedSubscript_(v4, v29, @"requestHighCompatibility", v31, v32);
      v40 = v35;
      if (v35)
      {
        m_requestHighCompatibilityUSD = objc_msgSend_BOOLValue(v35, v36, v37, v38, v39);
      }

      else
      {
        m_requestHighCompatibilityUSD = v5->m_requestHighCompatibilityUSD;
      }

      v5->m_requestHighCompatibilityUSD = m_requestHighCompatibilityUSD & 1;
      v42 = objc_msgSend_objectForKeyedSubscript_(v4, v36, @"useUdim", v38, v39);
      v47 = v42;
      if (v42)
      {
        m_useUdim = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);
      }

      else
      {
        m_useUdim = v5->m_useUdim;
      }

      v5->m_useUdim = m_useUdim & 1;
    }

    v49 = _mxi_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v50 = v5->m_requestTextFormatUSD;
      v51 = v5->m_requestHighCompatibilityUSD;
      v52 = v5->m_useUdim;
      *buf = 67109632;
      v56 = v50;
      v57 = 1024;
      v58 = v51;
      v59 = 1024;
      v60 = v52;
      _os_log_impl(&dword_22F9C3000, v49, OS_LOG_TYPE_DEBUG, "[MXI.framework] [USDWriter] requestTextFormatUSD %d, requestHighCompatibilityUSD %d, useUdim %d", buf, 0x14u);
    }
  }

  return v5;
}

- (MXISceneUSDZWriter)initWithUSDZFileURL:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_initWithOptions_(self, v9, v8, v10, v11);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  v14 = *(v12 + 24);
  *(v12 + 24) = 0;

  objc_storeStrong((v13 + 32), a3);
  v19 = objc_msgSend_URLByDeletingPathExtension(v7, v15, v16, v17, v18);
  v23 = v19;
  if (*(v13 + 16))
  {
    objc_msgSend_URLByAppendingPathExtension_(v19, v20, @"usda", v21, v22);
  }

  else
  {
    objc_msgSend_URLByAppendingPathExtension_(v19, v20, @"usdc", v21, v22);
  }
  v24 = ;
  v25 = *(v13 + 40);
  *(v13 + 40) = v24;

  if ((objc_msgSend_initCommon(v13, v26, v27, v28, v29) & 1) == 0)
  {
    v30 = 0;
  }

  else
  {
LABEL_6:
    v30 = v13;
  }

  return v30;
}

- (MXISceneUSDZWriter)initWithUSDBundleFileURL:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_initWithOptions_(self, v9, v8, v10, v11);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  objc_storeStrong((v12 + 24), a3);
  v14 = *(v13 + 32);
  *(v13 + 32) = 0;

  v18 = *(v13 + 24);
  if (*(v13 + 16))
  {
    objc_msgSend_URLByAppendingPathComponent_(v18, v15, @"scene.usda", v16, v17);
  }

  else
  {
    objc_msgSend_URLByAppendingPathComponent_(v18, v15, @"scene.usdc", v16, v17);
  }
  v19 = ;
  v20 = *(v13 + 40);
  *(v13 + 40) = v19;

  if ((objc_msgSend_initCommon(v13, v21, v22, v23, v24) & 1) == 0)
  {
    v25 = 0;
  }

  else
  {
LABEL_6:
    v25 = v13;
  }

  return v25;
}

- (BOOL)initCommon
{
  v48 = *MEMORY[0x277D85DE8];
  usdURL = self->_usdURL;
  v43 = 0;
  v5 = objc_msgSend_newSceneWithURL_error_(MEMORY[0x277D778A8], a2, usdURL, &v43, v2);
  v6 = v43;
  scene = self->_scene;
  self->_scene = v5;

  if (v6)
  {
    p_super = _mxi_log();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_path(self->_usdURL, v9, v10, v11, v12);
      v18 = objc_msgSend_localizedDescription(v6, v14, v15, v16, v17);
      *buf = 138412546;
      v45 = v13;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_22F9C3000, p_super, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:111] [USDWriter] failed to initialize USKScene with url %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v19 = self->_scene;
    v20 = objc_alloc(MEMORY[0x277D77888]);
    v24 = objc_msgSend_initWithString_(v20, v21, @"/Root", v22, v23);
    v27 = objc_msgSend_newNodeAtPath_type_(v19, v25, v24, *MEMORY[0x277D77980], v26);
    rootNode = self->_rootNode;
    self->_rootNode = v27;

    meshNode = self->_meshNode;
    self->_meshNode = 0;

    materialNode = self->_materialNode;
    self->_materialNode = 0;

    v35 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32, v33, v34);
    geomSubsetNodes = self->_geomSubsetNodes;
    self->_geomSubsetNodes = v35;

    v41 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v37, v38, v39, v40);
    p_super = &self->_sliceMaterialNodes->super.super;
    self->_sliceMaterialNodes = v41;
  }

  return v6 == 0;
}

- (BOOL)addImageBasedLightingWithFileName:(id)a3 error:(id *)a4
{
  v263[1] = *MEMORY[0x277D85DE8];
  v259 = a3;
  v6 = objc_alloc(MEMORY[0x277D77888]);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"/Root/%@", v8, v9, @"IBLSphereMaterial");
  v14 = objc_msgSend_initWithString_(v6, v11, v10, v12, v13);

  v21 = objc_msgSend_newNodeAtPath_type_(self->_scene, v15, v14, @"Material", v16);
  if (v21)
  {
    v22 = objc_msgSend_stringValue(v14, v17, v18, v19, v20);
    v26 = objc_msgSend_stringByAppendingPathComponent_(v22, v23, @"Normal", v24, v25);
    v29 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v27, v26, @"ND_normal_vector3", v28);

    v257 = v29;
    if (v29)
    {
      v31 = *MEMORY[0x277D77900];
      v32 = *MEMORY[0x277D77990];

      v37 = objc_msgSend_stringValue(v14, v33, v34, v35, v36);
      v41 = objc_msgSend_stringByAppendingPathComponent_(v37, v38, @"NormalInvertor", v39, v40);
      v44 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v42, v41, @"ND_multiply_vector3FA", v43);

      v258 = v44;
      if (v44)
      {
        v253 = a4;
        v46 = objc_msgSend_newPropertyWithName_type_role_(v44, v45, @"inputs:in1", v31, v32);
        v51 = objc_msgSend_path(v257, v47, v48, v49, v50);
        v55 = objc_msgSend_pathByAppendingPropertyComponent_(v51, v52, @"outputs:out", v53, v54);
        v263[0] = v55;
        v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v263, 1, v57);
        objc_msgSend_setConnectionWithTargetPaths_(v46, v59, v58, v60, v61);

        v62 = *MEMORY[0x277D778E8];
        v64 = objc_msgSend_newPropertyWithName_type_role_(v258, v63, @"inputs:in2", *MEMORY[0x277D778E8], v32);
        LODWORD(v65) = -1.0;
        objc_msgSend_setFloatValue_(v64, v66, v67, v68, v69, v65);

        v75 = objc_msgSend_stringValue(v14, v71, v72, v73, v74);
        v79 = objc_msgSend_stringByAppendingPathComponent_(v75, v76, @"PBRSurface", v77, v78);
        v82 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v80, v79, @"ND_realitykit_pbr_surfaceshader", v81);

        v84 = objc_msgSend_newPropertyWithName_type_role_(v82, v83, @"inputs:baseColor", v31, *MEMORY[0x277D77988]);
        __asm { FMOV            V0.4S, #1.0 }

        objc_msgSend_setFloat3Value_(v84, v90, v91, v92, v93, *&_Q0);

        v95 = objc_msgSend_newPropertyWithName_type_role_(v82, v94, @"inputs:metallic", v62, v32);
        LODWORD(v96) = 1.0;
        objc_msgSend_setFloatValue_(v95, v97, v98, v99, v100, v96);

        v102 = objc_msgSend_newPropertyWithName_type_role_(v82, v101, @"inputs:roughness", v62, v32);
        objc_msgSend_setFloatValue_(v102, v103, v104, v105, v106, 0.0);

        v108 = objc_msgSend_newPropertyWithName_type_role_(v82, v107, @"inputs:specular", v62, v32);
        LODWORD(v109) = 1.0;
        objc_msgSend_setFloatValue_(v108, v110, v111, v112, v113, v109);

        v115 = objc_msgSend_newPropertyWithName_type_role_(v82, v114, @"inputs:normal", v31, v32);
        v120 = objc_msgSend_path(v258, v116, v117, v118, v119);
        v124 = objc_msgSend_pathByAppendingPropertyComponent_(v120, v121, @"outputs:out", v122, v123);
        v262 = v124;
        v127 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v125, &v262, 1, v126);
        objc_msgSend_setConnectionWithTargetPaths_(v115, v128, v127, v129, v130);

        v131 = *MEMORY[0x277D77940];
        v134 = objc_msgSend_newPropertyWithName_type_role_(v21, v133, @"outputs:mtlx:surface", v131, v32);
        v139 = objc_msgSend_path(v82, v135, v136, v137, v138);
        v143 = objc_msgSend_pathByAppendingPropertyComponent_(v139, v140, @"outputs:out", v141, v142);
        v261 = v143;
        v146 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v144, &v261, 1, v145);
        objc_msgSend_setConnectionWithTargetPaths_(v134, v147, v146, v148, v149);

        v150 = objc_alloc(MEMORY[0x277D77888]);
        v154 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v151, @"/Root/%@", v152, v153, @"IBLSphere");
        v256 = objc_msgSend_initWithString_(v150, v155, v154, v156, v157);

        v160 = objc_msgSend_newNodeAtPath_type_(self->_scene, v158, v256, @"Sphere", v159);
        v164 = v160;
        if (v160)
        {
          objc_msgSend_applyType_(v160, v161, *MEMORY[0x277D779A8], v162, v163);
          v166 = objc_msgSend_newPropertyWithName_type_role_(v164, v165, @"radius", *MEMORY[0x277D778D0], v32);
          LODWORD(v167) = -998637568;
          objc_msgSend_setFloatValue_(v166, v168, v169, v170, v171, v167);

          v255 = objc_msgSend_newPropertyWithName_type_role_(v164, v172, @"material:binding", *MEMORY[0x277D77928], v32);
          v177 = objc_msgSend_path(v21, v173, v174, v175, v176);
          objc_msgSend_setObjectPath_(v255, v178, v177, v179, v180);

          v181 = objc_alloc(MEMORY[0x277D77878]);
          v185 = objc_msgSend_initWithString_(v181, v182, @"weakerThanDescendants", v183, v184);
          objc_msgSend_setMetadataWithKey_value_(v255, v186, @"bindMaterialAs", v185, v187);

          v188 = objc_alloc(MEMORY[0x277D77888]);
          v192 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v189, @"/Root/%@", v190, v191, @"ImageBasedLight");
          v254 = objc_msgSend_initWithString_(v188, v193, v192, v194, v195);

          v198 = objc_msgSend_newNodeAtPath_type_(self->_scene, v196, v254, @"RealityKitComponent", v197);
          v200 = v198;
          if (v198)
          {
            v201 = objc_msgSend_newPropertyWithName_type_role_(v198, v199, @"info:id", v131, v32);
            objc_msgSend_setStringValue_(v201, v202, @"RealityKit.ImageBasedLight", v203, v204);

            v206 = objc_msgSend_newPropertyWithName_type_role_(v200, v205, @"ibl", *MEMORY[0x277D77930], v32);
            objc_msgSend_setResourcePath_(v206, v207, v259, v208, v209);

            v210 = objc_alloc(MEMORY[0x277D77888]);
            v214 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v211, @"/Root/%@", v212, v213, @"ImageBasedLightReceiver");
            v218 = objc_msgSend_initWithString_(v210, v215, v214, v216, v217);

            v221 = objc_msgSend_newNodeAtPath_type_(self->_scene, v219, v218, @"RealityKitComponent", v220);
            v223 = v221;
            v224 = v221 != 0;
            if (v221)
            {
              v225 = objc_msgSend_newPropertyWithName_type_role_(v221, v222, @"info:id", v131, v32);
              objc_msgSend_setStringValue_(v225, v226, @"RealityKit.ImageBasedLightReceiver", v227, v228);

              v230 = objc_msgSend_newPropertyWithName_type_role_(v223, v229, @"iblEntity", @"rel", v32);
              objc_msgSend_setStringValue_(v230, v231, @"/Root", v232, v233);
            }

            else
            {
              v249 = _mxi_log();
              if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_22F9C3000, v249, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:192] Could not create node for RealityKitComponent", buf, 2u);
              }

              objc_msgSend_fillError_withDescription_(MXIInternalError, v250, v253, @"Could not create node for RealityKitComponent", v251);
            }
          }

          else
          {
            v246 = _mxi_log();
            if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22F9C3000, v246, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:184] Could not create node for RealityKitComponent", buf, 2u);
            }

            objc_msgSend_fillError_withDescription_(MXIInternalError, v247, v253, @"Could not create node for RealityKitComponent", v248);
            v224 = 0;
          }
        }

        else
        {
          v243 = _mxi_log();
          if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22F9C3000, v243, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:171] Could not create sphere node", buf, 2u);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v244, v253, @"Could not create sphere node", v245);
          v224 = 0;
        }
      }

      else
      {
        v240 = _mxi_log();
        if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v240, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:143] Could not create sphere invert normal node", buf, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v241, a4, @"Could not create sphere invert normal node", v242);
        v224 = 0;
      }
    }

    else
    {
      v237 = _mxi_log();
      if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v237, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:136] Could not create sphere normal node", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v238, a4, @"Could not create sphere normal node", v239);
      v224 = 0;
    }
  }

  else
  {
    v234 = _mxi_log();
    if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v234, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:130] Could not create sphere material node", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v235, a4, @"Could not create sphere material node", v236);
    v224 = 0;
  }

  return v224;
}

- (BOOL)addMeshWithMXIGeometry:(const void *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277D77888]);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"/Root/%@", v9, v10, @"MXIMesh");
  v15 = objc_msgSend_initWithString_(v7, v12, v11, v13, v14);

  v18 = objc_msgSend_newNodeAtPath_type_(self->_scene, v16, v15, *MEMORY[0x277D77968], v17);
  meshNode = self->_meshNode;
  self->_meshNode = v18;

  v21 = self->_meshNode;
  if (!v21)
  {
    v88 = _mxi_log();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v88, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:208] Could not create mesh node", buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v89, a4, @"Could not create mesh node", v90);
    goto LABEL_36;
  }

  v22 = *MEMORY[0x277D77990];
  v23 = objc_msgSend_newPropertyWithName_type_role_(v21, v20, @"subdivisionScheme", *MEMORY[0x277D77940], *MEMORY[0x277D77990]);
  if (!v23)
  {
    v91 = _mxi_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v91, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:216] Could not create subdivision scheme property", buf, 2u);
    }

    v92 = @"Could not create subdivision scheme property";
    goto LABEL_35;
  }

  v24 = objc_alloc(MEMORY[0x277D778B0]);
  v28 = objc_msgSend_initWithString_(v24, v25, @"none", v26, v27);
  objc_msgSend_setTokenValue_(v23, v29, v28, v30, v31);

  v33 = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v32, @"points", *MEMORY[0x277D77908], *MEMORY[0x277D779A0]);
  if (!v33)
  {
    v91 = _mxi_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v91, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:223] Could not create points property", buf, 2u);
    }

    v92 = @"Could not create points property";
LABEL_35:

    objc_msgSend_fillError_withDescription_(MXIInternalError, v93, a4, v92, v94);
LABEL_36:
    v95 = 0;
    goto LABEL_37;
  }

  v34 = objc_alloc(MEMORY[0x277D77878]);
  v37 = objc_msgSend_initWithFloat3Array_count_(v34, v35, *a3, (*(a3 + 1) - *a3) >> 4, v36);
  objc_msgSend_setData_(v33, v38, v37, v39, v40);

  v41 = *(a3 + 10);
  v192 = *(a3 + 9);
  *buf = 0;
  v200 = 0;
  v201 = 0;
  sub_22F9D6D48(buf, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  __p = 0;
  v197 = 0;
  v198 = 0;
  sub_22F9D6D48(&__p, *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  v43 = v41;
  v44 = (v41 - v192) >> 2;
  v191 = v43;
  if (v43 != v192)
  {
    v45 = 0;
    v46 = 0;
    if (v44 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    do
    {
      v48 = (*(a3 + 6) + v45);
      v50 = *v48;
      v49 = v48[1];
      v51 = v48[2];
      v52 = *(*a3 + 16 * v50);
      v53 = *(*a3 + 16 * v49);
      v54 = *(*a3 + 16 * v51);
      v55 = vbsl_s8(vcltz_f32(*&v52), vneg_f32(*&v52), *&v52);
      if (*v55.i32 < *&v55.i32[1])
      {
        v55.i32[0] = v55.i32[1];
      }

      LODWORD(v52) = *(*a3 + 16 * v50 + 8);
      if (*(&v52 + 2) < 0.0)
      {
        *&v52 = -*(&v52 + 2);
      }

      if (*v55.i32 >= *&v52)
      {
        *&v52 = *v55.i32;
      }

      v56 = vbsl_s8(vcltz_f32(*v53.i8), vneg_f32(*v53.i8), *v53.i8);
      v57 = vbsl_s8(vcltz_f32(*v54.i8), vneg_f32(*v54.i8), *v54.i8);
      v58 = vzip1_s32(v57, v56);
      v59 = vzip2_s32(v57, v56);
      v60 = vbsl_s8(vcgt_f32(v59, v58), v59, v58);
      v61 = vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *&vextq_s8(v53, v53, 8uLL));
      v62 = vbsl_s8(vcltz_f32(v61), vneg_f32(v61), v61);
      v63 = vcgt_f32(v62, v60);
      v64 = v60.f32[1];
      if (v63.i8[4])
      {
        v64 = v62.f32[1];
      }

      if ((v63.i8[0] & 1) == 0)
      {
        v62.f32[0] = v60.f32[0];
      }

      *&v65 = *(*(a3 + 9) + 4 * v46);
      HIDWORD(v65) = v52;
      *(__p + v50) = v65;
      *&v66 = *(*(a3 + 9) + 4 * v46);
      *(&v66 + 1) = v64;
      *(__p + v49) = v66;
      *&v66 = *(*(a3 + 9) + 4 * v46);
      HIDWORD(v66) = v62.i32[0];
      *(__p + v51) = v66;
      if (self->m_requestHighCompatibilityUSD)
      {
        v67 = *(*(a3 + 3) + 8 * v50);
        *(&v67 + 1) = 1.0 - *(&v67 + 1);
        *(*buf + 8 * v50) = v67;
        v68 = *(*(a3 + 3) + 8 * v49);
        *(&v68 + 1) = 1.0 - *(&v68 + 1);
        *(*buf + 8 * v49) = v68;
        v69 = *(*(a3 + 3) + 8 * v51);
        *(&v69 + 1) = 1.0 - *(&v69 + 1);
        *(*buf + 8 * v51) = v69;
      }

      ++v46;
      v45 += 12;
    }

    while (v47 != v46);
  }

  v70 = self->_meshNode;
  v71 = *MEMORY[0x277D778F8];
  if (!self->m_requestHighCompatibilityUSD)
  {
    v97 = objc_msgSend_newPropertyWithName_type_role_(v70, v42, @"primvars:uv", *MEMORY[0x277D778F8], v22);

    if (v97)
    {
      v98 = objc_alloc(MEMORY[0x277D77878]);
      v101 = objc_msgSend_initWithFloat2Array_count_(v98, v99, *(a3 + 3), (*(a3 + 4) - *(a3 + 3)) >> 3, v100);
      objc_msgSend_setData_(v97, v102, v101, v103, v104);

      v105 = objc_alloc(MEMORY[0x277D77878]);
      v109 = objc_msgSend_initWithString_(v105, v106, @"vertex", v107, v108);
      objc_msgSend_setMetadataWithKey_value_(v97, v110, @"interpolation", v109, v111);

      v113 = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v112, @"primvars:uv1", v71, v22);
      if (v113)
      {
        v114 = objc_alloc(MEMORY[0x277D77878]);
        v117 = objc_msgSend_initWithFloat2Array_count_(v114, v115, __p, (v197 - __p) >> 3, v116);
        objc_msgSend_setData_(v113, v118, v117, v119, v120);

        v121 = objc_alloc(MEMORY[0x277D77878]);
        v84 = objc_msgSend_initWithString_(v121, v122, @"vertex", v123, v124);
        objc_msgSend_setMetadataWithKey_value_(v113, v125, @"interpolation", v84, v126);
        v87 = v113;
        goto LABEL_41;
      }

      v182 = _mxi_log();
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        *v194 = 0;
        v184 = "[MXI.framework/MXISceneUSDZWriter.mm:277] Could not create primvars property";
        goto LABEL_81;
      }
    }

    else
    {
      v182 = _mxi_log();
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        *v194 = 0;
        v184 = "[MXI.framework/MXISceneUSDZWriter.mm:269] Could not create primvars property";
        goto LABEL_81;
      }
    }

LABEL_82:
    v183 = @"Could not create primvars property";
    goto LABEL_83;
  }

  v72 = objc_msgSend_newPropertyWithName_type_role_(v70, v42, @"primvars:st", *MEMORY[0x277D778F8], v22);

  if (!v72)
  {
    v182 = _mxi_log();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
    {
      *v194 = 0;
      v184 = "[MXI.framework/MXISceneUSDZWriter.mm:261] Could not create primvars property";
LABEL_81:
      _os_log_impl(&dword_22F9C3000, v182, OS_LOG_TYPE_ERROR, v184, v194, 2u);
      goto LABEL_82;
    }

    goto LABEL_82;
  }

  v73 = objc_alloc(MEMORY[0x277D77878]);
  v76 = objc_msgSend_initWithFloat2Array_count_(v73, v74, *buf, (v200 - *buf) >> 3, v75);
  objc_msgSend_setData_(v72, v77, v76, v78, v79);

  v80 = objc_alloc(MEMORY[0x277D77878]);
  v84 = objc_msgSend_initWithString_(v80, v81, @"vertex", v82, v83);
  objc_msgSend_setMetadataWithKey_value_(v72, v85, @"interpolation", v84, v86);
  v87 = v72;
LABEL_41:

  v127 = *MEMORY[0x277D77920];
  v129 = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v128, @"faceVertexCounts", *MEMORY[0x277D77920], v22);

  if (v129)
  {
    *v193 = 3;
    sub_22F9D6E00(v194, v44);
    v130 = objc_alloc(MEMORY[0x277D77878]);
    v133 = objc_msgSend_initWithIntArray_count_(v130, v131, *v194, (v195 - *v194) >> 2, v132);
    objc_msgSend_setData_(v129, v134, v133, v135, v136);

    v138 = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v137, @"faceVertexIndices", v127, v22);
    if (v138)
    {
      v139 = objc_alloc(MEMORY[0x277D77878]);
      v142 = objc_msgSend_initWithIntArray_count_(v139, v140, *(a3 + 6), 3 * v44, v141);
      objc_msgSend_setData_(v138, v143, v142, v144, v145);

      v147 = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v146, @"faceSliceIndices", v127, v22);
      if (v147)
      {
        v148 = objc_alloc(MEMORY[0x277D77878]);
        v151 = objc_msgSend_initWithIntArray_count_(v148, v149, *(a3 + 9), v44, v150);
        objc_msgSend_setData_(v147, v152, v151, v153, v154);

        if (self->m_requestHighCompatibilityUSD && !self->m_useUdim)
        {
          sub_22F9D6F50(v193, 0x100uLL);
          if (v191 != v192)
          {
            v156 = 0;
            if (v44 <= 1)
            {
              v157 = 1;
            }

            else
            {
              v157 = v44;
            }

            do
            {
              v158 = *v193 + 24 * *(*(a3 + 9) + 4 * v156);
              v160 = *(v158 + 8);
              v159 = *(v158 + 16);
              if (v160 >= v159)
              {
                v162 = *v158;
                v163 = v160 - *v158;
                v164 = v163 >> 2;
                v165 = (v163 >> 2) + 1;
                if (v165 >> 62)
                {
                  sub_22F9C7AD4();
                }

                v166 = v159 - v162;
                if (v166 >> 1 > v165)
                {
                  v165 = v166 >> 1;
                }

                v167 = v166 >= 0x7FFFFFFFFFFFFFFCLL;
                v168 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v167)
                {
                  v168 = v165;
                }

                if (v168)
                {
                  sub_22F9C7B7C(*v193 + 24 * *(*(a3 + 9) + 4 * v156), v168);
                }

                *(4 * v164) = v156;
                v161 = 4 * v164 + 4;
                memcpy(0, v162, v163);
                v169 = *v158;
                *v158 = 0;
                *(v158 + 8) = v161;
                *(v158 + 16) = 0;
                if (v169)
                {
                  operator delete(v169);
                }
              }

              else
              {
                *v160 = v156;
                v161 = (v160 + 1);
              }

              *(v158 + 8) = v161;
              ++v156;
            }

            while (v157 != v156);
          }

          v170 = **v193;
          v171 = *(*v193 + 8);
          if (v171 != **v193)
          {
            v172 = 0;
            v173 = 0;
            do
            {
              v177 = objc_msgSend_addGeomSubsetToMesh_withTriangleIndices_triangleIndicesCount_sliceId_(self, v155, self->_meshNode, v170, (v171 - v170) >> 2, v173);
              if (v177)
              {
                geomSubsetNodes = self->_geomSubsetNodes;
                v179 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v174, v173, v175, v176);
                objc_msgSend_setObject_forKeyedSubscript_(geomSubsetNodes, v180, v177, v179, v181);
              }

              v170 = *(*v193 + v172 + 24);
              v171 = *(*v193 + v172 + 32);
              v173 = (v173 + 1);
              v172 += 24;
            }

            while (v171 != v170);
          }

          v202 = v193;
          sub_22F9D7098(&v202);
        }

        v95 = 1;
        goto LABEL_88;
      }

      v185 = _mxi_log();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v185, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:301] Could not create face slice indices property", v193, 2u);
      }

      v186 = @"Could not create face slice indices property";
    }

    else
    {
      v185 = _mxi_log();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        *v193 = 0;
        _os_log_impl(&dword_22F9C3000, v185, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:294] Could not create face vertex indices property", v193, 2u);
      }

      v186 = @"Could not create face vertex indices property";
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v189, a4, v186, v190);
    v95 = 0;
    v147 = 0;
LABEL_88:
    if (*v194)
    {
      v195 = *v194;
      operator delete(*v194);
    }

    goto LABEL_91;
  }

  v182 = _mxi_log();
  if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
  {
    *v194 = 0;
    _os_log_impl(&dword_22F9C3000, v182, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:286] Could not create faces property", v194, 2u);
  }

  v183 = @"Could not create faces property";
LABEL_83:

  objc_msgSend_fillError_withDescription_(MXIInternalError, v187, a4, v183, v188);
  v95 = 0;
LABEL_91:
  if (__p)
  {
    v197 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v200 = *buf;
    operator delete(*buf);
  }

LABEL_37:

  return v95;
}

- (id)addGeomSubsetToMesh:(id)a3 withTriangleIndices:(int *)a4 triangleIndicesCount:(unint64_t)a5 sliceId:(int)a6
{
  v6 = *&a6;
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = objc_alloc(MEMORY[0x277D77888]);
  v12 = MEMORY[0x277CCACA8];
  v17 = objc_msgSend_path(v10, v13, v14, v15, v16);
  v22 = objc_msgSend_stringValue(v17, v18, v19, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v12, v23, @"%@/%@_%d", v24, v25, v22, @"MXIGeomSubset", v6);
  v30 = objc_msgSend_initWithString_(v11, v27, v26, v28, v29);

  v33 = objc_msgSend_newNodeAtPath_type_(self->_scene, v31, v30, @"GeomSubset", v32);
  v35 = v33;
  if (!v33)
  {
    v58 = _mxi_log();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v70 = v6;
    v67 = "[MXI.framework/MXISceneUSDZWriter.mm:339] [USDWriter] failed to add GeomSubset node for slice %d";
LABEL_14:
    _os_log_impl(&dword_22F9C3000, v58, OS_LOG_TYPE_ERROR, v67, buf, 8u);
    goto LABEL_15;
  }

  v36 = *MEMORY[0x277D77940];
  v37 = *MEMORY[0x277D77990];
  v38 = objc_msgSend_newPropertyWithName_type_role_(v33, v34, @"elementType", *MEMORY[0x277D77940], *MEMORY[0x277D77990]);
  if (!v38)
  {
    v58 = _mxi_log();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v70 = v6;
    v67 = "[MXI.framework/MXISceneUSDZWriter.mm:345] [USDWriter] failed to add 'elementType' to GeomSubset node for slice %d";
    goto LABEL_14;
  }

  v39 = objc_alloc(MEMORY[0x277D77878]);
  v43 = objc_msgSend_initWithString_(v39, v40, @"face", v41, v42);
  objc_msgSend_setData_(v38, v44, v43, v45, v46);

  v48 = objc_msgSend_newPropertyWithName_type_role_(v35, v47, @"familyName", v36, v37);
  if (!v48)
  {
    v58 = _mxi_log();
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v70 = v6;
    v67 = "[MXI.framework/MXISceneUSDZWriter.mm:352] [USDWriter] failed to add 'familyName' to GeomSubset node for slice %d";
    goto LABEL_14;
  }

  v49 = objc_alloc(MEMORY[0x277D77878]);
  v53 = objc_msgSend_initWithString_(v49, v50, @"materialBind", v51, v52);
  objc_msgSend_setData_(v48, v54, v53, v55, v56);

  v58 = objc_msgSend_newPropertyWithName_type_role_(v35, v57, @"indices", *MEMORY[0x277D77920], v37);
  if (v58)
  {
    v59 = objc_alloc(MEMORY[0x277D77878]);
    v62 = objc_msgSend_initWithIntArray_count_(v59, v60, a4, a5, v61);
    objc_msgSend_setData_(v58, v63, v62, v64, v65);

    v66 = v35;
    goto LABEL_16;
  }

  v58 = _mxi_log();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v70 = v6;
    v67 = "[MXI.framework/MXISceneUSDZWriter.mm:359] [USDWriter] failed to add 'indices' to GeomSubset node for slice %d";
    goto LABEL_14;
  }

LABEL_15:
  v66 = 0;
LABEL_16:

  return v66;
}

- (id)buildShaderGraphNodeWithPath:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    if (v7)
    {
      scene = self->_scene;
      v11 = objc_alloc(MEMORY[0x277D77888]);
      v15 = objc_msgSend_initWithString_(v11, v12, v6, v13, v14);
      v9 = objc_msgSend_newNodeAtPath_type_(scene, v16, v15, *MEMORY[0x277D77978], v17);

      if (v9)
      {
        v19 = objc_msgSend_newPropertyWithName_type_role_(v9, v18, @"info:id", *MEMORY[0x277D77940], *MEMORY[0x277D77990]);
        objc_msgSend_setStringValue_(v19, v20, v8, v21, v22);
      }
    }
  }

  return v9;
}

- (BOOL)addTexture2DArrayWithMaterialPath:(id)a3 ktxFilename:(id)a4 nodeSuffix:(id)a5 texcoordGetter:(id)a6 indexGetter:(id)a7 colorSpace:(id)a8 node:(id *)a9
{
  v92[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v88 = a4;
  v16 = a5;
  v89 = a6;
  v87 = a7;
  v90 = a8;
  v21 = objc_msgSend_stringValue(v15, v17, v18, v19, v20);
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"RealityKitTexture2DArray%@", v23, v24, v16);
  v29 = objc_msgSend_stringByAppendingPathComponent_(v21, v26, v25, v27, v28);
  *a9 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v30, v29, @"ND_RealityKitTexture2DArray_color4", v31);

  v33 = *a9;
  if (*a9)
  {

    v34 = *MEMORY[0x277D77990];
    v36 = objc_msgSend_newPropertyWithName_type_role_(*a9, v35, @"inputs:file", *MEMORY[0x277D77930], *MEMORY[0x277D77990]);
    objc_msgSend_setResourcePath_(v36, v37, v88, v38, v39);
    v40 = objc_alloc(MEMORY[0x277D77878]);
    v44 = objc_msgSend_initWithString_(v40, v41, v90, v42, v43);
    objc_msgSend_setMetadataWithKey_value_(v36, v45, @"colorSpace", v44, v46);

    v48 = objc_msgSend_newPropertyWithName_type_role_(*a9, v47, @"inputs:texcoord", *MEMORY[0x277D778F0], v34);
    v53 = objc_msgSend_path(v89, v49, v50, v51, v52);
    v57 = objc_msgSend_pathByAppendingPropertyComponent_(v53, v54, @"outputs:out", v55, v56);
    v92[0] = v57;
    v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v58, v92, 1, v59);
    objc_msgSend_setConnectionWithTargetPaths_(v48, v61, v60, v62, v63);

    v65 = objc_msgSend_newPropertyWithName_type_role_(*a9, v64, @"inputs:index", *MEMORY[0x277D77918], v34);
    v70 = objc_msgSend_path(v87, v66, v67, v68, v69);
    v74 = objc_msgSend_pathByAppendingPropertyComponent_(v70, v71, @"outputs:out", v72, v73);
    v91 = v74;
    v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, &v91, 1, v76);
    objc_msgSend_setConnectionWithTargetPaths_(v65, v78, v77, v79, v80);

    v82 = objc_msgSend_newPropertyWithName_type_role_(*a9, v81, @"inputs:mip_filter", *MEMORY[0x277D77938], v34);
    objc_msgSend_setStringValue_(v82, v83, @"nearest", v84, v85);
  }

  return v33 != 0;
}

- (BOOL)addPBRShaderGraphWithMaterialPath:(id)a3 texcoordGetter:(id)a4 indexGetter:(id)a5 PBRSurface:(id *)a6 pbrMaterialDescriptor:(id)a7
{
  v414[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v393 = a7;
  v403 = 0;
  v397 = self;
  v399 = v12;
  v390 = v13;
  v391 = v14;
  LOBYTE(a7) = objc_msgSend_addTexture2DArrayWithMaterialPath_ktxFilename_nodeSuffix_texcoordGetter_indexGetter_colorSpace_node_(self, v15, v12, @"atlas_normal.ktx", @"Normal", v13, v14, @"lin_displayp3", &v403);
  v394 = v403;
  if (a7)
  {
    v20 = objc_msgSend_stringValue(v12, v16, v17, v18, v19);
    v24 = objc_msgSend_stringByAppendingPathComponent_(v20, v21, @"SwizzleNormalRGB", v22, v23);
    v392 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v25, v24, @"ND_swizzle_color4_color3", v26);

    if (v392)
    {
      v386 = *MEMORY[0x277D77900];
      v389 = *MEMORY[0x277D77988];

      v28 = *MEMORY[0x277D77938];
      v398 = *MEMORY[0x277D77990];
      v30 = objc_msgSend_newPropertyWithName_type_role_(v392, v29, @"inputs:channels", *MEMORY[0x277D77938], *MEMORY[0x277D77990]);
      objc_msgSend_setStringValue_(v30, v31, @"rgb", v32, v33);

      v34 = *MEMORY[0x277D77910];
      v36 = objc_msgSend_newPropertyWithName_type_role_(v392, v35, @"inputs:in", *MEMORY[0x277D77910], v389);
      v41 = objc_msgSend_path(v394, v37, v38, v39, v40);
      v45 = objc_msgSend_pathByAppendingPropertyComponent_(v41, v42, @"outputs:out", v43, v44);
      v414[0] = v45;
      v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, v414, 1, v47);
      objc_msgSend_setConnectionWithTargetPaths_(v36, v49, v48, v50, v51);

      v56 = objc_msgSend_stringValue(v399, v52, v53, v54, v55);
      v60 = objc_msgSend_stringByAppendingPathComponent_(v56, v57, @"SwizzleNormalAlpha", v58, v59);
      v388 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v61, v60, @"ND_swizzle_color4_float", v62);

      if (v388)
      {
        v396 = *MEMORY[0x277D778E8];

        v65 = objc_msgSend_newPropertyWithName_type_role_(v388, v64, @"inputs:channels", v28, v398);
        objc_msgSend_setStringValue_(v65, v66, @"a", v67, v68);

        v70 = objc_msgSend_newPropertyWithName_type_role_(v388, v69, @"inputs:in", v34, v389);
        v75 = objc_msgSend_path(v394, v71, v72, v73, v74);
        v79 = objc_msgSend_pathByAppendingPropertyComponent_(v75, v76, @"outputs:out", v77, v78);
        v413 = v79;
        v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v80, &v413, 1, v81);
        objc_msgSend_setConnectionWithTargetPaths_(v70, v83, v82, v84, v85);

        v90 = objc_msgSend_stringValue(v399, v86, v87, v88, v89);
        v94 = objc_msgSend_stringByAppendingPathComponent_(v90, v91, @"SeparateNormal", v92, v93);
        v387 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v95, v94, @"ND_separate3_color3", v96);

        if (v387)
        {
          v98 = objc_msgSend_newPropertyWithName_type_role_(v387, v97, @"inputs:in", v386, v389);
          v103 = objc_msgSend_path(v392, v99, v100, v101, v102);
          v107 = objc_msgSend_pathByAppendingPropertyComponent_(v103, v104, @"outputs:out", v105, v106);
          v412 = v107;
          v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v108, &v412, 1, v109);
          objc_msgSend_setConnectionWithTargetPaths_(v98, v111, v110, v112, v113);

          v121 = objc_msgSend_stringValue(v399, v117, v118, v119, v120);
          v125 = objc_msgSend_stringByAppendingPathComponent_(v121, v122, @"CombineNormal", v123, v124);
          v385 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v126, v125, @"ND_combine3_color3", v127);

          if (v385)
          {
            v129 = objc_msgSend_newPropertyWithName_type_role_(v385, v128, @"inputs:in1", v396, v398);
            v134 = objc_msgSend_path(v387, v130, v131, v132, v133);
            v138 = objc_msgSend_pathByAppendingPropertyComponent_(v134, v135, @"outputs:outr", v136, v137);
            v411 = v138;
            v141 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v139, &v411, 1, v140);
            objc_msgSend_setConnectionWithTargetPaths_(v129, v142, v141, v143, v144);

            v146 = objc_msgSend_newPropertyWithName_type_role_(v385, v145, @"inputs:in2", v396, v398);
            v151 = objc_msgSend_path(v387, v147, v148, v149, v150);
            v155 = objc_msgSend_pathByAppendingPropertyComponent_(v151, v152, @"outputs:outg", v153, v154);
            v410 = v155;
            v158 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v156, &v410, 1, v157);
            objc_msgSend_setConnectionWithTargetPaths_(v146, v159, v158, v160, v161);

            v163 = objc_msgSend_newPropertyWithName_type_role_(v385, v162, @"inputs:in3", v396, v398);
            v168 = objc_msgSend_path(v387, v164, v165, v166, v167);
            v172 = objc_msgSend_pathByAppendingPropertyComponent_(v168, v169, @"outputs:outb", v170, v171);
            v409 = v172;
            v175 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v173, &v409, 1, v174);
            objc_msgSend_setConnectionWithTargetPaths_(v163, v176, v175, v177, v178);

            v184 = objc_msgSend_stringValue(v399, v180, v181, v182, v183);
            v188 = objc_msgSend_stringByAppendingPathComponent_(v184, v185, @"ConvertNormal", v186, v187);
            v382 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v189, v188, @"ND_convert_color3_vector3", v190);

            if (v382)
            {
              v192 = objc_msgSend_newPropertyWithName_type_role_(v382, v191, @"inputs:in", v386, v389);
              v197 = objc_msgSend_path(v385, v193, v194, v195, v196);
              v201 = objc_msgSend_pathByAppendingPropertyComponent_(v197, v198, @"outputs:out", v199, v200);
              v408 = v201;
              v204 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v202, &v408, 1, v203);
              objc_msgSend_setConnectionWithTargetPaths_(v192, v205, v204, v206, v207);

              v213 = objc_msgSend_stringValue(v399, v209, v210, v211, v212);
              v217 = objc_msgSend_stringByAppendingPathComponent_(v213, v214, @"NormalMapDecode", v215, v216);
              v381 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v218, v217, @"ND_normal_map_decode", v219);

              if (v381)
              {
                v221 = objc_msgSend_newPropertyWithName_type_role_(v381, v220, @"inputs:in", v386, v398);
                v226 = objc_msgSend_path(v382, v222, v223, v224, v225);
                v230 = objc_msgSend_pathByAppendingPropertyComponent_(v226, v227, @"outputs:out", v228, v229);
                v407 = v230;
                v233 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v231, &v407, 1, v232);
                objc_msgSend_setConnectionWithTargetPaths_(v221, v234, v233, v235, v236);

                v242 = objc_msgSend_stringValue(v399, v238, v239, v240, v241);
                v246 = objc_msgSend_stringByAppendingPathComponent_(v242, v243, @"PBRSurface", v244, v245);
                *a6 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(v397, v247, v246, @"ND_realitykit_pbr_surfaceshader", v248);

                v395 = *a6;
                if (v393)
                {
                  for (i = 0; ; i = v259 + 1)
                  {
                    v254 = objc_msgSend_atlases(v393, v249, v250, v251, v252);
                    v259 = i;
                    v260 = objc_msgSend_count(v254, v255, v256, v257, v258) > i;

                    if (!v260)
                    {
                      break;
                    }

                    v264 = objc_msgSend_atlases(v393, v249, v261, v262, v263);
                    v268 = objc_msgSend_objectAtIndexedSubscript_(v264, v265, v259, v266, v267);

                    v384 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v269, @"atlas_pbr_%u.ktx", v270, v271, v259);
                    v275 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v272, @"PBR%u", v273, v274, v259);
                    if (objc_msgSend_transferFunction(v268, v276, v277, v278, v279))
                    {
                      v281 = @"srgb_texture";
                    }

                    else
                    {
                      v281 = @"lin_displayp3";
                    }

                    v402 = 0;
                    v282 = objc_msgSend_addTexture2DArrayWithMaterialPath_ktxFilename_nodeSuffix_texcoordGetter_indexGetter_colorSpace_node_(v397, v280, v399, v384, v275, v390, v391, v281, &v402);
                    v383 = v402;

                    if ((v282 & 1) == 0)
                    {
                      goto LABEL_45;
                    }

                    v401 = 0;
                    v286 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v283, @"_pbr_%u", v284, v285, v259);
                    v288 = objc_msgSend_addSeparateNode_node_inputNode_separateCount_suffix_(v397, v287, v399, &v401, v383, 4, v286);
                    v289 = v401;

                    if (!v288)
                    {

LABEL_45:
                      v362 = 0;
                      goto LABEL_46;
                    }

                    for (j = 0; j != 4; ++j)
                    {
                      v295 = objc_msgSend_components(v268, v290, v291, v292, v293);
                      v299 = objc_msgSend_objectAtIndexedSubscript_(v295, v296, j, v297, v298);

                      v308 = objc_msgSend_semantic(v299, v300, v301, v302, v303) - 1;
                      if (v308 >= 5)
                      {
                        goto LABEL_34;
                      }

                      v309 = off_2788ADCB8[v308];
                      v310 = objc_msgSend_semantic(v299, v304, v305, v306, v307);
                      if ((v310 - 2) >= 4)
                      {
                        if (v310 != 1)
                        {
                          goto LABEL_34;
                        }

                        v400[0] = 0;
                        objc_msgSend_addCombineNode_node_inputNode_input1_input2_input3_suffix_(v397, v311, v399, v400, v289, @"outputs:outr", @"outputs:outg", @"outputs:outb", @"EmissiveColor");
                        v332 = v400[0];
                        v334 = objc_msgSend_newPropertyWithName_type_role_(v395, v333, v309, v386, v389);
                        v339 = objc_msgSend_path(v332, v335, v336, v337, v338);
                        v343 = objc_msgSend_pathByAppendingPropertyComponent_(v339, v340, @"outputs:out", v341, v342);
                        v405 = v343;
                        v346 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v344, &v405, 1, v345);
                        objc_msgSend_setConnectionWithTargetPaths_(v334, v347, v346, v348, v349);
                      }

                      else
                      {
                        if (v299)
                        {
                          objc_msgSend_destination(v299, v311, v312, v313, v314);
                          v315 = v400[1];
                          objc_msgSend_destination(v299, v316, v317, v318, v319);
                          v320 = v400[2];
                          objc_msgSend_destination(v299, v321, v322, v323, v324);
                          v325 = v400[3];
                          objc_msgSend_destination(v299, v326, v327, v328, v329);
                          v330 = @"outputs:outr";
                          if (!v315)
                          {
                            v330 = 0;
                          }

                          if (v320)
                          {
                            v330 = @"outputs:outg";
                          }

                          if (v325)
                          {
                            v330 = @"outputs:outb";
                          }

                          if (v400[4])
                          {
                            v331 = @"outputs:outa";
                          }

                          else
                          {
                            v331 = v330;
                          }
                        }

                        else
                        {
                          v331 = 0;
                        }

                        v332 = objc_msgSend_newPropertyWithName_type_role_(v395, v311, v309, v396, v398);
                        v334 = objc_msgSend_path(v289, v350, v351, v352, v353);
                        v339 = objc_msgSend_pathByAppendingPropertyComponent_(v334, v354, v331, v355, v356);
                        v406 = v339;
                        v343 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v357, &v406, 1, v358);
                        objc_msgSend_setConnectionWithTargetPaths_(v332, v359, v343, v360, v361);
                      }

LABEL_34:
                    }
                  }
                }

                v363 = objc_msgSend_newPropertyWithName_type_role_(v395, v249, @"inputs:normal", v386, v398);
                v368 = objc_msgSend_path(v381, v364, v365, v366, v367);
                v372 = objc_msgSend_pathByAppendingPropertyComponent_(v368, v369, @"outputs:out", v370, v371);
                v404 = v372;
                v375 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v373, &v404, 1, v374);
                objc_msgSend_setConnectionWithTargetPaths_(v363, v376, v375, v377, v378);

                v268 = objc_msgSend_newPropertyWithName_type_role_(v395, v379, @"outputs:out", *MEMORY[0x277D77940], v398);
                v362 = 1;
LABEL_46:
              }

              else
              {
                v362 = 0;
              }
            }

            else
            {
              v362 = 0;
            }
          }

          else
          {
            v362 = 0;
          }
        }

        else
        {
          v362 = 0;
        }
      }

      else
      {
        v362 = 0;
      }
    }

    else
    {
      v362 = 0;
    }
  }

  else
  {
    v362 = 0;
  }

  return v362;
}

- (BOOL)addSeparateNode:(id)a3 node:(id *)a4 inputNode:(id)a5 separateCount:(unint64_t)a6 suffix:(id)a7
{
  v61[1] = *MEMORY[0x277D85DE8];
  v59 = a3;
  v60 = a5;
  v12 = a7;
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Separate%@", v14, v15, v12);
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"ND_separate%lu_color%lu", v18, v19, a6, a6);
  v21 = v59;
  v26 = objc_msgSend_stringValue(v59, v22, v23, v24, v25);
  v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, v16, v28, v29);
  *a4 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v31, v30, v20, v32);

  v34 = *a4;
  if (*a4)
  {
    if (a6)
    {
      LODWORD(v35) = 0;
      v36 = *MEMORY[0x277D778E8];
      v37 = *MEMORY[0x277D77990];
      do
      {
        if (v35 > 3)
        {
          v38 = objc_msgSend_newPropertyWithName_type_role_(*a4, v33, 0, v36, v37);
        }

        else
        {
          v38 = objc_msgSend_newPropertyWithName_type_role_(*a4, v33, off_2788ADCE0[v35], v36, v37);
        }

        v35 = (v35 + 1);
      }

      while (v35 < a6);
      if (a6 == 3)
      {
        v39 = MEMORY[0x277D77900];
        v21 = v59;
        goto LABEL_12;
      }

      v21 = v59;
      if (a6 == 4)
      {
        v39 = MEMORY[0x277D77910];
LABEL_12:
        a6 = *v39;
        v41 = objc_msgSend_newPropertyWithName_type_role_(*a4, v40, @"inputs:in", a6, *MEMORY[0x277D77988]);
LABEL_15:
        v46 = v41;
        v47 = objc_msgSend_path(v60, v42, v43, v44, v45);
        v51 = objc_msgSend_pathByAppendingPropertyComponent_(v47, v48, @"outputs:out", v49, v50);
        v61[0] = v51;
        v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, v61, 1, v53);
        objc_msgSend_setConnectionWithTargetPaths_(v46, v55, v54, v56, v57);

        goto LABEL_16;
      }

      a6 = 0;
    }

    v41 = objc_msgSend_newPropertyWithName_type_role_(*a4, v33, @"inputs:in", a6, *MEMORY[0x277D77988]);
    goto LABEL_15;
  }

LABEL_16:

  return v34 != 0;
}

- (BOOL)addCombineNode:(id)a3 node:(id *)a4 inputNode:(id)a5 input1:(id)a6 input2:(id)a7 input3:(id)a8 suffix:(id)a9
{
  v94[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v90 = a6;
  v89 = a7;
  v88 = a8;
  v87 = a9;
  v91 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"Combine%@", v18, v19, v87);
  v24 = objc_msgSend_stringValue(v15, v20, v21, v22, v23);
  v28 = objc_msgSend_stringByAppendingPathComponent_(v24, v25, v91, v26, v27);
  *a4 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v29, v28, @"ND_combine3_color3", v30);

  v32 = *a4;
  if (*a4)
  {
    v33 = *MEMORY[0x277D778E8];
    v34 = *MEMORY[0x277D77990];
    v35 = objc_msgSend_newPropertyWithName_type_role_(*a4, v31, @"inputs:in1", *MEMORY[0x277D778E8], *MEMORY[0x277D77990]);
    v40 = objc_msgSend_path(v16, v36, v37, v38, v39);
    v44 = objc_msgSend_pathByAppendingPropertyComponent_(v40, v41, v90, v42, v43);
    v94[0] = v44;
    v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v94, 1, v46);
    objc_msgSend_setConnectionWithTargetPaths_(v35, v48, v47, v49, v50);

    v52 = objc_msgSend_newPropertyWithName_type_role_(*a4, v51, @"inputs:in2", v33, v34);
    v57 = objc_msgSend_path(v16, v53, v54, v55, v56);
    v61 = objc_msgSend_pathByAppendingPropertyComponent_(v57, v58, v89, v59, v60);
    v93 = v61;
    v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, &v93, 1, v63);
    objc_msgSend_setConnectionWithTargetPaths_(v52, v65, v64, v66, v67);

    v69 = objc_msgSend_newPropertyWithName_type_role_(*a4, v68, @"inputs:in3", v33, v34);
    v74 = objc_msgSend_path(v16, v70, v71, v72, v73);
    v78 = objc_msgSend_pathByAppendingPropertyComponent_(v74, v75, v88, v76, v77);
    v92 = v78;
    v81 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, &v92, 1, v80);
    objc_msgSend_setConnectionWithTargetPaths_(v69, v82, v81, v83, v84);
  }

  return v32 != 0;
}

- (BOOL)addShaderGraphWithColorKTXResource:(id)a3 NormalKTXResource:(id)a4 pbrKTXFilename:(id)a5 pbrMaterialDescriptor:(id)a6 depthTesselated:(BOOL)a7
{
  v842[1] = *MEMORY[0x277D85DE8];
  v814 = a6;
  v9 = objc_alloc(MEMORY[0x277D77888]);
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"/Root/%@", v11, v12, @"MXIMaterial");
  v17 = objc_msgSend_initWithString_(v9, v14, v13, v15, v16);

  v20 = objc_msgSend_newNodeAtPath_type_(self->_scene, v18, v17, *MEMORY[0x277D77960], v19);
  materialNode = self->_materialNode;
  self->_materialNode = v20;

  if (self->_materialNode)
  {
    v26 = objc_msgSend_stringValue(v17, v22, v23, v24, v25);
    v30 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, @"UsdPrimvarReader_uv", v28, v29);
    v33 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v31, v30, @"ND_UsdPrimvarReader_vector2", v32);

    v812 = v33;
    if (!v33)
    {
LABEL_27:

      goto LABEL_28;
    }

    v35 = *MEMORY[0x277D778F0];
    v36 = *MEMORY[0x277D77990];

    v808 = *MEMORY[0x277D77938];
    v38 = objc_msgSend_newPropertyWithName_type_role_(v33, v37, @"inputs:varname", *MEMORY[0x277D77938], v36);
    objc_msgSend_setStringValue_(v38, v39, @"uv", v40, v41);

    v46 = objc_msgSend_stringValue(v17, v42, v43, v44, v45);
    v50 = objc_msgSend_stringByAppendingPathComponent_(v46, v47, @"UsdPrimvarReader_uv1", v48, v49);
    v33 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v51, v50, @"ND_UsdPrimvarReader_vector2", v52);

    v797 = v33;
    if (!v33)
    {
LABEL_26:

      goto LABEL_27;
    }

    v55 = objc_msgSend_newPropertyWithName_type_role_(v33, v54, @"inputs:varname", v808, v36);
    objc_msgSend_setStringValue_(v55, v56, @"uv1", v57, v58);

    v63 = objc_msgSend_stringValue(v17, v59, v60, v61, v62);
    v67 = objc_msgSend_stringByAppendingPathComponent_(v63, v64, @"uv1Separator", v65, v66);
    v70 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v68, v67, @"ND_separate2_vector2", v69);

    v815 = *MEMORY[0x277D778E8];
    v804 = v70;

    v74 = objc_msgSend_newPropertyWithName_type_role_(v70, v73, @"inputs:in", v35, v36);
    v79 = objc_msgSend_path(v797, v75, v76, v77, v78);
    v792 = a4;
    v83 = objc_msgSend_pathByAppendingPropertyComponent_(v79, v80, @"outputs:out", v81, v82);
    v842[0] = v83;
    v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v84, v842, 1, v85);
    objc_msgSend_setConnectionWithTargetPaths_(v74, v87, v86, v88, v89);

    v94 = objc_msgSend_stringValue(v17, v90, v91, v92, v93);
    v98 = objc_msgSend_stringByAppendingPathComponent_(v94, v95, @"Multiply", v96, v97);
    v811 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v99, v98, @"ND_multiply_vector2FA", v100);

    v103 = objc_msgSend_newPropertyWithName_type_role_(v811, v102, @"inputs:in1", v35, v36);
    v108 = objc_msgSend_path(v812, v104, v105, v106, v107);
    v112 = objc_msgSend_pathByAppendingPropertyComponent_(v108, v109, @"outputs:out", v110, v111);
    v841 = v112;
    v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v113, &v841, 1, v114);
    objc_msgSend_setConnectionWithTargetPaths_(v103, v116, v115, v117, v118);

    v120 = objc_msgSend_newPropertyWithName_type_role_(v811, v119, @"inputs:in2", v815, v36);
    v125 = objc_msgSend_path(v70, v121, v122, v123, v124);
    v129 = objc_msgSend_pathByAppendingPropertyComponent_(v125, v126, @"outputs:outy", v127, v128);
    v840 = v129;
    v132 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v130, &v840, 1, v131);
    objc_msgSend_setConnectionWithTargetPaths_(v120, v133, v132, v134, v135);

    v140 = objc_msgSend_stringValue(v17, v136, v137, v138, v139);
    v144 = objc_msgSend_stringByAppendingPathComponent_(v140, v141, @"GeometryModifier", v142, v143);
    v813 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v145, v144, @"ND_realitykit_geometrymodifier_2_0_vertexshader", v146);

    v794 = *MEMORY[0x277D77940];
    v152 = objc_msgSend_stringValue(v17, v148, v149, v150, v151);
    v156 = objc_msgSend_stringByAppendingPathComponent_(v152, v153, @"Combine2", v154, v155);
    v805 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v157, v156, @"ND_combine2_vector4VV", v158);

    v159 = *MEMORY[0x277D77910];
    v162 = objc_msgSend_newPropertyWithName_type_role_(v805, v161, @"inputs:in1", v35, v36);
    v167 = objc_msgSend_path(v811, v163, v164, v165, v166);
    v171 = objc_msgSend_pathByAppendingPropertyComponent_(v167, v168, @"outputs:out", v169, v170);
    v839 = v171;
    v174 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v172, &v839, 1, v173);
    objc_msgSend_setConnectionWithTargetPaths_(v162, v175, v174, v176, v177);

    v179 = objc_msgSend_newPropertyWithName_type_role_(v813, v178, @"inputs:uv2", v159, v36);
    v184 = objc_msgSend_path(v805, v180, v181, v182, v183);
    v188 = objc_msgSend_pathByAppendingPropertyComponent_(v184, v185, @"outputs:out", v186, v187);
    v838 = v188;
    v191 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v189, &v838, 1, v190);
    objc_msgSend_setConnectionWithTargetPaths_(v179, v192, v191, v193, v194);

    v199 = objc_msgSend_stringValue(v17, v195, v196, v197, v198);
    v203 = objc_msgSend_stringByAppendingPathComponent_(v199, v200, @"Combine4_1", v201, v202);
    v803 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v204, v203, @"ND_combine4_vector4", v205);

    v208 = objc_msgSend_newPropertyWithName_type_role_(v803, v207, @"inputs:in1", v815, v36);
    v213 = objc_msgSend_path(v70, v209, v210, v211, v212);
    v217 = objc_msgSend_pathByAppendingPropertyComponent_(v213, v214, @"outputs:outy", v215, v216);
    v837 = v217;
    v220 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v218, &v837, 1, v219);
    objc_msgSend_setConnectionWithTargetPaths_(v208, v221, v220, v222, v223);

    v225 = objc_msgSend_newPropertyWithName_type_role_(v813, v224, @"inputs:uv3", v159, v36);
    v230 = objc_msgSend_path(v803, v226, v227, v228, v229);
    v234 = objc_msgSend_pathByAppendingPropertyComponent_(v230, v231, @"outputs:out", v232, v233);
    v836 = v234;
    v237 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v235, &v836, 1, v236);
    objc_msgSend_setConnectionWithTargetPaths_(v225, v238, v237, v239, v240);

    v245 = objc_msgSend_stringValue(v17, v241, v242, v243, v244);
    v249 = objc_msgSend_stringByAppendingPathComponent_(v245, v246, @"Combine4", v247, v248);
    v802 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v250, v249, @"ND_combine4_vector4", v251);

    v254 = objc_msgSend_newPropertyWithName_type_role_(v802, v253, @"inputs:in1", v815, v36);
    v259 = objc_msgSend_path(v70, v255, v256, v257, v258);
    v263 = objc_msgSend_pathByAppendingPropertyComponent_(v259, v260, @"outputs:outx", v261, v262);
    v835 = v263;
    v266 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v264, &v835, 1, v265);
    objc_msgSend_setConnectionWithTargetPaths_(v254, v267, v266, v268, v269);

    v271 = objc_msgSend_newPropertyWithName_type_role_(v813, v270, @"inputs:uv4", v159, v36);
    v276 = objc_msgSend_path(v802, v272, v273, v274, v275);
    v280 = objc_msgSend_pathByAppendingPropertyComponent_(v276, v277, @"outputs:out", v278, v279);
    v834 = v280;
    v283 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v281, &v834, 1, v282);
    objc_msgSend_setConnectionWithTargetPaths_(v271, v284, v283, v285, v286);

    v291 = objc_msgSend_stringValue(v17, v287, v288, v289, v290);
    v295 = objc_msgSend_stringByAppendingPathComponent_(v291, v292, @"UV2Getter", v293, v294);
    v800 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v296, v295, @"ND_texcoord_vector2", v297);

    v298 = *MEMORY[0x277D77918];
    v300 = objc_msgSend_newPropertyWithName_type_role_(v800, v299, @"inputs:index", *MEMORY[0x277D77918], v36);
    objc_msgSend_setIntValue_(v300, v301, 2, v302, v303);

    v309 = objc_msgSend_stringValue(v17, v305, v306, v307, v308);
    v313 = objc_msgSend_stringByAppendingPathComponent_(v309, v310, @"UV3Getter", v311, v312);
    v801 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v314, v313, @"ND_texcoord_vector2", v315);

    v317 = objc_msgSend_newPropertyWithName_type_role_(v801, v316, @"inputs:index", v298, v36);
    objc_msgSend_setIntValue_(v317, v318, 3, v319, v320);

    v326 = objc_msgSend_stringValue(v17, v322, v323, v324, v325);
    v330 = objc_msgSend_stringByAppendingPathComponent_(v326, v327, @"UV3SwizzleX", v328, v329);
    v810 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v331, v330, @"ND_swizzle_vector2_float", v332);

    v335 = objc_msgSend_newPropertyWithName_type_role_(v810, v334, @"inputs:channels", v808, v36);
    objc_msgSend_setStringValue_(v335, v336, @"x", v337, v338);

    v340 = objc_msgSend_newPropertyWithName_type_role_(v810, v339, @"inputs:in", v35, v36);
    v345 = objc_msgSend_path(v801, v341, v342, v343, v344);
    v349 = objc_msgSend_pathByAppendingPropertyComponent_(v345, v346, @"outputs:out", v347, v348);
    v833 = v349;
    v352 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v350, &v833, 1, v351);
    objc_msgSend_setConnectionWithTargetPaths_(v340, v353, v352, v354, v355);

    v360 = objc_msgSend_stringValue(v17, v356, v357, v358, v359);
    v364 = objc_msgSend_stringByAppendingPathComponent_(v360, v361, @"UV4Getter", v362, v363);
    v799 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v365, v364, @"ND_texcoord_vector2", v366);

    v368 = objc_msgSend_newPropertyWithName_type_role_(v799, v367, @"inputs:index", v298, v36);
    objc_msgSend_setIntValue_(v368, v369, 4, v370, v371);

    v377 = objc_msgSend_stringValue(v17, v373, v374, v375, v376);
    v381 = objc_msgSend_stringByAppendingPathComponent_(v377, v378, @"UV4SwizzleX", v379, v380);
    v809 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v382, v381, @"ND_swizzle_vector2_float", v383);

    v386 = objc_msgSend_newPropertyWithName_type_role_(v809, v385, @"inputs:channels", v808, v36);
    objc_msgSend_setStringValue_(v386, v387, @"x", v388, v389);

    v391 = objc_msgSend_newPropertyWithName_type_role_(v809, v390, @"inputs:in", v35, v36);
    v396 = objc_msgSend_path(v799, v392, v393, v394, v395);
    v400 = objc_msgSend_pathByAppendingPropertyComponent_(v396, v397, @"outputs:out", v398, v399);
    v832 = v400;
    v403 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v401, &v832, 1, v402);
    objc_msgSend_setConnectionWithTargetPaths_(v391, v404, v403, v405, v406);

    v411 = objc_msgSend_stringValue(v17, v407, v408, v409, v410);
    v415 = objc_msgSend_stringByAppendingPathComponent_(v411, v412, @"Divide", v413, v414);
    v807 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v416, v415, @"ND_divide_vector2FA", v417);

    v420 = objc_msgSend_newPropertyWithName_type_role_(v807, v419, @"inputs:in1", v35, v36);
    v425 = objc_msgSend_path(v800, v421, v422, v423, v424);
    v429 = objc_msgSend_pathByAppendingPropertyComponent_(v425, v426, @"outputs:out", v427, v428);
    v831 = v429;
    v432 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v430, &v831, 1, v431);
    objc_msgSend_setConnectionWithTargetPaths_(v420, v433, v432, v434, v435);

    v437 = objc_msgSend_newPropertyWithName_type_role_(v807, v436, @"inputs:in2", v815, v36);
    v442 = objc_msgSend_path(v810, v438, v439, v440, v441);
    v446 = objc_msgSend_pathByAppendingPropertyComponent_(v442, v443, @"outputs:out", v444, v445);
    v830 = v446;
    v449 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v447, &v830, 1, v448);
    objc_msgSend_setConnectionWithTargetPaths_(v437, v450, v449, v451, v452);

    v457 = objc_msgSend_stringValue(v17, v453, v454, v455, v456);
    v461 = objc_msgSend_stringByAppendingPathComponent_(v457, v458, @"ConvertInteger", v459, v460);
    v798 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v462, v461, @"ND_convert_float_integer", v463);

    v466 = objc_msgSend_newPropertyWithName_type_role_(v798, v465, @"inputs:in", v815, v36);
    v471 = objc_msgSend_path(v809, v467, v468, v469, v470);
    v475 = objc_msgSend_pathByAppendingPropertyComponent_(v471, v472, @"outputs:out", v473, v474);
    v829 = v475;
    v478 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v476, &v829, 1, v477);
    objc_msgSend_setConnectionWithTargetPaths_(v466, v479, v478, v480, v481);

    v486 = objc_msgSend_stringValue(v17, v482, v483, v484, v485);
    v490 = objc_msgSend_stringByAppendingPathComponent_(v486, v487, @"RealityKitTexture2DArray", v488, v489);
    v806 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v491, v490, @"ND_RealityKitTexture2DArray_color4", v492);

    v494 = v806;
    if (!v806)
    {
      LOBYTE(v33) = 0;
LABEL_25:

      goto LABEL_26;
    }

    v495 = *MEMORY[0x277D77988];

    v497 = objc_msgSend_newPropertyWithName_type_role_(v806, v496, @"inputs:file", *MEMORY[0x277D77930], v36);
    v793 = v497;
    objc_msgSend_setResourcePath_(v497, v498, @"atlas.ktx", v499, v500);
    m_colorPrimaries = self->m_colorPrimaries;
    if (m_colorPrimaries && objc_msgSend_isEqualToString_(m_colorPrimaries, v501, @"colorPrimariesSRGB", v502, v503))
    {
      v505 = objc_alloc(MEMORY[0x277D77878]);
      v509 = objc_msgSend_initWithString_(v505, v506, @"srgb_texture", v507, v508);
      objc_msgSend_setMetadataWithKey_value_(v497, v510, @"colorSpace", v509, v511);
    }

    else
    {
      v512 = objc_alloc(MEMORY[0x277D77878]);
      v509 = objc_msgSend_initWithString_(v512, v513, @"srgb_displayp3", v514, v515);
      objc_msgSend_setMetadataWithKey_value_(v497, v516, @"colorSpace", v509, v517);
    }

    v519 = objc_msgSend_newPropertyWithName_type_role_(v806, v518, @"inputs:texcoord", v35, v36);
    v524 = objc_msgSend_path(v807, v520, v521, v522, v523);
    v528 = objc_msgSend_pathByAppendingPropertyComponent_(v524, v525, @"outputs:out", v526, v527);
    v828 = v528;
    v531 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v529, &v828, 1, v530);
    objc_msgSend_setConnectionWithTargetPaths_(v519, v532, v531, v533, v534);

    v536 = objc_msgSend_newPropertyWithName_type_role_(v806, v535, @"inputs:index", v298, v36);
    v541 = objc_msgSend_path(v798, v537, v538, v539, v540);
    v545 = objc_msgSend_pathByAppendingPropertyComponent_(v541, v542, @"outputs:out", v543, v544);
    v827 = v545;
    v548 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v546, &v827, 1, v547);
    objc_msgSend_setConnectionWithTargetPaths_(v536, v549, v548, v550, v551);

    v553 = objc_msgSend_newPropertyWithName_type_role_(v806, v552, @"inputs:mip_filter", v808, v36);
    objc_msgSend_setStringValue_(v553, v554, @"nearest", v555, v556);

    v561 = objc_msgSend_stringValue(v17, v557, v558, v559, v560);
    v565 = objc_msgSend_stringByAppendingPathComponent_(v561, v562, @"SwizzleRGB", v563, v564);
    v796 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v566, v565, @"ND_swizzle_color4_color3", v567);

    if (!v796)
    {
      LOBYTE(v33) = 0;
LABEL_24:

      v494 = v806;
      goto LABEL_25;
    }

    v569 = *MEMORY[0x277D77900];

    v571 = objc_msgSend_newPropertyWithName_type_role_(v796, v570, @"inputs:channels", v808, v36);
    objc_msgSend_setStringValue_(v571, v572, @"rgb", v573, v574);

    v576 = objc_msgSend_newPropertyWithName_type_role_(v796, v575, @"inputs:in", v159, v495);
    v581 = objc_msgSend_path(v806, v577, v578, v579, v580);
    v585 = objc_msgSend_pathByAppendingPropertyComponent_(v581, v582, @"outputs:out", v583, v584);
    v826 = v585;
    v588 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v586, &v826, 1, v587);
    objc_msgSend_setConnectionWithTargetPaths_(v576, v589, v588, v590, v591);

    v596 = objc_msgSend_stringValue(v17, v592, v593, v594, v595);
    v600 = objc_msgSend_stringByAppendingPathComponent_(v596, v597, @"SwizzleAlpha", v598, v599);
    v795 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v601, v600, @"ND_swizzle_color4_float", v602);

    if (!v795)
    {
      LOBYTE(v33) = 0;
      v630 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v605 = objc_msgSend_newPropertyWithName_type_role_(v795, v604, @"inputs:channels", v808, v36);
    objc_msgSend_setStringValue_(v605, v606, @"a", v607, v608);

    v610 = objc_msgSend_newPropertyWithName_type_role_(v795, v609, @"inputs:in", v159, v495);
    v615 = objc_msgSend_path(v806, v611, v612, v613, v614);
    v619 = objc_msgSend_pathByAppendingPropertyComponent_(v615, v616, @"outputs:out", v617, v618);
    v825 = v619;
    v622 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v620, &v825, 1, v621);
    objc_msgSend_setConnectionWithTargetPaths_(v610, v623, v622, v624, v625);

    if (v792)
    {
      v816 = 0;
      v630 = v795;
      objc_msgSend_addPBRShaderGraphWithMaterialPath_texcoordGetter_indexGetter_PBRSurface_pbrMaterialDescriptor_(self, v626, v17, v807, v798, &v816, v814);
      v631 = v816;
      if (!v631)
      {
        LOBYTE(v33) = 0;
        goto LABEL_23;
      }

      v633 = v631;
      v634 = objc_msgSend_newPropertyWithName_type_role_(v631, v632, @"inputs:baseColor", v569, v495);
      v639 = objc_msgSend_path(v796, v635, v636, v637, v638);
      v643 = objc_msgSend_pathByAppendingPropertyComponent_(v639, v640, @"outputs:out", v641, v642);
      v824 = v643;
      v646 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v644, &v824, 1, v645);
      objc_msgSend_setConnectionWithTargetPaths_(v634, v647, v646, v648, v649);

      v651 = objc_msgSend_newPropertyWithName_type_role_(v633, v650, @"inputs:opacity", v815, v36);
      v656 = objc_msgSend_path(v795, v652, v653, v654, v655);
      v660 = objc_msgSend_pathByAppendingPropertyComponent_(v656, v657, @"outputs:out", v658, v659);
      v823 = v660;
      v663 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v661, &v823, 1, v662);
      objc_msgSend_setConnectionWithTargetPaths_(v651, v664, v663, v665, v666);

      v668 = objc_msgSend_newPropertyWithName_type_role_(v633, v667, @"inputs:opacityThreshold", v815, v36);
      LODWORD(v669) = 1.0;
      objc_msgSend_setFloatValue_(v668, v670, v671, v672, v673, v669);

      v675 = objc_msgSend_newPropertyWithName_type_role_(self->_materialNode, v674, @"outputs:mtlx:surface", v794, v36);
      v680 = objc_msgSend_path(v633, v676, v677, v678, v679);
      v684 = objc_msgSend_pathByAppendingPropertyComponent_(v680, v681, @"outputs:out", v682, v683);
      v822 = v684;
      v687 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v685, &v822, 1, v686);
      objc_msgSend_setConnectionWithTargetPaths_(v675, v688, v687, v689, v690);

      v692 = objc_msgSend_newPropertyWithName_type_role_(self->_materialNode, v691, @"outputs:realitykit:vertex", v794, v36);
      v697 = objc_msgSend_path(v813, v693, v694, v695, v696);
      v701 = objc_msgSend_pathByAppendingPropertyComponent_(v697, v698, @"outputs:out", v699, v700);
      v821 = v701;
      v704 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v702, &v821, 1, v703);
      objc_msgSend_setConnectionWithTargetPaths_(v692, v705, v704, v706, v707);
    }

    else
    {
      v708 = objc_msgSend_stringValue(v17, v626, v627, v628, v629);
      v712 = objc_msgSend_stringByAppendingPathComponent_(v708, v709, @"RealityKitUnlitSurface", v710, v711);
      v633 = objc_msgSend_buildShaderGraphNodeWithPath_identifier_(self, v713, v712, @"ND_realitykit_unlit_surfaceshader", v714);

      if (!v633)
      {
        LOBYTE(v33) = 0;
        goto LABEL_21;
      }

      v717 = objc_msgSend_newPropertyWithName_type_role_(v633, v716, @"inputs:color", v569, v495);
      v722 = objc_msgSend_path(v796, v718, v719, v720, v721);
      v726 = objc_msgSend_pathByAppendingPropertyComponent_(v722, v723, @"outputs:out", v724, v725);
      v820 = v726;
      v729 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v727, &v820, 1, v728);
      objc_msgSend_setConnectionWithTargetPaths_(v717, v730, v729, v731, v732);

      v734 = objc_msgSend_newPropertyWithName_type_role_(v633, v733, @"inputs:opacity", v815, v36);
      v739 = objc_msgSend_path(v795, v735, v736, v737, v738);
      v743 = objc_msgSend_pathByAppendingPropertyComponent_(v739, v740, @"outputs:out", v741, v742);
      v819 = v743;
      v746 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v744, &v819, 1, v745);
      objc_msgSend_setConnectionWithTargetPaths_(v734, v747, v746, v748, v749);

      v750 = *MEMORY[0x277D778C8];
      v752 = objc_msgSend_newPropertyWithName_type_role_(v633, v751, @"inputs:applyPostProcessToneMap", *MEMORY[0x277D778C8], v36);
      objc_msgSend_setBoolValue_(v752, v753, 0, v754, v755);

      v757 = objc_msgSend_newPropertyWithName_type_role_(v633, v756, @"inputs:hasPremultipliedAlpha", v750, v36);
      objc_msgSend_setBoolValue_(v757, v758, 1, v759, v760);

      v762 = objc_msgSend_newPropertyWithName_type_role_(self->_materialNode, v761, @"outputs:mtlx:surface", v794, v36);
      v767 = objc_msgSend_path(v633, v763, v764, v765, v766);
      v771 = objc_msgSend_pathByAppendingPropertyComponent_(v767, v768, @"outputs:out", v769, v770);
      v818 = v771;
      v774 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v772, &v818, 1, v773);
      objc_msgSend_setConnectionWithTargetPaths_(v762, v775, v774, v776, v777);

      v692 = objc_msgSend_newPropertyWithName_type_role_(self->_materialNode, v778, @"outputs:realitykit:vertex", v794, v36);
      v697 = objc_msgSend_path(v813, v779, v780, v781, v782);
      v701 = objc_msgSend_pathByAppendingPropertyComponent_(v697, v783, @"outputs:out", v784, v785);
      v817 = v701;
      v704 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v786, &v817, 1, v787);
      objc_msgSend_setConnectionWithTargetPaths_(v692, v788, v704, v789, v790);
    }

    LOBYTE(v33) = 1;
LABEL_21:
    v630 = v795;
    goto LABEL_23;
  }

  LOBYTE(v33) = 0;
LABEL_28:

  return v33;
}

- (id)addShaderToMaterial:(id)a3 withIdentifier:(id)a4 name:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277D77888]);
  v16 = objc_msgSend_path(v8, v12, v13, v14, v15);
  v21 = objc_msgSend_stringValue(v16, v17, v18, v19, v20);
  v25 = objc_msgSend_stringByAppendingFormat_(v21, v22, @"/%@", v23, v24, v10);
  v29 = objc_msgSend_initWithString_(v11, v26, v25, v27, v28);

  v32 = objc_msgSend_newNodeAtPath_type_(self->_scene, v30, v29, *MEMORY[0x277D77978], v31);
  v34 = v32;
  if (v32)
  {
    v35 = objc_msgSend_newPropertyWithName_type_role_(v32, v33, @"info:id", *MEMORY[0x277D77940], *MEMORY[0x277D77990]);
    v36 = objc_alloc(MEMORY[0x277D77878]);
    v40 = objc_msgSend_initWithString_(v36, v37, v9, v38, v39);
    objc_msgSend_setData_(v35, v41, v40, v42, v43);

    v44 = v34;
  }

  else
  {
    v45 = _mxi_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_msgSend_stringValue(v29, v46, v47, v48, v49);
      *buf = 138412290;
      v53 = v50;
      _os_log_impl(&dword_22F9C3000, v45, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:903] [USDWriter] failed to add Shader node at path %@", buf, 0xCu);
    }
  }

  return v34;
}

- (void)exportSlicesToPNG:(id)a3
{
  v130 = *MEMORY[0x277D85DE8];
  v123 = a3;
  if (objc_msgSend_count(v123, v3, v4, v5, v6))
  {
    v120 = MTLCreateSystemDefaultDevice();
    v118 = objc_msgSend_objectAtIndex_(v123, v7, 0, v8, v9);
    v117 = objc_opt_new();
    objc_msgSend_setTextureType_(v117, v10, 2, v11, v12);
    v17 = objc_msgSend_width(v118, v13, v14, v15, v16);
    objc_msgSend_setWidth_(v117, v18, v17, v19, v20);
    v25 = objc_msgSend_height(v118, v21, v22, v23, v24);
    objc_msgSend_setHeight_(v117, v26, v25, v27, v28);
    objc_msgSend_setPixelFormat_(v117, v29, 71, v30, v31);
    objc_msgSend_setUsage_(v117, v32, 2, v33, v34);
    v38 = objc_msgSend_newTextureWithDescriptor_(v120, v35, v117, v36, v37);
    v119 = objc_msgSend_newCommandQueue(v120, v39, v40, v41, v42);
    v50 = objc_msgSend_count(v123, v43, v44, v45, v46);
    if (v50)
    {
      v51 = 0;
      v121 = *MEMORY[0x277CBF3E0];
      do
      {
        v52 = objc_msgSend_objectAtIndex_(v123, v47, v51, v48, v49);
        v57 = objc_msgSend_pixelFormat(v52, v53, v54, v55, v56);
        if (v57 == objc_msgSend_pixelFormat(v38, v58, v59, v60, v61))
        {
          v62 = v52;
        }

        else
        {
          v63 = _mxi_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v68 = objc_msgSend_pixelFormat(v52, v64, v65, v66, v67);
            v73 = objc_msgSend_pixelFormat(v38, v69, v70, v71, v72);
            *buf = 134218496;
            v125 = v51;
            v126 = 2048;
            v127 = v68;
            v128 = 2048;
            v129 = v73;
            _os_log_impl(&dword_22F9C3000, v63, OS_LOG_TYPE_DEBUG, "[MXI.framework] [USDWriter] slice %lu, convert pixel format %lu -> %lu", buf, 0x20u);
          }

          v78 = objc_msgSend_commandBuffer(v119, v74, v75, v76, v77);
          v79 = objc_alloc(MEMORY[0x277CD74F8]);
          v81 = objc_msgSend_initWithDevice_srcAlpha_destAlpha_backgroundColor_conversionInfo_(v79, v80, v120, 2, 2, 0, 0);
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(v81, v82, v78, v52, v38);
          objc_msgSend_commit(v78, v83, v84, v85, v86);
          objc_msgSend_waitUntilCompleted(v78, v87, v88, v89, v90);
          v62 = v38;
        }

        v91 = image::toPNG(v62, v121);
        v96 = objc_msgSend_path(self->_usdURL, v92, v93, v94, v95);
        v101 = objc_msgSend_stringByDeletingLastPathComponent(v96, v97, v98, v99, v100);
        v105 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v102, @"slice%lu.png", v103, v104, v51 + 1001);
        v109 = objc_msgSend_stringByAppendingPathComponent_(v101, v106, v105, v107, v108);

        v113 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v110, v109, v111, v112);
        LOBYTE(v105) = objc_msgSend_writeToURL_atomically_(v91, v114, v113, 1, v115);

        if ((v105 & 1) == 0)
        {
          v116 = _mxi_log();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v125 = v109;
            _os_log_impl(&dword_22F9C3000, v116, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:961] [USDWriter] failed to write slice data to png %@", buf, 0xCu);
          }
        }

        ++v51;
      }

      while (v50 != v51);
    }
  }
}

- (BOOL)addUdimMaterialWithColorTextures:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  for (i = 0; objc_msgSend_arrayLength(v4, v5, v6, v7, v8) > i; ++i)
  {
    v15 = objc_msgSend_pixelFormat(v4, v11, v12, v13, v14);
    v20 = objc_msgSend_mipmapLevelCount(v4, v16, v17, v18, v19);
    v22 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v4, v21, v15, 2, 0, v20, i, 1);
    objc_msgSend_addObject_(v9, v23, v22, v24, v25);
  }

  v26 = objc_msgSend_addUdimMaterialWithColorArrayTextures_(self, v11, v9, v13, v14);

  return v26;
}

- (BOOL)addUdimMaterialWithColorArrayTextures:(id)a3
{
  v139 = *MEMORY[0x277D85DE8];
  objc_msgSend_exportSlicesToPNG_(self, a2, a3, v3, v4);
  v6 = objc_alloc(MEMORY[0x277D77888]);
  v11 = objc_msgSend_path(self->_rootNode, v7, v8, v9, v10);
  v16 = objc_msgSend_stringValue(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_stringByAppendingFormat_(v16, v17, @"/%@_Udims", v18, v19, @"MXIMaterial");
  v24 = objc_msgSend_initWithString_(v6, v21, v20, v22, v23);

  v132 = v24;
  v28 = objc_msgSend_newNodeAtPath_type_(self->_scene, v25, v24, *MEMORY[0x277D77960], v26);
  if (!v28)
  {
    v31 = _mxi_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v125 = objc_msgSend_stringValue(v132, v121, v122, v123, v124);
      *buf = 138412290;
      v138 = v125;
      _os_log_impl(&dword_22F9C3000, v31, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:988] [USDWriter] failed to add Material node at path %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v29 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v27, v28, @"UsdPrimvarReader_float2", @"STReader");
  v31 = v29;
  if (!v29)
  {
LABEL_9:
    v71 = 0;
    goto LABEL_12;
  }

  v32 = *MEMORY[0x277D778F0];
  v33 = *MEMORY[0x277D77990];

  v35 = objc_msgSend_newPropertyWithName_type_role_(v31, v34, @"inputs:varname", *MEMORY[0x277D77938], v33);
  objc_msgSend_setStringValue_(v35, v36, @"st", v37, v38);

  v40 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v39, v28, @"UsdUVTexture", @"Texture");
  v42 = v40;
  if (v40)
  {
    v43 = *MEMORY[0x277D77988];
    v129 = *MEMORY[0x277D77900];

    v128 = *MEMORY[0x277D778E8];
    v46 = objc_msgSend_newPropertyWithName_type_role_(v42, v45, @"inputs:file", *MEMORY[0x277D77930], v33);
    objc_msgSend_setResourcePath_(v46, v47, @"slice<UDIM>.png", v48, v49);

    v51 = objc_msgSend_newPropertyWithName_type_role_(v42, v50, @"inputs:st", v32, v33);
    v56 = objc_msgSend_path(v31, v52, v53, v54, v55);
    v60 = objc_msgSend_pathByAppendingPropertyComponent_(v56, v57, @"outputs:out", v58, v59);
    v136 = v60;
    v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, &v136, 1, v62);
    objc_msgSend_setConnectionWithTargetPaths_(v51, v64, v63, v65, v66);

    v68 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v67, v28, @"UsdPreviewSurface", @"PreviewSurface");
    v70 = v68;
    v71 = v68 != 0;
    if (v68)
    {
      v127 = *MEMORY[0x277D77940];

      v130 = objc_msgSend_newPropertyWithName_type_role_(v70, v72, @"inputs:emissiveColor", v129, v43);
      v77 = objc_msgSend_path(v42, v73, v74, v75, v76);
      v81 = objc_msgSend_pathByAppendingPropertyComponent_(v77, v78, @"outputs:rgb", v79, v80);
      v135 = v81;
      v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v82, &v135, 1, v83);
      objc_msgSend_setConnectionWithTargetPaths_(v130, v85, v84, v86, v87);

      v131 = objc_msgSend_newPropertyWithName_type_role_(v70, v88, @"inputs:opacity", v128, v33);
      v93 = objc_msgSend_path(v42, v89, v90, v91, v92);
      v97 = objc_msgSend_pathByAppendingPropertyComponent_(v93, v94, @"outputs:a", v95, v96);
      v134 = v97;
      v100 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v98, &v134, 1, v99);
      objc_msgSend_setConnectionWithTargetPaths_(v131, v101, v100, v102, v103);

      v105 = objc_msgSend_newPropertyWithName_type_role_(v28, v104, @"outputs:surface", v127, v33);
      v110 = objc_msgSend_path(v70, v106, v107, v108, v109);
      v114 = objc_msgSend_pathByAppendingPropertyComponent_(v110, v111, @"outputs:surface", v112, v113);
      v133 = v114;
      v117 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v115, &v133, 1, v116);
      objc_msgSend_setConnectionWithTargetPaths_(v105, v118, v117, v119, v120);

      objc_storeStrong(&self->_materialNode, v28);
    }
  }

  else
  {
    v71 = 0;
  }

LABEL_12:
  return v71;
}

- (BOOL)addSimpleMaterialWithColorTextures:(id)a3
{
  v4 = a3;
  v9 = objc_opt_new();
  for (i = 0; objc_msgSend_arrayLength(v4, v5, v6, v7, v8) > i; ++i)
  {
    v15 = objc_msgSend_pixelFormat(v4, v11, v12, v13, v14);
    v20 = objc_msgSend_mipmapLevelCount(v4, v16, v17, v18, v19);
    v22 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v4, v21, v15, 2, 0, v20, i, 1);
    objc_msgSend_addObject_(v9, v23, v22, v24, v25);
  }

  v26 = objc_msgSend_addSimpleMaterialWithColorArrayTextures_(self, v11, v9, v13, v14);

  return v26;
}

- (BOOL)addSimpleMaterialWithColorArrayTextures:(id)a3
{
  v164 = *MEMORY[0x277D85DE8];
  v145 = a3;
  objc_msgSend_exportSlicesToPNG_(self, v3, v145, v4, v5);
  v10 = objc_msgSend_count(v145, v6, v7, v8, v9);
  if (v10)
  {
    v146 = v10;
    v150 = 0;
    v11 = 0;
    v149 = *MEMORY[0x277D77960];
    v155 = *MEMORY[0x277D778F0];
    v12 = *MEMORY[0x277D77990];
    v153 = *MEMORY[0x277D77988];
    v154 = *MEMORY[0x277D77900];
    v147 = *MEMORY[0x277D77930];
    v148 = *MEMORY[0x277D77938];
    v151 = *MEMORY[0x277D77940];
    v152 = *MEMORY[0x277D778E8];
    while (1)
    {
      v13 = objc_alloc(MEMORY[0x277D77888]);
      v18 = objc_msgSend_path(self->_rootNode, v14, v15, v16, v17);
      v23 = objc_msgSend_stringValue(v18, v19, v20, v21, v22);
      v27 = objc_msgSend_stringByAppendingFormat_(v23, v24, @"/%@_%lu", v25, v26, @"MXIMaterial", v11);
      v156 = objc_msgSend_initWithString_(v13, v28, v27, v29, v30);

      v34 = objc_msgSend_newNodeAtPath_type_(self->_scene, v31, v156, v149, v32);
      if (!v34)
      {
        break;
      }

      v35 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v33, v34, @"UsdPrimvarReader_float2", @"STReader");
      v37 = v35;
      if (!v35)
      {
        goto LABEL_13;
      }

      v39 = objc_msgSend_newPropertyWithName_type_role_(v37, v38, @"inputs:varname", v148, v12);
      objc_msgSend_setStringValue_(v39, v40, @"st", v41, v42);

      v44 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v43, v34, @"UsdUVTexture", @"Texture");
      v46 = v44;
      if (!v44)
      {

LABEL_13:
        v138 = v34;
        goto LABEL_14;
      }

      v49 = objc_msgSend_newPropertyWithName_type_role_(v46, v48, @"inputs:file", v147, v12);
      v50 = v11 + 1001;
      v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"slice%lu.png", v52, v53, v50);
      objc_msgSend_setResourcePath_(v49, v55, v54, v56, v57);

      v59 = objc_msgSend_newPropertyWithName_type_role_(v46, v58, @"inputs:st", v155, v12);
      v64 = objc_msgSend_path(v37, v60, v61, v62, v63);
      v68 = objc_msgSend_pathByAppendingPropertyComponent_(v64, v65, @"outputs:out", v66, v67);
      v161 = v68;
      v71 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v69, &v161, 1, v70);
      objc_msgSend_setConnectionWithTargetPaths_(v59, v72, v71, v73, v74);

      v76 = objc_msgSend_addShaderToMaterial_withIdentifier_name_(self, v75, v34, @"UsdPreviewSurface", @"PreviewSurface");
      v78 = v76;
      if (!v76)
      {

        goto LABEL_13;
      }

      v80 = objc_msgSend_newPropertyWithName_type_role_(v78, v79, @"inputs:emissiveColor", v154, v153);
      v85 = objc_msgSend_path(v46, v81, v82, v83, v84);
      v89 = objc_msgSend_pathByAppendingPropertyComponent_(v85, v86, @"outputs:rgb", v87, v88);
      v160 = v89;
      v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v90, &v160, 1, v91);
      objc_msgSend_setConnectionWithTargetPaths_(v80, v93, v92, v94, v95);

      v97 = objc_msgSend_newPropertyWithName_type_role_(v78, v96, @"inputs:opacity", v152, v12);
      v102 = objc_msgSend_path(v46, v98, v99, v100, v101);
      v106 = objc_msgSend_pathByAppendingPropertyComponent_(v102, v103, @"outputs:a", v104, v105);
      v159 = v106;
      v109 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v107, &v159, 1, v108);
      objc_msgSend_setConnectionWithTargetPaths_(v97, v110, v109, v111, v112);

      v114 = objc_msgSend_newPropertyWithName_type_role_(v34, v113, @"outputs:surface", v151, v12);
      v119 = objc_msgSend_path(v78, v115, v116, v117, v118);
      v123 = objc_msgSend_pathByAppendingPropertyComponent_(v119, v120, @"outputs:surface", v121, v122);
      v158 = v123;
      v126 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v124, &v158, 1, v125);
      objc_msgSend_setConnectionWithTargetPaths_(v114, v127, v126, v128, v129);

      sliceMaterialNodes = self->_sliceMaterialNodes;
      v131 = v50 - 1001;
      v135 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v132, v50 - 1001, v133, v134);
      objc_msgSend_setObject_forKeyedSubscript_(sliceMaterialNodes, v136, v34, v135, v137);

      v11 = v50 - 1000;
      v150 = v131 + 1 >= v146;
      if (v131 + 1 == v146)
      {
        goto LABEL_8;
      }
    }

    v138 = _mxi_log();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v143 = objc_msgSend_stringValue(v156, v139, v140, v141, v142);
      *buf = 138412290;
      v163 = v143;
      _os_log_impl(&dword_22F9C3000, v138, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1046] [USDWriter] failed to add Material node at path %@", buf, 0xCu);
    }

LABEL_14:
  }

  else
  {
LABEL_8:
    v150 = 1;
  }

  return v150;
}

- (BOOL)addMaterialsWithColorTextures:(id)a3 normalTexture:(id)a4 pbrTextures:(id)a5 pbrMaterialDescriptor:(id)a6 depthTesselated:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v129 = *MEMORY[0x277D85DE8];
  v123 = a3;
  v122 = a4;
  v14 = a5;
  v121 = a6;
  if (a8)
  {
    *a8 = 0;
  }

  if (!self->m_requestHighCompatibilityUSD)
  {
    v20 = objc_msgSend_path(self->_usdURL, v15, v16, v17, v18);
    v25 = objc_msgSend_stringByDeletingLastPathComponent(v20, v21, v22, v23, v24);
    v29 = objc_msgSend_stringByAppendingPathComponent_(v25, v26, @"atlas.ktx", v27, v28);

    v30 = v29;
    v120 = v29;
    v35 = objc_msgSend_UTF8String(v30, v31, v32, v33, v34);
    v124 = &unk_28449BCF0;
    v125 = fopen(v35, "wb");
    if ((image::WriteKTX(&v124, v123) & 1) == 0)
    {
      v57 = _mxi_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v29;
        _os_log_impl(&dword_22F9C3000, v57, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1108] Could not write ktx: %@", &buf, 0xCu);
      }

      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v58, a8, @"Could not write ktx: %@", v59, v29);
      v56 = 0;
      goto LABEL_34;
    }

    v119 = v9;
    if (v122)
    {
      v40 = objc_msgSend_path(self->_usdURL, v36, v37, v38, v39);
      v45 = objc_msgSend_stringByDeletingLastPathComponent(v40, v41, v42, v43, v44);
      v49 = objc_msgSend_stringByAppendingPathComponent_(v45, v46, @"atlas_normal.ktx", v47, v48);

      v50 = v49;
      v55 = objc_msgSend_UTF8String(v49, v51, v52, v53, v54);
      *&buf = &unk_28449BCF0;
      *(&buf + 1) = fopen(v55, "wb");
      if ((image::WriteKTX(&buf, v122) & 1) == 0)
      {
        v108 = _mxi_log();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          *v126 = 138412290;
          v127 = v49;
          _os_log_impl(&dword_22F9C3000, v108, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1119] Could not write ktx: %@", v126, 0xCu);
        }

        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v109, a8, @"Could not write ktx: %@", v110, v49);
        *&buf = &unk_28449BCF0;
        fclose(*(&buf + 1));
        goto LABEL_32;
      }

      *&buf = &unk_28449BCF0;
      fclose(*(&buf + 1));

      v118 = @"atlas_normal.ktx";
    }

    else
    {
      v118 = 0;
    }

    v60 = objc_alloc(MEMORY[0x277CBEB18]);
    v65 = objc_msgSend_count(v14, v61, v62, v63, v64);
    v49 = objc_msgSend_initWithCapacity_(v60, v66, v65, v67, v68);
    if (v14)
    {
      for (i = 0; ; i = v76 + 1)
      {
        v76 = i;
        if (objc_msgSend_count(v14, v69, v70, v71, v72) <= i)
        {
          break;
        }

        v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"atlas_pbr_%i.ktx", v74, v75, i);
        objc_msgSend_setObject_atIndexedSubscript_(v49, v78, v77, v76, v79);

        v84 = objc_msgSend_path(self->_usdURL, v80, v81, v82, v83);
        v89 = objc_msgSend_stringByDeletingLastPathComponent(v84, v85, v86, v87, v88);
        v93 = objc_msgSend_objectAtIndexedSubscript_(v49, v90, v76, v91, v92);
        v97 = objc_msgSend_stringByAppendingPathComponent_(v89, v94, v93, v95, v96);

        v98 = v97;
        v103 = objc_msgSend_UTF8String(v97, v99, v100, v101, v102);
        *&buf = &unk_28449BCF0;
        *(&buf + 1) = fopen(v103, "wb");
        v107 = objc_msgSend_objectAtIndexedSubscript_(v14, v104, v76, v105, v106);
        LOBYTE(v93) = image::WriteKTX(&buf, v107);

        if ((v93 & 1) == 0)
        {
          v114 = _mxi_log();
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            *v126 = 138412290;
            v127 = v97;
            _os_log_impl(&dword_22F9C3000, v114, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1132] Could not write ktx: %@", v126, 0xCu);
          }

          objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v115, a8, @"Could not write ktx: %@", v116, v97);
          *&buf = &unk_28449BCF0;
          fclose(*(&buf + 1));

          goto LABEL_32;
        }

        *&buf = &unk_28449BCF0;
        fclose(*(&buf + 1));
      }
    }

    if (objc_msgSend_addShaderGraphWithColorKTXResource_NormalKTXResource_pbrKTXFilename_pbrMaterialDescriptor_depthTesselated_(self, v69, @"atlas.ktx", v118, v49, v121, v119))
    {
      v56 = 1;
LABEL_33:

LABEL_34:
      v124 = &unk_28449BCF0;
      fclose(v125);

      goto LABEL_35;
    }

    v111 = _mxi_log();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22F9C3000, v111, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1139] Could not add shader graph", &buf, 2u);
    }

    objc_msgSend_fillError_withDescription_(MXIInternalError, v112, a8, @"Could not add shader graph", v113);
LABEL_32:
    v56 = 0;
    goto LABEL_33;
  }

  if (self->m_useUdim)
  {
    v19 = objc_msgSend_addUdimMaterialWithColorTextures_(self, v15, v123, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_addSimpleMaterialWithColorTextures_(self, v15, v123, v17, v18);
  }

  v56 = v19;
LABEL_35:

  return v56;
}

- (BOOL)addMaterialsWithColorTextures:(id)a3 depthTesselated:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  if (!self->m_requestHighCompatibilityUSD)
  {
    v14 = objc_msgSend_path(self->_usdURL, v8, v9, v10, v11);
    v19 = objc_msgSend_stringByDeletingLastPathComponent(v14, v15, v16, v17, v18);
    v23 = objc_msgSend_stringByAppendingPathComponent_(v19, v20, @"atlas.ktx", v21, v22);

    v24 = v23;
    v29 = objc_msgSend_UTF8String(v24, v25, v26, v27, v28);
    v39 = &unk_28449BCF0;
    v40 = fopen(v29, "wb");
    if (image::WriteKTX(&v39, v12))
    {
      if (objc_msgSend_addShaderGraphWithColorKTXResource_NormalKTXResource_pbrKTXFilename_pbrMaterialDescriptor_depthTesselated_(self, v30, @"atlas.ktx", 0, 0, 0, v6))
      {
        v31 = 1;
LABEL_18:
        v39 = &unk_28449BCF0;
        fclose(v40);

        goto LABEL_19;
      }

      v35 = _mxi_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22F9C3000, v35, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1175] Could not add shader graph", buf, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v36, a5, @"Could not add shader graph", v37);
    }

    else
    {
      v32 = _mxi_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v23;
        _os_log_impl(&dword_22F9C3000, v32, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1170] Could not write ktx: %@", buf, 0xCu);
      }

      objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v33, a5, @"Could not write ktx: %@", v34, v23);
    }

    v31 = 0;
    goto LABEL_18;
  }

  if (self->m_useUdim)
  {
    v13 = objc_msgSend_addUdimMaterialWithColorArrayTextures_(self, v8, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_addSimpleMaterialWithColorArrayTextures_(self, v8, v12, v10, v11);
  }

  v31 = v13;
LABEL_19:

  return v31;
}

- (BOOL)addThumbnailData:(id)a3 error:(id *)a4
{
  v10 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v11 = objc_msgSend_path(self->_usdURL, v6, v7, v8, v9);
  v16 = objc_msgSend_stringByDeletingLastPathComponent(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_stringByAppendingPathComponent_(v16, v17, @"thumbnail.png", v18, v19);

  v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v21, v20, v22, v23);
  if ((objc_msgSend_writeToURL_atomically_(v10, v25, v24, 0, v26) & 1) == 0)
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v27, a4, @"Thumbnail data writeToURL failed", v28);
LABEL_8:
    v43 = 0;
    goto LABEL_9;
  }

  rootNode = self->_rootNode;
  v30 = objc_alloc(MEMORY[0x277D77878]);
  v35 = objc_msgSend_lastPathComponent(v20, v31, v32, v33, v34);
  v39 = objc_msgSend_initWithResourcePath_(v30, v36, v35, v37, v38);
  LOBYTE(rootNode) = objc_msgSend_setDictionaryMetadataWithKey_dictionaryKey_value_(rootNode, v40, @"assetInfo", @"previews:thumbnails:default:defaultImage", v39);

  if ((rootNode & 1) == 0)
  {
    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v41, a4, @"Failed to set thumbnail in assetInfo", v42);
    goto LABEL_8;
  }

  v43 = 1;
LABEL_9:

  return v43;
}

- (BOOL)setMetadataWithValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_setMetadataWithKey_value_(self->_scene, v8, v7, v6, v9))
  {
    v12 = 1;
  }

  else
  {
    v12 = objc_msgSend_setCustomMetadata_value_(self->_scene, v10, v7, v6, v11);
  }

  return v12;
}

- (BOOL)addStringValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D77878]);
  v12 = objc_msgSend_initWithString_(v8, v9, v6, v10, v11);
  LOBYTE(self) = objc_msgSend_setMetadataWithValue_forKey_(self, v13, v12, v7, v14);

  return self;
}

- (BOOL)addIntValue:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D77878]);
  v11 = objc_msgSend_initWithInt_(v7, v8, v4, v9, v10);
  LOBYTE(self) = objc_msgSend_setMetadataWithValue_forKey_(self, v12, v11, v6, v13);

  return self;
}

- (BOOL)addFloatValue:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D77878]);
  *&v8 = a3;
  v13 = objc_msgSend_initWithFloat_(v7, v9, v10, v11, v12, v8);
  LOBYTE(self) = objc_msgSend_setMetadataWithValue_forKey_(self, v14, v13, v6, v15);

  return self;
}

- (BOOL)addDoubleValue:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D77878]);
  v12 = objc_msgSend_initWithDouble_(v7, v8, v9, v10, v11, a3);
  LOBYTE(self) = objc_msgSend_setMetadataWithValue_forKey_(self, v13, v12, v6, v14);

  return self;
}

- (uint64_t)addDouble4x4Value:(_OWORD *)a3 forKey:(void *)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D77878]);
  v8 = a3[5];
  v20[4] = a3[4];
  v20[5] = v8;
  v9 = a3[7];
  v20[6] = a3[6];
  v20[7] = v9;
  v10 = a3[1];
  v20[0] = *a3;
  v20[1] = v10;
  v11 = a3[3];
  v20[2] = a3[2];
  v20[3] = v11;
  v15 = objc_msgSend_initWithDouble4x4_(v7, v12, v20, v13, v14);
  v18 = objc_msgSend_setMetadataWithValue_forKey_(a1, v16, v15, v6, v17);

  return v18;
}

- (void)addModelToWorldTransform:(float32x4_t)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v31 = vcvtq_f64_f32(*a4.f32);
  v32 = vcvtq_f64_f32(*a3.f32);
  v29 = vcvtq_f64_f32(*a5.f32);
  v30 = vcvt_hight_f64_f32(a3);
  v27 = vcvtq_f64_f32(*a6.f32);
  v28 = vcvt_hight_f64_f32(a4);
  v25 = vcvt_hight_f64_f32(a6);
  v26 = vcvt_hight_f64_f32(a5);
  v7 = *MEMORY[0x277D77990];
  v8 = objc_msgSend_newPropertyWithName_type_role_(*(a1 + 56), a2, @"xformOp:transform", *MEMORY[0x277D778E0], *MEMORY[0x277D77990]);
  v33[0] = v32;
  v33[1] = v30;
  v33[2] = v31;
  v33[3] = v28;
  v33[4] = v29;
  v33[5] = v26;
  v33[6] = v27;
  v33[7] = v25;
  objc_msgSend_setDouble4x4Value_(v8, v9, v33, v10, v11);

  v13 = objc_msgSend_newPropertyWithName_type_role_(*(a1 + 56), v12, @"xformOpOrder", *MEMORY[0x277D77948], v7);
  v14 = objc_alloc(MEMORY[0x277D778B0]);
  v18 = objc_msgSend_initWithString_(v14, v15, @"xformOp:transform", v16, v17);
  v34[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v34, 1, v20);
  objc_msgSend_setTokenArray_(v13, v22, v21, v23, v24);
}

- (void)package
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = _mxi_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F9C3000, v3, OS_LOG_TYPE_DEFAULT, "[MXI.framework] [MXISceneUSDZWriter] package", buf, 2u);
  }

  v4 = _MXISignpostLogSystem();
  v5 = _MXISignpostCreate(v4);
  v6 = v4;
  v7 = v6;
  v55 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MXI_USDZ_PACKAGE", &unk_22FA1C169, buf, 2u);
  }

  spid = v5;

  if (self->_materialNode)
  {
    log = objc_msgSend_newPropertyWithName_type_role_(self->_meshNode, v8, @"material:binding", *MEMORY[0x277D77928], *MEMORY[0x277D77990]);
    v16 = objc_msgSend_path(self->_materialNode, v12, v13, v14, v15);
    objc_msgSend_setObjectPath_(log, v17, v16, v18, v19);
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    log = objc_msgSend_allKeys(self->_geomSubsetNodes, v8, v9, v10, v11);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(log, v20, &v57, v62, 16);
    if (v24)
    {
      v25 = *v58;
      v26 = *MEMORY[0x277D77928];
      v27 = *MEMORY[0x277D77990];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(log);
          }

          v29 = *(*(&v57 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKeyedSubscript_(self->_geomSubsetNodes, v21, v29, v22, v23);
          v34 = objc_msgSend_objectForKeyedSubscript_(self->_sliceMaterialNodes, v31, v29, v32, v33);
          v36 = v34;
          if (v30)
          {
            v37 = v34 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = objc_msgSend_newPropertyWithName_type_role_(v30, v35, @"material:binding", v26, v27);
            v43 = objc_msgSend_path(v36, v39, v40, v41, v42);
            objc_msgSend_setObjectPath_(v38, v44, v43, v45, v46);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(log, v21, &v57, v62, 16);
      }

      while (v24);
    }
  }

  usdzURL = self->_usdzURL;
  if (usdzURL)
  {
    objc_msgSend_saveAndCreateUSDZPackageWithURL_(self->_scene, v47, usdzURL, v48, v49);
  }

  else if (self->_bundleURL)
  {
    objc_msgSend_save(self->_scene, v47, 0, v48, v49);
  }

  else
  {
    v51 = _mxi_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22F9C3000, v51, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZWriter.mm:1278] [USDWriter] failed to package USKScene", buf, 2u);
    }
  }

  v52 = _MXISignpostLogSystem();
  v53 = v52;
  if (v55 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F9C3000, v53, OS_SIGNPOST_INTERVAL_END, spid, "MXI_USDZ_PACKAGE", &unk_22FA1C169, buf, 2u);
  }
}

@end