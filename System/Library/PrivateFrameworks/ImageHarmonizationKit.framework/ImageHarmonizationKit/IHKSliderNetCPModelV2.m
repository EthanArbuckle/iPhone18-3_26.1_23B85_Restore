@interface IHKSliderNetCPModelV2
- (CGSize)imageSize;
- (IHKSliderNetCPModelV2)initWithModel:(id)a3 options:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)applyAdjustments:(id)a3 toCIImage:(id)a4 error:(id *)a5;
- (id)predictContentVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5;
- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5;
- (unint64_t)contentFVecSize;
- (unint64_t)styleFVecSize;
@end

@implementation IHKSliderNetCPModelV2

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

- (IHKSliderNetCPModelV2)initWithModel:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v209.receiver = self;
  v209.super_class = IHKSliderNetCPModelV2;
  v13 = [(IHKSliderNetCPModel *)&v209 initWithModel:v8 options:v9 error:a5];
  if (v13)
  {
    v14 = objc_msgSend_stringByAppendingPathComponent_(v8, v10, @"net_info.json", v11, v12);
    v18 = objc_msgSend_loadJSonFrom_(IHKSliderNetCPModel, v15, v14, v16, v17);
    objc_msgSend_setInfo_(v13, v19, v18, v20, v21);

    v26 = objc_msgSend_info(v13, v22, v23, v24, v25);
    v30 = objc_msgSend_objectForKeyedSubscript_(v26, v27, @"input_image_shape", v28, v29);

    v34 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 1, v32, v33);
    objc_msgSend_doubleValue(v34, v35, v36, v37, v38);
    v40 = v39;
    v44 = objc_msgSend_objectAtIndexedSubscript_(v30, v41, 2, v42, v43);
    objc_msgSend_doubleValue(v44, v45, v46, v47, v48);
    objc_msgSend_setImageSize_(v13, v49, v50, v51, v52, v40, v53);

    v58 = objc_msgSend_info(v13, v54, v55, v56, v57);
    v13->_colorSpace = objc_msgSend_extractColorSpaceFromInfo_(v13, v59, v58, v60, v61);

    objc_msgSend_setStemType_(v13, v62, @"dual_stem", v63, v64);
    v69 = objc_msgSend_info(v13, v65, v66, v67, v68);
    v73 = objc_msgSend_objectForKeyedSubscript_(v69, v70, @"stem_type", v71, v72);

    if (v73)
    {
      v78 = objc_msgSend_info(v13, v74, v75, v76, v77);
      v82 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"stem_type", v80, v81);
      objc_msgSend_setStemType_(v13, v83, v82, v84, v85);
    }

    v86 = objc_msgSend_stemType(v13, v74, v75, v76, v77);
    isEqualToString = objc_msgSend_isEqualToString_(v86, v87, @"dual_stem", v88, v89);

    if (isEqualToString)
    {
      v95 = objc_msgSend_info(v13, v91, v92, v93, v94);
      v99 = objc_msgSend_objectForKeyedSubscript_(v95, v96, @"content_fvec_endpoint", v97, v98);
      objc_msgSend_setContentFVecEndpoint_(v13, v100, v99, v101, v102);

      v107 = objc_msgSend_info(v13, v103, v104, v105, v106);
      v111 = objc_msgSend_objectForKeyedSubscript_(v107, v108, @"style_fvec_endpoint", v109, v110);
      objc_msgSend_setStyleFVecEndpoint_(v13, v112, v111, v113, v114);

      v119 = objc_msgSend_info(v13, v115, v116, v117, v118);
      v123 = objc_msgSend_objectForKeyedSubscript_(v119, v120, @"content_vector_shape", v121, v122);
      objc_msgSend_setContentFVecShape_(v13, v124, v123, v125, v126);

      v131 = objc_msgSend_info(v13, v127, v128, v129, v130);
      v135 = objc_msgSend_objectForKeyedSubscript_(v131, v132, @"style_vector_shape", v133, v134);
      objc_msgSend_setStyleFVecShape_(v13, v136, v135, v137, v138);

      v142 = objc_msgSend_stringByAppendingPathComponent_(v8, v139, @"contentFVec.espresso.net", v140, v141);

      v143 = v142;
      objc_msgSend_UTF8String(v143, v144, v145, v146, v147);
      operator new();
    }

    v148 = objc_msgSend_stemType(v13, v91, v92, v93, v94);
    v152 = objc_msgSend_isEqualToString_(v148, v149, @"unified_stem", v150, v151);

    if (v152)
    {
      v157 = objc_msgSend_info(v13, v153, v154, v155, v156);
      v161 = objc_msgSend_objectForKeyedSubscript_(v157, v158, @"style_and_content_fvec_endpoint", v159, v160);
      objc_msgSend_setContentFVecEndpoint_(v13, v162, v161, v163, v164);

      v169 = objc_msgSend_contentFVecEndpoint(v13, v165, v166, v167, v168);
      objc_msgSend_setStyleFVecEndpoint_(v13, v170, v169, v171, v172);

      v177 = objc_msgSend_info(v13, v173, v174, v175, v176);
      v181 = objc_msgSend_objectForKeyedSubscript_(v177, v178, @"style_and_content_vector_shape", v179, v180);
      objc_msgSend_setContentFVecShape_(v13, v182, v181, v183, v184);

      v189 = objc_msgSend_contentFVecShape(v13, v185, v186, v187, v188);
      objc_msgSend_setStyleFVecShape_(v13, v190, v189, v191, v192);

      v196 = objc_msgSend_stringByAppendingPathComponent_(v8, v193, @"styleAndContentFVec.espresso.net", v194, v195);

      v197 = v196;
      objc_msgSend_UTF8String(v197, v198, v199, v200, v201);
      operator new();
    }

    v202 = objc_msgSend_stringByAppendingPathComponent_(v8, v153, @"styleTransfer.espresso.net", v155, v156);

    v203 = v202;
    objc_msgSend_UTF8String(v203, v204, v205, v206, v207);
    operator new();
  }

  return 0;
}

