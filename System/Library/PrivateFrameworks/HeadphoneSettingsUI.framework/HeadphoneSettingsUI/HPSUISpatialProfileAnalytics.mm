@interface HPSUISpatialProfileAnalytics
+ (BOOL)isRBSProcessHandleAvailable;
- (HPSUISpatialProfileAnalytics)init;
- (void)incrementFrameCount;
- (void)submitHPSSpatialProfileEnrollAnalytics;
- (void)submitHPSSpatialProfileResetAnalytics;
- (void)updateFaceEnrollDuration;
- (void)updateFaceEnrollStart;
- (void)updateLeftEarBackAnglelDuration;
- (void)updateLeftEarEnrollDuration;
- (void)updateLeftEarEnrollStart;
- (void)updateLeftEarFrontAnglelDuration;
- (void)updateLeftEarMidAnglelDuration;
- (void)updateRightEarBackAnglelDuration;
- (void)updateRightEarEnrollDuration;
- (void)updateRightEarEnrollStart;
- (void)updateRightEarFrontAnglelDuration;
- (void)updateRightEarMidAnglelDuration;
- (void)updateSoundProfileCreationDuration;
- (void)updateSoundProfileCreationDurationStart;
- (void)updateStatus:(BOOL)status EnrollmentResult:(id)result;
@end

@implementation HPSUISpatialProfileAnalytics

- (HPSUISpatialProfileAnalytics)init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = HPSUISpatialProfileAnalytics;
  v2 = [(HPSUISpatialProfileAnalytics *)&v15 init];
  if (v2)
  {
    v2->_enrollmentStartTime = CACurrentMediaTime();
    v2->_status = 0;
    *&v2->_faceEnrollmentTime = 0u;
    *&v2->_rightEarEnrollmentStartTime = 0u;
    *&v2->_rightEarFrontAngleTime = 0u;
    *&v2->_rightEarBackAngleTime = 0u;
    *&v2->_leftEarEnrollmentTime = 0u;
    *&v2->_leftEarMidAngleTime = 0u;
    *&v2->_soundProfileCreationStartTime = 0u;
    *&v2->_leftEarOcclusionDetectCount = 0;
    v2->_frameDetectionStartTime = 0.0;
    v2->_frameCount = 0;
    parentBundleID = v2->_parentBundleID;
    v2->_parentBundleID = 0;

    v2->_submitted = 0;
    v4 = v2->_result;
    v2->_result = @"Cancel";

    if (+[HPSUISpatialProfileAnalytics isRBSProcessHandleAvailable])
    {
      v5 = [MEMORY[0x1E69C75E0] identifierWithPid:getpid()];
      if (v5)
      {
        v14 = 0;
        v6 = [MEMORY[0x1E69C75D0] handleForIdentifier:v5 error:&v14];
        v7 = v14;
        if (v6)
        {
          bundle = [v6 bundle];
          identifier = [bundle identifier];
          v10 = v2->_parentBundleID;
          v2->_parentBundleID = identifier;
        }
      }

      else
      {
        v7 = 0;
      }

      v11 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v2->_parentBundleID;
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&dword_1AC1C3000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initialized Analytics From Client %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

- (void)updateFaceEnrollStart
{
  self->_faceEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Start Time", v3, 2u);
  }
}

- (void)updateSoundProfileCreationDurationStart
{
  if (self->_soundProfileCreationStartTime == 0.0)
  {
    v6 = v2;
    v7 = v3;
    self->_soundProfileCreationStartTime = CACurrentMediaTime();
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Profile Creation Time", v5, 2u);
    }
  }
}

- (void)updateSoundProfileCreationDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_soundProfileCreationStartTime != 0.0)
  {
    self->_soundProfileCreationTime = CACurrentMediaTime() - self->_soundProfileCreationStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceEnrollmentTime = self->_faceEnrollmentTime;
    v5 = 134217984;
    v6 = faceEnrollmentTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateFaceEnrollDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_faceEnrollmentStartTime != 0.0)
  {
    self->_faceEnrollmentTime = CACurrentMediaTime() - self->_faceEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceEnrollmentTime = self->_faceEnrollmentTime;
    v5 = 134217984;
    v6 = faceEnrollmentTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateRightEarEnrollStart
{
  self->_rightEarEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Enroll Time", v3, 2u);
  }
}

