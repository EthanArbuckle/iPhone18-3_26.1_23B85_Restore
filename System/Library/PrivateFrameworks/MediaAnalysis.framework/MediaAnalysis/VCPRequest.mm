@interface VCPRequest
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (BOOL)updateWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPRequest)init;
- (VCPRequest)initWithOptions:(id)options;
@end

@implementation VCPRequest

- (VCPRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = VCPRequest;
  v5 = [(VCPRequest *)&v46 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"forceCPU"];
    if (v6)
    {
      v7 = [optionsCopy objectForKeyedSubscript:@"forceCPU"];
      bOOLValue = [v7 BOOLValue];

      if (bOOLValue)
      {
        v5->_useCPUOnly = 1;
      }
    }

    v9 = [optionsCopy objectForKeyedSubscript:@"revision"];

    if (v9)
    {
      v10 = [optionsCopy objectForKeyedSubscript:@"revision"];
      v5->_revision = [v10 intValue];
    }

    v11 = [optionsCopy objectForKeyedSubscript:@"frameWidth"];

    if (v11)
    {
      v12 = [optionsCopy objectForKeyedSubscript:@"frameWidth"];
      v5->_width = [v12 intValue];
    }

    v13 = [optionsCopy objectForKeyedSubscript:@"frameHeight"];

    if (v13)
    {
      v14 = [optionsCopy objectForKeyedSubscript:@"frameHeight"];
      v5->_height = [v14 intValue];
    }

    v15 = [optionsCopy objectForKeyedSubscript:@"maxNumberHands"];

    if (v15)
    {
      v16 = [optionsCopy objectForKeyedSubscript:@"maxNumberHands"];
      v5->_maxNumHands = [v16 intValue];
    }

    v17 = [optionsCopy objectForKeyedSubscript:@"maxNumberPets"];

    if (v17)
    {
      v18 = [optionsCopy objectForKeyedSubscript:@"maxNumberPets"];
      v5->_maxNumPets = [v18 intValue];
    }

    v19 = [optionsCopy objectForKeyedSubscript:@"humanActionWindowSize"];

    if (v19)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"humanActionWindowSize"];
      v5->_humanActionWindowSize = [v20 intValue];
    }

    v21 = [optionsCopy objectForKeyedSubscript:@"motionFlowComputationAccuracy"];

    if (v21)
    {
      v22 = [optionsCopy objectForKeyedSubscript:@"motionFlowComputationAccuracy"];
      v5->_motionFlowComputationAccuracy = [v22 unsignedIntValue];
    }

    v5->_enableHandDetection = 1;
    v23 = [optionsCopy objectForKeyedSubscript:@"disableHandDetection"];

    if (v23)
    {
      v24 = [optionsCopy objectForKeyedSubscript:@"disableHandDetection"];
      v5->_enableHandDetection = [v24 BOOLValue] ^ 1;
    }

    v5->_enableANSTHandDetection = 0;
    v25 = [optionsCopy objectForKeyedSubscript:@"enableANSTHandDetection"];

    if (v25)
    {
      v26 = [optionsCopy objectForKeyedSubscript:@"enableANSTHandDetection"];
      v5->_enableANSTHandDetection = [v26 BOOLValue];
    }

    v5->_enableRejectHandsNearBoundaries = 0;
    v27 = [optionsCopy objectForKeyedSubscript:@"enableRejectHandsNearBoundaries"];

    if (v27)
    {
      v28 = [optionsCopy objectForKeyedSubscript:@"enableRejectHandsNearBoundaries"];
      v5->_enableRejectHandsNearBoundaries = [v28 BOOLValue];
    }

    v5->_maxNumOfPersons = 1;
    v29 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];

    if (v29)
    {
      v30 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];
      v5->_maxNumOfPersons = [v30 intValue];
    }

    v5->_maxNumOfPersonsForPose = 4;
    v31 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];

    if (v31)
    {
      v32 = [optionsCopy objectForKeyedSubscript:@"maxNumOfPersons"];
      v5->_maxNumOfPersonsForPose = [v32 intValue];
    }

    v33 = [optionsCopy objectForKeyedSubscript:@"optimizeForDistance"];

    if (v33)
    {
      v34 = [optionsCopy objectForKeyedSubscript:@"optimizeForDistance"];
      v5->_optimizeForDistance = [v34 BOOLValue];
    }

    v5->_enableHandPoseLite = [objc_opt_class() useHandsLitePoseForVision];
    v35 = [optionsCopy objectForKeyedSubscript:@"handPoseLite"];

    if (v35)
    {
      v36 = [optionsCopy objectForKeyedSubscript:@"handPoseLite"];
      v5->_enableHandPoseLite = [v36 BOOLValue];
    }

    v5->_useAsync = 0;
    v37 = [optionsCopy objectForKeyedSubscript:@"useAsync"];

    if (v37)
    {
      v38 = [optionsCopy objectForKeyedSubscript:@"useAsync"];
      v5->_useAsync = [v38 BOOLValue];
    }

    v5->_minHandSize = 0.05;
    v39 = [optionsCopy objectForKeyedSubscript:@"minHandSize"];

    if (v39)
    {
      v40 = [optionsCopy objectForKeyedSubscript:@"minHandSize"];
      [v40 floatValue];
      v42 = 1.0;
      if (v41 < 1.0)
      {
        v42 = v41;
      }

      v43 = v41 > 0.0;
      v44 = 0.0;
      if (v43)
      {
        v44 = v42;
      }

      v5->_minHandSize = v44;
    }
  }

  return v5;
}

- (BOOL)updateWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:@"frameWidth"];

  if (v6)
  {
    v7 = [optionsCopy objectForKeyedSubscript:@"frameWidth"];
    self->_width = [v7 intValue];
  }

  v8 = [optionsCopy objectForKeyedSubscript:@"frameWidth"];

  if (v8)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"frameHeight"];
    self->_height = [v9 intValue];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"motionFlowComputationAccuracy"];

  if (v10)
  {
    v11 = [optionsCopy objectForKeyedSubscript:@"motionFlowComputationAccuracy"];
    self->_motionFlowComputationAccuracy = [v11 unsignedIntValue];
  }

  return 1;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

@end