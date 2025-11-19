@interface BKFaceDetectStateInfo
- (BKFaceDetectStateInfo)initWithPresenceState:(BOOL)a3;
- (BKFaceDetectStateInfo)initWithPresenceState:(BOOL)a3 details:(id)a4;
- (id)dictionary;
- (id)initFromDictionary:(id)a3;
- (id)initFromFaceInfo:(id *)a3;
@end

@implementation BKFaceDetectStateInfo

- (BKFaceDetectStateInfo)initWithPresenceState:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKFaceDetectStateInfo;
  result = [(BKFaceDetectStateInfo *)&v5 init];
  if (result)
  {
    result->_faceDetected = a3;
  }

  return result;
}

- (BKFaceDetectStateInfo)initWithPresenceState:(BOOL)a3 details:(id)a4
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = BKFaceDetectStateInfo;
  v7 = [(BKFaceDetectStateInfo *)&v36 init];
  v8 = v7;
  if (v7)
  {
    v7->_faceDetected = a3;
    v9 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDetectPitch"];
    pitch = v8->_pitch;
    v8->_pitch = v9;

    v11 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDetectYaw"];
    yaw = v8->_yaw;
    v8->_yaw = v11;

    v13 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDetectRoll"];
    roll = v8->_roll;
    v8->_roll = v13;

    v15 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDistance"];
    distance = v8->_distance;
    v8->_distance = v15;

    v8->_orientation = 0;
    v17 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDetectOrientation"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 unsignedIntegerValue];
      if ((v19 - 1) >= 4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v8->_orientation = v20;
    }

    v8->_eyeReliefStatus = 0;
    v21 = [v6 objectForKeyedSubscript:@"BKStatusDetailEyeReliefStatus"];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 unsignedIntegerValue];
      if ((v23 - 1) >= 5)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      v8->_eyeReliefStatus = v24;
    }

    v25 = [v6 objectForKeyedSubscript:@"BKStatusDetailFrameNumber"];
    frameNumber = v8->_frameNumber;
    v8->_frameNumber = v25;

    v27 = [v6 objectForKeyedSubscript:@"BKStatusDetailAttentionScore"];
    attentionScore = v8->_attentionScore;
    v8->_attentionScore = v27;

    v29 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceDetectionScore"];
    faceDetectionScore = v8->_faceDetectionScore;
    v8->_faceDetectionScore = v29;

    v31 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceOcclusionState"];
    isCameraObstructed = v8->_isCameraObstructed;
    v8->_isCameraObstructed = v31;

    v33 = [v6 objectForKeyedSubscript:@"BKStatusDetailFaceOcclusionScore"];
    cameraObstructionScore = v8->_cameraObstructionScore;
    v8->_cameraObstructionScore = v33;
  }

  return v8;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKFaceDetectStateInfo;
  v5 = [(BKFaceDetectStateInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"faceDetected"];
    v5->_faceDetected = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"tooCloseToCamera"];
    v5->_tooCloseToCamera = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"tooFarFromCamera"];
    v5->_tooFarFromCamera = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"multipleFaces"];
    v5->_multipleFaces = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"flare"];
    v5->_flare = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"occlusion"];
    v5->_occlusion = [v11 BOOLValue];
  }

  return v5;
}

- (id)initFromFaceInfo:(id *)a3
{
  v34.receiver = self;
  v34.super_class = BKFaceDetectStateInfo;
  v4 = [(BKFaceDetectStateInfo *)&v34 init];
  v6 = v4;
  if (v4)
  {
    v7 = *(&a3->var0 + 1);
    v4->_faceDetected = (v7 & 4) == 0;
    v4->_tooCloseToCamera = (v7 & 0x20) != 0;
    v4->_tooFarFromCamera = (v7 & 0x40) != 0;
    v4->_multipleFaces = (v7 & 8) != 0;
    v4->_flare = 0;
    v4->_occlusion = (v7 & 0x200) != 0;
    v4->_unsupportedGlasses = (v7 & 0x1000) != 0;
    v4->_glassesMismatch = (v7 & 0x2000) != 0;
    LODWORD(v5) = *(&a3->var5 + 1);
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    pitch = v6->_pitch;
    v6->_pitch = v8;

    *&v10 = *(&a3->var6 + 1);
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    yaw = v6->_yaw;
    v6->_yaw = v11;

    *&v13 = *(&a3->var7 + 1);
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    roll = v6->_roll;
    v6->_roll = v14;

    LOWORD(v16) = *(&a3->var1 + 1);
    *&v17 = v16;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    distance = v6->_distance;
    v6->_distance = v18;

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(&a3->var8 + 1)];
    frameNumber = v6->_frameNumber;
    v6->_frameNumber = v20;

    LODWORD(v22) = *(&a3->var9 + 1);
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    attentionScore = v6->_attentionScore;
    v6->_attentionScore = v23;

    *&v25 = *(&a3->var10 + 1);
    v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    faceDetectionScore = v6->_faceDetectionScore;
    v6->_faceDetectionScore = v26;

    v28 = [MEMORY[0x1E696AD98] numberWithBool:BYTE1(a3->var11)];
    isCameraObstructed = v6->_isCameraObstructed;
    v6->_isCameraObstructed = v28;

    *&v30 = *(&a3->var11 + 2);
    v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    cameraObstructionScore = v6->_cameraObstructionScore;
    v6->_cameraObstructionScore = v31;
  }

  return v6;
}

- (id)dictionary
{
  v13[7] = *MEMORY[0x1E69E9840];
  v13[0] = @"BKFaceDetectStateInfo";
  v12[0] = @"class";
  v12[1] = @"faceDetected";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_faceDetected];
  v13[1] = v3;
  v12[2] = @"tooCloseToCamera";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_tooCloseToCamera];
  v13[2] = v4;
  v12[3] = @"tooFarFromCamera";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_tooFarFromCamera];
  v13[3] = v5;
  v12[4] = @"multipleFaces";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_multipleFaces];
  v13[4] = v6;
  v12[5] = @"flare";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_flare];
  v13[5] = v7;
  v12[6] = @"occlusion";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_occlusion];
  v13[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end