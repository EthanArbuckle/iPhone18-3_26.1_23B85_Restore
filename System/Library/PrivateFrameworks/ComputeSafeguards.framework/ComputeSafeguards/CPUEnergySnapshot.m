@interface CPUEnergySnapshot
+ (id)snapshotCPUEnergy:(unint64_t)a3;
- (double)computeEnergyDiff:(id)a3;
@end

@implementation CPUEnergySnapshot

+ (id)snapshotCPUEnergy:(unint64_t)a3
{
  if (!a3)
  {
    v6 = processLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

    goto LABEL_11;
  }

  v3 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
  if (!v3)
  {
    v6 = processLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

LABEL_11:

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v4 = v3;
  if (coalition_info_resource_usage())
  {
    v5 = processLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CPUEnergySnapshot snapshotCPUEnergy:];
    }

    free(v4);
    goto LABEL_12;
  }

  v7 = objc_alloc_init(CPUEnergySnapshot);
  [(CPUEnergySnapshot *)v7 setCpuEnergy:v4[11]];
  [(CPUEnergySnapshot *)v7 setCpuEnergyBilledToMe:v4[20]];
  [(CPUEnergySnapshot *)v7 setCpuEnergyBilledToOthers:v4[21]];
  v9 = [MEMORY[0x277CBEAA8] date];
  [(CPUEnergySnapshot *)v7 setTime:v9];

  free(v4);
LABEL_13:

  return v7;
}

- (double)computeEnergyDiff:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{-[CPUEnergySnapshot cpuEnergy](self, "cpuEnergy") - objc_msgSend(v5, "cpuEnergy")}];
  [v6 doubleValue];
  v8 = v7;

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[CPUEnergySnapshot cpuEnergyBilledToMe](self, "cpuEnergyBilledToMe") - objc_msgSend(v5, "cpuEnergyBilledToMe")}];
  [v9 doubleValue];
  v11 = v10;

  v12 = MEMORY[0x277CCABB0];
  v13 = [(CPUEnergySnapshot *)self cpuEnergyBilledToOthers];
  v14 = [v5 cpuEnergyBilledToOthers];

  v15 = [v12 numberWithUnsignedLongLong:v13 - v14];
  [v15 doubleValue];
  v17 = v16;

  if (v8 < 0.0 || v11 < 0.0 || v17 < 0.0)
  {
    v19 = processLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218496;
      v23 = v8;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = v17;
      _os_log_error_impl(&dword_243DC3000, v19, OS_LOG_TYPE_ERROR, "unexpected energy values: %f %f %f", &v22, 0x20u);
    }

    goto LABEL_9;
  }

  v18 = (v8 + v11 - v17) / 3600000000.0;
  if (v18 < 0.0)
  {
    v19 = processLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CPUEnergySnapshot computeEnergyDiff:];
    }

LABEL_9:

    v18 = 0.0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)snapshotCPUEnergy:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)computeEnergyDiff:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end