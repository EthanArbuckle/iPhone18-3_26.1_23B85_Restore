@interface BWAggdDataReporter
+ (id)sharedInstance;
- (BWAggdDataReporter)init;
- (__CFString)_captureTypeStringWithPrimaryCaptureType:(unsigned int)a3 secondaryCaptureType:(int)a4 captureFlags:(char)a5 sceneFlags:;
- (id)_aggdCameraStreamingTimeStringFromDeviceType:(int)a3 devicePosition:(int)a4;
- (id)_aggdGNRProcessingStatusStringFromProcessingStatus:(int)a3;
- (id)_aggdPearlInfraredProjectorUptimeStringFromCurrent:(int)a3 pattern:(int)a4 applicationID:(id)a5;
- (id)_aggdSDOFProcessingStatusStringFromProcessingStatus:(int)a3;
- (id)_aggdStereoFusionProcessingStatusStringFromProcessingStatus:(int)a3;
- (id)_aggdStereoFusionProcessingTypeStringForCaptureType:(int)a3 isStereoFusionCapture:(BOOL)a4 wideSubCaptureType:(int)a5 teleSubCaptureType:(int)a6 isOriginalImage:(BOOL)a7;
- (id)_aggdStringForPrefix:(id)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9;
- (void)dealloc;
- (void)reportAPSOffsetEstimatorForPortType:(id)a3 accelMotion:(float)a4 gyroMotion:(float)a5 inSessionOffset:(float)a6 deltaOffsetFC:(float)a7 deltaOffsetMI:(float)a8 deltaOffsetFATP:(float)a9 deltaOffsetLastSession:(float)a10 errorHeadroomViolated:(BOOL)a11 errorConvergenceFailed:(BOOL)a12 errorMotionTooLarge:(BOOL)a13 errorConfidenceTooLow:(BOOL)a14 errorOffsetTooLarge:(BOOL)a15 errorDeltaTooLarge:(BOOL)a16 errorSaturated:(BOOL)a17 errorCouldNotRun:(BOOL)a18 successRun:(BOOL)a19 startAPSVoltage:(int)a20 modeGCOL:(BOOL)a21 modeOL:(BOOL)a22;
- (void)reportAPSSphereInteractionCalibrationForPosition:(int)a3 residualErrorNeutral:(float)a4 calibrationZHeightNeutral:(float)a5 residualErrorMacro:(float)a6 calibrationZHeightMacro:(float)a7 calibrationStatus:(unsigned int)a8 isValid:(BOOL)a9;
- (void)reportAutoFocusCalibrationForPosition:(int)a3 freqZ:(int)a4 deltaFreqZ:(int)a5 qZ:(int)a6 deltaQZ:(int)a7 gainZ:(int)a8 calibrationStatus:(unsigned int)a9 gelModelCoefficientD1:(int *)a10 gelModelCoefficientD2:(int *)a11 gelModelCoefficientP1:(int *)a12 gelModelCoefficientP2:(int *)a13 isValid:(BOOL)a14;
- (void)reportAutoFocusPositionSensorCalibrationForPosition:(int)a3 iStopZEstimate:(int)a4 eSensorOutput:(signed __int16)a5 wSensorOutput:(signed __int16)a6 gravityZ:(int)a7 calibrationStatus:(unsigned int)a8 sensorTemp:(signed __int16)a9 successfulInfinityEndStopDelta:(int)a10 currentInfinityEndStopDelta:(int)a11 previousInfinityEndStopDelta:(int)a12 currentAngleDelta:(int)a13 previousAngleDelta:(int)a14 factoryCalibrationOffset:(int *)a15 estimatedNeutralZ:(int *)a16 deltaNeutralZFromNVM:(int *)a17 estimatedSagZ:(int *)a18 combinedSensorOutput:(int *)a19 deltaSagFromNVM:(int *)a20 isValid:(BOOL)a21 dataWasRejectedByHistory:(BOOL)a22;
- (void)reportAutoFocusPositionSensorMode:(int)a3 portType:(id)a4;
- (void)reportCalibrationStatisticsWithTime:(id)a3 timeValue:(double)a4 attemptsField:(id)a5 attemptsValue:(int64_t)a6 successField:(id)a7 successValue:(int64_t)a8 magneticFieldMagnitudeField:(id)a9 magneticFieldMagnitudeValue:(double)a10;
- (void)reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera:(BOOL)a3;
- (void)reportCameraLaunchWithPrewarm:(int)a3 reason:(id)a4;
- (void)reportCameraLaunchWithoutPrewarm:(int)a3;
- (void)reportCameraStreamingTimeInMilliseconds:(unint64_t)a3 deviceType:(int)a4 devicePosition:(int)a5;
- (void)reportCriticalFocusErrorOccurredForPortType:(id)a3;
- (void)reportFaceCount:(unsigned int)a3 frontCamera:(BOOL)a4;
- (void)reportGNRSampleBufferProcessorProcessingStatus:(int)a3;
- (void)reportISPCreateDuration:(int)a3;
- (void)reportLockScreenCameraLaunchCancelledWithPrewarming:(BOOL)a3 ispStreamingStarted:(BOOL)a4;
- (void)reportLockScreenCameraLaunchCompletedWithPrewarming:(BOOL)a3 restartedSessionDueToError:(int)a4;
- (void)reportLuxLevel:(unsigned int)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9;
- (void)reportNonCameraAppCaptureWithPrimaryCaptureType:(int)a3 secondaryCaptureType:(int)a4 captureFlags:(unint64_t)a5 sceneFlags:(unint64_t)a6 stillDuringVideo:(BOOL)a7 frontCamera:(BOOL)a8;
- (void)reportPearlInfraredProjectorUptime:(unint64_t)a3 current:(int)a4 pattern:(int)a5 applicationID:(id)a6;
- (void)reportSDOFSampleBufferProcessorProcessingStatus:(int)a3;
- (void)reportSensorTemperature:(unsigned int)a3 frontCamera:(BOOL)a4;
- (void)reportShutterLag:(id *)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9;
- (void)reportSphereCalibrationForPosition:(int)a3 freqX:(float)a4 deltaFreqX:(float)a5 qX:(float)a6 deltaQX:(float)a7 gainX:(float)a8 freqY:(float)a9 deltaFreqY:(float)a10 qY:(float)a11 deltaQY:(float)a12 gainY:(float)a13 calibrationStatus:(unsigned int)a14 isValid:(BOOL)a15;
- (void)reportSphereEndStopCalibrationForPosition:(int)a3 oisPositiveX:(int)a4 oisNegativeX:(int)a5 oisPositiveY:(int)a6 oisNegativeY:(int)a7 maxPositiveXDriftFromNVM:(int)a8 maxNegativeXDriftFromNVM:(int)a9 maxPositiveYDriftFromNVM:(int)a10 maxNegativeYDriftFromNVM:(int)a11 sphereStrokeX:(int)a12 sphereStrokeY:(int)a13 calibrationStatus:(unsigned int)a14 isValid:(BOOL)a15;
- (void)reportSphereJitterDetectionsForPortType:(id)a3 detectionAttemps:(int)a4 successfulDetections:(int)a5;
- (void)reportStereoFusionProcessingTypeForCaptureType:(int)a3 isStereoFusionCapture:(BOOL)a4 wideSubCaptureType:(int)a5 teleSubCaptureType:(int)a6 isOriginalImage:(BOOL)a7;
- (void)reportStereoFusionSampleBufferProcessorProcessingStatus:(int)a3;
- (void)reportStillImageAPSStatisticsForPortType:(id)a3 logicalFocusPosition:(int)a4 apsMotion:(float)a5 sphereMotion:(float)a6 accelMotion:(float)a7 gyroMotion:(float)a8 subjectDistance:(float)a9 luxLevel:(int)a10;
- (void)reportVideoRecordingAPSStatistics:(float)a3 stdDataFromAPSForTele:(float)a4 stdDataFromSphereForWide:(float)a5 stdDataFromSphereForTele:(float)a6 stdDataFromAccel:(float)a7 stdDataFromGyro:(float)a8 maxDataFromAPSForWide:(float)a9 maxDataFromAPSForTele:(float)a10 minDataFromAPSForWide:(float)a11 minDataFromAPSForTele:(float)a12 maxDataFromSphereForWide:(float)a13 maxDataFromSphereForTele:(float)a14 minDataFromSphereForWide:(float)a15 minDataFromSphereForTele:(float)a16 maxDataFromAccel:(float)a17 minDataFromAccel:(float)a18 maxDataFromGyro:(float)a19 minDataFromGyro:(float)a20;
- (void)reportZeroShutterLagFirmwareTimeMachineInitFailure;
- (void)reportZeroShutterLagInitSuccess;
- (void)reportZeroShutterLagMetadataInitFailureWithReasons:(unsigned int)a3;
- (void)reportZeroShutterLagPreviewTimeMachineInitFailure;
- (void)reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType:(int)a3;
- (void)reportZeroShutterLagSphereInitFailure;
- (void)reportZeroShutterLagSuccess;
- (void)reportZoomFactor:(float)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9;
@end

