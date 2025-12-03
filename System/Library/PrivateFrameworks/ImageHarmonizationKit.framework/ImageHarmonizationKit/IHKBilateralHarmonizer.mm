@interface IHKBilateralHarmonizer
+ (id)getDefault;
- (CGImage)handleRequest:(id)request;
- (IHKBilateralHarmonizer)initWithNetwork:(id)network supportsAlpha:(unsigned __int8)alpha fgName:(id)name bgName:(id)bgName outName:(id)outName gatingOutName:(id)gatingOutName gatingThreshold:(float)threshold inputResolution:(unint64_t)self0 baseHarmonizationStrength:(float)self1;
- (id).cxx_construct;
- (id)harmonize:(id)harmonize;
@end

@implementation IHKBilateralHarmonizer

+ (id)getDefault
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v3, v5, v4, v6, v7);
  v10 = objc_msgSend_pathForResource_ofType_inDirectory_(v8, v9, @"stylotorch_1.3.0_har_5yfia6gt28_227200_gat_dkn9b63bjd_22752", @"espresso.net", @"Models");
  v11 = [self alloc];
  LODWORD(v12) = 1050253722;
  LODWORD(v13) = 0.75;
  v15 = objc_msgSend_initWithNetwork_supportsAlpha_fgName_bgName_outName_gatingOutName_gatingThreshold_inputResolution_baseHarmonizationStrength_(v11, v14, v10, 1, @"subject_rgba", @"background_style", @"decoder_swapped_grid_predictor_grid", @"gating_module_subject_orig_out", v12, v13, 128);

  return v15;
}

- (IHKBilateralHarmonizer)initWithNetwork:(id)network supportsAlpha:(unsigned __int8)alpha fgName:(id)name bgName:(id)bgName outName:(id)outName gatingOutName:(id)gatingOutName gatingThreshold:(float)threshold inputResolution:(unint64_t)self0 baseHarmonizationStrength:(float)self1
{
  networkCopy = network;
  nameCopy = name;
  bgNameCopy = bgName;
  outNameCopy = outName;
  gatingOutNameCopy = gatingOutName;
  v28.receiver = self;
  v28.super_class = IHKBilateralHarmonizer;
  if ([(IHKBilateralHarmonizer *)&v28 init])
  {
    v22[0] = resolution;
    v22[1] = resolution;
    v23 = 1111970369;
    v24 = 1;
    v25 = 0;
    v26 = 0;
    sub_254ADA538(&v27, v22);
  }

  return 0;
}

- (CGImage)handleRequest:(id)request
{
  requestCopy = request;
  v5 = [IHKHarmonizationRequest alloc];
  v10 = objc_msgSend_fg(requestCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_bg(requestCopy, v11, v12, v13, v14);
  objc_msgSend_harmonizationStrength(requestCopy, v16, v17, v18, v19);
  v21 = objc_msgSend_initWithForeground_background_forceHarmonization_harmonizationStrength_(v5, v20, v10, v15, 1);
  v25 = objc_msgSend_harmonize_(self, v22, v21, v23, v24);
  v30 = objc_msgSend_harmonized(v25, v26, v27, v28, v29);

  CGImageRetain(v30);
  return v30;
}

- (id)harmonize:(id)harmonize
{
  v120 = *MEMORY[0x277D85DE8];
  harmonizeCopy = harmonize;
  v9 = objc_msgSend_fg(harmonizeCopy, v5, v6, v7, v8);
  v13 = objc_msgSend_convertCGImageToBGRA_sRGB_PixelBuffer_(IHKImageUtils, v10, v9, v11, v12);
  v18 = objc_msgSend_bg(harmonizeCopy, v14, v15, v16, v17);
  v22 = objc_msgSend_convertCGImageToBGRA_sRGB_PixelBuffer_(IHKImageUtils, v19, v18, v20, v21);
  imageOut = 0;
  VTCreateCGImageFromCVPixelBuffer(v13, 0, &imageOut);
  objc_msgSend_lock(self->_lock, v23, v24, v25, v26);
  objc_msgSend_rescaleCVPixelBuffers_dest_(IHKImageUtils, v27, v13, *(self->_fgInput.storage_.__ptr_ + 1), v28);
  objc_msgSend_rescaleCVPixelBuffers_dest_(IHKImageUtils, v29, v22, *(self->_bgInput.storage_.__ptr_ + 1), v30);
  CVPixelBufferRelease(v13);
  CVPixelBufferRelease(v22);
  ptr = self->_net.__ptr_;
  v100 = objc_msgSend_UTF8String(self->_fgName, v32, v33, v34, v35);
  sub_254AE2B00(&v106, &v100, &self->_fgInput);
  v99 = objc_msgSend_UTF8String(self->_bgName, v36, v37, v38, v39);
  sub_254AE2B00(v114, &v99, &self->_bgInput);
  *__dst = 0u;
  *__p = 0u;
  v103 = 1065353216;
  sub_254AD7344(__dst, &v106);
  sub_254AD7344(__dst, v114);
  sub_254AE24A4(ptr, __dst, v104);
  v44 = __p[0];
  if (__p[0])
  {
    while (1)
    {
      v45 = *v44;
      v44[5] = &unk_2866F58E8;
      v46 = v44[11];
      if (v46)
      {
        if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v47 = v44[7];
      if (v47)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v44 + 39) < 0)
      {
        operator delete(v44[2]);
      }

      operator delete(v44);
      v44 = v45;
      if (!v45)
      {
        goto LABEL_12;
      }
    }

    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
    v47 = v44[7];
    if (!v47)
    {
      goto LABEL_8;
    }

LABEL_7:
    v44[8] = v47;
    operator delete(v47);
    goto LABEL_8;
  }

LABEL_12:
  v48 = __dst[0];
  __dst[0] = 0;
  if (v48)
  {
    operator delete(v48);
  }

  v116 = &unk_2866F58E8;
  v49 = v119;
  if (v119 && !atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  if (v115 < 0)
  {
    operator delete(v114[0]);
  }

  v109 = &unk_2866F58E8;
  v50 = v113;
  if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v106);
    gatingOutName = self->_gatingOutName;
    if (gatingOutName)
    {
      goto LABEL_28;
    }

LABEL_33:
    v55 = 1;
    v56 = 1.0;
    goto LABEL_49;
  }

  gatingOutName = self->_gatingOutName;
  if (!gatingOutName)
  {
    goto LABEL_33;
  }

