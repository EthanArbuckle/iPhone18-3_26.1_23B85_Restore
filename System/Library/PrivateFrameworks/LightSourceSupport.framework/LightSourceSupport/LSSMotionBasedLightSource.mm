@interface LSSMotionBasedLightSource
- (BOOL)settled;
- (LSSMotionBasedLightSource)init;
- (double)intensity;
- (float64x2_t)updateTargetDirectionWithOrientation:(int)a3 goToRest:(float64x2_t)result timestamp:;
- (uint64_t)direction;
@end

@implementation LSSMotionBasedLightSource

- (BOOL)settled
{
  if (result)
  {
    return *(result + 8) == 4;
  }

  return result;
}

- (uint64_t)direction
{
  if (result)
  {
    v2 = *(result + 128);
    *(a2 + 16) = *(result + 144);
    *a2 = v2;
    v3 = *(a2 + 16);
  }

  else
  {
    v2 = 0uLL;
    v3 = 0uLL;
  }

  *a2 = v2;
  *(a2 + 16) = v3;
  return result;
}

- (double)intensity
{
  if (a1)
  {
    return *(a1 + 120);
  }

  else
  {
    return 0.0;
  }
}

- (LSSMotionBasedLightSource)init
{
  v19.receiver = self;
  v19.super_class = LSSMotionBasedLightSource;
  result = [(LSSMotionBasedLightSource *)&v19 init];
  if (result)
  {
    result->_lightSourceState = 0;
    v3 = *&result->_anon_10[16];
    *result->_anon_30 = *result->_anon_10;
    *&result->_anon_30[16] = v3;
    result->_intensity = 1.0;
    *&result->_elapsedWaitTime = xmmword_255E9CA20;
    result->_cosSmallAngle = NAN;
    v4 = result;
    v5 = +[LSSSettings currentSettings];
    settings = v4->_settings;
    v4->_settings = v5;

    objc_opt_self();
    v7 = +[LSSSettings currentSettings];
    v8 = [(LSSSettings *)v7 doubleForKey:?];

    v9 = +[LSSSettings currentSettings];
    v10 = [(LSSSettings *)v9 doubleForKey:?];

    v11 = __sincos_stret(v8 * 3.14159265 / 180.0 * 0.5);
    v18 = vmulq_n_f64(0, v11.__sinval);
    v13 = __sincos_stret(v10 * 3.14159265 / 180.0 * 0.5);
    v12.f64[0] = v13.__sinval;
    result = v4;
    v14.i64[0] = *&vmulq_f64(v12, 0);
    v14.i64[1] = *&v13.__cosval;
    v15 = vmulq_n_f64(xmmword_255E9C9F0, v13.__sinval);
    v16 = vnegq_f64(v15);
    v17 = vextq_s8(v14, vnegq_f64(v14), 8uLL);
    *v4->_anon_10 = vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v15, v11.__cosval), vextq_s8(v16, v15, 8uLL), v11.__sinval, 0), vmlaq_n_f64(vmulq_laneq_f64(v14, v18, 1), v17, v18.f64[0]));
    *&v4->_anon_10[16] = vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v14, v11.__cosval), v17, v11.__sinval, 0), vmlaq_n_f64(vmulq_laneq_f64(v16, v18, 1), vextq_s8(v15, v16, 8uLL), v18.f64[0]));
  }

  return result;
}