@implementation BWAggdDataReporter

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken_0 != -1)
  {
    +[BWAggdDataReporter sharedInstance];
  }

  return sharedInstance_sSharedAggdDataCollector;
}

BWAggdDataReporter *__36__BWAggdDataReporter_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWAggdDataReporter);
  sharedInstance_sSharedAggdDataCollector = result;
  return result;
}

- (BWAggdDataReporter)init
{
  v4.receiver = self;
  v4.super_class = BWAggdDataReporter;
  v2 = [(BWAggdDataReporter *)&v4 init];
  if (v2)
  {
    v2->_aggdDispatchQueue = FigDispatchQueueCreateWithPriority();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAggdDataReporter;
  [(BWAggdDataReporter *)&v3 dealloc];
}

- (void)reportCameraStreamingTimeInMilliseconds:(unint64_t)a3 deviceType:(int)a4 devicePosition:(int)a5
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__BWAggdDataReporter_reportCameraStreamingTimeInMilliseconds_deviceType_devicePosition___block_invoke;
  block[3] = &unk_1E7991EF8;
  v7 = a4;
  v8 = a5;
  block[4] = self;
  block[5] = a3;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __88__BWAggdDataReporter_reportCameraStreamingTimeInMilliseconds_deviceType_devicePosition___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdCameraStreamingTimeStringFromDeviceType:*(a1 + 48) devicePosition:*(a1 + 52)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && *(a1 + 40) != *(a1 + 40) % 0x64uLL)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportPearlInfraredProjectorUptime:(unint64_t)a3 current:(int)a4 pattern:(int)a5 applicationID:(id)a6
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__BWAggdDataReporter_reportPearlInfraredProjectorUptime_current_pattern_applicationID___block_invoke;
  v7[3] = &unk_1E7998380;
  v8 = a4;
  v9 = a5;
  v7[4] = self;
  v7[5] = a6;
  v7[6] = a3;
  dispatch_async(aggdDispatchQueue, v7);
}

uint64_t __87__BWAggdDataReporter_reportPearlInfraredProjectorUptime_current_pattern_applicationID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdPearlInfraredProjectorUptimeStringFromCurrent:*(a1 + 56) pattern:*(a1 + 60) applicationID:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && *(a1 + 48) != 0)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportISPCreateDuration:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__BWAggdDataReporter_reportISPCreateDuration___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __46__BWAggdDataReporter_reportISPCreateDuration___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return ADClientPushValueForDistributionKey();
  }

  return result;
}

- (void)reportGNRSampleBufferProcessorProcessingStatus:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__BWAggdDataReporter_reportGNRSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __69__BWAggdDataReporter_reportGNRSampleBufferProcessorProcessingStatus___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdGNRProcessingStatusStringFromProcessingStatus:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportStereoFusionProcessingTypeForCaptureType:(int)a3 isStereoFusionCapture:(BOOL)a4 wideSubCaptureType:(int)a5 teleSubCaptureType:(int)a6 isOriginalImage:(BOOL)a7
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __145__BWAggdDataReporter_reportStereoFusionProcessingTypeForCaptureType_isStereoFusionCapture_wideSubCaptureType_teleSubCaptureType_isOriginalImage___block_invoke;
  block[3] = &unk_1E79983A8;
  block[4] = self;
  v12 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v13 = a7;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __145__BWAggdDataReporter_reportStereoFusionProcessingTypeForCaptureType_isStereoFusionCapture_wideSubCaptureType_teleSubCaptureType_isOriginalImage___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdStereoFusionProcessingTypeStringForCaptureType:*(a1 + 40) isStereoFusionCapture:*(a1 + 52) wideSubCaptureType:*(a1 + 44) teleSubCaptureType:*(a1 + 48) isOriginalImage:*(a1 + 53)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportStereoFusionSampleBufferProcessorProcessingStatus:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__BWAggdDataReporter_reportStereoFusionSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __78__BWAggdDataReporter_reportStereoFusionSampleBufferProcessorProcessingStatus___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdStereoFusionProcessingStatusStringFromProcessingStatus:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportSDOFSampleBufferProcessorProcessingStatus:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__BWAggdDataReporter_reportSDOFSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __70__BWAggdDataReporter_reportSDOFSampleBufferProcessorProcessingStatus___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _aggdSDOFProcessingStatusStringFromProcessingStatus:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportLuxLevel:(unsigned int)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__BWAggdDataReporter_reportLuxLevel_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983D0;
  v11 = a4;
  v12 = a5;
  block[4] = self;
  block[5] = a6;
  block[6] = a7;
  v14 = a8;
  v15 = a9;
  v13 = a3;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __130__BWAggdDataReporter_reportLuxLevel_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke(uint64_t a1)
{
  LOBYTE(v4) = *(a1 + 69);
  result = [*(a1 + 32) _aggdStringForPrefix:@"lux" primaryCaptureType:*(a1 + 56) secondaryCaptureType:*(a1 + 60) captureFlags:*(a1 + 40) sceneFlags:*(a1 + 48) stillDuringVideo:*(a1 + 68) frontCamera:v4];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientPushValueForDistributionKey();
  }

  return result;
}

- (void)reportZoomFactor:(float)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__BWAggdDataReporter_reportZoomFactor_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983D0;
  v11 = a4;
  v12 = a5;
  block[4] = self;
  block[5] = a6;
  block[6] = a7;
  v14 = a8;
  v15 = a9;
  v13 = a3;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __132__BWAggdDataReporter_reportZoomFactor_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke(uint64_t a1)
{
  LOBYTE(v4) = *(a1 + 69);
  result = [*(a1 + 32) _aggdStringForPrefix:@"zoom" primaryCaptureType:*(a1 + 56) secondaryCaptureType:*(a1 + 60) captureFlags:*(a1 + 40) sceneFlags:*(a1 + 48) stillDuringVideo:*(a1 + 68) frontCamera:v4];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientPushValueForDistributionKey();
  }

  return result;
}

- (void)reportNonCameraAppCaptureWithPrimaryCaptureType:(int)a3 secondaryCaptureType:(int)a4 captureFlags:(unint64_t)a5 sceneFlags:(unint64_t)a6 stillDuringVideo:(BOOL)a7 frontCamera:(BOOL)a8
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__BWAggdDataReporter_reportNonCameraAppCaptureWithPrimaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983F8;
  v10 = a3;
  v11 = a4;
  block[4] = self;
  block[5] = a5;
  block[6] = a6;
  v12 = a7;
  v13 = a8;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __144__BWAggdDataReporter_reportNonCameraAppCaptureWithPrimaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke(uint64_t a1)
{
  LOBYTE(v4) = *(a1 + 65);
  result = [*(a1 + 32) _aggdStringForPrefix:@"nca" primaryCaptureType:*(a1 + 56) secondaryCaptureType:*(a1 + 60) captureFlags:*(a1 + 40) sceneFlags:*(a1 + 48) stillDuringVideo:*(a1 + 64) frontCamera:v4];
  if (result)
  {
    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera:(BOOL)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__BWAggdDataReporter_reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera___block_invoke;
  v4[3] = &unk_1E7990078;
  v5 = a3;
  v4[4] = self;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __82__BWAggdDataReporter_reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportFaceCount:(unsigned int)a3 frontCamera:(BOOL)a4
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__BWAggdDataReporter_reportFaceCount_frontCamera___block_invoke;
  v5[3] = &unk_1E7998420;
  v7 = a4;
  v5[4] = self;
  v6 = a3;
  dispatch_async(aggdDispatchQueue, v5);
}

uint64_t __50__BWAggdDataReporter_reportFaceCount_frontCamera___block_invoke(uint64_t result)
{
  if (*(result + 44) == 1)
  {
    if (*(result + 32))
    {
      return ADClientPushValueForDistributionKey();
    }
  }

  return result;
}

- (void)reportSensorTemperature:(unsigned int)a3 frontCamera:(BOOL)a4
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__BWAggdDataReporter_reportSensorTemperature_frontCamera___block_invoke;
  v5[3] = &unk_1E7998420;
  v7 = a4;
  v5[4] = self;
  v6 = a3;
  dispatch_async(aggdDispatchQueue, v5);
}