- (id)predictStyleVectorForPixelBuffer:(__CVBuffer *)a3 scenePrint:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v16.receiver = self;
  v16.super_class = IHKSliderNetCPModelV2;
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
  v16.super_class = IHKSliderNetCPModelV2;
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

- (id)predictSlidersForStyleVector:(id)a3 contentVector:(id)a4 error:(id *)a5
{
  v110 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_msgSend_useClipEmbedding(self, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_size(v7, v13, v14, v15, v16);
    v22 = objc_msgSend_styleFVecSize(self, v18, v19, v20, v21);
    v27 = objc_msgSend_styleFVecSize(self, v23, v24, v25, v26);
    v30 = objc_msgSend_subFeatureVectorWithRange_(v7, v28, v17 - v22, v27, v29);

    v35 = objc_msgSend_size(v8, v31, v32, v33, v34);
    v40 = objc_msgSend_contentFVecSize(self, v36, v37, v38, v39);
    v45 = objc_msgSend_contentFVecSize(self, v41, v42, v43, v44);
    v48 = objc_msgSend_subFeatureVectorWithRange_(v8, v46, v35 - v40, v45, v47);

    v8 = v48;
  }

  else
  {
    v30 = v7;
  }

  v49 = objc_msgSend_adjustmentEndpoints(self, v13, v14, v15, v16);
  v53 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 0, v51, v52);
  v54 = v53;
  v59 = objc_msgSend_UTF8String(v54, v55, v56, v57, v58);
  v60 = strlen(v59);
  if (v60 < 0x7FFFFFFFFFFFFFF8)
  {
    v61 = v60;
    if (v60 < 0x17)
    {
      HIBYTE(v95) = v60;
      if (v60)
      {
        memmove(&__dst, v59, v60);
      }

      *(&__dst + v61) = 0;

      ptr = self->styleTransferNet.__ptr_;
      if (v30)
      {
        objc_msgSend_tensor(v30, v62, v63, v64, v65);
      }

      else
      {
        v90 = 0;
        *v88 = 0u;
        v89 = 0u;
        v87 = 0u;
      }

      sub_254AD6B34(&v98, "fvec_style", &v87);
      if (v8)
      {
        objc_msgSend_tensor(v8, v67, v68, v69, v70);
      }

      else
      {
        v86 = 0;
        *v84 = 0u;
        v85 = 0u;
        v83 = 0u;
      }

      sub_254AD6CAC(v104, "fvec_content", &v83);
      memset(v91, 0, sizeof(v91));
      v92 = 1065353216;
      sub_254AD7344(v91, &v98);
      sub_254AD7344(v91, v104);
      if (SHIBYTE(v95) < 0)
      {
        sub_254AD6E24(&v96, __dst, *(&__dst + 1));
      }

      else
      {
        v96 = __dst;
        v97 = v95;
      }

      sub_254AD7958(&__p, &v96, 1uLL);
      sub_254AD3138(ptr, v91, &__p, v93);
      v71 = __p;
      if (__p)
      {
        v72 = v82;
        v73 = __p;
        if (v82 != __p)
        {
          do
          {
            v74 = *(v72 - 1);
            v72 -= 3;
            if (v74 < 0)
            {
              operator delete(*v72);
            }
          }

          while (v72 != v71);
          v73 = __p;
        }

        v82 = v71;
        operator delete(v73);
      }

      if (SHIBYTE(v97) < 0)
      {
        operator delete(v96);
      }

      sub_254AD20AC(v91);
      v106 = &unk_2866F58E8;
      v75 = v109;
      if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v75->__on_zero_shared)(v75);
        std::__shared_weak_count::__release_weak(v75);
      }

      if (v107)
      {
        v108 = v107;
        operator delete(v107);
      }

      if (v105 < 0)
      {
        operator delete(v104[0]);
      }

      v100 = &unk_2866F58E8;
      v76 = v103;
      if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v76->__on_zero_shared)(v76);
        std::__shared_weak_count::__release_weak(v76);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      if (v99 < 0)
      {
        operator delete(v98);
      }

      *&v83 = &unk_2866F58E8;
      v77 = v86;
      if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v77->__on_zero_shared)(v77);
        std::__shared_weak_count::__release_weak(v77);
      }

      if (v84[0])
      {
        v84[1] = v84[0];
        operator delete(v84[0]);
      }

      *&v87 = &unk_2866F58E8;
      v78 = v90;
      if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v78->__on_zero_shared)(v78);
        std::__shared_weak_count::__release_weak(v78);
      }

      if (v88[0])
      {
        v88[1] = v88[0];
        operator delete(v88[0]);
      }

      *&v87 = &__dst;
      v79 = sub_254AD6EE0(v93, &__dst);
      sub_254AD1F18((v79 + 5));
    }

    operator new();
  }

  sub_254ACEE24();
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