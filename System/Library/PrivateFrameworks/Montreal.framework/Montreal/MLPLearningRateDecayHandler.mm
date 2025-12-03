@interface MLPLearningRateDecayHandler
- (MLPLearningRateDecayHandler)initWithLearningRate:(float)rate decaySteps:(unint64_t)steps decayRate:(float)decayRate stairCase:(BOOL)case;
- (MLPLearningRateDecayHandlerDelegate)delegate;
- (void)updateGlobalStep;
@end

@implementation MLPLearningRateDecayHandler

- (MLPLearningRateDecayHandler)initWithLearningRate:(float)rate decaySteps:(unint64_t)steps decayRate:(float)decayRate stairCase:(BOOL)case
{
  v11.receiver = self;
  v11.super_class = MLPLearningRateDecayHandler;
  result = [(MLPLearningRateDecayHandler *)&v11 init];
  if (result)
  {
    result->_decaySteps = steps;
    result->_learningRate = rate;
    result->_decayRate = decayRate;
    result->_stairCase = case;
    result->_decayedLearningRate = rate;
  }

  return result;
}

- (void)updateGlobalStep
{
  v5 = objc_msgSend_globalSteps(self, a2, v2, v3);
  objc_msgSend_setGlobalSteps_(self, v6, v5 + 1, v7);
  objc_msgSend_decayedLearningRate(self, v8, v9, v10);
  if (v14 > 0.0001)
  {
    v15 = objc_msgSend_globalSteps(self, v11, v12, v13);
    if (!(v15 % objc_msgSend_decaySteps(self, v16, v17, v18)))
    {
      v22 = objc_msgSend_globalSteps(self, v19, v20, v21);
      v26 = (v22 / objc_msgSend_decaySteps(self, v23, v24, v25));
      objc_msgSend_stairCase(self, v27, v28, v29);
      objc_msgSend_learningRate(self, v30, v31, v32);
      v34 = v33;
      objc_msgSend_decayRate(self, v35, v36, v37);
      *&v39 = powf(v38, v26) * v34;
      objc_msgSend_setDecayedLearningRate_(self, v40, v41, v42, v39);
      v51 = objc_msgSend_delegate(self, v43, v44, v45);
      objc_msgSend_decayedLearningRate(self, v46, v47, v48);
      objc_msgSend_decayHandler_didUpdateLearningRate_(v51, v49, self, v50);
    }
  }
}

- (MLPLearningRateDecayHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end