@interface BWMovieFileOutputAnalyticsPayload
- (BWCoreAnalyticsMovieRecordingCinematicVideoStatistics)cinematicVideoMovieRecordingStats;
- (BWMovieFileOutputAnalyticsPayload)init;
- (id)eventDictionary;
- (id)eventName;
- (void)dealloc;
- (void)reset;
- (void)setCinematicAudioRemixStats:(BWCoreAnalyticsMovieRecordingCinematicAudioRemixStatistics *)stats;
- (void)setCinematicVideoMovieRecordingStats:(BWCoreAnalyticsMovieRecordingCinematicVideoStatistics *)stats;
@end

@implementation BWMovieFileOutputAnalyticsPayload

- (BWMovieFileOutputAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWMovieFileOutputAnalyticsPayload;
  v2 = [(BWMovieFileOutputAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWMovieFileOutputAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  self->_deviceType = 0;
  *&self->_activeDeviceMask = 0;
  *&self->_videoOrientation = 0;
  self->_videoMirrored = 0;
  self->_duration = 0.0;
  self->_durationFront = 0.0;
  self->_durationRearTele = 0.0;
  self->_durationRearSuperWide = 0.0;
  self->_durationRearWide = 0.0;
  self->_nominalFramerate = 3.4028e38;
  *&self->_height = 0x8000000080000000;
  self->_numberOfTimesRecordingWasPaused = 0;
  *&self->_startingUIZoom = xmmword_1AD056360;
  self->_maxSystemPressureLevel = 0;
  self->_timeToCriticalSystemPressureInMS = -1;
  self->_systemPressureFactors = 0;

  self->_clientApplicationID = 0;
  self->_sphereAFStatistics = 0;

  self->_sphereModeByPortType = 0;
  self->_APSModeByPortType = 0;

  self->_variableFrameRateStatistics = 0;
  self->_afDriverShortOccurred = 0;
  self->_totalNumberOfFramesDropped = 0;
  self->_numberOfFramesDroppedDueToFormatWriterQueueFull = 0;
  *&self->_hdrVideo = 0;
  self->_colorSpace = -1;
  self->_stereoVideoCaptureEnabled = 0;
  self->_stereoVideoCaptureStatus = 1;
  self->_numberOfISPFramesDropped = 0;
  self->_numberOfISPFrames = 0;

  self->_cameraSwitchStatistics = 0;
  self->_videoSTFStatistics = 0;
  self->_videoDeghostingStatistics = 0;
  self->_cinematicVideoEnabled = 0;
  *&self->_cinematicVideoMovieRecordingStats.countOfSoftFocusRequests = 0u;
  *&self->_cinematicVideoMovieRecordingStats.countOfFixedTaxonomyFocusDecisions = 0u;
  self->_cinematicAudioEnabled = 0;

  self->_videoCodec = 0;
  self->_movieFileSize = 0;
  self->_percentageOfAvailableDataStorageAfterWritingMovie = -1.0;
  self->_totalNANDReadBytesDuringRecording = -1;
  self->_totalNANDWriteBytesDuringRecording = -1;
  self->_capturingOntoExternalStorageDevice = 0;

  self->_externalStorageDeviceVendorName = 0;
  self->_externalStorageDeviceProductName = 0;
  *&self->_externalStorageDeviceTotalSize = xmmword_1AD056370;
  *&self->_audioWasPlayingDuringCapture = 0;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  *&self->_calibrationValidationStatusCmCl = v3;
  self->_coreRepairStatusFrontCameraAssembly = 0x7FFFFFFF;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMovieFileOutputAnalyticsPayload;
  [(BWMovieFileOutputAnalyticsPayload *)&v3 dealloc];
}

- (id)eventName
{
  if (self->_proresVideo)
  {
    return @"com.apple.coremedia.camera.ProResMovieFileCapture";
  }

  else
  {
    return @"com.apple.coremedia.camera.MovieFileCapture";
  }
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [dictionary setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [dictionary setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_videoMirrored), @"videoMirrored"}];
  if (self->_activeDeviceMask)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"activeDeviceMask"}];
  }

  if (self->_devicePosition)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"devicePosition"}];
  }

  if (self->_videoOrientation)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"videoOrientation"}];
  }

  if (self->_cameraPosture)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"cameraPosture"}];
  }

  if (self->_deviceType)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"deviceType"}];
  }

  if (self->_numberOfTimesRecordingWasPaused)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"numberOfTimesRecordingWasPaused"}];
  }

  if (self->_duration != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"duration"}];
  }

  if (self->_durationFront != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"durationFront"}];
  }

  if (self->_durationFrontSuperWide != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_durationFront), @"durationFrontSuperWide"}];
  }

  if (self->_durationRearWide != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"durationRearWide"}];
  }

  if (self->_durationRearTele != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"durationRearTele"}];
  }

  durationRearSuperWide = self->_durationRearSuperWide;
  if (durationRearSuperWide != 0.0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:"), @"durationRearSuperWide"}];
  }

  if (self->_nominalFramerate != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"nominalFramerate"}];
  }

  if (self->_height != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"height"}];
  }

  if (self->_width != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"width"}];
  }

  if (self->_startingUIZoom != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"startingUIZoom"}];
  }

  if (self->_minUIZoomDuringVideoRecording != 3.4028e38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"minUIZoomDuringVideoRecording"}];
  }

  if (self->_maxUIZoomDuringVideoRecording != 1.1755e-38)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), @"maxUIZoomDuringVideoRecording"}];
  }

  *&durationRearSuperWide = self->_averageSystemPressureLevel;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", durationRearSuperWide), @"averageSystemPressureLevel"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxSystemPressureLevel), @"maxSystemPressureLevel"}];
  if ((self->_timeToCriticalSystemPressureInMS & 0x8000000000000000) == 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:"), @"timeToCriticalSystemPressure"}];
  }

  if (self->_systemPressureFactors)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"systemPressureFactors"}];
  }

  sphereAFStatistics = self->_sphereAFStatistics;
  if (sphereAFStatistics)
  {
    *&v5 = sphereAFStatistics->accelStandardDeviation;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v5), @"accelStd"}];
    *&v7 = self->_sphereAFStatistics->gyroStandardDeviation;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v7), @"gyroStd"}];
    v9 = self->_sphereAFStatistics;
    if (v9->numberOfSamplesWide)
    {
      v8.i32[0] = LODWORD(v9->sphereMaxTrackErrorWide);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"oisMaxTrackErrorWide"}];
      *&v10 = self->_sphereAFStatistics->afMaxTrackErrorWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v10), @"afMaxTrackErrorWide"}];
      *&v11 = sqrtf(self->_sphereAFStatistics->sphereStdTrackErrorSumXXWide / self->_sphereAFStatistics->numberOfSamplesWide);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v11), @"oisStdTrackErrorWide"}];
      *&v12 = sqrtf(self->_sphereAFStatistics->afStdTrackErrorSumXXWide / self->_sphereAFStatistics->numberOfSamplesWide);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v12), @"afStdTrackErrorWide"}];
      *&v13 = self->_sphereAFStatistics->sphereMinDistanceFromEndStopWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v13), @"oisMinDistFromEndStopWide"}];
      *&v14 = self->_sphereAFStatistics->spherePowerWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), @"oisPowerWide"}];
      *&v15 = self->_sphereAFStatistics->afPowerWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v15), @"afPowerWide"}];
      *&v16 = self->_sphereAFStatistics->sphereMaxPeakCurrentWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v16), @"oisMaxPeakCurrentWide"}];
      *&v17 = self->_sphereAFStatistics->afMaxPeakCurrentWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v17), @"afMaxPeakCurrentWide"}];
      *&v18 = self->_sphereAFStatistics->afAndSphereMaxPeakCurrentWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v18), @"afAndOisMaxPeakCurrentWide"}];
      *&v19 = self->_sphereAFStatistics->recenteringOccurredWide / self->_sphereAFStatistics->numberOfSamplesWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"oisRecenteringOccurredPercentageWide"}];
      v20 = self->_sphereAFStatistics;
      v8 = *&v20->range_0_90umBinWide;
      v21 = vaddvq_s32(vaddq_s32(v8, *&v20->range_150_175umBinWide));
      if (v21)
      {
        v22 = v21;
        *v8.i32 = v8.u32[0] / v21;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"oisPos0to90micronsWide"}];
        *&v23 = self->_sphereAFStatistics->range_90_110umBinWide / v22;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v23), @"oisPos90to110micronsWide"}];
        *&v24 = self->_sphereAFStatistics->range_110_130umBinWide / v22;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), @"oisPos110to130micronsWide"}];
        *&v25 = self->_sphereAFStatistics->range_130_150umBinWide / v22;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v25), @"oisPos130to150micronsWide"}];
        *&v26 = self->_sphereAFStatistics->range_150_175umBinWide / v22;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v26), @"oisPos150to175micronsWide"}];
        v28 = self->_sphereAFStatistics;
        v29 = MEMORY[0x1E696AD98];
        if (v28->sphereTravelRangeHistogramExtended)
        {
          *&v27 = v28->range_175_220umBinWide / v22;
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v27), @"oisPos175to220micronsWide"}];
          v29 = MEMORY[0x1E696AD98];
          p_range_220_infinityBinWide = &self->_sphereAFStatistics->range_220_infinityBinWide;
          v31 = @"oisPos220toInfmicronsWide";
        }

        else
        {
          p_range_220_infinityBinWide = &v28->range_175_infinityBinWide;
          v31 = @"oisPos175toInfmicronsWide";
        }

        *&v27 = *p_range_220_infinityBinWide / v22;
        [dictionary setObject:objc_msgSend(v29 forKeyedSubscript:{"numberWithFloat:", v27), v31}];
      }
    }

    v32 = self->_sphereAFStatistics;
    if (v32->numberOfSamplesTele)
    {
      v8.i32[0] = LODWORD(v32->sphereMaxTrackErrorTele);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"oisMaxTrackErrorTele"}];
      *&v33 = self->_sphereAFStatistics->afMaxTrackErrorTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v33), @"afMaxTrackErrorTele"}];
      *&v34 = sqrtf(self->_sphereAFStatistics->sphereStdTrackErrorSumXXTele / self->_sphereAFStatistics->numberOfSamplesTele);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), @"oisStdTrackErrorTele"}];
      *&v35 = sqrtf(self->_sphereAFStatistics->afStdTrackErrorSumXXTele / self->_sphereAFStatistics->numberOfSamplesTele);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), @"afStdTrackErrorTele"}];
      *&v36 = self->_sphereAFStatistics->sphereMinDistanceFromEndStopTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v36), @"oisMinDistFromEndStopTele"}];
      *&v37 = self->_sphereAFStatistics->spherePowerTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v37), @"oisPowerTele"}];
      *&v38 = self->_sphereAFStatistics->afPowerTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v38), @"afPowerTele"}];
      *&v39 = self->_sphereAFStatistics->sphereMaxPeakCurrentTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v39), @"oisMaxPeakCurrentTele"}];
      *&v40 = self->_sphereAFStatistics->afMaxPeakCurrentTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v40), @"afMaxPeakCurrentTele"}];
      *&v41 = self->_sphereAFStatistics->afAndSphereMaxPeakCurrentTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v41), @"afAndOisMaxPeakCurrentTele"}];
      *&v42 = self->_sphereAFStatistics->recenteringOccurredTele / self->_sphereAFStatistics->numberOfSamplesTele;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v42), @"oisRecenteringOccurredPercentageTele"}];
      v43 = self->_sphereAFStatistics;
      v8 = *&v43->range_0_90umBinTele;
      v44 = vaddvq_s32(vaddq_s32(v8, *&v43->range_150_175umBinTele));
      if (v44)
      {
        v45 = v44;
        *v8.i32 = v8.u32[0] / v44;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"oisPos0to90micronsTele"}];
        *&v46 = self->_sphereAFStatistics->range_90_110umBinTele / v45;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v46), @"oisPos90to110micronsTele"}];
        *&v47 = self->_sphereAFStatistics->range_110_130umBinTele / v45;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v47), @"oisPos110to130micronsTele"}];
        *&v48 = self->_sphereAFStatistics->range_130_150umBinTele / v45;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v48), @"oisPos130to150micronsTele"}];
        *&v49 = self->_sphereAFStatistics->range_150_175umBinTele / v45;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v49), @"oisPos150to175micronsTele"}];
        v51 = self->_sphereAFStatistics;
        v52 = MEMORY[0x1E696AD98];
        if (v51->sphereTravelRangeHistogramExtended)
        {
          *&v50 = v51->range_175_220umBinTele / v45;
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v50), @"oisPos175to220micronsTele"}];
          v52 = MEMORY[0x1E696AD98];
          p_range_220_infinityBinTele = &self->_sphereAFStatistics->range_220_infinityBinTele;
          v54 = @"oisPos220toInfmicronsTele";
        }

        else
        {
          p_range_220_infinityBinTele = &v51->range_175_infinityBinTele;
          v54 = @"oisPos175toInfmicronsTele";
        }

        *&v50 = *p_range_220_infinityBinTele / v45;
        [dictionary setObject:objc_msgSend(v52 forKeyedSubscript:{"numberWithFloat:", v50), v54}];
      }
    }

    v55 = self->_sphereAFStatistics;
    if (v55->numberOfSamplesSuperWide)
    {
      v8.i32[0] = LODWORD(v55->afMaxTrackErrorSuperWide);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"afMaxTrackErrorSuperWide"}];
      *&v56 = sqrtf(self->_sphereAFStatistics->afStdTrackErrorSumXXSuperWide / self->_sphereAFStatistics->numberOfSamplesSuperWide);
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v56), @"afStdTrackErrorSuperWide"}];
      *&v57 = self->_sphereAFStatistics->afPowerSuperWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v57), @"afPowerSuperWide"}];
      *&v58 = self->_sphereAFStatistics->afMaxPeakCurrentSuperWide;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v58), @"afMaxPeakCurrentSuperWide"}];
      v55 = self->_sphereAFStatistics;
    }

    v8.i32[0] = LODWORD(v55->sphereMaxPeakCurrentAllChannels);
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", *v8.i64), @"oisMaxPeakCurrentAllChannels"}];
    *&v59 = self->_sphereAFStatistics->afMaxPeakCurrentAllChannels;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v59), @"afMaxPeakCurrentAllChannels"}];
    *&v60 = self->_sphereAFStatistics->afAndSphereMaxPeakCurrentAllChannels;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v60), @"afAndOisMaxPeakCurrentAllChannels"}];
  }

  sphereModeByPortType = self->_sphereModeByPortType;
  if (sphereModeByPortType)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](sphereModeByPortType forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0C0), @"sphereModeWide"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_sphereModeByPortType forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D8), @"sphereModeTele"}];
  }

  APSModeByPortType = self->_APSModeByPortType;
  if (APSModeByPortType)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](APSModeByPortType forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0C0), @"apsModeWide"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_APSModeByPortType forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D8), @"apsModeTele"}];
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](self->_APSModeByPortType forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A0D0), @"apsModeSuperWide"}];
  }

  variableFrameRateStatistics = self->_variableFrameRateStatistics;
  if (variableFrameRateStatistics)
  {
    [dictionary setObject:-[NSDictionary objectForKeyedSubscript:](variableFrameRateStatistics forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F21AA150), @"vfrEnabled"}];
    v64 = [(NSDictionary *)self->_variableFrameRateStatistics objectForKeyedSubscript:0x1F21AA170];
    v65 = [v64 objectForKeyedSubscript:&unk_1F2245508];
    v66 = MEMORY[0x1E696AD98];
    if (v65)
    {
      intValue = [v65 intValue];
    }

    else
    {
      intValue = 0;
    }

    [dictionary setObject:objc_msgSend(v66 forKeyedSubscript:{"numberWithInt:", intValue), @"countOfFrameRateChangesDueToInitialization"}];
    v68 = [v64 objectForKeyedSubscript:&unk_1F2245520];
    v69 = MEMORY[0x1E696AD98];
    if (v68)
    {
      intValue2 = [v68 intValue];
    }

    else
    {
      intValue2 = 0;
    }

    [dictionary setObject:objc_msgSend(v69 forKeyedSubscript:{"numberWithInt:", intValue2), @"countOfFrameRateChangesDueToHighLightStable"}];
    v71 = [v64 objectForKeyedSubscript:&unk_1F2245538];
    v72 = MEMORY[0x1E696AD98];
    if (v71)
    {
      intValue3 = [v71 intValue];
    }

    else
    {
      intValue3 = 0;
    }

    [dictionary setObject:objc_msgSend(v72 forKeyedSubscript:{"numberWithInt:", intValue3), @"countOfFrameRateChangesDueToHighLightUnstable"}];
    v74 = [v64 objectForKeyedSubscript:&unk_1F2245550];
    v75 = MEMORY[0x1E696AD98];
    if (v74)
    {
      intValue4 = [v74 intValue];
    }

    else
    {
      intValue4 = 0;
    }

    [dictionary setObject:objc_msgSend(v75 forKeyedSubscript:{"numberWithInt:", intValue4), @"countOfFrameRateChangesDueToHighLightAELimitsReached"}];
    v77 = [v64 objectForKeyedSubscript:&unk_1F2245568];
    v78 = MEMORY[0x1E696AD98];
    if (v77)
    {
      intValue5 = [v77 intValue];
    }

    else
    {
      intValue5 = 0;
    }

    [dictionary setObject:objc_msgSend(v78 forKeyedSubscript:{"numberWithInt:", intValue5), @"countOfFrameRateChangesDueToHighLightFlickerDetected"}];
    v80 = [v64 objectForKeyedSubscript:&unk_1F2245580];
    v81 = MEMORY[0x1E696AD98];
    if (v80)
    {
      intValue6 = [v80 intValue];
    }

    else
    {
      intValue6 = 0;
    }

    [dictionary setObject:objc_msgSend(v81 forKeyedSubscript:{"numberWithInt:", intValue6), @"countOfFrameRateChangesDueToMediumLight"}];
    v83 = [v64 objectForKeyedSubscript:&unk_1F2245598];
    v84 = MEMORY[0x1E696AD98];
    if (v83)
    {
      intValue7 = [v83 intValue];
    }

    else
    {
      intValue7 = 0;
    }

    [dictionary setObject:objc_msgSend(v84 forKeyedSubscript:{"numberWithInt:", intValue7), @"countOfFrameRateChangesDueToMediumLightAELimitsReached"}];
    v86 = [v64 objectForKeyedSubscript:&unk_1F22455B0];
    v87 = MEMORY[0x1E696AD98];
    if (v86)
    {
      intValue8 = [v86 intValue];
    }

    else
    {
      intValue8 = 0;
    }

    [dictionary setObject:objc_msgSend(v87 forKeyedSubscript:{"numberWithInt:", intValue8), @"countOfFrameRateChangesDueToLowLightToHighLightStopOver"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_afDriverShortOccurred), @"afDriverShortOccurred"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_totalNumberOfFramesDropped), @"totalNumberOfFramesDropped"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfFramesDroppedDueToFormatWriterQueueFull), @"numberOfFramesDroppedDueToFormatWriterQueueFull"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfISPFrames), @"numberOfISPFrames"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_numberOfISPFramesDropped), @"numberOfISPFramesDropped"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_hdrVideo), @"hdrVideo"}];
  videoSTFStatistics = self->_videoSTFStatistics;
  if (videoSTFStatistics)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", videoSTFStatistics->videoSTFEnabled), @"videoSTFEnabled"}];
    v90 = self->_videoSTFStatistics;
    if (v90->videoSTFEnabled)
    {
      [dictionary setObject:v90->cancelReason forKeyedSubscript:@"videoSTFCancelReason"];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoSTFStatistics->version), @"videoSTFVersion"}];
      *&v91 = self->_videoSTFStatistics->videoSTFAppliedFrameCountPercentage;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v91), @"videoSTFAppliedFrameCountPercentage"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_videoSTFStatistics->videoSTFAppliedFrameCountPercentage > 0.0), @"videoSTFApplied"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoSTFStatistics->lowMeanCorrectionLevelFrameCount), @"videoSTFLowMeanCorrectionLevelFrameCount"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoSTFStatistics->moderateMeanCorrectionLevelFrameCount), @"videoSTFModerateMeanCorrectionLevelFrameCount"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoSTFStatistics->highMeanCorrectionLevelFrameCount), @"videoSTFHighMeanCorrectionLevelFrameCount"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoSTFStatistics->veryHighMeanCorrectionLevelFrameCount), @"videoSTFVeryHighMeanCorrectionLevelFrameCount"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_videoSTFStatistics->extremeMeanCorrectionLevelFrameCount), @"videoSTFExtremeMeanCorrectionLevelFrameCount"}];
      *&v92 = self->_videoSTFStatistics->largestMaxCorrectionLevel;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v92), @"videoSTFLargestMaxCorrectionLevel"}];
    }
  }

  videoDeghostingStatistics = self->_videoDeghostingStatistics;
  if (videoDeghostingStatistics)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", videoDeghostingStatistics->enabled), @"videoDeghostingEnabled"}];
    v94 = self->_videoDeghostingStatistics;
    if (v94->enabled)
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v94->version), @"videoDeghostingVersion"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_videoDeghostingStatistics->averageGhostCount), @"videoDeghostingAverageGhostCount"}];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_videoDeghostingStatistics->averageGhostArea), @"videoDeghostingAverageGhostArea"}];
      *&v95 = self->_videoDeghostingStatistics->opticalCenterOffsetMag;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v95), @"videoDeghostingOpticalCenterOffsetMag"}];
      *&v96 = self->_videoDeghostingStatistics->opticalCenterOffsetX;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v96), @"videoDeghostingOpticalCenterOffsetX"}];
      *&v97 = self->_videoDeghostingStatistics->opticalCenterOffsetY;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v97), @"videoDeghostingOpticalCenterOffsetY"}];
      *&v98 = self->_videoDeghostingStatistics->opticalCenterEstConfidence;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v98), @"videoDeghostingOpticalCenterEstConfidence"}];
      *&v99 = self->_videoDeghostingStatistics->lightweightDetector1Precision;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v99), @"videoDeghostingLightweightDetector1Precision"}];
      *&v100 = self->_videoDeghostingStatistics->lightweightDetector1Recall;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v100), @"videoDeghostingLightweightDetector1Recall"}];
      *&v101 = self->_videoDeghostingStatistics->lightweightDetector2Precision;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v101), @"videoDeghostingLightweightDetector2Precision"}];
      *&v102 = self->_videoDeghostingStatistics->lightweightDetector2Recall;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v102), @"videoDeghostingLightweightDetector2Recall"}];
      *&v103 = self->_videoDeghostingStatistics->lightweightDetector3Precision;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v103), @"videoDeghostingLightweightDetector3Precision"}];
      *&v104 = self->_videoDeghostingStatistics->lightweightDetector3Recall;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v104), @"videoDeghostingLightweightDetector3Recall"}];
      *&v105 = self->_videoDeghostingStatistics->lightweightDetector4Precision;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v105), @"videoDeghostingLightweightDetector4Precision"}];
      *&v106 = self->_videoDeghostingStatistics->lightweightDetector4Recall;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v106), @"videoDeghostingLightweightDetector4Recall"}];
      *&v107 = self->_videoDeghostingStatistics->lightweightDetector5Precision;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v107), @"videoDeghostingLightweightDetector5Precision"}];
      *&v108 = self->_videoDeghostingStatistics->lightweightDetector5Recall;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v108), @"videoDeghostingLightweightDetector5Recall"}];
    }
  }

  v109 = *off_1E798A0C0;
  v110 = [(NSDictionary *)self->_cameraSwitchStatistics objectForKeyedSubscript:*off_1E798A0C0];
  v111 = *off_1E798A0D0;
  v112 = [v110 objectForKeyedSubscript:*off_1E798A0D0];
  if (v112)
  {
    v113 = v112;
  }

  else
  {
    v113 = &unk_1F22455C8;
  }

  [dictionary setObject:v113 forKeyedSubscript:@"countOfWideToSuperWide"];
  v114 = [-[NSDictionary objectForKeyedSubscript:](self->_cameraSwitchStatistics objectForKeyedSubscript:{v111), "objectForKeyedSubscript:", v109}];
  if (v114)
  {
    v115 = v114;
  }

  else
  {
    v115 = &unk_1F22455C8;
  }

  [dictionary setObject:v115 forKeyedSubscript:@"countOfSuperWideToWide"];
  v116 = [(NSDictionary *)self->_cameraSwitchStatistics objectForKeyedSubscript:v111];
  v117 = *off_1E798A0D8;
  v118 = [v116 objectForKeyedSubscript:*off_1E798A0D8];
  if (v118)
  {
    v119 = v118;
  }

  else
  {
    v119 = &unk_1F22455C8;
  }

  [dictionary setObject:v119 forKeyedSubscript:@"countOfSuperWideToTele"];
  v120 = [-[NSDictionary objectForKeyedSubscript:](self->_cameraSwitchStatistics objectForKeyedSubscript:{v117), "objectForKeyedSubscript:", v111}];
  if (v120)
  {
    v121 = v120;
  }

  else
  {
    v121 = &unk_1F22455C8;
  }

  [dictionary setObject:v121 forKeyedSubscript:@"countOfTeleToSuperWide"];
  v122 = [-[NSDictionary objectForKeyedSubscript:](self->_cameraSwitchStatistics objectForKeyedSubscript:{v109), "objectForKeyedSubscript:", v117}];
  if (v122)
  {
    v123 = v122;
  }

  else
  {
    v123 = &unk_1F22455C8;
  }

  [dictionary setObject:v123 forKeyedSubscript:@"countOfWideToTele"];
  v124 = [-[NSDictionary objectForKeyedSubscript:](self->_cameraSwitchStatistics objectForKeyedSubscript:{v117), "objectForKeyedSubscript:", v109}];
  if (v124)
  {
    v125 = v124;
  }

  else
  {
    v125 = &unk_1F22455C8;
  }

  [dictionary setObject:v125 forKeyedSubscript:@"countOfTeleToWide"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_cinematicVideoEnabled), @"cinematicVideoEnabled"}];
  if (self->_cinematicVideoEnabled)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfSoftFocusRequests), @"cinematicVideoCountOfSoftFocusRequests"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfHardFocusRequests), @"cinematicVideoCountOfHardFocusRequests"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfFixedPlaneFocusRequests), @"cinematicVideoCountOfFixedPlaneFocusRequests"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfTapToTrackFailures), @"cinematicVideoCountOfTapToTrackFailures"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfFixedTaxonomyFocusDecisions), @"cinematicVideoCountOfFixedTaxonomyFocusDecisions"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfNonTaxonomyFocusDecisions), @"cinematicVideoCountOfNonTaxonomyFocusDecisions"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfCustomFocusDecisions), @"cinematicVideoCountOfCustomFocusDecisions"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicVideoMovieRecordingStats.countOfAutoFocusDecisions), @"cinematicVideoCountOfAutoFocusDecisions"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_cinematicAudioEnabled), @"cinematicAudioEnabled"}];
  if (self->_cinematicAudioEnabled)
  {
    *&v126 = self->_cinematicAudioRemixStats.ambienceGain;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v126), 0x1F21A9990}];
    *&v127 = self->_cinematicAudioRemixStats.ambienceLoudness;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v127), 0x1F21A99B0}];
    *&v128 = self->_cinematicAudioRemixStats.dialogueGain;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v128), 0x1F21A99D0}];
    *&v129 = self->_cinematicAudioRemixStats.dialogueLoudness;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v129), 0x1F21A99F0}];
    *&v130 = self->_cinematicAudioRemixStats.recordingLoudness;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v130), 0x1F21A9A10}];
  }

  [dictionary setObject:self->_videoCodec forKeyedSubscript:@"videoCodec"];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_movieFileSize), @"fileSize"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", self->_movieFileSize * 0.000000953674316), @"fileSizeInMB"}];
  *&v131 = self->_percentageOfAvailableDataStorageAfterWritingMovie;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v131), @"percentageOfAvailableDataStorageAfterWritingMovie"}];
  totalNANDReadBytesDuringRecording = self->_totalNANDReadBytesDuringRecording;
  if ((totalNANDReadBytesDuringRecording & 0x8000000000000000) == 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", vcvtd_n_f64_u64(totalNANDReadBytesDuringRecording, 0x14uLL)), @"totalNANDReadSizeDuringRecordingInMB"}];
  }

  totalNANDWriteBytesDuringRecording = self->_totalNANDWriteBytesDuringRecording;
  if ((totalNANDWriteBytesDuringRecording & 0x8000000000000000) == 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", vcvtd_n_f64_s64(totalNANDWriteBytesDuringRecording - self->_movieFileSize, 0x14uLL)), @"totalNANDWriteSizeAndFileSizeDifferenceInMB"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_capturingOntoExternalStorageDevice), @"capturingOntoExternalStorageDevice"}];
  externalStorageDeviceProductName = self->_externalStorageDeviceProductName;
  if (externalStorageDeviceProductName)
  {
    [dictionary setObject:externalStorageDeviceProductName forKeyedSubscript:@"externalStorageDeviceProductName"];
  }

  externalStorageDeviceVendorName = self->_externalStorageDeviceVendorName;
  if (externalStorageDeviceVendorName)
  {
    [dictionary setObject:externalStorageDeviceVendorName forKeyedSubscript:@"externalStorageDeviceVendorName"];
  }

  if (self->_externalStorageDeviceTotalSize)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:"), @"externalStorageDeviceTotalSize"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", self->_externalStorageDeviceBaseOffset), @"externalStorageDeviceBaseOffset"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_colorSpace), @"colorSpace"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_stereoVideoCaptureEnabled), @"stereoVideoCaptureEnabled"}];
  if (self->_stereoVideoCaptureEnabled)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_stereoVideoCaptureStatus), @"stereoVideoCaptureStatus"}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_audioWasPlayingDuringCapture), @"audioWasPlayingDuringCapture"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_audioMixWithOthersEnabled), @"audioMixWithOthersEnabled"}];
  if (self->_calibrationValidationStatusCmCl != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusCmCl"}];
  }

  if (self->_calibrationValidationStatusCmPM != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusCmPM"}];
  }

  if (self->_calibrationValidationStatusFCCl != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"calibrationValidationStatusFCCl"}];
  }

  if (self->_coreRepairStatusRearCameraAssembly != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"coreRepairStatusRearCameraAssembly"}];
  }

  if (self->_coreRepairStatusFrontCameraAssembly != 0x7FFFFFFF)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"coreRepairStatusFrontCameraAssembly"}];
  }

  return dictionary;
}

- (BWCoreAnalyticsMovieRecordingCinematicVideoStatistics)cinematicVideoMovieRecordingStats
{
  v3 = *&self[8].countOfNonTaxonomyFocusDecisions;
  *&retstr->countOfSoftFocusRequests = *&self[8].countOfHardFocusRequests;
  *&retstr->countOfFixedTaxonomyFocusDecisions = v3;
  return self;
}

- (void)setCinematicVideoMovieRecordingStats:(BWCoreAnalyticsMovieRecordingCinematicVideoStatistics *)stats
{
  v3 = *&stats->countOfFixedTaxonomyFocusDecisions;
  *&self->_cinematicVideoMovieRecordingStats.countOfSoftFocusRequests = *&stats->countOfSoftFocusRequests;
  *&self->_cinematicVideoMovieRecordingStats.countOfFixedTaxonomyFocusDecisions = v3;
}

- (void)setCinematicAudioRemixStats:(BWCoreAnalyticsMovieRecordingCinematicAudioRemixStatistics *)stats
{
  v3 = *&stats->dialogueGain;
  self->_cinematicAudioRemixStats.recordingLoudness = stats->recordingLoudness;
  *&self->_cinematicAudioRemixStats.dialogueGain = v3;
}

@end