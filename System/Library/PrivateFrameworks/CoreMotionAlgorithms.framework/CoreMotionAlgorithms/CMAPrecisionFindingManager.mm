@interface CMAPrecisionFindingManager
- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue;
- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue findeeType:(int)type;
- (id).cxx_construct;
- (void)dealloc;
- (void)startDeviceFindingUpdates;
- (void)stopDeviceFindingUpdates;
- (void)updateAltimeterData:(id)data;
- (void)updateAnalytics;
- (void)updateDeviceMotion:(id)motion;
- (void)updatePeerState:(id)state;
- (void)updateRanging:(id)ranging;
- (void)updateWatchOrientation:(id)orientation;
@end

@implementation CMAPrecisionFindingManager

- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue
{
  v27.receiver = self;
  v27.super_class = CMAPrecisionFindingManager;
  v6 = [(CMAPrecisionFindingManager *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    dispatch_retain(queue);
    v7->_delegateQueue = queue;
    v7->_analyticsManager = objc_alloc_init(CMAPrecisionFindingAnalytics);
    v8 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = objc_msgSend_initWithSuiteName_(v8, v9, @"com.apple.CoreMotionAlgorithms.Msl.nearbyd", v10);
    objc_msgSend_setObject_forKey_(v11, v12, @"private/var/mobile/Library/Caches/com.apple.CoreMotionAlgorithms/", @"FileBasePath");
    objc_msgSend_setObject_forKey_(v11, v13, @"1", @"LoggingEnabled");

    v14 = objc_alloc(MEMORY[0x277CBEBD0]);
    v17 = objc_msgSend_initWithSuiteName_(v14, v15, @"com.apple.CoreMotionAlgorithms", v16);
    v20 = objc_msgSend_objectForKey_(v17, v18, @"NumParticlesDeviceFinding", v19);
    if (v20)
    {
      v21 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = objc_msgSend_unsignedLongLongValue(v21, v22, v23, v24);
        sub_245F231B0(&v7->_positionEstimator, v25);
      }
    }

    sub_245F2254C();
    v7->_analyticsDownsampler.fMinimumToleratedDt = 99500;
    v7->_findeeType = 0;
  }

  return v7;
}

- (CMAPrecisionFindingManager)initWithDelegate:(id)delegate dispatchQueue:(id)queue findeeType:(int)type
{
  v16.receiver = self;
  v16.super_class = CMAPrecisionFindingManager;
  v8 = [(CMAPrecisionFindingManager *)&v16 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_initWithDelegate_dispatchQueue_(v8, v9, delegate, queue);
    v10->_findeeType = type;
    v14 = objc_msgSend_findeeType(v10, v11, v12, v13);
    sub_245F231E4(&v10->_positionEstimator, v14);
  }

  return v10;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_delegateQueue);
  self->_delegateQueue = 0;

  v3.receiver = self;
  v3.super_class = CMAPrecisionFindingManager;
  [(CMAPrecisionFindingManager *)&v3 dealloc];
}

- (void)startDeviceFindingUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v3 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = objc_msgSend_findeeType(self, v4, v5, v6);
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,starting updates for findee type %u.", v8, 8u);
  }

  objc_msgSend_setDeviceFindingClient_(self, v4, 1, v6);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopDeviceFindingUpdates
{
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v3 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_245D80000, v3, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,stopping updates.", v6, 2u);
  }

  objc_msgSend_setDeviceFindingClient_(self, v4, 0, v5);
}

