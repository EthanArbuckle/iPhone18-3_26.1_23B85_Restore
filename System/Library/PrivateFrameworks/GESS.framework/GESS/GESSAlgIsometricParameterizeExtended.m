@interface GESSAlgIsometricParameterizeExtended
- (BOOL)run:(id)a3;
- (BOOL)setFaceIntensity:(float *)a3 size:(unint64_t)a4;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgIsometricParameterizeExtended

- (BOOL)setFaceIntensity:(float *)a3 size:(unint64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v7, v8, a3, a4, 0);
  faceIntensityData = self->_faceIntensityData;
  self->_faceIntensityData = v9;

  return 1;
}

- (BOOL)run:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v91 = self;
  v4 = a3;
  objc_msgSend_setAlgStatus_(self, v5, 1, v6);
  if ((objc_msgSend_valid(v4, v7, v8, v9) & 1) != 0 && objc_msgSend_meshType(v4, v10, v11, v12) == 1)
  {
    v19 = objc_msgSend_meshImpl(v4, v13, v14, v15);
    options = self->_options;
    if (!options)
    {
      v21 = objc_alloc_init(GESSAlgIsometricParameterizeOptions);
      v22 = self->_options;
      self->_options = v21;

      options = self->_options;
    }

    v79 = 10;
    v80 = 1036831949;
    v81 = 0;
    v82 = 100000;
    v83 = 0;
    v89 = 256;
    if (objc_msgSend_packingMethod(options, v16, v17, v18) == 1)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v86 = v26;
    v87 = 2 * (objc_msgSend_overlapCheckMode(self->_options, v23, v24, v25) == 1);
    v88 = objc_msgSend_enableUVUtilizationOptimization(self->_options, v27, v28, v29);
    v84 = objc_msgSend_textureResolution(self->_options, v30, v31, v32);
    v85 = objc_msgSend_numOfTextures(self->_options, v33, v34, v35);
    objc_msgSend_gutter(self->_options, v36, v37, v38);
    v90 = v39;
    v79 = objc_msgSend_targetNumOfCharts(self->_options, v40, v41, v42);
    objc_msgSend_maximumStretchRatio(self->_options, v43, v44, v45);
    v80 = v46;
    HIBYTE(v89) = objc_msgSend_enableParallel(self->_options, v47, v48, v49);
    v81 = objc_msgSend_skipInitialStretchOptimization(self->_options, v50, v51, v52);
    v82 = objc_msgSend_optimizeBoundaryIfFaceNumberLessThan(self->_options, v53, v54, v55);
    v83 = objc_msgSend_repairUVSelfIntersection(self->_options, v56, v57, v58);
    faceIntensityData = self->_faceIntensityData;
    if (faceIntensityData)
    {
      v63 = objc_msgSend_bytes(faceIntensityData, v59, v60, v61);
      sub_24BC836D4(v96, "f:imt");
      v102 = 0;
      v103 = 0;
      v64 = sub_24BCB6470((v19 + 56), &v102, v96);
      v78 = v64;
      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      if (v64 == -1)
      {
        sub_24BC836D4(v96, "f:imt");
        sub_24BCB3C88(v19);
      }

      if (*(v19 + 112) != *(v19 + 104))
      {
        v66 = 0;
        v67 = 1;
        do
        {
          LODWORD(v65) = *(v63 + 4 * v66);
          v68 = (*(v19 + 56) + 16 * v78);
          v70 = *v68;
          v69 = v68[1];
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
            v77 = v65;
            sub_24BC9EC78(v69);
            v65 = v77;
          }

          *&v71 = v65;
          *(&v71 + 1) = v65;
          *(*(v70 + 40) + 16 * v66) = v71;
          v66 = v67++;
        }

        while (v66 < (*(v19 + 112) - *(v19 + 104)) >> 2);
      }

      LOBYTE(v89) = 1;
    }

    else
    {
      LOBYTE(v89) = 0;
    }

    v98 = 0;
    v99[3] = 0;
    v100[3] = 0;
    v101[3] = 0;
    v102 = &unk_285F95D48;
    v103 = &v91;
    v104 = &v102;
    sub_24BD55BF0(&v102, v101);
    sub_24BD55A9C(&v102);
    sub_24BCA1524(v92, v96);
    sub_24BCA2D38(v93, v99);
    sub_24BCA2DD0(v94, v100);
    sub_24BD55A04(v95, v101);
    v72 = sub_24BE4D100(v19, &v79, v92);
    sub_24BD55A9C(v95);
    sub_24BC9F10C(v94);
    sub_24BC9F08C(v93);
    sub_24BC9F00C(v92);
    if (v72)
    {
      objc_msgSend_setAlgStatus_(v91, v73, 3, v74, v77);
    }

    else
    {
      objc_msgSend_setAlgStatus_(v91, v73, 2, v74, v77);
    }

    sub_24BD55A9C(v101);
    sub_24BC9F10C(v100);
    sub_24BC9F08C(v99);
    sub_24BC9F00C(v96);
  }

  else
  {
    LOBYTE(v72) = 0;
  }

  v75 = *MEMORY[0x277D85DE8];
  return v72;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgIsometricParameterizeReport);
  if (objc_msgSend_algStatus(self, v4, v5, v6) && objc_msgSend_algStatus(self, v7, v8, v9) != 1)
  {
    v13 = objc_msgSend_algStatus(self, v10, v11, v12) == 3;
    objc_msgSend_setSuccess_(v3, v14, v13, v15);
    p_report = &self->_report;
    objc_msgSend_setChartingTime_(v3, v17, v18, v19, p_report->chart_time);
    objc_msgSend_setInitialParameterizationTime_(v3, v20, v21, v22, p_report->initial_param_time);
    objc_msgSend_setSplitParameterizationTime_(v3, v23, v24, v25, p_report->split_param_time);
    objc_msgSend_setChartMergingTime_(v3, v26, v27, v28, p_report->chart_merge_time);
    objc_msgSend_setFixSelfIntersectionTime_(v3, v29, v30, v31, p_report->fix_self_intersect_time);
    objc_msgSend_setPackingTime_(v3, v32, v33, v34, p_report->pack_time);
    objc_msgSend_setNumOfCharts_(v3, v35, LODWORD(p_report->chart_number), v36);
    objc_msgSend_setNumOfPackedTextures_(v3, v37, LODWORD(p_report->pack_img_number), v38);
    *&v39 = p_report->max_stretch_ratio;
    objc_msgSend_setMaximumStretchRatio_(v3, v40, v41, v42, v39);
    *&v43 = p_report->avg_stretch_ratio;
    objc_msgSend_setAverageStretchRatio_(v3, v44, v45, v46, v43);
    *&v47 = p_report->self_intersect_ratio;
    objc_msgSend_setSelfIntersectionRatio_(v3, v48, v49, v50, v47);
    v51 = sub_24BD6A604(0x190u);
    if (p_report->error_code.__cat_ == v52 && p_report->error_code.__val_ == v51)
    {
      objc_msgSend_setParameterizeStatus_(v3, v52, 0, v53);
    }

    else
    {
      v54 = sub_24BD6A604(0x16u);
      if (p_report->error_code.__cat_ == v55 && p_report->error_code.__val_ == v54)
      {
        objc_msgSend_setParameterizeStatus_(v3, v55, 1, v56);
      }

      else
      {
        v57 = sub_24BD6A604(0x191u);
        if (p_report->error_code.__cat_ == v58 && p_report->error_code.__val_ == v57 || (v60 = sub_24BD6A604(0x193u), p_report->error_code.__cat_ == v58) && p_report->error_code.__val_ == v60)
        {
          objc_msgSend_setParameterizeStatus_(v3, v58, 2, v59);
        }

        else
        {
          v62 = sub_24BD6A604(0);
          if (p_report->error_code.__cat_ == v63 && p_report->error_code.__val_ == v62)
          {
            objc_msgSend_setParameterizeStatus_(v3, v63, 3, v64);
          }

          else
          {
            sub_24BD6A604(0x192u);
            objc_msgSend_setParameterizeStatus_(v3, v65, 4, v66);
          }
        }
      }
    }
  }

  return v3;
}

- (id).cxx_construct
{
  p_report = &self->_report;
  self->_report.error_code.__val_ = 0;
  self->_report.error_code.__cat_ = std::system_category();
  *&p_report->chart_time = 0u;
  *&p_report->split_param_time = 0u;
  *&p_report->fix_self_intersect_time = 0u;
  *&p_report->pack_time = 0u;
  *(&p_report->pack_img_number + 4) = 0u;
  return self;
}

@end