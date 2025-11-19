@interface BWInferenceSchedulerScaler
- (BWInferenceExecutable)executable;
- (BWInferencePropagatable)propagatable;
- (BWInferenceSchedulerScaler)initWithInputRequirement:(id)a3 derivedFromRequirement:(id)a4 outputRequirements:(id)a5 scalerConfiguration:(id)a6;
- (BWInferenceSubmittable)submittable;
- (NSString)description;
- (id)_newProviderForWithScalerConfiguration:(id)a3 inputDerivedFromRequirement:(id)a4;
- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6;
- (int)prepareForExecution;
- (int)prepareForSubmissionWithWorkQueue:(id)a3;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerScaler

- (BWInferenceSchedulerScaler)initWithInputRequirement:(id)a3 derivedFromRequirement:(id)a4 outputRequirements:(id)a5 scalerConfiguration:(id)a6
{
  v12.receiver = self;
  v12.super_class = BWInferenceSchedulerScaler;
  v10 = [(BWInferenceSchedulerScaler *)&v12 init];
  if (v10)
  {
    v10->_inputRequirement = a3;
    v10->_outputRequirements = a5;
    v10->_provider = [(BWInferenceSchedulerScaler *)v10 _newProviderForWithScalerConfiguration:a6 inputDerivedFromRequirement:a4];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerScaler;
  [(BWInferenceSchedulerScaler *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  v4 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
  v19.receiver = self;
  v19.super_class = BWInferenceSchedulerScaler;
  v18 = [(BWInferenceSchedulerScaler *)&v19 description];
  v17 = [(BWInferenceMediaRequirement *)self->_inputRequirement attachedMediaKey];
  v16 = [v4 width];
  v5 = [v4 height];
  v6 = [v4 pixelFormat] >> 24;
  v7 = ([v4 pixelFormat] >> 16);
  v8 = ([v4 pixelFormat] >> 8);
  v9 = [v4 pixelFormat];
  v10 = [(BWInferenceVideoFormat *)v3 includesInvalidContent];
  if (v10 != [v4 includesInvalidContent])
  {
    v11 = @", removing invalid region";
  }

  else
  {
    v11 = &stru_1F216A3D0;
  }

  v12 = [(BWInferenceVideoFormat *)v3 cropDescriptor];
  v13 = [v4 cropDescriptor];
  v14 = @", applying custom crop";
  if (v12 == v13)
  {
    v14 = &stru_1F216A3D0;
  }

  return [(NSString *)v18 stringByAppendingFormat:@" mediaKey: %@ output:%zux%zu (%c%c%c%c%@%@) provider:%p", v17, v16, v5, v6, v7, v8, v9, v11, v14, self->_provider];
}

- (id)_newProviderForWithScalerConfiguration:(id)a3 inputDerivedFromRequirement:(id)a4
{
  if (FigDepthBytesPerPixelForDepthFormat([(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] pixelFormat]))
  {
    v7 = [[BWInferenceDepthScalingProvider alloc] initWithOutputRequirements:self->_outputRequirements configuration:0];
    [(BWInferenceDepthScalingProvider *)v7 setInputRequirement:self->_inputRequirement];
    return v7;
  }

  else
  {
    v9 = [a3 options];
    v10 = [BWInferenceVideoScalingProvider alloc];
    inputRequirement = self->_inputRequirement;
    outputRequirements = self->_outputRequirements;
    v13 = [a3 filterType];

    return [(BWInferenceVideoScalingProvider *)v10 initWithInputRequirement:inputRequirement derivedFromRequirement:a4 outputRequirements:outputRequirements enableFencing:v9 & 1 filterType:v13];
  }
}

- (BWInferenceExecutable)executable
{
  if ([(BWInferenceProvider *)self->_provider executable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferenceSubmittable)submittable
{
  if ([(BWInferenceProvider *)self->_provider submittable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (BWInferencePropagatable)propagatable
{
  if ([(BWInferenceProvider *)self->_provider propagatable])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)a3 executionTime:(id *)a4
{
  if (![(BWInferenceProvider *)self->_provider conformsToProtocol:&unk_1F2257088])
  {
    return 0;
  }

  provider = self->_provider;
  v9 = *&a4->var0;
  var3 = a4->var3;
  return [(BWInferenceProvider *)provider preventionReasonWithSampleBuffer:a3 executionTime:&v9];
}

- (int)prepareForSubmissionWithWorkQueue:(id)a3
{
  v4 = [(BWInferenceProvider *)self->_provider submittable];

  return [v4 prepareForSubmissionWithWorkQueue:a3];
}

- (int)prepareForExecution
{
  v2 = [(BWInferenceProvider *)self->_provider executable];

  return [v2 prepareForExecution];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withExecutionTime:(id *)a5 completionHandler:(id)a6
{
  provider = self->_provider;
  v8 = *a5;
  return [(BWInferenceProvider *)provider executeOnSampleBuffer:a3 usingStorage:a4 withExecutionTime:&v8 completionHandler:a6];
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)a3 usingStorage:(id)a4 withSubmissionTime:(id *)a5 workQueue:(id)a6 completionHandler:(id)a7
{
  provider = self->_provider;
  if (!provider)
  {
    return -31701;
  }

  v9 = *a5;
  return [(BWInferenceProvider *)provider submitForSampleBuffer:a3 usingStorage:a4 withSubmissionTime:&v9 workQueue:a6 completionHandler:a7];
}

@end