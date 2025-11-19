@interface FigCoreMotionDelegate
- (FigCoreMotionDelegate)init;
- (FigCoreMotionDelegate)initWithAccelerometer:(BOOL)a3 gravityZ:(BOOL)a4 fusedMotion:(BOOL)a5 accelUpdateInterval:(float)a6 fusedMotionUpdateInterval:(float)a7 motionCallbackThreadPriority:(id)a8;
- (id)copyAllFusedMotionData;
- (id)copyFusedMotionData:(double)a3 endTime:(double)a4 timeoutValue:(double)a5 errOut:(int *)a6;
- (id)copyNewFusedMotionData;
- (int)getFusedVectorX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6;
- (int)getGravityX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)latestGravityDataTime;
- (int)getLatestMotionDataTime:(double *)a3;
- (int)getVectorX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6;
- (int)updateCurrentQuaternionForTimeStamp:(double)a3;
- (int)updateCurrentQuaternionForTimeStamps:(double)a3 withEnd:(double)a4;
- (void)dealloc;
- (void)didUpdateAcceleration:(id)a3 time:(double)a4;
- (void)didUpdateFusedMotionWithDeviceMotion:(id *)a3 time:(double)a4 ifsync:(BOOL)a5;
- (void)didUpdateGravity:(id)a3 time:(double)a4;
- (void)didUpdatePositionWithAcceleration:(id *)a3 forTimeStamp:(double)a4;
- (void)didUpdatePositionWithTimeStamp:(double)a3;
- (void)didUpdateVelocityWithAcceleration:(id *)a3 forTimeStamp:(double)a4;
- (void)getCurrentAttitudeRoll:(double *)a3 pitch:(double *)a4 yaw:(double *)a5;
- (void)getCurrentDeltaAttitudeRoll:(double *)a3 pitch:(double *)a4 yaw:(double *)a5;
- (void)getCurrentDeltaQuaternion:(id *)a3;
- (void)getPositionX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6;
- (void)updateDeviceCallback:(BOOL)a3 fusedMotionUpdateInterval:(float)a4;
- (void)updateGyroInterval:(float)a3;
@end

@implementation FigCoreMotionDelegate

