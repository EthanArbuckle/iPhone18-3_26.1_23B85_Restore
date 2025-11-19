@interface GESSAlgSDDenoiseExtended
- (BOOL)run:(id)a3;
- (BOOL)setErrorCallback:(id)a3;
- (BOOL)setProgressCallback:(id)a3;
- (id).cxx_construct;
- (id)returnReport;
@end

@implementation GESSAlgSDDenoiseExtended

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
  v36 = *MEMORY[0x277D85DE8];
  v24 = self;
  v4 = a3;
  if ((objc_msgSend_valid(v4, v5, v6, v7) & 1) != 0 && objc_msgSend_meshType(v4, v8, v9, v10) == 1)
  {
    v14 = objc_msgSend_meshImpl(v4, v11, v12, v13);
    v19 = xmmword_24BFBF8C0;
    v20 = 981668463;
    v21 = 0x1400000005;
    v22 = 1;
    v23 = 5;
    options = v3->_options;
    if (options)
    {
      sub_24BCD2840(options, &v19);
    }

    v29[3] = 0;
    v30[3] = 0;
    v31[3] = 0;
    v32[3] = 0;
    if (v3->_progress_cb)
    {
      v33 = &unk_285F94110;
      v34 = &v24;
      v35 = &v33;
      sub_24BCA3290(&v33, v29);
      sub_24BC9F00C(&v33);
      v3 = v24;
    }

    if (v3->_error_cb)
    {
      v33 = &unk_285F94158;
      v34 = &v24;
      v35 = &v33;
      sub_24BCA4ECC(&v33, v30);
      sub_24BC9F08C(&v33);
    }

    v33 = &unk_285F941A0;
    v34 = &v24;
    v35 = &v33;
    sub_24BCD4734(&v33, v32);
    sub_24BCD3C30(&v33);
    sub_24BCA1524(v25, v29);
    sub_24BCA2D38(v26, v30);
    sub_24BCA2DD0(v27, v31);
    sub_24BCD3CB0(v28, v32);
    v16 = sub_24BC9AB38(v14, &v19, v25);
    sub_24BCD3C30(v28);
    sub_24BC9F10C(v27);
    sub_24BC9F08C(v26);
    sub_24BC9F00C(v25);
    v24->_success = v16;
    sub_24BCD3C30(v32);
    sub_24BC9F10C(v31);
    sub_24BC9F08C(v30);
    sub_24BC9F00C(v29);
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
  v3 = objc_alloc_init(GESSAlgSDDenoiseReport);
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