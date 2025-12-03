@interface BWAggdDataReporter
+ (id)sharedInstance;
- (BWAggdDataReporter)init;
- (__CFString)_captureTypeStringWithPrimaryCaptureType:(unsigned int)type secondaryCaptureType:(int)captureType captureFlags:(char)flags sceneFlags:;
- (id)_aggdCameraStreamingTimeStringFromDeviceType:(int)type devicePosition:(int)position;
- (id)_aggdGNRProcessingStatusStringFromProcessingStatus:(int)status;
- (id)_aggdPearlInfraredProjectorUptimeStringFromCurrent:(int)current pattern:(int)pattern applicationID:(id)d;
- (id)_aggdSDOFProcessingStatusStringFromProcessingStatus:(int)status;
- (id)_aggdStereoFusionProcessingStatusStringFromProcessingStatus:(int)status;
- (id)_aggdStereoFusionProcessingTypeStringForCaptureType:(int)type isStereoFusionCapture:(BOOL)capture wideSubCaptureType:(int)captureType teleSubCaptureType:(int)subCaptureType isOriginalImage:(BOOL)image;
- (id)_aggdStringForPrefix:(id)prefix primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera;
- (void)dealloc;
- (void)reportAPSOffsetEstimatorForPortType:(id)type accelMotion:(float)motion gyroMotion:(float)gyroMotion inSessionOffset:(float)offset deltaOffsetFC:(float)c deltaOffsetMI:(float)i deltaOffsetFATP:(float)p deltaOffsetLastSession:(float)self0 errorHeadroomViolated:(BOOL)self1 errorConvergenceFailed:(BOOL)self2 errorMotionTooLarge:(BOOL)self3 errorConfidenceTooLow:(BOOL)self4 errorOffsetTooLarge:(BOOL)self5 errorDeltaTooLarge:(BOOL)self6 errorSaturated:(BOOL)self7 errorCouldNotRun:(BOOL)self8 successRun:(BOOL)self9 startAPSVoltage:(int)voltage modeGCOL:(BOOL)l modeOL:(BOOL)oL;
- (void)reportAPSSphereInteractionCalibrationForPosition:(int)position residualErrorNeutral:(float)neutral calibrationZHeightNeutral:(float)heightNeutral residualErrorMacro:(float)macro calibrationZHeightMacro:(float)heightMacro calibrationStatus:(unsigned int)status isValid:(BOOL)valid;
- (void)reportAutoFocusCalibrationForPosition:(int)position freqZ:(int)z deltaFreqZ:(int)freqZ qZ:(int)qZ deltaQZ:(int)deltaQZ gainZ:(int)gainZ calibrationStatus:(unsigned int)status gelModelCoefficientD1:(int *)self0 gelModelCoefficientD2:(int *)self1 gelModelCoefficientP1:(int *)self2 gelModelCoefficientP2:(int *)self3 isValid:(BOOL)self4;
- (void)reportAutoFocusPositionSensorCalibrationForPosition:(int)position iStopZEstimate:(int)estimate eSensorOutput:(signed __int16)output wSensorOutput:(signed __int16)sensorOutput gravityZ:(int)z calibrationStatus:(unsigned int)status sensorTemp:(signed __int16)temp successfulInfinityEndStopDelta:(int)self0 currentInfinityEndStopDelta:(int)self1 previousInfinityEndStopDelta:(int)self2 currentAngleDelta:(int)self3 previousAngleDelta:(int)self4 factoryCalibrationOffset:(int *)self5 estimatedNeutralZ:(int *)self6 deltaNeutralZFromNVM:(int *)self7 estimatedSagZ:(int *)self8 combinedSensorOutput:(int *)self9 deltaSagFromNVM:(int *)vM isValid:(BOOL)valid dataWasRejectedByHistory:(BOOL)history;
- (void)reportAutoFocusPositionSensorMode:(int)mode portType:(id)type;
- (void)reportCalibrationStatisticsWithTime:(id)time timeValue:(double)value attemptsField:(id)field attemptsValue:(int64_t)attemptsValue successField:(id)successField successValue:(int64_t)successValue magneticFieldMagnitudeField:(id)magnitudeField magneticFieldMagnitudeValue:(double)self0;
- (void)reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera:(BOOL)camera;
- (void)reportCameraLaunchWithPrewarm:(int)prewarm reason:(id)reason;
- (void)reportCameraLaunchWithoutPrewarm:(int)prewarm;
- (void)reportCameraStreamingTimeInMilliseconds:(unint64_t)milliseconds deviceType:(int)type devicePosition:(int)position;
- (void)reportCriticalFocusErrorOccurredForPortType:(id)type;
- (void)reportFaceCount:(unsigned int)count frontCamera:(BOOL)camera;
- (void)reportGNRSampleBufferProcessorProcessingStatus:(int)status;
- (void)reportISPCreateDuration:(int)duration;
- (void)reportLockScreenCameraLaunchCancelledWithPrewarming:(BOOL)prewarming ispStreamingStarted:(BOOL)started;
- (void)reportLockScreenCameraLaunchCompletedWithPrewarming:(BOOL)prewarming restartedSessionDueToError:(int)error;
- (void)reportLuxLevel:(unsigned int)level primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera;
- (void)reportNonCameraAppCaptureWithPrimaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera;
- (void)reportPearlInfraredProjectorUptime:(unint64_t)uptime current:(int)current pattern:(int)pattern applicationID:(id)d;
- (void)reportSDOFSampleBufferProcessorProcessingStatus:(int)status;
- (void)reportSensorTemperature:(unsigned int)temperature frontCamera:(BOOL)camera;
- (void)reportShutterLag:(id *)lag primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera;
- (void)reportSphereCalibrationForPosition:(int)position freqX:(float)x deltaFreqX:(float)freqX qX:(float)qX deltaQX:(float)deltaQX gainX:(float)gainX freqY:(float)y deltaFreqY:(float)self0 qY:(float)self1 deltaQY:(float)self2 gainY:(float)self3 calibrationStatus:(unsigned int)self4 isValid:(BOOL)self5;
- (void)reportSphereEndStopCalibrationForPosition:(int)position oisPositiveX:(int)x oisNegativeX:(int)negativeX oisPositiveY:(int)y oisNegativeY:(int)negativeY maxPositiveXDriftFromNVM:(int)m maxNegativeXDriftFromNVM:(int)vM maxPositiveYDriftFromNVM:(int)self0 maxNegativeYDriftFromNVM:(int)self1 sphereStrokeX:(int)self2 sphereStrokeY:(int)self3 calibrationStatus:(unsigned int)self4 isValid:(BOOL)self5;
- (void)reportSphereJitterDetectionsForPortType:(id)type detectionAttemps:(int)attemps successfulDetections:(int)detections;
- (void)reportStereoFusionProcessingTypeForCaptureType:(int)type isStereoFusionCapture:(BOOL)capture wideSubCaptureType:(int)captureType teleSubCaptureType:(int)subCaptureType isOriginalImage:(BOOL)image;
- (void)reportStereoFusionSampleBufferProcessorProcessingStatus:(int)status;
- (void)reportStillImageAPSStatisticsForPortType:(id)type logicalFocusPosition:(int)position apsMotion:(float)motion sphereMotion:(float)sphereMotion accelMotion:(float)accelMotion gyroMotion:(float)gyroMotion subjectDistance:(float)distance luxLevel:(int)self0;
- (void)reportVideoRecordingAPSStatistics:(float)statistics stdDataFromAPSForTele:(float)tele stdDataFromSphereForWide:(float)wide stdDataFromSphereForTele:(float)forTele stdDataFromAccel:(float)accel stdDataFromGyro:(float)gyro maxDataFromAPSForWide:(float)forWide maxDataFromAPSForTele:(float)self0 minDataFromAPSForWide:(float)self1 minDataFromAPSForTele:(float)self2 maxDataFromSphereForWide:(float)self3 maxDataFromSphereForTele:(float)self4 minDataFromSphereForWide:(float)self5 minDataFromSphereForTele:(float)self6 maxDataFromAccel:(float)self7 minDataFromAccel:(float)self8 maxDataFromGyro:(float)self9 minDataFromGyro:(float)dataFromGyro;
- (void)reportZeroShutterLagFirmwareTimeMachineInitFailure;
- (void)reportZeroShutterLagInitSuccess;
- (void)reportZeroShutterLagMetadataInitFailureWithReasons:(unsigned int)reasons;
- (void)reportZeroShutterLagPreviewTimeMachineInitFailure;
- (void)reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType:(int)type;
- (void)reportZeroShutterLagSphereInitFailure;
- (void)reportZeroShutterLagSuccess;
- (void)reportZoomFactor:(float)factor primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera;
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

