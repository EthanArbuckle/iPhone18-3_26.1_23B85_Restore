@interface LSSMotionBasedProvider
- (BOOL)_updateLight:(float)light motionLevel:(float)level activateLevel:(float)activateLevel deactivateLevel:(float64_t)deactivateLevel timestamp:;
- (LSSMotionBasedProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (LSSProviderDelegate)delegate;
- (uint64_t)_updateReference:(float)reference motionLevel:(float)level activateLevel:(float)activateLevel deactivateLevel:;
- (void)_update:(uint64_t)_update timestamp:(float64x2_t *)timestamp;
- (void)invalidate;
- (void)provider:(id)provider updatedLight:(id)light;
@end

@implementation LSSMotionBasedProvider

- (LSSMotionBasedProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = LSSMotionBasedProvider;
  v8 = [(LSSMotionBasedProvider *)&v33 init];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = objc_alloc_init(MEMORY[0x277CC1CD8]);
  v10 = *(v8 + 2);
  *(v8 + 2) = v9;

  v11 = *(v8 + 2);
  if (!v11 || ([v11 isDeviceMotionAvailable] & 1) == 0)
  {
    if (qword_280D2F530 == -1)
    {
      v28 = _MergedGlobals_6;
      if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v27 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      [LSSMotionBasedProvider initWithQueue:delegate:];
      v28 = _MergedGlobals_6;
      if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    [LSSMotionBasedProvider initWithQueue:v28 delegate:?];
    goto LABEL_19;
  }

  objc_storeWeak(v8 + 10, delegateCopy);
  v12 = +[LSSSettings currentSettings];
  v13 = *(v8 + 8);
  *(v8 + 8) = v12;

  v14 = objc_opt_new();
  v15 = *(v8 + 3);
  *(v8 + 3) = v14;

  v16 = objc_opt_new();
  v17 = *(v8 + 4);
  *(v8 + 4) = v16;

  v18 = objc_opt_new();
  v19 = *(v8 + 5);
  *(v8 + 5) = v18;

  [*(v8 + 2) setDeviceMotionUpdateInterval:0.02];
  if (![(LSSSettings *)*(v8 + 8) BOOLForKey:?])
  {
    goto LABEL_9;
  }

  if (qword_280D2F530 != -1)
  {
    [LSSMotionBasedProvider initWithQueue:delegate:];
    v20 = _MergedGlobals_6;
    if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = _MergedGlobals_6;
  if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v20, OS_LOG_TYPE_DEFAULT, "power conservation", buf, 2u);
  }

LABEL_8:
  [*(v8 + 2) setPowerConservationMode:3];
LABEL_9:
  if (qword_280D2F530 == -1)
  {
    v21 = _MergedGlobals_6;
    if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [LSSMotionBasedProvider initWithQueue:delegate:];
  v21 = _MergedGlobals_6;
  if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
  {
LABEL_11:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v21, OS_LOG_TYPE_DEFAULT, "reset starting reference", buf, 2u);
  }

LABEL_12:
  [*(v8 + 2) setShouldResetStartingReference:0];
  v22 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v23 = *(v8 + 1);
  *(v8 + 1) = v22;

  [*(v8 + 1) setUnderlyingQueue:queueCopy];
  if (qword_280D2F530 != -1)
  {
    [LSSMotionBasedProvider initWithQueue:delegate:];
    v24 = _MergedGlobals_6;
    if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = _MergedGlobals_6;
  if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEFAULT))
  {
LABEL_14:
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v24, OS_LOG_TYPE_DEFAULT, "starting motion updates", buf, 2u);
  }

LABEL_15:
  objc_initWeak(buf, v8);
  v26 = *(v8 + 1);
  v25 = *(v8 + 2);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__LSSMotionBasedProvider_initWithQueue_delegate___block_invoke;
  v30[3] = &unk_279812820;
  objc_copyWeak(&v31, buf);
  [v25 startDeviceMotionUpdatesToQueue:v26 withHandler:v30];
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
LABEL_16:
  v27 = v8;
LABEL_20:

  return v27;
}

