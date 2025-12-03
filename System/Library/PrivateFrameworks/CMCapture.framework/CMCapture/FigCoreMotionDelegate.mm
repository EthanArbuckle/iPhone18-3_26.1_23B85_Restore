@interface FigCoreMotionDelegate
- (FigCoreMotionDelegate)init;
- (FigCoreMotionDelegate)initWithAccelerometer:(BOOL)accelerometer gravityZ:(BOOL)z fusedMotion:(BOOL)motion accelUpdateInterval:(float)interval fusedMotionUpdateInterval:(float)updateInterval motionCallbackThreadPriority:(id)priority;
- (id)copyAllFusedMotionData;
- (id)copyFusedMotionData:(double)data endTime:(double)time timeoutValue:(double)value errOut:(int *)out;
- (id)copyNewFusedMotionData;
- (int)getFusedVectorX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp;
- (int)getGravityX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)latestGravityDataTime;
- (int)getLatestMotionDataTime:(double *)time;
- (int)getVectorX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp;
- (int)updateCurrentQuaternionForTimeStamp:(double)stamp;
- (int)updateCurrentQuaternionForTimeStamps:(double)stamps withEnd:(double)end;
- (void)dealloc;
- (void)didUpdateAcceleration:(id)acceleration time:(double)time;
- (void)didUpdateFusedMotionWithDeviceMotion:(id *)motion time:(double)time ifsync:(BOOL)ifsync;
- (void)didUpdateGravity:(id)gravity time:(double)time;
- (void)didUpdatePositionWithAcceleration:(id *)acceleration forTimeStamp:(double)stamp;
- (void)didUpdatePositionWithTimeStamp:(double)stamp;
- (void)didUpdateVelocityWithAcceleration:(id *)acceleration forTimeStamp:(double)stamp;
- (void)getCurrentAttitudeRoll:(double *)roll pitch:(double *)pitch yaw:(double *)yaw;
- (void)getCurrentDeltaAttitudeRoll:(double *)roll pitch:(double *)pitch yaw:(double *)yaw;
- (void)getCurrentDeltaQuaternion:(id *)quaternion;
- (void)getPositionX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp;
- (void)updateDeviceCallback:(BOOL)callback fusedMotionUpdateInterval:(float)interval;
- (void)updateGyroInterval:(float)interval;
@end

@implementation FigCoreMotionDelegate