- (void)reportCameraStreamingTimeInMilliseconds:(unint64_t)milliseconds deviceType:(int)type devicePosition:(int)position
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__BWAggdDataReporter_reportCameraStreamingTimeInMilliseconds_deviceType_devicePosition___block_invoke;
  block[3] = &unk_1E7991EF8;
  typeCopy = type;
  positionCopy = position;
  block[4] = self;
  block[5] = milliseconds;
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

- (void)reportPearlInfraredProjectorUptime:(unint64_t)uptime current:(int)current pattern:(int)pattern applicationID:(id)d
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__BWAggdDataReporter_reportPearlInfraredProjectorUptime_current_pattern_applicationID___block_invoke;
  v7[3] = &unk_1E7998380;
  currentCopy = current;
  patternCopy = pattern;
  v7[4] = self;
  v7[5] = d;
  v7[6] = uptime;
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

- (void)reportISPCreateDuration:(int)duration
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__BWAggdDataReporter_reportISPCreateDuration___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  durationCopy = duration;
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

- (void)reportGNRSampleBufferProcessorProcessingStatus:(int)status
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__BWAggdDataReporter_reportGNRSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  statusCopy = status;
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

- (void)reportStereoFusionProcessingTypeForCaptureType:(int)type isStereoFusionCapture:(BOOL)capture wideSubCaptureType:(int)captureType teleSubCaptureType:(int)subCaptureType isOriginalImage:(BOOL)image
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __145__BWAggdDataReporter_reportStereoFusionProcessingTypeForCaptureType_isStereoFusionCapture_wideSubCaptureType_teleSubCaptureType_isOriginalImage___block_invoke;
  block[3] = &unk_1E79983A8;
  block[4] = self;
  captureCopy = capture;
  typeCopy = type;
  captureTypeCopy = captureType;
  subCaptureTypeCopy = subCaptureType;
  imageCopy = image;
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

