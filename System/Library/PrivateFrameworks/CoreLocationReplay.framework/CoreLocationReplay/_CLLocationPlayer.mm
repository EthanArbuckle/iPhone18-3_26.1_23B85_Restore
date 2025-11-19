@interface _CLLocationPlayer
- (BOOL)hasARSessionTimedOut:(double)a3;
- (_CLLocationPlayer)init;
- (id)_getFusedLocationFrom:(id)a3 machAbsTime:(double)a4;
- (void)_updateARSessionState:(unint64_t)a3;
- (void)_updateLocation:(CLDaemonLocation *)a3 locationPrivate:(void *)a4;
- (void)_updateVIOEstimation:(id)a3;
- (void)_updateVLLocalizationResult:(id)a3;
- (void)closeARSessionWithState:(unint64_t)a3;
- (void)convertCLLocation:(id)a3 machAbsTime:(double)a4 toDaemonLocation:(CLDaemonLocation *)a5 daemonLocationPrivate:(void *)a6;
- (void)dealloc;
- (void)setEnableFusion:(BOOL)a3;
- (void)setEnableSimulation:(BOOL)a3;
- (void)start;
- (void)startARSessionWithState:(unint64_t)a3;
- (void)stop;
@end

@implementation _CLLocationPlayer

- (_CLLocationPlayer)init
{
  v5.receiver = self;
  v5.super_class = _CLLocationPlayer;
  v2 = [(_CLLocationPlayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2[13648] = 1;
    *(v2 + 13649) = 0;
    *(v2 + 1707) = 0xBFF0000000000000;
    *(v2 + 1708) = objc_alloc_init(MEMORY[0x277CBFC80]);
  }

  return v3;
}

- (void)dealloc
{
  simulationManager = self->_simulationManager;
  if (simulationManager)
  {

    self->_simulationManager = 0;
  }

  v4.receiver = self;
  v4.super_class = _CLLocationPlayer;
  [(_CLLocationPlayer *)&v4 dealloc];
}

- (void)setEnableFusion:(BOOL)a3
{
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v5 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_ERROR, "CLLP,setEnableFusion:,Cannot set a flag while player is active", v6, 2u);
    }
  }

  else
  {
    self->_fusionEnabled = a3;
  }
}

- (void)setEnableSimulation:(BOOL)a3
{
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v5 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_ERROR, "CLLP,setEnableSimulation:,Cannot set a flag while player is active", v6, 2u);
    }
  }

  else
  {
    self->_simulationEnabled = a3;
  }
}

- (void)start
{
  objc_sync_enter(self);
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v3 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_245B46000, v3, OS_LOG_TYPE_ERROR, "CLLP,start,Player is already active - nothing to start", v4, 2u);
    }
  }

  else
  {
    sub_245B4C854(&self->_locationFuser);
    [(_CLLocationPlayer *)self setPlayerActive:1];
  }

  objc_sync_exit(self);
}

- (void)stop
{
  objc_sync_enter(self);
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    [(_CLLocationPlayer *)self setPlayerActive:0];
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v3 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_245B46000, v3, OS_LOG_TYPE_ERROR, "CLLP,stop,Player is already inactive - nothing to stop", v4, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)_updateARSessionState:(unint64_t)a3
{
  objc_sync_enter(self);
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (a3 == 1)
    {
      if ([(_CLLocationPlayer *)self isNotifierActive])
      {
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
        }

        v5 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
        {
          *v7 = 0;
          _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_DEBUG, "CLLP,_updateARSessionState:,New session has started without end notification of previous session", v7, 2u);
        }

        [(_CLLocationPlayer *)self closeARSessionWithState:2];
      }

      [(_CLLocationPlayer *)self startARSessionWithState:1];
    }

    else
    {
      [(_CLLocationPlayer *)self closeARSessionWithState:a3];
    }
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v6 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_245B46000, v6, OS_LOG_TYPE_ERROR, "CLLP,_updateARSessionState:,Player is inactive - need to start the player first", buf, 2u);
    }
  }

  objc_sync_exit(self);
}

