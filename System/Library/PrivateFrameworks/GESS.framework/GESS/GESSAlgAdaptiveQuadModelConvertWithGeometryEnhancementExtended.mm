@interface GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementExtended
- (BOOL)run:(id)run output:(id)output;
- (BOOL)setErrorCallback:(id)callback;
- (BOOL)setProgressCallback:(id)callback;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementExtended

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
  v95 = *MEMORY[0x277D85DE8];
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

    v25 = objc_msgSend_meshImpl(outputCopy, v22, v23, v24, selfCopy);
    if (!selfCopy->_options)
    {
      v26 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementOptions);
      options = selfCopy->_options;
      selfCopy->_options = v26;
    }

    sub_24BD29B54(&v83);
    v88 = xmmword_24BFBF8C0;
    v89 = 981668463;
    v90 = 0x1400000005;
    v91 = 1;
    v83 = objc_msgSend_outputFaceNumber(selfCopy->_options, v28, v29, v30);
    v84 = objc_msgSend_enableSimplify(selfCopy->_options, v31, v32, v33);
    v87 = objc_msgSend_textureResolution(selfCopy->_options, v34, v35, v36);
    v40 = objc_msgSend_textureTransferOptions(selfCopy->_options, v37, v38, v39);
    v44 = objc_msgSend_inputTangentialSpaceType(v40, v41, v42, v43);
    v85 = sub_24BE74A64(v44);

    v48 = objc_msgSend_textureTransferOptions(selfCopy->_options, v45, v46, v47);
    v52 = objc_msgSend_outputTangentialSpaceType(v48, v49, v50, v51);
    v86 = sub_24BE74A64(v52);

    v56 = objc_msgSend_smoothOptions(selfCopy->_options, v53, v54, v55);
    sub_24BCD278C(v56, &v88);

    v79[3] = 0;
    v80[3] = 0;
    v81[3] = 0;
    v82[3] = 0;
    v57 = selfCopy;
    if (selfCopy->_progress_cb)
    {
      v92 = &unk_285F95370;
      v93 = &selfCopy;
      v94 = &v92;
      sub_24BCA3290(&v92, v79);
      sub_24BC9F00C(&v92);
      v57 = selfCopy;
    }

    if (v57->_error_cb)
    {
      v92 = &unk_285F953B8;
      v93 = &selfCopy;
      v94 = &v92;
      sub_24BCA4ECC(&v92, v80);
      sub_24BC9F08C(&v92);
    }

    v92 = &unk_285F95400;
    v93 = &selfCopy;
    v94 = &v92;
    sub_24BD2BA44(&v92, v82);
    sub_24BD2A770(&v92);
    if (!objc_msgSend_materialImpl(runCopy, v60, v61, v62))
    {
      operator new();
    }

    v66 = objc_msgSend_materialImpl(runCopy, v63, v64, v65);
    if (!objc_msgSend_materialImpl(outputCopy, v67, v68, v69))
    {
      operator new();
    }

    v73 = objc_msgSend_materialImpl(outputCopy, v70, v71, v72);
    sub_24BCA1524(v75, v79);
    sub_24BCA2D38(&v76, v80);
    sub_24BCA2DD0(&v77, v81);
    sub_24BD2A6D8(&v78, v82);
    sub_24BE3C2B0(v18, v66, v25, v73, &v83, v75);
  }

  objc_msgSend_setAlgStatus_(selfCopy, v13, 2, v15, selfCopy);

  v58 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgAdaptiveQuadModelConvertWithGeometryEnhancementReport);
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
  time_smooth_normal = self->_report.smooth_report.time_smooth_normal;
  v52 = objc_msgSend_smoothReport(v3, v49, v50, v51);
  objc_msgSend_setNormalSmoothTime_(v52, v53, v54, v55, time_smooth_normal);

  time_prepare_matrix = self->_report.smooth_report.time_prepare_matrix;
  v60 = objc_msgSend_smoothReport(v3, v57, v58, v59);
  objc_msgSend_setPrepareMatrixTime_(v60, v61, v62, v63, time_prepare_matrix);

  time_solve_linear_system = self->_report.smooth_report.time_solve_linear_system;
  v68 = objc_msgSend_smoothReport(v3, v65, v66, v67);
  objc_msgSend_setSolveLinearSystemTime_(v68, v69, v70, v71, time_solve_linear_system);

  time_total = self->_report.smooth_report.time_total;
  v76 = objc_msgSend_smoothReport(v3, v73, v74, v75);
  objc_msgSend_setTotalTime_(v76, v77, v78, v79, time_total);

  num_of_non_zeros = self->_report.smooth_report.num_of_non_zeros;
  v84 = objc_msgSend_smoothReport(v3, v81, v82, v83);
  objc_msgSend_setNumOfNonZeros_(v84, v85, num_of_non_zeros, v86);

  v90 = objc_msgSend_algStatus(self, v87, v88, v89) == 3;
  objc_msgSend_setSuccess_(v3, v91, v90, v92);
  v96 = objc_msgSend_success(v3, v93, v94, v95);
  v100 = objc_msgSend_smoothReport(v3, v97, v98, v99);
  objc_msgSend_setSuccess_(v100, v101, v96, v102);

  return v3;
}

- (id).cxx_construct
{
  p_report = &self->_report;
  self->_report.error_code.__val_ = 0;
  v4 = std::system_category();
  p_report->error_code.__cat_ = v4;
  *&p_report->time_pre_processing = 0u;
  *&p_report->time_deformation = 0u;
  *&p_report->time_discretization = 0u;
  p_report->time_total = 0.0;
  p_report->count_output_components = 1;
  *&p_report->count_singularity = 0;
  *&p_report->quality_metric_angle_mean = 0;
  *&p_report->count_total_variables = 0;
  p_report->time_baking = 0.0;
  p_report->smooth_report.error_code.__val_ = 0;
  p_report->smooth_report.error_code.__cat_ = v4;
  *&p_report->smooth_report.time_total = 0u;
  *&p_report->smooth_report.time_prepare_matrix = 0u;
  p_report->smooth_report.num_of_non_zeros = 0;
  return self;
}

@end