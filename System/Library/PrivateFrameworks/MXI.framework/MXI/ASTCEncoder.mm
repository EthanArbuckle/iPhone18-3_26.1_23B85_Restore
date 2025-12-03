@interface ASTCEncoder
- (ASTCEncoder)initWithDevice:(id)device blockWidth:(unsigned int)width blockHeight:(unsigned int)height rankModesCountRatio:(float)ratio fastSkipThreshold:(unsigned int)threshold collectStatistics:(BOOL)statistics error:(id *)error;
- (BOOL)finalizeStatistics:(const char *)statistics modesPath:(const char *)path errorsPath:(const char *)errorsPath;
- (void)encodeWithCommandBuffer:(id)buffer destTexture:(id)texture destSlice:(unint64_t)slice destLevel:(unint64_t)level srcTexture:(id)srcTexture srcSlice:(unint64_t)srcSlice srcLevel:(unint64_t)srcLevel;
@end

@implementation ASTCEncoder

- (ASTCEncoder)initWithDevice:(id)device blockWidth:(unsigned int)width blockHeight:(unsigned int)height rankModesCountRatio:(float)ratio fastSkipThreshold:(unsigned int)threshold collectStatistics:(BOOL)statistics error:(id *)error
{
  statisticsCopy = statistics;
  v113 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  thresholdCopy = threshold;
  v17 = _mxi_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    widthCopy = width;
    v107 = 1024;
    heightCopy = height;
    v109 = 2048;
    ratioCopy = ratio;
    v111 = 1024;
    thresholdCopy2 = threshold;
    _os_log_impl(&dword_22F9C3000, v17, OS_LOG_TYPE_DEFAULT, "[Image] [ASTCEncoder] Initializing with block width %u and height %u, rank modes count ratio %f fast skip threshold %u", buf, 0x1Eu);
  }

  v102.receiver = self;
  v102.super_class = ASTCEncoder;
  v18 = [(ASTCEncoder *)&v102 init];
  v21 = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

  *(v18 + 24) = 0u;
  *(v18 + 7) = 0;
  *(v18 + 40) = 0u;
  if (thresholdCopy > 5)
  {
    objc_msgSend_fillError_withDescription_(MXIInternalError, v19, error, @"No implementation for fastThresholdCount > 5", v20);
    goto LABEL_12;
  }

  v22 = &xmmword_2788ADDD0;
  v23 = 6;
  v24 = @"Failed to look up ASTC shaders";
  while (*v22 != width || *(v22 + 1) != height || *(v22 + 2) != statisticsCopy)
  {
    v22 = (v22 + 40);
    if (!--v23)
    {
      goto LABEL_11;
    }
  }

  *(v18 + 7) = *(v22 + 4);
  *(v18 + 40) = v22[1];
  *(v18 + 24) = *v22;
  if (!*(v18 + 6))
  {
LABEL_11:
    objc_msgSend_fillError_withDescription_(MXIInternalError, v19, error, @"Failed to look up ASTC shaders", v20);
    goto LABEL_12;
  }

  v18[148] = statisticsCopy;
  if (statisticsCopy)
  {
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = *(v21 + 8);
    *(v21 + 8) = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = *(v21 + 9);
    *(v21 + 9) = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = *(v21 + 17);
    *(v21 + 17) = v30;
  }

  v21[36] = ratio;
  if (!*(v21 + 5))
  {
    objc_msgSend_fillError_withDescription_(MXIInternalError, v19, error, @"Unsupported ASTC block size", v20);
    goto LABEL_12;
  }

  v32 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v19, @"com.apple.mxi", v24, v20);
  v38 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v33, v32, 0, v34);
  if (v38)
  {
    v101 = v32;
  }

  else
  {
    v101 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v35, @"com.apple.mxi.ImageTests", v36, v37);

    v38 = objc_msgSend_newDefaultLibraryWithBundle_error_(deviceCopy, v39, v101, 0, v40);
  }

  v41 = objc_opt_new();
  v44 = objc_msgSend_URLForResource_withExtension_(v101, v42, @"mxi_archive", @"metallib", v43);
  objc_msgSend_setUrl_(v41, v45, v44, v46, v47);

  v99 = objc_msgSend_newBinaryArchiveWithDescriptor_error_(deviceCopy, v48, v41, error, v49);
  v104 = v99;
  v100 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, &v104, 1, v51);
  *buf = 4;
  v52 = objc_opt_new();
  objc_msgSend_setConstantValue_type_atIndex_(v52, v53, buf, 33, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v52, v54, &thresholdCopy, 33, 1);
  v55 = MEMORY[0x277CCACA8];
  v56 = *(v21 + 7);
  v61 = objc_msgSend_defaultCStringEncoding(MEMORY[0x277CCACA8], v57, v58, v59, v60);
  v64 = objc_msgSend_stringWithCString_encoding_(v55, v62, v56, v61, v63);
  v66 = objc_msgSend_newFunctionWithName_constantValues_error_(v38, v65, v64, v52, error);

  if (!v66)
  {
    objc_msgSend_fillError_withDescription_(MXIInternalError, v67, error, @"Failed to create shader function without buffer", v70);

    goto LABEL_12;
  }

  v71 = MEMORY[0x277CCACA8];
  v72 = *(v21 + 6);
  v73 = objc_msgSend_defaultCStringEncoding(MEMORY[0x277CCACA8], v67, v68, v69, v70);
  v76 = objc_msgSend_stringWithCString_encoding_(v71, v74, v72, v73, v75);
  v78 = objc_msgSend_newFunctionWithName_constantValues_error_(v38, v77, v76, v52, error);

  if (!v78)
  {
    objc_msgSend_fillError_withDescription_(MXIInternalError, v79, error, @"Failed to create shader function with buffer", v80);

    goto LABEL_12;
  }

  v81 = objc_opt_new();
  objc_msgSend_setBinaryArchives_(v81, v82, v100, v83, v84);
  objc_msgSend_setComputeFunction_(v81, v85, v66, v86, v87);
  v89 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v88, v81, 0, 0, error);
  v90 = *(v21 + 1);
  *(v21 + 1) = v89;

  if (!*(v21 + 1))
  {

    goto LABEL_12;
  }

  objc_msgSend_setComputeFunction_(v81, v91, v78, v92, v93);
  v95 = objc_msgSend_newComputePipelineStateWithDescriptor_options_reflection_error_(deviceCopy, v94, v81, 0, 0, error);
  v96 = *(v21 + 2);
  *(v21 + 2) = v95;

  v97 = *(v21 + 2) == 0;
  if (!v97)
  {
LABEL_26:
    v25 = v21;
    goto LABEL_27;
  }

