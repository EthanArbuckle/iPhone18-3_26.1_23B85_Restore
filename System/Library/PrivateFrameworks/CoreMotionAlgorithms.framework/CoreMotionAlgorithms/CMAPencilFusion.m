@interface CMAPencilFusion
- (BOOL)startPencilFusionUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (CMAPencilFusion)init;
- (CMAPencilFusionResult)currentEstimation;
- (uint64_t)logHostDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(__n128)a5 timestamp:(__n128)a6;
- (uint64_t)logPencilDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(int)a5 gyroBias:(uint64_t)a6 temperatureGyroBias:(__n128)a7 temperatureGyro:(__n128)a8 status:(__n128)a9 sensorTime:(__n128)a10 timestamp:(double)a11;
- (void)dealloc;
- (void)flushMSL;
- (void)logPencilFusionResult:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)readUserDefaults;
- (void)sendPencilSensorContactTypeStatistics:(CMAPencilSensorContactTypeStatistics *)a3 contactType:(int)a4;
- (void)sendPencilStatistics;
- (void)startUserDefaults;
- (void)stopPencilFusionUpdates;
- (void)stopPencilFusionUpdatesPrivate;
- (void)stopUserDefaults;
- (void)updateEstimationsWithRealValuesWithQuaternion:(CMOQuaternion)a3 timestamp:(double)a4;
- (void)updateHostDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(__n128)a5 timestamp:(__n128)a6;
- (void)updatePencilDeviceMotionPayload:(id)a3;
@end

@implementation CMAPencilFusion

- (CMAPencilFusion)init
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = CMAPencilFusion;
  v2 = [(CMAPencilFusion *)&v5 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("CMAPencilFusion", 0);
    v2->_estimations = objc_opt_new();
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAPencilFusion;
  [(CMAPencilFusion *)&v3 dealloc];
}

- (BOOL)startPencilFusionUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v7 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245D80000, v7, OS_LOG_TYPE_DEFAULT, "startPencilFusionUpdatesToQueue:withHandler:", buf, 2u);
  }

  objc_msgSend_startUserDefaults(self, v8, v9, v10);
  v14 = objc_msgSend_queue(self, v11, v12, v13);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F26298;
  block[3] = &unk_278E97130;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v14, block);
  return objc_msgSend_isRunning(self, v15, v16, v17);
}

- (void)stopPencilFusionUpdates
{
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v3 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "stopPencilFusionUpdates", buf, 2u);
  }

  v7 = objc_msgSend_queue(self, v4, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F26414;
  block[3] = &unk_278E97158;
  block[4] = self;
  dispatch_sync(v7, block);
  objc_msgSend_stopUserDefaults(self, v8, v9, v10);
  objc_msgSend_flushMSL(self, v11, v12, v13);
}

- (void)stopPencilFusionUpdatesPrivate
{
  v5 = objc_msgSend_queue(self, a2, v2, v3);
  dispatch_assert_queue_V2(v5);
  if (objc_msgSend_isRunning(self, v6, v7, v8))
  {
    v12 = objc_msgSend_estimations(self, v9, v10, v11);
    objc_msgSend_removeAllObjects(v12, v13, v14, v15);
    objc_msgSend_setRunning_(self, v16, 0, v17);
    objc_msgSend_setHandler_(self, v18, 0, v19);
    objc_msgSend_setHandlerQueue_(self, v20, 0, v21);
    objc_msgSend_sendPencilStatistics(self, v22, v23, v24);
    sub_245F123C0(self->_barrelRollService.__ptr_);
    ptr = self->_barrelRollService.__ptr_;

    sub_245F105F4(ptr);
  }
}