- (void)_updateVIOEstimation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (a3)
    {
      [a3 timestamp];
      if ([(_CLLocationPlayer *)self hasARSessionTimedOut:?])
      {
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
        }

        v5 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
        {
          [a3 timestamp];
          v7 = v6;
          [(_CLLocationPlayer *)self notifierLastARKitUpdateTime];
          v13 = 134349312;
          v14 = v7;
          v15 = 2050;
          v16 = v8;
          _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_ERROR, "CLLP,_updateVIOEstimation,Session has timed out without end notification,nowMachAbsTime,%{public}.3lf,lastARKitUpdate,%{public}.3lf", &v13, 0x16u);
        }

        [(_CLLocationPlayer *)self closeARSessionWithState:2];
      }

      if (![(_CLLocationPlayer *)self isNotifierActive])
      {
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
        }

        v9 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_245B46000, v9, OS_LOG_TYPE_DEBUG, "CLLP,_updateVIOEstimation:,Payload was sent without start notification of current session", &v13, 2u);
        }

        [(_CLLocationPlayer *)self startARSessionWithState:1];
      }

      [a3 timestamp];
      [(_CLLocationPlayer *)self setNotifierLastARKitUpdateTime:?];
      if ([(_CLLocationPlayer *)self isFusionEnabled])
      {
        sub_245B4DD0C(&self->_locationFuser, a3);
      }

      goto LABEL_26;
    }

    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v10 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v11 = "CLLP,_updateVIOEstimation:,Input estimation is nil";
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v10 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v11 = "CLLP,_updateVIOEstimation:,Player is inactive - need to start the player first";
LABEL_25:
      _os_log_impl(&dword_245B46000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 2u);
    }
  }

LABEL_26:
  objc_sync_exit(self);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateVLLocalizationResult:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if ([(_CLLocationPlayer *)self isPlayerActive])
  {
    if (a3)
    {
      [a3 timestamp];
      if ([(_CLLocationPlayer *)self hasARSessionTimedOut:?])
      {
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
        }

        v5 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
        {
          [a3 timestamp];
          v7 = v6;
          [(_CLLocationPlayer *)self notifierLastARKitUpdateTime];
          v13 = 134349312;
          v14 = v7;
          v15 = 2050;
          v16 = v8;
          _os_log_impl(&dword_245B46000, v5, OS_LOG_TYPE_ERROR, "CLLP,_updateVLLocalizationResult,Session has timed out without end notification,nowMachAbsTime,%{public}.3lf,lastARKitUpdate,%{public}.3lf", &v13, 0x16u);
        }

        [(_CLLocationPlayer *)self closeARSessionWithState:2];
      }

      if (![(_CLLocationPlayer *)self isNotifierActive])
      {
        if (qword_27EE33DE8 != -1)
        {
          dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
        }

        v9 = qword_27EE33DF0;
        if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_245B46000, v9, OS_LOG_TYPE_DEBUG, "CLLP,_updateVLLocalizationResult:,Payload was sent without start notification of current session", &v13, 2u);
        }

        [(_CLLocationPlayer *)self startARSessionWithState:1];
      }

      [a3 timestamp];
      [(_CLLocationPlayer *)self setNotifierLastARKitUpdateTime:?];
      if ([(_CLLocationPlayer *)self isFusionEnabled])
      {
        sub_245B4E5D4();
      }

      goto LABEL_26;
    }

    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v10 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v11 = "CLLP,_updateVLLocalizationResult:,Input localizationResult is nil";
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v10 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v11 = "CLLP,_updateVLLocalizationResult:,Player is inactive - need to start the player first";
LABEL_25:
      _os_log_impl(&dword_245B46000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 2u);
    }
  }