LABEL_12:
  v25 = 0;
LABEL_27:

  return v25;
}

- (void)encodeWithCommandBuffer:(id)buffer destTexture:(id)texture destSlice:(unint64_t)slice destLevel:(unint64_t)level srcTexture:(id)srcTexture srcSlice:(unint64_t)srcSlice srcLevel:(unint64_t)srcLevel
{
  v153 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  srcTextureCopy = srcTexture;
  v13 = _mxi_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    *&buf[4] = slice;
    *&buf[12] = 2048;
    *&buf[14] = level;
    *&buf[22] = 2048;
    srcSliceCopy = srcSlice;
    v151 = 2048;
    srcLevelCopy = srcLevel;
    _os_log_impl(&dword_22F9C3000, v13, OS_LOG_TYPE_DEBUG, "[Image] [ASTCEncoder] encoding with command buffer for destination slice %lu, level %lu and source slice %lu, level %lu", buf, 0x2Au);
  }

  v140 = objc_msgSend_width(srcTextureCopy, v14, v15, v16, v17);
  v22 = objc_msgSend_height(srcTextureCopy, v18, v19, v20, v21);
  width = self->_info.width;
  v137 = v22 >> srcLevel;
  v138 = ((v22 >> srcLevel) + self->_info.height - 1) / self->_info.height;
  v26 = (v138 * v138);
  if (self->m_collectStatistics)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"src_slice_%lu_mip_%lu_dst_slice_%lu_mip_%lu", v24, v25, srcSlice, srcLevel, slice, level);
    v31 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, v26, v29, v30);
    objc_msgSend_setObject_forKeyedSubscript_(self->m_totalBlocks, v32, v31, v27, v33);

    v38 = objc_msgSend_device(srcTextureCopy, v34, v35, v36, v37);
    v41 = objc_msgSend_newBufferWithLength_options_(v38, v39, (20 * v26), 0, v40);
    objc_msgSend_setObject_forKeyedSubscript_(self->m_modesErrorsBuffer, v42, v41, v27, v43);

    v48 = objc_msgSend_device(srcTextureCopy, v44, v45, v46, v47);
    v51 = objc_msgSend_newBufferWithLength_options_(v48, v49, (20 * v26), 0, v50);
    objc_msgSend_setObject_forKeyedSubscript_(self->m_modesCounterBuffer, v52, v51, v27, v53);
  }

  v58 = objc_opt_respondsToSelector();
  v136 = (16 * v26);
  if (v58)
  {
    v141 = objc_msgSend_newCompressedTextureViewWithPixelFormat_textureType_level_slice_(textureCopy, v54, 123, 2, level, slice);
    v59 = 0;
  }

  else
  {
    v60 = objc_msgSend_device(srcTextureCopy, v54, v55, v56, v57);
    v59 = objc_msgSend_newBufferWithLength_options_(v60, v61, (16 * v26), 0, v62);

    v141 = 0;
  }

  v63 = srcTextureCopy;
  v68 = objc_msgSend_textureType(v63, v64, v65, v66, v67);
  if (srcLevel || (v73 = v63, v68 == 3))
  {
    v74 = objc_msgSend_pixelFormat(v63, v69, v70, v71, v72);
    v73 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v63, v75, v74, 2, srcLevel, 1, srcSlice, 1);
  }

  v76 = objc_msgSend_computeCommandEncoder(bufferCopy, v69, v70, v71, v72);
  v80 = v76;
  v81 = 8;
  if (v58)
  {
    v81 = 16;
  }

  objc_msgSend_setComputePipelineState_(v76, v77, *(&self->super.isa + v81), v78, v79);
  objc_msgSend_setTexture_atIndex_(v80, v82, v73, 0, v83);
  objc_msgSend_setTexture_atIndex_(v80, v84, v141, 1, v85);
  objc_msgSend_setBytes_length_atIndex_(v80, v86, &self->m_rankModesCountRatio, 4, 3);
  if ((v58 & 1) == 0)
  {
    objc_msgSend_setBuffer_offset_atIndex_(v80, v87, v59, 0, 0);
  }

  if (self->m_collectStatistics)
  {
    v90 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v87, @"src_slice_%lu_mip_%lu_dst_slice_%lu_mip_%lu", v88, v89, srcSlice, srcLevel, slice, level);
    v94 = objc_msgSend_objectForKeyedSubscript_(self->m_modesErrorsBuffer, v91, v90, v92, v93);
    v95 = v94;
    v100 = objc_msgSend_contents(v94, v96, v97, v98, v99);
    v101 = (20 * v26);
    bzero(v100, v101);

    v105 = objc_msgSend_objectForKeyedSubscript_(self->m_modesCounterBuffer, v102, v90, v103, v104);
    v106 = v105;
    v111 = objc_msgSend_contents(v105, v107, v108, v109, v110);
    bzero(v111, v101);

    v115 = objc_msgSend_objectForKeyedSubscript_(self->m_modesErrorsBuffer, v112, v90, v113, v114);
    objc_msgSend_setBuffer_offset_atIndex_(v80, v116, v115, 0, 1);

    v120 = objc_msgSend_objectForKeyedSubscript_(self->m_modesCounterBuffer, v117, v90, v118, v119);
    objc_msgSend_setBuffer_offset_atIndex_(v80, v121, v120, 0, 2);
  }

  *buf = ((v140 >> srcLevel) + width - 1) / width;
  *&buf[8] = v138;
  *&buf[16] = 1;
  v147 = vdupq_n_s64(8uLL);
  v148 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v80, v87, buf, &v147, v89);
  objc_msgSend_endEncoding(v80, v122, v123, v124, v125);
  if (!(v58 & 1 | (v59 == 0)))
  {
    v130 = objc_msgSend_blitCommandEncoder(bufferCopy, v126, v127, v128, v129);
    *buf = (v140 >> srcLevel);
    *&buf[8] = v137;
    *&buf[16] = 1;
    v147 = 0uLL;
    v148 = 0;
    objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v130, v131, v59, 0, 16 * (((v140 >> srcLevel) + width - 1) / width), v136, buf, textureCopy, slice, level, &v147);
    objc_msgSend_endEncoding(v130, v132, v133, v134, v135);
  }
}

