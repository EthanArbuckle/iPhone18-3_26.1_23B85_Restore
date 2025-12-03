@interface MXIBackLayer
- (MXIBackLayer)initWithDevice:(id)device tileSize:(unsigned int)size tileMips:(unsigned int)mips downsampleLODs:(unsigned int)ds pixelFormat:(unint64_t)format failOnBinaryArchiveMiss:(BOOL)miss error:(id *)error;
- (void)createBackLayerWthCommandBuffer:(id)buffer;
- (void)processWthCommandBuffer:(id)buffer colorTexture:(id)texture depthTexture:(id)depthTexture;
@end

@implementation MXIBackLayer

- (MXIBackLayer)initWithDevice:(id)device tileSize:(unsigned int)size tileMips:(unsigned int)mips downsampleLODs:(unsigned int)ds pixelFormat:(unint64_t)format failOnBinaryArchiveMiss:(BOOL)miss error:(id *)error
{
  missCopy = miss;
  v173 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v169.receiver = self;
  v169.super_class = MXIBackLayer;
  v19 = [(MXIBackLayer *)&v169 init];
  if (v19)
  {
    formatCopy = format;
    dsCopy = ds;
    sizeCopy = size;
    mipsCopy = mips;
    v20 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v16, @"com.apple.mxi", v17, v18);
    v26 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v21, v20, error, v22);
    if (v26)
    {
      v27 = v20;
    }

    else
    {
      if (error)
      {
        *error = 0;
      }

      v27 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v23, @"com.apple.mxi.TiledTests", v24, v25);

      v26 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v29, v27, error, v30);
    }

    v168 = objc_opt_new();
    v166 = v27;
    v33 = objc_msgSend_URLForResource_withExtension_(v27, v31, @"mxi_archive", @"metallib", v32);
    objc_msgSend_setUrl_(v168, v34, v33, v35, v36);

    v39 = objc_msgSend_newBinaryArchiveWithDescriptor_error_(deviceCopy, v37, v168, error, v38);
    v167 = v39;
    if (v39)
    {
      v170 = v39;
      v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, &v170, 1, v41);
    }

    else
    {
      v43 = _mxi_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_msgSend_localizedDescription(*error, v44, v45, v46, v47);
        *buf = 138412290;
        v172 = v48;
        _os_log_impl(&dword_22F9C3000, v43, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:43] [TiledProcessor] WARNING: nil MTLBinaryArchive for mxi_archive, error %@", buf, 0xCu);
      }

      v42 = 0;
    }

    if (missCopy)
    {
      v49 = 4;
    }

    else
    {
      v49 = 0;
    }

    v50 = objc_opt_new();
    v54 = objc_msgSend_newFunctionWithName_(v26, v51, @"concat_rgbd", v52, v53);
    objc_msgSend_setComputeFunction_(v50, v55, v54, v56, v57);

    objc_msgSend_setBinaryArchives_(v50, v58, v42, v59, v60);
    v62 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v61, v50, v49, 0, error);
    concatRGBD = v19->_concatRGBD;
    v19->_concatRGBD = v62;

    if (!v19->_concatRGBD)
    {
      v92 = _mxi_log();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v134 = objc_msgSend_computeFunction(v50, v130, v131, v132, v133);
        v139 = objc_msgSend_name(v134, v135, v136, v137, v138);
        *buf = 138412290;
        v172 = v139;
        _os_log_impl(&dword_22F9C3000, v92, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:60] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }

      v28 = 0;
      goto LABEL_38;
    }

    v64 = objc_opt_new();

    v68 = objc_msgSend_newFunctionWithName_(v26, v65, @"downscale_alpha_weighted", v66, v67);
    objc_msgSend_setComputeFunction_(v64, v69, v68, v70, v71);

    objc_msgSend_setBinaryArchives_(v64, v72, v42, v73, v74);
    v76 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v75, v64, v49, 0, error);
    downscaleAlphtaWeighted = v19->_downscaleAlphtaWeighted;
    v19->_downscaleAlphtaWeighted = v76;

    if (!v19->_downscaleAlphtaWeighted)
    {
      v92 = _mxi_log();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v144 = objc_msgSend_computeFunction(v64, v140, v141, v142, v143);
        v149 = objc_msgSend_name(v144, v145, v146, v147, v148);
        *buf = 138412290;
        v172 = v149;
        _os_log_impl(&dword_22F9C3000, v92, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:72] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }

      v28 = 0;
      v50 = v64;
      goto LABEL_38;
    }

    v78 = objc_opt_new();

    v82 = objc_msgSend_newFunctionWithName_(v26, v79, @"back_layer_copy", v80, v81);
    objc_msgSend_setComputeFunction_(v78, v83, v82, v84, v85);

    objc_msgSend_setBinaryArchives_(v78, v86, v42, v87, v88);
    v90 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v89, v78, 0, 0, error);
    backLayerBlend = v19->_backLayerBlend;
    v19->_backLayerBlend = v90;

    if (v19->_backLayerBlend)
    {
      v92 = objc_opt_new();
      objc_msgSend_setTextureType_(v92, v93, 2, v94, v95);
      objc_msgSend_setWidth_(v92, v96, sizeCopy << (dsCopy - 1), v97, v98);
      objc_msgSend_setHeight_(v92, v99, sizeCopy << (dsCopy - 1), v100, v101);
      objc_msgSend_setPixelFormat_(v92, v102, formatCopy, v103, v104);
      objc_msgSend_setMipmapLevelCount_(v92, v105, dsCopy + 1, v106, v107);
      objc_msgSend_setUsage_(v92, v108, 3, v109, v110);
      v114 = objc_msgSend_newTextureWithDescriptor_(deviceCopy, v111, v92, v112, v113);
      backLayerTexture = v19->_backLayerTexture;
      v19->_backLayerTexture = v114;

      if (v19->_backLayerTexture)
      {
        objc_msgSend_setWidth_(v92, v116, sizeCopy, v117, v118);
        objc_msgSend_setHeight_(v92, v119, sizeCopy, v120, v121);
        objc_msgSend_setMipmapLevelCount_(v92, v122, mipsCopy, v123, v124);
        v128 = objc_msgSend_newTextureWithDescriptor_(deviceCopy, v125, v92, v126, v127);
        tileTexture = v19->_tileTexture;
        v19->_tileTexture = v128;

        if (v19->_tileTexture)
        {
          v19->_lods = dsCopy;
          v28 = v19;
LABEL_37:
          v50 = v78;
LABEL_38:

          goto LABEL_39;
        }

        v160 = _mxi_log();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v160, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:110] Failed on creating back layer tile texture", buf, 2u);
        }
      }

      else
      {
        v160 = _mxi_log();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_22F9C3000, v160, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:100] Failed on creating back layer texture", buf, 2u);
        }
      }
    }

    else
    {
      v92 = _mxi_log();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v154 = objc_msgSend_computeFunction(v78, v150, v151, v152, v153);
        v159 = objc_msgSend_name(v154, v155, v156, v157, v158);
        *buf = 138412290;
        v172 = v159;
        _os_log_impl(&dword_22F9C3000, v92, OS_LOG_TYPE_ERROR, "[MXI.framework/MXIBackLayer.mm:84] Failed on creating compute pipeline state for function '%@'", buf, 0xCu);
      }
    }

    v28 = 0;
    goto LABEL_37;
  }

  v28 = 0;
