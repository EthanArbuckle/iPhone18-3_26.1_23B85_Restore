@interface VCPCNNHandKeypointsDetectorEspresso
- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6 offset:(float *)a7;
- (id)init:(BOOL)a3 sharedModel:(BOOL)a4 modelName:(id)a5 enableHandObject:(BOOL)a6 options:(id)a7;
- (int)generateHandKeypoints:(CGPoint *)a3 keypointConfidence:(float *)a4 offset:(float)a5 handHoldsObjectConfidence:(float *)a6;
- (void)dealloc;
@end

@implementation VCPCNNHandKeypointsDetectorEspresso

- (id)init:(BOOL)a3 sharedModel:(BOOL)a4 modelName:(id)a5 enableHandObject:(BOOL)a6 options:(id)a7
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v46 = a5;
  v12 = a7;
  v13 = &unk_1F49BE830;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13;
  self->_enableHandObject = v8;
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  [v15 setObject:v16 forKey:@"forceCPU"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v15 setObject:v17 forKey:@"forceCPU"];

  v18 = [v12 objectForKeyedSubscript:@"planPriority"];

  if (v18)
  {
    v19 = [v12 objectForKeyedSubscript:@"planPriority"];
    if ([v19 intValue] == 1)
    {

LABEL_7:
      v22 = [v12 objectForKeyedSubscript:@"planPriority"];
      v23 = [v22 intValue];

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
      [v15 setObject:v24 forKey:@"planPriority"];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
        *buf = 138412290;
        v51 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNHandKeypointsDetectorEspresso - espresso plan priority is set to %@", buf, 0xCu);
      }

      goto LABEL_13;
    }

    v20 = [v12 objectForKeyedSubscript:@"planPriority"];
    v21 = [v20 intValue];

    if (v21 == 0x2000)
    {
      goto LABEL_7;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v12 objectForKeyedSubscript:@"planPriority"];
      *buf = 67109120;
      LODWORD(v51) = [v26 intValue];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPCNNHandKeypointsDetectorEspresso - invalid input espresso plan priority %d", buf, 8u);
    }
  }

LABEL_13:
  v49.receiver = self;
  v49.super_class = VCPCNNHandKeypointsDetectorEspresso;
  v27 = [(VCPCNNHandKeypointsDetectorEspresso *)&v49 init];
  if (v27)
  {
    v28 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v29 = [v28 resourceURL];

    v30 = [MEMORY[0x1E695DFF8] URLWithString:v46 relativeToURL:v29];
    v31 = [[VCPCNNModelEspresso alloc] initWithParameters:v30 inputNames:0 outputNames:v14 properties:v15];
    modelEspresso = v27->_modelEspresso;
    v27->_modelEspresso = v31;

    v33 = v27->_modelEspresso;
    if (!v33 || [(VCPCNNModelEspresso *)v33 prepareModelWithConfig:&stru_1F496CB30])
    {
      v34 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v35 = v27->_modelEspresso;
    if (v35 && ([(VCPCNNModelEspresso *)v35 inputBlob], (v36 = v27->_modelEspresso) != 0))
    {
      v37 = v52;
      [(VCPCNNModelEspresso *)v36 inputBlob];
      v38 = v27->_modelEspresso;
      v39 = v48 * v37;
      if (v38)
      {
        [(VCPCNNModelEspresso *)v38 inputBlob];
        v40 = v47;
LABEL_24:
        v41 = v39 * v40;
        if (v41 >> 62)
        {
          v42 = -1;
        }

        else
        {
          v42 = 4 * v41;
        }

        v43 = operator new[](v42, MEMORY[0x1E69E5398]);
        v27->_inputData = v43;
        v27->_forceCPU = v10;
        if (v43)
        {
          v34 = v27;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = 0;
    goto LABEL_24;
  }

  v34 = 0;
LABEL_31:
  v44 = v34;

  return v44;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNHandKeypointsDetectorEspresso;
  [(VCPCNNHandKeypointsDetectorEspresso *)&v4 dealloc];
}

- (float)getInputBuffer:(int)a3 srcWidth:(int)a4 cnnInputHeight:(int *)a5 cnnInputWidth:(int *)a6 offset:(float *)a7
{
  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso inputBlob:*&a3];
    v12 = v18;
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  v13 = self->_modelEspresso;
  if (v13)
  {
    [(VCPCNNModelEspresso *)v13 inputBlob];
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  *a6 = v14;
  v15 = 2.0;
  if (self->_forceCPU)
  {
    v15 = 0.0;
  }

  *a7 = v15;
  return self->_inputData;
}

- (int)generateHandKeypoints:(CGPoint *)a3 keypointConfidence:(float *)a4 offset:(float)a5 handHoldsObjectConfidence:(float *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "inferenceHandKeypointCallFromSPI", "", buf, 2u);
  }

  result = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (result)
  {
    return result;
  }

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v11 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v15))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v11, "inferenceHandKeypointCallFromSPI", "", buf, 2u);
  }

  modelEspresso = self->_modelEspresso;
  if (modelEspresso)
  {
    [(VCPCNNModelEspresso *)modelEspresso inputBlob];
    v19 = self->_modelEspresso;
    v20 = v38;
    if (v19)
    {
      [(VCPCNNModelEspresso *)v19 inputBlob];
      v21 = v37;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  if (self->_enableHandObject)
  {
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
    v22 = *(*&buf[0] + 96);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
    v23 = *(*&buf[0] + 88);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
    v24 = *(*&buf[0] + 80);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
    v25 = a4;
    v26 = a3;
    v27 = **&buf[0];
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    goto LABEL_24;
  }

  v28 = self->_modelEspresso;
  if (!v28)
  {
    v25 = a4;
    v22 = 0;
LABEL_22:
    v26 = a3;
    v23 = 0;
LABEL_23:
    v27 = 0;
    v24 = 0;
    goto LABEL_24;
  }

  [(VCPCNNModelEspresso *)v28 outputBlob];
  v29 = self->_modelEspresso;
  v22 = v39;
  if (!v29)
  {
    v25 = a4;
    goto LABEL_22;
  }

  [(VCPCNNModelEspresso *)v29 outputBlob];
  v23 = v38;
  v30 = self->_modelEspresso;
  if (!v30)
  {
    v25 = a4;
    v26 = a3;
    goto LABEL_23;
  }

  [(VCPCNNModelEspresso *)v30 outputBlob];
  v31 = self->_modelEspresso;
  v24 = v37;
  if (v31)
  {
    [(VCPCNNModelEspresso *)v31 outputBlob];
    v25 = a4;
    v26 = a3;
    v27 = *&buf[0];
  }

  else
  {
    v25 = a4;
    v26 = a3;
    v27 = 0;
  }

LABEL_24:
  *&v17 = a5;
  result = [(VCPCNNHandKeypointsDetector *)self cvtHeatmaps2Keypoints:v27 outHeight:v23 outWidth:v24 inHeight:v20 inWidth:v21 outChannel:v22 keypoints:v17 keypointConfidence:v26 offset:v25];
  if (!result && a6 && self->_enableHandObject)
  {
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
    v32 = **(*&buf[0] + 168);
    *(&buf[0] + 1) = *&buf[0];
    operator delete(*&buf[0]);
    v33 = expf(v32);
    *a6 = v33 / (v33 + 1.0);
    if (MediaAnalysisLogLevel() < 7)
    {
      return 0;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v34 = *a6;
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPCNNHandKeypointsDetectorEspresso - handHoldsObjectConfidence = %f", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

@end