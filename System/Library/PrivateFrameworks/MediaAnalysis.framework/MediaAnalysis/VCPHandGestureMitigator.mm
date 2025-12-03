@interface VCPHandGestureMitigator
- (BOOL)checkHandGestureGlobalMotion:(id)motion forHand:(id)hand;
- (BOOL)checkHandGestureJitter:(id)jitter forHand:(id)hand;
- (BOOL)checkHandGestureTemporalInconsistency:(id)inconsistency forHand:(id)hand;
- (BOOL)checkHandHoldObject:(id)object forHand:(id)hand;
- (BOOL)handInMitigationQuadrant:(id)quadrant withFace:(CGRect)face;
- (BOOL)handPalmFacingCamera:(id)camera rotationInDegrees:(int)degrees useTips:(BOOL)tips;
- (BOOL)handTouchFace:(id)face andFace:(CGRect)andFace rotationInDegrees:(int)degrees;
- (BOOL)handsOverlap:(id)overlap pairedHand:(id)hand;
- (BOOL)handsTooClose:(id)close pairedHand:(id)hand;
- (BOOL)handsVerticallyAligned:(id)aligned pairedHand:(id)hand;
- (BOOL)mitigateWithFingerOpennessForHand:(id)hand;
- (BOOL)mitigateWithFingerTiltingForHand:(id)hand;
- (VCPHandGestureMitigator)init;
- (int)mitigate:(id)mitigate rightHand:(id)hand featureProvider:(id)provider faceRects:(id)rects faceYaws:(id)yaws;
- (int)mitigateHand:(id)hand handKey:(id)key pairedHand:(id)pairedHand featureProvider:(id)provider faceRects:(id)rects faceYaws:(id)yaws;
- (void)adjustGestureForHand:(id)hand withFace:(CGRect)face;
- (void)adjustGestureForHand:(id)hand withFaceYaw:(id)yaw;
@end

@implementation VCPHandGestureMitigator

- (VCPHandGestureMitigator)init
{
  v3.receiver = self;
  v3.super_class = VCPHandGestureMitigator;
  return [(VCPHandGestureMitigator *)&v3 init];
}

- (BOOL)checkHandGestureJitter:(id)jitter forHand:(id)hand
{
  v58 = *MEMORY[0x1E69E9840];
  jitterCopy = jitter;
  handCopy = hand;
  v44 = 1;
  v43 = jitterCopy;
  while (1)
  {
    v6 = [jitterCopy count];
    v7 = [&unk_1F49BEE48 count];
    v8 = v7 >= v6 ? v6 : v7;
    v9 = v44;
    v41 = v8;
    if (v8 <= v44)
    {
      break;
    }

    v10 = [v43 objectAtIndexedSubscript:v44 - 1];
    v46 = [v10 objectForKeyedSubscript:handCopy];

    v11 = [v43 objectAtIndexedSubscript:v44];
    v12 = [v11 objectForKeyedSubscript:handCopy];

    if (v12)
    {
      v13 = v46 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    v40 = v14;
    if (v13)
    {
LABEL_29:

      v9 = v44;
      break;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = [&unk_1F49BEE60 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v15)
    {
      v16 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(&unk_1F49BEE60);
          }

          intValue = [*(*(&v47 + 1) + 8 * i) intValue];
          rotationInDegrees = self->_rotationInDegrees;
          v20 = v46;
          keypoints = [v12 keypoints];
          keypoints2 = [(VCPHandObservation *)v20 keypoints];
          v23 = keypoints2;
          if (keypoints && keypoints2 && ([keypoints objectAtIndexedSubscript:0], v24 = objc_claimAutoreleasedReturnValue(), v25 = keyPointPosition(v24, rotationInDegrees), v24, objc_msgSend(keypoints, "objectAtIndexedSubscript:", intValue), v26 = objc_claimAutoreleasedReturnValue(), v27 = keyPointPosition(v26, rotationInDegrees), v26, objc_msgSend(v23, "objectAtIndexedSubscript:", intValue), v28 = objc_claimAutoreleasedReturnValue(), v29 = keyPointPosition(v28, rotationInDegrees), v28, objc_msgSend(v23, "objectAtIndexedSubscript:", 0), v30 = objc_claimAutoreleasedReturnValue(), v31 = keyPointPosition(v30, rotationInDegrees), v30, v32 = palmScale(v20, rotationInDegrees), v32 >= 0.0))
          {
            v33 = MediaAnalysisLogLevel();
            v34 = vsub_f32(*&v27, *&v25);
            v35 = sqrtf(vaddv_f32(vmul_f32(v34, v34)));
            v36 = vsub_f32(*&v29, *&v31);
            v37 = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
            if (v33 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              v53 = v35;
              v54 = 2048;
              v55 = v37;
              v56 = 2048;
              v57 = v32;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest : jittering logic distance1 %f distance2 %f, palmScale %f", buf, 0x20u);
            }

            if (vabds_f32(v35, v37) > (v32 * 0.8))
            {
              goto LABEL_29;
            }
          }

          else
          {
          }
        }

        v15 = [&unk_1F49BEE60 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v15);
    }

    jitterCopy = v43;
    ++v44;
  }

  v38 = v41 > v9;

  return v38 & v40;
}

