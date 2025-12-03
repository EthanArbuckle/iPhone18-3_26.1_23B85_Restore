@interface NCCameraStateChangedRequest
- (BOOL)isEqual:(id)equal;
- (float)significantZoomMagnificationsAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCaptureDevice:(id)device;
- (int)StringAsCaptureMode:(id)mode;
- (int)StringAsFlashMode:(id)mode;
- (int)StringAsFlashSupport:(id)support;
- (int)StringAsHdrMode:(id)mode;
- (int)StringAsHdrSupport:(id)support;
- (int)StringAsIrisMode:(id)mode;
- (int)StringAsIrisSupport:(id)support;
- (int)StringAsOrientation:(id)orientation;
- (int)StringAsShallowDepthOfFieldStatus:(id)status;
- (int)StringAsSharedLibraryMode:(id)mode;
- (int)StringAsSharedLibrarySupport:(id)support;
- (int)StringAsStereoCaptureStatus:(id)status;
- (int)StringAsSupportedCaptureDevices:(id)devices;
- (int)StringAsSupportedCaptureModes:(id)modes;
- (int)captureDevice;
- (int)captureMode;
- (int)flashMode;
- (int)flashSupport;
- (int)hdrMode;
- (int)hdrSupport;
- (int)irisMode;
- (int)irisSupport;
- (int)orientation;
- (int)shallowDepthOfFieldStatus;
- (int)sharedLibraryMode;
- (int)sharedLibrarySupport;
- (int)stereoCaptureStatus;
- (int)supportedCaptureDeviceAtIndex:(unint64_t)index;
- (int)supportedCaptureModeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBurstSupport:(BOOL)support;
- (void)setHasCaptureDevice:(BOOL)device;
- (void)setHasCaptureMode:(BOOL)mode;
- (void)setHasCaptureStartDate:(BOOL)date;
- (void)setHasCapturing:(BOOL)capturing;
- (void)setHasCapturingPaused:(BOOL)paused;
- (void)setHasCurrentZoomMagnification:(BOOL)magnification;
- (void)setHasFlashMode:(BOOL)mode;
- (void)setHasFlashSupport:(BOOL)support;
- (void)setHasHdrMode:(BOOL)mode;
- (void)setHasHdrSupport:(BOOL)support;
- (void)setHasIrisMode:(BOOL)mode;
- (void)setHasIrisSupport:(BOOL)support;
- (void)setHasIsSpatialCapture:(BOOL)capture;
- (void)setHasMaximumZoomMagnification:(BOOL)magnification;
- (void)setHasMinimumZoomMagnification:(BOOL)magnification;
- (void)setHasOrientation:(BOOL)orientation;
- (void)setHasShallowDepthOfFieldStatus:(BOOL)status;
- (void)setHasSharedLibraryMode:(BOOL)mode;
- (void)setHasSharedLibrarySupport:(BOOL)support;
- (void)setHasStereoCaptureStatus:(BOOL)status;
- (void)setHasSupportsMomentCapture:(BOOL)capture;
- (void)setHasToggleCameraDeviceSupport:(BOOL)support;
- (void)setHasViewfinderSessionActive:(BOOL)active;
- (void)setHasZoomAmount:(BOOL)amount;
- (void)setHasZoomMagnificationSupport:(BOOL)support;
- (void)setHasZoomSupport:(BOOL)support;
- (void)writeTo:(id)to;
@end

@implementation NCCameraStateChangedRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedFloatClear();
  v3.receiver = self;
  v3.super_class = NCCameraStateChangedRequest;
  [(NCCameraStateChangedRequest *)&v3 dealloc];
}