- (void)reportStereoFusionSampleBufferProcessorProcessingStatus:(int)status
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__BWAggdDataReporter_reportStereoFusionSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  statusCopy = status;
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

- (void)reportSDOFSampleBufferProcessorProcessingStatus:(int)status
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__BWAggdDataReporter_reportSDOFSampleBufferProcessorProcessingStatus___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  statusCopy = status;
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

- (void)reportLuxLevel:(unsigned int)level primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__BWAggdDataReporter_reportLuxLevel_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983D0;
  typeCopy = type;
  captureTypeCopy = captureType;
  block[4] = self;
  block[5] = flags;
  block[6] = sceneFlags;
  videoCopy = video;
  cameraCopy = camera;
  levelCopy = level;
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

- (void)reportZoomFactor:(float)factor primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __132__BWAggdDataReporter_reportZoomFactor_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983D0;
  typeCopy = type;
  captureTypeCopy = captureType;
  block[4] = self;
  block[5] = flags;
  block[6] = sceneFlags;
  videoCopy = video;
  cameraCopy = camera;
  factorCopy = factor;
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

- (void)reportNonCameraAppCaptureWithPrimaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__BWAggdDataReporter_reportNonCameraAppCaptureWithPrimaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  block[3] = &unk_1E79983F8;
  typeCopy = type;
  captureTypeCopy = captureType;
  block[4] = self;
  block[5] = flags;
  block[6] = sceneFlags;
  videoCopy = video;
  cameraCopy = camera;
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

- (void)reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__BWAggdDataReporter_reportCameraAppCaptureForNonCameraAppLoggingWithFrontCamera___block_invoke;
  v4[3] = &unk_1E7990078;
  cameraCopy = camera;
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

- (void)reportFaceCount:(unsigned int)count frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__BWAggdDataReporter_reportFaceCount_frontCamera___block_invoke;
  v5[3] = &unk_1E7998420;
  cameraCopy = camera;
  v5[4] = self;
  countCopy = count;
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

