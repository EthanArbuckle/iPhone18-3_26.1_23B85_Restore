@interface CMADeviceMotionVisionFusionPlayer
- (CMADeviceMotionVisionFusionPlayer)init;
- (id)getFusedDeviceMotionFrom:(id)from andAttitudeReferenceFrame:(unint64_t)frame;
- (void)reset;
- (void)start;
- (void)stop;
- (void)updateARSessionState:(unint64_t)state;
- (void)updateLocation:(id)location;
- (void)updateVLLocalizationResult:(id)result;
@end

@implementation CMADeviceMotionVisionFusionPlayer

- (CMADeviceMotionVisionFusionPlayer)init
{
  v5.receiver = self;
  v5.super_class = CMADeviceMotionVisionFusionPlayer;
  v2 = [(CMADeviceMotionVisionFusionPlayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_fusionEnabled = 1;
    sub_245F1398C("/System/Library/Frameworks/CoreLocation.framework/Support/WMM.dat");
    v3->fMagneticDeclination = 0.0;
    v3->fMagneticDeclinationTimestamp = -1.0;
    operator new();
  }

  return 0;
}

- (void)start
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v3, v4, v5))
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v9 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_245D80000, v9, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, player is already active - nothing to start", v12, 2u);
    }
  }

  else
  {
    objc_msgSend_reset(self, v6, v7, v8);
    objc_msgSend_setPlayerActive_(self, v10, 1, v11);
  }

  objc_sync_exit(self);
}

- (void)stop
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v3, v4, v5))
  {
    objc_msgSend_setPlayerActive_(self, v6, 0, v7);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v8 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, player is already inactive - nothing to stop", v9, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)updateARSessionState:(unint64_t)state
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v5, v6, v7))
  {
    objc_msgSend_setArSessionActive_(self, v8, state == 1, v9);
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v10 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEFAULT, "#warning CMADeviceMotionVisionFusionPlayer, ignoring AR Session State update, player is inactive - need to start the player", v11, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)updateVLLocalizationResult:(id)result
{
  objc_sync_enter(self);
  if (objc_msgSend_isPlayerActive(self, v5, v6, v7))
  {
    ptr = self->fVLFDeviceMotionFuser.__ptr_;
    if (ptr)
    {
      sub_245F179E0(ptr, result, v8, v9);
      goto LABEL_13;
    }

    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v11 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v12 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring VL update, fuser is nil";
      v13 = &v14;
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v11 = qword_27EE37508;
    if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v12 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring VL update, player is inactive - need to start the player";
      v13 = &v15;
LABEL_12:
      _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    }
  }

LABEL_13:
  objc_sync_exit(self);
}

