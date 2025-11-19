@interface CSUDetectionPrintNetworkOutput
- (CSUDetectionPrintNetworkOutput)initWithDetectionPrintPerTapPoint:(id)a3;
- (id)detectionPrintFeatureForTapPointName:(id)a3 error:(id *)a4;
@end

@implementation CSUDetectionPrintNetworkOutput

- (id)detectionPrintFeatureForTapPointName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_detectionPrintPerTapPoint, v7, v6, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(self->_detectionPrintPerTapPoint, v11, v6, v12, v13);
  }

  else if (a4)
  {
    objc_msgSend_errorForInvalidArgument_named_(CSUError, v11, v6, @"DetectionPrintTapPointName", v13);
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CSUDetectionPrintNetworkOutput)initWithDetectionPrintPerTapPoint:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSUDetectionPrintNetworkOutput;
  v6 = [(CSUDetectionPrintNetworkOutput *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detectionPrintPerTapPoint, a3);
    v8 = v7;
  }

  return v7;
}

@end