void __49__LSSMotionBasedProvider_initWithQueue_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      if (qword_280D2F530 == -1)
      {
        v8 = _MergedGlobals_6;
        if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
        {
LABEL_5:
          [WeakRetained[2] stopDeviceMotionUpdates];
          goto LABEL_11;
        }
      }

      else
      {
        LSSLogMotionBasedLightService_cold_1();
        v8 = _MergedGlobals_6;
        if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_5;
        }
      }

      __49__LSSMotionBasedProvider_initWithQueue_delegate___block_invoke_cold_2(v6, v8);
      goto LABEL_5;
    }

    v9 = [v5 attitude];
    [v9 quaternion];
    *&v14.f64[0] = v10;
    *&v14.f64[1] = v11;
    v15.f64[0] = v12;
    v15.f64[1] = v13;
    v16 = vaddvq_f64(vaddq_f64(vmulq_f64(v14, v14), vmulq_f64(v15, v15)));
    if (v16 == 0.0)
    {
      v17 = xmmword_255E9C9F0;
      v18 = 0uLL;
    }

    else
    {
      v19 = 1.0 / sqrt(v16);
      v17 = vmulq_n_f64(v15, v19);
      v18 = vmulq_n_f64(v14, v19);
    }

    v34 = v18;
    v35 = v17;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v21 = vnegq_f64(v20);
    v22 = vandq_s8(v18, v21);
    v23 = vandq_s8(v17, v21);
    v24 = vdupq_n_s64(0x7FF0000000000000uLL);
    v25 = vandq_s8(vcgtq_s64(v24, v22), vcgtq_s64(v24, v23));
    if ((vandq_s8(v25, vdupq_laneq_s64(v25, 1)).u64[0] & 0x8000000000000000) == 0)
    {
      v28 = v18;
      v29 = v17;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v33 = v13;
      v27 = LSSLogMotionBasedLightService();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 134219776;
        v37 = v30;
        v38 = 2048;
        v39 = v31;
        v40 = 2048;
        v41 = v32;
        v42 = 2048;
        v43 = v33;
        v44 = 2048;
        v45 = v28.i64[0];
        v46 = 2048;
        v47 = v28.i64[1];
        v48 = 2048;
        v49 = v29.i64[0];
        v50 = 2048;
        v51 = v29.i64[1];
        _os_log_fault_impl(&dword_255E8B000, v27, OS_LOG_TYPE_FAULT, "infinite quaternion (%f, %f, %f, %f) -> (%f, %f, %f, %f)", buf, 0x52u);
      }

      v34 = 0uLL;
      v35 = xmmword_255E9C9F0;
    }

    [v5 timestamp];
    [WeakRetained _update:&v34 timestamp:?];
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider updatedLight:(id)light
{
  var0 = light.var0;
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = *(*&var0 + 48);
  v11[2] = *(*&var0 + 32);
  v11[3] = v7;
  v8 = *(*&var0 + 80);
  v11[4] = *(*&var0 + 64);
  v11[5] = v8;
  v9 = *(*&var0 + 16);
  v11[0] = **&var0;
  v11[1] = v9;
  [WeakRetained provider:self updatedLight:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
  motionManager = self->_motionManager;
  self->_motionManager = 0;
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_updateLight:(float)light motionLevel:(float)level activateLevel:(float)activateLevel deactivateLevel:(float64_t)deactivateLevel timestamp:
{
  if (!self)
  {
    return 0;
  }

  v9 = *(self + 88);
  if ((v9 & 2) == 0)
  {
    level = INFINITY;
  }

  if ((*(self + 73) & 1) != 0 || level >= light)
  {
    activateLevelCopy = INFINITY;
    if ((v9 & 2) != 0)
    {
      activateLevelCopy = activateLevel;
    }

    if (*(self + 73))
    {
      v13 = activateLevelCopy <= light;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    *(self + 73) = 0;
    if (qword_280D2F530 != -1)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    v10 = _MergedGlobals_6;
    if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    LOWORD(v20[0].f64[0]) = 0;
    v11 = "light deactivate";
  }

  else
  {
    *(self + 73) = 1;
    if (qword_280D2F530 != -1)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    v10 = _MergedGlobals_6;
    if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    LOWORD(v20[0].f64[0]) = 0;
    v11 = "light activate";
  }

  _os_log_debug_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEBUG, v11, v20, 2u);
LABEL_19:
  v14 = *(self + 24);
  v15 = *(self + 73);
  v17 = a2[1];
  v20[0] = *a2;
  v16.f64[1] = v20[0].f64[1];
  v20[1] = v17;
  v18 = 1;
  v16.f64[0] = deactivateLevel;
  [(LSSMotionBasedLightSource *)v14 updateTargetDirectionWithOrientation:v20 goToRest:(v15 & 1) == 0 timestamp:v16];
  if ((*(self + 73) & 1) == 0)
  {
    return ![(LSSMotionBasedLightSource *)*(self + 24) settled];
  }

  return v18;
}

- (uint64_t)_updateReference:(float)reference motionLevel:(float)level activateLevel:(float)activateLevel deactivateLevel:
{
  if (!self)
  {
    v29 = 0;
    return v29 & 1;
  }

  v8 = *(self + 88);
  levelCopy = -INFINITY;
  if ((v8 & 8) != 0)
  {
    activateLevel = -INFINITY;
  }

  else
  {
    levelCopy = level;
  }

  if ((v8 & 4) != 0)
  {
    activateLevelCopy = activateLevel;
  }

  else
  {
    activateLevelCopy = INFINITY;
  }

  if ((v8 & 4) == 0)
  {
    levelCopy = INFINITY;
  }

  if (levelCopy < reference && (*(self + 74) & 1) == 0)
  {
    [(LSSQuaternionSmoothFilter *)*(self + 32) reset];
    *(self + 74) = 1;
    if (qword_280D2F530 != -1)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    v11 = _MergedGlobals_6;
    if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEBUG, "motion activate", buf, 2u);
    }

    if ((*(self + 74) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v32 = a2[1];
    v34 = *a2;
    if ([(LSSQuaternionSmoothFilter *)*(self + 32) hasValue])
    {
      [(LSSQuaternionSmoothFilter *)*(self + 32) value];
      v19 = OUTLINED_FUNCTION_0_1(vmulq_f64(v34, *buf), vmulq_f64(v32, v36));
      v20 = v19 + v19;
      v21 = [(LSSSettings *)*(self + 64) doubleForKey:?];
      v22 = [(LSSSettings *)*(self + 64) doubleForKey:?];
      v23 = *(self + 32);
      *buf = v34;
      v36 = v32;
      [(LSSQuaternionSmoothFilter *)v23 updateQuaternion:buf alpha:v22 + v21 * v20];
      v24 = v20 > 0.0261799388;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_2_0();
      [(LSSQuaternionSmoothFilter *)v26 updateQuaternion:v27 alpha:v25];
      v24 = 0;
    }

    if (activateLevelCopy > reference && !v24)
    {
      *(self + 74) = 0;
      if (qword_280D2F530 != -1)
      {
        dispatch_once(&qword_280D2F530, &__block_literal_global_6);
      }

      v28 = _MergedGlobals_6;
      if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_255E8B000, v28, OS_LOG_TYPE_DEBUG, "motion deactivate", buf, 2u);
      }
    }

    goto LABEL_31;
  }

  if (*(self + 74))
  {
    goto LABEL_20;
  }

LABEL_17:
  [(LSSQuaternionSmoothFilter *)*(self + 32) reset];
  v31 = a2[1];
  v33 = *a2;
  if ([(LSSQuaternionSmoothFilter *)*(self + 32) hasValue])
  {
    [(LSSQuaternionSmoothFilter *)*(self + 32) value];
    v12 = OUTLINED_FUNCTION_0_1(vmulq_f64(v33, *buf), vmulq_f64(v31, v36));
    v13 = v12 + v12;
    v14 = [(LSSSettings *)*(self + 64) doubleForKey:?];
    v15 = [(LSSSettings *)*(self + 64) doubleForKey:?];
    v16 = *(self + 32);
    v17 = v15 + v14 * v13;
    *buf = v33;
    v36 = v31;
    v18 = buf;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_0();
  }

  [(LSSQuaternionSmoothFilter *)v16 updateQuaternion:v18 alpha:v17];
LABEL_31:
  v29 = *(self + 74);
  return v29 & 1;
}