- (BOOL)checkHandHoldObject:(id)object forHand:(id)hand
{
  objectCopy = object;
  handCopy = hand;
  v7 = 0;
  while ([objectCopy count] > v7)
  {
    v8 = [objectCopy objectAtIndexedSubscript:v7];
    v9 = [v8 objectForKeyedSubscript:handCopy];

    if (!v9)
    {
      break;
    }

    [v9 holdObject];
    v11 = v10;

    ++v7;
    if (v11 >= 0.975)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (BOOL)handsOverlap:(id)overlap pairedHand:(id)hand
{
  v62 = *MEMORY[0x1E69E9840];
  overlapCopy = overlap;
  handCopy = hand;
  v10 = handCopy;
  v11 = 0;
  if (!overlapCopy || !handCopy)
  {
    goto LABEL_40;
  }

  v12 = +[VCPHandObservation twoHandGestureTypes];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPHandObservation gestureType](overlapCopy, "gestureType")}];
  if ([v12 containsObject:v13])
  {
  }

  else
  {
    v14 = +[VCPHandObservation twoHandGestureTypes];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPHandObservation gestureType](v10, "gestureType")}];
    v16 = [v14 containsObject:v15];

    v17 = 0.0;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v17 = 0.2;
LABEL_7:
  keypoints = [(VCPHandObservation *)overlapCopy keypoints];
  keypoints2 = [(VCPHandObservation *)v10 keypoints];
  v20 = keypoints2;
  v11 = 0;
  if (keypoints && keypoints2)
  {
    v21 = 0;
    v52 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v50 = _D0;
    v46 = _D0;
    v48 = 0;
    do
    {
      v26 = [keypoints objectAtIndexedSubscript:{v21, *&v44}];
      v45 = COERCE_FLOAT32X2_T(keyPointPosition(v26, self->_rotationInDegrees));

      v27 = [v20 objectAtIndexedSubscript:v21];
      v44 = COERCE_FLOAT32X2_T(keyPointPosition(v27, self->_rotationInDegrees));

      if (vcgt_f32(v45, v50).u8[0])
      {
        v28 = v50.f32[0];
      }

      else
      {
        v28 = v45.f32[0];
      }

      if (vcgt_f32(v45, v52).u8[0])
      {
        *v4.i32 = v45.f32[0];
      }

      else
      {
        *v4.i32 = v52.f32[0];
      }

      if (vcgt_f32(v44, v46).u8[0])
      {
        *v5.i32 = v46.f32[0];
      }

      else
      {
        *v5.i32 = v44.f32[0];
      }

      v29 = vzip2_s32(v46, v50);
      v30 = vzip2_s32(v44, v45);
      v31 = vbsl_s8(vcgt_f32(v30, v29), v29, v30);
      v50 = __PAIR64__(v31.u32[1], LODWORD(v28));
      if (vcgt_f32(v44, v48).u8[0])
      {
        v32 = v44.f32[0];
      }

      else
      {
        v32 = v48.f32[0];
      }

      v33 = vzip2_s32(v52, v48);
      v34 = vzip2_s32(v45, v44);
      v35 = vbsl_s8(vcgt_f32(v34, v33), v34, v33);
      v52 = vzip1_s32(v4, v35);
      v46 = vzip1_s32(v5, v31);
      v48 = __PAIR64__(v35.u32[1], LODWORD(v32));
      ++v21;
    }

    while (v21 != 21);
    v47 = v35;
    v49 = v32;
    v51 = v31;
    v53 = v28;
    v36 = palmScale(overlapCopy, self->_rotationInDegrees);
    v37 = (v36 + palmScale(v10, self->_rotationInDegrees)) * 0.5;
    if ((*v4.i32 - *v5.i32) >= (v49 - v53))
    {
      v38 = v49 - v53;
    }

    else
    {
      v38 = *v4.i32 - *v5.i32;
    }

    v39 = vsub_f32(v47, v51);
    if (v39.f32[0] >= v39.f32[1])
    {
      v40 = v39.f32[1];
    }

    else
    {
      v40 = v39.f32[0];
    }

    if (v38 < (v17 * v37) || v40 < (v17 * v37))
    {
      v11 = 0;
    }

    else
    {
      v42 = MediaAnalysisLogLevel();
      if (v42 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v55 = v38;
        v56 = 2048;
        v57 = v40;
        v58 = 2048;
        v59 = v37;
        v60 = 2048;
        v61 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Hands overlaps, XminOverlapAmount %f, YminOverlapAmount %f, avgPalmScale %f, thresh %f", buf, 0x2Au);
      }

      v11 = 1;
    }
  }

LABEL_40:
  return v11;
}