- (void)reportSensorTemperature:(unsigned int)temperature frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__BWAggdDataReporter_reportSensorTemperature_frontCamera___block_invoke;
  v5[3] = &unk_1E7998420;
  cameraCopy = camera;
  v5[4] = self;
  temperatureCopy = temperature;
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

- (void)reportShutterLag:(id *)lag primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __132__BWAggdDataReporter_reportShutterLag_primaryCaptureType_secondaryCaptureType_captureFlags_sceneFlags_stillDuringVideo_frontCamera___block_invoke;
  v10[3] = &unk_1E7998448;
  typeCopy = type;
  captureTypeCopy = captureType;
  v10[4] = self;
  v10[5] = flags;
  v10[6] = sceneFlags;
  videoCopy = video;
  cameraCopy = camera;
  v13 = *lag;
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

- (void)reportZeroShutterLagMetadataInitFailureWithReasons:(unsigned int)reasons
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__BWAggdDataReporter_reportZeroShutterLagMetadataInitFailureWithReasons___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  reasonsCopy = reasons;
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

- (void)reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType:(int)type
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__BWAggdDataReporter_reportZeroShutterLagReferenceFrameSelectionFailureForCaptureType___block_invoke;
  v4[3] = &unk_1E7991CF0;
  typeCopy = type;
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

- (void)reportCameraLaunchWithoutPrewarm:(int)prewarm
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__BWAggdDataReporter_reportCameraLaunchWithoutPrewarm___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  prewarmCopy = prewarm;
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

- (void)reportCameraLaunchWithPrewarm:(int)prewarm reason:(id)reason
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__BWAggdDataReporter_reportCameraLaunchWithPrewarm_reason___block_invoke;
  block[3] = &unk_1E7997358;
  prewarmCopy = prewarm;
  block[4] = self;
  block[5] = reason;
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