- (FigCoreMotionDelegate)initWithAccelerometer:(BOOL)a3 gravityZ:(BOOL)a4 fusedMotion:(BOOL)a5 accelUpdateInterval:(float)a6 fusedMotionUpdateInterval:(float)a7 motionCallbackThreadPriority:(id)a8
{
  v21.receiver = self;
  v21.super_class = FigCoreMotionDelegate;
  v14 = [(FigCoreMotionDelegate *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->copyingAllData = 0;
    v14->dLatestTimestamp = -1.0;
    v16 = mach_absolute_time();
    v17 = dword_1ED844AD0;
    if (!dword_1ED844AD0)
    {
      mach_timebase_info(&MachTimeToMicroseconds_sTimebaseInfo);
      v17 = dword_1ED844AD0;
    }

    v15->dStartOfLogging = (v16 * MachTimeToMicroseconds_sTimebaseInfo / v17 / 0x3E8) / 1000000.0 + 2.0;
    v15->dGyroUpdateInterval = a7;
    v15->currentQuaternion.w = 1.0;
    v15->currentQuaternion.x = 0.0;
    *&v15->currentQuaternion.y = 0u;
    v15->previousQuaternion.w = 1.0;
    *&v15->velocity.x = 0;
    v15->velocity.z = 0.0;
    v15->previousQuaternion.x = 0.0;
    *&v15->previousQuaternion.y = 0u;
    v15->velocity.timestamp = -1.0;
    *&v15->position.x = 0;
    v15->position.z = 0.0;
    v15->position.timestamp = -1.0;
    v15->computingPosition = 0;
    v15->manageAccel = a3;
    v15->manageGravity = a4;
    v15->manageFusedMotion = a5;
    pthread_mutex_init(&v15->ringMutex, 0);
    v15->dataSemaphore = FigSemaphoreCreate();
    *&v15->latestMotionDataTime = 0u;
    if (v15->manageFusedMotion || v15->manageAccel)
    {
      MEMORY[0x1B26F02D0](&readUserDefaultsOnce_sReadFigCoreMotionDelegateUserDefaultsOnce, readUserDefaults);
      v18 = [objc_alloc(MEMORY[0x1E69634D0]) initUsingGyroOnlySensorFusion];
      v15->motionManager = v18;
      if (v18)
      {
        if (a8)
        {
          v19 = v18;
          [a8 unsignedIntValue];
          [v19 setMotionThreadPriority:FigThreadGetMachThreadPriorityValue()];
        }

        if (v15->manageAccel)
        {
          [(CMMotionManager *)v15->motionManager setAccelerometerDataCallback:accelerometerDataCallback info:v15 interval:a6];
        }

        if (v15->manageFusedMotion && [(CMMotionManager *)v15->motionManager isDeviceMotionAvailable])
        {
          [(CMMotionManager *)v15->motionManager setDeviceMotionCallback:deviceMotionCallback info:v15 interval:1 fsync:v15->dGyroUpdateInterval];
        }
      }
    }
  }

  return v15;
}

- (void)updateDeviceCallback:(BOOL)a3 fusedMotionUpdateInterval:(float)a4
{
  motionManager = self->motionManager;
  if (motionManager)
  {
    self->manageFusedMotion = a3;
    if ([(CMMotionManager *)motionManager isDeviceMotionAvailable])
    {
      if (self->manageFusedMotion)
      {
        self->dGyroUpdateInterval = a4;
        v7 = self->motionManager;
        v8 = deviceMotionCallback;
        v9 = self;
        v10 = 1;
      }

      else
      {
        v7 = self->motionManager;
        v8 = 0;
        v9 = 0;
        v10 = 0;
      }

      [(CMMotionManager *)v7 setDeviceMotionCallback:v8 info:v9 interval:v10 fsync:?];
    }
  }
}

- (void)updateGyroInterval:(float)a3
{
  motionManager = self->motionManager;
  if (motionManager)
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:0 info:self interval:a3];
  }
}

- (FigCoreMotionDelegate)init
{
  LODWORD(v2) = 1023969417;
  LODWORD(v3) = 1000593162;
  return [(FigCoreMotionDelegate *)self initWithAccelerometer:1 gravityZ:1 fusedMotion:1 accelUpdateInterval:0 fusedMotionUpdateInterval:v2 motionCallbackThreadPriority:v3];
}

- (void)dealloc
{
  if (self->manageFusedMotion && [(CMMotionManager *)self->motionManager isDeviceMotionAvailable])
  {
    [(CMMotionManager *)self->motionManager setDeviceMotionCallback:0 info:0 interval:0 fsync:0.0];
  }

  if (self->manageAccel)
  {
    [(CMMotionManager *)self->motionManager setAccelerometerDataCallback:0 info:0 interval:0.0];
  }

  pthread_mutex_destroy(&self->ringMutex);
  if (self->dataSemaphore)
  {
    FigSemaphoreDestroy();
  }

  v3.receiver = self;
  v3.super_class = FigCoreMotionDelegate;
  [(FigCoreMotionDelegate *)&v3 dealloc];
}

