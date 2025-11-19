@interface MontrealNNModelOptimizerParam
- (MontrealNNModelOptimizerParam)initWithDictionary:(id)a3;
- (MontrealNNModelOptimizerParam)initWithOptimizerType:(unint64_t)a3 learningRate:(float)a4 momentum:(float)a5 gradientClipMin:(id)a6 gradientClipMax:(id)a7;
- (void)description:(id)a3 indent:(id)a4;
@end

@implementation MontrealNNModelOptimizerParam

- (MontrealNNModelOptimizerParam)initWithDictionary:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_exMRL_stringForKey_(v4, v5, off_1EB013718, v6);
  v10 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  if ((objc_msgSend_isEqualToString_(v7, v8, off_1EB013720, v9) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v10, v11, off_1EB013728, v12))
    {
      v13 = 2;
      goto LABEL_6;
    }

LABEL_13:
    v32 = 0;
    goto LABEL_14;
  }

  v13 = 1;
LABEL_6:
  v14 = objc_msgSend_exMRL_numberForKey_(v4, v11, off_1EB013730, v12);
  v18 = v14;
  v19 = 0;
  v20 = 0;
  if (v14)
  {
    objc_msgSend_floatValue(v14, v15, v16, v17);
    v20 = v21;
  }

  v22 = objc_msgSend_exMRL_numberForKey_(v4, v15, off_1EB013738, v17);
  v26 = v22;
  if (v22)
  {
    objc_msgSend_floatValue(v22, v23, v24, v25);
    v19 = v27;
  }

  v34.receiver = self;
  v34.super_class = MontrealNNModelOptimizerParam;
  v28 = [(MontrealNNModelOptimizerParam *)&v34 init];
  if (v28)
  {
    LODWORD(v30) = v20;
    LODWORD(v31) = v19;
    v28 = objc_msgSend_initWithOptimizerType_learningRate_momentum_gradientClipMin_gradientClipMax_(v28, v29, v13, 0, 0, v30, v31);
  }

  self = v28;

  v32 = self;
LABEL_14:

  return v32;
}

- (MontrealNNModelOptimizerParam)initWithOptimizerType:(unint64_t)a3 learningRate:(float)a4 momentum:(float)a5 gradientClipMin:(id)a6 gradientClipMax:(id)a7
{
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = MontrealNNModelOptimizerParam;
  v15 = [(MontrealNNModelOptimizerParam *)&v19 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  v15->_optimizerType = a3;
  v15->_learningRate = a4;
  if (a4 == 0.0)
  {
    if (a3 == 1)
    {
      v17 = 973279855;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_8;
      }

      v17 = 1036831949;
    }

    LODWORD(v15->_learningRate) = v17;
  }

LABEL_8:
  if (v13 && v14)
  {
    objc_storeStrong(&v15->_gradientClipMin, a6);
    objc_storeStrong(&v16->_gradientClipMax, a7);
  }

  v16->_momentum = a5;
LABEL_12:

  return v16;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_optimizerType(self, v8, v9, v10);
  objc_msgSend_appendFormat_(v7, v12, @"\r %@ Algorithm = %tu (Adam: %tu, SGD: %tu)", v13, v6, v11, 1, 2);
  objc_msgSend_learningRate(self, v14, v15, v16);
  objc_msgSend_appendFormat_(v7, v18, @"\r %@ Learning Rate = %lf", v19, v6, v17);
  objc_msgSend_momentum(self, v20, v21, v22);
  objc_msgSend_appendFormat_(v7, v24, @"\r %@ Use Momentum = %lf", v25, v6, v23);
  v35 = objc_msgSend_gradientClipMin(self, v26, v27, v28);
  v32 = objc_msgSend_gradientClipMax(self, v29, v30, v31);
  objc_msgSend_appendFormat_(v7, v33, @"\r %@ Gradient Clip Min = %@, Max = %@", v34, v6, v35, v32);
}

@end