@interface VCPRequest
- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4;
- (BOOL)updateWithOptions:(id)a3 error:(id *)a4;
- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4;
- (VCPRequest)init;
- (VCPRequest)initWithOptions:(id)a3;
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

- (VCPRequest)initWithOptions:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = VCPRequest;
  v5 = [(VCPRequest *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"forceCPU"];
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"forceCPU"];
      v8 = [v7 BOOLValue];

      if (v8)
      {
        v5->_useCPUOnly = 1;
      }
    }

    v9 = [v4 objectForKeyedSubscript:@"revision"];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"revision"];
      v5->_revision = [v10 intValue];
    }

    v11 = [v4 objectForKeyedSubscript:@"frameWidth"];

    if (v11)
    {
      v12 = [v4 objectForKeyedSubscript:@"frameWidth"];
      v5->_width = [v12 intValue];
    }

    v13 = [v4 objectForKeyedSubscript:@"frameHeight"];

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"frameHeight"];
      v5->_height = [v14 intValue];
    }

    v15 = [v4 objectForKeyedSubscript:@"maxNumberHands"];

    if (v15)
    {
      v16 = [v4 objectForKeyedSubscript:@"maxNumberHands"];
      v5->_maxNumHands = [v16 intValue];
    }

    v17 = [v4 objectForKeyedSubscript:@"maxNumberPets"];

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:@"maxNumberPets"];
      v5->_maxNumPets = [v18 intValue];
    }

    v19 = [v4 objectForKeyedSubscript:@"humanActionWindowSize"];

    if (v19)
    {
      v20 = [v4 objectForKeyedSubscript:@"humanActionWindowSize"];
      v5->_humanActionWindowSize = [v20 intValue];
    }

    v21 = [v4 objectForKeyedSubscript:@"motionFlowComputationAccuracy"];

    if (v21)
    {
      v22 = [v4 objectForKeyedSubscript:@"motionFlowComputationAccuracy"];
      v5->_motionFlowComputationAccuracy = [v22 unsignedIntValue];
    }

    v5->_enableHandDetection = 1;
    v23 = [v4 objectForKeyedSubscript:@"disableHandDetection"];

    if (v23)
    {
      v24 = [v4 objectForKeyedSubscript:@"disableHandDetection"];
      v5->_enableHandDetection = [v24 BOOLValue] ^ 1;
    }

    v5->_enableANSTHandDetection = 0;
    v25 = [v4 objectForKeyedSubscript:@"enableANSTHandDetection"];

    if (v25)
    {
      v26 = [v4 objectForKeyedSubscript:@"enableANSTHandDetection"];
      v5->_enableANSTHandDetection = [v26 BOOLValue];
    }

    v5->_enableRejectHandsNearBoundaries = 0;
    v27 = [v4 objectForKeyedSubscript:@"enableRejectHandsNearBoundaries"];

    if (v27)
    {
      v28 = [v4 objectForKeyedSubscript:@"enableRejectHandsNearBoundaries"];
      v5->_enableRejectHandsNearBoundaries = [v28 BOOLValue];
    }

    v5->_maxNumOfPersons = 1;
    v29 = [v4 objectForKeyedSubscript:@"maxNumOfPersons"];

    if (v29)
    {
      v30 = [v4 objectForKeyedSubscript:@"maxNumOfPersons"];
      v5->_maxNumOfPersons = [v30 intValue];
    }

    v5->_maxNumOfPersonsForPose = 4;
    v31 = [v4 objectForKeyedSubscript:@"maxNumOfPersons"];

    if (v31)
    {
      v32 = [v4 objectForKeyedSubscript:@"maxNumOfPersons"];
      v5->_maxNumOfPersonsForPose = [v32 intValue];
    }

    v33 = [v4 objectForKeyedSubscript:@"optimizeForDistance"];

    if (v33)
    {
      v34 = [v4 objectForKeyedSubscript:@"optimizeForDistance"];
      v5->_optimizeForDistance = [v34 BOOLValue];
    }

    v5->_enableHandPoseLite = [objc_opt_class() useHandsLitePoseForVision];
    v35 = [v4 objectForKeyedSubscript:@"handPoseLite"];

    if (v35)
    {
      v36 = [v4 objectForKeyedSubscript:@"handPoseLite"];
      v5->_enableHandPoseLite = [v36 BOOLValue];
    }

    v5->_useAsync = 0;
    v37 = [v4 objectForKeyedSubscript:@"useAsync"];

    if (v37)
    {
      v38 = [v4 objectForKeyedSubscript:@"useAsync"];
      v5->_useAsync = [v38 BOOLValue];
    }

    v5->_minHandSize = 0.05;
    v39 = [v4 objectForKeyedSubscript:@"minHandSize"];

    if (v39)
    {
      v40 = [v4 objectForKeyedSubscript:@"minHandSize"];
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

- (BOOL)updateWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"frameWidth"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"frameWidth"];
    self->_width = [v7 intValue];
  }

  v8 = [v5 objectForKeyedSubscript:@"frameWidth"];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"frameHeight"];
    self->_height = [v9 intValue];
  }

  v10 = [v5 objectForKeyedSubscript:@"motionFlowComputationAccuracy"];

  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:@"motionFlowComputationAccuracy"];
    self->_motionFlowComputationAccuracy = [v11 unsignedIntValue];
  }

  return 1;
}

- (CGSize)preferredInputSizeWithOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (BOOL)cleanupWithOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:0];
  }

  return 0;
}

@end