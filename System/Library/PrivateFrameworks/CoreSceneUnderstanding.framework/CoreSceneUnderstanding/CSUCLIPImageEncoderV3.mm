@interface CSUCLIPImageEncoderV3
- (BOOL)loadResources:(id *)a3;
- (BOOL)resampleImage:(__CVBuffer *)a3 intoInputImage:(__CVBuffer *)a4 error:(id *)a5;
- (CSUCLIPImageEncoderV3)initWithConfiguration:(id)a3;
- (id).cxx_construct;
- (void)_unsafeRunOnInputImage:(__CVBuffer *)a3 completion:(id)a4;
- (void)runOnInputImage:(__CVBuffer *)a3 completion:(id)a4;
@end

@implementation CSUCLIPImageEncoderV3

- (CSUCLIPImageEncoderV3)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSUCLIPImageEncoderV3;
  v6 = [(CSUCLIPImageEncoderV3 *)&v10 init];
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
    v7 = objc_msgSend_espressoNetworkPath(self->_configuration, a2, a3, v3, v4);
    objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
    objc_msgSend_espressoExecutionEngine(self->_configuration, v12, v13, v14, v15);
    sub_1AC063040();
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
  sub_1AC0A8CB8(v6, "Image Transfer");
  return 1;
}

- (void)runOnInputImage:(__CVBuffer *)a3 completion:(id)a4
{
  v6 = a4;
  objc_msgSend__unsafeRunOnInputImage_completion_(self, v7, a3, v6, v8);
}

- (void)_unsafeRunOnInputImage:(__CVBuffer *)a3 completion:(id)a4
{
  v25[23] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v25[0] = 0;
  Resources = objc_msgSend_loadResources_(self, v7, v25, v8, v9);
  v15 = v25[0];
  if (Resources)
  {
    ptr = self->_net.__ptr_;
    v17 = objc_msgSend_inputImageTensorName(self->_configuration, v11, v12, v13, v14);
    v18 = v17;
    v24[7] = objc_msgSend_UTF8String(v17, v19, v20, v21, v22);
    sub_1AC06B064(v24, a3);
  }

  v6[2](v6, 0, v15);

  v23 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end