uint64_t __58__BWAggdDataReporter_reportSensorTemperature_frontCamera___block_invoke(uint64_t result)
{
  if (*(result + 44) == 1)
  {
    if (*(result + 32))
    {
      return ADClientPushValueForDistributionKey();
    }
  }

  return result;
}

- (void)reportShutterLag:(id *)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __132__BWAggdDataReporter_reportShutterLag_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  v10[3] = &unk_1E7998448;
  v11 = a4;
  v12 = a5;
  v10[4] = self;
  v10[5] = a6;
  v10[6] = a7;
  v14 = a8;
  v15 = a9;
  v13 = *a3;
  dispatch_async(aggdDispatchQueue, v10);
}

void __132__BWAggdDataReporter_reportShutterLag_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke(uint64_t a1)
{
  LOBYTE(v6) = *(a1 + 89);
  v2 = [*(a1 + 32) _aggdStringForPrefix:@"shutterlag" primaryCaptureType:*(a1 + 56) secondaryCaptureType:*(a1 + 60) captureFlags:*(a1 + 40) sceneFlags:*(a1 + 48) stillDuringVideo:*(a1 + 88) frontCamera:v6];
  time = *(a1 + 64);
  Seconds = CMTimeGetSeconds(&time);
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  atomic_compare_exchange_strong_explicit((v4 + 16), &v5, (Seconds * 1000.0), memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    if (*(a1 + 32))
    {
      ADClientPushValueForDistributionKey();
    }
  }
}

- (void)reportZeroShutterLagFirmwareTimeMachineInitFailure
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__BWAggdDataReporter_reportZeroShutterLagFirmwareTimeMachineInitFailure__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportZeroShutterLagPreviewTimeMachineInitFailure
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__BWAggdDataReporter_reportZeroShutterLagPreviewTimeMachineInitFailure__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportZeroShutterLagSphereInitFailure
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BWAggdDataReporter_reportZeroShutterLagSphereInitFailure__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportZeroShutterLagMetadataInitFailureWithReasons:(unsigned int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__BWAggdDataReporter_reportZeroShutterLagMetadataInitFailureWithReasons___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

- (void)reportZeroShutterLagInitSuccess
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__BWAggdDataReporter_reportZeroShutterLagInitSuccess__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __53__BWAggdDataReporter_reportZeroShutterLagInitSuccess__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__BWAggdDataReporter_reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(aggdDispatchQueue, v4);
}

void __87__BWAggdDataReporter_reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 5:
      if (!*(a1 + 32))
      {
        return;
      }

      break;
    case 4:
      if (!*(a1 + 32))
      {
        return;
      }

      break;
    case 1:
      if (!*(a1 + 32))
      {
        return;
      }

      break;
    default:
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      BWPhotoEncoderStringFromEncodingScheme(*(a1 + 40));
      v5 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWAggdDataReporter.m", 416, @"LastShownDate:BWAggdDataReporter.m:416", @"LastShownBuild:BWAggdDataReporter.m:416", 0);
      free(v5);
      return;
  }

  ADClientAddValueForScalarKey();
}

- (void)reportZeroShutterLagSuccess
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BWAggdDataReporter_reportZeroShutterLagSuccess__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __49__BWAggdDataReporter_reportZeroShutterLagSuccess__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportCameraLaunchWithoutPrewarm:(int)a3
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__BWAggdDataReporter_reportCameraLaunchWithoutPrewarm___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(aggdDispatchQueue, v4);
}

uint64_t __55__BWAggdDataReporter_reportCameraLaunchWithoutPrewarm___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return ADClientPushValueForDistributionKey();
  }

  return result;
}

- (void)reportCameraLaunchWithPrewarm:(int)a3 reason:(id)a4
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BWAggdDataReporter_reportCameraLaunchWithPrewarm_reason___block_invoke;
  block[3] = &unk_1E7997358;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __59__BWAggdDataReporter_reportCameraLaunchWithPrewarm_reason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = @"Unspecified";
  }

  result = [@"com.apple.coremedia.camera.lt." stringByAppendingString:v2];
  if (v1)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {

    return ADClientPushValueForDistributionKey();
  }

  return result;
}

