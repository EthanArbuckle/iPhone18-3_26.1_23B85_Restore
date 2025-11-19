@interface VCPCNNFastGestureRecognition
+ (id)detector;
- (VCPCNNFastGestureRecognition)init;
- (int)createInput:(float *)a3 keypoints:(id)a4;
- (int)gestureDetection:(id)a3 score:(float *)a4;
- (int)getDetectionScore:(float *)a3;
- (void)dealloc;
@end

@implementation VCPCNNFastGestureRecognition

- (VCPCNNFastGestureRecognition)init
{
  v47 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = VCPCNNFastGestureRecognition;
  v2 = [(VCPCNNFastGestureRecognition *)&v40 init];
  if (v2)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNFastGestureRecognition: start loading model", buf, 2u);
    }

    v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    v4 = [v3 resourceURL];

    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"gesture_recognition.espresso.net" relativeToURL:v4];
    v6 = [[VCPCNNModelEspresso alloc] initWithParameters:v5 inputNames:0 outputNames:0 properties:0];
    modelEspresso = v2->_modelEspresso;
    v2->_modelEspresso = v6;

    v8 = v2->_modelEspresso;
    if (!v8 || [(VCPCNNModelEspresso *)v8 prepareModelWithConfig:&stru_1F496CB30])
    {
      goto LABEL_30;
    }

    if (MediaAnalysisLogLevel() < 7)
    {
LABEL_19:
      v18 = v2->_modelEspresso;
      if (v18 && ([(VCPCNNModelEspresso *)v18 inputBlob], (v19 = v2->_modelEspresso) != 0))
      {
        v20 = DWORD2(v34);
        [(VCPCNNModelEspresso *)v19 inputBlob];
        v21 = v2->_modelEspresso;
        v22 = v28 * v20;
        if (v21)
        {
          [(VCPCNNModelEspresso *)v21 inputBlob];
          v23 = v27;
LABEL_25:
          if (v22 * v23 == 378)
          {
            v24 = operator new[](0x5E8uLL, MEMORY[0x1E69E5398]);
            v2->_inputData = v24;
            if (v24)
            {
              v17 = v2;
              if (MediaAnalysisLogLevel() >= 7)
              {
                v17 = v2;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNFastGestureRecognition: successfully loaded model", buf, 2u);
                  v17 = v2;
                }
              }

              goto LABEL_31;
            }
          }

LABEL_30:
          v17 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = 0;
      goto LABEL_25;
    }

    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
LABEL_18:

      goto LABEL_19;
    }

    v11 = v2->_modelEspresso;
    if (v11)
    {
      [(VCPCNNModelEspresso *)v11 inputBlob];
      v12 = DWORD2(v34);
      v13 = v2->_modelEspresso;
      if (v13)
      {
        [(VCPCNNModelEspresso *)v13 inputBlob];
        v14 = v28;
        v15 = v2->_modelEspresso;
        if (v15)
        {
          [(VCPCNNModelEspresso *)v15 inputBlob];
          v16 = v27;
LABEL_17:
          *v41 = 67109632;
          v42 = v12;
          v43 = 1024;
          v44 = v14;
          v45 = 1024;
          v46 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "CNNFastGestureRecognition: inputBlob.height = %d, inputBlob.width = %d, inputBlob.channels = %d", v41, 0x14u);
          goto LABEL_18;
        }

LABEL_16:
        v16 = 0;
        v27 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *buf = 0u;
      v30 = 0u;
    }

    v14 = 0;
    v28 = 0;
    goto LABEL_16;
  }

  v17 = 0;
LABEL_32:
  v25 = v17;

  return v25;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNFastGestureRecognition;
  [(VCPCNNFastGestureRecognition *)&v4 dealloc];
}

+ (id)detector
{
  {
    +[VCPCNNFastGestureRecognition detector]::analyzerClass = objc_opt_class();
  }

  v2 = objc_alloc_init(+[VCPCNNFastGestureRecognition detector]::analyzerClass);

  return v2;
}

- (int)createInput:(float *)a3 keypoints:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = 0;
    v7 = a3 + 21;
    do
    {
      v8 = [v5 objectAtIndex:v6];
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = [v8 objectAtIndex:v9];
        v12 = [v11 objectAtIndex:0];
        [v12 floatValue];
        *(v10 - 21) = v13;

        v14 = [v11 objectAtIndex:1];
        [v14 floatValue];
        *v10 = v15;

        v16 = [v11 objectAtIndex:2];
        [v16 floatValue];
        *(v10 + 21) = v17;

        ++v9;
        ++v10;
      }

      while (v9 != 21);

      ++v6;
      v7 += 63;
    }

    while (v6 != 6);
    v18 = 0;
  }

  else
  {
    v18 = -108;
  }

  return v18;
}

- (int)getDetectionScore:(float *)a3
{
  v5 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:self->_inputData];
  if (!v5)
  {
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
    [(VCPCNNModelEspresso *)self->_modelEspresso outputBlob];
    *a3 = *(v7 + 4);
  }

  return v5;
}

- (int)gestureDetection:(id)a3 score:(float *)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(VCPCNNFastGestureRecognition *)self createInput:self->_inputData keypoints:a3];
  if (!v8)
  {
    v8 = [(VCPCNNFastGestureRecognition *)self getDetectionScore:a4];
  }

  objc_autoreleasePoolPop(v7);
  return v8;
}

@end