- (BOOL)handsTooClose:(id)close pairedHand:(id)hand
{
  v26 = *MEMORY[0x1E69E9840];
  closeCopy = close;
  handCopy = hand;
  v8 = handCopy;
  v9 = 0;
  if (closeCopy && handCopy)
  {
    if ([(VCPHandObservation *)closeCopy gestureType]== 13 || [(VCPHandObservation *)closeCopy gestureType]== 17 || [(VCPHandObservation *)v8 gestureType]== 13 || [(VCPHandObservation *)v8 gestureType]== 17)
    {
      goto LABEL_7;
    }

    if ([(VCPHandGestureMitigator *)self handsOverlap:closeCopy pairedHand:v8])
    {
      if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      LOWORD(v22) = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Hands are too close due to overlapping";
      v13 = 2;
LABEL_24:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_DEBUG, v12, &v22, v13);
LABEL_25:
      v9 = 1;
      goto LABEL_8;
    }

    v14 = palmCenter(closeCopy, self->_rotationInDegrees);
    v15 = palmCenter(v8, self->_rotationInDegrees);
    v16 = palmScale(closeCopy, self->_rotationInDegrees);
    v17 = palmScale(v8, self->_rotationInDegrees);
    gestureType = [(VCPHandObservation *)closeCopy gestureType];
    v19 = vsub_f32(*&v14, *&v15);
    v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    v21 = (v16 + v17) * 0.5;
    if (gestureType == 9 || [(VCPHandObservation *)v8 gestureType]== 9)
    {
      if (v20 < (v21 * 1.25))
      {
        if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        v22 = 134218240;
        v23 = v20;
        v24 = 2048;
        v25 = v21;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Hands are too close in palmDistance %f when double-thumbsup, avgPlmScale %f";
        goto LABEL_23;
      }
    }

    else if (v20 < (v21 * 0.5))
    {
      if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      v22 = 134218240;
      v23 = v20;
      v24 = 2048;
      v25 = v21;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Hands are too close in palmDistance %f, avgPlmScale %f";
LABEL_23:
      v13 = 22;
      goto LABEL_24;
    }

LABEL_7:
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (BOOL)handsVerticallyAligned:(id)aligned pairedHand:(id)hand
{
  v20 = *MEMORY[0x1E69E9840];
  alignedCopy = aligned;
  handCopy = hand;
  v8 = handCopy;
  v9 = 0;
  if (alignedCopy && handCopy)
  {
    if (([(VCPHandObservation *)alignedCopy gestureType]== 9 && [(VCPHandObservation *)v8 gestureType]== 9 || [(VCPHandObservation *)alignedCopy gestureType]== 12 && [(VCPHandObservation *)v8 gestureType]== 12) && (v10 = palmCenter(alignedCopy, self->_rotationInDegrees), v11 = palmCenter(v8, self->_rotationInDegrees), v12 = palmScale(alignedCopy, self->_rotationInDegrees), v13 = fabsf(vsub_f32(*&v10, *&v11).f32[0]), v14 = (v12 + palmScale(v8, self->_rotationInDegrees)) * 0.5, v13 < (v14 * 1.25)))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218240;
        v17 = v13;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Hands are too close in palmXAxisDistance %f when double-thumbsup, avgPlmScale %f", &v16, 0x16u);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)checkHandGestureTemporalInconsistency:(id)inconsistency forHand:(id)hand
{
  v19 = *MEMORY[0x1E69E9840];
  inconsistencyCopy = inconsistency;
  handCopy = hand;
  [objc_opt_class() getGestureTypeConsistencyLookBackDuration];
  v8 = vcvtms_s32_f32(v7 * 5.0);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18[0] = 67109120;
    v18[1] = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "checkHandGestureTemporalInconsistency: frameChannelLookBackCount %d", v18, 8u);
  }

  for (i = [inconsistencyCopy count] - 2; ; --i)
  {
    v10 = [inconsistencyCopy count];
    v11 = (v10 + ~v8) & ~((v10 + ~v8) >> 31);
    if ((i + 1) <= v11)
    {
      break;
    }

    v12 = [inconsistencyCopy objectAtIndexedSubscript:i];
    v13 = [v12 objectForKeyedSubscript:handCopy];

    v14 = [inconsistencyCopy objectAtIndexedSubscript:i + 1];
    v15 = [v14 objectForKeyedSubscript:handCopy];

    if (!v15 || !v13 || (v16 = [v15 gestureType], v16 != objc_msgSend(v13, "gestureType")))
    {

      break;
    }
  }

  return (i + 1) > v11;
}

- (BOOL)checkHandGestureGlobalMotion:(id)motion forHand:(id)hand
{
  v58 = *MEMORY[0x1E69E9840];
  motionCopy = motion;
  handCopy = hand;
  [objc_opt_class() getHandMotionLookBackDuration];
  v9 = v8;
  [objc_opt_class() getPalmScaleChangeThreshold];
  v11 = v10;
  [objc_opt_class() getPalmMoveDistanceThreshold];
  v13 = v12;
  v14 = vcvtms_s32_f32(v9 * 5.0);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v46 = 67109120;
    LODWORD(v47) = v14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "checkHandGestureGlobalMotion: frameChannelLookBackCount %d", &v46, 8u);
  }

  v15 = ~v14;
  for (i = [motionCopy count] - 2; ; --i)
  {
    v17 = [motionCopy count];
    if ((i + 1) <= ((v17 + v15) & ~((v17 + v15) >> 31)))
    {
      break;
    }

    v18 = [motionCopy objectAtIndexedSubscript:i];
    v19 = [v18 objectForKeyedSubscript:handCopy];

    v20 = [motionCopy objectAtIndexedSubscript:i + 1];
    v21 = [v20 objectForKeyedSubscript:handCopy];

    if (!v21 || !v19)
    {
      goto LABEL_32;
    }

    v22 = palmCenter(v21, self->_rotationInDegrees);
    v23 = palmCenter(v19, self->_rotationInDegrees);
    v24 = palmScale(v19, self->_rotationInDegrees);
    v25 = palmScale(v21, self->_rotationInDegrees);
    v26 = vsub_f32(*&v22, *&v23);
    v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)));
    v28 = vabds_f32(v25, v24);
    if (v24 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v24;
    }

    if (v28 > (v11 * v29) || v27 > (v13 * v24))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v46 = 134219264;
        v47 = v11;
        v48 = 2048;
        v49 = v13;
        v50 = 2048;
        v51 = v28;
        v52 = 2048;
        v53 = v27;
        v54 = 2048;
        v55 = v24;
        v56 = 2048;
        v57 = v25;
        v42 = MEMORY[0x1E69E9C10];
        v43 = "Global motion (consecutive): thresh_scale %f, thresh_dist %f, palmScaleChange %f, palmCenterChange %f, palmScaleRef %f, palmScaleCur %f";