- (void)reportLockScreenCameraLaunchCompletedWithPrewarming:(BOOL)a3 restartedSessionDueToError:(int)a4
{
  v5 = @"unknown";
  if (a4 == 1)
  {
    v5 = @"cameraInUseByOtherClient";
  }

  if (!a4)
  {
    v5 = @"none";
  }

  v6 = @"nonPrewarmed";
  if (a3)
  {
    v6 = @"prewarmed";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.lockscreen.camera.launch.completed.%@.restartError.%@", v6, v5];
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__BWAggdDataReporter_reportLockScreenCameraLaunchCompletedWithPrewarming_restartedSessionDueToError___block_invoke;
  block[3] = &unk_1E798F898;
  block[4] = self;
  block[5] = v7;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __101__BWAggdDataReporter_reportLockScreenCameraLaunchCompletedWithPrewarming_restartedSessionDueToError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportLockScreenCameraLaunchCancelledWithPrewarming:(BOOL)a3 ispStreamingStarted:(BOOL)a4
{
  v5 = @"nonPrewarmed";
  if (a3)
  {
    v5 = @"prewarmed";
  }

  v6 = @"ispStreamingNotStarted";
  if (a4)
  {
    v6 = @"ispStreamingStarted";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.lockscreen.camera.launch.cancelled.%@.%@", v5, v6];
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__BWAggdDataReporter_reportLockScreenCameraLaunchCancelledWithPrewarming_ispStreamingStarted___block_invoke;
  block[3] = &unk_1E798F898;
  block[4] = self;
  block[5] = v7;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __94__BWAggdDataReporter_reportLockScreenCameraLaunchCancelledWithPrewarming_ispStreamingStarted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportCalibrationStatisticsWithTime:(id)a3 timeValue:(double)a4 attemptsField:(id)a5 attemptsValue:(int64_t)a6 successField:(id)a7 successValue:(int64_t)a8 magneticFieldMagnitudeField:(id)a9 magneticFieldMagnitudeValue:(double)a10
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __178__BWAggdDataReporter_reportCalibrationStatisticsWithTime_timeValue_attemptsField_attemptsValue_successField_successValue_magneticFieldMagnitudeField_magneticFieldMagnitudeValue___block_invoke;
  block[3] = &unk_1E7998470;
  block[4] = self;
  block[5] = a3;
  *&block[9] = a4;
  block[6] = a5;
  block[7] = a7;
  block[10] = a6;
  block[11] = a8;
  block[8] = a9;
  *&block[12] = a10;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __178__BWAggdDataReporter_reportCalibrationStatisticsWithTime_timeValue_attemptsField_attemptsValue_successField_successValue_magneticFieldMagnitudeField_magneticFieldMagnitudeValue___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ADClientSetValueForScalarKey();
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    v5 = *(a1 + 48) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && *(a1 + 80) != 0)
  {
    ADClientAddValueForScalarKey();
    v3 = *(a1 + 32);
  }

  if (v3)
  {
    v7 = *(a1 + 56) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && *(a1 + 88) != 0)
  {
    ADClientAddValueForScalarKey();
  }

  result = *(a1 + 64);
  if (result && *(a1 + 96) > 0.0 && *(a1 + 32))
  {

    return ADClientSetValueForScalarKey();
  }

  return result;
}

- (void)reportAutoFocusPositionSensorCalibrationForPosition:(int)a3 iStopZEstimate:(int)a4 eSensorOutput:(signed __int16)a5 wSensorOutput:(signed __int16)a6 gravityZ:(int)a7 calibrationStatus:(unsigned int)a8 sensorTemp:(signed __int16)a9 successfulInfinityEndStopDelta:(int)a10 currentInfinityEndStopDelta:(int)a11 previousInfinityEndStopDelta:(int)a12 currentAngleDelta:(int)a13 previousAngleDelta:(int)a14 factoryCalibrationOffset:(int *)a15 estimatedNeutralZ:(int *)a16 deltaNeutralZFromNVM:(int *)a17 estimatedSagZ:(int *)a18 combinedSensorOutput:(int *)a19 deltaSagFromNVM:(int *)a20 isValid:(BOOL)a21 dataWasRejectedByHistory:(BOOL)a22
{
  if (a15)
  {
    v22 = *a15;
  }

  else
  {
    v22 = 0;
  }

  if (a16)
  {
    v23 = *a16;
  }

  else
  {
    v23 = 0;
  }

  if (a17)
  {
    v24 = *a17;
  }

  else
  {
    v24 = 0;
  }

  if (a18)
  {
    v25 = *a18;
    if (a19)
    {
LABEL_12:
      v26 = *a19;
      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0;
    if (a19)
    {
      goto LABEL_12;
    }
  }

  v26 = 0;
LABEL_15:
  if (a20)
  {
    v27 = *a20;
  }

  else
  {
    v27 = 0;
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __428__BWAggdDataReporter_reportAutoFocusPositionSensorCalibrationForPosition_iStopZEstimate_eSensorOutput_wSensorOutput_gravityZ_calibrationStatus_sensorTemp_successfulInfinityEndStopDelta_currentInfinityEndStopDelta_previousInfinityEndStopDelta_currentAngleDelta_previousAngleDelta_factoryCalibrationOffset_estimatedNeutralZ_deltaNeutralZFromNVM_estimatedSagZ_combinedSensorOutput_deltaSagFromNVM_isValid_dataWasRejectedByHistory___block_invoke;
  block[3] = &unk_1E7998498;
  block[4] = self;
  v31 = a3;
  v32 = a8;
  v49 = a22;
  v50 = a21;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v46 = a5;
  v47 = a6;
  v48 = a9;
  v37 = a4;
  v38 = a10;
  v51 = a15 != 0;
  v39 = a7;
  v40 = v22;
  v52 = a16 != 0;
  v53 = a17 != 0;
  v41 = v23;
  v42 = v24;
  v54 = a18 != 0;
  v55 = a19 != 0;
  v43 = v25;
  v44 = v26;
  v56 = a20 != 0;
  v45 = v27;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportAutoFocusCalibrationForPosition:(int)a3 freqZ:(int)a4 deltaFreqZ:(int)a5 qZ:(int)a6 deltaQZ:(int)a7 gainZ:(int)a8 calibrationStatus:(unsigned int)a9 gelModelCoefficientD1:(int *)a10 gelModelCoefficientD2:(int *)a11 gelModelCoefficientP1:(int *)a12 gelModelCoefficientP2:(int *)a13 isValid:(BOOL)a14
{
  if (a10)
  {
    v14 = *a10;
  }

  else
  {
    v14 = 0;
  }

  if (a11)
  {
    v15 = *a11;
    if (a12)
    {
LABEL_6:
      v16 = *a12;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    if (a12)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  if (a13)
  {
    v17 = *a13;
  }

  else
  {
    v17 = 0;
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __208__BWAggdDataReporter_reportAutoFocusCalibrationForPosition_freqZ_deltaFreqZ_qZ_deltaQZ_gainZ_calibrationStatus_gelModelCoefficientD1_gelModelCoefficientD2_gelModelCoefficientP1_gelModelCoefficientP2_isValid___block_invoke;
  v19[3] = &unk_1E79984C0;
  v19[4] = self;
  v20 = a3;
  v21 = a9;
  v31 = a14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v32 = a10 != 0;
  v26 = a8;
  v27 = v14;
  v33 = a11 != 0;
  v34 = a12 != 0;
  v28 = v15;
  v29 = v16;
  v35 = a13 != 0;
  v30 = v17;
  dispatch_async(aggdDispatchQueue, v19);
}

uint64_t __208__BWAggdDataReporter_reportAutoFocusCalibrationForPosition_freqZ_deltaFreqZ_qZ_deltaQZ_gainZ_calibrationStatus_gelModelCoefficientD1_gelModelCoefficientD2_gelModelCoefficientP1_gelModelCoefficientP2_isValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.status.s.%d", *(a1 + 40)];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = ADClientSetValueForScalarKey();
  }

  if (*(a1 + 84) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.Freq.s.%d", *(a1 + 40)];
    if (v5 && v6)
    {
      ADClientSetValueForScalarKey();
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.FreqChange.s.%d", *(a1 + 40)];
    if (v7 && v8)
    {
      ADClientSetValueForScalarKey();
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.Q.s.%d", *(a1 + 40)];
    if (v9 && v10)
    {
      ADClientSetValueForScalarKey();
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.QChange.s.%d", *(a1 + 40)];
    if (v11 && v12)
    {
      ADClientSetValueForScalarKey();
    }

    v13 = *(a1 + 32);
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.LoopGain.s.%d", *(a1 + 40)];
    if (v13 && result)
    {
      result = ADClientSetValueForScalarKey();
    }

    if (*(a1 + 85) == 1)
    {
      v14 = *(a1 + 32);
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.gelModelCoeffD1.s.%d", *(a1 + 40)];
      if (v14)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 86) == 1)
    {
      v15 = *(a1 + 32);
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.gelModelCoeffD2.s.%d", *(a1 + 40)];
      if (v15)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 87) == 1)
    {
      v16 = *(a1 + 32);
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.gelModelCoeffP1.s.%d", *(a1 + 40)];
      if (v16)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 88) == 1)
    {
      v17 = *(a1 + 32);
      result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.fieldcal.gelModelCoeffP2.s.%d", *(a1 + 40)];
      if (v17)
      {
        if (result)
        {

          return ADClientSetValueForScalarKey();
        }
      }
    }
  }

  return result;
}

- (void)reportSphereCalibrationForPosition:(int)a3 freqX:(float)a4 deltaFreqX:(float)a5 qX:(float)a6 deltaQX:(float)a7 gainX:(float)a8 freqY:(float)a9 deltaFreqY:(float)a10 qY:(float)a11 deltaQY:(float)a12 gainY:(float)a13 calibrationStatus:(unsigned int)a14 isValid:(BOOL)a15
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __151__BWAggdDataReporter_reportSphereCalibrationForPosition_freqX_deltaFreqX_qX_deltaQX_gainX_freqY_deltaFreqY_qY_deltaQY_gainY_calibrationStatus_isValid___block_invoke;
  v16[3] = &unk_1E79984C0;
  v16[4] = self;
  v17 = a3;
  v18 = a14;
  v29 = a15;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  dispatch_async(aggdDispatchQueue, v16);
}

uint64_t __151__BWAggdDataReporter_reportSphereCalibrationForPosition_freqX_deltaFreqX_qX_deltaQX_gainX_freqY_deltaFreqY_qY_deltaQY_gainY_calibrationStatus_isValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.status.s.%d", *(a1 + 40)];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = ADClientSetValueForScalarKey();
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.XFreq.s.%d", *(a1 + 40)];
    if (v5 && v6)
    {
      ADClientSetValueForScalarKey();
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.XFreqChange.s.%d", *(a1 + 40)];
    if (v7 && v8)
    {
      ADClientSetValueForScalarKey();
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.XQ.s.%d", *(a1 + 40)];
    if (v9 && v10)
    {
      ADClientSetValueForScalarKey();
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.XQChange.s.%d", *(a1 + 40)];
    if (v11 && v12)
    {
      ADClientSetValueForScalarKey();
    }

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.XLoopGain.s.%d", *(a1 + 40)];
    if (v13 && v14)
    {
      ADClientSetValueForScalarKey();
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.YFreq.s.%d", *(a1 + 40)];
    if (v15 && v16)
    {
      ADClientSetValueForScalarKey();
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.YFreqChange.s.%d", *(a1 + 40)];
    if (v17 && v18)
    {
      ADClientSetValueForScalarKey();
    }

    v19 = *(a1 + 32);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.YQ.s.%d", *(a1 + 40)];
    if (v19 && v20)
    {
      ADClientSetValueForScalarKey();
    }

    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.YQChange.s.%d", *(a1 + 40)];
    if (v21 && v22)
    {
      ADClientSetValueForScalarKey();
    }

    v23 = *(a1 + 32);
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.fieldcal.YLoopGain.s.%d", *(a1 + 40)];
    if (v23 && result)
    {

      return ADClientSetValueForScalarKey();
    }
  }

  return result;
}

- (void)reportAPSSphereInteractionCalibrationForPosition:(int)a3 residualErrorNeutral:(float)a4 calibrationZHeightNeutral:(float)a5 residualErrorMacro:(float)a6 calibrationZHeightMacro:(float)a7 calibrationStatus:(unsigned int)a8 isValid:(BOOL)a9
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __187__BWAggdDataReporter_reportAPSSphereInteractionCalibrationForPosition_residualErrorNeutral_calibrationZHeightNeutral_residualErrorMacro_calibrationZHeightMacro_calibrationStatus_isValid___block_invoke;
  block[3] = &unk_1E79984E8;
  block[4] = self;
  v11 = a3;
  v12 = a8;
  v17 = a9;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __187__BWAggdDataReporter_reportAPSSphereInteractionCalibrationForPosition_residualErrorNeutral_calibrationZHeightNeutral_residualErrorMacro_calibrationZHeightMacro_calibrationStatus_isValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.sphcal.status.s.%d", *(a1 + 40)];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = ADClientSetValueForScalarKey();
  }

  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.sphcal.sphErrorNeutral.s.%d", *(a1 + 40)];
    if (v5 && v6)
    {
      ADClientSetValueForScalarKey();
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.sphcal.sphNeutralZ.s.%d", *(a1 + 40)];
    if (v7 && v8)
    {
      ADClientSetValueForScalarKey();
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.sphcal.sphErrorMacro.s.%d", *(a1 + 40)];
    if (v9 && v10)
    {
      ADClientSetValueForScalarKey();
    }

    v11 = *(a1 + 32);
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.sphcal.sphMacroZ.s.%d", *(a1 + 40)];
    if (v11 && result)
    {

      return ADClientSetValueForScalarKey();
    }
  }

  return result;
}

- (void)reportSphereEndStopCalibrationForPosition:(int)a3 oisPositiveX:(int)a4 oisNegativeX:(int)a5 oisPositiveY:(int)a6 oisNegativeY:(int)a7 maxPositiveXDriftFromNVM:(int)a8 maxNegativeXDriftFromNVM:(int)a9 maxPositiveYDriftFromNVM:(int)a10 maxNegativeYDriftFromNVM:(int)a11 sphereStrokeX:(int)a12 sphereStrokeY:(int)a13 calibrationStatus:(unsigned int)a14 isValid:(BOOL)a15
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __270__BWAggdDataReporter_reportSphereEndStopCalibrationForPosition_oisPositiveX_oisNegativeX_oisPositiveY_oisNegativeY_maxPositiveXDriftFromNVM_maxNegativeXDriftFromNVM_maxPositiveYDriftFromNVM_maxNegativeYDriftFromNVM_sphereStrokeX_sphereStrokeY_calibrationStatus_isValid___block_invoke;
  v16[3] = &unk_1E79984C0;
  v16[4] = self;
  v17 = a3;
  v18 = a14;
  v26 = a15;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = *&a9;
  v25 = a13;
  dispatch_async(aggdDispatchQueue, v16);
}

uint64_t __270__BWAggdDataReporter_reportSphereEndStopCalibrationForPosition_oisPositiveX_oisNegativeX_oisPositiveY_oisNegativeY_maxPositiveXDriftFromNVM_maxNegativeXDriftFromNVM_maxPositiveYDriftFromNVM_maxNegativeYDriftFromNVM_sphereStrokeX_sphereStrokeY_calibrationStatus_isValid___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.status.s.%d", *(a1 + 40)];
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = ADClientSetValueForScalarKey();
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphXpos.s.%d", *(a1 + 40)];
    if (v5 && v6)
    {
      ADClientSetValueForScalarKey();
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphXneg.s.%d", *(a1 + 40)];
    if (v7 && v8)
    {
      ADClientSetValueForScalarKey();
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphYpos.s.%d", *(a1 + 40)];
    if (v9 && v10)
    {
      ADClientSetValueForScalarKey();
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphYneg.s.%d", *(a1 + 40)];
    if (v11 && v12)
    {
      ADClientSetValueForScalarKey();
    }

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphXposDelta.s.%d", *(a1 + 40)];
    if (v13 && v14)
    {
      ADClientSetValueForScalarKey();
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphXnegDelta.s.%d", *(a1 + 40)];
    if (v15 && v16)
    {
      ADClientSetValueForScalarKey();
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphYposDelta.s.%d", *(a1 + 40)];
    if (v17 && v18)
    {
      ADClientSetValueForScalarKey();
    }

    v19 = *(a1 + 32);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphYnegDelta.s.%d", *(a1 + 40)];
    if (v19 && v20)
    {
      ADClientSetValueForScalarKey();
    }

    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphXStroke.s.%d", *(a1 + 40)];
    if (v21 && v22)
    {
      ADClientSetValueForScalarKey();
    }

    v23 = *(a1 + 32);
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.sph.endstopcal.SphYStroke.s.%d", *(a1 + 40)];
    if (v23 && result)
    {

      return ADClientSetValueForScalarKey();
    }
  }

  return result;
}

- (void)reportAutoFocusPositionSensorMode:(int)a3 portType:(id)a4
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BWAggdDataReporter_reportAutoFocusPositionSensorMode_portType___block_invoke;
  block[3] = &unk_1E7997358;
  block[4] = a4;
  block[5] = self;
  v6 = a3;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __65__BWAggdDataReporter_reportAutoFocusPositionSensorMode_portType___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*off_1E798A0C0])
  {
    v2 = 1;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:*off_1E798A0D8];
    if (!result)
    {
      return result;
    }

    v2 = 2;
  }

  v4 = *(a1 + 40);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.af.apsmode.%d", v2];
  if (v4)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {

    return ADClientSetValueForScalarKey();
  }

  return result;
}

- (void)reportAPSOffsetEstimatorForPortType:(id)a3 accelMotion:(float)a4 gyroMotion:(float)a5 inSessionOffset:(float)a6 deltaOffsetFC:(float)a7 deltaOffsetMI:(float)a8 deltaOffsetFATP:(float)a9 deltaOffsetLastSession:(float)a10 errorHeadroomViolated:(BOOL)a11 errorConvergenceFailed:(BOOL)a12 errorMotionTooLarge:(BOOL)a13 errorConfidenceTooLow:(BOOL)a14 errorOffsetTooLarge:(BOOL)a15 errorDeltaTooLarge:(BOOL)a16 errorSaturated:(BOOL)a17 errorCouldNotRun:(BOOL)a18 successRun:(BOOL)a19 startAPSVoltage:(int)a20 modeGCOL:(BOOL)a21 modeOL:(BOOL)a22
{
  if ([a3 isEqualToString:*off_1E798A0C0])
  {
    v36 = 1;
  }

  else
  {
    if (![a3 isEqualToString:*off_1E798A0D8])
    {
      return;
    }

    v36 = 2;
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __365__BWAggdDataReporter_reportAPSOffsetEstimatorForPortType_accelMotion_gyroMotion_inSessionOffset_deltaOffsetFC_deltaOffsetMI_deltaOffsetFATP_deltaOffsetLastSession_errorHeadroomViolated_errorConvergenceFailed_errorMotionTooLarge_errorConfidenceTooLow_errorOffsetTooLarge_errorDeltaTooLarge_errorSaturated_errorCouldNotRun_successRun_startAPSVoltage_modeGCOL_modeOL___block_invoke;
  block[3] = &unk_1E7998510;
  block[4] = self;
  v39 = a4;
  v40 = a5;
  v41 = a7;
  v42 = v36;
  v43 = a8;
  v44 = a9;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v56 = a19;
  v45 = a10;
  v46 = a6;
  v47 = a20;
  v57 = a21;
  v58 = a22;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportStillImageAPSStatisticsForPortType:(id)a3 logicalFocusPosition:(int)a4 apsMotion:(float)a5 sphereMotion:(float)a6 accelMotion:(float)a7 gyroMotion:(float)a8 subjectDistance:(float)a9 luxLevel:(int)a10
{
  if ([a3 isEqualToString:*off_1E798A0C0])
  {
    v19 = 1;
  }

  else
  {
    if (![a3 isEqualToString:*off_1E798A0D8])
    {
      return;
    }

    v19 = 2;
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__BWAggdDataReporter_reportStillImageAPSStatisticsForPortType_logicalFocusPosition_apsMotion_sphereMotion_accelMotion_gyroMotion_subjectDistance_luxLevel___block_invoke;
  block[3] = &unk_1E79914E0;
  block[4] = self;
  v22 = a4;
  v23 = v19;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportVideoRecordingAPSStatistics:(float)a3 stdDataFromAPSForTele:(float)a4 stdDataFromSphereForWide:(float)a5 stdDataFromSphereForTele:(float)a6 stdDataFromAccel:(float)a7 stdDataFromGyro:(float)a8 maxDataFromAPSForWide:(float)a9 maxDataFromAPSForTele:(float)a10 minDataFromAPSForWide:(float)a11 minDataFromAPSForTele:(float)a12 maxDataFromSphereForWide:(float)a13 maxDataFromSphereForTele:(float)a14 minDataFromSphereForWide:(float)a15 minDataFromSphereForTele:(float)a16 maxDataFromAccel:(float)a17 minDataFromAccel:(float)a18 maxDataFromGyro:(float)a19 minDataFromGyro:(float)a20
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __415__BWAggdDataReporter_reportVideoRecordingAPSStatistics_stdDataFromAPSForTele_stdDataFromSphereForWide_stdDataFromSphereForTele_stdDataFromAccel_stdDataFromGyro_maxDataFromAPSForWide_maxDataFromAPSForTele_minDataFromAPSForWide_minDataFromAPSForTele_maxDataFromSphereForWide_maxDataFromSphereForTele_minDataFromSphereForWide_minDataFromSphereForTele_maxDataFromAccel_minDataFromAccel_maxDataFromGyro_minDataFromGyro___block_invoke;
  v21[3] = &unk_1E7998538;
  v21[4] = self;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v30 = *&a11;
  v31 = *&a15;
  v32 = a19;
  v33 = a20;
  dispatch_async(aggdDispatchQueue, v21);
}

- (void)reportCriticalFocusErrorOccurredForPortType:(id)a3
{
  if ([a3 isEqualToString:*off_1E798A0C0])
  {
    v5 = 1;
  }

  else
  {
    if (![a3 isEqualToString:*off_1E798A0D8])
    {
      return;
    }

    v5 = 2;
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__BWAggdDataReporter_reportCriticalFocusErrorOccurredForPortType___block_invoke;
  v7[3] = &unk_1E7991CF0;
  v7[4] = self;
  v8 = v5;
  dispatch_async(aggdDispatchQueue, v7);
}

uint64_t __66__BWAggdDataReporter_reportCriticalFocusErrorOccurredForPortType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.capture.focus_err.%d", *(a1 + 40)];
  if (v1)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

- (void)reportSphereJitterDetectionsForPortType:(id)a3 detectionAttemps:(int)a4 successfulDetections:(int)a5
{
  if ([a3 isEqualToString:*off_1E798A0C0])
  {
    v9 = @"BackAccumulatedSuccessfulDetections";
    v10 = 1;
    v11 = @"BackAccumulatedDetectionAttempts";
  }

  else
  {
    if (![a3 isEqualToString:*off_1E798A0D8])
    {
      return;
    }

    v9 = @"BackTelephotoAccumulatedSuccessfulDetections";
    v10 = 2;
    v11 = @"BackTelephotoAccumulatedDetectionAttempts";
  }

  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__BWAggdDataReporter_reportSphereJitterDetectionsForPortType_detectionAttemps_successfulDetections___block_invoke;
  block[3] = &unk_1E7998560;
  block[4] = v11;
  block[5] = v9;
  v14 = a4;
  v15 = a5;
  block[6] = self;
  v16 = v10;
  dispatch_async(aggdDispatchQueue, block);
}

uint64_t __100__BWAggdDataReporter_reportSphereJitterDetectionsForPortType_detectionAttemps_successfulDetections___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  v4 = CFPreferencesCopyValue(@"SphereJitterDetectionInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  v7 = *(a1 + 56) + [objc_msgSend(v4 objectForKeyedSubscript:{*(a1 + 32)), "intValue"}];
  v8 = *(a1 + 60) + [objc_msgSend(v4 objectForKeyedSubscript:{*(a1 + 40)), "intValue"}];
  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v7), *(a1 + 32)}];
  [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v8), *(a1 + 40)}];
  CFPreferencesSetValue(@"SphereJitterDetectionInfo", v6, @"com.apple.cameracapture.volatile", v2, v3);
  CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v2, v3);

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.video.sph.esd_recovery_attempts.%d", *(a1 + 64)];
  if (v9 && v10 && *(a1 + 56))
  {
    ADClientAddValueForScalarKey();
  }

  v11 = *(a1 + 48);
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.video.sph.esd_recovery_detects.%d", *(a1 + 64)];
  v13 = *(a1 + 60);
  if (v11 && v12 && v13)
  {
    ADClientAddValueForScalarKey();
    v13 = *(a1 + 60);
  }

  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.video.sph.esd_recovery_entries.%d", *(a1 + 64)];
    if (v14)
    {
      if (v15)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  v16 = *(a1 + 48);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.video.sph.esd_detect_ratio.%d", *(a1 + 64)];
  if (v16 && result)
  {

    return ADClientSetValueForScalarKey();
  }

  return result;
}

- (id)_aggdCameraStreamingTimeStringFromDeviceType:(int)a3 devicePosition:(int)a4
{
  if (a4 == 2)
  {
    v4 = a3 - 2;
    if ((a3 - 2) < 5)
    {
      v5 = &off_1E79985C8;
      return v5[v4];
    }
  }

  else if (a4 == 1)
  {
    v4 = a3 - 2;
    if ((a3 - 2) < 9)
    {
      v5 = off_1E7998580;
      return v5[v4];
    }
  }

  return 0;
}

- (id)_aggdPearlInfraredProjectorUptimeStringFromCurrent:(int)a3 pattern:(int)a4 applicationID:(id)a5
{
  if (a3 != 1 || a4)
  {
    if (a3 == 1 && a4 == 1)
    {
      v6 = 0;
      v7 = @"lowpowerdense";
    }

    else if (a3 != 2 || a4)
    {
      v6 = a3 != 2 || a4 != 1;
      if (a3 == 2 && a4 == 1)
      {
        v7 = @"highpowerdense";
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = @"highpowersparse";
    }
  }

  else
  {
    v6 = 0;
    v7 = @"lowpowersparse";
  }

  if ([a5 isEqualToString:0x1F216ED50] & 1) != 0 || (objc_msgSend(a5, "isEqualToString:", 0x1F2185210))
  {
    v8 = @"cameraapp";
  }

  else if ([a5 isEqualToString:0x1F2185130])
  {
    v8 = @"jellyfish";
  }

  else
  {
    v10 = [a5 isEqualToString:0x1F2185490];
    v8 = @"3rdparty";
    if (v10)
    {
      v8 = @"facetime";
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.pearl.projectoruptime.%@.%@", v7, v8];
  }
}

- (id)_aggdGNRProcessingStatusStringFromProcessingStatus:(int)a3
{
  v3 = @"success";
  v4 = @"other-failure";
  if (a3 == -17401)
  {
    v4 = @"reg-failure";
  }

  if (a3)
  {
    v3 = v4;
  }

  if (a3 == -17402)
  {
    v3 = @"fusion-failure";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.gnr.status.%@", v3];
}

- (id)_aggdStereoFusionProcessingTypeStringForCaptureType:(int)a3 isStereoFusionCapture:(BOOL)a4 wideSubCaptureType:(int)a5 teleSubCaptureType:(int)a6 isOriginalImage:(BOOL)a7
{
  if (!a4)
  {
    v10 = @"not-processed";
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
  }

  v7 = *&a6;
  v8 = *&a5;
  v9 = *&a3;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (a5 == 1 && a6 == 1)
      {
        v10 = @"wysiwyg";
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
      }
    }

    else if (a3 == 2 && a5 == 2 && a6 == 2)
    {
      v10 = @"flash";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v10 = @"hdr";
        if (a7)
        {
          v10 = @"wysiwyg";
        }

        if (a5 == 3 && a6 == 3)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        break;
      case 4:
        if (a5 == 4 && a6 == 4)
        {
          v10 = @"sis";
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        break;
      case 5:
        if (a5 == 5 && a6 == 5)
        {
          v10 = @"ois";
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        if (a5 == 5 && a6 == 4)
        {
          v10 = @"ois-sis";
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        break;
    }
  }

  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  BWPhotoEncoderStringFromEncodingScheme(v9);
  BWPhotoEncoderStringFromEncodingScheme(v8);
  BWPhotoEncoderStringFromEncodingScheme(v7);
  v14 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v14, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWAggdDataReporter.m", 1469, @"LastShownDate:BWAggdDataReporter.m:1469", @"LastShownBuild:BWAggdDataReporter.m:1469", 0);
  free(v14);
  return 0;
}

- (id)_aggdStereoFusionProcessingStatusStringFromProcessingStatus:(int)a3
{
  v3 = @"other-failure";
  if (a3 == -17411)
  {
    v3 = @"adc-failure";
  }

  if (!a3)
  {
    v3 = @"success";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.status.%@", v3];
}

- (id)_aggdSDOFProcessingStatusStringFromProcessingStatus:(int)a3
{
  v3 = @"other-failure";
  if (a3 == -17411)
  {
    v3 = @"adc-failure";
  }

  if (!a3)
  {
    v3 = @"success";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.sdof.status.%@", v3];
}

uint64_t __72__BWAggdDataReporter_reportZeroShutterLagFirmwareTimeMachineInitFailure__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = ADClientAddValueForScalarKey();
    if (*(v1 + 32))
    {
      return OUTLINED_FUNCTION_3_61();
    }
  }

  return result;
}

uint64_t __71__BWAggdDataReporter_reportZeroShutterLagPreviewTimeMachineInitFailure__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = ADClientAddValueForScalarKey();
    if (*(v1 + 32))
    {
      return OUTLINED_FUNCTION_3_61();
    }
  }

  return result;
}

uint64_t __59__BWAggdDataReporter_reportZeroShutterLagSphereInitFailure__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = ADClientAddValueForScalarKey();
    if (*(v1 + 32))
    {
      return OUTLINED_FUNCTION_3_61();
    }
  }

  return result;
}

uint64_t __73__BWAggdDataReporter_reportZeroShutterLagMetadataInitFailureWithReasons___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = ADClientAddValueForScalarKey();
    if (*(v1 + 32))
    {
      result = ADClientAddValueForScalarKey();
    }
  }

  v2 = *(v1 + 40);
  if (!v2)
  {
    return result;
  }

  if ((v2 & 1) != 0 && *(v1 + 32))
  {
    result = ADClientAddValueForScalarKey();
    v2 = *(v1 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_11;
  }

  if (*(v1 + 32))
  {
    result = ADClientAddValueForScalarKey();
    v2 = *(v1 + 40);
  }

LABEL_11:
  if ((v2 & 4) != 0 && *(v1 + 32))
  {
    result = ADClientAddValueForScalarKey();
    v2 = *(v1 + 40);
    if ((v2 & 8) != 0)
    {
LABEL_14:
      if (*(v1 + 32))
      {
        result = ADClientAddValueForScalarKey();
        v2 = *(v1 + 40);
      }
    }
  }

  else if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 0x10) != 0 && *(v1 + 32))
  {
    result = ADClientAddValueForScalarKey();
    if ((*(v1 + 40) & 0x20) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    return result;
  }

  if (*(v1 + 32))
  {

    return ADClientAddValueForScalarKey();
  }

  return result;
}

uint64_t __428__BWAggdDataReporter_reportAutoFocusPositionSensorCalibrationForPosition_iStopZEstimate_eSensorOutput_wSensorOutput_gravityZ_calibrationStatus_sensorTemp_successfulInfinityEndStopDelta_currentInfinityEndStopDelta_previousInfinityEndStopDelta_currentAngleDelta_previousAngleDelta_factoryCalibrationOffset_estimatedNeutralZ_deltaNeutralZFromNVM_estimatedSagZ_combinedSensorOutput_deltaSagFromNVM_isValid_dataWasRejectedByHistory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.status.%d", *(a1 + 40)];
  if (v2 && result)
  {
    result = ADClientSetValueForScalarKey();
  }

  if ((*(a1 + 106) & 1) != 0 || *(a1 + 107) == 1)
  {
    v4 = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.deltachangeum.%d"];
    if (v2 && v4)
    {
      ADClientSetValueForScalarKey();
    }

    result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.prevdeltachangeum.%d"];
    if (v2 && result)
    {
      result = ADClientSetValueForScalarKey();
    }

    if (*(a1 + 32))
    {
      result = ADClientSetValueForScalarKey();
      if (*(a1 + 32))
      {
        result = ADClientSetValueForScalarKey();
      }
    }
  }

  if (*(a1 + 107) == 1)
  {
    v5 = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.deltaum.%d"];
    if (v2 && v5)
    {
      ADClientSetValueForScalarKey();
    }

    v6 = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.sensor.E.%d"];
    if (v2 && v6)
    {
      ADClientSetValueForScalarKey();
    }

    v7 = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.sensor.W.%d"];
    if (v2 && v7)
    {
      ADClientSetValueForScalarKey();
    }

    v8 = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.sensorTemp.%d"];
    if (v2 && v8)
    {
      ADClientSetValueForScalarKey();
    }

    result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.passingdeltachangeum.%d"];
    if (v2 && result)
    {
      result = ADClientSetValueForScalarKey();
    }

    if (*(a1 + 32))
    {
      result = ADClientSetValueForScalarKey();
    }

    if (*(a1 + 108) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.factorydeltaum.%d"];
      if (v2)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 109) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.sag.neutralEst.s.%d"];
      if (v2)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 110) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.sag.factorydeltaum.s.%d"];
      if (v2)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 111) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.sag.estimatePerG.s.%d"];
      if (v2)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 112) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.istop.fieldsense.%d"];
      if (v2)
      {
        if (result)
        {
          result = ADClientSetValueForScalarKey();
        }
      }
    }

    if (*(a1 + 113) == 1)
    {
      result = [OUTLINED_FUNCTION_0_65() stringWithFormat:@"com.apple.coremedia.camera.aps.fieldcal.sag.factorydeltaSag.s.%d"];
      if (v2)
      {
        if (result)
        {

          return ADClientSetValueForScalarKey();
        }
      }
    }
  }

  return result;
}