LABEL_39:

  return v28;
}

- (void)processWthCommandBuffer:(id)buffer colorTexture:(id)texture depthTexture:(id)depthTexture
{
  textureCopy = texture;
  depthTextureCopy = depthTexture;
  v14 = objc_msgSend_computeCommandEncoder(buffer, v10, v11, v12, v13);
  objc_msgSend_setLabel_(v14, v15, @"MXI: ConcatRGBD", v16, v17);
  objc_msgSend_setComputePipelineState_(v14, v18, self->_concatRGBD, v19, v20);
  objc_msgSend_setTexture_atIndex_(v14, v21, textureCopy, 0, v22);
  objc_msgSend_setTexture_atIndex_(v14, v23, depthTextureCopy, 1, v24);
  objc_msgSend_setTexture_atIndex_(v14, v25, self->_backLayerTexture, 2, v26);
  v43[0] = objc_msgSend_width(self->_backLayerTexture, v27, v28, v29, v30);
  v43[1] = objc_msgSend_height(self->_backLayerTexture, v31, v32, v33, v34);
  v43[2] = 1;
  v41 = vdupq_n_s64(0x20uLL);
  v42 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v14, v35, v43, &v41, v36);
  objc_msgSend_endEncoding(v14, v37, v38, v39, v40);
}