LABEL_31:
        _os_log_impl(&dword_1C9B70000, v42, OS_LOG_TYPE_DEBUG, v43, &v46, 0x3Eu);
        goto LABEL_32;
      }

      goto LABEL_32;
    }
  }

  for (j = [motionCopy count] - 2; ; --j)
  {
    v31 = [motionCopy count];
    if (j < ((v31 + v15) & ~((v31 + v15) >> 31)))
    {
      v44 = 0;
      goto LABEL_33;
    }

    v32 = [motionCopy objectAtIndexedSubscript:{(objc_msgSend(motionCopy, "count") - 1)}];
    v19 = [v32 objectForKeyedSubscript:handCopy];

    v33 = [motionCopy objectAtIndexedSubscript:j];
    v21 = [v33 objectForKeyedSubscript:handCopy];

    if (!v21 || !v19)
    {
      goto LABEL_32;
    }

    v34 = palmCenter(v21, self->_rotationInDegrees);
    v35 = palmCenter(v19, self->_rotationInDegrees);
    v36 = palmScale(v19, self->_rotationInDegrees);
    v37 = palmScale(v21, self->_rotationInDegrees);
    v38 = vsub_f32(*&v34, *&v35);
    v39 = sqrtf(vaddv_f32(vmul_f32(v38, v38)));
    v40 = vabds_f32(v37, v36);
    v41 = v36 >= v37 ? v37 : v36;
    if (v40 > (v11 * v41) || v39 > (v13 * v36))
    {
      break;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v46 = 134219264;
    v47 = v11;
    v48 = 2048;
    v49 = v13;
    v50 = 2048;
    v51 = v40;
    v52 = 2048;
    v53 = v39;
    v54 = 2048;
    v55 = v36;
    v56 = 2048;
    v57 = v37;
    v42 = MEMORY[0x1E69E9C10];
    v43 = "Global motion (buffer head): thresh_scale %f, thresh_dist %f, palmScaleChange %f, palmCenterChange %f, palmScaleRef %f, palmScaleCur %f";
    goto LABEL_31;
  }

LABEL_32:

  v44 = 1;
LABEL_33:

  return v44;
}

- (BOOL)mitigateWithFingerTiltingForHand:(id)hand
{
  v20 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  [objc_opt_class() getMinTiltingAngle];
  v6 = v5 * 3.14159265;
  if ([handCopy gestureType] == 9)
  {
    [VCPHandGestureImageRequest tiltingAngleForHand:handCopy srcKeypointType:4 dstKeypointType:3 rotationInDegrees:self->_rotationInDegrees];
  }

  else
  {
    if ([handCopy gestureType] == 12)
    {
      [objc_opt_class() getMinTiltingThumbAngle];
      v9 = v8;
      [VCPHandGestureImageRequest tiltingAngleForHand:handCopy srcKeypointType:4 dstKeypointType:3 rotationInDegrees:self->_rotationInDegrees];
      v11 = v10;
      v12 = v9 * 3.14159265;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "mitigateWithFingerTiltingForHand: tiltingAngle %f, threshold %f", &v16, 0x16u);
      }

      v13 = v11 < v12;
      goto LABEL_12;
    }

    if ([handCopy gestureType] != 2 && objc_msgSend(handCopy, "gestureType") != 7)
    {
      v14 = 0;
      goto LABEL_15;
    }

    [VCPHandGestureImageRequest tiltingAngleForHand:handCopy srcKeypointType:8 dstKeypointType:5 rotationInDegrees:self->_rotationInDegrees];
  }

  v13 = v7 < v6;
LABEL_12:
  v14 = v13;
LABEL_15:

  return v14;
}

