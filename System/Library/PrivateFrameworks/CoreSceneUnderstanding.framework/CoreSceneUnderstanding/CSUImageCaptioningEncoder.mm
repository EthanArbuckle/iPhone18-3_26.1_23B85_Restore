@interface CSUImageCaptioningEncoder
- (BOOL)loadResources:(id *)a3;
- (BOOL)resampleImage:(__CVBuffer *)a3 intoInputImage:(__CVBuffer *)a4 error:(id *)a5;
- (CSUImageCaptioningEncoder)initWithConfiguration:(id)a3;
- (id).cxx_construct;
- (id)computeEncodedCaptioningFeaturesForImage:(__CVBuffer *)a3 error:(id *)a4;
@end

@implementation CSUImageCaptioningEncoder

- (CSUImageCaptioningEncoder)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSUImageCaptioningEncoder;
  v6 = [(CSUImageCaptioningEncoder *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)a3
{
  if (!self->_net.__ptr_)
  {
    v6 = objc_msgSend_encoderNetworkPath(self->_configuration, a2, a3, v3, v4);
    v7 = v6;
    v12 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
    v13 = strlen(v12);
    if (v13 < 0x7FFFFFFFFFFFFFF8)
    {
      v14 = v13;
      if (v13 < 0x17)
      {
        v21 = v13;
        if (v13)
        {
          memmove(&__dst, v12, v13);
        }

        *(&__dst + v14) = 0;

        objc_msgSend_espressoExecutionEngine(self->_configuration, v15, v16, v17, v18, 0, 0, 0);
        operator new();
      }

      operator new();
    }

    sub_1AC060A04();
  }

  return 1;
}

- (BOOL)resampleImage:(__CVBuffer *)a3 intoInputImage:(__CVBuffer *)a4 error:(id *)a5
{
  ptr = self->_transferSession.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v6 = VTPixelTransferSessionTransferImage(**ptr, a3, a4);
  sub_1AC09B394(v6, "Image Transfer");
  return 1;
}

- (id)computeEncodedCaptioningFeaturesForImage:(__CVBuffer *)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_loadResources_(self, a2, a4, a4, v4))
  {
    if (a3)
    {
      ptr = self->_net.__ptr_;
      v12 = objc_msgSend_inputImageTensorName(self->_configuration, v7, v8, v9, v10);
      v20[7] = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
      sub_1AC06B064(v20, a3);
    }

    v17 = sub_1AC090E50();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC05D000, v17, OS_LOG_TYPE_INFO, "Input image to computeEncodedCaptioningFeaturesForImage is null", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end