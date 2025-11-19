@interface BWEspressoInferenceContext
- (BWEspressoInferenceContext)initWithExecutionTarget:(int)a3 shareIntermediateBuffer:(BOOL)a4;
- (int)configureIntermediateBufferSharingForPlanPostbuild:(void *)a3;
- (int)configureIntermediateBufferSharingForPlanPrebuild:(void *)a3;
- (int)enableIntermediateBufferSharingWithNetworksLoadedFromPath:(id)a3;
- (int)prepareForInference;
- (void)dealloc;
@end

@implementation BWEspressoInferenceContext

- (BWEspressoInferenceContext)initWithExecutionTarget:(int)a3 shareIntermediateBuffer:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = BWEspressoInferenceContext;
  result = [(BWEspressoInferenceContext *)&v7 init];
  if (result)
  {
    result->_executionTarget = a3;
    result->_shareIntermediateBuffer = a4;
  }

  return result;
}

- (void)dealloc
{
  if (self->_espressoContext)
  {
    espresso_context_destroy();
  }

  v3.receiver = self;
  v3.super_class = BWEspressoInferenceContext;
  [(BWEspressoInferenceContext *)&v3 dealloc];
}

- (int)prepareForInference
{
  if ([(BWEspressoInferenceContext *)self isPrepared])
  {
    return 0;
  }

  executionTarget = self->_executionTarget;
  if (executionTarget < 2 || executionTarget == 3)
  {
    context = espresso_create_context();
    self->_espressoContext = context;
  }

  else
  {
    context = self->_espressoContext;
  }

  if (context)
  {
    return 0;
  }

  else
  {
    return -31702;
  }
}

- (int)configureIntermediateBufferSharingForPlanPrebuild:(void *)a3
{
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    return 0;
  }

  if (!self->_shareIntermediateBuffer || self->_executionTarget != 3 || !self->_rootIntermediateBufferPlan)
  {
    return 0;
  }

  result = espresso_plan_share_intermediate_buffer();
  if (result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3();
    return -31702;
  }

  return result;
}

- (int)configureIntermediateBufferSharingForPlanPostbuild:(void *)a3
{
  if (self->_shareIntermediateBuffer)
  {
    if (self->_executionTarget == 3 && !self->_rootIntermediateBufferPlan)
    {
      self->_rootIntermediateBufferPlan = a3;
      sharedBufferNetworksPath = self->_sharedBufferNetworksPath;
      if (sharedBufferNetworksPath)
      {
        [(NSString *)sharedBufferNetworksPath UTF8String];
        LODWORD(sharedBufferNetworksPath) = espresso_will_share_intermediate_buffer_with_existing_plan();
        if (sharedBufferNetworksPath)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
          FigDebugAssert3();
          LODWORD(sharedBufferNetworksPath) = -31702;
        }
      }
    }

    else
    {
      LODWORD(sharedBufferNetworksPath) = 0;
    }
  }

  else
  {
    LODWORD(sharedBufferNetworksPath) = 0;
  }

  return sharedBufferNetworksPath;
}

- (int)enableIntermediateBufferSharingWithNetworksLoadedFromPath:(id)a3
{
  if (!self->_shareIntermediateBuffer)
  {
    return 0;
  }

  if (self->_executionTarget != 3)
  {
    return 0;
  }

  sharedBufferNetworksPath = self->_sharedBufferNetworksPath;
  if (!sharedBufferNetworksPath)
  {
LABEL_6:
    if (a3)
    {
      if (!self->_rootIntermediateBufferPlan || ([a3 UTF8String], !espresso_will_share_intermediate_buffer_with_existing_plan()))
      {
        v6 = a3;
        result = 0;
        self->_sharedBufferNetworksPath = v6;
        return result;
      }

      goto LABEL_12;
    }

    return 0;
  }

  [(NSString *)sharedBufferNetworksPath UTF8String];
  if (!espresso_will_share_intermediate_buffer_with_existing_plan())
  {

    self->_sharedBufferNetworksPath = 0;
    goto LABEL_6;
  }

LABEL_12:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
  return -31702;
}

@end