- (void)_update:(uint64_t)_update timestamp:(float64x2_t *)timestamp
{
  v75 = *MEMORY[0x277D85DE8];
  ++*(self + 48);
  v7 = [(LSSSettings *)*(self + 64) floatForKey:?];
  [(LSSRotationAccumulator *)*(self + 40) setSampleClampMax:v7];
  v8 = [(LSSSettings *)*(self + 64) floatForKey:?];
  [(LSSRotationAccumulator *)*(self + 40) setSampleBias:?];
  v9 = *(self + 40);
  v10 = timestamp[1];
  buf[0] = *timestamp;
  buf[1] = v10;
  LODWORD(v11) = [(LSSRotationAccumulator *)v9 update:buf].n64_u32[0];
  v12 = *(self + 88);
  if ((v12 & 4) != 0)
  {
    [(LSSSettings *)*(self + 64) floatForKey:?];
    [(LSSSettings *)*(self + 64) floatForKey:?];
    if ((*(self + 88) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v12 & 2) != 0)
  {
LABEL_5:
    [(LSSSettings *)*(self + 64) floatForKey:?];
    [(LSSSettings *)*(self + 64) floatForKey:?];
  }

LABEL_6:
  v13 = OUTLINED_FUNCTION_1_1();
  v18 = [(LSSMotionBasedProvider *)v14 _updateLight:v15 motionLevel:v13 activateLevel:v16 deactivateLevel:v17 timestamp:a2];
  v19 = [(LSSSettings *)*(self + 64) floatForKey:?];
  if (*(self + 75) == 1 && v11 > v19)
  {
    OUTLINED_FUNCTION_3();
    if (!v21)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_4(&dword_255E8B000, v22, v23, "high quality", v24, v25, v26, v27, v62, v64, v65, v67, v68, v69, *&v70.f64[0], *&v70.f64[1], v71, v72, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], 0);
    }

    *(self + 75) = 0;
  }

  if (v18 && *(self + 72) == 1)
  {
    OUTLINED_FUNCTION_3();
    if (!v21)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_4(&dword_255E8B000, v28, v29, "unpausing (light)", v30, v31, v32, v33, v62, v64, v65, v67, v68, v69, *&v70.f64[0], *&v70.f64[1], v71, v72, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], 0);
    }

    *(self + 56) = *(self + 48);
    *(self + 72) = 0;
  }

  v34 = OUTLINED_FUNCTION_1_1();
  v39 = [(LSSMotionBasedProvider *)v35 _updateReference:v36 motionLevel:v34 activateLevel:v37 deactivateLevel:v38];
  v40 = *(self + 72);
  if (v39)
  {
    if (*(self + 72))
    {
      OUTLINED_FUNCTION_3();
      if (!v21)
      {
        dispatch_once(&qword_280D2F530, &__block_literal_global_6);
      }

      v41 = _MergedGlobals_6;
      if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0].f64[0]) = 0;
        _os_log_impl(&dword_255E8B000, v41, OS_LOG_TYPE_INFO, "unpausing (reference)", buf, 2u);
      }

      *(self + 56) = *(self + 48);
      *(self + 72) = 0;
    }
  }

  else if (*(self + 72))
  {
    goto LABEL_44;
  }

  v42 = timestamp[1];
  v43 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(*timestamp, *timestamp), vmulq_f64(v42, v42)));
  v63 = vmulq_n_f64(vnegq_f64(*timestamp), v43);
  v66 = vmulq_n_f64(vmulq_f64(v42, xmmword_255E9CA30), v43);
  [(LSSMotionBasedLightSource *)*(self + 24) direction];
  v44 = vmulq_f64(v66, xmmword_255E9CA30);
  v45 = vnegq_f64(v63);
  v46 = vnegq_f64(v70);
  v47 = vextq_s8(v44, vnegq_f64(v44), 8uLL);
  v48 = vmlsq_lane_f64(vmlsq_lane_f64(vmulq_laneq_f64(v44, v46, 1), v47, v70.f64[0], 0), vextq_s8(v63, v45, 8uLL), *&v71, 0);
  v49 = vmlsq_lane_f64(vmlsq_lane_f64(vmulq_laneq_f64(v63, v46, 1), vextq_s8(v45, v63, 8uLL), v70.f64[0], 0), v47, *&v71, 0);
  v50 = vnegq_f64(v48);
  v51 = vextq_s8(v49, vnegq_f64(v49), 8uLL);
  buf[1] = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v48, v66, 1), vextq_s8(v50, v48, 8uLL), v66.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v49, v63, 1), v51, v63.f64[0]));
  buf[0] = *&a2;
  buf[2] = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v49, v66, 1), v51, v66.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v50, v63, 1), vextq_s8(v48, v50, 8uLL), v63.f64[0]));
  memset(&buf[3], 0, 48);
  [(LSSQuaternionSmoothFilter *)*(self + 32) value];
  intensity = [(LSSMotionBasedLightSource *)*(self + 24) intensity];
  *buf[5].f64 = intensity;
  if (*(self + 75))
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

  HIDWORD(buf[5].f64[0]) = v53;
  v54 = *(self + 48);
  v55 = *(self + 56);
  v56 = v54 >= v55;
  v57 = v54 - v55;
  if (!v56)
  {
    __assert_rtn("[LSSMotionBasedProvider _update:timestamp:]", "LSSMotionBasedProvider.m", 306, "_frameCount >= _resumeFrame");
  }

  if (v57 < 0x33)
  {
    v58 = 1;
  }

  else
  {
    v58 = v39;
  }

  if (((v58 | v18) & 1) == 0)
  {
    HIDWORD(buf[5].f64[0]) = 0;
    *(self + 72) = 1;
    *(self + 75) = 1;
    OUTLINED_FUNCTION_3();
    if (!v21)
    {
      dispatch_once(&qword_280D2F530, &__block_literal_global_6);
    }

    v59 = _MergedGlobals_6;
    if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_INFO))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_impl(&dword_255E8B000, v59, OS_LOG_TYPE_INFO, "pausing", __dst, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((self + 80));
  memcpy(__dst, buf, sizeof(__dst));
  [WeakRetained provider:self updatedLight:__dst];

LABEL_44:
  v61 = *MEMORY[0x277D85DE8];
}

void __49__LSSMotionBasedProvider_initWithQueue_delegate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_255E8B000, a2, OS_LOG_TYPE_FAULT, "CMMotionManager error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end