- (BOOL)finalizeStatistics:(const char *)statistics modesPath:(const char *)path errorsPath:(const char *)errorsPath
{
  v105 = *MEMORY[0x277D85DE8];
  __p = 0uLL;
  v98 = 0;
  __ptr = objc_msgSend_count(self->m_modesCounterBuffer, a2, statistics, path, errorsPath);
  v96 = 5;
  sub_22F9E1D68(buf, __ptr);
  __p = *buf;
  v98 = v104;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v10 = objc_msgSend_allKeys(self->m_totalBlocks, v6, v7, v8, v9);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v91, v102, 16);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *v92;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v92 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v91 + 1) + 8 * i);
        v21 = objc_msgSend_objectForKeyedSubscript_(self->m_totalBlocks, v12, v20, v13, v14);
        v26 = objc_msgSend_unsignedIntValue(v21, v22, v23, v24, v25);

        v30 = objc_msgSend_objectForKeyedSubscript_(self->m_totalBlocks, v27, v20, v28, v29);
        v35 = objc_msgSend_unsignedIntValue(v30, v31, v32, v33, v34);
        *(__p + 4 * v16) = v35;

        v17 += v26;
        ++v16;
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v91, v102, 16);
    }

    while (v15);
  }

  else
  {
    v17 = 0;
  }

  v36 = fopen(statistics, "wb");
  if (v36)
  {
    fwrite(&__ptr, 1uLL, 4uLL, v36);
    fwrite(&v96, 1uLL, 4uLL, v36);
    fwrite(__p, 1uLL, 4 * __ptr, v36);
    fclose(v36);
    sub_22F9E1D68(buf, (v96 * v17));
    sub_22F9EA128(v90, (v96 * v17));
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    __filenamea = objc_msgSend_allKeys(self->m_modesCounterBuffer, v37, v38, v39, v40);
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(__filenamea, v41, &v86, v101, 16);
    if (v45)
    {
      v46 = 0;
      v47 = *v87;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v87 != v47)
          {
            objc_enumerationMutation(__filenamea);
          }

          v49 = *(*(&v86 + 1) + 8 * j);
          v50 = objc_msgSend_objectForKeyedSubscript_(self->m_modesCounterBuffer, v42, v49, v43, v44);
          v51 = v50;
          v56 = objc_msgSend_contents(v50, v52, v53, v54, v55);

          v60 = objc_msgSend_objectForKeyedSubscript_(self->m_modesErrorsBuffer, v57, v49, v58, v59);
          v61 = v60;
          v66 = objc_msgSend_contents(v60, v62, v63, v64, v65);

          v70 = objc_msgSend_objectForKeyedSubscript_(self->m_totalBlocks, v67, v49, v68, v69);
          LODWORD(v49) = objc_msgSend_unsignedIntValue(v70, v71, v72, v73, v74);

          memcpy((*buf + 4 * v46), v56, 4 * (v96 * v49));
          memcpy(v90[0] + 4 * v46, v66, 4 * (v96 * v49));
          v46 += v96 * v49;
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(__filenamea, v42, &v86, v101, 16);
      }

      while (v45);
    }

    v75 = fopen(path, "wb");
    if (v75)
    {
      fwrite(*buf, 1uLL, 4 * (v96 * v17), v75);
      fclose(v75);
      v76 = fopen(errorsPath, "wb");
      if (v76)
      {
        fwrite(v90[0], 1uLL, 4 * (v96 * v17), v76);
        fclose(v76);
        v77 = 1;
LABEL_31:
        if (v90[0])
        {
          v90[1] = v90[0];
          operator delete(v90[0]);
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        goto LABEL_35;
      }

      v80 = _mxi_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *v99 = 136315138;
        pathCopy = errorsPath;
        _os_log_impl(&dword_22F9C3000, v80, OS_LOG_TYPE_DEFAULT, "[Image] Could not create the binary file %s", v99, 0xCu);
      }
    }

    else
    {
      v79 = _mxi_log();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *v99 = 136315138;
        pathCopy = path;
        _os_log_impl(&dword_22F9C3000, v79, OS_LOG_TYPE_DEFAULT, "[Image] Could not create the binary file %s", v99, 0xCu);
      }
    }

    v77 = 0;
    goto LABEL_31;
  }

  v78 = _mxi_log();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = statistics;
    _os_log_impl(&dword_22F9C3000, v78, OS_LOG_TYPE_DEFAULT, "[Image] Could not create the binary file %s", buf, 0xCu);
  }

  v77 = 0;
LABEL_35:
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  return v77;
}

@end