- (BOOL)mitigateWithFingerOpennessForHand:(id)hand
{
  v15 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  v5 = [objc_opt_class() heuristicFingerOpenness:handCopy rotationInDegrees:self->_rotationInDegrees];
  [handCopy setFingerOpenness:v5];
  chirality = [handCopy chirality];
  v7 = VCPGestureLeftHandKey;
  if (chirality != -1)
  {
    v7 = &VCPGestureRightHandKey;
  }

  v8 = *v7;
  if (([handCopy gestureType] == 9 || objc_msgSend(handCopy, "gestureType") == 12) && (v9 = objc_msgSend(objc_opt_class(), "heuristicIsThumbOpenWide:rotationInDegrees:isRelaxed:", handCopy, self->_rotationInDegrees, objc_msgSend(handCopy, "gestureType") == 12), objc_msgSend(handCopy, "setFingerOpenness:", v5 & 0xFFFFFFFFFFFFFFFELL | v9), (((v5 & 0xFFFFFFFFFFFFFFFELL) == 0) & v9) == 0))
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out %@ hand thumbs up/down with finger openness heuristic constraints", v14, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if ([handCopy gestureType] == 2)
  {
    if (v5 != 6)
    {
      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *v14 = 138412290;
      *&v14[4] = v8;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "VCPHandGestureVideoRequest : gate out %@ hand victory with finger openness heuristic constraints";
      goto LABEL_20;
    }

    if ([objc_opt_class() heuristicIsIndexMiddleTooClose:handCopy rotationInDegrees:self->_rotationInDegrees])
    {
      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *v14 = 138412290;
      *&v14[4] = v8;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "VCPHandGestureVideoRequest : gate out %@ hand victory due to index and middle tips too close";
LABEL_20:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_INFO, v12, v14, 0xCu);
LABEL_21:
      v10 = 1;
    }
  }

  if ([handCopy gestureType] == 7 && v5 != 18)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v14 = 138412290;
      *&v14[4] = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out %@ hand rock with finger openness heuristic constraints", v14, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)handPalmFacingCamera:(id)camera rotationInDegrees:(int)degrees useTips:(BOOL)tips
{
  tipsCopy = tips;
  v36 = *MEMORY[0x1E69E9840];
  cameraCopy = camera;
  v8 = cameraCopy;
  if (cameraCopy)
  {
    [cameraCopy bounds];
    if (v9 > 0.0)
    {
      keypoints = [v8 keypoints];
      v11 = keypoints;
      if (!keypoints)
      {
        LOBYTE(v24) = 0;
LABEL_18:

        goto LABEL_19;
      }

      v12 = [keypoints objectAtIndexedSubscript:0];
      v13 = keyPointPosition(v12, degrees);

      v14 = [v11 objectAtIndexedSubscript:5];
      v15 = keyPointPosition(v14, degrees);

      v16 = [v11 objectAtIndexedSubscript:13];
      v17 = keyPointPosition(v16, degrees);

      if (tipsCopy)
      {
        v18 = [v11 objectAtIndexedSubscript:8];
        v15 = keyPointPosition(v18, degrees);

        v19 = [v11 objectAtIndexedSubscript:12];
        v17 = keyPointPosition(v19, degrees);
      }

      chirality = [v8 chirality];
      v21 = vsub_f32(*&v15, *&v13);
      v22 = vsub_f32(*&v17, *&v13);
      v23 = (-v21.f32[1] * v22.f32[0]) + (v21.f32[0] * v22.f32[1]);
      if (chirality == 1)
      {
        if (v23 <= 0.0)
        {
LABEL_8:
          v24 = 0;
LABEL_13:
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            chirality2 = [v8 chirality];
            v26 = "right";
            v28 = 136315906;
            if (chirality2 == -1)
            {
              v26 = "left";
            }

            v29 = v26;
            v30 = 2048;
            v31 = v23;
            v32 = 1024;
            v33 = v24;
            v34 = 1024;
            v35 = tipsCopy;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest : chirality %s, cross_product %f, facingCamera %d, usedTips %d", &v28, 0x22u);
          }

          goto LABEL_18;
        }
      }

      else if (v23 >= 0.0)
      {
        goto LABEL_8;
      }

      v24 = 1;
      goto LABEL_13;
    }
  }

  LOBYTE(v24) = 0;
LABEL_19:

  return v24;
}