- (CMAPencilFusionResult)currentEstimation
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_245F2664C;
  v19 = sub_245F2665C;
  v20 = 0;
  v5 = objc_msgSend_queue(self, a2, v2, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_245F26668;
  v14[3] = &unk_278E97180;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(v5, v14);
  if (objc_msgSend_verboseLoggingEnabled(self, v6, v7, v8))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v9 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      v10 = v16[5];
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_245D80000, v9, OS_LOG_TYPE_DEBUG, "Pulled estimated angles, %{public}@", buf, 0xCu);
    }
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)updatePencilDeviceMotionPayload:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_length(a3, a2, a3, v3) == 43)
  {
    v60[47] = 0;
    *&v60[43] = 0;
  }

  else if (objc_msgSend_length(a3, v6, v7, v8) != 48)
  {
    if (objc_msgSend_verboseLoggingEnabled(self, v6, v9, v10))
    {
      if (qword_27EE374F0 != -1)
      {
        dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
      }

      v19 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v62 = COERCE_DOUBLE(objc_msgSend_length(a3, v20, v21, v22));
        v63 = 2050;
        v64 = 48;
        v16 = "updateHostDeviceMotionQuaternion: packet size %{public}zd != expected %{public}zd";
        v17 = v19;
        v18 = 22;
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  objc_msgSend_getBytes_length_(a3, v6, v60, 48);
  if (v60[0] == 136)
  {
    if (v60[13] - 135 > 0xFFFFFFFD)
    {
      v14.f32[0] = *&v60[23];
      v14.f32[1] = *&v60[25];
      v14.f32[2] = *&v60[27];
      v23.i64[0] = 0x3800000038000000;
      v23.i64[1] = 0x3800000038000000;
      v24 = vmulq_f32(v14, v23);
      v25 = vmulq_f32(v24, v24);
      v40 = sqrtf(1.0 - (v25.f32[2] + vaddv_f32(*v25.f32)));
      v41 = v24;
      v26 = v24;
      v26.f32[3] = v40;
      v42 = v26;
      v26.f32[0] = *&v60[29];
      v26.f32[1] = *&v60[31];
      v26.f32[2] = *&v60[33];
      v23.i64[0] = 0x3B0000003B000000;
      v23.i64[1] = 0x3B0000003B000000;
      v24.f32[0] = *&v60[35];
      v27 = vmulq_f32(v26, v23);
      v24.f32[1] = *&v60[37];
      v24.f32[2] = *&v60[39];
      v26.i64[0] = 0x3A0000003A000000;
      v26.i64[1] = 0x3A0000003A000000;
      v28 = vmulq_f32(v24, v26);
      v44 = v28;
      v45 = v27;
      v29 = *&v60[41];
      v30 = *&v60[15];
      v31 = *&v60[5] * 0.000001;
      v28.f32[0] = v60[43];
      v28.f32[1] = v60[44];
      v28.f32[2] = v60[45];
      v43 = vmulq_f32(v28, vdupq_n_s32(0x3C800000u));
      v32 = v60[46];
      v33 = v60[47];
      if (objc_msgSend_verboseLoggingEnabled(self, v11, v12, v13))
      {
        if (qword_27EE374F0 != -1)
        {
          dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
        }

        v37 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134353408;
          v62 = v41.f32[0];
          v63 = 2050;
          *&v64 = v41.f32[1];
          v65 = 2050;
          v66 = v41.f32[2];
          v67 = 2050;
          v68 = v40;
          v69 = 2050;
          v70 = v45.f32[0];
          v71 = 2050;
          v72 = v45.f32[1];
          v73 = 2050;
          v74 = v45.f32[2];
          v75 = 2050;
          v76 = v44.f32[0];
          v77 = 2050;
          v78 = v44.f32[1];
          v79 = 2050;
          v80 = v44.f32[2];
          v81 = 2050;
          v82 = v43.f32[0];
          v83 = 2050;
          v84 = v43.f32[1];
          v85 = 2050;
          v86 = v43.f32[2];
          v87 = 2050;
          v88 = v32;
          v89 = 2050;
          v90 = v33;
          v91 = 1026;
          v92 = v29;
          v93 = 2050;
          v94 = v30;
          v95 = 2050;
          v96 = v31;
          _os_log_impl(&dword_245D80000, v37, OS_LOG_TYPE_DEBUG, "updatePencilDeviceMotionPayload:[%{public}f, %{public}f, %{public}f, %{public}f] rotationRate:[%{public}f, %{public}f, %{public}f]  acceleration:[%{public}f, %{public}f, %{public}f] gyroBias:[%{public}f, %{public}f, %{public}f] temperatureGyroBias:%{public}f temperatureGyro:%{public}f status:0x%{public}.4x timestamp:%{public}llu timestamp:%{public}f", buf, 0xB2u);
        }
      }

      v38 = objc_msgSend_queue(self, v34, v35, v36);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v57 = *v60;
      block[2] = sub_245F27010;
      block[3] = &unk_278E971D0;
      v58 = *&v60[16];
      v59 = *&v60[32];
      v47 = v45;
      v48 = v42;
      v49 = v44;
      v50 = v43;
      v54 = v32;
      v55 = v33;
      v56 = v29;
      v51 = self;
      v52 = v30;
      v53 = v31;
      dispatch_async(v38, block);
    }

    else if (objc_msgSend_verboseLoggingEnabled(self, v11, v12, v13))
    {
      if (qword_27EE374F0 != -1)
      {
        dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
      }

      v15 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v16 = "updateHostDeviceMotionQuaternion: unknown data type";
LABEL_16:
        v17 = v15;
        v18 = 2;
LABEL_22:
        _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEBUG, v16, buf, v18);
      }
    }
  }

  else if (objc_msgSend_verboseLoggingEnabled(self, v11, v12, v13))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v15 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v16 = "updateHostDeviceMotionQuaternion: unknown packet report ID";
      goto LABEL_16;
    }
  }