- (void)updateDeviceMotion:(id)motion
{
  v101 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_deviceFindingClient(self, a2, motion, v3))
  {
    objc_msgSend_timestamp(motion, v6, v7, v8);
    *&v88 = v9;
    objc_msgSend_quaternion(motion, v10, v11, v12);
    *(&v88 + 1) = v13;
    objc_msgSend_quaternion(motion, v14, v15, v16);
    *&v89 = v17;
    objc_msgSend_quaternion(motion, v18, v19, v20);
    *(&v89 + 1) = v21;
    objc_msgSend_quaternion(motion, v22, v23, v24);
    *&v90 = v25;
    objc_msgSend_rotationRate(motion, v26, v27, v28);
    *(&v90 + 1) = v29;
    objc_msgSend_rotationRate(motion, v30, v31, v32);
    *&v91 = v33;
    objc_msgSend_rotationRate(motion, v34, v35, v36);
    *(&v91 + 1) = v37;
    objc_msgSend_acceleration(motion, v38, v39, v40);
    *&v92 = v41;
    objc_msgSend_acceleration(motion, v42, v43, v44);
    *(&v92 + 1) = v45;
    objc_msgSend_acceleration(motion, v46, v47, v48);
    v93 = v49;
    sub_245F231F0(&self->_positionEstimator, &v88);
    sub_245F225E8(&v88);
    v53 = objc_msgSend_analyticsManager(self, v50, v51, v52);
    *v95 = v90;
    *&v95[16] = v91;
    *v96 = v92;
    *&v96[16] = v93;
    *buf = v88;
    *&buf[16] = v89;
    objc_msgSend_feedDeviceMotion_(v53, v54, buf, v55);
    objc_msgSend_timestamp(motion, v56, v57, v58);
    v60 = (v59 * 1000000.0);
    fMinimumToleratedDt = self->_deviceMotionDownsampler.fMinimumToleratedDt;
    if (fMinimumToleratedDt && self->_deviceMotionDownsampler.fLastTimestamp + fMinimumToleratedDt > v60)
    {
      v62 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v62 = OS_LOG_TYPE_DEFAULT;
      self->_deviceMotionDownsampler.fLastTimestamp = v60;
    }

    if (qword_27EE374E0 != -1)
    {
      dispatch_once(&qword_27EE374E0, &unk_2858D7350);
    }

    v63 = off_27EE374E8;
    if (os_log_type_enabled(off_27EE374E8, v62))
    {
      objc_msgSend_timestamp(motion, v64, v65, v66);
      *buf = 134351616;
      *&buf[4] = v67;
      *&buf[12] = 2050;
      *&buf[14] = *(&v88 + 1);
      *&buf[22] = 2050;
      *&buf[24] = v89;
      *v95 = 2050;
      *&v95[2] = *(&v89 + 1);
      *&v95[10] = 2050;
      *&v95[12] = v90;
      *&v95[20] = 2050;
      *&v95[22] = *(&v90 + 1);
      *&v95[30] = 2050;
      *v96 = v91;
      *&v96[8] = 2050;
      *&v96[10] = *(&v91 + 1);
      *&v96[18] = 2050;
      *&v96[20] = v92;
      v97 = 2050;
      v98 = *(&v92 + 1);
      v99 = 2050;
      v100 = v93;
      _os_log_impl(&dword_245D80000, v63, v62, "CMAPrecisionFindingManager,timestamp,%{public}f,quaternion.x,%{public}f,quaternion.y,%{public}f,quaternion.z,%{public}f,quaternion.w,%{public}f,rotationRate.x,%{public}f,rotationRate.y,%{public}f,rotationRate.z,%{public}f,acceleration.x,%{public}f,acceleration.y,%{public}f,acceleration.z,%{public}f", buf, 0x70u);
    }

    objc_msgSend_delegate(self, v64, v65, v66);
    if (objc_opt_respondsToSelector())
    {
      v71 = *&self->_positionEstimator.fPosition.horizontalAngleUncertainty;
      *buf = *&self->_positionEstimator.fPosition.timestamp;
      *&buf[16] = v71;
      v72 = *&self->_positionEstimator.fParticleFilterState.stateEstimate.__elems_[1];
      v86 = *&self->_positionEstimator.fParticleFilterState.timestamp;
      v87 = v72;
      v73 = objc_msgSend_delegateQueue(self, v68, v69, v70);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_245F29B80;
      v81[3] = &unk_278E972C0;
      v82 = *buf;
      v83 = *&buf[16];
      v84 = v86;
      v85 = v87;
      v81[4] = self;
      v81[5] = motion;
      dispatch_async(v73, v81);
    }

    objc_msgSend_timestamp(motion, v68, v69, v70);
    v78 = (v77 * 1000000.0);
    v79 = self->_analyticsDownsampler.fMinimumToleratedDt;
    if (!v79 || self->_analyticsDownsampler.fLastTimestamp + v79 <= v78)
    {
      self->_analyticsDownsampler.fLastTimestamp = v78;
      objc_msgSend_updateAnalytics(self, v74, v75, v76);
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)updatePeerState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(state, a2, state, v3);
  v12 = v6;
  v13 = objc_msgSend_motionState(state, v7, v8, v9);
  sub_245F23EB8(&self->_positionEstimator, &v12);
  sub_245F227B8(&v12);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v10 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v15 = v12;
    v16 = 1026;
    v17 = v13;
    _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,peerState,%{public}d", buf, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateRanging:(id)ranging
{
  v36 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(ranging, a2, ranging, v3);
  *&v31 = v6;
  objc_msgSend_range(ranging, v7, v8, v9);
  *(&v31 + 1) = v10;
  objc_msgSend_rangeError(ranging, v11, v12, v13);
  *&v32 = v14;
  objc_msgSend_rssi(ranging, v15, v16, v17);
  *(&v32 + 1) = v18;
  v33 = objc_msgSend_cycleIndex(ranging, v19, v20, v21);
  *&v22 = sub_245F23B80(&self->_positionEstimator, &v31).u64[0];
  v26 = objc_msgSend_analyticsManager(self, v23, v24, v25, v22);
  *buf = v31;
  *&buf[16] = v32;
  v35 = v33;
  objc_msgSend_feedRange_(v26, v27, buf, v28);
  sub_245F22858(&v31);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v29 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = v31;
    *&buf[12] = 2050;
    *&buf[14] = *(&v31 + 1);
    *&buf[22] = 2050;
    *&buf[24] = *(&v32 + 1);
    LOWORD(v35) = 1026;
    *(&v35 + 2) = v33;
    _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,range,%{public}f,rssi,%{public}f,cycleIndex,%{public}d", buf, 0x26u);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateWatchOrientation:(id)orientation
{
  v29 = *MEMORY[0x277D85DE8];
  objc_msgSend_timestamp(orientation, a2, orientation, v3);
  v21 = v6;
  LODWORD(v22) = objc_msgSend_wrist(orientation, v7, v8, v9);
  HIDWORD(v22) = objc_msgSend_crown(orientation, v10, v11, v12);
  v13 = sub_245F23F14(&self->_positionEstimator, &v21);
  v17 = objc_msgSend_analyticsManager(self, v14, v15, v16, v13);
  objc_msgSend_feedWatchOrientation_(v17, v18, v21, v22);
  sub_245F22984(&v21);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v19 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v24 = v21;
    v25 = 1026;
    v26 = v22;
    v27 = 1026;
    v28 = HIDWORD(v22);
    _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,timestamp,%{public}f,wrist,%{public}d,crown,%{public}d,", buf, 0x18u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateAltimeterData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  objc_msgSend_machAbsoluteTimestamp(data, a2, data, v3, 0);
  v18 = v6;
  objc_msgSend_relativeAltitude(data, v7, v8, v9);
  v19 = v10;
  objc_msgSend_pressure(data, v11, v12, v13);
  v20 = v14;
  sub_245F23FF4(&self->_positionEstimator, &v17);
  sub_245F22B34(&v17);
  if (qword_27EE374E0 != -1)
  {
    dispatch_once(&qword_27EE374E0, &unk_2858D7350);
  }

  v15 = off_27EE374E8;
  if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349568;
    v22 = v18;
    v23 = 2050;
    v24 = v20;
    v25 = 2050;
    v26 = v19;
    _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "CMAPrecisionFindingManager,machAbsoluteTimestamp,%{public}f,pressure,%{public}f,relativeAltitude,%{public}f", buf, 0x20u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateAnalytics
{
  objc_msgSend_delegate(self, a2, v2, v3);
  if (objc_opt_respondsToSelector())
  {
    if (self->_positionEstimator.fAcceptedRange.__engaged_)
    {
      v8 = objc_msgSend_analyticsManager(self, v5, v6, v7);
      if (!self->_positionEstimator.fAcceptedRange.__engaged_)
      {
        sub_245F2AB94();
      }

      v11 = *&self->_positionEstimator.fAcceptedRange.var0.__val_.rangeError;
      v14[0] = *&self->_positionEstimator.fAcceptedRange.var0.__null_state_;
      v14[1] = v11;
      v15 = *&self->_positionEstimator.fAcceptedRange.var0.__val_.cycleIndex;
      objc_msgSend_feedAcceptedRange_(v8, v9, v14, v10);
    }

    v12 = objc_msgSend_delegateQueue(self, v5, v6, v7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_245F2A95C;
    block[3] = &unk_278E97158;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

- (id).cxx_construct
{
  sub_245F231AC(&self->_positionEstimator, a2);
  self->_deviceMotionDownsampler.fLastTimestamp = 0;
  self->_deviceMotionDownsampler.fMinimumToleratedDt = 39500;
  self->_deviceMotionDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  *&self->_positionDownsampler.fMinimumToleratedDt = xmmword_245F33930;
  self->_positionDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  self->_analyticsDownsampler.fLastTimestamp = 0;
  self->_analyticsDownsampler.fMinimumToleratedDt = 39500;
  self->_analyticsDownsampler._vptr$CMDownsampler = &unk_2858D7380;
  return self;
}

@end