- (void)updateRightEarFrontAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarFrontAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarFrontAngleTime = self->_rightEarFrontAngleTime;
    v5 = 134217984;
    v6 = rightEarFrontAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Front Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateRightEarMidAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarMidAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarMidAngleTime = self->_rightEarMidAngleTime;
    v5 = 134217984;
    v6 = rightEarMidAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Mid Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateRightEarBackAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarBackAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarBackAngleTime = self->_rightEarBackAngleTime;
    v5 = 134217984;
    v6 = rightEarBackAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Back Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateLeftEarFrontAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarFrontAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarFrontAngleTime = self->_leftEarFrontAngleTime;
    v5 = 134217984;
    v6 = leftEarFrontAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Front Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateLeftEarMidAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarMidAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarMidAngleTime = self->_leftEarMidAngleTime;
    v5 = 134217984;
    v6 = leftEarMidAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Mid Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateLeftEarBackAnglelDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarBackAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarBackAngleTime = self->_leftEarBackAngleTime;
    v5 = 134217984;
    v6 = leftEarBackAngleTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Back Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateRightEarEnrollDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarEnrollmentTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarEnrollmentTime = self->_rightEarEnrollmentTime;
    v5 = 134217984;
    v6 = rightEarEnrollmentTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Enroll Time: %f", &v5, 0xCu);
  }
}

- (void)updateLeftEarEnrollStart
{
  self->_leftEarEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Enroll Time", v3, 2u);
  }
}

- (void)updateLeftEarEnrollDuration
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarEnrollmentTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarEnrollmentTime = self->_leftEarEnrollmentTime;
    v5 = 134217984;
    v6 = leftEarEnrollmentTime;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Enroll Time: %f ", &v5, 0xCu);
  }
}

- (void)updateStatus:(BOOL)status EnrollmentResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_storeStrong(&self->_result, result);
  self->_status = status;
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    status = self->_status;
    result = self->_result;
    v11[0] = 67109378;
    v11[1] = status;
    v12 = 2112;
    resultCopy2 = result;
    _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Status : %d Result %@", v11, 0x12u);
  }
}

- (void)incrementFrameCount
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_frameDetectionStartTime == 0.0)
  {

    [(HPSUISpatialProfileAnalytics *)self initFrameRateDetection];
  }

  else
  {
    ++self->_frameCount;
    v3 = CACurrentMediaTime() - self->_frameDetectionStartTime;
    if (v3 > 2.0)
    {
      v4 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        frameCount = self->_frameCount;
        v6 = 134218496;
        v7 = frameCount / v3;
        v8 = 2048;
        v9 = frameCount;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Frame Per sec %f   [ Num : %llu Time :%f]", &v6, 0x20u);
      }

      [(HPSUISpatialProfileAnalytics *)self initFrameRateDetection];
    }
  }
}

- (void)submitHPSSpatialProfileEnrollAnalytics
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_submitted)
  {
    if (self->_faceEnrollmentTime == 0.0)
    {
      [(HPSUISpatialProfileAnalytics *)self updateFaceEnrollDuration];
    }

    if (self->_rightEarEnrollmentTime == 0.0)
    {
      [(HPSUISpatialProfileAnalytics *)self updateRightEarEnrollDuration];
    }

    if (self->_leftEarEnrollmentTime == 0.0)
    {
      [(HPSUISpatialProfileAnalytics *)self updateLeftEarEnrollDuration];
    }

    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v25[0] = @"EnrollmentStatus";
      v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_status];
      result = self->_result;
      v24 = v4;
      v26[0] = v4;
      v26[1] = result;
      v25[1] = @"EnrollmentResult";
      v25[2] = @"EnrollmentDuration";
      v6 = MEMORY[0x1E696AD98];
      faceEnrollmentStartTime = self->_faceEnrollmentStartTime;
      if (faceEnrollmentStartTime != 0.0)
      {
        faceEnrollmentStartTime = CACurrentMediaTime() - self->_faceEnrollmentStartTime;
      }

      v23 = [v6 numberWithDouble:faceEnrollmentStartTime];
      v26[2] = v23;
      v25[3] = @"EnrollmentScanDuration";
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_faceEnrollmentTime + self->_rightEarEnrollmentTime + self->_leftEarEnrollmentTime];
      v26[3] = v22;
      v25[4] = @"FaceEnrollmentDuration";
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_faceEnrollmentTime];
      v26[4] = v21;
      v25[5] = @"RightEarEnrollmentDuration";
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightEarEnrollmentTime];
      v26[5] = v20;
      v25[6] = @"LeftEarEnrollmentDuration";
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftEarEnrollmentTime];
      v26[6] = v19;
      v25[7] = @"LeftEarOcclusionCount";
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_leftEarOcclusionDetectCount];
      v26[7] = v18;
      v25[8] = @"RightEarOcclusionCount";
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_rightEarOcclusionDetectCount];
      v26[8] = v17;
      v25[9] = @"SoundProfileCreationDuration";
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_soundProfileCreationTime];
      v26[9] = v8;
      v25[10] = @"RightEarFrontAngleDuration";
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightEarFrontAngleTime];
      v26[10] = v9;
      v25[11] = @"RightEarMidAngleDuration";
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightEarMidAngleTime];
      v26[11] = v10;
      v25[12] = @"RightEarBackAngleDuration";
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightEarBackAngleTime];
      v26[12] = v11;
      v25[13] = @"LeftEarFrontAngleDuration";
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftEarFrontAngleTime];
      v26[13] = v12;
      v25[14] = @"LeftEarMidAngleDuration";
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftEarMidAngleTime];
      v26[14] = v13;
      v25[15] = @"LeftEarBackAngleDuration";
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftEarBackAngleTime];
      v26[15] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:16];
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Submit analysis : %@", buf, 0xCu);
    }

    AnalyticsSendEventLazy();
    if (!self->_status)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SpatialProfileEnrollmentNotCompleted" object:0];
    }

    self->_submitted = 1;
  }
}