LABEL_29:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)updateHostDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(__n128)a5 timestamp:(__n128)a6
{
  v47 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_verboseLoggingEnabled(a1, a2, a3, a4))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v13 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134351616;
      v26 = a5.n128_f32[0];
      v27 = 2050;
      v28 = a5.n128_f32[1];
      v29 = 2050;
      v30 = a5.n128_f32[2];
      v31 = 2050;
      v32 = a5.n128_f32[3];
      v33 = 2050;
      v34 = a6.n128_f32[0];
      v35 = 2050;
      v36 = a6.n128_f32[1];
      v37 = 2050;
      v38 = a6.n128_f32[2];
      v39 = 2050;
      v40 = a7.n128_f32[0];
      v41 = 2050;
      v42 = a7.n128_f32[1];
      v43 = 2050;
      v44 = a7.n128_f32[2];
      v45 = 2050;
      v46 = a8;
      _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEBUG, "updateHostDeviceMotionQuaternion:[%{public}f, %{public}f, %{public}f, %{public}f] rotationRate:[%{public}f, %{public}f, %{public}f]  acceleration:[%{public}f, %{public}f, %{public}f] timestamp:%{public}f", buf, 0x70u);
    }
  }

  v14 = objc_msgSend_queue(a1, v10, v11, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_245F27308;
  block[3] = &unk_278E971F8;
  v23 = a1;
  v24 = a8;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  dispatch_async(v14, block);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateEstimationsWithRealValuesWithQuaternion:(CMOQuaternion)a3 timestamp:(double)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v96 = *a3.var0;
  v97 = a3.var0[2];
  v98 = a3.var0[3];
  v8 = objc_msgSend_queue(self, a2, v4, v5);
  dispatch_assert_queue_V2(v8);
  *buf = sub_245F24A60(&v96, v9);
  v101 = COERCE_DOUBLE(__PAIR64__(v11, v10));
  *v102 = v12;
  v13 = sub_245F0F554(buf);
  v15 = v14;
  v17 = v16;
  if (objc_msgSend_verboseLoggingEnabled(self, v18, v19, v20))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v24 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349824;
      v101 = (v13 * 57.296);
      *v102 = 2050;
      *&v102[2] = (v15 * 57.296);
      v103 = 2050;
      v104 = (v17 * 57.296);
      v105 = 2050;
      v106 = a4;
      _os_log_impl(&dword_245D80000, v24, OS_LOG_TYPE_DEBUG, "updateEstimationsWithRealValuesWithQuaternion angles:[%{public}.1f, %{public}.1f, %{public}.1f] timestamp:%{public}.3f", buf, 0x2Au);
    }
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v25 = objc_msgSend_estimations(self, v21, v22, v23);
  v29 = objc_msgSend_copy(v25, v26, v27, v28);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v92, v99, 16);
  if (v31)
  {
    v36 = v31;
    v37 = *v93;
    *&v35 = 134349056;
    v90 = v35;
    while (2)
    {
      v38 = 0;
      do
      {
        if (*v93 != v37)
        {
          objc_enumerationMutation(v29);
        }

        v39 = *(*(&v92 + 1) + 8 * v38);
        objc_msgSend_timestamp(v39, v32, v33, v34, v90);
        if (v43 >= a4 + -0.001)
        {
          objc_msgSend_timestamp(v39, v40, v41, v42);
          if (v55 <= a4 + 0.001)
          {
            v57 = COERCE_DOUBLE(objc_msgSend_copy(v39, v52, v53, v54));
            objc_msgSend_setEstimated_(*&v57, v58, 0, v59);
            *&v60 = v13;
            objc_msgSend_setAltitudeAngle_(*&v57, v61, v62, v63, v60);
            *&v64 = v15;
            objc_msgSend_setAzimuthAngle_(*&v57, v65, v66, v67, v64);
            *&v68 = v17;
            objc_msgSend_setRollAngle_(*&v57, v69, v70, v71, v68);
            if (objc_msgSend_mslEnabled(self, v72, v73, v74))
            {
              objc_msgSend_logPencilFusionResult_(self, v75, *&v57, v77);
            }

            if (objc_msgSend_verboseLoggingEnabled(self, v75, v76, v77))
            {
              if (qword_27EE374F0 != -1)
              {
                dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
              }

              v81 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v101 = v57;
                _os_log_impl(&dword_245D80000, v81, OS_LOG_TYPE_DEBUG, "Pushing real angles, %{public}@", buf, 0xCu);
              }
            }

            v82 = objc_msgSend_handlerQueue(self, v78, v79, v80);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = sub_245F27870;
            block[3] = &unk_278E97220;
            block[4] = self;
            *&block[5] = v57;
            dispatch_async(v82, block);

            v86 = objc_msgSend_estimations(self, v83, v84, v85);
            objc_msgSend_removeObject_(v86, v87, v39, v88);
          }

          else
          {
            if (qword_27EE374F0 != -1)
            {
              dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
            }

            v56 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
            {
              *buf = v90;
              v101 = a4;
              _os_log_impl(&dword_245D80000, v56, OS_LOG_TYPE_DEBUG, "Received real angles for timestamp %{public}.3f without corresponding estimation", buf, 0xCu);
            }
          }

          goto LABEL_32;
        }

        if (qword_27EE374F0 != -1)
        {
          dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
        }

        v44 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          objc_msgSend_timestamp(v39, v45, v46, v47);
          *buf = v90;
          v101 = v48;
          _os_log_impl(&dword_245D80000, v44, OS_LOG_TYPE_DEBUG, "Missing real angles for timestamp %{public}.3f", buf, 0xCu);
        }

        v49 = objc_msgSend_estimations(self, v45, v46, v47);
        objc_msgSend_removeObject_(v49, v50, v39, v51);
        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v92, v99, 16);
      if (v36)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:
  v89 = *MEMORY[0x277D85DE8];
}

