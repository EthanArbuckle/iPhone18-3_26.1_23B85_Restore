@interface BWDeviceMotionActivityDetector
- (BOOL)isDirectionalMotionDetectionEnabled;
- (BOOL)isStationary;
- (BWDeviceMotionActivityDetector)init;
- (void)_detectIfStationary;
- (void)dealloc;
- (void)init;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)setDirectionalMotionDetectionEnabled:(BOOL)enabled;
@end

@implementation BWDeviceMotionActivityDetector

- (BWDeviceMotionActivityDetector)init
{
  v3.receiver = self;
  v3.super_class = BWDeviceMotionActivityDetector;
  result = [(BWDeviceMotionActivityDetector *)&v3 init];
  if (result)
  {
    [(BWDeviceMotionActivityDetector *)result init];
    return v4;
  }

  return result;
}

- (BOOL)isStationary
{
  FigSimpleMutexLock();
  if (self->_newMotionDataAvailable)
  {
    [(BWDeviceMotionActivityDetector *)self _detectIfStationary];
    self->_newMotionDataAvailable = 0;
  }

  stationary = self->_stationary;
  FigSimpleMutexUnlock();
  return stationary;
}

- (void)_detectIfStationary
{
  if (!self)
  {
    return;
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  v95 = 0u;
  v96 = 0u;
  v2 = *(self + 8);
  if (!v2 || (v2 = *(v2 + 8)) == 0)
  {
LABEL_6:
    if (*(self + 28) == 1)
    {
      if (v2)
      {
        v3 = *(self + 8);
        if (v3)
        {
          lastElement = [(BWRingBuffer *)*(v3 + 8) lastElement];
          if (lastElement)
          {
            v5 = *lastElement;
            v6 = lastElement[1];
            *(self + 72) = lastElement[2];
            *(self + 56) = v6;
            *(self + 40) = v5;
          }
        }
      }

      else
      {
        if (*(self + 48) == 0.0)
        {
          LOBYTE(v2) = 0;
          goto LABEL_18;
        }

        v7 = *(self + 8);
        if (!v7 || (v8 = [(BWRingBuffer *)*(v7 + 8) lastElement]) == 0 || (v9 = FigMotionMultiplyByInverseOfQuaternion((v8 + 16), (self + 56)), v10 = acos(v9), (v10 + v10) * 57.2957795 >= *(self + 32)))
        {
          LOBYTE(v2) = 0;
          *(self + 72) = 0u;
          *(self + 56) = 0u;
          *(self + 40) = 0u;
          goto LABEL_18;
        }
      }

      LOBYTE(v2) = 1;
    }

LABEL_18:
    *(self + 24) = v2 & 1;
    return;
  }

  if ((*(v2 + 20) + *(v2 + 24) - *(v2 + 16)) % *(v2 + 24) < 2)
  {
    goto LABEL_5;
  }

  mach_absolute_time();
  v11 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
  v12 = *(self + 8);
  if (v11 - *([(BWRingBuffer *)v12[1] lastElement]+ 8) > 1.0 || [(BWMotionSampleRingBuffer *)v12 duration]< 0.5)
  {
    goto LABEL_5;
  }

  if (*(self + 25) != 1)
  {
    LOBYTE(v2) = *(self + 24);
    goto LABEL_6;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v21 = OUTLINED_FUNCTION_0_83(v13, v14, v15, v16, v17, v18, v19, v20, v66, v68, *&v70[0], *(&v70[0] + 1), *&v70[1], *(&v70[1] + 1), *v71, *&v71[8], *&v71[16], v72, *v73, *&v73[8], *&v73[16], *&v73[24], v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), *type, *&type[8], v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
  if (!v21)
  {
LABEL_5:
    LOBYTE(v2) = 0;
    goto LABEL_6;
  }

  v22 = v21;
  v23 = 0;
  v24 = 0;
  v25 = *v92;
  v26 = 0;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  do
  {
    v31 = 0;
    do
    {
      if (*v92 != v25)
      {
        objc_enumerationMutation(v12);
      }

      v32 = *(*(&v91 + 1) + 8 * v31);
      v33 = *(v32 + 8);
      v34 = *(v32 + 32);
      *v73 = *(v32 + 16);
      *&v73[16] = v34;
      memset(v70, 0, sizeof(v70));
      v88 = 0u;
      v89 = 0u;
      *type = 0u;
      v87 = 0u;
      DWORD2(v85) = 0;
      *&v85 = 0;
      if (v23)
      {
        v88 = *v73;
        v89 = *&v73[16];
        *type = v95;
        v87 = v96;
        *&v70[0] = FigMotionMultiplyByInverseOfQuaternion(&v88, type);
        *(&v70[0] + 1) = v35;
        *&v70[1] = v36;
        *(&v70[1] + 1) = v37;
        FigMotionRotationRateFromDeltaQuaternion(v70, &v85, v33 - v28);
        if (lastElement2)
        {
          v23 = 1;
          goto LABEL_37;
        }

        v46 = vmul_f32(*(&v85 + 4), *(&v85 + 4));
        v47 = ((*&v85 * *&v85) + v46.f32[0]) + v46.f32[1];
        if (*(self + 26) == 1)
        {
          v27 = v27 + *&v85;
          v26 = vadd_f32(v26, *(&v85 + 4));
        }

        else
        {
          v48 = sqrtf(v47);
          if (v48 >= 0.1)
          {
            goto LABEL_5;
          }

          v30 = v30 + v48;
        }

        v29 = v29 + v47;
        ++v24;
        v23 = 1;
      }

      else
      {
        lastElement2 = [(BWRingBuffer *)*(*(self + 8) + 8) lastElement];
        v23 = *(lastElement2 + 8) - v33 < 1.0;
      }

      v95 = *v73;
      v96 = *&v73[16];
      v28 = v33;
LABEL_37:
      ++v31;
    }

    while (v22 != v31);
    v49 = OUTLINED_FUNCTION_0_83(lastElement2, v39, v40, v41, v42, v43, v44, v45, v67, v69, *&v70[0], *(&v70[0] + 1), *&v70[1], *(&v70[1] + 1), *v71, *&v71[8], *&v71[16], v72, *v73, *&v73[8], *&v73[16], *&v73[24], v74, *(&v74 + 1), v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), *type, *&type[8], v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90);
    v22 = v49;
  }

  while (v49);
  if (!v24)
  {
    goto LABEL_5;
  }

  *v50.i32 = v24;
  if (*(self + 26) == 1)
  {
    v51 = vdiv_f32(v26, vdup_lane_s32(v50, 0));
    v52 = v29 / *v50.i32;
    v53 = vmul_f32(v51, v51);
    v54 = v53.f32[1] + (v53.f32[0] + ((v27 / *v50.i32) * (v27 / *v50.i32)));
    v55 = (v52 - v54);
    if (v55 >= 0.00004225)
    {
      LOBYTE(v2) = v54 < 0.00000625;
      if (v55 >= 0.000121)
      {
        LOBYTE(v2) = 0;
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    v54 = v30 / *v50.i32;
    LOBYTE(v2) = v54 < 0.005;
  }

  if (v54 != 0.0)
  {
    goto LABEL_6;
  }

  *(self + 24) = 0;
  lastElement3 = [(BWRingBuffer *)*(*(self + 8) + 8) lastElement];
  v58 = lastElement3[2];
  v57 = lastElement3[3];
  v60 = lastElement3[4];
  v59 = lastElement3[5];
  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  LODWORD(v88) = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v63 = v88;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
  {
    v64 = v63;
  }

  else
  {
    v64 = v63 & 0xFFFFFFFE;
  }

  if (v64)
  {
    LODWORD(v70[0]) = 136316162;
    *(v70 + 4) = "[BWDeviceMotionActivityDetector _detectIfStationary]";
    WORD6(v70[0]) = 2048;
    *(v70 + 14) = v58;
    WORD3(v70[1]) = 2048;
    *(&v70[1] + 1) = v57;
    *v71 = 2048;
    *&v71[2] = v60;
    *&v71[10] = 2048;
    *&v71[12] = v59;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  *v73 = 134218752;
  *&v73[4] = v58;
  *&v73[12] = 2048;
  *&v73[14] = v57;
  *&v73[22] = 2048;
  *&v73[24] = v60;
  LOWORD(v74) = 2048;
  *(&v74 + 2) = v59;
  v65 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v65, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWDeviceMotionActivityDetector.m", 535, @"LastShownDate:BWDeviceMotionActivityDetector.m:535", @"LastShownBuild:BWDeviceMotionActivityDetector.m:535", 0);
  free(v65);
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = BWDeviceMotionActivityDetector;
  [(BWDeviceMotionActivityDetector *)&v3 dealloc];
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:*off_1E798B3D0];
    bzero(v9, 0x14A0uLL);
    v8 = 0;
    if (v6)
    {
      if (FigMotionGetMotionDataFromISP(v5, v9, 0, 110, &v8, 0, 0, 0, 0))
      {
        [BWDeviceMotionActivityDetector processSampleBuffer:];
      }

      else
      {
        if (!self->_motionMetadataStatusChecked)
        {
          self->_motionMetadataStatusChecked = 1;
          self->_robustMethodEnabled = [v5 objectForKey:*off_1E798B3D8] != 0;
        }

        FigSimpleMutexLock();
        v7 = v8;
        if (v8)
        {
          self->_newMotionDataAvailable = 1;
          [(BWMotionSampleRingBuffer *)self->_motionDataRingBuffer addMotionDataToRingBuffer:v7 withSampleCount:?];
        }

        FigSimpleMutexUnlock();
      }
    }
  }
}

- (BOOL)isDirectionalMotionDetectionEnabled
{
  FigSimpleMutexLock();
  directionalMotionDetectionEnabled = self->_directionalMotionDetectionEnabled;
  FigSimpleMutexUnlock();
  return directionalMotionDetectionEnabled;
}

- (void)setDirectionalMotionDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  FigSimpleMutexLock();
  if (self->_directionalMotionDetectionEnabled != enabledCopy)
  {
    self->_directionalMotionDetectionEnabled = enabledCopy;
    self->_directionalMotionDetectionAngularRotationThreshold = 2.0;
    *&self->_directionalMotionDetectionReferenceDirection.doingBiasEstimation = 0u;
    *&self->_directionalMotionDetectionReferenceDirection.quaternion.w = 0u;
    *&self->_directionalMotionDetectionReferenceDirection.quaternion.y = 0u;
  }

  FigSimpleMutexUnlock();
}

- (void)init
{
  selfCopy = self;
  self[2] = FigSimpleMutexCreate();
  v4 = [[BWMotionSampleRingBuffer alloc] initWithMaxDuration:?];
  selfCopy[1] = v4;
  if (!v4)
  {

    selfCopy = 0;
  }

  *a2 = selfCopy;
}

@end