- (void)didUpdateAcceleration:(id)a3 time:(double)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    accelRingIndex = self->accelRingIndex;
    self->accelRingIndex = (accelRingIndex + 1);
    self->accelRingTime[accelRingIndex] = a4;
    v10 = (self + 4 * accelRingIndex);
    v10[22] = var0;
    v10[278] = var1;
    v10[534] = var2;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (void)didUpdateGravity:(id)a3 time:(double)a4
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    accelRingIndex = self->accelRingIndex;
    self->accelRingIndex = (accelRingIndex + 1);
    self->accelRingTime[accelRingIndex] = a4;
    v10 = var0;
    if (var0 > 1.0)
    {
      v10 = 1.0;
    }

    if (v10 <= -1.0)
    {
      v10 = -1.0;
    }

    v11 = v10;
    v12 = (self + 4 * accelRingIndex);
    v12[22] = v11;
    v13 = var1;
    if (var1 > 1.0)
    {
      v13 = 1.0;
    }

    if (v13 <= -1.0)
    {
      v13 = -1.0;
    }

    v14 = v13;
    v12[278] = v14;
    v15 = var2;
    if (var2 > 1.0)
    {
      v15 = 1.0;
    }

    if (v15 <= -1.0)
    {
      v15 = -1.0;
    }

    v16 = v15;
    v12[534] = v16;
    self->latestGravityDataTime = a4;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (int)getVectorX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6
{
  v11 = pthread_mutex_lock(&self->ringMutex);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (!v11)
  {
    v16 = 0;
    v17 = a6 + 0.0333333351;
    v18 = self;
    do
    {
      v19 = self->accelRingTime[v16];
      if (v19 != 0.0)
      {
        v20 = v17 - v19;
        v21 = expf(-((v20 * 15.0) * (v20 * 15.0)));
        v12 = v12 + (v21 * v18->accelRingX[0]);
        v13 = v13 + (v21 * v18->accelRingY[0]);
        v14 = v14 + (v21 * v18->accelRingZ[0]);
        v15 = v15 + v21;
      }

      ++v16;
      v18 = (v18 + 4);
    }

    while (v16 != 256);
    pthread_mutex_unlock(&self->ringMutex);
  }

  v22 = 1.0 / v15;
  if (v15 <= 0.0)
  {
    v22 = v15;
  }

  *a3 = v12 * v22;
  *a4 = v13 * v22;
  *a5 = v14 * v22;
  return v11;
}

- (int)getGravityX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)latestGravityDataTime
{
  v11 = pthread_mutex_lock(&self->ringMutex);
  if (v11)
  {
    goto LABEL_2;
  }

  if (latestGravityDataTime < 0.0)
  {
    latestGravityDataTime = self->latestGravityDataTime;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0.0;
  v16 = self;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    v19 = self->accelRingTime[v13];
    v20 = v19 == 0.0;
    v21 = vabdd_f64(v19, latestGravityDataTime);
    if (!v20 && v21 < 0.5)
    {
      v18 = v18 + v16->accelRingX[0];
      v17 = v17 + v16->accelRingY[0];
      v15 = v15 + v16->accelRingZ[0];
      ++v14;
    }

    ++v13;
    v16 = (v16 + 4);
  }

  while (v13 != 256);
  pthread_mutex_unlock(&self->ringMutex);
  if (!v14)
  {
LABEL_2:
    *a3 = 0.0;
    *a4 = 0.0;
    v12 = 0.0;
  }

  else
  {
    *a3 = v18 / v14;
    *a4 = v17 / v14;
    v12 = v15 / v14;
  }

  *a5 = v12;
  return v11;
}

- (int)getFusedVectorX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6
{
  v11 = pthread_mutex_lock(&self->ringMutex);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (!v11)
  {
    fusedRingTime = self->fusedRingTime;
    v17 = a6 + 0.0333333351;
    p_z = &self->fusedRingAccel[0].z;
    v19 = 256;
    do
    {
      if (*fusedRingTime != 0.0)
      {
        v20 = v17 - *fusedRingTime;
        v21 = expf(-((v20 * 15.0) * (v20 * 15.0)));
        v12 = v12 + (v21 * *(p_z - 2));
        v13 = v13 + (v21 * *(p_z - 1));
        v14 = v14 + (v21 * *p_z);
        v15 = v15 + v21;
      }

      ++fusedRingTime;
      p_z += 3;
      --v19;
    }

    while (v19);
    pthread_mutex_unlock(&self->ringMutex);
  }

  v22 = 1.0 / v15;
  if (v15 <= 0.0)
  {
    v22 = v15;
  }

  *a3 = v12 * v22;
  *a4 = v13 * v22;
  *a5 = v14 * v22;
  return v11;
}

