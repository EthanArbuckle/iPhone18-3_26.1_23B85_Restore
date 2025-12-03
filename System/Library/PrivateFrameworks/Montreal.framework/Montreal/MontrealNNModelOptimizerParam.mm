@interface MontrealNNModelOptimizerParam
- (MontrealNNModelOptimizerParam)initWithDictionary:(id)dictionary;
- (MontrealNNModelOptimizerParam)initWithOptimizerType:(unint64_t)type learningRate:(float)rate momentum:(float)momentum gradientClipMin:(id)min gradientClipMax:(id)max;
- (void)description:(id)description indent:(id)indent;
@end

@implementation MontrealNNModelOptimizerParam

- (MontrealNNModelOptimizerParam)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_exMRL_stringForKey_(dictionaryCopy, v5, off_1EB013718, v6);
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
    selfCopy = 0;
    goto LABEL_14;
  }

  v13 = 1;
LABEL_6:
  v14 = objc_msgSend_exMRL_numberForKey_(dictionaryCopy, v11, off_1EB013730, v12);
  v18 = v14;
  v19 = 0;
  v20 = 0;
  if (v14)
  {
    objc_msgSend_floatValue(v14, v15, v16, v17);
    v20 = v21;
  }

  v22 = objc_msgSend_exMRL_numberForKey_(dictionaryCopy, v15, off_1EB013738, v17);
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

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (MontrealNNModelOptimizerParam)initWithOptimizerType:(unint64_t)type learningRate:(float)rate momentum:(float)momentum gradientClipMin:(id)min gradientClipMax:(id)max
{
  minCopy = min;
  maxCopy = max;
  v19.receiver = self;
  v19.super_class = MontrealNNModelOptimizerParam;
  v15 = [(MontrealNNModelOptimizerParam *)&v19 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  v15->_optimizerType = type;
  v15->_learningRate = rate;
  if (rate == 0.0)
  {
    if (type == 1)
    {
      v17 = 973279855;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_8;
      }

      v17 = 1036831949;
    }

    LODWORD(v15->_learningRate) = v17;
  }

LABEL_8:
  if (minCopy && maxCopy)
  {
    objc_storeStrong(&v15->_gradientClipMin, min);
    objc_storeStrong(&v16->_gradientClipMax, max);
  }

  v16->_momentum = momentum;
LABEL_12:

  return v16;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v11 = objc_msgSend_optimizerType(self, v8, v9, v10);
  objc_msgSend_appendFormat_(descriptionCopy, v12, @"\r %@ Algorithm = %tu (Adam: %tu, SGD: %tu)", v13, indentCopy, v11, 1, 2);
  objc_msgSend_learningRate(self, v14, v15, v16);
  objc_msgSend_appendFormat_(descriptionCopy, v18, @"\r %@ Learning Rate = %lf", v19, indentCopy, v17);
  objc_msgSend_momentum(self, v20, v21, v22);
  objc_msgSend_appendFormat_(descriptionCopy, v24, @"\r %@ Use Momentum = %lf", v25, indentCopy, v23);
  v35 = objc_msgSend_gradientClipMin(self, v26, v27, v28);
  v32 = objc_msgSend_gradientClipMax(self, v29, v30, v31);
  objc_msgSend_appendFormat_(descriptionCopy, v33, @"\r %@ Gradient Clip Min = %@, Max = %@", v34, indentCopy, v35, v32);
}

@end