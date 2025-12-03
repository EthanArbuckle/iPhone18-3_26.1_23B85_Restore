@interface CSUDetectionPrintNetworkOutput
- (CSUDetectionPrintNetworkOutput)initWithDetectionPrintPerTapPoint:(id)point;
- (id)detectionPrintFeatureForTapPointName:(id)name error:(id *)error;
@end

@implementation CSUDetectionPrintNetworkOutput

- (id)detectionPrintFeatureForTapPointName:(id)name error:(id *)error
{
  nameCopy = name;
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_detectionPrintPerTapPoint, v7, nameCopy, v8, v9);

  if (v10)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(self->_detectionPrintPerTapPoint, v11, nameCopy, v12, v13);
  }

  else if (error)
  {
    objc_msgSend_errorForInvalidArgument_named_(CSUError, v11, nameCopy, @"DetectionPrintTapPointName", v13);
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CSUDetectionPrintNetworkOutput)initWithDetectionPrintPerTapPoint:(id)point
{
  pointCopy = point;
  v10.receiver = self;
  v10.super_class = CSUDetectionPrintNetworkOutput;
  v6 = [(CSUDetectionPrintNetworkOutput *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detectionPrintPerTapPoint, point);
    v8 = v7;
  }

  return v7;
}

@end