- (void)didUpdateFusedMotionWithDeviceMotion:(id *)a3 time:(double)a4 ifsync:(BOOL)a5
{
  dLatestTimestamp = self->dLatestTimestamp;
  if (dLatestTimestamp > 0.0 && a4 - dLatestTimestamp > self->dGyroUpdateInterval * 3.1 && self->dStartOfLogging < a4)
  {
    low_freq_error_logging_0();
  }

  self->dLatestTimestamp = a4;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    fusedRingIndex = self->fusedRingIndex;
    self->fusedRingIndex = (fusedRingIndex + 1);
    self->fusedRingTime[fusedRingIndex] = a4;
    self->fusedRingDoingBiasEstimation[fusedRingIndex] = a3->var6;
    v10 = self + 12 * fusedRingIndex;
    v11 = *&a3->var1.var0;
    *(v10 + 1882) = LODWORD(a3->var1.var2);
    *(v10 + 940) = v11;
    v12 = self + 32 * fusedRingIndex;
    v13 = *&a3->var0.var0;
    *(v12 + 663) = *&a3->var0.var2;
    *(v12 + 662) = v13;
    if (self->computingPosition)
    {
      [(FigCoreMotionDelegate *)self didUpdatePositionWithAcceleration:&a3->var1 forTimeStamp:a4];
      v14 = self + 12 * fusedRingIndex;
      *(v14 + 2348) = *&self->position.x;
      *(v14 + 4698) = LODWORD(self->position.z);
    }

    self->latestMotionDataTime = a4;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (void)didUpdatePositionWithAcceleration:(id *)a3 forTimeStamp:(double)a4
{
  timestamp = self->position.timestamp;
  if (timestamp == -1.0)
  {
    self->velocity.timestamp = a4;
    self->position.timestamp = -2.0;
  }

  else
  {
    [(FigCoreMotionDelegate *)self didUpdateVelocityWithAcceleration:a3 forTimeStamp:a4];
    if (timestamp == -2.0)
    {
      self->position.timestamp = a4;
    }

    else
    {

      [(FigCoreMotionDelegate *)self didUpdatePositionWithTimeStamp:a4];
    }
  }
}

- (void)didUpdateVelocityWithAcceleration:(id *)a3 forTimeStamp:(double)a4
{
  timestamp = self->velocity.timestamp;
  if (timestamp < a4)
  {
    v5 = a4 - timestamp;
    *&self->velocity.x = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*&self->velocity.x), vcvtq_f64_f32(vmul_f32(*&a3->var0, vdup_n_s32(0x411CF5C3u))), v5));
    *&v5 = self->velocity.z + (a3->var2 * 9.81) * v5;
    self->velocity.z = *&v5;
    self->velocity.timestamp = a4;
  }
}

- (void)didUpdatePositionWithTimeStamp:(double)a3
{
  timestamp = self->position.timestamp;
  if (timestamp < a3 && self->velocity.timestamp <= a3)
  {
    v4 = a3 - timestamp;
    *&self->position.x = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*&self->position.x), vcvtq_f64_f32(*&self->velocity.x), v4));
    *&v4 = self->position.z + self->velocity.z * v4;
    self->position.z = *&v4;
    self->position.timestamp = a3;
  }
}

- (id)copyAllFusedMotionData
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    for (i = 0; i != 256; ++i)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->fusedRingTime[(i + self->fusedRingIndex)]];
      v6 = [MEMORY[0x1E696AD98] numberWithBool:self->fusedRingDoingBiasEstimation[(i + self->fusedRingIndex)]];
      v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->fusedRingAccel[(i + self->fusedRingIndex)] length:12];
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->fusedRingQuaternion[(i + self->fusedRingIndex)] length:32];
      [v3 insertObject:objc_msgSend(MEMORY[0x1E695DEC8] atIndex:{"arrayWithObjects:", v5, v6, v7, v8, 0), i}];
    }

    pthread_mutex_unlock(&self->ringMutex);
  }

  return v3;
}