id __70__HPSUISpatialProfileAnalytics_submitHPSSpatialProfileEnrollAnalytics__block_invoke(uint64_t a1)
{
  v25[17] = *MEMORY[0x1E69E9840];
  v24[0] = @"EnrollmentStatus";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 160)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  v23 = v2;
  v25[0] = v2;
  v25[1] = v4;
  v24[1] = @"EnrollmentResult";
  v24[2] = @"EnrollmentEntry";
  v25[2] = *(v3 + 168);
  v24[3] = @"EnrollmentDuration";
  v5 = MEMORY[0x1E696AD98];
  v6 = *(v3 + 24);
  if (v6 != 0.0)
  {
    v6 = CACurrentMediaTime() - *(*(a1 + 32) + 24);
  }

  v22 = [v5 numberWithDouble:v6];
  v25[3] = v22;
  v24[4] = @"EnrollmentScanDuration";
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 16) + *(*(a1 + 32) + 40) + *(*(a1 + 32) + 80)];
  v25[4] = v21;
  v24[5] = @"FaceEnrollmentDuration";
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 16)];
  v25[5] = v20;
  v24[6] = @"RightEarEnrollmentDuration";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 40)];
  v25[6] = v19;
  v24[7] = @"LeftEarEnrollmentDuration";
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 80)];
  v25[7] = v18;
  v24[8] = @"LeftEarOcclusionCount";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(*(a1 + 32) + 128)];
  v25[8] = v7;
  v24[9] = @"RightEarOcclusionCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(*(a1 + 32) + 129)];
  v25[9] = v8;
  v24[10] = @"SoundProfileCreationDuration";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 120)];
  v25[10] = v9;
  v24[11] = @"RightEarFrontAngleDuration";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 48)];
  v25[11] = v10;
  v24[12] = @"RightEarMidAngleDuration";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 56)];
  v25[12] = v11;
  v24[13] = @"RightEarBackAngleDuration";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 64)];
  v25[13] = v12;
  v24[14] = @"LeftEarFrontAngleDuration";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 88)];
  v25[14] = v13;
  v24[15] = @"LeftEarMidAngleDuration";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 96)];
  v25[15] = v14;
  v24[16] = @"LeftEarBackAngleDuration";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(a1 + 32) + 104)];
  v25[16] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:17];

  return v16;
}

- (void)submitHPSSpatialProfileResetAnalytics
{
  if (!self->_submitted)
  {
    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Submit analysis", v4, 2u);
    }

    AnalyticsSendEventLazy();
    self->_submitted = 1;
  }
}

+ (BOOL)isRBSProcessHandleAvailable
{
  if (isRBSProcessHandleAvailable_onceToken != -1)
  {
    +[HPSUISpatialProfileAnalytics isRBSProcessHandleAvailable];
  }

  return isRBSProcessHandleAvailable_available;
}

Class __59__HPSUISpatialProfileAnalytics_isRBSProcessHandleAvailable__block_invoke()
{
  result = NSClassFromString(&cfstr_Rbsprocesshand.isa);
  isRBSProcessHandleAvailable_available = result != 0;
  return result;
}

@end