- (BOOL)handTouchFace:(id)face andFace:(CGRect)andFace rotationInDegrees:(int)degrees
{
  v5 = *&degrees;
  height = andFace.size.height;
  width = andFace.size.width;
  y = andFace.origin.y;
  x = andFace.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  if (faceCopy && (v55.origin.x = x, v55.origin.y = y, v55.size.width = width, v55.size.height = height, !CGRectIsEmpty(v55)))
  {
    [objc_opt_class() getFaceExtensionRatio];
    v15 = v14;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = [&unk_1F49BEE78 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v16)
    {
      v17 = y + (v15 * -0.5) * height;
      v18 = height * (v15 + 1.0);
      v19 = *v48;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(&unk_1F49BEE78);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          keypoints = [faceCopy keypoints];
          v23 = [keypoints objectAtIndexedSubscript:{objc_msgSend(v21, "intValue")}];

          if (v23)
          {
            [v23 location];
            v25 = v24;
            [v23 location];
            v54.y = v26;
            v56.origin.x = x;
            v56.origin.y = v17;
            v56.size.width = width;
            v56.size.height = v18;
            v54.x = v25;
            if (CGRectContainsPoint(v56, v54))
            {

              v27 = 1;
              goto LABEL_16;
            }
          }
        }

        v16 = [&unk_1F49BEE78 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_16:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    keypoints2 = [faceCopy keypoints];
    v29 = [keypoints2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v29)
    {
      v30 = *v44;
      v31 = 0.0;
      v32 = 1.0;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(keypoints2);
          }

          v34 = *(*(&v43 + 1) + 8 * j);
          [v34 location];
          v36 = v35;
          [v34 location];
          v32 = fmin(v36, v32);
          v31 = fmax(v37, v31);
        }

        v29 = [keypoints2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 0.0;
      v32 = 1.0;
    }

    [objc_opt_class() getMinHandFaceRatio];
    v39 = v38;
    if ([faceCopy gestureType] != 12 && objc_msgSend(faceCopy, "gestureType") != 9)
    {
      v39 = v39 * 1.2;
    }

    if (height * v39 >= (v31 - v32))
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

    if ([faceCopy gestureType] == 2)
    {
      if ([(VCPHandGestureMitigator *)self handPalmFacingCamera:faceCopy rotationInDegrees:v5 useTips:1]&& [(VCPHandGestureMitigator *)self handPalmFacingCamera:faceCopy rotationInDegrees:v5 useTips:0])
      {
        v12 = 0;
      }

      else
      {
        [faceCopy setMitigationType:{objc_msgSend(faceCopy, "mitigationType") | 0x20}];
        LODWORD(v40) = 1036831949;
        [faceCopy setGestureConfidence:v40];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *v42 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out victory gesture due to palm-not-facing-camera", v42, 2u);
        }
      }
    }

    if ([faceCopy gestureType] == 7)
    {
      v41 = [(VCPHandGestureMitigator *)self handPalmFacingCamera:faceCopy rotationInDegrees:v5 useTips:0];
      if (v41 || (v12 & 1) == 0)
      {
        v12 &= !v41;
      }

      else
      {
        [faceCopy setMitigationType:{objc_msgSend(faceCopy, "mitigationType") | 0x20}];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *v42 = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out rock gesture due to palm-not-facing-camera while in hand-touch-face", v42, 2u);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)adjustGestureForHand:(id)hand withFace:(CGRect)face
{
  height = face.size.height;
  width = face.size.width;
  y = face.origin.y;
  x = face.origin.x;
  v17 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  v10 = handCopy;
  if (handCopy && ([handCopy gestureType] == 12 || objc_msgSend(v10, "gestureType") == 9 || objc_msgSend(v10, "gestureType") == 2 || objc_msgSend(v10, "gestureType") == 7 || objc_msgSend(v10, "gestureType") == 8) && -[VCPHandGestureMitigator handTouchFace:andFace:rotationInDegrees:](self, "handTouchFace:andFace:rotationInDegrees:", v10, self->_rotationInDegrees, x, y, width, height))
  {
    [v10 gestureConfidence];
    *&v12 = v11 * 0.7;
    [v10 setGestureConfidence:v12];
    [v10 setMitigationType:{objc_msgSend(v10, "mitigationType") | 1}];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v14[0] = 67109376;
      v14[1] = [v10 groupID];
      v15 = 1024;
      chirality = [v10 chirality];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : adjust gesture confidence based on hand-face position for hand with groupID = %d, chirality = %d", v14, 0xEu);
    }

    [v10 gestureConfidence];
    if (v13 < 0.5)
    {
      [v10 setGestureType:0];
    }
  }
}

- (void)adjustGestureForHand:(id)hand withFaceYaw:(id)yaw
{
  v17 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  yawCopy = yaw;
  if (handCopy)
  {
    if ([handCopy gestureType])
    {
      [yawCopy floatValue];
      if ((v7 * 180.0) / 3.14159265 < -45.0 || ([yawCopy floatValue], (v8 * 180.0) / 3.14159265 > 45.0))
      {
        [handCopy setMitigationType:{objc_msgSend(handCopy, "mitigationType") | 0x1000}];
        LODWORD(v9) = 1036831949;
        [handCopy setGestureConfidence:v9];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          [yawCopy floatValue];
          v11 = v10;
          [yawCopy floatValue];
          v13 = 134218240;
          v14 = v11;
          v15 = 2048;
          v16 = (v12 * 180.0) / 3.14159265;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureVideoRequest : adjust gesture confidence based on face yaw = %f (%f degrees)", &v13, 0x16u);
        }
      }
    }
  }
}

- (BOOL)handInMitigationQuadrant:(id)quadrant withFace:(CGRect)face
{
  width = face.size.width;
  y = face.origin.y;
  x = face.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  quadrantCopy = quadrant;
  v9 = quadrantCopy;
  if (quadrantCopy)
  {
    keypoints = [quadrantCopy keypoints];

    if (keypoints)
    {
      keypoints2 = [v9 keypoints];
      v31.x = x + width * 0.5;
      v31.y = y;
      transformLocation(v31, 0, self->_rotationInDegrees);
      v13 = v12;
      v15 = v14;
      v16 = [keypoints2 objectAtIndexedSubscript:4];
      v21 = keyPointPosition(v16, self->_rotationInDegrees);

      if ([v9 chirality] == -1)
      {
        if (v13 > *&v21 && v15 > *(&v21 + 1))
        {
          if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_20;
          }

          *buf = 134218752;
          v23 = v13;
          v24 = 2048;
          v25 = v15;
          v26 = 2048;
          v27 = *&v21;
          v28 = 2048;
          v29 = *(&v21 + 1);
          v17 = MEMORY[0x1E69E9C10];
          v18 = "handInMitigationQuadrant: faceLowerCenter (%f, %f), handCenter(%f, %f), left hand mitigation ON in quadrant 3";
          goto LABEL_19;
        }
      }

      else if ([v9 chirality] == 1 && v13 < *&v21 && v15 > *(&v21 + 1))
      {
        if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_20;
        }

        *buf = 134218752;
        v23 = v13;
        v24 = 2048;
        v25 = v15;
        v26 = 2048;
        v27 = *&v21;
        v28 = 2048;
        v29 = *(&v21 + 1);
        v17 = MEMORY[0x1E69E9C10];
        v18 = "handInMitigationQuadrant: faceLowerCenter (%f, %f), handCenter(%f, %f), right hand mitigation ON in quadrant 4";
LABEL_19:
        _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0x2Au);
LABEL_20:
        v19 = 1;
LABEL_22:

        goto LABEL_23;
      }

      v19 = 0;
      goto LABEL_22;
    }
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "handInMitigationQuadrant invalid hand input", buf, 2u);
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (int)mitigateHand:(id)hand handKey:(id)key pairedHand:(id)pairedHand featureProvider:(id)provider faceRects:(id)rects faceYaws:(id)yaws
{
  v77 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  keyCopy = key;
  pairedHandCopy = pairedHand;
  providerCopy = provider;
  rectsCopy = rects;
  yawsCopy = yaws;
  v18 = yawsCopy;
  if (yawsCopy)
  {
    if ([yawsCopy count] == 1)
    {
      v19 = [v18 objectAtIndexedSubscript:0];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [v19 floatValue];
        *buf = 138412546;
        v74 = *&v19;
        v75 = 2048;
        v76 = (v20 * 180.0) / 3.14159265;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureMitigator - faceYaw = %@ (%f degree)", buf, 0x16u);
      }

      [(VCPHandGestureMitigator *)self adjustGestureForHand:handCopy withFaceYaw:v19];
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandGestureMitigator - face yaw angles not available", buf, 2u);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = rectsCopy;
  v22 = [v21 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v22)
  {
    v23 = *v69;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v69 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v78 = NSRectFromString(*(*(&v68 + 1) + 8 * i));
        x = v78.origin.x;
        y = v78.origin.y;
        width = v78.size.width;
        height = v78.size.height;
        if (!CGRectIsEmpty(v78))
        {
          [(VCPHandGestureMitigator *)self adjustGestureForHand:handCopy withFace:x, y, width, height];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v22);
  }

  [(VCPHandObservation *)handCopy bounds];
  v30 = v29;
  [(VCPHandObservation *)handCopy bounds];
  if (v30 >= v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (v32 < self->_minHandSize)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      minHandSize = self->_minHandSize;
      *buf = 134217984;
      v74 = minHandSize;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out small hand < %f", buf, 0xCu);
    }

    LODWORD(v33) = 1036831949;
    [(VCPHandObservation *)handCopy setGestureConfidence:v33, rectsCopy];
    [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 8];
  }

  if (!pairedHandCopy)
  {
    v35 = +[VCPHandObservation twoHandGestureTypes];
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPHandObservation gestureType](handCopy, "gestureType")}];
    v37 = [v35 containsObject:v36];

    if (v37)
    {
      [(VCPHandObservation *)handCopy setGestureType:0];
    }
  }

  if ([(VCPHandObservation *)handCopy gestureType]!= 13 && [(VCPHandObservation *)handCopy gestureType]!= 17)
  {
    observationsForCurrentGroup = [providerCopy observationsForCurrentGroup];
    v39 = [(VCPHandGestureMitigator *)self checkHandGestureJitter:observationsForCurrentGroup forHand:keyCopy];

    if (v39)
    {
      [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 2];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out hand gesture due to jittering", buf, 2u);
      }

      LODWORD(v40) = 1036831949;
      [(VCPHandObservation *)handCopy setGestureConfidence:v40];
    }
  }

  if ([(VCPHandObservation *)handCopy gestureType]== 9)
  {
    if (pairedHandCopy && [pairedHandCopy gestureType] == 9)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : skip checking holding object for two-hand thumbs-up", buf, 2u);
      }
    }

    else
    {
      observationsForCurrentGroup2 = [providerCopy observationsForCurrentGroup];
      v42 = [(VCPHandGestureMitigator *)self checkHandHoldObject:observationsForCurrentGroup2 forHand:keyCopy];

      if (v42)
      {
        [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x2000];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out hand gesture due to holding object", buf, 2u);
        }

        LODWORD(v43) = 1036831949;
        [(VCPHandObservation *)handCopy setGestureConfidence:v43];
      }
    }
  }

  if ([(VCPHandObservation *)handCopy gestureType]!= 13 && [(VCPHandObservation *)handCopy gestureType]!= 14)
  {
    observationsForCurrentGroup3 = [providerCopy observationsForCurrentGroup];
    v45 = [(VCPHandGestureMitigator *)self checkHandGestureGlobalMotion:observationsForCurrentGroup3 forHand:keyCopy];

    if (v45)
    {
      [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x10];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out hand gesture due to global motion", buf, 2u);
      }

      LODWORD(v46) = 1036831949;
      [(VCPHandObservation *)handCopy setGestureConfidence:v46];
    }
  }

  if ([(VCPHandGestureMitigator *)self mitigateWithFingerOpennessForHand:handCopy])
  {
    [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 4];
    LODWORD(v47) = 1036831949;
    [(VCPHandObservation *)handCopy setGestureConfidence:v47];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to opennnes", buf, 2u);
    }
  }

  v48 = +[VCPHandObservation twoHandGestureTypes];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPHandObservation gestureType](handCopy, "gestureType")}];
  if ([v48 containsObject:v49])
  {
    v50 = [(VCPHandObservation *)handCopy gestureType]== 15;

    if (!v50)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  observationsForCurrentGroup4 = [providerCopy observationsForCurrentGroup];
  v52 = [(VCPHandGestureMitigator *)self checkHandGestureTemporalInconsistency:observationsForCurrentGroup4 forHand:keyCopy];

  if (v52)
  {
    [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x200];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out hand gesture due to temporal gesture type consistency", buf, 2u);
    }

    LODWORD(v53) = 1036831949;
    [(VCPHandObservation *)handCopy setGestureConfidence:v53];
  }

