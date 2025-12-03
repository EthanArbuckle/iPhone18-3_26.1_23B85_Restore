@interface CSUSceneNetV5CustomClassifier
- (BOOL)enumerateClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error;
- (BOOL)loadResourcesAndReturnError:(id *)error;
- (CSUSceneNetV5CustomClassifier)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (id)allClassificationLikelihoods:(id)likelihoods;
- (id)allClassificationLikelihoods:(id)likelihoods error:(id *)error;
- (id)labelsFromClassificationLikelihoods:(id)likelihoods;
- (void)runOnInputScenePrint:(id)print completion:(id)completion;
- (void)unsafeRunOnInputScenePrint:(id)print completion:(id)completion;
@end

@implementation CSUSceneNetV5CustomClassifier

- (CSUSceneNetV5CustomClassifier)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CSUSceneNetV5CustomClassifier;
  v6 = [(CSUSceneNetV5CustomClassifier *)&v10 init];
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

- (void)runOnInputScenePrint:(id)print completion:(id)completion
{
  printCopy = print;
  completionCopy = completion;
  objc_msgSend_unsafeRunOnInputScenePrint_completion_(self, v8, printCopy, completionCopy, v9);
}

- (id)allClassificationLikelihoods:(id)likelihoods error:(id *)error
{
  likelihoodsCopy = likelihoods;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC090338;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateClassificationLikelihoods_usingBlock_error_(self, v9, likelihoodsCopy, v13, error))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)allClassificationLikelihoods:(id)likelihoods
{
  v4 = objc_msgSend_allClassificationLikelihoods_error_(self, a2, likelihoods, 0, v3);

  return v4;
}

- (id)labelsFromClassificationLikelihoods:(id)likelihoods
{
  v5 = objc_msgSend_allClassificationLikelihoods_(self, a2, likelihoods, v3, v4);

  return v5;
}

- (BOOL)enumerateClassificationLikelihoods:(id)likelihoods usingBlock:(id)block error:(id *)error
{
  likelihoodsCopy = likelihoods;
  blockCopy = block;
  v17 = objc_msgSend_taxonomyWithError_(self->_configuration, v10, error, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_vocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC09056C(likelihoodsCopy);
    sub_1AC09B578(v17, v18, v19, blockCopy);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)unsafeRunOnInputScenePrint:(id)print completion:(id)completion
{
  v25[22] = *MEMORY[0x1E69E9840];
  printCopy = print;
  completionCopy = completion;
  v25[0] = 0;
  ResourcesAndReturnError = objc_msgSend_loadResourcesAndReturnError_(self, v8, v25, v9, v10);
  v16 = v25[0];
  if (ResourcesAndReturnError)
  {
    ptr = self->_net.__ptr_;
    v18 = objc_msgSend_inputImageTensorName(self->_configuration, v12, v13, v14, v15, printCopy);
    v19 = v18;
    objc_msgSend_UTF8String(v18, v20, v21, v22, v23);
    sub_1AC09056C(printCopy);
    sub_1AC06910C();
  }

  completionCopy[2](completionCopy, 0, v16);

  v24 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end