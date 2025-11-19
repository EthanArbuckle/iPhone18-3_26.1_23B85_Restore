@interface IHKSliderNetCPModelV1
- (CGSize)imageSize;
- (EspressoTensor)newTensorWithCorrectShape:(SEL)a3 shape:(EspressoTensor *)a4;
- (IHKSliderNetCPModelV1)initWithModel:(id)a3 options:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)applyAdjustments:(id)a3 toCIImage:(id)a4 error:(id *)a5;
- (id)getValueForAdjustment:(id)a3 adjustments:(id)a4;
- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5;
- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (unint64_t)contentFVecSize;
- (unint64_t)styleFVecSize;
@end

@implementation IHKSliderNetCPModelV1

- (unint64_t)contentFVecSize
{
  v6 = objc_msgSend_contentFVecShape(self, a2, v2, v3, v4);
  v10 = objc_msgSend_product_(self, v7, v6, v8, v9);

  return v10;
}

- (unint64_t)styleFVecSize
{
  v6 = objc_msgSend_styleFVecShape(self, a2, v2, v3, v4);
  v10 = objc_msgSend_product_(self, v7, v6, v8, v9);

  return v10;
}

- (IHKSliderNetCPModelV1)initWithModel:(id)a3 options:(id)a4 error:(id *)a5
{
  v132 = *MEMORY[0x277D85DE8];
  v131.receiver = self;
  v131.super_class = IHKSliderNetCPModelV1;
  v129 = a3;
  v127 = a4;
  v130 = [IHKSliderNetCPModel initWithModel:sel_initWithModel_options_error_ options:v129 error:?];
  if (v130)
  {
    v9 = objc_msgSend_stringByAppendingPathComponent_(v129, v6, @"net_info.json", v7, v8);
    v13 = objc_msgSend_loadJSonFrom_(IHKSliderNetCPModel, v10, v9, v11, v12);
    objc_msgSend_setInfo_(v130, v14, v13, v15, v16);

    v21 = objc_msgSend_info(v130, v17, v18, v19, v20);
    v128 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"input_image_shape", v23, v24);

    v28 = objc_msgSend_objectAtIndexedSubscript_(v128, v25, 1, v26, v27);
    objc_msgSend_doubleValue(v28, v29, v30, v31, v32);
    v34 = v33;
    v38 = objc_msgSend_objectAtIndexedSubscript_(v128, v35, 2, v36, v37);
    objc_msgSend_doubleValue(v38, v39, v40, v41, v42);
    objc_msgSend_setImageSize_(v130, v43, v44, v45, v46, v34, v47);

    v52 = objc_msgSend_info(v130, v48, v49, v50, v51);
    v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"adjustment_endpoints", v54, v55);
    objc_msgSend_setAdjustmentEndpoints_(v130, v57, v56, v58, v59);

    v64 = objc_msgSend_info(v130, v60, v61, v62, v63);
    v68 = objc_msgSend_objectForKeyedSubscript_(v64, v65, @"content_fvec_endpoint", v66, v67);
    objc_msgSend_setContentFVecEndpoint_(v130, v69, v68, v70, v71);

    v76 = objc_msgSend_info(v130, v72, v73, v74, v75);
    v80 = objc_msgSend_objectForKeyedSubscript_(v76, v77, @"style_fvec_endpoint", v78, v79);
    objc_msgSend_setStyleFVecEndpoint_(v130, v81, v80, v82, v83);

    v88 = objc_msgSend_info(v130, v84, v85, v86, v87);
    v92 = objc_msgSend_objectForKeyedSubscript_(v88, v89, @"content_vector_shape", v90, v91);
    objc_msgSend_setContentFVecShape_(v130, v93, v92, v94, v95);

    v100 = objc_msgSend_info(v130, v96, v97, v98, v99);
    v104 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"style_vector_shape", v102, v103);
    objc_msgSend_setStyleFVecShape_(v130, v105, v104, v106, v107);

    v112 = objc_msgSend_info(v130, v108, v109, v110, v111);
    v130->_colorSpace = objc_msgSend_extractColorSpaceFromInfo_(v130, v113, v112, v114, v115);

    v119 = objc_msgSend_stringByAppendingPathComponent_(v129, v116, @"contentFVec.espresso.net", v117, v118);

    v120 = v119;
    objc_msgSend_UTF8String(v119, v121, v122, v123, v124);
    operator new();
  }

  v125 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IHKSliderNetCPModelV1;
  v11 = [(IHKSliderNetCPModel *)&v16 predictStyleVectorForPixelBuffer:a3 scenePrint:v8 error:a5];
  if (!a5 || !*a5)
  {
    v12 = objc_msgSend_preprocessPixelBuffer_error_(self, v9, a3, a5, v10);
    if (!a5 || !*a5)
    {
      sub_254AD3B2C(&v15, v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IHKSliderNetCPModelV1;
  v11 = [(IHKSliderNetCPModel *)&v16 predictContentVectorForPixelBuffer:a3 scenePrint:v8 error:a5];
  if (!a5 || !*a5)
  {
    v12 = objc_msgSend_preprocessPixelBuffer_error_(self, v9, a3, a5, v10);
    if (!a5 || !*a5)
    {
      sub_254AD3B2C(&v15, v12);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return 0;
}

- (EspressoTensor)newTensorWithCorrectShape:(SEL)a3 shape:(EspressoTensor *)a4
{
  v5 = a5;
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);
  if (v10)
  {
    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_254ACE59C();
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v11, 0, v12, v13);
  MEMORY[0] = objc_msgSend_unsignedIntValue(v14, v15, v16, v17, v18);

  v22 = objc_msgSend_objectAtIndexedSubscript_(v5, v19, 3, v20, v21);
  MEMORY[8] = objc_msgSend_unsignedIntValue(v22, v23, v24, v25, v26);

  v30 = objc_msgSend_objectAtIndexedSubscript_(v5, v27, 1, v28, v29);
  MEMORY[0x10] = objc_msgSend_unsignedIntValue(v30, v31, v32, v33, v34);

  v38 = objc_msgSend_objectAtIndexedSubscript_(v5, v35, 2, v36, v37);
  MEMORY[0x18] = objc_msgSend_unsignedIntValue(v38, v39, v40, v41, v42);

  v47 = 0;
  v48 = 1;
  while (v47 < objc_msgSend_count(v5, v43, v44, v45, v46))
  {
    v52 = objc_msgSend_objectAtIndexedSubscript_(v5, v49, v47, v50, v51);
    v57 = objc_msgSend_unsignedIntValue(v52, v53, v54, v55, v56);

    v48 *= v57;
    ++v47;
  }

  sub_254ACDCBC();
}

- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5
{
  v283 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v240 = a4;
  v268 = 4;
  v269 = 0u;
  v270 = 0u;
  v271 = 0;
  v266 = 0;
  v267 = &unk_2866F58A0;
  v263 = 4;
  *v264 = 0u;
  v265 = 0u;
  v262 = &unk_2866F58A0;
  if (objc_msgSend_useClipEmbedding(self, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_size(v7, v12, v13, v14, v15);
    v21 = objc_msgSend_styleFVecSize(self, v17, v18, v19, v20);
    v26 = objc_msgSend_styleFVecSize(self, v22, v23, v24, v25);
    v237 = objc_msgSend_subFeatureVectorWithRange_(v7, v27, v16 - v21, v26, v28);

    v33 = objc_msgSend_size(v240, v29, v30, v31, v32);
    v38 = objc_msgSend_contentFVecSize(self, v34, v35, v36, v37);
    v43 = objc_msgSend_contentFVecSize(self, v39, v40, v41, v42);
    v46 = objc_msgSend_subFeatureVectorWithRange_(v240, v44, v33 - v38, v43, v45);

    if (v237)
    {
      objc_msgSend_tensor(v237, v47, v48, v49, v50);
    }

    else
    {
      v261 = 0;
      *v259 = 0u;
      v260 = 0u;
      v258 = 0u;
    }

    v73 = objc_msgSend_styleFVecShape(self, v47, v48, v49, v50, v237);
    objc_msgSend_newTensorWithCorrectShape_shape_(self, v74, &v258, v73, v75);
    v268 = DWORD2(__dst[0]);
    sub_254ACE924(&v269, *&__dst[1], *(&__dst[1] + 1), (*(&__dst[1] + 1) - *&__dst[1]) >> 3);
    v77 = v273[1];
    v76 = v274;
    if (v274)
    {
      atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = v271;
    *(&v270 + 1) = v77;
    v271 = v76;
    if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    *&__dst[0] = &unk_2866F58E8;
    v79 = v274;
    if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v79->__on_zero_shared)(v79);
      std::__shared_weak_count::__release_weak(v79);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    *&v258 = &unk_2866F58E8;
    v84 = v261;
    if (v261 && !atomic_fetch_add(&v261->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v84->__on_zero_shared)(v84);
      std::__shared_weak_count::__release_weak(v84);
    }

    if (v259[0])
    {
      v259[1] = v259[0];
      operator delete(v259[0]);
    }

    if (v46)
    {
      objc_msgSend_tensor(v46, v80, v81, v82, v83);
    }

    else
    {
      v257 = 0;
      *v255 = 0u;
      v256 = 0u;
      v254 = 0u;
    }

    v85 = objc_msgSend_contentFVecShape(self, v80, v81, v82, v83);
    objc_msgSend_newTensorWithCorrectShape_shape_(self, v86, &v254, v85, v87);
    v263 = DWORD2(__dst[0]);
    sub_254ACE924(v264, *&__dst[1], *(&__dst[1] + 1), (*(&__dst[1] + 1) - *&__dst[1]) >> 3);
    v89 = v273[1];
    v88 = v274;
    if (v274)
    {
      atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v266;
    *(&v265 + 1) = v89;
    v266 = v88;
    if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v90->__on_zero_shared)(v90);
      std::__shared_weak_count::__release_weak(v90);
    }

    *&__dst[0] = &unk_2866F58E8;
    v91 = v274;
    if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v91->__on_zero_shared)(v91);
      std::__shared_weak_count::__release_weak(v91);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    *&v254 = &unk_2866F58E8;
    v92 = v257;
    if (v257 && !atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
    }

    if (v255[0])
    {
      v255[1] = v255[0];
      operator delete(v255[0]);
    }

    v240 = v46;
    v7 = v238;
  }

  else
  {
    if (v7)
    {
      objc_msgSend_tensor(v7, v12, v13, v14, v15);
      v51 = DWORD2(__dst[0]);
      v53 = *(&__dst[1] + 1);
      v52 = *&__dst[1];
    }

    else
    {
      v53 = 0;
      v52 = 0;
      v51 = 0;
      v274 = 0;
      *v273 = 0u;
      memset(__dst, 0, sizeof(__dst));
    }

    v268 = v51;
    sub_254ACE924(&v269, v52, v53, (v53 - v52) >> 3);
    v59 = v273[1];
    v58 = v274;
    if (v274)
    {
      atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = v271;
    *(&v270 + 1) = v59;
    v271 = v58;
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    *&__dst[0] = &unk_2866F58E8;
    v61 = v274;
    if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }

    if (v240)
    {
      objc_msgSend_tensor(v240, v54, v55, v56, v57);
      v62 = DWORD2(__dst[0]);
      v64 = *(&__dst[1] + 1);
      v63 = *&__dst[1];
    }

    else
    {
      v64 = 0;
      v63 = 0;
      v62 = 0;
      v274 = 0;
      *v273 = 0u;
      memset(__dst, 0, sizeof(__dst));
    }

    v263 = v62;
    sub_254ACE924(v264, v63, v64, (v64 - v63) >> 3);
    v70 = v273[1];
    v69 = v274;
    if (v274)
    {
      atomic_fetch_add_explicit(&v274->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v71 = v266;
    *(&v265 + 1) = v70;
    v266 = v69;
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
    }

    *&__dst[0] = &unk_2866F58E8;
    v72 = v274;
    if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v72->__on_zero_shared)(v72);
      std::__shared_weak_count::__release_weak(v72);
    }

    if (*&__dst[1])
    {
      *(&__dst[1] + 1) = *&__dst[1];
      operator delete(*&__dst[1]);
    }
  }

  v251 = 0;
  v252 = 0;
  v253 = 0;
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v93 = objc_msgSend_adjustmentEndpoints(self, v65, v66, v67, v68, v7);
  v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v247, v282, 16);
  if (v95)
  {
    v96 = *v248;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v248 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v99 = *(*(&v247 + 1) + 8 * i);
        v100 = self;
        v105 = objc_msgSend_UTF8String(v99, v101, v102, v103, v104);
        v106 = strlen(v105);
        if (v106 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_254ACEE24();
        }

        v108 = v106;
        if (v106 >= 0x17)
        {
          operator new();
        }

        BYTE7(__dst[1]) = v106;
        if (v106)
        {
          memmove(__dst, v105, v106);
          *(__dst + v108) = 0;
          v110 = v252;
          v109 = v253;
          if (v252 < v253)
          {
LABEL_68:
            *v110 = __dst[0];
            v110[2] = *&__dst[1];
            v98 = (v110 + 3);
            goto LABEL_69;
          }
        }

        else
        {
          LOBYTE(__dst[0]) = 0;
          v110 = v252;
          v109 = v253;
          if (v252 < v253)
          {
            goto LABEL_68;
          }
        }

        v111 = v251;
        v112 = v110 - v251;
        v113 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v251) >> 3);
        v114 = v113 + 1;
        if (v113 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_254ACE59C();
        }

        v115 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v251) >> 3);
        if (2 * v115 > v114)
        {
          v114 = 2 * v115;
        }

        if (v115 >= 0x555555555555555)
        {
          v116 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v116 = v114;
        }

        if (v116)
        {
          if (v116 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_254AD42D4();
        }

        v117 = 24 * v113;
        *v117 = __dst[0];
        *(v117 + 16) = *&__dst[1];
        v98 = 24 * v113 + 24;
        v118 = (24 * v113 - v112);
        memcpy((v117 - v112), v111, v112);
        v251 = v118;
        v252 = v98;
        v253 = 0;
        if (v111)
        {
          operator delete(v111);
        }

LABEL_69:
        v252 = v98;
        self = v100;
      }

      v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v107, &v247, v282, 16);
    }

    while (v95);
  }

  ptr = self->styleTransferNet.__ptr_;
  sub_254AE0820(__dst, "content_fvec:0", &v262);
  sub_254AE0998(v276, "style_fvec:0", &v267);
  memset(v243, 0, sizeof(v243));
  v244 = 1065353216;
  sub_254AD7344(v243, __dst);
  sub_254AD7344(v243, v276);
  sub_254AD3138(ptr, v243, &v251, v245);
  sub_254AD20AC(v243);
  v278 = &unk_2866F58E8;
  v120 = v281;
  if (v281 && !atomic_fetch_add(&v281->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v120->__on_zero_shared)(v120);
    std::__shared_weak_count::__release_weak(v120);
  }

  if (v279)
  {
    v280 = v279;
    operator delete(v279);
  }

  if (v277 < 0)
  {
    operator delete(v276[0]);
  }

  *(&__dst[1] + 1) = &unk_2866F58E8;
  v121 = v275;
  if (v275 && !atomic_fetch_add(&v275->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v121->__on_zero_shared)(v121);
    std::__shared_weak_count::__release_weak(v121);
  }

  if (v273[1])
  {
    v274 = v273[1];
    operator delete(v273[1]);
  }

  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  v122 = objc_opt_new();
  for (j = v246; j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      sub_254AD6E24(__s, j[2], j[3]);
    }

    else
    {
      *__s = *(j + 1);
      v242 = j[4];
    }

    sub_254ADC074(__s, __dst);
    if (SHIBYTE(v242) < 0)
    {
      operator delete(__s[0]);
      v124 = SBYTE7(__dst[1]);
      if (SBYTE7(__dst[1]) < 0)
      {
LABEL_149:
        v134 = *&__dst[0];
        if (!strcmp(*&__dst[0], "WhiteBalanceTempTintCI"))
        {
          goto LABEL_159;
        }

        if (!strcmp(v134, "ExposureAndBlackPointCI"))
        {
LABEL_162:
          if (*(j + 12) != 4)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v161 = MEMORY[0x277CCABB0];
          LODWORD(v162) = *(*(*j[10] + 24))(j[10]);
          v167 = objc_msgSend_numberWithFloat_(v161, v163, v164, v165, v166, v162);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v168, v167, @"Exposure", v169);

          if (*(j + 12) != 4)
          {
            v229 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v229, "Incorrect data type requested.");
            __cxa_throw(v229, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v170 = MEMORY[0x277CCABB0];
          LODWORD(v171) = *((*(*j[10] + 24))(j[10]) + 4);
          v141 = objc_msgSend_numberWithFloat_(v170, v172, v173, v174, v175, v171);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v176, v141, @"Black", v177);
          goto LABEL_175;
        }

        if (!strcmp(v134, "ExposureCI"))
        {
          goto LABEL_165;
        }

        if (!strcmp(v134, "ColorCastCI"))
        {
LABEL_167:
          if (*(j + 12) != 4)
          {
            v232 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v232, "Incorrect data type requested.");
            __cxa_throw(v232, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v186 = MEMORY[0x277CCABB0];
          LODWORD(v187) = *(*(*j[10] + 24))(j[10]);
          v141 = objc_msgSend_numberWithFloat_(v186, v188, v189, v190, v191, v187);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v192, v141, @"Cast", v193);
          goto LABEL_175;
        }

        if (!strcmp(v134, "VibrancyCI"))
        {
          goto LABEL_169;
        }

        if (!strcmp(v134, "HighlightsCI"))
        {
LABEL_171:
          if (*(j + 12) != 4)
          {
            v234 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v234, "Incorrect data type requested.");
            __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v202 = MEMORY[0x277CCABB0];
          LODWORD(v203) = *(*(*j[10] + 24))(j[10]);
          v141 = objc_msgSend_numberWithFloat_(v202, v204, v205, v206, v207, v203);
          objc_msgSend_setObject_forKeyedSubscript_(v122, v208, v141, @"Highlights", v209);
          goto LABEL_175;
        }

        if (!strcmp(v134, "HighKeyCI"))
        {
          goto LABEL_173;
        }

        goto LABEL_156;
      }
    }

    else
    {
      v124 = SBYTE7(__dst[1]);
      if (SBYTE7(__dst[1]) < 0)
      {
        goto LABEL_149;
      }
    }

    if (*&__dst[0] == 0x6C61426574696857 && *(&__dst[0] + 1) == 0x706D655465636E61 && *(__dst + 15) == 0x4943746E695470)
    {
LABEL_159:
      if (*(j + 12) != 4)
      {
        v227 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v227, "Incorrect data type requested.");
        __cxa_throw(v227, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v144 = MEMORY[0x277CCABB0];
      LODWORD(v145) = *(*(*j[10] + 24))(j[10]);
      v150 = objc_msgSend_numberWithFloat_(v144, v146, v147, v148, v149, v145);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v151, v150, @"Temperature", v152);

      if (*(j + 12) != 4)
      {
        v228 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v228, "Incorrect data type requested.");
        __cxa_throw(v228, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v153 = MEMORY[0x277CCABB0];
      LODWORD(v154) = *((*(*j[10] + 24))(j[10]) + 4);
      v141 = objc_msgSend_numberWithFloat_(v153, v155, v156, v157, v158, v154);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v159, v141, @"Tint", v160);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x657275736F707845 && *(&__dst[0] + 1) == 0x6B63616C42646E41 && *&__dst[1] == 0x4943746E696F50)
    {
      goto LABEL_162;
    }

    if (*&__dst[0] == 0x657275736F707845 && *(__dst + 3) == 0x4943657275736FLL)
    {
LABEL_165:
      if (*(j + 12) != 4)
      {
        v231 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v231, "Incorrect data type requested.");
        __cxa_throw(v231, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v178 = MEMORY[0x277CCABB0];
      LODWORD(v179) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v178, v180, v181, v182, v183, v179);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v184, v141, @"Exposure", v185);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x736143726F6C6F43 && DWORD2(__dst[0]) == 4801396)
    {
      goto LABEL_167;
    }

    if (*&__dst[0] == 0x79636E6172626956 && *(__dst + 3) == 0x494379636E6172)
    {
LABEL_169:
      if (*(j + 12) != 4)
      {
        v233 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v233, "Incorrect data type requested.");
        __cxa_throw(v233, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v194 = MEMORY[0x277CCABB0];
      LODWORD(v195) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v194, v196, v197, v198, v199, v195);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v200, v141, @"Vibrancy", v201);
      goto LABEL_175;
    }

    if (*&__dst[0] == 0x6867696C68676948 && *(__dst + 5) == 0x49437374686769)
    {
      goto LABEL_171;
    }

    if (*&__dst[0] == 0x4379654B68676948 && WORD4(__dst[0]) == 73)
    {
LABEL_173:
      if (*(j + 12) != 4)
      {
        v235 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v235, "Incorrect data type requested.");
        __cxa_throw(v235, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v210 = MEMORY[0x277CCABB0];
      LODWORD(v211) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v210, v212, v213, v214, v215, v211);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v216, v141, @"High Key", v217);
      goto LABEL_175;
    }

    v134 = __dst;
