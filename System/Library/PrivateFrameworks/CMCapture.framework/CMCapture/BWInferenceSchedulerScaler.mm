@interface BWInferenceSchedulerScaler
- (BWInferenceExecutable)executable;
- (BWInferencePropagatable)propagatable;
- (BWInferenceSchedulerScaler)initWithInputRequirement:(id)requirement derivedFromRequirement:(id)fromRequirement outputRequirements:(id)requirements scalerConfiguration:(id)configuration;
- (BWInferenceSubmittable)submittable;
- (NSString)description;
- (id)_newProviderForWithScalerConfiguration:(id)configuration inputDerivedFromRequirement:(id)requirement;
- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)buffer executionTime:(id *)time;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerScaler

- (BWInferenceSchedulerScaler)initWithInputRequirement:(id)requirement derivedFromRequirement:(id)fromRequirement outputRequirements:(id)requirements scalerConfiguration:(id)configuration
{
  v12.receiver = self;
  v12.super_class = BWInferenceSchedulerScaler;
  v10 = [(BWInferenceSchedulerScaler *)&v12 init];
  if (v10)
  {
    v10->_inputRequirement = requirement;
    v10->_outputRequirements = requirements;
    v10->_provider = [(BWInferenceSchedulerScaler *)v10 _newProviderForWithScalerConfiguration:configuration inputDerivedFromRequirement:fromRequirement];
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
  videoFormat = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  v4 = [-[NSArray firstObject](self->_outputRequirements "firstObject")];
  v19.receiver = self;
  v19.super_class = BWInferenceSchedulerScaler;
  v18 = [(BWInferenceSchedulerScaler *)&v19 description];
  attachedMediaKey = [(BWInferenceMediaRequirement *)self->_inputRequirement attachedMediaKey];
  width = [v4 width];
  height = [v4 height];
  v6 = [v4 pixelFormat] >> 24;
  v7 = ([v4 pixelFormat] >> 16);
  v8 = ([v4 pixelFormat] >> 8);
  pixelFormat = [v4 pixelFormat];
  includesInvalidContent = [(BWInferenceVideoFormat *)videoFormat includesInvalidContent];
  if (includesInvalidContent != [v4 includesInvalidContent])
  {
    v11 = @", removing invalid region";
  }

  else
  {
    v11 = &stru_1F216A3D0;
  }

  cropDescriptor = [(BWInferenceVideoFormat *)videoFormat cropDescriptor];
  cropDescriptor2 = [v4 cropDescriptor];
  v14 = @", applying custom crop";
  if (cropDescriptor == cropDescriptor2)
  {
    v14 = &stru_1F216A3D0;
  }

  return [(NSString *)v18 stringByAppendingFormat:@" mediaKey: %@ output:%zux%zu (%c%c%c%c%@%@) provider:%p", attachedMediaKey, width, height, v6, v7, v8, pixelFormat, v11, v14, self->_provider];
}

- (id)_newProviderForWithScalerConfiguration:(id)configuration inputDerivedFromRequirement:(id)requirement
{
  if (FigDepthBytesPerPixelForDepthFormat([(BWInferenceVideoFormat *)[(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat] pixelFormat]))
  {
    v7 = [[BWInferenceDepthScalingProvider alloc] initWithOutputRequirements:self->_outputRequirements configuration:0];
    [(BWInferenceDepthScalingProvider *)v7 setInputRequirement:self->_inputRequirement];
    return v7;
  }

  else
  {
    options = [configuration options];
    v10 = [BWInferenceVideoScalingProvider alloc];
    inputRequirement = self->_inputRequirement;
    outputRequirements = self->_outputRequirements;
    filterType = [configuration filterType];

    return [(BWInferenceVideoScalingProvider *)v10 initWithInputRequirement:inputRequirement derivedFromRequirement:requirement outputRequirements:outputRequirements enableFencing:options & 1 filterType:filterType];
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

- (id)preventionReasonWithSampleBuffer:(opaqueCMSampleBuffer *)buffer executionTime:(id *)time
{
  if (![(BWInferenceProvider *)self->_provider conformsToProtocol:&unk_1F2257088])
  {
    return 0;
  }

  provider = self->_provider;
  v9 = *&time->var0;
  var3 = time->var3;
  return [(BWInferenceProvider *)provider preventionReasonWithSampleBuffer:buffer executionTime:&v9];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  submittable = [(BWInferenceProvider *)self->_provider submittable];

  return [submittable prepareForSubmissionWithWorkQueue:queue];
}

- (int)prepareForExecution
{
  executable = [(BWInferenceProvider *)self->_provider executable];

  return [executable prepareForExecution];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  provider = self->_provider;
  v8 = *time;
  return [(BWInferenceProvider *)provider executeOnSampleBuffer:buffer usingStorage:storage withExecutionTime:&v8 completionHandler:handler];
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  provider = self->_provider;
  if (!provider)
  {
    return -31701;
  }

  v9 = *time;
  return [(BWInferenceProvider *)provider submitForSampleBuffer:buffer usingStorage:storage withSubmissionTime:&v9 workQueue:queue completionHandler:handler];
}

@end