- (void)createBackLayerWthCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v9 = objc_msgSend_computeCommandEncoder(bufferCopy, v5, v6, v7, v8);
  objc_msgSend_setLabel_(v9, v10, @"MXI: Backlayer filtering", v11, v12);
  backLayerTexture = self->_backLayerTexture;
  v18 = objc_msgSend_pixelFormat(backLayerTexture, v14, v15, v16, v17);
  v23 = objc_msgSend_textureType(self->_backLayerTexture, v19, v20, v21, v22);
  v25 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(backLayerTexture, v24, v18, v23, 0, 1, 0, 1);
  v30 = v25;
  v101 = 1;
  if (self->_lods)
  {
    v95 = vdupq_n_s64(8uLL);
    do
    {
      v31 = self->_backLayerTexture;
      v32 = objc_msgSend_pixelFormat(v31, v26, v27, v28, v29, *&v95);
      v37 = objc_msgSend_textureType(self->_backLayerTexture, v33, v34, v35, v36);
      v39 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v31, v38, v32, v37, v101, 1, 0, 1);
      objc_msgSend_setComputePipelineState_(v9, v40, self->_downscaleAlphtaWeighted, v41, v42);
      objc_msgSend_setTexture_atIndex_(v9, v43, v30, 0, v44);
      objc_msgSend_setTexture_atIndex_(v9, v45, v39, 1, v46);
      objc_msgSend_setBytes_length_atIndex_(v9, v47, &v101, 4, 0);
      v98 = objc_msgSend_width(v30, v48, v49, v50, v51);
      v99 = objc_msgSend_height(v30, v52, v53, v54, v55);
      v100 = 1;
      v96 = v95;
      v97 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v9, v56, &v98, &v96, v57);

      ++v101;
      v30 = v39;
    }

    while (self->_lods >= v101);
  }

  else
  {
    v39 = v25;
  }

  v101 = vcvts_n_f32_u32(1 << (objc_msgSend_mipmapLevelCount(self->_tileTexture, v26, v27, v28, v29) - 1), 1uLL);
  objc_msgSend_setComputePipelineState_(v9, v58, self->_backLayerBlend, v59, v60);
  objc_msgSend_setTexture_atIndex_(v9, v61, v39, 0, v62);
  objc_msgSend_setTexture_atIndex_(v9, v63, self->_tileTexture, 1, v64);
  objc_msgSend_setBytes_length_atIndex_(v9, v65, &v101, 4, 0);
  v98 = objc_msgSend_width(self->_tileTexture, v66, v67, v68, v69);
  v99 = objc_msgSend_height(self->_tileTexture, v70, v71, v72, v73);
  v100 = 1;
  v96 = vdupq_n_s64(8uLL);
  v97 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v9, v74, &v98, &v96, v75);
  objc_msgSend_endEncoding(v9, v76, v77, v78, v79);
  v84 = objc_msgSend_blitCommandEncoder(bufferCopy, v80, v81, v82, v83);
  objc_msgSend_setLabel_(v84, v85, @"MXI: Backlayer mipmapping", v86, v87);
  objc_msgSend_generateMipmapsForTexture_(v84, v88, self->_tileTexture, v89, v90);
  objc_msgSend_endEncoding(v84, v91, v92, v93, v94);
}

@end