@interface FBProcessCPUStatistics
- (FBProcessCPUStatistics)initWithProcessHandle:(id)a3;
- (double)totalElapsedIdleTime;
- (double)totalElapsedSystemTime;
- (double)totalElapsedUserTime;
- (id)descriptionForCrashReport;
- (void)_hostwideUserElapsedCPUTime:(double *)a3 systemElapsedCPUTime:(double *)a4 idleElapsedCPUTime:(double *)a5;
- (void)_lock_getApplicationCPUTimesForUser:(double *)a3 system:(double *)a4 idle:(double *)a5;
- (void)reset;
@end

@implementation FBProcessCPUStatistics

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _hostwideUserElapsedCPUTime:&self->_times systemElapsedCPUTime:&self->_times.beginSystemCPUElapsedTime idleElapsedCPUTime:&self->_times.beginIdleCPUElapsedTime];
  [(RBSProcessHandle *)self->_handle elapsedCPUTimeForFrontBoard];
  self->_times.beginApplicationCPUElapsedTime = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (FBProcessCPUStatistics)initWithProcessHandle:(id)a3
{
  v6 = a3;
  NSClassFromString(&cfstr_Rbsprocesshand_1.isa);
  if (!v6)
  {
    [FBProcessCPUStatistics initWithProcessHandle:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBProcessCPUStatistics initWithProcessHandle:a2];
  }

  v7 = [v6 pid];
  if (v7 == getpid())
  {
    goto LABEL_7;
  }

  if (initWithProcessHandle__onceToken != -1)
  {
    [FBProcessCPUStatistics initWithProcessHandle:];
  }

  if (initWithProcessHandle__entitled == 1)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = FBProcessCPUStatistics;
    v8 = [(FBProcessCPUStatistics *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v8->_handle, a3);
      [(FBProcessCPUStatistics *)v9 reset];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __48__FBProcessCPUStatistics_initWithProcessHandle___block_invoke()
{
  result = BSSelfTaskHasEntitlement();
  initWithProcessHandle__entitled = result;
  return result;
}

- (double)totalElapsedUserTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:&v4 system:0 idle:0];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)totalElapsedSystemTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:0 system:&v4 idle:0];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)totalElapsedIdleTime
{
  v4 = 0.0;
  os_unfair_lock_lock(&self->_lock);
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:0 system:0 idle:&v4];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)descriptionForCrashReport
{
  v15[2] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  [(FBProcessCPUStatistics *)self _lock_getApplicationCPUTimesForUser:&v14 system:&v13 idle:&v12];
  v3 = v14 + v13 + v12;
  v4 = llround((v14 + v13) * 100.0 / v3);
  [(RBSProcessHandle *)self->_handle elapsedCPUTimeForFrontBoard];
  v6 = v5 - self->_times.beginApplicationCPUElapsedTime;
  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Elapsed total CPU time (seconds): %.3f (user %.3f, system %.3f), %i%% CPU", v14 + v13, *&v14, *&v13, v4];
  v15[0] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Elapsed application CPU time (seconds): %.3f, %i%% CPU", *&v6, llround(v6 * 100.0 / v3)];
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_lock_getApplicationCPUTimesForUser:(double *)a3 system:(double *)a4 idle:(double *)a5
{
  os_unfair_lock_assert_owner(&self->_lock);
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  [(FBProcessCPUStatistics *)self _hostwideUserElapsedCPUTime:&v13 systemElapsedCPUTime:&v12 idleElapsedCPUTime:&v11];
  beginSystemCPUElapsedTime = self->_times.beginSystemCPUElapsedTime;
  beginIdleCPUElapsedTime = self->_times.beginIdleCPUElapsedTime;
  if (a3)
  {
    *a3 = v13 - self->_times.beginUserCPUElapsedTime;
  }

  if (a4)
  {
    *a4 = v12 - beginSystemCPUElapsedTime;
  }

  if (a5)
  {
    *a5 = v11 - beginIdleCPUElapsedTime;
  }
}

- (void)_hostwideUserElapsedCPUTime:(double *)a3 systemElapsedCPUTime:(double *)a4 idleElapsedCPUTime:(double *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  *host_info_out = 0;
  v22 = 0;
  host_info_outCnt = 4;
  v8 = MEMORY[0x1AC572B20](self, a2);
  v9 = host_statistics(v8, 3, host_info_out, &host_info_outCnt);
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if (!v9)
  {
    v13 = (HIDWORD(v22) + host_info_out[0]);
    v14 = _cpuTicksToTimeInterval_microsecondsPerTick;
    if (_cpuTicksToTimeInterval_microsecondsPerTick < 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v23 = 20;
      *v27 = 0xC00000001;
      if (sysctl(v27, 2u, &v24, &v23, 0, 0))
      {
        v15 = _cpuTicksToTimeInterval_microsecondsPerTick;
      }

      else
      {
        v15 = HIDWORD(v24);
        _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v24);
      }

      v14 = v15;
      v10 = (v15 * v13) / 1000000.0;
      v13 = host_info_out[1];
      if (v15 <= 0)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 20;
        *v27 = 0xC00000001;
        if (sysctl(v27, 2u, &v24, &v23, 0, 0))
        {
          v19 = _cpuTicksToTimeInterval_microsecondsPerTick;
        }

        else
        {
          v19 = HIDWORD(v24);
          _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v24);
        }

        v14 = v19;
        v16 = v19 * v13;
        v17 = v22;
        if (v19 <= 0)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v23 = 20;
          *v27 = 0xC00000001;
          if (sysctl(v27, 2u, &v24, &v23, 0, 0))
          {
            LODWORD(v14) = _cpuTicksToTimeInterval_microsecondsPerTick;
          }

          else
          {
            LODWORD(v14) = HIDWORD(v24);
            _cpuTicksToTimeInterval_microsecondsPerTick = HIDWORD(v24);
          }

          v14 = v14;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v10 = (_cpuTicksToTimeInterval_microsecondsPerTick * v13) / 1000000.0;
      LODWORD(v13) = host_info_out[1];
    }

    v16 = v14 * v13;
    v17 = v22;
LABEL_9:
    v11 = v16 / 1000000.0;
    v12 = (v14 * v17) / 1000000.0;
  }

  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v12;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)initWithProcessHandle:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:RBSProcessHandleClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBProcessCPUStatistics.m";
    v9 = 1024;
    v10 = 32;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithProcessHandle:(const char *)a1 .cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBProcessCPUStatistics.m";
    v9 = 1024;
    v10 = 32;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end