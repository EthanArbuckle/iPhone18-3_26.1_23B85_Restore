@interface CSUSceneNetV5CustomClassifier
- (BOOL)enumerateClassificationLikelihoods:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)loadResourcesAndReturnError:(id *)a3;
- (CSUSceneNetV5CustomClassifier)initWithConfiguration:(id)a3;
- (id).cxx_construct;
- (id)allClassificationLikelihoods:(id)a3;
- (id)allClassificationLikelihoods:(id)a3 error:(id *)a4;
- (id)labelsFromClassificationLikelihoods:(id)a3;
- (void)runOnInputScenePrint:(id)a3 completion:(id)a4;
- (void)unsafeRunOnInputScenePrint:(id)a3 completion:(id)a4;
@end

@implementation CSUSceneNetV5CustomClassifier

- (CSUSceneNetV5CustomClassifier)initWithConfiguration:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSUSceneNetV5CustomClassifier;
  v6 = [(CSUSceneNetV5CustomClassifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)loadResourcesAndReturnError:(id *)a3
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

- (void)runOnInputScenePrint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_unsafeRunOnInputScenePrint_completion_(self, v8, v6, v7, v9);
}

- (id)allClassificationLikelihoods:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AC090338;
  v13[3] = &unk_1E7967D00;
  v14 = v7;
  v8 = v7;
  if (objc_msgSend_enumerateClassificationLikelihoods_usingBlock_error_(self, v9, v6, v13, a4))
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

- (id)allClassificationLikelihoods:(id)a3
{
  v4 = objc_msgSend_allClassificationLikelihoods_error_(self, a2, a3, 0, v3);

  return v4;
}

- (id)labelsFromClassificationLikelihoods:(id)a3
{
  v5 = objc_msgSend_allClassificationLikelihoods_(self, a2, a3, v3, v4);

  return v5;
}

- (BOOL)enumerateClassificationLikelihoods:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = objc_msgSend_taxonomyWithError_(self->_configuration, v10, a5, v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_vocabularyName(self->_configuration, v13, v14, v15, v16);
    v19 = sub_1AC09056C(v8);
    sub_1AC09B578(v17, v18, v19, v9);

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)unsafeRunOnInputScenePrint:(id)a3 completion:(id)a4
{
  v25[22] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25[0] = 0;
  ResourcesAndReturnError = objc_msgSend_loadResourcesAndReturnError_(self, v8, v25, v9, v10);
  v16 = v25[0];
  if (ResourcesAndReturnError)
  {
    ptr = self->_net.__ptr_;
    v18 = objc_msgSend_inputImageTensorName(self->_configuration, v12, v13, v14, v15, v6);
    v19 = v18;
    objc_msgSend_UTF8String(v18, v20, v21, v22, v23);
    sub_1AC09056C(v6);
    sub_1AC06910C();
  }

  v7[2](v7, 0, v16);

  v24 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end