- (id)copyNewFusedMotionData
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  v4 = 0.0;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = self->fusedRingTime[(v5 + self->fusedRingIndex)];
      if (v7 > self->dLatestFusedMotionCopied)
      {
        if (v7 > v4)
        {
          v4 = self->fusedRingTime[(v5 + self->fusedRingIndex)];
        }

        v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v9 = [MEMORY[0x1E696AD98] numberWithBool:self->fusedRingDoingBiasEstimation[(v5 + self->fusedRingIndex)]];
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->fusedRingQuaternion[(v5 + self->fusedRingIndex)] length:32];
        [v3 insertObject:objc_msgSend(MEMORY[0x1E695DEC8] atIndex:{"arrayWithObjects:", v8, v9, v10, 0), v6++}];
      }

      ++v5;
    }

    while (v5 != 256);
    pthread_mutex_unlock(&self->ringMutex);
  }

  if (v4 > self->dLatestFusedMotionCopied)
  {
    self->dLatestFusedMotionCopied = v4;
  }

  return v3;
}

- (id)copyFusedMotionData:(double)a3 endTime:(double)a4 timeoutValue:(double)a5 errOut:(int *)a6
{
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  if (v10)
  {
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    if (a4 < 0.0)
    {
      a4 = 1.79769313e308;
    }

    v11 = pthread_mutex_lock(&self->ringMutex);
    if (self->latestMotionDataTime < a4)
    {
      pthread_mutex_unlock(&self->ringMutex);
      if (self->dataSemaphore)
      {
        FigSemaphoreWaitRelative();
      }

      pthread_mutex_lock(&self->ringMutex);
    }

    if (!v11)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (v13 + LOBYTE(self->fusedRingIndex));
        v16 = self->fusedRingTime[v15];
        if (v16 >= a3 && v16 <= a4)
        {
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          v19 = [MEMORY[0x1E696AD98] numberWithBool:self->fusedRingDoingBiasEstimation[v15]];
          v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->fusedRingQuaternion[v15] length:32];
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v18, v19, v20, 0}];
          if (v18)
          {
            v22 = v19 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22 && v20 != 0 && v21 != 0)
          {
            [v10 insertObject:v21 atIndex:v14++];
          }
        }

        ++v13;
      }

      while (v13 != 256);
      if (v14)
      {
        pthread_mutex_unlock(&self->ringMutex);
        v11 = 0;
        goto LABEL_14;
      }

      v11 = -1;
    }

    pthread_mutex_unlock(&self->ringMutex);
  }

  else
  {
    v11 = -1;
  }

  v10 = 0;
LABEL_14:
  *a6 = v11;
  return v10;
}

- (int)updateCurrentQuaternionForTimeStamp:(double)a3
{
  if (pthread_mutex_lock(&self->ringMutex))
  {
    return -2;
  }

  v6 = 0;
  LODWORD(v7) = -1;
  v8 = 1.0;
  do
  {
    v9 = vabdd_f64(self->fusedRingTime[v6], a3);
    if (v9 >= v8)
    {
      v7 = v7;
    }

    else
    {
      v7 = v6;
    }

    if (v9 < v8)
    {
      v8 = v9;
    }

    ++v6;
  }

  while (v6 != 256);
  if (v8 > 0.011)
  {
    if ((v7 & 0x80000000) == 0)
    {
      low_freq_error_logging_0();
    }

    low_freq_error_logging_0();
  }

  if ((v7 & 0x80000000) != 0)
  {
    low_freq_error_logging_0();
    v5 = -1;
  }

  else
  {
    v5 = 0;
    v10 = self + 32 * v7;
    *&self->currentQuaternion.w = *(v10 + 662);
    *&self->currentQuaternion.y = *(v10 + 663);
  }

  pthread_mutex_unlock(&self->ringMutex);
  return v5;
}

- (int)updateCurrentQuaternionForTimeStamps:(double)a3 withEnd:(double)a4
{
  if (pthread_mutex_lock(&self->ringMutex))
  {
    return -2;
  }

  v10 = 0u;
  v11 = 0u;
  v7 = FigMotionComputeAverageQuaternionForTimePeriod(self->fusedRingTime, &self->fusedRingQuaternion[0].w, &v10, a3, a4);
  if (v7)
  {
    low_freq_error_logging_0();
  }

  else
  {
    v8 = v11;
    *&self->currentQuaternion.w = v10;
    *&self->currentQuaternion.y = v8;
  }

  pthread_mutex_unlock(&self->ringMutex);
  return v7;
}