LABEL_156:
    if (!strcmp(v134, "ContrastCI"))
    {
      if (*(j + 12) != 4)
      {
        v236 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v236, "Incorrect data type requested.");
        __cxa_throw(v236, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v135 = MEMORY[0x277CCABB0];
      LODWORD(v136) = *(*(*j[10] + 24))(j[10]);
      v141 = objc_msgSend_numberWithFloat_(v135, v137, v138, v139, v140, v136);
      objc_msgSend_setObject_forKeyedSubscript_(v122, v142, v141, @"Contrast", v143);
LABEL_175:
    }

    if (v124 < 0)
    {
      operator delete(*&__dst[0]);
    }
  }

  v218 = v122;

  sub_254AD20AC(v245);
  v219 = v251;
  if (v251)
  {
    v220 = v252;
    v221 = v251;
    if (v252 != v251)
    {
      do
      {
        v222 = *(v220 - 1);
        v220 -= 3;
        if (v222 < 0)
        {
          operator delete(*v220);
        }
      }

      while (v220 != v219);
      v221 = v251;
    }

    v252 = v219;
    operator delete(v221);
  }

  v262 = &unk_2866F58E8;
  v223 = v266;
  if (v266 && !atomic_fetch_add(&v266->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v223->__on_zero_shared)(v223);
    std::__shared_weak_count::__release_weak(v223);
  }

  if (v264[0])
  {
    v264[1] = v264[0];
    operator delete(v264[0]);
  }

  v267 = &unk_2866F58E8;
  v224 = v271;
  if (v271 && !atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v224->__on_zero_shared)(v224);
    std::__shared_weak_count::__release_weak(v224);
  }

  if (v269)
  {
    *(&v269 + 1) = v269;
    operator delete(v269);
  }

  v225 = *MEMORY[0x277D85DE8];

  return v218;
}

- (id)getValueForAdjustment:(id)a3 adjustments:(id)a4
{
  v6 = a3;
  v14 = objc_msgSend_objectForKeyedSubscript_(a4, v7, v6, v8, v9);
  if (!v14)
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = objc_msgSend_sliderSpecs(self, v10, v11, v12, v13);
    v20 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v6, v18, v19);
    objc_msgSend_identity(v20, v21, v22, v23, v24);
    v14 = objc_msgSend_numberWithDouble_(v15, v25, v26, v27, v28);
  }

  return v14;
}

- (id)applyAdjustments:(id)a3 toCIImage:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14 = objc_msgSend_filterSequence(self, v10, v11, v12, v13);
  v16 = objc_msgSend_applySliders_image_error_(v14, v15, v8, v9, a5);

  return v16;
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

@end