- (FigCoreMotionDelegate)initWithAccelerometer:(BOOL)accelerometer gravityZ:(BOOL)z fusedMotion:(BOOL)motion accelUpdateInterval:(float)interval fusedMotionUpdateInterval:(float)updateInterval motionCallbackThreadPriority:(id)priority
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
    v15->dGyroUpdateInterval = updateInterval;
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
    v15->manageAccel = accelerometer;
    v15->manageGravity = z;
    v15->manageFusedMotion = motion;
    pthread_mutex_init(&v15->ringMutex, 0);
    v15->dataSemaphore = FigSemaphoreCreate();
    *&v15->latestMotionDataTime = 0u;
    if (v15->manageFusedMotion || v15->manageAccel)
    {
      MEMORY[0x1B26F02D0](&readUserDefaultsOnce_sReadFigCoreMotionDelegateUserDefaultsOnce, readUserDefaults);
      initUsingGyroOnlySensorFusion = [objc_alloc(MEMORY[0x1E69634D0]) initUsingGyroOnlySensorFusion];
      v15->motionManager = initUsingGyroOnlySensorFusion;
      if (initUsingGyroOnlySensorFusion)
      {
        if (priority)
        {
          v19 = initUsingGyroOnlySensorFusion;
          [priority unsignedIntValue];
          [v19 setMotionThreadPriority:FigThreadGetMachThreadPriorityValue()];
        }

        if (v15->manageAccel)
        {
          [(CMMotionManager *)v15->motionManager setAccelerometerDataCallback:accelerometerDataCallback info:v15 interval:interval];
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

- (void)updateDeviceCallback:(BOOL)callback fusedMotionUpdateInterval:(float)interval
{
  motionManager = self->motionManager;
  if (motionManager)
  {
    self->manageFusedMotion = callback;
    if ([(CMMotionManager *)motionManager isDeviceMotionAvailable])
    {
      if (self->manageFusedMotion)
      {
        self->dGyroUpdateInterval = interval;
        v7 = self->motionManager;
        v8 = deviceMotionCallback;
        selfCopy = self;
        v10 = 1;
      }

      else
      {
        v7 = self->motionManager;
        v8 = 0;
        selfCopy = 0;
        v10 = 0;
      }

      [(CMMotionManager *)v7 setDeviceMotionCallback:v8 info:selfCopy interval:v10 fsync:?];
    }
  }
}

- (void)updateGyroInterval:(float)interval
{
  motionManager = self->motionManager;
  if (motionManager)
  {
    [(CMMotionManager *)motionManager setGyroDataCallback:0 info:self interval:interval];
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

- (void)didUpdateAcceleration:(id)acceleration time:(double)time
{
  var2 = acceleration.var2;
  var1 = acceleration.var1;
  var0 = acceleration.var0;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    accelRingIndex = self->accelRingIndex;
    self->accelRingIndex = (accelRingIndex + 1);
    self->accelRingTime[accelRingIndex] = time;
    v10 = (self + 4 * accelRingIndex);
    v10[22] = var0;
    v10[278] = var1;
    v10[534] = var2;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (void)didUpdateGravity:(id)gravity time:(double)time
{
  var2 = gravity.var2;
  var1 = gravity.var1;
  var0 = gravity.var0;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    accelRingIndex = self->accelRingIndex;
    self->accelRingIndex = (accelRingIndex + 1);
    self->accelRingTime[accelRingIndex] = time;
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
    self->latestGravityDataTime = time;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (int)getVectorX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp
{
  v11 = pthread_mutex_lock(&self->ringMutex);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (!v11)
  {
    v16 = 0;
    v17 = stamp + 0.0333333351;
    selfCopy = self;
    do
    {
      v19 = self->accelRingTime[v16];
      if (v19 != 0.0)
      {
        v20 = v17 - v19;
        v21 = expf(-((v20 * 15.0) * (v20 * 15.0)));
        v12 = v12 + (v21 * selfCopy->accelRingX[0]);
        v13 = v13 + (v21 * selfCopy->accelRingY[0]);
        v14 = v14 + (v21 * selfCopy->accelRingZ[0]);
        v15 = v15 + v21;
      }

      ++v16;
      selfCopy = (selfCopy + 4);
    }

    while (v16 != 256);
    pthread_mutex_unlock(&self->ringMutex);
  }

  v22 = 1.0 / v15;
  if (v15 <= 0.0)
  {
    v22 = v15;
  }

  *x = v12 * v22;
  *y = v13 * v22;
  *z = v14 * v22;
  return v11;
}

- (int)getGravityX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)latestGravityDataTime
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
  selfCopy = self;
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    v19 = self->accelRingTime[v13];
    v20 = v19 == 0.0;
    v21 = vabdd_f64(v19, latestGravityDataTime);
    if (!v20 && v21 < 0.5)
    {
      v18 = v18 + selfCopy->accelRingX[0];
      v17 = v17 + selfCopy->accelRingY[0];
      v15 = v15 + selfCopy->accelRingZ[0];
      ++v14;
    }

    ++v13;
    selfCopy = (selfCopy + 4);
  }

  while (v13 != 256);
  pthread_mutex_unlock(&self->ringMutex);
  if (!v14)
  {
LABEL_2:
    *x = 0.0;
    *y = 0.0;
    v12 = 0.0;
  }

  else
  {
    *x = v18 / v14;
    *y = v17 / v14;
    v12 = v15 / v14;
  }

  *z = v12;
  return v11;
}

- (int)getFusedVectorX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp
{
  v11 = pthread_mutex_lock(&self->ringMutex);
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (!v11)
  {
    fusedRingTime = self->fusedRingTime;
    v17 = stamp + 0.0333333351;
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

  *x = v12 * v22;
  *y = v13 * v22;
  *z = v14 * v22;
  return v11;
}

- (void)didUpdateFusedMotionWithDeviceMotion:(id *)motion time:(double)time ifsync:(BOOL)ifsync
{
  dLatestTimestamp = self->dLatestTimestamp;
  if (dLatestTimestamp > 0.0 && time - dLatestTimestamp > self->dGyroUpdateInterval * 3.1 && self->dStartOfLogging < time)
  {
    low_freq_error_logging_0();
  }

  self->dLatestTimestamp = time;
  if (!pthread_mutex_lock(&self->ringMutex))
  {
    fusedRingIndex = self->fusedRingIndex;
    self->fusedRingIndex = (fusedRingIndex + 1);
    self->fusedRingTime[fusedRingIndex] = time;
    self->fusedRingDoingBiasEstimation[fusedRingIndex] = motion->var6;
    v10 = self + 12 * fusedRingIndex;
    v11 = *&motion->var1.var0;
    *(v10 + 1882) = LODWORD(motion->var1.var2);
    *(v10 + 940) = v11;
    v12 = self + 32 * fusedRingIndex;
    v13 = *&motion->var0.var0;
    *(v12 + 663) = *&motion->var0.var2;
    *(v12 + 662) = v13;
    if (self->computingPosition)
    {
      [(FigCoreMotionDelegate *)self didUpdatePositionWithAcceleration:&motion->var1 forTimeStamp:time];
      v14 = self + 12 * fusedRingIndex;
      *(v14 + 2348) = *&self->position.x;
      *(v14 + 4698) = LODWORD(self->position.z);
    }

    self->latestMotionDataTime = time;

    pthread_mutex_unlock(&self->ringMutex);
  }
}

- (void)didUpdatePositionWithAcceleration:(id *)acceleration forTimeStamp:(double)stamp
{
  timestamp = self->position.timestamp;
  if (timestamp == -1.0)
  {
    self->velocity.timestamp = stamp;
    self->position.timestamp = -2.0;
  }

  else
  {
    [(FigCoreMotionDelegate *)self didUpdateVelocityWithAcceleration:acceleration forTimeStamp:stamp];
    if (timestamp == -2.0)
    {
      self->position.timestamp = stamp;
    }

    else
    {

      [(FigCoreMotionDelegate *)self didUpdatePositionWithTimeStamp:stamp];
    }
  }
}

- (void)didUpdateVelocityWithAcceleration:(id *)acceleration forTimeStamp:(double)stamp
{
  timestamp = self->velocity.timestamp;
  if (timestamp < stamp)
  {
    v5 = stamp - timestamp;
    *&self->velocity.x = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*&self->velocity.x), vcvtq_f64_f32(vmul_f32(*&acceleration->var0, vdup_n_s32(0x411CF5C3u))), v5));
    *&v5 = self->velocity.z + (acceleration->var2 * 9.81) * v5;
    self->velocity.z = *&v5;
    self->velocity.timestamp = stamp;
  }
}

- (void)didUpdatePositionWithTimeStamp:(double)stamp
{
  timestamp = self->position.timestamp;
  if (timestamp < stamp && self->velocity.timestamp <= stamp)
  {
    v4 = stamp - timestamp;
    *&self->position.x = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*&self->position.x), vcvtq_f64_f32(*&self->velocity.x), v4));
    *&v4 = self->position.z + self->velocity.z * v4;
    self->position.z = *&v4;
    self->position.timestamp = stamp;
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

- (id)copyFusedMotionData:(double)data endTime:(double)time timeoutValue:(double)value errOut:(int *)out
{
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
  if (v10)
  {
    if (data < 0.0)
    {
      data = 0.0;
    }

    if (time < 0.0)
    {
      time = 1.79769313e308;
    }

    v11 = pthread_mutex_lock(&self->ringMutex);
    if (self->latestMotionDataTime < time)
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
        if (v16 >= data && v16 <= time)
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
  *out = v11;
  return v10;
}

- (int)updateCurrentQuaternionForTimeStamp:(double)stamp
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
    v9 = vabdd_f64(self->fusedRingTime[v6], stamp);
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

- (int)updateCurrentQuaternionForTimeStamps:(double)stamps withEnd:(double)end
{
  if (pthread_mutex_lock(&self->ringMutex))
  {
    return -2;
  }

  v10 = 0u;
  v11 = 0u;
  v7 = FigMotionComputeAverageQuaternionForTimePeriod(self->fusedRingTime, &self->fusedRingQuaternion[0].w, &v10, stamps, end);
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

- (void)getCurrentDeltaQuaternion:(id *)quaternion
{
  w = self->previousQuaternion.w;
  x = self->previousQuaternion.x;
  y = self->previousQuaternion.y;
  z = self->previousQuaternion.z;
  v7 = self->currentQuaternion.x;
  v8 = self->currentQuaternion.w;
  v9 = self->currentQuaternion.z;
  v10 = self->currentQuaternion.y;
  quaternion->var0 = x * v7 + w * v8 + y * v10 + z * v9;
  quaternion->var1 = w * v7 - x * v8 - y * v9 + z * v10;
  quaternion->var2 = w * v10 - y * v8 - z * v7 + x * v9;
  quaternion->var3 = w * v9 - z * v8 - x * v10 + y * v7;
  self->previousQuaternion = self->currentQuaternion;
}

- (void)getCurrentAttitudeRoll:(double *)roll pitch:(double *)pitch yaw:(double *)yaw
{
  *roll = rollFromQuaternion(&self->currentQuaternion.w);
  *pitch = asin(self->currentQuaternion.w * (self->currentQuaternion.x + self->currentQuaternion.x) + self->currentQuaternion.y * (self->currentQuaternion.z + self->currentQuaternion.z));
  *yaw = yawFromQuaternion(&self->currentQuaternion.w);
}

- (void)getCurrentDeltaAttitudeRoll:(double *)roll pitch:(double *)pitch yaw:(double *)yaw
{
  v13 = 0u;
  v14 = 0u;
  [(FigCoreMotionDelegate *)self getCurrentDeltaQuaternion:&v13];
  v8 = v14;
  v9 = *(&v14 + 1) + *(&v14 + 1);
  v10 = v13;
  v11 = *(&v13 + 1) + *(&v13 + 1);
  v12 = 1.0 - *(&v13 + 1) * (*(&v13 + 1) + *(&v13 + 1));
  *roll = -atan2(*(&v13 + 1) * (*(&v14 + 1) + *(&v14 + 1)) - *&v13 * (*&v14 + *&v14), v12 - *&v14 * (*&v14 + *&v14));
  *pitch = asin(v11 * *&v10 + *&v8 * v9);
  *yaw = -atan2(*(&v10 + 1) * (*&v8 + *&v8) - *&v10 * v9, v12 - *(&v8 + 1) * v9);
}

- (void)getPositionX:(float *)x y:(float *)y z:(float *)z forTimeStamp:(double)stamp
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
      v17 = stamp + 0.0333333351;
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

    *x = v15 * v21;
    *y = v12 * v21;
    v22 = v13 * v21;
  }

  else
  {
    *x = 0.0;
    *y = 0.0;
    v22 = 0.0;
  }

  *z = v22;
}

- (int)getLatestMotionDataTime:(double *)time
{
  v5 = pthread_mutex_lock(&self->ringMutex);
  if (!v5)
  {
    *time = self->latestMotionDataTime;
    pthread_mutex_unlock(&self->ringMutex);
  }

  return v5;
}

@end