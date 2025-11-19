@interface GESSAlgSDSmoothExtended
- (BOOL)run:(id)a3;
- (BOOL)setErrorCallback:(id)a3;
- (BOOL)setProgressCallback:(id)a3;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgSDSmoothExtended

- (BOOL)setProgressCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  progress_cb = self->_progress_cb;
  self->_progress_cb = v4;

  return 1;
}

- (BOOL)setErrorCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  error_cb = self->_error_cb;
  self->_error_cb = v4;

  return 1;
}

- (BOOL)run:(id)a3
{
  v3 = self;
  v35 = *MEMORY[0x277D85DE8];
  v23 = self;
  v4 = a3;
  if ((objc_msgSend_valid(v4, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v4, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v4, v11, v12, v13);
    v19 = xmmword_24BFBF8C0;
    v20 = 981668463;
    v21 = 0x1400000005;
    v22 = 1;
    options = v3->_options;
    if (options)
    {
      sub_24BCD278C(options, &v19);
    }

    v28[3] = 0;
    v29[3] = 0;
    v30[3] = 0;
    v31[3] = 0;
    if (v3->_progress_cb)
    {
      v32 = &unk_285F94038;
      v33 = &v23;
      v34 = &v32;
      sub_24BCA3290(&v32, v28);
      sub_24BC9F00C(&v32);
      v3 = v23;
    }

    if (v3->_error_cb)
    {
      v32 = &unk_285F94080;
      v33 = &v23;
      v34 = &v32;
      sub_24BCA4ECC(&v32, v29);
      sub_24BC9F08C(&v32);
    }

    v32 = &unk_285F940C8;
    v33 = &v23;
    v34 = &v32;
    sub_24BCD410C(&v32, v31);
    sub_24BC9EE14(&v32);
    sub_24BCA1524(v24, v28);
    sub_24BCA2D38(v25, v29);
    sub_24BCA2DD0(v26, v30);
    sub_24BC9ED7C(v27, v31);
    v16 = sub_24BC9A66C(v14, &v19, v24);
    sub_24BC9EE14(v27);
    sub_24BC9F10C(v26);
    sub_24BC9F08C(v25);
    sub_24BC9F00C(v24);
    v23->_success = v16;
    sub_24BC9EE14(v31);
    sub_24BC9F10C(v30);
    sub_24BC9F08C(v29);
    sub_24BC9F00C(v28);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgSDSmoothReport);
  objc_msgSend_setNormalSmoothTime_(v3, v4, v5, v6, self->_report.time_smooth_normal);
  objc_msgSend_setPrepareMatrixTime_(v3, v7, v8, v9, self->_report.time_prepare_matrix);
  objc_msgSend_setSolveLinearSystemTime_(v3, v10, v11, v12, self->_report.time_solve_linear_system);
  objc_msgSend_setTotalTime_(v3, v13, v14, v15, self->_report.time_total);
  objc_msgSend_setNumOfNonZeros_(v3, v16, self->_report.num_of_non_zeros, v17);
  objc_msgSend_setSuccess_(v3, v18, self->_success, v19);

  return v3;
}

- (id).cxx_construct
{
  p_report = &self->_report;
  self->_report.error_code.__val_ = 0;
  self->_report.error_code.__cat_ = std::system_category();
  *&p_report->time_total = 0u;
  *&p_report->time_prepare_matrix = 0u;
  p_report->num_of_non_zeros = 0;
  return self;
}

@end