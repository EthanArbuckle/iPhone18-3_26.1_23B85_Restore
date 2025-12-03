@interface CSUDetectionPrintNetwork
- (BOOL)loadResourcesAndReturnError:(id *)error;
- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error;
- (CSUDetectionPrintNetwork)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion;
- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion;
@end

@implementation CSUDetectionPrintNetwork

- (CSUDetectionPrintNetwork)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUDetectionPrintNetwork;
  v6 = [(CSUDetectionPrintNetwork *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

- (BOOL)loadResourcesAndReturnError:(id *)error
{
  if (!self->_net.__ptr_)
  {
    v7 = objc_msgSend_espressoNetworkPath(self->_configuration, a2, error, v3, v4);
    objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
    objc_msgSend_espressoExecutionEngine(self->_configuration, v12, v13, v14, v15);
    sub_1AC063040();
  }

  return 1;
}

- (BOOL)resampleImage:(__CVBuffer *)image intoInputImage:(__CVBuffer *)inputImage error:(id *)error
{
  ptr = self->_transferSession.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v6 = VTPixelTransferSessionTransferImage(**ptr, image, inputImage);
  sub_1AC08AD54(v6, "Image Transfer");
  return 1;
}

- (void)runOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend__unsafeRunOnInputImage_completion_(self, v7, image, completionCopy, v8);
}

- (void)_unsafeRunOnInputImage:(__CVBuffer *)image completion:(id)completion
{
  v26[39] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v26[0] = 0;
  ResourcesAndReturnError = objc_msgSend_loadResourcesAndReturnError_(self, v6, v26, v7, v8);
  v10 = v26[0];
  v15 = v10;
  if (ResourcesAndReturnError)
  {
    ptr = self->_net.__ptr_;
    v17 = objc_msgSend_inputImageTensorName(self->_configuration, v11, v12, v13, v14, v10);
    v18 = v17;
    __dst[7] = objc_msgSend_UTF8String(v17, v19, v20, v21, v22);
    sub_1AC06B064(__dst, image);
  }

  completionCopy[2](completionCopy, 0, v10);

  v23 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end