- (int)orientation
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_orientation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)StringAsOrientation:(id)orientation
{
  orientationCopy = orientation;
  if ([orientationCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([orientationCopy isEqualToString:@"Portrait"])
  {
    v4 = 1;
  }

  else if ([orientationCopy isEqualToString:@"PortraitUpsideDown"])
  {
    v4 = 2;
  }

  else if ([orientationCopy isEqualToString:@"LandscapeLeft"])
  {
    v4 = 3;
  }

  else if ([orientationCopy isEqualToString:@"LandscapeRight"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasZoomAmount:(BOOL)amount
{
  if (amount)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)flashSupport
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_flashSupport;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFlashSupport:(BOOL)support
{
  if (support)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)StringAsFlashSupport:(id)support
{
  supportCopy = support;
  if ([supportCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([supportCopy isEqualToString:@"OnOff"])
  {
    v4 = 1;
  }

  else if ([supportCopy isEqualToString:@"AutoOnOff"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)flashMode
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_flashMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFlashMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)StringAsFlashMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"On"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Auto"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)hdrSupport
{
  if (*(&self->_has + 1))
  {
    return self->_hdrSupport;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHdrSupport:(BOOL)support
{
  if (support)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (int)StringAsHdrSupport:(id)support
{
  supportCopy = support;
  if ([supportCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([supportCopy isEqualToString:@"OnOff"])
  {
    v4 = 1;
  }

  else if ([supportCopy isEqualToString:@"AutoOff"])
  {
    v4 = 2;
  }

  else if ([supportCopy isEqualToString:@"AutoOnOff"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)hdrMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_hdrMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHdrMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsHdrMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"On"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Auto"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)irisSupport
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_irisSupport;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIrisSupport:(BOOL)support
{
  if (support)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (int)StringAsIrisSupport:(id)support
{
  supportCopy = support;
  if ([supportCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([supportCopy isEqualToString:@"OnOff"])
  {
    v4 = 1;
  }

  else if ([supportCopy isEqualToString:@"AutoOnOff"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)irisMode
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_irisMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIrisMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)StringAsIrisMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"On"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Auto"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBurstSupport:(BOOL)support
{
  if (support)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (int)captureMode
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_captureMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCaptureMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsCaptureMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Video"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Square"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"Timelapse"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"Portrait"])
  {
    v4 = 7;
  }

  else if ([modeCopy isEqualToString:@"Slomo"])
  {
    v4 = 8;
  }

  else if ([modeCopy isEqualToString:@"Panorama"])
  {
    v4 = 9;
  }

  else if ([modeCopy isEqualToString:@"Cinematic"])
  {
    v4 = 10;
  }

  else if ([modeCopy isEqualToString:@"SpatialVideo"])
  {
    v4 = 11;
  }

  else if ([modeCopy isEqualToString:@"SpatialPhoto"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasToggleCameraDeviceSupport:(BOOL)support
{
  if (support)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasZoomSupport:(BOOL)support
{
  if (support)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (int)supportedCaptureModeAtIndex:(unint64_t)index
{
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  count = self->_supportedCaptureModes.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedCaptureModes->list[index];
}

- (int)StringAsSupportedCaptureModes:(id)modes
{
  modesCopy = modes;
  if ([modesCopy isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([modesCopy isEqualToString:@"Video"])
  {
    v4 = 1;
  }

  else if ([modesCopy isEqualToString:@"Square"])
  {
    v4 = 3;
  }

  else if ([modesCopy isEqualToString:@"Timelapse"])
  {
    v4 = 5;
  }

  else if ([modesCopy isEqualToString:@"Portrait"])
  {
    v4 = 7;
  }

  else if ([modesCopy isEqualToString:@"Slomo"])
  {
    v4 = 8;
  }

  else if ([modesCopy isEqualToString:@"Panorama"])
  {
    v4 = 9;
  }

  else if ([modesCopy isEqualToString:@"Cinematic"])
  {
    v4 = 10;
  }

  else if ([modesCopy isEqualToString:@"SpatialVideo"])
  {
    v4 = 11;
  }

  else if ([modesCopy isEqualToString:@"SpatialPhoto"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCapturing:(BOOL)capturing
{
  if (capturing)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasCaptureStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasViewfinderSessionActive:(BOOL)active
{
  if (active)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (int)shallowDepthOfFieldStatus
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_shallowDepthOfFieldStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasShallowDepthOfFieldStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)StringAsShallowDepthOfFieldStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Unsupported"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"Enabled"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"LensOccluded"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"SubjectTooFar"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"SubjectTooClose"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"NotEnoughLight"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"DeviceTooHot"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"TooMuchLight"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"BackgroundTooFar"])
  {
    v4 = 8;
  }

  else if ([statusCopy isEqualToString:@"EnabledWideDualLowLightAvailable"])
  {
    v4 = 9;
  }

  else if ([statusCopy isEqualToString:@"NotEnoughLightWideDualLowLightAvailable"])
  {
    v4 = 10;
  }

  else if ([statusCopy isEqualToString:@"AvailableAndSuggested"])
  {
    v4 = 11;
  }

  else if ([statusCopy isEqualToString:@"AvailableAndNotSuggested"])
  {
    v4 = 12;
  }

  else if ([statusCopy isEqualToString:@"EnabledAndSuggested"])
  {
    v4 = 13;
  }

  else if ([statusCopy isEqualToString:@"EnabledAndNotSuggested"])
  {
    v4 = 14;
  }

  else if ([statusCopy isEqualToString:@"PeakPowerExceeded"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSupportsMomentCapture:(BOOL)capture
{
  if (capture)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (int)supportedCaptureDeviceAtIndex:(unint64_t)index
{
  p_supportedCaptureDevices = &self->_supportedCaptureDevices;
  count = self->_supportedCaptureDevices.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_supportedCaptureDevices->list[index];
}

- (int)StringAsSupportedCaptureDevices:(id)devices
{
  devicesCopy = devices;
  if ([devicesCopy isEqualToString:@"Back"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [devicesCopy isEqualToString:@"Front"];
  }

  return v4;
}

- (int)captureDevice
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_captureDevice;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCaptureDevice:(BOOL)device
{
  if (device)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)StringAsCaptureDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isEqualToString:@"Back"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [deviceCopy isEqualToString:@"Front"];
  }

  return v4;
}

- (int)sharedLibrarySupport
{
  if (*(&self->_has + 2))
  {
    return self->_sharedLibrarySupport;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSharedLibrarySupport:(BOOL)support
{
  if (support)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (int)StringAsSharedLibrarySupport:(id)support
{
  supportCopy = support;
  if ([supportCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [supportCopy isEqualToString:@"OnOff"];
  }

  return v4;
}

- (int)sharedLibraryMode
{
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    return self->_sharedLibraryMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSharedLibraryMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)StringAsSharedLibraryMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"On"];
  }

  return v4;
}

- (void)setHasZoomMagnificationSupport:(BOOL)support
{
  if (support)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasMinimumZoomMagnification:(BOOL)magnification
{
  if (magnification)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMaximumZoomMagnification:(BOOL)magnification
{
  if (magnification)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (float)significantZoomMagnificationsAtIndex:(unint64_t)index
{
  p_significantZoomMagnifications = &self->_significantZoomMagnifications;
  count = self->_significantZoomMagnifications.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_significantZoomMagnifications->list[index];
}

- (void)setHasCurrentZoomMagnification:(BOOL)magnification
{
  if (magnification)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasIsSpatialCapture:(BOOL)capture
{
  if (capture)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasCapturingPaused:(BOOL)paused
{
  if (paused)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (int)stereoCaptureStatus
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_stereoCaptureStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStereoCaptureStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (int)StringAsStereoCaptureStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Active"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"Disabled"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"NotEnoughLight"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"SubjectTooClose"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCCameraStateChangedRequest;
  v3 = [(NCCameraStateChangedRequest *)&v7 description];
  dictionaryRepresentation = [(NCCameraStateChangedRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    orientation = self->_orientation;
    if (orientation >= 5)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_orientation];
    }

    else
    {
      v7 = *(&off_100034BE0 + orientation);
    }

    [v3 setObject:v7 forKey:@"orientation"];

    has = self->_has;
  }

  if ((*&has & 0x40000) != 0)
  {
    *&v4 = self->_zoomAmount;
    v26 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v26 forKey:@"zoomAmount"];

    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_8:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_79;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_8;
  }

  flashSupport = self->_flashSupport;
  if (flashSupport >= 3)
  {
    v28 = [NSString stringWithFormat:@"(unknown: %i)", self->_flashSupport];
  }

  else
  {
    v28 = *(&off_100034C28 + flashSupport);
  }

  [v3 setObject:v28 forKey:@"flashSupport"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_86;
  }

LABEL_79:
  flashMode = self->_flashMode;
  if (flashMode >= 3)
  {
    v45 = [NSString stringWithFormat:@"(unknown: %i)", self->_flashMode];
  }

  else
  {
    v45 = *(&off_100034C40 + flashMode);
  }

  [v3 setObject:v45 forKey:@"flashMode"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_86:
  hdrSupport = self->_hdrSupport;
  if (hdrSupport >= 4)
  {
    v47 = [NSString stringWithFormat:@"(unknown: %i)", self->_hdrSupport];
  }

  else
  {
    v47 = *(&off_100034C08 + hdrSupport);
  }

  [v3 setObject:v47 forKey:@"hdrSupport"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_94;
  }

LABEL_90:
  hdrMode = self->_hdrMode;
  if (hdrMode >= 3)
  {
    v49 = [NSString stringWithFormat:@"(unknown: %i)", self->_hdrMode];
  }

  else
  {
    v49 = *(&off_100034C40 + hdrMode);
  }

  [v3 setObject:v49 forKey:@"hdrMode"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_98;
  }

LABEL_94:
  irisSupport = self->_irisSupport;
  if (irisSupport >= 3)
  {
    v51 = [NSString stringWithFormat:@"(unknown: %i)", self->_irisSupport];
  }

  else
  {
    v51 = *(&off_100034C28 + irisSupport);
  }

  [v3 setObject:v51 forKey:@"irisSupport"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_102;
  }

LABEL_98:
  irisMode = self->_irisMode;
  if (irisMode >= 3)
  {
    v53 = [NSString stringWithFormat:@"(unknown: %i)", self->_irisMode];
  }

  else
  {
    v53 = *(&off_100034C40 + irisMode);
  }

  [v3 setObject:v53 forKey:@"irisMode"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_103;
  }

LABEL_102:
  v54 = [NSNumber numberWithBool:self->_burstSupport];
  [v3 setObject:v54 forKey:@"burstSupport"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_108;
  }

LABEL_103:
  captureMode = self->_captureMode;
  if (captureMode < 0xD && ((0x1FABu >> captureMode) & 1) != 0)
  {
    v56 = *(&off_100034C58 + captureMode);
  }

  else
  {
    v56 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureMode];
  }

  [v3 setObject:v56 forKey:@"captureMode"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_108:
  v57 = [NSNumber numberWithBool:self->_toggleCameraDeviceSupport];
  [v3 setObject:v57 forKey:@"toggleCameraDeviceSupport"];

  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_17:
    v8 = [NSNumber numberWithBool:self->_zoomSupport];
    [v3 setObject:v8 forKey:@"zoomSupport"];
  }

LABEL_18:
  p_supportedCaptureModes = &self->_supportedCaptureModes;
  if (self->_supportedCaptureModes.count)
  {
    v10 = [NSMutableArray arrayWithCapacity:?];
    if (self->_supportedCaptureModes.count)
    {
      v11 = 0;
      do
      {
        v12 = p_supportedCaptureModes->list[v11];
        if (v12 < 0xD && ((0x1FABu >> v12) & 1) != 0)
        {
          v13 = *(&off_100034C58 + v12);
        }

        else
        {
          v13 = [NSString stringWithFormat:@"(unknown: %i)", p_supportedCaptureModes->list[v11]];
        }

        [v10 addObject:v13];

        ++v11;
      }

      while (v11 < self->_supportedCaptureModes.count);
    }

    [v3 setObject:v10 forKey:@"supportedCaptureMode"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x100000) != 0)
  {
    v29 = [NSNumber numberWithBool:self->_capturing];
    [v3 setObject:v29 forKey:@"capturing"];

    v14 = self->_has;
    if ((*&v14 & 2) == 0)
    {
LABEL_29:
      if ((*&v14 & 0x2000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v14 & 2) == 0)
  {
    goto LABEL_29;
  }

  v30 = [NSNumber numberWithDouble:self->_captureStartDate];
  [v3 setObject:v30 forKey:@"captureStartDate"];

  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_30:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v31 = [NSNumber numberWithBool:self->_viewfinderSessionActive];
  [v3 setObject:v31 forKey:@"viewfinderSessionActive"];

  v14 = self->_has;
  if ((*&v14 & 0x4000) == 0)
  {
LABEL_31:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_62:
  shallowDepthOfFieldStatus = self->_shallowDepthOfFieldStatus;
  if (shallowDepthOfFieldStatus >= 0x10)
  {
    v33 = [NSString stringWithFormat:@"(unknown: %i)", self->_shallowDepthOfFieldStatus];
  }

  else
  {
    v33 = *(&off_100034CC0 + shallowDepthOfFieldStatus);
  }

  [v3 setObject:v33 forKey:@"shallowDepthOfFieldStatus"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_32:
    v15 = [NSNumber numberWithBool:self->_supportsMomentCapture];
    [v3 setObject:v15 forKey:@"supportsMomentCapture"];
  }

LABEL_33:
  p_supportedCaptureDevices = &self->_supportedCaptureDevices;
  if (self->_supportedCaptureDevices.count)
  {
    v17 = [NSMutableArray arrayWithCapacity:?];
    if (self->_supportedCaptureDevices.count)
    {
      v18 = 0;
      do
      {
        v19 = p_supportedCaptureDevices->list[v18];
        if (v19)
        {
          if (v19 == 1)
          {
            v20 = @"Front";
          }

          else
          {
            v20 = [NSString stringWithFormat:@"(unknown: %i)", p_supportedCaptureDevices->list[v18]];
          }
        }

        else
        {
          v20 = @"Back";
        }

        [v17 addObject:v20];

        ++v18;
      }

      while (v18 < self->_supportedCaptureDevices.count);
    }

    [v3 setObject:v17 forKey:@"supportedCaptureDevice"];
  }

  v21 = self->_has;
  if ((*&v21 & 4) != 0)
  {
    captureDevice = self->_captureDevice;
    if (captureDevice)
    {
      if (captureDevice == 1)
      {
        v35 = @"Front";
      }

      else
      {
        v35 = [NSString stringWithFormat:@"(unknown: %i)", self->_captureDevice];
      }
    }

    else
    {
      v35 = @"Back";
    }

    [v3 setObject:v35 forKey:@"captureDevice"];

    v21 = self->_has;
    if ((*&v21 & 0x10000) == 0)
    {
LABEL_45:
      if ((*&v21 & 0x8000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_119;
    }
  }

  else if ((*&v21 & 0x10000) == 0)
  {
    goto LABEL_45;
  }

  sharedLibrarySupport = self->_sharedLibrarySupport;
  if (sharedLibrarySupport)
  {
    if (sharedLibrarySupport == 1)
    {
      v59 = @"OnOff";
    }

    else
    {
      v59 = [NSString stringWithFormat:@"(unknown: %i)", self->_sharedLibrarySupport];
    }
  }

  else
  {
    v59 = @"None";
  }

  [v3 setObject:v59 forKey:@"sharedLibrarySupport"];

  v21 = self->_has;
  if ((*&v21 & 0x8000) == 0)
  {
LABEL_46:
    if ((*&v21 & 0x4000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_125;
  }

LABEL_119:
  sharedLibraryMode = self->_sharedLibraryMode;
  if (sharedLibraryMode)
  {
    if (sharedLibraryMode == 1)
    {
      v61 = @"On";
    }

    else
    {
      v61 = [NSString stringWithFormat:@"(unknown: %i)", self->_sharedLibraryMode];
    }
  }

  else
  {
    v61 = @"Off";
  }

  [v3 setObject:v61 forKey:@"sharedLibraryMode"];

  v21 = self->_has;
  if ((*&v21 & 0x4000000) == 0)
  {
LABEL_47:
    if ((*&v21 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_126;
  }

LABEL_125:
  v62 = [NSNumber numberWithBool:self->_zoomMagnificationSupport];
  [v3 setObject:v62 forKey:@"zoomMagnificationSupport"];

  v21 = self->_has;
  if ((*&v21 & 0x1000) == 0)
  {
LABEL_48:
    if ((*&v21 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_126:
  *&v4 = self->_minimumZoomMagnification;
  v63 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v63 forKey:@"minimumZoomMagnification"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_49:
    *&v4 = self->_maximumZoomMagnification;
    v22 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v22 forKey:@"maximumZoomMagnification"];
  }

LABEL_50:
  v23 = PBRepeatedFloatNSArray();
  [v3 setObject:v23 forKey:@"significantZoomMagnifications"];

  v25 = self->_has;
  if ((*&v25 & 0x10) != 0)
  {
    *&v24 = self->_currentZoomMagnification;
    v36 = [NSNumber numberWithFloat:v24];
    [v3 setObject:v36 forKey:@"currentZoomMagnification"];

    v25 = self->_has;
    if ((*&v25 & 0x400000) == 0)
    {
LABEL_52:
      if ((*&v25 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v25 & 0x400000) == 0)
  {
    goto LABEL_52;
  }

  v37 = [NSNumber numberWithBool:self->_isSpatialCapture];
  [v3 setObject:v37 forKey:@"isSpatialCapture"];

  v25 = self->_has;
  if ((*&v25 & 1) == 0)
  {
LABEL_53:
    if ((*&v25 & 0x200000) == 0)
    {
      goto LABEL_54;
    }

LABEL_70:
    v39 = [NSNumber numberWithBool:self->_capturingPaused];
    [v3 setObject:v39 forKey:@"capturingPaused"];

    if ((*&self->_has & 0x20000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

LABEL_69:
  v38 = [NSNumber numberWithDouble:self->_capturePauseDate];
  [v3 setObject:v38 forKey:@"capturePauseDate"];

  v25 = self->_has;
  if ((*&v25 & 0x200000) != 0)
  {
    goto LABEL_70;
  }

LABEL_54:
  if ((*&v25 & 0x20000) == 0)
  {
    goto LABEL_76;
  }

LABEL_71:
  stereoCaptureStatus = self->_stereoCaptureStatus;
  if (stereoCaptureStatus < 5 && ((0x17u >> stereoCaptureStatus) & 1) != 0)
  {
    v41 = *(&off_100034D40 + stereoCaptureStatus);
  }

  else
  {
    v41 = [NSString stringWithFormat:@"(unknown: %i)", self->_stereoCaptureStatus];
  }

  [v3 setObject:v41 forKey:@"stereoCaptureStatus"];

LABEL_76:
  v42 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v43 = toCopy;
  if ((*&has & 0x2000) != 0)
  {
    orientation = self->_orientation;
    PBDataWriterWriteInt32Field();
    toCopy = v43;
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  zoomAmount = self->_zoomAmount;
  PBDataWriterWriteFloatField();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  flashSupport = self->_flashSupport;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  flashMode = self->_flashMode;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  hdrSupport = self->_hdrSupport;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  hdrMode = self->_hdrMode;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  irisSupport = self->_irisSupport;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  irisMode = self->_irisMode;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  burstSupport = self->_burstSupport;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  captureMode = self->_captureMode;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_55:
  toggleCameraDeviceSupport = self->_toggleCameraDeviceSupport;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_13:
    zoomSupport = self->_zoomSupport;
    PBDataWriterWriteBOOLField();
    toCopy = v43;
  }

LABEL_14:
  if (self->_supportedCaptureModes.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_supportedCaptureModes.list[v7];
      PBDataWriterWriteInt32Field();
      toCopy = v43;
      ++v7;
    }

    while (v7 < self->_supportedCaptureModes.count);
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    capturing = self->_capturing;
    PBDataWriterWriteBOOLField();
    toCopy = v43;
    v9 = self->_has;
    if ((*&v9 & 2) == 0)
    {
LABEL_19:
      if ((*&v9 & 0x2000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v9 & 2) == 0)
  {
    goto LABEL_19;
  }

  captureStartDate = self->_captureStartDate;
  PBDataWriterWriteDoubleField();
  toCopy = v43;
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  viewfinderSessionActive = self->_viewfinderSessionActive;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_60:
  shallowDepthOfFieldStatus = self->_shallowDepthOfFieldStatus;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_22:
    supportsMomentCapture = self->_supportsMomentCapture;
    PBDataWriterWriteBOOLField();
    toCopy = v43;
  }

LABEL_23:
  if (self->_supportedCaptureDevices.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_supportedCaptureDevices.list[v11];
      PBDataWriterWriteInt32Field();
      toCopy = v43;
      ++v11;
    }

    while (v11 < self->_supportedCaptureDevices.count);
  }

  v13 = self->_has;
  if ((*&v13 & 4) != 0)
  {
    captureDevice = self->_captureDevice;
    PBDataWriterWriteInt32Field();
    toCopy = v43;
    v13 = self->_has;
    if ((*&v13 & 0x10000) == 0)
    {
LABEL_28:
      if ((*&v13 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v13 & 0x10000) == 0)
  {
    goto LABEL_28;
  }

  sharedLibrarySupport = self->_sharedLibrarySupport;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_29:
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  sharedLibraryMode = self->_sharedLibraryMode;
  PBDataWriterWriteInt32Field();
  toCopy = v43;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_30:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  zoomMagnificationSupport = self->_zoomMagnificationSupport;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_31:
    if ((*&v13 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_66:
  minimumZoomMagnification = self->_minimumZoomMagnification;
  PBDataWriterWriteFloatField();
  toCopy = v43;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_32:
    maximumZoomMagnification = self->_maximumZoomMagnification;
    PBDataWriterWriteFloatField();
    toCopy = v43;
  }

LABEL_33:
  if (self->_significantZoomMagnifications.count)
  {
    v15 = 0;
    do
    {
      v16 = self->_significantZoomMagnifications.list[v15];
      PBDataWriterWriteFloatField();
      toCopy = v43;
      ++v15;
    }

    while (v15 < self->_significantZoomMagnifications.count);
  }

  v17 = self->_has;
  if ((*&v17 & 0x10) != 0)
  {
    currentZoomMagnification = self->_currentZoomMagnification;
    PBDataWriterWriteFloatField();
    toCopy = v43;
    v17 = self->_has;
    if ((*&v17 & 0x400000) == 0)
    {
LABEL_38:
      if ((*&v17 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }
  }

  else if ((*&v17 & 0x400000) == 0)
  {
    goto LABEL_38;
  }

  isSpatialCapture = self->_isSpatialCapture;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  v17 = self->_has;
  if ((*&v17 & 1) == 0)
  {
LABEL_39:
    if ((*&v17 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_71;
  }

LABEL_70:
  capturePauseDate = self->_capturePauseDate;
  PBDataWriterWriteDoubleField();
  toCopy = v43;
  v17 = self->_has;
  if ((*&v17 & 0x200000) == 0)
  {
LABEL_40:
    if ((*&v17 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_71:
  capturingPaused = self->_capturingPaused;
  PBDataWriterWriteBOOLField();
  toCopy = v43;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_41:
    stereoCaptureStatus = self->_stereoCaptureStatus;
    PBDataWriterWriteInt32Field();
    toCopy = v43;
  }

LABEL_42:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    toCopy[35] = self->_orientation;
    toCopy[44] |= 0x2000u;
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  toCopy[40] = LODWORD(self->_zoomAmount);
  toCopy[44] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[28] = self->_flashSupport;
  toCopy[44] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  toCopy[27] = self->_flashMode;
  toCopy[44] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  toCopy[30] = self->_hdrSupport;
  toCopy[44] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_53:
  toCopy[29] = self->_hdrMode;
  toCopy[44] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  toCopy[32] = self->_irisSupport;
  toCopy[44] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  toCopy[31] = self->_irisMode;
  toCopy[44] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 164) = self->_burstSupport;
  toCopy[44] |= 0x80000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_58:
    *(toCopy + 169) = self->_toggleCameraDeviceSupport;
    toCopy[44] |= 0x1000000u;
    if ((*&self->_has & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_57:
  toCopy[25] = self->_captureMode;
  toCopy[44] |= 8u;
  has = self->_has;
  if ((*&has & 0x1000000) != 0)
  {
    goto LABEL_58;
  }

LABEL_12:
  if ((*&has & 0x8000000) != 0)
  {
LABEL_13:
    *(toCopy + 172) = self->_zoomSupport;
    toCopy[44] |= 0x8000000u;
  }

LABEL_14:
  v18 = toCopy;
  if ([(NCCameraStateChangedRequest *)self supportedCaptureModesCount])
  {
    [v18 clearSupportedCaptureModes];
    supportedCaptureModesCount = [(NCCameraStateChangedRequest *)self supportedCaptureModesCount];
    if (supportedCaptureModesCount)
    {
      v7 = supportedCaptureModesCount;
      for (i = 0; i != v7; ++i)
      {
        [v18 addSupportedCaptureMode:{-[NCCameraStateChangedRequest supportedCaptureModeAtIndex:](self, "supportedCaptureModeAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    *(v18 + 165) = self->_capturing;
    *(v18 + 44) |= 0x100000u;
    v9 = self->_has;
    if ((*&v9 & 2) == 0)
    {
LABEL_20:
      if ((*&v9 & 0x2000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v9 & 2) == 0)
  {
    goto LABEL_20;
  }

  *(v18 + 11) = *&self->_captureStartDate;
  *(v18 + 44) |= 2u;
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_63:
    *(v18 + 36) = self->_shallowDepthOfFieldStatus;
    *(v18 + 44) |= 0x4000u;
    if ((*&self->_has & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_62:
  *(v18 + 170) = self->_viewfinderSessionActive;
  *(v18 + 44) |= 0x2000000u;
  v9 = self->_has;
  if ((*&v9 & 0x4000) != 0)
  {
    goto LABEL_63;
  }

LABEL_22:
  if ((*&v9 & 0x800000) != 0)
  {
LABEL_23:
    *(v18 + 168) = self->_supportsMomentCapture;
    *(v18 + 44) |= 0x800000u;
  }

LABEL_24:
  if ([(NCCameraStateChangedRequest *)self supportedCaptureDevicesCount])
  {
    [v18 clearSupportedCaptureDevices];
    supportedCaptureDevicesCount = [(NCCameraStateChangedRequest *)self supportedCaptureDevicesCount];
    if (supportedCaptureDevicesCount)
    {
      v11 = supportedCaptureDevicesCount;
      for (j = 0; j != v11; ++j)
      {
        [v18 addSupportedCaptureDevice:{-[NCCameraStateChangedRequest supportedCaptureDeviceAtIndex:](self, "supportedCaptureDeviceAtIndex:", j)}];
      }
    }
  }

  v13 = self->_has;
  if ((*&v13 & 4) != 0)
  {
    *(v18 + 24) = self->_captureDevice;
    *(v18 + 44) |= 4u;
    v13 = self->_has;
    if ((*&v13 & 0x10000) == 0)
    {
LABEL_30:
      if ((*&v13 & 0x8000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v13 & 0x10000) == 0)
  {
    goto LABEL_30;
  }

  *(v18 + 38) = self->_sharedLibrarySupport;
  *(v18 + 44) |= 0x10000u;
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_31:
    if ((*&v13 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v18 + 37) = self->_sharedLibraryMode;
  *(v18 + 44) |= 0x8000u;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_32:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

LABEL_69:
    *(v18 + 34) = LODWORD(self->_minimumZoomMagnification);
    *(v18 + 44) |= 0x1000u;
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_68:
  *(v18 + 171) = self->_zoomMagnificationSupport;
  *(v18 + 44) |= 0x4000000u;
  v13 = self->_has;
  if ((*&v13 & 0x1000) != 0)
  {
    goto LABEL_69;
  }

LABEL_33:
  if ((*&v13 & 0x800) != 0)
  {
LABEL_34:
    *(v18 + 33) = LODWORD(self->_maximumZoomMagnification);
    *(v18 + 44) |= 0x800u;
  }

LABEL_35:
  if ([(NCCameraStateChangedRequest *)self significantZoomMagnificationsCount])
  {
    [v18 clearSignificantZoomMagnifications];
    significantZoomMagnificationsCount = [(NCCameraStateChangedRequest *)self significantZoomMagnificationsCount];
    if (significantZoomMagnificationsCount)
    {
      v15 = significantZoomMagnificationsCount;
      for (k = 0; k != v15; ++k)
      {
        [(NCCameraStateChangedRequest *)self significantZoomMagnificationsAtIndex:k];
        [v18 addSignificantZoomMagnifications:?];
      }
    }
  }

  v17 = self->_has;
  if ((*&v17 & 0x10) != 0)
  {
    *(v18 + 26) = LODWORD(self->_currentZoomMagnification);
    *(v18 + 44) |= 0x10u;
    v17 = self->_has;
    if ((*&v17 & 0x400000) == 0)
    {
LABEL_41:
      if ((*&v17 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v17 & 0x400000) == 0)
  {
    goto LABEL_41;
  }

  *(v18 + 167) = self->_isSpatialCapture;
  *(v18 + 44) |= 0x400000u;
  v17 = self->_has;
  if ((*&v17 & 1) == 0)
  {
LABEL_42:
    if ((*&v17 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v18 + 10) = *&self->_capturePauseDate;
  *(v18 + 44) |= 1u;
  v17 = self->_has;
  if ((*&v17 & 0x200000) == 0)
  {
LABEL_43:
    if ((*&v17 & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_74:
  *(v18 + 166) = self->_capturingPaused;
  *(v18 + 44) |= 0x200000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_44:
    *(v18 + 39) = self->_stereoCaptureStatus;
    *(v18 + 44) |= 0x20000u;
  }

LABEL_45:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    v4[35] = self->_orientation;
    v4[44] |= 0x2000u;
    has = self->_has;
    if ((*&has & 0x40000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  v4[40] = LODWORD(self->_zoomAmount);
  v4[44] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4[28] = self->_flashSupport;
  v4[44] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4[27] = self->_flashMode;
  v4[44] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4[30] = self->_hdrSupport;
  v4[44] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4[29] = self->_hdrMode;
  v4[44] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4[32] = self->_irisSupport;
  v4[44] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4[31] = self->_irisMode;
  v4[44] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 164) = self->_burstSupport;
  v4[44] |= 0x80000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4[25] = self->_captureMode;
  v4[44] |= 8u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_44:
  *(v4 + 169) = self->_toggleCameraDeviceSupport;
  v4[44] |= 0x1000000u;
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_13:
    *(v4 + 172) = self->_zoomSupport;
    v4[44] |= 0x8000000u;
  }

LABEL_14:
  PBRepeatedInt32Copy();
  v7 = self->_has;
  if ((*&v7 & 0x100000) != 0)
  {
    v5[165] = self->_capturing;
    *(v5 + 44) |= 0x100000u;
    v7 = self->_has;
    if ((*&v7 & 2) == 0)
    {
LABEL_16:
      if ((*&v7 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((*&v7 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(v5 + 11) = *&self->_captureStartDate;
  *(v5 + 44) |= 2u;
  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v5[170] = self->_viewfinderSessionActive;
  *(v5 + 44) |= 0x2000000u;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_49:
  *(v5 + 36) = self->_shallowDepthOfFieldStatus;
  *(v5 + 44) |= 0x4000u;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_19:
    v5[168] = self->_supportsMomentCapture;
    *(v5 + 44) |= 0x800000u;
  }

LABEL_20:
  PBRepeatedInt32Copy();
  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    *(v5 + 24) = self->_captureDevice;
    *(v5 + 44) |= 4u;
    v8 = self->_has;
    if ((*&v8 & 0x10000) == 0)
    {
LABEL_22:
      if ((*&v8 & 0x8000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v8 & 0x10000) == 0)
  {
    goto LABEL_22;
  }

  *(v5 + 38) = self->_sharedLibrarySupport;
  *(v5 + 44) |= 0x10000u;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 37) = self->_sharedLibraryMode;
  *(v5 + 44) |= 0x8000u;
  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v5[171] = self->_zoomMagnificationSupport;
  *(v5 + 44) |= 0x4000000u;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_55:
  *(v5 + 34) = LODWORD(self->_minimumZoomMagnification);
  *(v5 + 44) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_26:
    *(v5 + 33) = LODWORD(self->_maximumZoomMagnification);
    *(v5 + 44) |= 0x800u;
  }

LABEL_27:
  PBRepeatedFloatCopy();
  v9 = self->_has;
  if ((*&v9 & 0x10) != 0)
  {
    *(v5 + 26) = LODWORD(self->_currentZoomMagnification);
    *(v5 + 44) |= 0x10u;
    v9 = self->_has;
    if ((*&v9 & 0x400000) == 0)
    {
LABEL_29:
      if ((*&v9 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v9 & 0x400000) == 0)
  {
    goto LABEL_29;
  }

  v5[167] = self->_isSpatialCapture;
  *(v5 + 44) |= 0x400000u;
  v9 = self->_has;
  if ((*&v9 & 1) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

LABEL_60:
    v5[166] = self->_capturingPaused;
    *(v5 + 44) |= 0x200000u;
    if ((*&self->_has & 0x20000) == 0)
    {
      return v5;
    }

    goto LABEL_32;
  }

LABEL_59:
  *(v5 + 10) = *&self->_capturePauseDate;
  *(v5 + 44) |= 1u;
  v9 = self->_has;
  if ((*&v9 & 0x200000) != 0)
  {
    goto LABEL_60;
  }

LABEL_31:
  if ((*&v9 & 0x20000) != 0)
  {
LABEL_32:
    *(v5 + 39) = self->_stereoCaptureStatus;
    *(v5 + 44) |= 0x20000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_105;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_orientation != *(equalCopy + 35))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_zoomAmount != *(equalCopy + 40))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_flashSupport != *(equalCopy + 28))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_flashMode != *(equalCopy + 27))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_hdrSupport != *(equalCopy + 30))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_hdrMode != *(equalCopy + 29))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_irisSupport != *(equalCopy + 32))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_irisMode != *(equalCopy + 31))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_105;
    }

    v7 = *(equalCopy + 164);
    if (self->_burstSupport)
    {
      if ((*(equalCopy + 164) & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (*(equalCopy + 164))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_captureMode != *(equalCopy + 25))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_105;
    }

    v10 = *(equalCopy + 169);
    if (self->_toggleCameraDeviceSupport)
    {
      if ((*(equalCopy + 169) & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (*(equalCopy + 169))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_105;
    }

    v11 = *(equalCopy + 172);
    if (self->_zoomSupport)
    {
      if ((*(equalCopy + 172) & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    else if (*(equalCopy + 172))
    {
      goto LABEL_105;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_105;
  }

  if (PBRepeatedInt32IsEqual())
  {
    v8 = self->_has;
    v9 = *(equalCopy + 44);
    if ((*&v8 & 0x100000) != 0)
    {
      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_105;
      }

      v12 = *(equalCopy + 165);
      if (self->_capturing)
      {
        if ((*(equalCopy + 165) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else if (*(equalCopy + 165))
      {
        goto LABEL_105;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      goto LABEL_105;
    }

    if ((*&v8 & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_captureStartDate != *(equalCopy + 11))
      {
        goto LABEL_105;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_105;
    }

    if ((*&v8 & 0x2000000) != 0)
    {
      if ((v9 & 0x2000000) == 0)
      {
        goto LABEL_105;
      }

      v13 = *(equalCopy + 170);
      if (self->_viewfinderSessionActive)
      {
        if ((*(equalCopy + 170) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else if (*(equalCopy + 170))
      {
        goto LABEL_105;
      }
    }

    else if ((v9 & 0x2000000) != 0)
    {
      goto LABEL_105;
    }

    if ((*&v8 & 0x4000) != 0)
    {
      if ((v9 & 0x4000) == 0 || self->_shallowDepthOfFieldStatus != *(equalCopy + 36))
      {
        goto LABEL_105;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      goto LABEL_105;
    }

    if ((*&v8 & 0x800000) != 0)
    {
      if ((v9 & 0x800000) == 0)
      {
        goto LABEL_105;
      }

      v18 = *(equalCopy + 168);
      if (self->_supportsMomentCapture)
      {
        if ((*(equalCopy + 168) & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else if (*(equalCopy + 168))
      {
        goto LABEL_105;
      }
    }

    else if ((v9 & 0x800000) != 0)
    {
      goto LABEL_105;
    }

    if (PBRepeatedInt32IsEqual())
    {
      v14 = self->_has;
      v15 = *(equalCopy + 44);
      if ((*&v14 & 4) != 0)
      {
        if ((v15 & 4) == 0 || self->_captureDevice != *(equalCopy + 24))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 4) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v14 & 0x10000) != 0)
      {
        if ((v15 & 0x10000) == 0 || self->_sharedLibrarySupport != *(equalCopy + 38))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 0x10000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v14 & 0x8000) != 0)
      {
        if ((v15 & 0x8000) == 0 || self->_sharedLibraryMode != *(equalCopy + 37))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 0x8000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v14 & 0x4000000) != 0)
      {
        if ((v15 & 0x4000000) == 0)
        {
          goto LABEL_105;
        }

        v19 = *(equalCopy + 171);
        if (self->_zoomMagnificationSupport)
        {
          if ((*(equalCopy + 171) & 1) == 0)
          {
            goto LABEL_105;
          }
        }

        else if (*(equalCopy + 171))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 0x4000000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v14 & 0x1000) != 0)
      {
        if ((v15 & 0x1000) == 0 || self->_minimumZoomMagnification != *(equalCopy + 34))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 0x1000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v14 & 0x800) != 0)
      {
        if ((v15 & 0x800) == 0 || self->_maximumZoomMagnification != *(equalCopy + 33))
        {
          goto LABEL_105;
        }
      }

      else if ((v15 & 0x800) != 0)
      {
        goto LABEL_105;
      }

      if (PBRepeatedFloatIsEqual())
      {
        v20 = self->_has;
        v21 = *(equalCopy + 44);
        if ((*&v20 & 0x10) != 0)
        {
          if ((v21 & 0x10) == 0 || self->_currentZoomMagnification != *(equalCopy + 26))
          {
            goto LABEL_105;
          }
        }

        else if ((v21 & 0x10) != 0)
        {
          goto LABEL_105;
        }

        if ((*&v20 & 0x400000) != 0)
        {
          if ((v21 & 0x400000) == 0)
          {
            goto LABEL_105;
          }

          v22 = *(equalCopy + 167);
          if (self->_isSpatialCapture)
          {
            if ((*(equalCopy + 167) & 1) == 0)
            {
              goto LABEL_105;
            }
          }

          else if (*(equalCopy + 167))
          {
            goto LABEL_105;
          }
        }

        else if ((v21 & 0x400000) != 0)
        {
          goto LABEL_105;
        }

        if (*&v20)
        {
          if ((v21 & 1) == 0 || self->_capturePauseDate != *(equalCopy + 10))
          {
            goto LABEL_105;
          }
        }

        else if (v21)
        {
          goto LABEL_105;
        }

        if ((*&v20 & 0x200000) != 0)
        {
          if ((v21 & 0x200000) == 0)
          {
            goto LABEL_105;
          }

          v23 = *(equalCopy + 166);
          if (self->_capturingPaused)
          {
            if ((*(equalCopy + 166) & 1) == 0)
            {
              goto LABEL_105;
            }
          }

          else if (*(equalCopy + 166))
          {
            goto LABEL_105;
          }
        }

        else if ((v21 & 0x200000) != 0)
        {
          goto LABEL_105;
        }

        if ((*&v20 & 0x20000) == 0)
        {
          v16 = (v21 & 0x20000) == 0;
          goto LABEL_106;
        }

        if ((v21 & 0x20000) != 0 && self->_stereoCaptureStatus == *(equalCopy + 39))
        {
          v16 = 1;
          goto LABEL_106;
        }
      }
    }
  }

LABEL_105:
  v16 = 0;
LABEL_106:

  return v16;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x2000) != 0)
  {
    v65 = 2654435761 * self->_orientation;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v65 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  zoomAmount = self->_zoomAmount;
  if (zoomAmount < 0.0)
  {
    zoomAmount = -zoomAmount;
  }

  *v2.i32 = floorf(zoomAmount + 0.5);
  v7 = (zoomAmount - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = 2654435761u * *vbslq_s8(v8, v3, v2).i32;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabsf(v7);
  }

LABEL_9:
  if ((*&has & 0x40) != 0)
  {
    v63 = 2654435761 * self->_flashSupport;
    if ((*&has & 0x20) != 0)
    {
LABEL_11:
      v62 = 2654435761 * self->_flashMode;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v63 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_11;
    }
  }

  v62 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v61 = 2654435761 * self->_hdrSupport;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v61 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_13:
    v60 = 2654435761 * self->_hdrMode;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v60 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v59 = 2654435761 * self->_irisSupport;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v59 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_15:
    v58 = 2654435761 * self->_irisMode;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v58 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_16:
    v57 = 2654435761 * self->_burstSupport;
    if ((*&has & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v56 = 0;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_25:
  v57 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  v56 = 2654435761 * self->_captureMode;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_18:
    v55 = 2654435761 * self->_toggleCameraDeviceSupport;
    goto LABEL_28;
  }

LABEL_27:
  v55 = 0;
LABEL_28:
  v64 = v9;
  if ((*&has & 0x8000000) != 0)
  {
    v54 = 2654435761 * self->_zoomSupport;
  }

  else
  {
    v54 = 0;
  }

  v53 = PBRepeatedInt32Hash();
  v12 = self->_has;
  if ((*&v12 & 0x100000) != 0)
  {
    v52 = 2654435761 * self->_capturing;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_33;
    }

LABEL_38:
    v16 = 0;
    goto LABEL_39;
  }

  v52 = 0;
  if ((*&v12 & 2) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  captureStartDate = self->_captureStartDate;
  if (captureStartDate < 0.0)
  {
    captureStartDate = -captureStartDate;
  }

  *v10.i64 = floor(captureStartDate + 0.5);
  v14 = (captureStartDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_39:
  if ((*&v12 & 0x2000000) == 0)
  {
    v51 = 0;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    v50 = 0;
    if ((*&v12 & 0x800000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v51 = 2654435761 * self->_viewfinderSessionActive;
  if ((*&v12 & 0x4000) == 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  v50 = 2654435761 * self->_shallowDepthOfFieldStatus;
  if ((*&v12 & 0x800000) != 0)
  {
LABEL_42:
    v49 = 2654435761 * self->_supportsMomentCapture;
    goto LABEL_46;
  }

LABEL_45:
  v49 = 0;
LABEL_46:
  v48 = PBRepeatedInt32Hash();
  v19 = self->_has;
  if ((*&v19 & 4) != 0)
  {
    v20 = 2654435761 * self->_captureDevice;
    if ((*&v19 & 0x10000) != 0)
    {
LABEL_48:
      v21 = 2654435761 * self->_sharedLibrarySupport;
      if ((*&v19 & 0x8000) != 0)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v20 = 0;
    if ((*&v19 & 0x10000) != 0)
    {
      goto LABEL_48;
    }
  }

  v21 = 0;
  if ((*&v19 & 0x8000) != 0)
  {
LABEL_49:
    v22 = 2654435761 * self->_sharedLibraryMode;
    if ((*&v19 & 0x4000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_58:
    v23 = 0;
    if ((*&v19 & 0x1000) != 0)
    {
      goto LABEL_51;
    }

LABEL_59:
    v27 = 0;
    goto LABEL_60;
  }

LABEL_57:
  v22 = 0;
  if ((*&v19 & 0x4000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_50:
  v23 = 2654435761 * self->_zoomMagnificationSupport;
  if ((*&v19 & 0x1000) == 0)
  {
    goto LABEL_59;
  }

LABEL_51:
  minimumZoomMagnification = self->_minimumZoomMagnification;
  if (minimumZoomMagnification < 0.0)
  {
    minimumZoomMagnification = -minimumZoomMagnification;
  }

  *v17.i32 = floorf(minimumZoomMagnification + 0.5);
  v25 = (minimumZoomMagnification - *v17.i32) * 1.8447e19;
  *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v17 = vbslq_s8(v26, v18, v17);
  v27 = 2654435761u * *v17.i32;
  if (v25 >= 0.0)
  {
    if (v25 > 0.0)
    {
      v27 += v25;
    }
  }

  else
  {
    v27 -= fabsf(v25);
  }

LABEL_60:
  if ((*&v19 & 0x800) != 0)
  {
    maximumZoomMagnification = self->_maximumZoomMagnification;
    if (maximumZoomMagnification < 0.0)
    {
      maximumZoomMagnification = -maximumZoomMagnification;
    }

    *v17.i32 = floorf(maximumZoomMagnification + 0.5);
    v30 = (maximumZoomMagnification - *v17.i32) * 1.8447e19;
    *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
    v31.i64[0] = 0x8000000080000000;
    v31.i64[1] = 0x8000000080000000;
    v28 = 2654435761u * *vbslq_s8(v31, v18, v17).i32;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabsf(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  v32 = PBRepeatedFloatHash();
  v35 = self->_has;
  if ((*&v35 & 0x10) != 0)
  {
    currentZoomMagnification = self->_currentZoomMagnification;
    if (currentZoomMagnification < 0.0)
    {
      currentZoomMagnification = -currentZoomMagnification;
    }

    *v33.i32 = floorf(currentZoomMagnification + 0.5);
    v38 = (currentZoomMagnification - *v33.i32) * 1.8447e19;
    *v34.i32 = *v33.i32 - (truncf(*v33.i32 * 5.421e-20) * 1.8447e19);
    v39.i64[0] = 0x8000000080000000;
    v39.i64[1] = 0x8000000080000000;
    v33 = vbslq_s8(v39, v34, v33);
    v36 = 2654435761u * *v33.i32;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v36 += v38;
      }
    }

    else
    {
      v36 -= fabsf(v38);
    }
  }

  else
  {
    v36 = 0;
  }

  if ((*&v35 & 0x400000) != 0)
  {
    v40 = 2654435761 * self->_isSpatialCapture;
    if (*&v35)
    {
      goto LABEL_84;
    }

LABEL_89:
    v44 = 0;
    goto LABEL_90;
  }

  v40 = 0;
  if ((*&v35 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_84:
  capturePauseDate = self->_capturePauseDate;
  if (capturePauseDate < 0.0)
  {
    capturePauseDate = -capturePauseDate;
  }

  *v33.i64 = floor(capturePauseDate + 0.5);
  v42 = (capturePauseDate - *v33.i64) * 1.84467441e19;
  *v34.i64 = *v33.i64 - trunc(*v33.i64 * 5.42101086e-20) * 1.84467441e19;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v44 = 2654435761u * *vbslq_s8(vnegq_f64(v43), v34, v33).i64;
  if (v42 >= 0.0)
  {
    if (v42 > 0.0)
    {
      v44 += v42;
    }
  }

  else
  {
    v44 -= fabs(v42);
  }

LABEL_90:
  if ((*&v35 & 0x200000) != 0)
  {
    v45 = 2654435761 * self->_capturingPaused;
    if ((*&v35 & 0x20000) != 0)
    {
      goto LABEL_92;
    }

LABEL_94:
    v46 = 0;
    return v64 ^ v65 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v52 ^ v16 ^ v53 ^ v51 ^ v50 ^ v49 ^ v48 ^ v20 ^ v21 ^ v22 ^ v23 ^ v27 ^ v28 ^ v32 ^ v36 ^ v40 ^ v44 ^ v45 ^ v46;
  }

  v45 = 0;
  if ((*&v35 & 0x20000) == 0)
  {
    goto LABEL_94;
  }

LABEL_92:
  v46 = 2654435761 * self->_stereoCaptureStatus;
  return v64 ^ v65 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v52 ^ v16 ^ v53 ^ v51 ^ v50 ^ v49 ^ v48 ^ v20 ^ v21 ^ v22 ^ v23 ^ v27 ^ v28 ^ v32 ^ v36 ^ v40 ^ v44 ^ v45 ^ v46;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x2000) != 0)
  {
    self->_orientation = *(fromCopy + 35);
    *&self->_has |= 0x2000u;
    v5 = *(fromCopy + 44);
    if ((v5 & 0x40000) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  self->_zoomAmount = *(fromCopy + 40);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_flashSupport = *(fromCopy + 28);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_flashMode = *(fromCopy + 27);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_hdrSupport = *(fromCopy + 30);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_hdrMode = *(fromCopy + 29);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_irisSupport = *(fromCopy + 32);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_irisMode = *(fromCopy + 31);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x80000) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_burstSupport = *(fromCopy + 164);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_captureMode = *(fromCopy + 25);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_55:
  self->_toggleCameraDeviceSupport = *(fromCopy + 169);
  *&self->_has |= 0x1000000u;
  if ((*(fromCopy + 44) & 0x8000000) != 0)
  {
LABEL_13:
    self->_zoomSupport = *(fromCopy + 172);
    *&self->_has |= 0x8000000u;
  }

LABEL_14:
  v18 = fromCopy;
  supportedCaptureModesCount = [fromCopy supportedCaptureModesCount];
  if (supportedCaptureModesCount)
  {
    v7 = supportedCaptureModesCount;
    for (i = 0; i != v7; ++i)
    {
      -[NCCameraStateChangedRequest addSupportedCaptureMode:](self, "addSupportedCaptureMode:", [v18 supportedCaptureModeAtIndex:i]);
    }
  }

  v9 = *(v18 + 44);
  if ((v9 & 0x100000) != 0)
  {
    self->_capturing = *(v18 + 165);
    *&self->_has |= 0x100000u;
    v9 = *(v18 + 44);
    if ((v9 & 2) == 0)
    {
LABEL_19:
      if ((v9 & 0x2000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_59;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_19;
  }

  self->_captureStartDate = *(v18 + 11);
  *&self->_has |= 2u;
  v9 = *(v18 + 44);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_viewfinderSessionActive = *(v18 + 170);
  *&self->_has |= 0x2000000u;
  v9 = *(v18 + 44);
  if ((v9 & 0x4000) == 0)
  {
LABEL_21:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_60:
  self->_shallowDepthOfFieldStatus = *(v18 + 36);
  *&self->_has |= 0x4000u;
  if ((*(v18 + 44) & 0x800000) != 0)
  {
LABEL_22:
    self->_supportsMomentCapture = *(v18 + 168);
    *&self->_has |= 0x800000u;
  }

LABEL_23:
  supportedCaptureDevicesCount = [v18 supportedCaptureDevicesCount];
  if (supportedCaptureDevicesCount)
  {
    v11 = supportedCaptureDevicesCount;
    for (j = 0; j != v11; ++j)
    {
      -[NCCameraStateChangedRequest addSupportedCaptureDevice:](self, "addSupportedCaptureDevice:", [v18 supportedCaptureDeviceAtIndex:j]);
    }
  }

  v13 = *(v18 + 44);
  if ((v13 & 4) != 0)
  {
    self->_captureDevice = *(v18 + 24);
    *&self->_has |= 4u;
    v13 = *(v18 + 44);
    if ((v13 & 0x10000) == 0)
    {
LABEL_28:
      if ((v13 & 0x8000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_64;
    }
  }

  else if ((v13 & 0x10000) == 0)
  {
    goto LABEL_28;
  }

  self->_sharedLibrarySupport = *(v18 + 38);
  *&self->_has |= 0x10000u;
  v13 = *(v18 + 44);
  if ((v13 & 0x8000) == 0)
  {
LABEL_29:
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_sharedLibraryMode = *(v18 + 37);
  *&self->_has |= 0x8000u;
  v13 = *(v18 + 44);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_30:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_zoomMagnificationSupport = *(v18 + 171);
  *&self->_has |= 0x4000000u;
  v13 = *(v18 + 44);
  if ((v13 & 0x1000) == 0)
  {
LABEL_31:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_66:
  self->_minimumZoomMagnification = *(v18 + 34);
  *&self->_has |= 0x1000u;
  if ((*(v18 + 44) & 0x800) != 0)
  {
LABEL_32:
    self->_maximumZoomMagnification = *(v18 + 33);
    *&self->_has |= 0x800u;
  }

LABEL_33:
  significantZoomMagnificationsCount = [v18 significantZoomMagnificationsCount];
  if (significantZoomMagnificationsCount)
  {
    v15 = significantZoomMagnificationsCount;
    for (k = 0; k != v15; ++k)
    {
      [v18 significantZoomMagnificationsAtIndex:k];
      [(NCCameraStateChangedRequest *)self addSignificantZoomMagnifications:?];
    }
  }

  v17 = *(v18 + 44);
  if ((v17 & 0x10) != 0)
  {
    self->_currentZoomMagnification = *(v18 + 26);
    *&self->_has |= 0x10u;
    v17 = *(v18 + 44);
    if ((v17 & 0x400000) == 0)
    {
LABEL_38:
      if ((v17 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }
  }

  else if ((v17 & 0x400000) == 0)
  {
    goto LABEL_38;
  }

  self->_isSpatialCapture = *(v18 + 167);
  *&self->_has |= 0x400000u;
  v17 = *(v18 + 44);
  if ((v17 & 1) == 0)
  {
LABEL_39:
    if ((v17 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_capturePauseDate = *(v18 + 10);
  *&self->_has |= 1u;
  v17 = *(v18 + 44);
  if ((v17 & 0x200000) == 0)
  {
LABEL_40:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_71:
  self->_capturingPaused = *(v18 + 166);
  *&self->_has |= 0x200000u;
  if ((*(v18 + 44) & 0x20000) != 0)
  {
LABEL_41:
    self->_stereoCaptureStatus = *(v18 + 39);
    *&self->_has |= 0x20000u;
  }

LABEL_42:
}

@end