- (void)reportLockScreenCameraLaunchCompletedWithPrewarming:(BOOL)prewarming restartedSessionDueToError:(int)error
{
  v5 = @"unknown";
  if (error == 1)
  {
    v5 = @"cameraInUseByOtherClient";
  }

  if (!error)
  {
    v5 = @"none";
  }

  v6 = @"nonPrewarmed";
  if (prewarming)
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

- (void)reportLockScreenCameraLaunchCancelledWithPrewarming:(BOOL)prewarming ispStreamingStarted:(BOOL)started
{
  v5 = @"nonPrewarmed";
  if (prewarming)
  {
    v5 = @"prewarmed";
  }

  v6 = @"ispStreamingNotStarted";
  if (started)
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

- (void)reportCalibrationStatisticsWithTime:(id)time timeValue:(double)value attemptsField:(id)field attemptsValue:(int64_t)attemptsValue successField:(id)successField successValue:(int64_t)successValue magneticFieldMagnitudeField:(id)magnitudeField magneticFieldMagnitudeValue:(double)self0
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __178__BWAggdDataReporter_reportCalibrationStatisticsWithTime_timeValue_attemptsField_attemptsValue_successField_successValue_magneticFieldMagnitudeField_magneticFieldMagnitudeValue___block_invoke;
  block[3] = &unk_1E7998470;
  block[4] = self;
  block[5] = time;
  *&block[9] = value;
  block[6] = field;
  block[7] = successField;
  block[10] = attemptsValue;
  block[11] = successValue;
  block[8] = magnitudeField;
  *&block[12] = magnitudeValue;
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

- (void)reportAutoFocusPositionSensorCalibrationForPosition:(int)position iStopZEstimate:(int)estimate eSensorOutput:(signed __int16)output wSensorOutput:(signed __int16)sensorOutput gravityZ:(int)z calibrationStatus:(unsigned int)status sensorTemp:(signed __int16)temp successfulInfinityEndStopDelta:(int)self0 currentInfinityEndStopDelta:(int)self1 previousInfinityEndStopDelta:(int)self2 currentAngleDelta:(int)self3 previousAngleDelta:(int)self4 factoryCalibrationOffset:(int *)self5 estimatedNeutralZ:(int *)self6 deltaNeutralZFromNVM:(int *)self7 estimatedSagZ:(int *)self8 combinedSensorOutput:(int *)self9 deltaSagFromNVM:(int *)vM isValid:(BOOL)valid dataWasRejectedByHistory:(BOOL)history
{
  if (offset)
  {
    v22 = *offset;
  }

  else
  {
    v22 = 0;
  }

  if (neutralZ)
  {
    v23 = *neutralZ;
  }

  else
  {
    v23 = 0;
  }

  if (m)
  {
    v24 = *m;
  }

  else
  {
    v24 = 0;
  }

  if (sagZ)
  {
    v25 = *sagZ;
    if (combinedSensorOutput)
    {
LABEL_12:
      v26 = *combinedSensorOutput;
      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0;
    if (combinedSensorOutput)
    {
      goto LABEL_12;
    }
  }

  v26 = 0;
LABEL_15:
  if (vM)
  {
    v27 = *vM;
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
  positionCopy = position;
  statusCopy = status;
  historyCopy = history;
  validCopy = valid;
  stopDeltaCopy = stopDelta;
  endStopDeltaCopy = endStopDelta;
  angleDeltaCopy = angleDelta;
  previousAngleDeltaCopy = previousAngleDelta;
  outputCopy = output;
  sensorOutputCopy = sensorOutput;
  tempCopy = temp;
  estimateCopy = estimate;
  deltaCopy = delta;
  v51 = offset != 0;
  zCopy = z;
  v40 = v22;
  v52 = neutralZ != 0;
  v53 = m != 0;
  v41 = v23;
  v42 = v24;
  v54 = sagZ != 0;
  v55 = combinedSensorOutput != 0;
  v43 = v25;
  v44 = v26;
  v56 = vM != 0;
  v45 = v27;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportAutoFocusCalibrationForPosition:(int)position freqZ:(int)z deltaFreqZ:(int)freqZ qZ:(int)qZ deltaQZ:(int)deltaQZ gainZ:(int)gainZ calibrationStatus:(unsigned int)status gelModelCoefficientD1:(int *)self0 gelModelCoefficientD2:(int *)self1 gelModelCoefficientP1:(int *)self2 gelModelCoefficientP2:(int *)self3 isValid:(BOOL)self4
{
  if (d1)
  {
    v14 = *d1;
  }

  else
  {
    v14 = 0;
  }

  if (d2)
  {
    v15 = *d2;
    if (p1)
    {
LABEL_6:
      v16 = *p1;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    if (p1)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  if (p2)
  {
    v17 = *p2;
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
  positionCopy = position;
  statusCopy = status;
  validCopy = valid;
  zCopy = z;
  freqZCopy = freqZ;
  qZCopy = qZ;
  deltaQZCopy = deltaQZ;
  v32 = d1 != 0;
  gainZCopy = gainZ;
  v27 = v14;
  v33 = d2 != 0;
  v34 = p1 != 0;
  v28 = v15;
  v29 = v16;
  v35 = p2 != 0;
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

- (void)reportSphereCalibrationForPosition:(int)position freqX:(float)x deltaFreqX:(float)freqX qX:(float)qX deltaQX:(float)deltaQX gainX:(float)gainX freqY:(float)y deltaFreqY:(float)self0 qY:(float)self1 deltaQY:(float)self2 gainY:(float)self3 calibrationStatus:(unsigned int)self4 isValid:(BOOL)self5
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __151__BWAggdDataReporter_reportSphereCalibrationForPosition_freqX_deltaFreqX_qX_deltaQX_gainX_freqY_deltaFreqY_qY_deltaQY_gainY_calibrationStatus_isValid___block_invoke;
  v16[3] = &unk_1E79984C0;
  v16[4] = self;
  positionCopy = position;
  statusCopy = status;
  validCopy = valid;
  xCopy = x;
  freqXCopy = freqX;
  qXCopy = qX;
  deltaQXCopy = deltaQX;
  gainXCopy = gainX;
  yCopy = y;
  freqYCopy = freqY;
  qYCopy = qY;
  deltaQYCopy = deltaQY;
  gainYCopy = gainY;
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

- (void)reportAPSSphereInteractionCalibrationForPosition:(int)position residualErrorNeutral:(float)neutral calibrationZHeightNeutral:(float)heightNeutral residualErrorMacro:(float)macro calibrationZHeightMacro:(float)heightMacro calibrationStatus:(unsigned int)status isValid:(BOOL)valid
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __187__BWAggdDataReporter_reportAPSSphereInteractionCalibrationForPosition_residualErrorNeutral_calibrationZHeightNeutral_residualErrorMacro_calibrationZHeightMacro_calibrationStatus_isValid___block_invoke;
  block[3] = &unk_1E79984E8;
  block[4] = self;
  positionCopy = position;
  statusCopy = status;
  validCopy = valid;
  neutralCopy = neutral;
  heightNeutralCopy = heightNeutral;
  macroCopy = macro;
  heightMacroCopy = heightMacro;
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

- (void)reportSphereEndStopCalibrationForPosition:(int)position oisPositiveX:(int)x oisNegativeX:(int)negativeX oisPositiveY:(int)y oisNegativeY:(int)negativeY maxPositiveXDriftFromNVM:(int)m maxNegativeXDriftFromNVM:(int)vM maxPositiveYDriftFromNVM:(int)self0 maxNegativeYDriftFromNVM:(int)self1 sphereStrokeX:(int)self2 sphereStrokeY:(int)self3 calibrationStatus:(unsigned int)self4 isValid:(BOOL)self5
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __270__BWAggdDataReporter_reportSphereEndStopCalibrationForPosition_oisPositiveX_oisNegativeX_oisPositiveY_oisNegativeY_maxPositiveXDriftFromNVM_maxNegativeXDriftFromNVM_maxPositiveYDriftFromNVM_maxNegativeYDriftFromNVM_sphereStrokeX_sphereStrokeY_calibrationStatus_isValid___block_invoke;
  v16[3] = &unk_1E79984C0;
  v16[4] = self;
  positionCopy = position;
  statusCopy = status;
  validCopy = valid;
  xCopy = x;
  negativeXCopy = negativeX;
  yCopy = y;
  negativeYCopy = negativeY;
  mCopy = m;
  v24 = *&vM;
  strokeYCopy = strokeY;
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

- (void)reportAutoFocusPositionSensorMode:(int)mode portType:(id)type
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BWAggdDataReporter_reportAutoFocusPositionSensorMode_portType___block_invoke;
  block[3] = &unk_1E7997358;
  block[4] = type;
  block[5] = self;
  modeCopy = mode;
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

- (void)reportAPSOffsetEstimatorForPortType:(id)type accelMotion:(float)motion gyroMotion:(float)gyroMotion inSessionOffset:(float)offset deltaOffsetFC:(float)c deltaOffsetMI:(float)i deltaOffsetFATP:(float)p deltaOffsetLastSession:(float)self0 errorHeadroomViolated:(BOOL)self1 errorConvergenceFailed:(BOOL)self2 errorMotionTooLarge:(BOOL)self3 errorConfidenceTooLow:(BOOL)self4 errorOffsetTooLarge:(BOOL)self5 errorDeltaTooLarge:(BOOL)self6 errorSaturated:(BOOL)self7 errorCouldNotRun:(BOOL)self8 successRun:(BOOL)self9 startAPSVoltage:(int)voltage modeGCOL:(BOOL)l modeOL:(BOOL)oL
{
  if ([type isEqualToString:*off_1E798A0C0])
  {
    v36 = 1;
  }

  else
  {
    if (![type isEqualToString:*off_1E798A0D8])
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
  motionCopy = motion;
  gyroMotionCopy = gyroMotion;
  cCopy = c;
  v42 = v36;
  iCopy = i;
  pCopy = p;
  violatedCopy = violated;
  failedCopy = failed;
  largeCopy = large;
  lowCopy = low;
  tooLargeCopy = tooLarge;
  deltaTooLargeCopy = deltaTooLarge;
  saturatedCopy = saturated;
  runCopy = run;
  successRunCopy = successRun;
  sessionCopy = session;
  offsetCopy = offset;
  voltageCopy = voltage;
  lCopy = l;
  oLCopy = oL;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportStillImageAPSStatisticsForPortType:(id)type logicalFocusPosition:(int)position apsMotion:(float)motion sphereMotion:(float)sphereMotion accelMotion:(float)accelMotion gyroMotion:(float)gyroMotion subjectDistance:(float)distance luxLevel:(int)self0
{
  if ([type isEqualToString:*off_1E798A0C0])
  {
    v19 = 1;
  }

  else
  {
    if (![type isEqualToString:*off_1E798A0D8])
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
  positionCopy = position;
  v23 = v19;
  motionCopy = motion;
  sphereMotionCopy = sphereMotion;
  accelMotionCopy = accelMotion;
  gyroMotionCopy = gyroMotion;
  distanceCopy = distance;
  levelCopy = level;
  dispatch_async(aggdDispatchQueue, block);
}

- (void)reportVideoRecordingAPSStatistics:(float)statistics stdDataFromAPSForTele:(float)tele stdDataFromSphereForWide:(float)wide stdDataFromSphereForTele:(float)forTele stdDataFromAccel:(float)accel stdDataFromGyro:(float)gyro maxDataFromAPSForWide:(float)forWide maxDataFromAPSForTele:(float)self0 minDataFromAPSForWide:(float)self1 minDataFromAPSForTele:(float)self2 maxDataFromSphereForWide:(float)self3 maxDataFromSphereForTele:(float)self4 minDataFromSphereForWide:(float)self5 minDataFromSphereForTele:(float)self6 maxDataFromAccel:(float)self7 minDataFromAccel:(float)self8 maxDataFromGyro:(float)self9 minDataFromGyro:(float)dataFromGyro
{
  aggdDispatchQueue = self->_aggdDispatchQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __415__BWAggdDataReporter_reportVideoRecordingAPSStatistics_stdDataFromAPSForTele_stdDataFromSphereForWide_stdDataFromSphereForTele_stdDataFromAccel_stdDataFromGyro_maxDataFromAPSForWide_maxDataFromAPSForTele_minDataFromAPSForWide_minDataFromAPSForTele_maxDataFromSphereForWide_maxDataFromSphereForTele_minDataFromSphereForWide_minDataFromSphereForTele_maxDataFromAccel_minDataFromAccel_maxDataFromGyro_minDataFromGyro___block_invoke;
  v21[3] = &unk_1E7998538;
  v21[4] = self;
  statisticsCopy = statistics;
  teleCopy = tele;
  wideCopy = wide;
  forTeleCopy = forTele;
  accelCopy = accel;
  gyroCopy = gyro;
  forWideCopy = forWide;
  sForTeleCopy = sForTele;
  v30 = *&sForWide;
  v31 = *&fromSphereForWide;
  fromGyroCopy = fromGyro;
  dataFromGyroCopy = dataFromGyro;
  dispatch_async(aggdDispatchQueue, v21);
}

- (void)reportCriticalFocusErrorOccurredForPortType:(id)type
{
  if ([type isEqualToString:*off_1E798A0C0])
  {
    v5 = 1;
  }

  else
  {
    if (![type isEqualToString:*off_1E798A0D8])
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

- (void)reportSphereJitterDetectionsForPortType:(id)type detectionAttemps:(int)attemps successfulDetections:(int)detections
{
  if ([type isEqualToString:*off_1E798A0C0])
  {
    v9 = @"BackAccumulatedSuccessfulDetections";
    v10 = 1;
    v11 = @"BackAccumulatedDetectionAttempts";
  }

  else
  {
    if (![type isEqualToString:*off_1E798A0D8])
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
  attempsCopy = attemps;
  detectionsCopy = detections;
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

- (id)_aggdCameraStreamingTimeStringFromDeviceType:(int)type devicePosition:(int)position
{
  if (position == 2)
  {
    v4 = type - 2;
    if ((type - 2) < 5)
    {
      v5 = &off_1E79985C8;
      return v5[v4];
    }
  }

  else if (position == 1)
  {
    v4 = type - 2;
    if ((type - 2) < 9)
    {
      v5 = off_1E7998580;
      return v5[v4];
    }
  }

  return 0;
}

- (id)_aggdPearlInfraredProjectorUptimeStringFromCurrent:(int)current pattern:(int)pattern applicationID:(id)d
{
  if (current != 1 || pattern)
  {
    if (current == 1 && pattern == 1)
    {
      v6 = 0;
      v7 = @"lowpowerdense";
    }

    else if (current != 2 || pattern)
    {
      v6 = current != 2 || pattern != 1;
      if (current == 2 && pattern == 1)
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

  if ([d isEqualToString:0x1F216ED50] & 1) != 0 || (objc_msgSend(d, "isEqualToString:", 0x1F2185210))
  {
    v8 = @"cameraapp";
  }

  else if ([d isEqualToString:0x1F2185130])
  {
    v8 = @"jellyfish";
  }

  else
  {
    v10 = [d isEqualToString:0x1F2185490];
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

- (id)_aggdGNRProcessingStatusStringFromProcessingStatus:(int)status
{
  v3 = @"success";
  v4 = @"other-failure";
  if (status == -17401)
  {
    v4 = @"reg-failure";
  }

  if (status)
  {
    v3 = v4;
  }

  if (status == -17402)
  {
    v3 = @"fusion-failure";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.gnr.status.%@", v3];
}

- (id)_aggdStereoFusionProcessingTypeStringForCaptureType:(int)type isStereoFusionCapture:(BOOL)capture wideSubCaptureType:(int)captureType teleSubCaptureType:(int)subCaptureType isOriginalImage:(BOOL)image
{
  if (!capture)
  {
    v10 = @"not-processed";
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
  }

  v7 = *&subCaptureType;
  v8 = *&captureType;
  v9 = *&type;
  if (type <= 2)
  {
    if (type == 1)
    {
      if (captureType == 1 && subCaptureType == 1)
      {
        v10 = @"wysiwyg";
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
      }
    }

    else if (type == 2 && captureType == 2 && subCaptureType == 2)
    {
      v10 = @"flash";
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v10 = @"hdr";
        if (image)
        {
          v10 = @"wysiwyg";
        }

        if (captureType == 3 && subCaptureType == 3)
        {
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        break;
      case 4:
        if (captureType == 4 && subCaptureType == 4)
        {
          v10 = @"sis";
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        break;
      case 5:
        if (captureType == 5 && subCaptureType == 5)
        {
          v10 = @"ois";
          return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.type.%@", v10];
        }

        if (captureType == 5 && subCaptureType == 4)
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

- (id)_aggdStereoFusionProcessingStatusStringFromProcessingStatus:(int)status
{
  v3 = @"other-failure";
  if (status == -17411)
  {
    v3 = @"adc-failure";
  }

  if (!status)
  {
    v3 = @"success";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.still.processing.stereofusion.status.%@", v3];
}

- (id)_aggdSDOFProcessingStatusStringFromProcessingStatus:(int)status
{
  v3 = @"other-failure";
  if (status == -17411)
  {
    v3 = @"adc-failure";
  }

  if (!status)
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

- (id)_aggdStringForPrefix:(id)prefix primaryCaptureType:(int)type secondaryCaptureType:(int)captureType captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags stillDuringVideo:(BOOL)video frontCamera:(BOOL)camera
{
  if (prefix)
  {
    flagsCopy = flags;
    if (camera)
    {
      v11 = @"ffc";
    }

    else
    {
      v11 = @"rfc";
    }

    if ((flags & 0x400) != 0)
    {
      v12 = @".stereofusion";
    }

    else
    {
      v12 = &stru_1F216A3D0;
    }

    if (video)
    {
      v13 = @"stillduringvideo";
    }

    else
    {
      v13 = [(BWAggdDataReporter *)self _captureTypeStringWithPrimaryCaptureType:type secondaryCaptureType:captureType captureFlags:flags sceneFlags:sceneFlags];
      if (!v13)
      {
        return 0;
      }
    }

    if ((flagsCopy & 0x800) != 0)
    {
      v14 = @".depth";
    }

    else
    {
      v14 = &stru_1F216A3D0;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@%@", *&type, *&captureType, v11, v12, v13, v14];
    if (v15)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coremedia.camera.%@.%@", prefix, v15];
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

- (__CFString)_captureTypeStringWithPrimaryCaptureType:(unsigned int)type secondaryCaptureType:(int)captureType captureFlags:(char)flags sceneFlags:
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
        if (type)
        {
          v5 = 0;
        }

        if (type == 4)
        {
          result = @"SIS+SIS";
        }

        else
        {
          result = v5;
        }

        break;
      case 5:
        if (type >= 6)
        {
          goto LABEL_8;
        }

        result = *(&off_1E79985F0 + type);
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
        if ((flags & 0x80) == 0)
        {
          v7 = @"NR";
        }

        if ((flags & 0xC) == 0)
        {
          v7 = @"wysiwyg";
        }

        if ((captureType & 0x100000) == 0)
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