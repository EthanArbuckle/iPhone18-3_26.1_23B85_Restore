@interface MADVideoSessionSafetyResult
- (MADVideoSessionSafetyResult)initWithCoder:(id)a3;
- (MADVideoSessionSafetyResult)initWithSensitivityAttributes:(id)a3 requestID:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSessionSafetyResult

- (MADVideoSessionSafetyResult)initWithSensitivityAttributes:(id)a3 requestID:(id)a4
{
  v24[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = MADVideoSessionSafetyResult;
  v8 = [(MADVideoSessionResult *)&v19 initWithRequestID:v7];
  if (!v8)
  {
LABEL_7:
    v15 = v8;
    goto LABEL_11;
  }

  v18 = 0;
  v9 = [objc_alloc(getSCSensitivityAnalysisClass()) initWithPixelBufferClassificationDictionary:v6 error:&v18];
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
    v13 = [v6 objectForKeyedSubscript:v12];
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

- (MADVideoSessionSafetyResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADVideoSessionSafetyResult;
  v5 = [(MADVideoSessionResult *)&v11 initWithCoder:v4];
  if (v5)
  {
    getSCSensitivityAnalysisClass();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnalysisResult"];
    analysisResult = v5->_analysisResult;
    v5->_analysisResult = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConfidenceTypeN"];
    confidenceTypeN = v5->_confidenceTypeN;
    v5->_confidenceTypeN = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADVideoSessionSafetyResult;
  [(MADVideoSessionResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_analysisResult forKey:@"AnalysisResult"];
  [v4 encodeObject:self->_confidenceTypeN forKey:@"ConfidenceTypeN"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"AnalysisResult: %@, ", self->_analysisResult];
  [v3 appendFormat:@"ConfidenceTypeN: %@, ", self->_confidenceTypeN];
  v6 = [(MADVideoSessionResult *)self requestID];
  [v3 appendFormat:@"RequestID: %@>", v6];

  return v3;
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