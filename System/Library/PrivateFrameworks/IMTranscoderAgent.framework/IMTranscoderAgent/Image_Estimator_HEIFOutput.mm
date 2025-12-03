@interface Image_Estimator_HEIFOutput
- (Image_Estimator_HEIFOutput)initWithTarget_Quality_Factor:(double)factor;
- (id)featureValueForName:(id)name;
@end

@implementation Image_Estimator_HEIFOutput

- (Image_Estimator_HEIFOutput)initWithTarget_Quality_Factor:(double)factor
{
  v5.receiver = self;
  v5.super_class = Image_Estimator_HEIFOutput;
  result = [(Image_Estimator_HEIFOutput *)&v5 init];
  if (result)
  {
    result->_Target_Quality_Factor = factor;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if (objc_msgSend_isEqualToString_(name, a2, @"Target Quality Factor", v3, v4, v5, v6))
  {
    v14 = MEMORY[0x277CBFEF8];
    objc_msgSend_Target_Quality_Factor(self, v8, v9, v10, v11, v12, v13);
    v21 = objc_msgSend_featureValueWithDouble_(v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end