uint64_t __365__BWAggdDataReporter_reportAPSOffsetEstimatorForPortType_accelMotion_gyroMotion_inSessionOffset_deltaOffsetFC_deltaOffsetMI_deltaOffsetFATP_deltaOffsetLastSession_errorHeadroomViolated_errorConvergenceFailed_errorMotionTooLarge_errorConfidenceTooLow_errorOffsetTooLarge_errorDeltaTooLarge_errorSaturated_errorCouldNotRun_successRun_startAPSVoltage_modeGCOL_modeOL___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && (ADClientPushValueForDistributionKey(), *(a1 + 32)))
  {
    ADClientPushValueForDistributionKey();
    v2 = *(a1 + 32) != 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.delta_fc.%d"];
  if (v2 && v3)
  {
    ADClientPushValueForDistributionKey();
  }

  v4 = *(a1 + 32);
  v5 = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.delta_nvm.%d"];
  if (v4 && v5)
  {
    ADClientPushValueForDistributionKey();
  }

  v6 = *(a1 + 32);
  v7 = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.delta_syscfg.%d"];
  if (v6 && v7)
  {
    ADClientPushValueForDistributionKey();
  }

  v8 = *(a1 + 32);
  v9 = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.delta_offset.%d"];
  if (v8 && v9)
  {
    ADClientPushValueForDistributionKey();
  }

  if (*(a1 + 76) == 1)
  {
    v10 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_hdrm.%d"];
    if (v8)
    {
      if (v10)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 77) == 1)
  {
    v11 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_converge.%d"];
    if (v8)
    {
      if (v11)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 78) == 1)
  {
    v12 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_motion.%d"];
    if (v8)
    {
      if (v12)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 79) == 1)
  {
    v13 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_confidence.%d"];
    if (v8)
    {
      if (v13)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 80) == 1)
  {
    v14 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_offset.%d"];
    if (v8)
    {
      if (v14)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 81) == 1)
  {
    v15 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_deltaoffset.%d"];
    if (v8)
    {
      if (v15)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 82) == 1)
  {
    v16 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_saturated.%d"];
    if (v8)
    {
      if (v16)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 83) == 1)
  {
    v17 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_err_run.%d"];
    if (v8)
    {
      if (v17)
      {
        ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 84) == 1)
  {
    v18 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_success.%d"];
    if (v8 && v18)
    {
      ADClientAddValueForScalarKey();
    }

    v8 = *(a1 + 32);
    v19 = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.offset.%d"];
    if (v8 && v19)
    {
      ADClientPushValueForDistributionKey();
    }
  }

  v20 = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.aps.insession.num_sessions.%d"];
  if (v8 && v20)
  {
    ADClientAddValueForScalarKey();
  }

  v21 = *(a1 + 32);
  v22 = *(a1 + 72);
  result = [OUTLINED_FUNCTION_2_66() stringWithFormat:@"com.apple.coremedia.camera.startup.af.raw_aps.%d"];
  if (v21 && result)
  {
    result = ADClientPushValueForDistributionKey();
  }

  if (*(a1 + 85) == 1)
  {
    result = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.af.num_gcol.%d"];
    if (v22)
    {
      if (result)
      {
        result = ADClientAddValueForScalarKey();
      }
    }
  }

  if (*(a1 + 86) == 1)
  {
    result = [OUTLINED_FUNCTION_1_76() stringWithFormat:@"com.apple.coremedia.camera.af.num_cl.%d"];
    if (v22)
    {
      if (result)
      {

        return ADClientAddValueForScalarKey();
      }
    }
  }

  return result;
}

void __155__BWAggdDataReporter_reportStillImageAPSStatisticsForPortType_logicalFocusPosition_apsMotion_sphereMotion_accelMotion_gyroMotion_subjectDistance_luxLevel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.capture.af.focuspos.%d", *(a1 + 44)];
  if (v2 && v3)
  {
    ADClientPushValueForDistributionKey();
  }

  v4 = *(a1 + 32);
  v5 = [OUTLINED_FUNCTION_5_52() stringWithFormat:@"com.apple.coremedia.camera.capture.af.ze_std.%d"];
  if (v4 && v5)
  {
    ADClientPushValueForDistributionKey();
  }

  v6 = *(a1 + 32);
  v7 = [OUTLINED_FUNCTION_5_52() stringWithFormat:@"com.apple.coremedia.camera.capture.sph.xy_std.%d"];
  if (v6 && v7)
  {
    ADClientPushValueForDistributionKey();
  }

  if (*(a1 + 32) && (ADClientPushValueForDistributionKey(), *(a1 + 32)))
  {
    ADClientPushValueForDistributionKey();
    v8 = *(a1 + 32) != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [OUTLINED_FUNCTION_5_52() stringWithFormat:@"com.apple.coremedia.camera.capture.aps_do.%d"];
  if (v8 && v9)
  {
    ADClientPushValueForDistributionKey();
  }

  v10 = *(a1 + 64);
  if (*(a1 + 44) != 1)
  {
    if (v10 < 0.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v11)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v11)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v12)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v13)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v14)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v15)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    v17 = *(a1 + 32);