- (float64x2_t)updateTargetDirectionWithOrientation:(int)a3 goToRest:(float64x2_t)result timestamp:
{
  if (!a1)
  {
    return result;
  }

  v7 = fmin(result.f64[0] - *(a1 + 80), 1.0);
  *(a1 + 80) = result.f64[0];
  if (v7 >= 1.0)
  {
    v8 = a2[1];
    *(a1 + 48) = *a2;
    *(a1 + 64) = v8;
  }

  v91 = *a2;
  v92 = a2[1];
  v9 = (a1 + 48);
  v94 = *(a1 + 48);
  v95 = *(a1 + 64);
  if (([(LSSSettings *)*(a1 + 112) dynamic]& 1) != 0 || (v10 = *(a1 + 96), (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    v11 = [(LSSSettings *)*(a1 + 112) doubleForKey:?];
    *(a1 + 96) = cos(v11 * 3.14159265 / 180.0);
    v12 = [(LSSSettings *)*(a1 + 112) doubleForKey:?];
    v13 = cos(v12 * 3.14159265 / 180.0);
    *(a1 + 104) = v13;
    v10 = *(a1 + 96);
  }

  else
  {
    v13 = *(a1 + 104);
  }

  __asm { FMOV            V2.2D, #-1.0 }

  v96 = _Q2;
  switch(*(a1 + 8))
  {
    case 0:
      if (a3)
      {
        *(a1 + 88) = 0;
        v32 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
        v33 = vandq_s8(vcgtq_f64(v32, vabdq_f64(*(a1 + 48), *a2)), vcgtq_f64(v32, vabdq_f64(*(a1 + 64), a2[1])));
        if ((vandq_s8(v33, vdupq_laneq_s64(v33, 1)).u64[0] & 0x8000000000000000) != 0)
        {
          v30 = 4;
        }

        else
        {
          v30 = 1;
        }

        goto LABEL_29;
      }

      v35 = vmulq_f64(v92, xmmword_255E9CA30);
      v36 = vmulq_f64(v95, xmmword_255E9CA30);
      v37 = vnegq_f64(v91);
      v38 = vnegq_f64(v94);
      v39 = vextq_s8(v35, vnegq_f64(v35), 8uLL);
      v40 = vextq_s8(v36, vnegq_f64(v36), 8uLL);
      v41 = vmlaq_f64(vmlaq_f64(vmulq_f64(v91, 0), 0, vextq_s8(v37, v91, 8uLL)), v96, v39);
      v42 = vmlaq_f64(vmlaq_f64(vmulq_f64(v35, 0), 0, v39), v96, vextq_s8(v91, v37, 8uLL));
      v43 = vmlaq_f64(vmlaq_f64(vmulq_f64(v94, 0), 0, vextq_s8(v38, v94, 8uLL)), v96, v40);
      v44 = vmlaq_f64(vmlaq_f64(vmulq_f64(v36, 0), 0, v40), v96, vextq_s8(v94, v38, 8uLL));
      v45 = vnegq_f64(v42);
      v46 = vnegq_f64(v44);
      v47 = vextq_s8(v41, vnegq_f64(v41), 8uLL);
      v48 = vextq_s8(v43, vnegq_f64(v43), 8uLL);
      v49 = vmulq_f64(vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v41, v92, 1), v47, v92.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v45, v91, 1), vextq_s8(v42, v45, 8uLL), v91.f64[0])), vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v43, v95, 1), v48, v95.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v46, v94, 1), vextq_s8(v44, v46, 8uLL), v94.f64[0]))).f64[0] + vaddvq_f64(vmulq_f64(vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v42, v92, 1), vextq_s8(v45, v42, 8uLL), v92.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v41, v91, 1), v47, v91.f64[0])), vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v44, v95, 1), vextq_s8(v46, v44, 8uLL), v95.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v43, v94, 1), v48, v94.f64[0]))));
      v50 = v13 <= v49;
      v51 = 0.0;
      if (!v50)
      {
        v51 = v7 + *(a1 + 88);
      }

      v52 = LSSSettingsMotionLightSourceResetTimeoutLargeKey;
      *(a1 + 88) = v51;
      if (v10 <= v49)
      {
        v52 = LSSSettingsMotionLightSourceResetTimeoutSmallKey;
      }

      v53 = *v52;
      if (*(a1 + 88) >= [(LSSSettings *)*(a1 + 112) doubleForKey:v53])
      {
        *(a1 + 88) = 0;
        *(a1 + 8) = 1;
        if (qword_280D2F510 != -1)
        {
          dispatch_once(&qword_280D2F510, &__block_literal_global_4);
        }

        v54 = _MergedGlobals_4;
        if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEBUG))
        {
          *v99 = 0;
          _os_log_debug_impl(&dword_255E8B000, v54, OS_LOG_TYPE_DEBUG, "start fade", v99, 2u);
        }
      }

      goto LABEL_51;
    case 1:
    case 2:
      goto LABEL_9;
    case 3:
      v34 = a2[1];
      *v9 = *a2;
      *(a1 + 64) = v34;
      if ((a3 & 1) == 0)
      {
        *(a1 + 8) = 2;
      }

LABEL_9:
      *(a1 + 88) = v7 + *(a1 + 88);
      v18 = *(a1 + 88) / [(LSSSettings *)*(a1 + 112) doubleForKey:?];
      if (v18 >= 1.0)
      {
        *(a1 + 120) = 0x3FF0000000000000;
        v24 = *(a1 + 8);
        if (v18 <= 0.5 || v24 != 1)
        {
          if (v24 == 3)
          {
            *(a1 + 8) = 4;
            if (qword_280D2F510 != -1)
            {
              dispatch_once(&qword_280D2F510, &__block_literal_global_4);
            }

            v26 = _MergedGlobals_4;
            if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_51;
            }

            v98 = 0;
            v27 = "pause";
            v28 = &v98;
          }

          else
          {
            *(a1 + 8) = 0;
            if (qword_280D2F510 != -1)
            {
              dispatch_once(&qword_280D2F510, &__block_literal_global_4);
            }

            v26 = _MergedGlobals_4;
            if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_51;
            }

            *buf = 0;
            v27 = "idle";
            v28 = buf;
          }

          _os_log_debug_impl(&dword_255E8B000, v26, OS_LOG_TYPE_DEBUG, v27, v28, 2u);
          goto LABEL_51;
        }

LABEL_27:
        v29 = a2[1];
        *v9 = *a2;
        *(a1 + 64) = v29;
        v30 = 2;
        if (a3)
        {
          v30 = 3;
        }