LABEL_68:
  if ([(VCPHandGestureMitigator *)self mitigateWithFingerTiltingForHand:handCopy])
  {
    [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x400];
    LODWORD(v54) = 1036831949;
    [(VCPHandObservation *)handCopy setGestureConfidence:v54];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to tilting angle", buf, 2u);
    }
  }

  if ([(VCPHandObservation *)handCopy gestureType]== 12)
  {
    LODWORD(v55) = 1058642330;
    if (![VCPHandGestureImageRequest isFistClosedTight:handCopy rotationInDegrees:self->_rotationInDegrees scalingFactor:v55])
    {
      [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x800];
      LODWORD(v56) = 1036831949;
      [(VCPHandObservation *)handCopy setGestureConfidence:v56];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to fist not closed tight in thumbs down", buf, 2u);
      }
    }
  }

  if (-[VCPHandObservation gestureType](handCopy, "gestureType") == 9 && [v21 count] == 1)
  {
    v57 = [v21 objectAtIndexedSubscript:0];
    v79 = NSRectFromString(v57);
    v58 = v79.origin.x;
    v59 = v79.origin.y;
    v60 = v79.size.width;
    v61 = v79.size.height;

    v80.origin.x = v58;
    v80.origin.y = v59;
    v80.size.width = v60;
    v80.size.height = v61;
    if (!CGRectIsEmpty(v80) && [(VCPHandGestureMitigator *)self handInMitigationQuadrant:handCopy withFace:v58, v59, v60, v61])
    {
      LODWORD(v62) = palmScale(handCopy, self->_rotationInDegrees);
      LODWORD(v63) = 1061997773;
      if (![VCPHandGestureImageRequest isFistClosedTightOccluded:handCopy rotationInDegrees:self->_rotationInDegrees scalingFactor:v63 palmScale:v62])
      {
        [(VCPHandObservation *)handCopy setMitigationType:[(VCPHandObservation *)handCopy mitigationType]| 0x800];
        LODWORD(v64) = 1036831949;
        [(VCPHandObservation *)handCopy setGestureConfidence:v64];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to fist not closed tight in thumbs up", buf, 2u);
        }
      }
    }
  }

  return 0;
}