- (void)startUserDefaults
{
  if (!objc_msgSend_defaults(self, a2, v2, v3))
  {
    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.CoreMotionAlgorithms.PencilFusion", v7);
    objc_msgSend_setDefaults_(self, v9, v8, v10);
    for (i = 0; i != 3; ++i)
    {
      v15 = off_278E97240[i];
      v16 = objc_msgSend_defaults(self, v11, v12, v13);
      v20 = objc_msgSend_defaults(self, v17, v18, v19);
      objc_msgSend_addObserver_forKeyPath_options_context_(v16, v21, self, v15, 1, v20);
    }

    MEMORY[0x2821F9670](self, sel_readUserDefaults, v12, v13);
  }
}

- (void)stopUserDefaults
{
  if (objc_msgSend_defaults(self, a2, v2, v3))
  {
    for (i = 0; i != 3; ++i)
    {
      v9 = off_278E97240[i];
      v10 = objc_msgSend_defaults(self, v5, v6, v7);
      objc_msgSend_removeObserver_forKeyPath_(v10, v11, self, v9);
    }

    objc_msgSend_setDefaults_(self, v5, 0, v7);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (objc_msgSend_defaults(self, a2, a3, a4) == a6)
  {

    MEMORY[0x2821F9670](self, sel_readUserDefaults, v11, v12);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CMAPencilFusion;
    [(CMAPencilFusion *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

- (void)readUserDefaults
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_defaults(self, a2, v2, v3);
  v8 = objc_msgSend_BOOLForKey_(v5, v6, @"VerboseLoggingEnabled", v7);
  objc_msgSend_setVerboseLoggingEnabled_(self, v9, v8, v10);
  v14 = objc_msgSend_defaults(self, v11, v12, v13);
  v17 = objc_msgSend_BOOLForKey_(v14, v15, @"MSLEnabled", v16);
  objc_msgSend_setMslEnabled_(self, v18, v17, v19);
  v23 = objc_msgSend_defaults(self, v20, v21, v22);
  v26 = objc_msgSend_BOOLForKey_(v23, v24, @"PreciseTipPositionLoggingEnabled", v25);
  objc_msgSend_setPreciseTipPositionLoggingEnabled_(self, v27, v26, v28);
  if (qword_27EE374F0 != -1)
  {
    dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
  }

  v29 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    v37[0] = 67240448;
    v37[1] = objc_msgSend_verboseLoggingEnabled(self, v30, v31, v32);
    v38 = 1026;
    v39 = objc_msgSend_mslEnabled(self, v33, v34, v35);
    _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_DEFAULT, "verboseLoggingEnabled: %{public}d, mslEnabled: %{public}d", v37, 0xEu);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)logPencilFusionResult:(id)a3
{
  v6 = objc_msgSend_queue(self, a2, a3, v3);
  dispatch_assert_queue_V2(v6);
  sub_245E55178(v65);
  sub_245E7A578(v65);
  v7 = v66;
  objc_msgSend_timestamp(a3, v8, v9, v10);
  *(v7 + 76) |= 0x10u;
  *(v7 + 40) = v11;
  v12 = v66;
  if (objc_msgSend_preciseTipPositionLoggingEnabled(self, v13, v14, v15))
  {
    objc_msgSend_position(a3, v16, v17, v18);
  }

  else
  {
    objc_msgSend_position(a3, v16, v17, v18);
    v22 = floorf(v23 / 15.0) * 15.0;
  }

  *(v12 + 76) |= 0x20u;
  *(v12 + 48) = v22;
  v24 = v66;
  if (objc_msgSend_preciseTipPositionLoggingEnabled(self, v19, v20, v21))
  {
    objc_msgSend_position(a3, v25, v26, v27);
    v32 = v31;
  }

  else
  {
    objc_msgSend_position(a3, v25, v26, v27);
    v32 = floorf(v33 / 15.0) * 15.0;
  }

  *(v24 + 76) |= 0x40u;
  *(v24 + 56) = v32;
  v34 = v66;
  objc_msgSend_position(a3, v28, v29, v30);
  *(v34 + 76) |= 0x80u;
  *(v34 + 64) = v35;
  v36 = v66;
  objc_msgSend_altitudeAngle(a3, v37, v38, v39);
  *(v36 + 76) |= 1u;
  *(v36 + 8) = v40;
  v41 = v66;
  objc_msgSend_azimuthAngle(a3, v42, v43, v44);
  *(v41 + 76) |= 2u;
  *(v41 + 16) = v45;
  v46 = v66;
  objc_msgSend_rollAngle(a3, v47, v48, v49);
  *(v46 + 76) |= 8u;
  *(v46 + 32) = v50;
  v51 = v66;
  updated = objc_msgSend_estimationUpdateIndex(a3, v52, v53, v54);
  v59 = objc_msgSend_unsignedLongLongValue(updated, v56, v57, v58);
  *(v51 + 76) |= 4u;
  *(v51 + 24) = v59;
  v60 = v66;
  v64 = objc_msgSend_estimated(a3, v61, v62, v63);
  *(v60 + 76) |= 0x100u;
  *(v60 + 72) = v64;
  sub_245F21790(v65);
  sub_245E5ADCC(v65);
}

- (uint64_t)logPencilDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(int)a5 gyroBias:(uint64_t)a6 temperatureGyroBias:(__n128)a7 temperatureGyro:(__n128)a8 status:(__n128)a9 sensorTime:(__n128)a10 timestamp:(double)a11
{
  v14 = a4;
  v15 = a3;
  v16 = objc_msgSend_queue(a1, a2, a3, a4);
  dispatch_assert_queue_V2(v16);
  sub_245E55178(v38);
  sub_245E7A4E8(v38);
  sub_245EED410(v39);
  v17 = *(v39 + 32);
  *(v17 + 152) |= 2u;
  *(v17 + 136) = a11;
  v18 = *(v39 + 32);
  v37 = a7.n128_u32[0];
  sub_245F1E970((v18 + 56), &v37);
  v19 = *(v39 + 32);
  v37 = a7.n128_u32[1];
  sub_245F1E970((v19 + 56), &v37);
  v20 = *(v39 + 32);
  v37 = a7.n128_u32[2];
  sub_245F1E970((v20 + 56), &v37);
  v21 = *(v39 + 32);
  v37 = a7.n128_u32[3];
  sub_245F1E970((v21 + 56), &v37);
  v22 = *(v39 + 32);
  v37 = a9.n128_u32[0];
  sub_245F1E970((v22 + 104), &v37);
  v23 = *(v39 + 32);
  v37 = a9.n128_u32[1];
  sub_245F1E970((v23 + 104), &v37);
  v24 = *(v39 + 32);
  v37 = a9.n128_u32[2];
  sub_245F1E970((v24 + 104), &v37);
  v25 = *(v39 + 32);
  v37 = a8.n128_u32[0];
  sub_245F1E970((v25 + 80), &v37);
  v26 = *(v39 + 32);
  v37 = a8.n128_u32[1];
  sub_245F1E970((v26 + 80), &v37);
  v27 = *(v39 + 32);
  v37 = a8.n128_u32[2];
  sub_245F1E970((v27 + 80), &v37);
  v37 = a10.n128_u32[0];
  sub_245F1E970((v39 + 8), &v37);
  v37 = a10.n128_u32[1];
  sub_245F1E970((v39 + 8), &v37);
  v37 = a10.n128_u32[2];
  sub_245F1E970((v39 + 8), &v37);
  v28 = v39;
  *(v39 + 48) |= 2u;
  *(v28 + 44) = v15;
  v29 = v39;
  *(v39 + 48) |= 1u;
  *(v29 + 40) = v14;
  v30 = *(v39 + 32);
  *(v30 + 152) |= 4u;
  *(v30 + 144) = a5;
  v31 = *(v39 + 32);
  *(v31 + 152) |= 1u;
  *(v31 + 128) = a6;
  sub_245F21790(v38);
  return sub_245E5ADCC(v38);
}

- (uint64_t)logHostDeviceMotionQuaternion:(uint64_t)a3 rotationRate:(uint64_t)a4 acceleration:(__n128)a5 timestamp:(__n128)a6
{
  v9 = objc_msgSend_queue(a1, a2, a3, a4);
  dispatch_assert_queue_V2(v9);
  sub_245E55178(v25);
  sub_245E7A608(v25);
  v10 = v26;
  *(v26 + 124) |= 0x10u;
  *(v10 + 40) = a8;
  v11 = v26;
  *(v26 + 124) |= 2u;
  *(v11 + 16) = a5.n128_f32[0];
  v12 = v26;
  *(v26 + 124) |= 4u;
  *(v12 + 24) = a5.n128_f32[1];
  v13 = v26;
  *(v26 + 124) |= 8u;
  *(v13 + 32) = a5.n128_f32[2];
  v14 = v26;
  *(v26 + 124) |= 1u;
  *(v14 + 8) = a5.n128_f32[3];
  v15 = v26;
  *(v26 + 124) |= 0x40000u;
  *(v15 + 100) = a7.n128_u32[0];
  v16 = v26;
  *(v26 + 124) |= 0x80000u;
  *(v16 + 104) = a7.n128_u32[1];
  v17 = v26;
  *(v26 + 124) |= 0x100000u;
  *(v17 + 108) = a7.n128_u32[2];
  v18 = v26;
  *(v26 + 124) |= 0x2000u;
  *(v18 + 80) = a6.n128_u32[0];
  v19 = v26;
  *(v26 + 124) |= 0x4000u;
  *(v19 + 84) = a6.n128_u32[1];
  v20 = v26;
  *(v26 + 124) |= 0x8000u;
  *(v20 + 88) = a6.n128_u32[2];
  sub_245F21790(v25);
  return sub_245E5ADCC(v25);
}

- (void)flushMSL
{
  if (objc_msgSend_mslEnabled(self, a2, v2, v3))
  {
    if (qword_27EE374F0 != -1)
    {
      dispatch_once(&qword_27EE374F0, &unk_2858D72A0);
    }

    v4 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_DEBUG, "Flushing MSL", v6, 2u);
    }

    v5 = sub_245F2163C();
    sub_245DFA37C(v5);
  }
}

- (void)sendPencilStatistics
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v3 = v17;
  sub_245F0CAC4(self->_barrelRollService.__ptr_ + 10032, v17);
  for (i = 0; i != 3; ++i)
  {
    v6 = v3[3];
    *v14 = v3[2];
    *&v14[16] = v6;
    *&v15 = *(v3 + 8);
    v7 = v3[1];
    v12 = *v3;
    v13 = v7;
    objc_msgSend_sendPencilGyroBiasAxisStatistics_axis_(self, v4, &v12, i);
    v3 = (v3 + 72);
  }

  v8 = 0;
  v9 = (&v17[13] + 8);
  do
  {
    v10 = v9[1];
    v12 = *v9;
    v13 = v10;
    *v14 = v9[2];
    *&v14[12] = *(v9 + 44);
    objc_msgSend_sendPencilSensorContactTypeStatistics_contactType_(self, v4, &v12, v8++);
    v9 = (v9 + 60);
  }

  while (v8 != 3);
  *v14 = v20;
  *&v14[16] = v21;
  v15 = v22;
  v16 = v23;
  v12 = v18;
  v13 = v19;
  objc_msgSend_sendPencilTimingStatistics_(self, v4, &v12, v11);
}

- (void)sendPencilSensorContactTypeStatistics:(CMAPencilSensorContactTypeStatistics *)a3 contactType:(int)a4
{
  v4 = *&a3->var0;
  v5 = *&a3->var4;
  *v6 = *&a3->var8;
  *&v6[12] = *&a3->var11;
  AnalyticsSendEventLazy();
}

@end