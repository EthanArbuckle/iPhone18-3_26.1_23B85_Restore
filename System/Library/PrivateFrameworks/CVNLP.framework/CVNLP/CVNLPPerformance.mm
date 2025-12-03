@interface CVNLPPerformance
- (CVNLPPerformance)initWithOptions:(id)options;
- (void)run:(id)run block:(id)block;
@end

@implementation CVNLPPerformance

- (CVNLPPerformance)initWithOptions:(id)options
{
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = CVNLPPerformance;
  v7 = [(CVNLPPerformance *)&v19 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, CVNLPCaptionTrackPerformance, v6);
    v12 = objc_msgSend_BOOLValue(v8, v9, v10, v11);
    v7->_computePerf = v12;
    if (v12)
    {
      v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15);
      results = v7->_results;
      v7->_results = v16;
    }
  }

  return v7;
}

- (void)run:(id)run block:(id)block
{
  runCopy = run;
  blockCopy = block;
  if (objc_msgSend_computePerf(self, v8, v9, v10))
  {
    pc_session_create();
    v14 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v11, v12, v13);
    objc_msgSend_processIdentifier(v14, v15, v16, v17);
    pc_session_set_procpid();

    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_begin();
    v24 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19, v20);
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    v25 = objc_msgSend_date(MEMORY[0x1E695DF00], v21, v22, v23);
    objc_msgSend_timeIntervalSinceDate_(v25, v26, v24, v27);
    v29 = v28;

    pc_session_end();
    v30 = [CVNLPPerformanceResult alloc];
    v33 = objc_msgSend_initWithName_(v30, v31, runCopy, v32);
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_destroy();
    v34 = vdupq_n_s64(0x3F50000000000000uLL);
    *(v33 + 8) = vmulq_f64(*(v33 + 8), v34);
    *(v33 + 24) = vmulq_f64(*(v33 + 24), v34);
    *(v33 + 40) = *(v33 + 40) * 0.000001;
    *(v33 + 56) = v29;
    v38 = objc_msgSend_results(self, v35, v36, v37);
    v41 = objc_msgSend_objectForKeyedSubscript_(v38, v39, runCopy, v40);

    if (!v41)
    {
      v45 = objc_msgSend_array(MEMORY[0x1E695DF70], v42, v43, v44);
      v49 = objc_msgSend_results(self, v46, v47, v48);
      objc_msgSend_setObject_forKeyedSubscript_(v49, v50, v45, runCopy);
    }

    v51 = objc_msgSend_results(self, v42, v43, v44);
    v54 = objc_msgSend_objectForKeyedSubscript_(v51, v52, runCopy, v53);
    v58 = objc_msgSend_dict(v33, v55, v56, v57);
    objc_msgSend_addObject_(v54, v59, v58, v60);
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

@end