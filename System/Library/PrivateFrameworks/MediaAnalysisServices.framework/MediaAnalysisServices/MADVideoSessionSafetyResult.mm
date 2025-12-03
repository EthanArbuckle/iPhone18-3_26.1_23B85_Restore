@interface MADVideoSessionSafetyResult
- (MADVideoSessionSafetyResult)initWithCoder:(id)coder;
- (MADVideoSessionSafetyResult)initWithSensitivityAttributes:(id)attributes requestID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoSessionSafetyResult

- (MADVideoSessionSafetyResult)initWithSensitivityAttributes:(id)attributes requestID:(id)d
{
  v24[5] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = MADVideoSessionSafetyResult;
  v8 = [(MADVideoSessionResult *)&v19 initWithRequestID:dCopy];
  if (!v8)
  {
LABEL_7:
    v15 = v8;
    goto LABEL_11;
  }

  v18 = 0;
  v9 = [objc_alloc(getSCSensitivityAnalysisClass()) initWithPixelBufferClassificationDictionary:attributesCopy error:&v18];
  v10 = v18;
  if (v9)
  {
    objc_storeStrong(&v8->_analysisResult, v9);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v11 = getSCMLImageExplicitSensitivityScoreSymbolLoc(void)::ptr;
    v23 = getSCMLImageExplicitSensitivityScoreSymbolLoc(void)::ptr;
    if (!getSCMLImageExplicitSensitivityScoreSymbolLoc(void)::ptr)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = ___ZL45getSCMLImageExplicitSensitivityScoreSymbolLocv_block_invoke;
      v24[3] = &unk_1E83437B0;
      v24[4] = &v20;
      ___ZL45getSCMLImageExplicitSensitivityScoreSymbolLocv_block_invoke(v24);
      v11 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v11)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v12 = *v11;
    v13 = [attributesCopy objectForKeyedSubscript:v12];
    confidenceTypeN = v8->_confidenceTypeN;
    v8->_confidenceTypeN = v13;

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    [(MADVideoSessionSafetyResult *)v16 initWithSensitivityAttributes:v10 requestID:v24];
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (MADVideoSessionSafetyResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADVideoSessionSafetyResult;
  v5 = [(MADVideoSessionResult *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    getSCSensitivityAnalysisClass();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisResult"];
    analysisResult = v5->_analysisResult;
    v5->_analysisResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConfidenceTypeN"];
    confidenceTypeN = v5->_confidenceTypeN;
    v5->_confidenceTypeN = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADVideoSessionSafetyResult;
  [(MADVideoSessionResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_analysisResult forKey:@"AnalysisResult"];
  [coderCopy encodeObject:self->_confidenceTypeN forKey:@"ConfidenceTypeN"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"AnalysisResult: %@, ", self->_analysisResult];
  [string appendFormat:@"ConfidenceTypeN: %@, ", self->_confidenceTypeN];
  requestID = [(MADVideoSessionResult *)self requestID];
  [string appendFormat:@"RequestID: %@>", requestID];

  return string;
}

- (void)initWithSensitivityAttributes:(uint64_t)a3 requestID:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  v4 = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create SCSensitivityAnalysis error:%@", a3, 0x16u);
}

@end