- (void)updateLocation:(id)location
{
  objc_sync_enter(self);
  if ((objc_msgSend_isPlayerActive(self, v5, v6, v7) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v36 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v37 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, player is inactive - need to start the player";
LABEL_23:
    _os_log_impl(&dword_245D80000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
    goto LABEL_24;
  }

  if (!location)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v36 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v37 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, location is nil";
    goto LABEL_23;
  }

  if ((objc_msgSend_isARSessionActive(self, v8, v9, v10) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v36 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v37 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, AR session is not active";
    goto LABEL_23;
  }

  if (self->fVLFDeviceMotionFuser.__ptr_)
  {
    v14 = objc_msgSend_clientLocation(location, v11, v12, v13);
    v18 = sub_245F1DE2C(v14, v15, v16, v17);
    objc_msgSend_clientLocation(location, v19, v20, v21);
    v22 = v43;
    objc_msgSend_clientLocation(location, v23, v24, v25);
    v26 = v42;
    objc_msgSend_clientLocation(location, v27, v28, v29);
    v30 = fmax(v22, 0.0);
    v31 = v26;
    v32 = v38;
    if (!sub_245F139A0(&v39, v31, v32, v30, v18))
    {
      self->fMagneticDeclination = v40;
      objc_msgSend_clientLocation(location, v33, v34, v35);
      self->fMagneticDeclinationTimestamp = v44;
      *(self->fVLFDeviceMotionFuser.__ptr_ + 2) = LODWORD(self->fMagneticDeclination);
    }

    goto LABEL_24;
  }

  if (qword_27EE37500 != -1)
  {
    dispatch_once(&qword_27EE37500, &unk_2858D7280);
  }

  v36 = qword_27EE37508;
  if (os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v37 = "#warning CMADeviceMotionVisionFusionPlayer, ignoring location update, fuser is nil";
    goto LABEL_23;
  }

LABEL_24:
  objc_sync_exit(self);
}

- (id)getFusedDeviceMotionFrom:(id)from andAttitudeReferenceFrame:(unint64_t)frame
{
  objc_sync_enter(self);
  if ((objc_msgSend_isPlayerActive(self, v7, v8, v9) & 1) == 0)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v88 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v89 = "#warning CMADeviceMotionVisionFusionPlayer, cannot get fused device motion, player is inactive - need to start the player";
    goto LABEL_10;
  }

  if (!objc_msgSend_isFusionEnabled(self, v10, v11, v12))
  {
    goto LABEL_22;
  }

  if (!self->fVLFDeviceMotionFuser.__ptr_)
  {
    if (qword_27EE37500 != -1)
    {
      dispatch_once(&qword_27EE37500, &unk_2858D7280);
    }

    v88 = qword_27EE37508;
    if (!os_log_type_enabled(qword_27EE37508, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v89 = "#warning CMADeviceMotionVisionFusionPlayer, cannot get fused device motion, fuser is nil";
LABEL_10:
    _os_log_impl(&dword_245D80000, v88, OS_LOG_TYPE_DEFAULT, v89, buf, 2u);
LABEL_11:
    from = 0;
    goto LABEL_22;
  }

  v157 = 0u;
  v156 = 0u;
  v16 = objc_msgSend_attitude(from, v13, v14, v15);
  objc_msgSend_quaternion(v16, v17, v18, v19);
  v21 = v20;
  *buf = v21;
  v25 = objc_msgSend_attitude(from, v22, v23, v24);
  objc_msgSend_quaternion(v25, v26, v27, v28);
  *&v29 = v29;
  v147 = *&v29;
  v33 = objc_msgSend_attitude(from, v30, v31, v32);
  objc_msgSend_quaternion(v33, v34, v35, v36);
  v38 = v37;
  v148 = v38;
  v42 = objc_msgSend_attitude(from, v39, v40, v41);
  objc_msgSend_quaternion(v42, v43, v44, v45);
  v47 = v46;
  v149 = v47;
  objc_msgSend_userAcceleration(from, v48, v49, v50);
  *&v51 = v51;
  v150 = LODWORD(v51);
  objc_msgSend_userAcceleration(from, v52, v53, v54);
  v56 = v55;
  v151 = v56;
  objc_msgSend_userAcceleration(from, v57, v58, v59);
  v61 = v60;
  v152 = v61;
  objc_msgSend_rotationRate(from, v62, v63, v64);
  *&v65 = v65;
  v153 = LODWORD(v65);
  objc_msgSend_rotationRate(from, v66, v67, v68);
  v70 = v69;
  v154 = v70;
  objc_msgSend_rotationRate(from, v71, v72, v73);
  v78 = v77;
  v155 = v78;
  if (from)
  {
    objc_msgSend_magneticField(from, v74, v75, v76);
    v79 = *&v138;
    *&v156 = v79;
    objc_msgSend_magneticField(from, v80, v81, v82);
    v83 = *(&v136 + 1);
    *(&v156 + 1) = v83;
    objc_msgSend_magneticField(from, v84, v85, v86);
    v87 = *&v145;
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    *&v156 = 0;
    v87 = 0.0;
    v144 = 0u;
    v145 = 0u;
  }

  *(&v156 + 2) = v87;
  HIDWORD(v156) = objc_msgSend_magneticFieldCalibrationLevel(from, v74, v75, v76, v136, *(&v136 + 1), v137);
  LOBYTE(v157) = objc_msgSend_doingYawCorrection(from, v90, v91, v92);
  BYTE1(v157) = objc_msgSend_doingBiasEstimation(from, v93, v94, v95);
  BYTE2(v157) = 1;
  objc_msgSend_heading(from, v96, v97, v98);
  *&v99 = v99;
  DWORD1(v157) = LODWORD(v99);
  BYTE8(v157) = objc_msgSend_fusedWithVision(from, v100, v101, v102);
  BYTE9(v157) = objc_msgSend_usingVisionCorrections(from, v103, v104, v105);
  HIDWORD(v157) = 0;
  if (frame == 8)
  {
    sub_245F214A4(buf, self->fMagneticDeclination, self->fMagneticDeclinationTimestamp);
  }

  ptr = self->fVLFDeviceMotionFuser.__ptr_;
  objc_msgSend_headingAccuracy(from, v106, v107, v108);
  v111 = v110;
  objc_msgSend_timestamp(from, v112, v113, v114);
  v116 = v115;
  *&v115 = v111;
  sub_245F17554(ptr, buf, *&v115, v116);
  v120 = self->fVLFDeviceMotionFuser.__ptr_;
  v121 = *(v120 + 1);
  v122 = *(v120 + 2);
  v123 = *(v120 + 3);
  v124 = *(v120 + 5);
  v141 = *(v120 + 4);
  v142 = v124;
  v143 = *(v120 + 12);
  v139 = v122;
  v140 = v123;
  v138 = v121;
  if (frame == 8)
  {
    sub_245F21380(&v138, self->fMagneticDeclination, self->fMagneticDeclinationTimestamp);
  }

  objc_msgSend_headingAccuracy(from, v117, v118, v119);
  v126 = v125;
  v127 = objc_alloc(MEMORY[0x277CC1C70]);
  objc_msgSend_timestamp(from, v128, v129, v130, v138, v139, v140, v141, v142, v143);
  v132 = v131;
  *&v131 = v126;
  from = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v127, v133, &v136, v134, v131, 0.0, 0.0, 0.0, v132);
LABEL_22:
  objc_sync_exit(self);
  return from;
}

- (void)reset
{
  ptr = self->fVLFDeviceMotionFuser.__ptr_;
  if (ptr)
  {
    sub_245F174F0(ptr);
  }

  self->fMagneticDeclination = 0.0;
  self->fMagneticDeclinationTimestamp = -1.0;
}

@end