LABEL_28:
  v52 = objc_msgSend_UTF8String(gatingOutName, v40, v41, v42, v43);
  v53 = strlen(v52);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_254ACEE24();
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    operator new();
  }

  HIBYTE(__p[0]) = v53;
  if (v53)
  {
    memmove(__dst, v52, v53);
  }

  *(__dst + v54) = 0;
  v57 = sub_254AD4BF0(v104, __dst);
  if (!v57)
  {
    sub_254AD4B94("unordered_map::at: key not found");
  }

  v106 = &unk_2866F58E8;
  v107 = *(v57 + 12);
  v109 = 0;
  v110 = 0;
  v108 = 0;
  v59 = v57[7];
  v58 = v57[8];
  if (v58 != v59)
  {
    if (((v58 - v59) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v60 = v57[11];
  v111 = v57[10];
  v112 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(v60 + 1, 1uLL, memory_order_relaxed);
  }

  v106 = &unk_2866F58A0;
  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(__dst[0]);
  }

  v61 = v112;
  v56 = **(v111 + 1);
  v55 = v56 > self->_gatingThreshold;
  v106 = &unk_2866F58E8;
  if (v112 && !atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

LABEL_49:
  if (objc_msgSend_forceHarmonization(harmonizeCopy, v40, v41, v42, v43) | v55)
  {
    v66 = objc_msgSend_UTF8String(self->_outName, v62, v63, v64, v65);
    v67 = strlen(v66);
    if (v67 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_254ACEE24();
    }

    v68 = v67;
    if (v67 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[0]) = v67;
    if (v67)
    {
      memmove(__dst, v66, v67);
    }

    *(__dst + v68) = 0;
    v70 = sub_254AD4BF0(v104, __dst);
    if (!v70)
    {
      sub_254AD4B94("unordered_map::at: key not found");
    }

    v106 = &unk_2866F58E8;
    v107 = *(v70 + 12);
    v109 = 0;
    v110 = 0;
    v108 = 0;
    v72 = v70[7];
    v71 = v70[8];
    if (v71 != v72)
    {
      if (((v71 - v72) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_254ACE59C();
    }

    v73 = v70[11];
    v111 = v70[10];
    v112 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit(v73 + 1, 1uLL, memory_order_relaxed);
    }

    v106 = &unk_2866F58A0;
    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(__dst[0]);
    }

    v74 = *(v111 + 1);
    v75 = *(v111 + 11);
    v76 = *(v111 + 12);
    v77 = 4 * v75 * *(v111 + 13) * *(v111 + 14);
    v78 = malloc_type_malloc(v77 * v76, 0x100004077774924uLL);
    memcpy(v78, v74, v77 * v76);
    objc_msgSend_unlock(self->_lock, v79, v80, v81, v82);
    __dst[0] = v78;
    __dst[1] = v76;
    __p[0] = v75;
    __p[1] = v77;
    v83 = imageOut;
    objc_msgSend_harmonizationStrength(harmonizeCopy, v84, v85, v86, v87);
    *&v89 = v88 * self->_baseHarmonizationStrength;
    v69 = objc_msgSend_autoApplyGridBufferWithGridBuffer_image_assume_BGRA_sRGB_gridStrength_(_TtC21ImageHarmonizationKit21IHKBilateralGridUtils, v90, __dst, v83, 1, v89);
    free(v78);
    v106 = &unk_2866F58E8;
    v91 = v112;
    if (v112 && !atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v91->__on_zero_shared)(v91);
      std::__shared_weak_count::__release_weak(v91);
    }

    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }
  }

  else
  {
    objc_msgSend_unlock(self->_lock, v62, v63, v64, v65);
    v69 = 0;
  }

  CGImageRelease(imageOut);
  v92 = [IHKHarmonizationResult alloc];
  *&v93 = v56;
  shouldHarmonize = objc_msgSend_initWithHarmonized_gatingScore_shouldHarmonize_(v92, v94, v69, v55, v95, v93);
  sub_254AD20AC(v104);

  v97 = *MEMORY[0x277D85DE8];

  return shouldHarmonize;
}

- (id).cxx_construct
{
  *(self + 6) = 4;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0;
  *(self + 2) = &unk_2866F5A10;
  *(self + 20) = 4;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = 0;
  *(self + 8) = 0;
  *(self + 9) = &unk_2866F5A10;
  return self;
}

@end