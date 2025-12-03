@interface HPSSpatialProfileAnalytics
+ (BOOL)isRBSProcessHandleAvailable;
- (HPSSpatialProfileAnalytics)init;
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

@implementation HPSSpatialProfileAnalytics

- (HPSSpatialProfileAnalytics)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HPSSpatialProfileAnalytics;
  v2 = [(HPSSpatialProfileAnalytics *)&v16 init];
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

    if (+[HPSSpatialProfileAnalytics isRBSProcessHandleAvailable])
    {
      v5 = [MEMORY[0x277D46F58] identifierWithPid:getpid()];
      if (v5)
      {
        v15 = 0;
        v6 = [MEMORY[0x277D46F40] handleForIdentifier:v5 error:&v15];
        v7 = v15;
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
        v18 = v12;
        _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Initialized Analytics From Client %@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)updateFaceEnrollStart
{
  self->_faceEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Start Time", v3, 2u);
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
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Profile Creation Time", v5, 2u);
    }
  }
}

- (void)updateSoundProfileCreationDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_soundProfileCreationStartTime != 0.0)
  {
    self->_soundProfileCreationTime = CACurrentMediaTime() - self->_soundProfileCreationStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceEnrollmentTime = self->_faceEnrollmentTime;
    v6 = 134217984;
    v7 = faceEnrollmentTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateFaceEnrollDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_faceEnrollmentStartTime != 0.0)
  {
    self->_faceEnrollmentTime = CACurrentMediaTime() - self->_faceEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    faceEnrollmentTime = self->_faceEnrollmentTime;
    v6 = 134217984;
    v7 = faceEnrollmentTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Face Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRightEarEnrollStart
{
  self->_rightEarEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Enroll Time", v3, 2u);
  }
}

- (void)updateRightEarFrontAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarFrontAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarFrontAngleTime = self->_rightEarFrontAngleTime;
    v6 = 134217984;
    v7 = rightEarFrontAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Front Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRightEarMidAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarMidAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarMidAngleTime = self->_rightEarMidAngleTime;
    v6 = 134217984;
    v7 = rightEarMidAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Mid Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRightEarBackAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarBackAngleTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarBackAngleTime = self->_rightEarBackAngleTime;
    v6 = 134217984;
    v7 = rightEarBackAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Back Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLeftEarFrontAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarFrontAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarFrontAngleTime = self->_leftEarFrontAngleTime;
    v6 = 134217984;
    v7 = leftEarFrontAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Front Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLeftEarMidAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarMidAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarMidAngleTime = self->_leftEarMidAngleTime;
    v6 = 134217984;
    v7 = leftEarMidAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Mid Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLeftEarBackAnglelDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarBackAngleTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarBackAngleTime = self->_leftEarBackAngleTime;
    v6 = 134217984;
    v7 = leftEarBackAngleTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Back Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateRightEarEnrollDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_rightEarEnrollmentStartTime != 0.0)
  {
    self->_rightEarEnrollmentTime = CACurrentMediaTime() - self->_rightEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    rightEarEnrollmentTime = self->_rightEarEnrollmentTime;
    v6 = 134217984;
    v7 = rightEarEnrollmentTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Right Enroll Time: %f", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateLeftEarEnrollStart
{
  self->_leftEarEnrollmentStartTime = CACurrentMediaTime();
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Enroll Time", v3, 2u);
  }
}

