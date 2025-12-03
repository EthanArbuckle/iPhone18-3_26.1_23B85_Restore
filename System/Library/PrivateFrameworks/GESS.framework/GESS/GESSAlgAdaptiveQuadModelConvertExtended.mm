@interface GESSAlgAdaptiveQuadModelConvertExtended
- (BOOL)run:(id)run output:(id)output;
- (BOOL)setErrorCallback:(id)callback;
- (BOOL)setProgressCallback:(id)callback;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgAdaptiveQuadModelConvertExtended

- (BOOL)setProgressCallback:(id)callback
{
  v4 = MEMORY[0x24C254FE0](callback, a2);
  progress_cb = self->_progress_cb;
  self->_progress_cb = v4;

  return 1;
}

- (BOOL)setErrorCallback:(id)callback
{
  v4 = MEMORY[0x24C254FE0](callback, a2);
  error_cb = self->_error_cb;
  self->_error_cb = v4;

  return 1;
}

- (BOOL)run:(id)run output:(id)output
{
  v103 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  runCopy = run;
  outputCopy = output;
  objc_msgSend_setAlgStatus_(self, v8, 1, v9);
  if (objc_msgSend_valid(runCopy, v10, v11, v12) && objc_msgSend_meshType(runCopy, v13, v14, v15) == 1 && objc_msgSend_meshType(outputCopy, v13, v16, v15) == 11)
  {
    v18 = objc_msgSend_meshImpl(runCopy, v13, v17, v15);
    if (!objc_msgSend_meshImpl(outputCopy, v19, v20, v21))
    {
      sub_24BD2A7F0();
    }

    v25 = objc_msgSend_meshImpl(outputCopy, v22, v23, v24);
    if (!selfCopy->_options)
    {
      v26 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertOptions);
      options = selfCopy->_options;
      selfCopy->_options = v26;
    }

    sub_24BD29B54(v90);
    LODWORD(v90[0]) = objc_msgSend_outputFaceNumber(selfCopy->_options, v28, v29, v30);
    BYTE4(v90[0]) = objc_msgSend_enableSimplify(selfCopy->_options, v31, v32, v33);
    v93[0] = objc_msgSend_textureResolution(selfCopy->_options, v34, v35, v36);
    v40 = objc_msgSend_textureTransferOptions(selfCopy->_options, v37, v38, v39);
    v44 = objc_msgSend_inputTangentialSpaceType(v40, v41, v42, v43);
    v91 = sub_24BE74A64(v44);

    v48 = objc_msgSend_textureTransferOptions(selfCopy->_options, v45, v46, v47);
    v52 = objc_msgSend_outputTangentialSpaceType(v48, v49, v50, v51);
    v92 = sub_24BE74A64(v52);

    if (objc_msgSend_materialImpl(runCopy, v53, v54, v55))
    {
      v78 = 0;
      v80 = 0;
      v82 = 0;
      v84 = 0;
      v85 = 0;
      v56 = selfCopy;
      if (selfCopy->_progress_cb)
      {
        v100 = &unk_285F95260;
        v101 = &selfCopy;
        v102 = &v100;
        sub_24BCA3290(&v100, &v77);
        sub_24BC9F00C(&v100);
        v56 = selfCopy;
      }

      if (v56->_error_cb)
      {
        v100 = &unk_285F952A8;
        v101 = &selfCopy;
        v102 = &v100;
        sub_24BCA4ECC(&v100, v79);
        sub_24BC9F08C(&v100);
      }

      v100 = &unk_285F952F0;
      v101 = &selfCopy;
      v102 = &v100;
      sub_24BD2B348(&v100, v83);
      sub_24BD2A57C(&v100);
      v64 = objc_msgSend_materialImpl(runCopy, v61, v62, v63);
      if (!objc_msgSend_materialImpl(outputCopy, v65, v66, v67))
      {
        operator new();
      }

      v71 = objc_msgSend_materialImpl(outputCopy, v68, v69, v70);
      sub_24BD2A3AC(v76, &v77);
      sub_24BE3B310(v18, v64, v25, v71, v90, v76);
    }

    v78 = 0;
    v80 = 0;
    v82 = 0;
    v84 = 0;
    v60 = selfCopy;
    if (selfCopy->_progress_cb)
    {
      v100 = &unk_285F95188;
      v101 = &selfCopy;
      v102 = &v100;
      sub_24BCA3290(&v100, &v77);
      sub_24BC9F00C(&v100);
      v60 = selfCopy;
    }

    if (v60->_error_cb)
    {
      v100 = &unk_285F951D0;
      v101 = &selfCopy;
      v102 = &v100;
      sub_24BCA4ECC(&v100, v79);
      sub_24BC9F08C(&v100);
    }

    v100 = &unk_285F95218;
    v101 = &selfCopy;
    v102 = &v100;
    sub_24BD2AD18(&v100, v83);
    sub_24BD2A32C(&v100);
    sub_24BCA1524(v86, &v77);
    sub_24BCA2D38(v87, v79);
    sub_24BCA2DD0(v88, v81);
    sub_24BD2A294(v89, v83);
    v72 = sub_24BE3A780(v18, v25, v90, v86);
    sub_24BD2A32C(v89);
    sub_24BC9F10C(v88);
    sub_24BC9F08C(v87);
    sub_24BC9F00C(v86);
    sub_24BD2A32C(v83);
    sub_24BC9F10C(v81);
    sub_24BC9F08C(v79);
    sub_24BC9F00C(&v77);
    if (v72)
    {
      objc_msgSend_setAlgStatus_(selfCopy, v73, 3, v74);
      v57 = 1;
    }

    else
    {
      objc_msgSend_setAlgStatus_(selfCopy, v73, 2, v74);
      v57 = 0;
    }

    if (v99 < 0)
    {
      operator delete(__p);
    }

    if (v97 < 0)
    {
      operator delete(v96);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    sub_24BD2A138(v93);
  }

  else
  {
    objc_msgSend_setAlgStatus_(selfCopy, v13, 2, v15);
    v57 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v57;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertReport);
  objc_msgSend_setPreProcessingTime_(v3, v4, v5, v6, self->_report.time_pre_processing);
  objc_msgSend_setTangentialFieldTime_(v3, v7, v8, v9, self->_report.time_tangential_field);
  objc_msgSend_setDeformationTime_(v3, v10, v11, v12, self->_report.time_deformation);
  objc_msgSend_setQuadrangulationTime_(v3, v13, v14, v15, self->_report.time_quadrangulation);
  objc_msgSend_setDiscretizationTime_(v3, v16, v17, v18, self->_report.time_discretization);
  objc_msgSend_setQuadComponentsMergingTime_(v3, v19, v20, v21, self->_report.time_quad_components_merging);
  objc_msgSend_setBakingTime_(v3, v22, v23, v24, self->_report.time_baking);
  objc_msgSend_setTotalTime_(v3, v25, v26, v27, self->_report.time_total);
  objc_msgSend_setNumOfOutputComponents_(v3, v28, self->_report.count_output_components, v29);
  objc_msgSend_setNumOfSingularity_(v3, v30, self->_report.count_singularity, v31);
  objc_msgSend_setNumOfIntegerVariables_(v3, v32, self->_report.count_integer_variables, v33);
  objc_msgSend_setNumOfTotalVariables_(v3, v34, self->_report.count_total_variables, v35);
  *&v36 = self->_report.quality_metric_solver_mae;
  objc_msgSend_setQualityMetricSolverMAE_(v3, v37, v38, v39, v36);
  *&v40 = self->_report.quality_metric_angle_mean;
  objc_msgSend_setQualityMetricAngleMean_(v3, v41, v42, v43, v40);
  *&v44 = self->_report.quality_metric_angle_STD;
  objc_msgSend_setQualityMetricAngleSTD_(v3, v45, v46, v47, v44);
  v51 = objc_msgSend_algStatus(self, v48, v49, v50) == 3;
  objc_msgSend_setSuccess_(v3, v52, v51, v53);

  return v3;
}

- (id).cxx_construct
{
  p_report = &self->_report;
  self->_report.error_code.__val_ = 0;
  self->_report.error_code.__cat_ = std::system_category();
  *&p_report->time_pre_processing = 0u;
  *&p_report->time_deformation = 0u;
  *&p_report->time_discretization = 0u;
  p_report->time_total = 0.0;
  p_report->count_output_components = 1;
  *&p_report->count_singularity = 0;
  *&p_report->quality_metric_angle_mean = 0;
  *&p_report->count_total_variables = 0;
  p_report->time_baking = 0.0;
  return self;
}

@end