LABEL_71:
    if (!v17)
    {
      return;
    }

    goto LABEL_73;
  }

  if (v10 >= 0.0)
  {
    if (v10 < 15.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    if (v10 < 17.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    if (v10 < 20.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    if (v10 < 24.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    if (v10 < 30.0)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v11)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    OUTLINED_FUNCTION_4_53();
    if (v16)
    {
      if (!*(a1 + 32))
      {
        return;
      }

      goto LABEL_73;
    }

    v17 = *(a1 + 32);
    goto LABEL_71;
  }

  if (!*(a1 + 32))
  {
    return;
  }

LABEL_73:

  ADClientPushValueForDistributionKey();
}

uint64_t __415__BWAggdDataReporter_reportVideoRecordingAPSStatistics_stdDataFromAPSForTele_stdDataFromSphereForWide_stdDataFromSphereForTele_stdDataFromAccel_stdDataFromGyro_maxDataFromAPSForWide_maxDataFromAPSForTele_minDataFromAPSForWide_minDataFromAPSForTele_maxDataFromSphereForWide_maxDataFromSphereForTele_minDataFromSphereForWide_minDataFromSphereForTele_maxDataFromAccel_minDataFromAccel_maxDataFromGyro_minDataFromGyro___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = ADClientPushValueForDistributionKey();
    if (*(v1 + 32))
    {
      result = ADClientPushValueForDistributionKey();
      if (*(v1 + 32))
      {
        result = ADClientPushValueForDistributionKey();
        if (*(v1 + 32))
        {
          result = ADClientPushValueForDistributionKey();
          if (*(v1 + 32))
          {
            result = ADClientPushValueForDistributionKey();
            if (*(v1 + 32))
            {
              result = ADClientPushValueForDistributionKey();
              if (*(v1 + 32))
              {
                result = ADClientPushValueForDistributionKey();
                if (*(v1 + 32))
                {
                  result = ADClientPushValueForDistributionKey();
                  if (*(v1 + 32))
                  {
                    result = ADClientPushValueForDistributionKey();
                    if (*(v1 + 32))
                    {
                      result = ADClientPushValueForDistributionKey();
                      if (*(v1 + 32))
                      {
                        result = ADClientPushValueForDistributionKey();
                        if (*(v1 + 32))
                        {
                          result = ADClientPushValueForDistributionKey();
                          if (*(v1 + 32))
                          {
                            result = ADClientPushValueForDistributionKey();
                            if (*(v1 + 32))
                            {
                              result = ADClientPushValueForDistributionKey();
                              if (*(v1 + 32))
                              {
                                result = ADClientPushValueForDistributionKey();
                                if (*(v1 + 32))
                                {
                                  result = ADClientPushValueForDistributionKey();
                                  if (*(v1 + 32))
                                  {
                                    result = ADClientPushValueForDistributionKey();
                                    if (*(v1 + 32))
                                    {

                                      return ADClientPushValueForDistributionKey();
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)_aggdStringForPrefix:(id)a3 primaryCaptureType:(int)a4 secondaryCaptureType:(int)a5 captureFlags:(unint64_t)a6 sceneFlags:(unint64_t)a7 stillDuringVideo:(BOOL)a8 frontCamera:(BOOL)a9
{
  if (a3)
  {
    v9 = a6;
    if (a9)
    {
      v11 = @"ffc";
    }

    else
    {
      v11 = @"rfc";
    }

    if ((a6 & 0x400) != 0)
    {
      v12 = @".stereofusion";
    }

    else
    {
      v12 = &stru_1F216A3D0;
    }

    if (a8)
    {
      v13 = @"stillduringvideo";
    }

    else
    {
      v13 = [(BWAggdDataReporter *)self _captureTypeStringWithPrimaryCaptureType:a4 secondaryCaptureType:a5 captureFlags:a6 sceneFlags:a7];
      if (!v13)
      {
        return 0;
      }
    }

    if ((v9 & 0x800) != 0)
    {
      v14 = @".depth";
    }

    else
    {
      v14 = &stru_1F216A3D0;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@%@", *&a4, *&a5, v11, v12, v13, v14];
    if (v15)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.%@.%@", a3, v15];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWAggdDataReporter.m", 1554, @"LastShownDate:BWAggdDataReporter.m:1554", @"LastShownBuild:BWAggdDataReporter.m:1554", 0);
    free(v19);
  }

  return 0;
}

- (__CFString)_captureTypeStringWithPrimaryCaptureType:(unsigned int)a3 secondaryCaptureType:(int)a4 captureFlags:(char)a5 sceneFlags:
{
  if (result)
  {
    result = @"wysiwyg";
    switch(a2)
    {
      case 1:
        return result;
      case 2:
        result = @"flash";
        break;
      case 3:
        result = @"HDR";
        break;
      case 4:
        v5 = @"SIS";
        if (a3)
        {
          v5 = 0;
        }

        if (a3 == 4)
        {
          result = @"SIS+SIS";
        }

        else
        {
          result = v5;
        }

        break;
      case 5:
        if (a3 >= 6)
        {
          goto LABEL_8;
        }

        result = *(&off_1E79985F0 + a3);
        break;
      case 6:
        result = @"nightmode";
        break;
      case 7:
        result = @"bracket";
        break;
      case 10:
        v6 = @"HDR";
        v7 = @"NR.HR";
        if ((a5 & 0x80) == 0)
        {
          v7 = @"NR";
        }

        if ((a5 & 0xC) == 0)
        {
          v7 = @"wysiwyg";
        }

        if ((a4 & 0x100000) == 0)
        {
          v6 = v7;
        }

        result = [MEMORY[0x1E696AEC0] stringWithFormat:@"UB.%@", v6];
        break;
      case 11:
        result = @"digitalflash";
        break;
      case 12:
        result = @"deepfusion";
        break;
      case 13:
        result = @"learnedfusion";
        break;
      default:
LABEL_8:
        result = 0;
        break;
    }
  }

  return result;
}

@end