LABEL_29:
        *(a1 + 8) = v30;
        goto LABEL_51;
      }

      v19 = 0.0;
      v20 = v18;
      v21 = (v20 + -0.5) * (v20 + -0.5);
      v22 = v21 * ((v21 * 0.25 + -0.125) * -64.0);
      if (v18 > 0.0)
      {
        v19 = v22;
      }

      *(a1 + 120) = v19;
      if (v18 > 0.5 && *(a1 + 8) == 1)
      {
        goto LABEL_27;
      }

LABEL_51:
      if (([(LSSSettings *)*(a1 + 112) dynamic]& 1) != 0)
      {
        objc_opt_self();
        v55 = +[LSSSettings currentSettings];
        v56 = [(LSSSettings *)v55 doubleForKey:?];

        v57 = +[LSSSettings currentSettings];
        v58 = [(LSSSettings *)v57 doubleForKey:?];

        v59 = __sincos_stret(v56 * 3.14159265 / 180.0 * 0.5);
        v93 = vmulq_n_f64(0, v59.__sinval);
        v61 = __sincos_stret(v58 * 3.14159265 / 180.0 * 0.5);
        v60.f64[0] = v61.__sinval;
        v62.i64[0] = *&vmulq_f64(v60, 0);
        v62.i64[1] = *&v61.__cosval;
        v63 = vmulq_n_f64(xmmword_255E9C9F0, v61.__sinval);
        v64 = vnegq_f64(v63);
        v65 = vextq_s8(v62, vnegq_f64(v62), 8uLL);
        v66 = vmlaq_n_f64(vmulq_laneq_f64(v62, v93, 1), v65, v93.f64[0]);
        v67 = vmlsq_lane_f64(vmulq_n_f64(v62, v59.__cosval), v65, v59.__sinval, 0);
        v68 = vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v63, v59.__cosval), vextq_s8(v64, v63, 8uLL), v59.__sinval, 0), v66);
        v69 = vaddq_f64(v67, vmlaq_n_f64(vmulq_laneq_f64(v64, v93, 1), vextq_s8(v63, v64, 8uLL), v93.f64[0]));
        *(a1 + 16) = v68;
        *(a1 + 32) = v69;
      }

      else
      {
        v68 = *(a1 + 16);
        v69 = *(a1 + 32);
      }

      v70 = vmulq_f64(v69, xmmword_255E9CA30);
      v71 = vnegq_f64(v68);
      v72 = vextq_s8(v70, vnegq_f64(v70), 8uLL);
      v73 = vmlaq_f64(vmlaq_f64(vmulq_f64(v68, 0), 0, vextq_s8(v71, v68, 8uLL)), v96, v72);
      v74 = vmlaq_f64(vmlaq_f64(vmulq_f64(v70, 0), 0, v72), v96, vextq_s8(v68, v71, 8uLL));
      v75 = vnegq_f64(v74);
      v76 = vextq_s8(v73, vnegq_f64(v73), 8uLL);
      v77 = vmlaq_n_f64(vmulq_laneq_f64(v75, v68, 1), vextq_s8(v74, v75, 8uLL), v68.f64[0]);
      v78 = vmlaq_n_f64(vmulq_laneq_f64(v74, v69, 1), vextq_s8(v75, v74, 8uLL), v69.f64[0]);
      *&v79 = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v73, v69, 1), v76, v69.f64[0]), v77);
      v80 = vaddq_f64(v78, vmlaq_n_f64(vmulq_laneq_f64(v73, v68, 1), v76, v68.f64[0]));
      v81 = *(a1 + 48);
      v82 = *(a1 + 64);
      v83 = vmulq_f64(v82, xmmword_255E9CA30);
      v84 = vnegq_f64(v81);
      v85 = vextq_s8(v83, vnegq_f64(v83), 8uLL);
      v86 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v81, v80, 1), vextq_s8(v84, v81, 8uLL), v80.f64[0]), v85, v79);
      v87 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v83, v80, 1), v85, v80.f64[0]), vextq_s8(v81, v84, 8uLL), v79);
      v88 = vnegq_f64(v87);
      v89 = vextq_s8(v86, vnegq_f64(v86), 8uLL);
      v90 = vmlaq_n_f64(vmulq_laneq_f64(v88, v81, 1), vextq_s8(v87, v88, 8uLL), v81.f64[0]);
      result = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v87, v82, 1), vextq_s8(v88, v87, 8uLL), v82.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v86, v81, 1), v89, v81.f64[0]));
      *(a1 + 128) = result;
      *(a1 + 144) = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v86, v82, 1), v89, v82.f64[0]), v90);
      return result;
    case 4:
      if (a3)
      {
        v31 = a2[1];
        *v9 = *a2;
        *(a1 + 64) = v31;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 88) = 0;
      }

      goto LABEL_51;
    default:
      goto LABEL_51;
  }
}

@end