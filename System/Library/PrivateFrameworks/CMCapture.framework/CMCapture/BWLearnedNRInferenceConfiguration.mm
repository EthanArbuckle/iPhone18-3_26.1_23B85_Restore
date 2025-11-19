@interface BWLearnedNRInferenceConfiguration
- (BWLearnedNRInferenceConfiguration)initWithMetalCommandQueue:(id)a3 sensorConfigurationsByPortType:(id)a4 inferenceType:(int)a5 outputVideoRequirements:(id)a6;
- (id)outputAttachedMediaKeyForInputDimensions:(id)a3;
- (void)dealloc;
@end

@implementation BWLearnedNRInferenceConfiguration

- (BWLearnedNRInferenceConfiguration)initWithMetalCommandQueue:(id)a3 sensorConfigurationsByPortType:(id)a4 inferenceType:(int)a5 outputVideoRequirements:(id)a6
{
  v10.receiver = self;
  v10.super_class = BWLearnedNRInferenceConfiguration;
  v8 = [(BWTiledEspressoInferenceConfiguration *)&v10 initWithInferenceType:*&a5 metalCommandQueue:a3];
  if (v8)
  {
    v8->_sensorConfigurationsByPortType = a4;
    v8->_outputVideoRequirements = a6;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRInferenceConfiguration;
  [(BWTiledEspressoInferenceConfiguration *)&v3 dealloc];
}

- (id)outputAttachedMediaKeyForInputDimensions:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  outputVideoRequirements = self->_outputVideoRequirements;
  result = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v14;
    var0 = a3.var0;
    v9 = *&a3 >> 32;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(outputVideoRequirements);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([objc_msgSend(v11 "videoFormat")] == var0 && objc_msgSend(objc_msgSend(v11, "videoFormat"), "height") == v9)
        {
          return [v11 attachedMediaKey];
        }

        v10 = v10 + 1;
      }

      while (v6 != v10);
      result = [(NSArray *)outputVideoRequirements countByEnumeratingWithState:&v13 objects:v12 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

@end