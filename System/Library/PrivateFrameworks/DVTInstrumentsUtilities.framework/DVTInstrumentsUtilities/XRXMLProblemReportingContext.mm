@interface XRXMLProblemReportingContext
- (XRXMLProblemReportingContext)init;
- (void)reportProblemWithElement:(id)element failure:(id)failure;
- (void)reportWarningWithElement:(id)element failure:(id)failure;
@end

@implementation XRXMLProblemReportingContext

- (XRXMLProblemReportingContext)init
{
  v5.receiver = self;
  v5.super_class = XRXMLProblemReportingContext;
  v2 = [(XRXMLProblemReportingContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_log, MEMORY[0x277D86228]);
    v3->_passed = 1;
  }

  return v3;
}

- (void)reportProblemWithElement:(id)element failure:(id)failure
{
  v45 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v7 = MEMORY[0x277CCACA8];
  failureCopy = failure;
  v9 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v9, v10, failureCopy, &v46, v11);

  if (objc_msgSend_length(v12, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_path(self->_urlBeingParsed, v17, v18, v19, v20);
    errorFile = self->_errorFile;
    v27 = objc_msgSend_lineAndColumnForElementStart(elementCopy, v23, v24, v25, v26);
    objc_msgSend_xr_writeStringWithFormat_(errorFile, v28, @"%@:%@: error: %@\n", v29, v30, v21, v27, v12);

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v33 = log;
      v38 = objc_msgSend_lineAndColumnForElementStart(elementCopy, v34, v35, v36, v37);
      *buf = 138412802;
      v40 = v21;
      v41 = 2112;
      v42 = v38;
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_248087000, v33, OS_LOG_TYPE_ERROR, "%@:%@: error: %@\n", buf, 0x20u);
    }

    self->_passed = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)reportWarningWithElement:(id)element failure:(id)failure
{
  v45 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v7 = MEMORY[0x277CCACA8];
  failureCopy = failure;
  v9 = [v7 alloc];
  v12 = objc_msgSend_initWithFormat_arguments_(v9, v10, failureCopy, &v46, v11);

  if (objc_msgSend_length(v12, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_path(self->_urlBeingParsed, v17, v18, v19, v20);
    errorFile = self->_errorFile;
    v27 = objc_msgSend_lineAndColumnForElementStart(elementCopy, v23, v24, v25, v26);
    objc_msgSend_xr_writeStringWithFormat_(errorFile, v28, @"%@:%@: warning: %@\n", v29, v30, v21, v27, v12);

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v33 = log;
      v38 = objc_msgSend_lineAndColumnForElementStart(elementCopy, v34, v35, v36, v37);
      *buf = 138412802;
      v40 = v21;
      v41 = 2112;
      v42 = v38;
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_248087000, v33, OS_LOG_TYPE_ERROR, "%@:%@: warning: %@\n", buf, 0x20u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end