- (void)updateLeftEarEnrollDuration
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_leftEarEnrollmentStartTime != 0.0)
  {
    self->_leftEarEnrollmentTime = CACurrentMediaTime() - self->_leftEarEnrollmentStartTime;
  }

  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    leftEarEnrollmentTime = self->_leftEarEnrollmentTime;
    v6 = 134217984;
    v7 = leftEarEnrollmentTime;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Left Enroll Time: %f ", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateStatus:(BOOL)status EnrollmentResult:(id)result
{
  v15 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  objc_storeStrong(&self->_result, result);
  self->_status = status;
  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    status = self->_status;
    result = self->_result;
    v12[0] = 67109378;
    v12[1] = status;
    v13 = 2112;
    resultCopy2 = result;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Update Status : %d Result %@", v12, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)incrementFrameCount
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_frameDetectionStartTime == 0.0)
  {
    v7 = *MEMORY[0x277D85DE8];

    [(HPSSpatialProfileAnalytics *)self initFrameRateDetection];
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
        v8 = 134218496;
        v9 = frameCount / v3;
        v10 = 2048;
        v11 = frameCount;
        v12 = 2048;
        v13 = v3;
        _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Frame Rate : Frame Per sec %f   [ Num : %llu Time :%f]", &v8, 0x20u);
      }

      [(HPSSpatialProfileAnalytics *)self initFrameRateDetection];
    }

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)submitHPSSpatialProfileEnrollAnalytics
{
  v30 = *MEMORY[0x277D85DE8];
  if (!self->_submitted)
  {
    if (self->_faceEnrollmentTime == 0.0)
    {
      [(HPSSpatialProfileAnalytics *)self updateFaceEnrollDuration];
    }

    if (self->_rightEarEnrollmentTime == 0.0)
    {
      [(HPSSpatialProfileAnalytics *)self updateRightEarEnrollDuration];
    }

    if (self->_leftEarEnrollmentTime == 0.0)
    {
      [(HPSSpatialProfileAnalytics *)self updateLeftEarEnrollDuration];
    }

    v3 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = @"EnrollmentStatus";
      v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_status];
      result = self->_result;
      v25 = v4;
      v27[0] = v4;
      v27[1] = result;
      v26[1] = @"EnrollmentResult";
      v26[2] = @"EnrollmentDuration";
      v6 = MEMORY[0x277CCABB0];
      faceEnrollmentStartTime = self->_faceEnrollmentStartTime;
      if (faceEnrollmentStartTime != 0.0)
      {
        faceEnrollmentStartTime = CACurrentMediaTime() - self->_faceEnrollmentStartTime;
      }

      v24 = [v6 numberWithDouble:faceEnrollmentStartTime];
      v27[2] = v24;
      v26[3] = @"EnrollmentScanDuration";
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_faceEnrollmentTime + self->_rightEarEnrollmentTime + self->_leftEarEnrollmentTime];
      v27[3] = v23;
      v26[4] = @"FaceEnrollmentDuration";
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_faceEnrollmentTime];
      v27[4] = v22;
      v26[5] = @"RightEarEnrollmentDuration";
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightEarEnrollmentTime];
      v27[5] = v21;
      v26[6] = @"LeftEarEnrollmentDuration";
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftEarEnrollmentTime];
      v27[6] = v20;
      v26[7] = @"LeftEarOcclusionCount";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_leftEarOcclusionDetectCount];
      v27[7] = v19;
      v26[8] = @"RightEarOcclusionCount";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_rightEarOcclusionDetectCount];
      v27[8] = v18;
      v26[9] = @"SoundProfileCreationDuration";
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_soundProfileCreationTime];
      v27[9] = v8;
      v26[10] = @"RightEarFrontAngleDuration";
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightEarFrontAngleTime];
      v27[10] = v9;
      v26[11] = @"RightEarMidAngleDuration";
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightEarMidAngleTime];
      v27[11] = v10;
      v26[12] = @"RightEarBackAngleDuration";
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightEarBackAngleTime];
      v27[12] = v11;
      v26[13] = @"LeftEarFrontAngleDuration";
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftEarFrontAngleTime];
      v27[13] = v12;
      v26[14] = @"LeftEarMidAngleDuration";
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftEarMidAngleTime];
      v27[14] = v13;
      v26[15] = @"LeftEarBackAngleDuration";
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftEarBackAngleTime];
      v27[15] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:16];
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Analytics Submit analysis : %@", buf, 0xCu);
    }

    AnalyticsSendEventLazy();
    if (!self->_status)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"SpatialProfileEnrollmentNotCompleted" object:0];
    }

    self->_submitted = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __68__HPSSpatialProfileAnalytics_submitHPSSpatialProfileEnrollAnalytics__block_invoke(uint64_t a1)
{
  v26[17] = *MEMORY[0x277D85DE8];
  v25[0] = @"EnrollmentStatus";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 160)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  v24 = v2;
  v26[0] = v2;
  v26[1] = v4;
  v25[1] = @"EnrollmentResult";
  v25[2] = @"EnrollmentEntry";
  v26[2] = *(v3 + 168);
  v25[3] = @"EnrollmentDuration";
  v5 = MEMORY[0x277CCABB0];
  v6 = *(v3 + 24);
  if (v6 != 0.0)
  {
    v6 = CACurrentMediaTime() - *(*(a1 + 32) + 24);
  }

  v23 = [v5 numberWithDouble:v6];
  v26[3] = v23;
  v25[4] = @"EnrollmentScanDuration";
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 16) + *(*(a1 + 32) + 40) + *(*(a1 + 32) + 80)];
  v26[4] = v22;
  v25[5] = @"FaceEnrollmentDuration";
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 16)];
  v26[5] = v21;
  v25[6] = @"RightEarEnrollmentDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 40)];
  v26[6] = v20;
  v25[7] = @"LeftEarEnrollmentDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 80)];
  v26[7] = v19;
  v25[8] = @"LeftEarOcclusionCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 32) + 128)];
  v26[8] = v7;
  v25[9] = @"RightEarOcclusionCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 32) + 129)];
  v26[9] = v8;
  v25[10] = @"SoundProfileCreationDuration";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 120)];
  v26[10] = v9;
  v25[11] = @"RightEarFrontAngleDuration";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 48)];
  v26[11] = v10;
  v25[12] = @"RightEarMidAngleDuration";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 56)];
  v26[12] = v11;
  v25[13] = @"RightEarBackAngleDuration";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 64)];
  v26[13] = v12;
  v25[14] = @"LeftEarFrontAngleDuration";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 88)];
  v26[14] = v13;
  v25[15] = @"LeftEarMidAngleDuration";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 96)];
  v26[15] = v14;
  v25[16] = @"LeftEarBackAngleDuration";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 104)];
  v26[16] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:17];

  v17 = *MEMORY[0x277D85DE8];

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
      _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Submit analysis", v4, 2u);
    }

    AnalyticsSendEventLazy();
    self->_submitted = 1;
  }
}

+ (BOOL)isRBSProcessHandleAvailable
{
  if (isRBSProcessHandleAvailable_onceToken != -1)
  {
    +[HPSSpatialProfileAnalytics isRBSProcessHandleAvailable];
  }

  return isRBSProcessHandleAvailable_available;
}

Class __57__HPSSpatialProfileAnalytics_isRBSProcessHandleAvailable__block_invoke()
{
  result = NSClassFromString(&cfstr_Rbsprocesshand.isa);
  isRBSProcessHandleAvailable_available = result != 0;
  return result;
}

@end