- (void)getCurrentDeltaQuaternion:(id *)a3
{
  w = self->previousQuaternion.w;
  x = self->previousQuaternion.x;
  y = self->previousQuaternion.y;
  z = self->previousQuaternion.z;
  v7 = self->currentQuaternion.x;
  v8 = self->currentQuaternion.w;
  v9 = self->currentQuaternion.z;
  v10 = self->currentQuaternion.y;
  a3->var0 = x * v7 + w * v8 + y * v10 + z * v9;
  a3->var1 = w * v7 - x * v8 - y * v9 + z * v10;
  a3->var2 = w * v10 - y * v8 - z * v7 + x * v9;
  a3->var3 = w * v9 - z * v8 - x * v10 + y * v7;
  self->previousQuaternion = self->currentQuaternion;
}

- (void)getCurrentAttitudeRoll:(double *)a3 pitch:(double *)a4 yaw:(double *)a5
{
  *a3 = rollFromQuaternion(&self->currentQuaternion.w);
  *a4 = asin(self->currentQuaternion.w * (self->currentQuaternion.x + self->currentQuaternion.x) + self->currentQuaternion.y * (self->currentQuaternion.z + self->currentQuaternion.z));
  *a5 = yawFromQuaternion(&self->currentQuaternion.w);
}

- (void)getCurrentDeltaAttitudeRoll:(double *)a3 pitch:(double *)a4 yaw:(double *)a5
{
  v13 = 0u;
  v14 = 0u;
  [(FigCoreMotionDelegate *)self getCurrentDeltaQuaternion:&v13];
  v8 = v14;
  v9 = *(&v14 + 1) + *(&v14 + 1);
  v10 = v13;
  v11 = *(&v13 + 1) + *(&v13 + 1);
  v12 = 1.0 - *(&v13 + 1) * (*(&v13 + 1) + *(&v13 + 1));
  *a3 = -atan2(*(&v13 + 1) * (*(&v14 + 1) + *(&v14 + 1)) - *&v13 * (*&v14 + *&v14), v12 - *&v14 * (*&v14 + *&v14));
  *a4 = asin(v11 * *&v10 + *&v8 * v9);
  *a5 = -atan2(*(&v10 + 1) * (*&v8 + *&v8) - *&v10 * v9, v12 - *(&v8 + 1) * v9);
}

- (void)getPositionX:(float *)a3 y:(float *)a4 z:(float *)a5 forTimeStamp:(double)a6
{
  p_z = &self->fusedRingPosition[0].z;
  if (self->computingPosition)
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if (!pthread_mutex_lock(&self->ringMutex))
    {
      v16 = 0;
      v17 = a6 + 0.0333333351;
      do
      {
        v18 = self->fusedRingTime[v16];
        if (v18 != 0.0)
        {
          v19 = v17 - v18;
          v20 = expf(-((v19 * 15.0) * (v19 * 15.0)));
          v15 = v15 + (v20 * *(p_z - 2));
          v12 = v12 + (v20 * *(p_z - 1));
          v13 = v13 + (v20 * *p_z);
          v14 = v14 + v20;
        }

        ++v16;
        p_z += 3;
      }

      while (v16 != 256);
      pthread_mutex_unlock(&self->ringMutex);
    }

    v21 = 1.0 / v14;
    if (v14 <= 0.0)
    {
      v21 = v14;
    }

    *a3 = v15 * v21;
    *a4 = v12 * v21;
    v22 = v13 * v21;
  }

  else
  {
    *a3 = 0.0;
    *a4 = 0.0;
    v22 = 0.0;
  }

  *a5 = v22;
}

- (int)getLatestMotionDataTime:(double *)a3
{
  v5 = pthread_mutex_lock(&self->ringMutex);
  if (!v5)
  {
    *a3 = self->latestMotionDataTime;
    pthread_mutex_unlock(&self->ringMutex);
  }

  return v5;
}

@end