LABEL_26:
  objc_sync_exit(self);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_getFusedLocationFrom:(id)a3 machAbsTime:(double)a4
{
  objc_sync_enter(self);
  if (![(_CLLocationPlayer *)self isPlayerActive])
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v15 = qword_27EE33DF0;
    if (!os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v16 = "CLLP,_getFusedLocationFrom:machAbsTime:,Player is inactive - need to start the player first";
    goto LABEL_18;
  }

  if (!a3)
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v15 = qword_27EE33DF0;
    if (!os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v16 = "CLLP,_getFusedLocationFrom:machAbsTime:,Input recordedLocation is nil";
LABEL_18:
    _os_log_impl(&dword_245B46000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  *&v34[12] = 0;
  *&v34[4] = 0;
  *&v34[20] = xmmword_245B5F210;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v34[36] = _Q0;
  *&v34[52] = _Q0;
  *&v34[68] = _Q0;
  *v34 = 0xFFFF;
  *&v34[84] = 0;
  v35 = 0uLL;
  *&v34[88] = 0xBFF0000000000000;
  *(&v36 + 4) = 0xBFF0000000000000;
  LODWORD(v36) = 0;
  HIDWORD(v36) = 0x7FFFFFFF;
  memset(v37, 0, 25);
  sub_245B46F34(buf);
  [(_CLLocationPlayer *)self convertCLLocation:a3 machAbsTime:v34 toDaemonLocation:buf daemonLocationPrivate:a4];
  [(_CLLocationPlayer *)self _updateLocation:v34 locationPrivate:buf];
  if ([(_CLLocationPlayer *)self isFusionEnabled])
  {
    if (self->_locationFuser.activated_ || (mach_abs = self->_locationFuser.lastValidVlf_.t.mach_abs, mach_abs > 0.0) && vabdd_f64(v32, mach_abs) <= 24.0)
    {
      sub_245B4CFA0(&self->_locationFuser, v34, buf);
    }
  }

  v28 = v35;
  v29 = v36;
  v30[0] = *v37;
  *(v30 + 12) = *&v37[12];
  v24 = *&v34[32];
  v25 = *&v34[48];
  v26 = *&v34[64];
  v27 = *&v34[80];
  v22 = *v34;
  v23 = *&v34[16];
  memset(__src, 0, 512);
  sub_245B47060(buf, __src);
  v13 = objc_alloc(MEMORY[0x277CE41F8]);
  v19[6] = v28;
  v19[7] = v29;
  v20[0] = v30[0];
  *(v20 + 12) = *(v30 + 12);
  v19[2] = v24;
  v19[3] = v25;
  v19[4] = v26;
  v19[5] = v27;
  v19[0] = v22;
  v19[1] = v23;
  memcpy(v18, __src, sizeof(v18));
  v14 = [v13 initWithClientLocation:v19 clientLocationPrivate:v18];
  if (v33)
  {
    sub_245B4720C(v33);
  }

LABEL_20:
  objc_sync_exit(self);
  return v14;
}

- (void)startARSessionWithState:(unint64_t)a3
{
  [(_CLLocationPlayer *)self setNotifierActive:1];
  [(_CLLocationPlayer *)self setNotifierLastARKitUpdateTime:-1.0];
  [(_CLLocationPlayer *)self setArSessionActive:a3 == 1];
  if ([(_CLLocationPlayer *)self isFusionEnabled])
  {

    sub_245B4D8EC(&self->_locationFuser, a3);
  }
}

- (void)closeARSessionWithState:(unint64_t)a3
{
  [(_CLLocationPlayer *)self setNotifierActive:0];
  [(_CLLocationPlayer *)self setNotifierLastARKitUpdateTime:-1.0];
  [(_CLLocationPlayer *)self setArSessionActive:a3 == 1];
  if ([(_CLLocationPlayer *)self isFusionEnabled])
  {

    sub_245B4D8EC(&self->_locationFuser, a3);
  }
}

- (BOOL)hasARSessionTimedOut:(double)a3
{
  v5 = [(_CLLocationPlayer *)self isNotifierActive];
  if (v5)
  {
    [(_CLLocationPlayer *)self notifierLastARKitUpdateTime];
    if (v6 <= 0.0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      [(_CLLocationPlayer *)self notifierLastARKitUpdateTime];
      LOBYTE(v5) = vabdd_f64(a3, v7) > 10.0;
    }
  }

  return v5;
}

- (void)convertCLLocation:(id)a3 machAbsTime:(double)a4 toDaemonLocation:(CLDaemonLocation *)a5 daemonLocationPrivate:(void *)a6
{
  v66 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [a3 clientLocation];
  }

  else
  {
    memset(v58, 0, 156);
  }

  v10 = *&v58[112];
  *&a5->var11 = *&v58[96];
  a5->var13 = v10;
  *&a5->var14 = *&v58[128];
  *&a5->var16 = *&v58[140];
  v11 = *&v58[48];
  *&a5->var3 = *&v58[32];
  *&a5->var5 = v11;
  v12 = *&v58[80];
  *&a5->var7 = *&v58[64];
  *&a5->var9 = v12;
  v13 = *&v58[16];
  *&a5->var0 = *v58;
  *&a5->var1.var1 = v13;
  sub_245B46F34(v58);
  memcpy(a6, v58, 0x201uLL);
  v14 = v59;
  v59 = 0u;
  v15 = *(a6 + 66);
  *(a6 + 520) = v14;
  if (v15)
  {
    sub_245B4720C(v15);
    v16 = *(&v59 + 1);
    v17 = v65[0];
    *(a6 + 600) = v64;
    *(a6 + 616) = v17;
    *(a6 + 625) = *(v65 + 9);
    v18 = v61;
    *(a6 + 536) = v60;
    *(a6 + 552) = v18;
    v19 = v63;
    *(a6 + 568) = v62;
    *(a6 + 584) = v19;
    if (v16)
    {
      sub_245B4720C(v16);
    }
  }

  else
  {
    v20 = v65[0];
    *(a6 + 600) = v64;
    *(a6 + 616) = v20;
    *(a6 + 625) = *(v65 + 9);
    v21 = v61;
    *(a6 + 536) = v60;
    *(a6 + 552) = v21;
    v22 = v63;
    *(a6 + 568) = v62;
    *(a6 + 584) = v22;
  }

  *(a6 + 4) = a4;
  *(a6 + 43) = a4;
  v23 = [a3 matchInfo];
  if (v23)
  {
    v24 = v23;
    *(a6 + 14) = [v23 matchQuality];
    [v24 matchCoordinate];
    *(a6 + 8) = v25;
    [v24 matchCoordinate];
    *(a6 + 9) = v26;
    [v24 matchCourse];
    *(a6 + 10) = v27;
    *(a6 + 22) = [v24 matchFormOfWay];
    *(a6 + 23) = [v24 matchRoadClass];
    *(a6 + 96) = [v24 isMatchShifted];
    [objc_msgSend(v24 "matchDataArray")];
  }

  v28 = [a3 _groundAltitude];
  if (v28)
  {
    v29 = v28;
    [v28 estimate];
    *(a6 + 47) = v30;
    [v29 uncertainty];
    *(a6 + 48) = v31;
    [v29 undulation];
    *&v32 = v32;
    *(a6 + 79) = LODWORD(v32);
    v33 = [v29 undulationModel];
  }

  else
  {
    if (![a3 isAltitudeWgs84Available])
    {
      goto LABEL_15;
    }

    *(a6 + 47) = 0;
    *(a6 + 48) = 0xBFF0000000000000;
    [a3 altitudeWgs84];
    v35 = v34;
    [a3 altitude];
    *&v36 = v35 - v36;
    *(a6 + 79) = LODWORD(v36);
    v33 = 1;
  }

  *(a6 + 78) = v33;
LABEL_15:
  [a3 rawHorizontalAccuracy];
  *(a6 + 49) = v37;
  [a3 rawAltitude];
  *(a6 + 50) = v38;
  [a3 rawVerticalAccuracy];
  *(a6 + 51) = v39;
  [a3 rawCourseAccuracy];
  *(a6 + 52) = v40;
  [a3 trustedTimestamp];
  *(a6 + 3) = v41;
  [a3 rawHorizontalAccuracy];
  [a3 rawHorizontalAccuracy];
  if (v42 >= 0.0)
  {
    *(&a5->var0 + 1) = *(&a5->var11 + 4);
    *(&a5->var1.var1 + 4) = *(a6 + 49);
    v46 = 132;
    v47 = 136;
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v43 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      [a3 rawHorizontalAccuracy];
      *v58 = 134349312;
      *&v58[4] = a4;
      *&v58[12] = 2050;
      *&v58[14] = v44;
      _os_log_impl(&dword_245B46000, v43, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Input does not have valid rawCoordinate,machAbsTime,%{public}.3f,rawHorzAcc,%{public}.3f", v58, 0x16u);
      if (qword_27EE33DE8 != -1)
      {
        dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
      }
    }

    v45 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      *v58 = 0;
      _os_log_impl(&dword_245B46000, v45, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Will use coordinate instead of rawCoordinate", v58, 2u);
    }

    *(&a5->var11 + 4) = *(&a5->var0 + 1);
    *(a6 + 49) = *(&a5->var1.var1 + 4);
    v46 = 136;
    v47 = 132;
  }

  *(&a5->var0 + v46) = *(&a5->var0 + v47);
  [a3 rawVerticalAccuracy];
  [a3 rawVerticalAccuracy];
  if (v48 >= 0.0)
  {
    *(&a5->var2 + 4) = *(a6 + 25);
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v49 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      [a3 rawVerticalAccuracy];
      *v58 = 134349312;
      *&v58[4] = a4;
      *&v58[12] = 2050;
      *&v58[14] = v50;
      _os_log_impl(&dword_245B46000, v49, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Input does not have valid rawAltitude,machAbsTime,%{public}.3f,rawVertAcc,%{public}.3f", v58, 0x16u);
      if (qword_27EE33DE8 != -1)
      {
        dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
      }
    }

    v51 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      *v58 = 0;
      _os_log_impl(&dword_245B46000, v51, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Will use altitude instead of rawAltitude", v58, 2u);
    }

    *(a6 + 25) = *(&a5->var2 + 4);
  }

  [a3 rawCourseAccuracy];
  [a3 rawCourseAccuracy];
  if (v52 >= 0.0 && ([a3 rawCourse], objc_msgSend(a3, "rawCourse"), v53 >= 0.0))
  {
    *(&a5->var6 + 4) = *(&a5->var13.var0 + 4);
    *(&a5->var7 + 4) = *(a6 + 52);
  }

  else
  {
    if (qword_27EE33DE8 != -1)
    {
      dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
    }

    v54 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      [a3 rawCourseAccuracy];
      *v58 = 134349312;
      *&v58[4] = a4;
      *&v58[12] = 2050;
      *&v58[14] = v55;
      _os_log_impl(&dword_245B46000, v54, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Input does not have valid rawCourse,machAbsTime,%{public}.3f,rawCourseAcc,%{public}.3f", v58, 0x16u);
      if (qword_27EE33DE8 != -1)
      {
        dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
      }
    }

    v56 = qword_27EE33DF0;
    if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
    {
      *v58 = 0;
      _os_log_impl(&dword_245B46000, v56, OS_LOG_TYPE_DEBUG, "CLLP,convertCLLocation:toDaemonLocation:daemonLocationPrivate:,Will use course instead of rawCourse", v58, 2u);
    }

    *(&a5->var13.var0 + 4) = *(&a5->var6 + 4);
    *(a6 + 52) = *(&a5->var7 + 4);
  }

  *(a6 + 212) = 0;
  *(a6 + 27) = *(&a5->var0 + 1);
  *(a6 + 56) = *(&a5->var1.var1 + 4);
  *(a6 + 114) = HIDWORD(a5->var14);
  *(a6 + 29) = *(&a5->var2 + 4);
  *(a6 + 30) = *(&a5->var6 + 4);
  v57 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocation:(CLDaemonLocation *)a3 locationPrivate:(void *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(_CLLocationPlayer *)self isARSessionActive])
  {
    if (![(_CLLocationPlayer *)self isFusionEnabled]|| !self->_locationFuser.activated_ && ((v7 = self->_locationFuser.lastValidVlf_.t.mach_abs, v8 = vabdd_f64(*(a4 + 4), v7), v7 > 0.0) ? (v9 = v8 <= 24.0) : (v9 = 0), !v9))
    {
      if ([(_CLLocationPlayer *)self isFusionEnabled]&& !self->_locationFuser.activated_)
      {
        mach_abs = self->_locationFuser.lastValidVlf_.t.mach_abs;
        v12 = vabdd_f64(*(a4 + 4), mach_abs) > 24.0 || mach_abs <= 0.0;
        if (v12 && mach_abs > 0.0)
        {
          sub_245B4C854(&self->_locationFuser);
          if (qword_27EE33DE8 != -1)
          {
            dispatch_once(&qword_27EE33DE8, &unk_2858B7E30);
          }

          v13 = qword_27EE33DF0;
          if (os_log_type_enabled(qword_27EE33DF0, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(a4 + 4);
            v16 = 134349056;
            v17 = v14;
            _os_log_impl(&dword_245B46000, v13, OS_LOG_TYPE_DEBUG, "CLLP,_updateLocation:locationPrivate:,Manual location fuser reset,machAbsTime,%{public}.3lf", &v16, 0xCu);
          }

          goto LABEL_24;
        }
      }
    }
  }

  if (![(_CLLocationPlayer *)self isFusionEnabled])
  {
LABEL_24:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v10 = *MEMORY[0x277D85DE8];

  sub_245B5108C(&self->_locationFuser, a3, a4);
}

@end