- (int)mitigate:(id)mitigate rightHand:(id)hand featureProvider:(id)provider faceRects:(id)rects faceYaws:(id)yaws
{
  mitigateCopy = mitigate;
  handCopy = hand;
  providerCopy = provider;
  rectsCopy = rects;
  yawsCopy = yaws;
  if (!(mitigateCopy | handCopy))
  {
    goto LABEL_35;
  }

  if (!mitigateCopy)
  {
    if (!handCopy)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  v17 = [(VCPHandGestureMitigator *)self mitigateHand:mitigateCopy handKey:@"leftHand" pairedHand:handCopy featureProvider:providerCopy faceRects:rectsCopy faceYaws:yawsCopy];
  v18 = v17;
  if (handCopy && !v17)
  {
LABEL_7:
    v18 = [(VCPHandGestureMitigator *)self mitigateHand:handCopy handKey:@"rightHand" pairedHand:mitigateCopy featureProvider:providerCopy faceRects:rectsCopy faceYaws:yawsCopy];
    if (v18 || !mitigateCopy)
    {
      goto LABEL_36;
    }

    v31 = +[VCPHandObservation twoHandGestureTypes];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(mitigateCopy, "gestureType")}];
    if ([v31 containsObject:v19])
    {
    }

    else
    {
      v20 = +[VCPHandObservation twoHandGestureTypes];
      v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(handCopy, "gestureType")}];
      v22 = [v20 containsObject:v21];

      if (!v22)
      {
        if ([(VCPHandGestureMitigator *)self handsTooClose:mitigateCopy pairedHand:handCopy])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *v33 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to two-hand too close", v33, 2u);
          }

          [mitigateCopy setMitigationType:{objc_msgSend(mitigateCopy, "mitigationType") | 0x80}];
          LODWORD(v28) = 1036831949;
          [mitigateCopy setGestureConfidence:v28];
          [handCopy setMitigationType:{objc_msgSend(handCopy, "mitigationType") | 0x80}];
          LODWORD(v29) = 1036831949;
          [handCopy setGestureConfidence:v29];
        }

        if ([(VCPHandGestureMitigator *)self handsVerticallyAligned:mitigateCopy pairedHand:handCopy])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *v32 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gated out hand due to two-hand vertically aligned", v32, 2u);
          }

          [mitigateCopy setMitigationType:{objc_msgSend(mitigateCopy, "mitigationType") | 0x4000}];
          [handCopy setMitigationType:{objc_msgSend(handCopy, "mitigationType") | 0x4000}];
        }

        goto LABEL_35;
      }
    }

    gestureType = [mitigateCopy gestureType];
    if (gestureType == [handCopy gestureType])
    {
      if ([mitigateCopy gestureType] == 15)
      {
        if (([objc_opt_class() heuristicHeart:mitigateCopy andRightHand:handCopy rotationInDegrees:objc_msgSend(providerCopy relax:{"rotationInDegrees"), 1}] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out heart with heuristic constraints", buf, 2u);
          }

          [handCopy setMitigationType:{objc_msgSend(handCopy, "mitigationType") | 0x40}];
          [mitigateCopy setMitigationType:{objc_msgSend(mitigateCopy, "mitigationType") | 0x40}];
          LODWORD(v24) = 1036831949;
          [handCopy setGestureConfidence:v24];
          LODWORD(v25) = 1036831949;
          [mitigateCopy setGestureConfidence:v25];
        }

        if ([(VCPHandGestureMitigator *)self handsOverlap:mitigateCopy pairedHand:handCopy])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *v34 = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : gate out heart due to overlapping hands", v34, 2u);
          }

          [handCopy setMitigationType:{objc_msgSend(handCopy, "mitigationType") | 0x100}];
          [mitigateCopy setMitigationType:{objc_msgSend(mitigateCopy, "mitigationType") | 0x100}];
          LODWORD(v26) = 1036831949;
          [handCopy setGestureConfidence:v26];
          LODWORD(v27) = 1036831949;
          [mitigateCopy setGestureConfidence:v27];
        }
      }
    }

    else
    {
      [mitigateCopy setGestureType:0];
      [handCopy setGestureType:0];
    }

LABEL_35:
    v18 = 0;
  }

LABEL_36:

  return v18;
}

@end