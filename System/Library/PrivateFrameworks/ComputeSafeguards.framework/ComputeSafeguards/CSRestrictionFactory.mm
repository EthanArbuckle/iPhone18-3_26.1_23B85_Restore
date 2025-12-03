@interface CSRestrictionFactory
+ (id)_cpuTimeRestrictionWithBand:(id)band errors:(id)errors;
+ (id)_cpuTimeRestrictionWithProperties:(id)properties errors:(id)errors;
+ (id)restrictionForClass:(id)class withProperties:(id)properties errors:(id)errors;
@end

@implementation CSRestrictionFactory

+ (id)restrictionForClass:(id)class withProperties:(id)properties errors:(id)errors
{
  classCopy = class;
  propertiesCopy = properties;
  errorsCopy = errors;
  if (classCopy)
  {
    if ([classCopy isEqualToString:@"CPUTimeRestriction"])
    {
      v10 = [CSRestrictionFactory _cpuTimeRestrictionWithProperties:propertiesCopy errors:errorsCopy];
LABEL_9:
      v19 = v10;
      goto LABEL_11;
    }

    if ([classCopy isEqualToString:@"CPUTimeRestrictionBand"])
    {
      v10 = [CSRestrictionFactory _cpuTimeRestrictionWithBand:propertiesCopy errors:errorsCopy];
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [CSLogger logForCategory:@"CSRestrictionFactory"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CSRestrictionFactory *)v11 restrictionForClass:v12 withProperties:v13 errors:v14, v15, v16, v17, v18];
    }
  }

  v19 = 0;
LABEL_11:

  return v19;
}

+ (id)_cpuTimeRestrictionWithProperties:(id)properties errors:(id)errors
{
  errorsCopy = errors;
  propertiesCopy = properties;
  v7 = CSNumberForKeyWithErrors(propertiesCopy, @"Threshold", errorsCopy);
  v8 = CSNumberForKeyWithErrors(propertiesCopy, @"TimeWindow", errorsCopy);
  v9 = CSNumberForKeyWithErrors(propertiesCopy, @"Fatal", errorsCopy);

  if (v7 && v8)
  {
    v10 = [CSCPUTimeRestriction alloc];
    if (v9)
    {
      v11 = -[CSCPUTimeRestriction initWithThreshold:andTimeWindow:andFatal:](v10, "initWithThreshold:andTimeWindow:andFatal:", v7, v8, [v9 isEqual:&unk_28570ACE0] ^ 1);
    }

    else
    {
      v11 = [(CSCPUTimeRestriction *)v10 initWithThreshold:v7 andTimeWindow:v8];
    }

    v27 = v11;
    goto LABEL_15;
  }

  if (!v7)
  {
    v12 = [CSLogger logForCategory:@"CSRestrictionFactory"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CSRestrictionFactory *)v12 _cpuTimeRestrictionWithProperties:v20 errors:v21, v22, v23, v24, v25, v26];
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    v12 = [CSLogger logForCategory:@"CSRestrictionFactory"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CSRestrictionFactory *)v12 _cpuTimeRestrictionWithProperties:v13 errors:v14, v15, v16, v17, v18, v19];
    }

LABEL_11:
  }

  v27 = 0;
LABEL_15:

  return v27;
}

+ (id)_cpuTimeRestrictionWithBand:(id)band errors:(id)errors
{
  bandCopy = band;
  errorsCopy = errors;
  if (!_cpuTimeRestrictionWithBand_errors__restrictionsByBand)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = _cpuTimeRestrictionWithBand_errors__restrictionsByBand;
    _cpuTimeRestrictionWithBand_errors__restrictionsByBand = dictionary;
  }

  v9 = CSNumberForKeyWithErrors(bandCopy, @"Band", errorsCopy);
  v10 = [_cpuTimeRestrictionWithBand_errors__restrictionsByBand objectForKey:v9];
  if (!v10)
  {
    if ([v9 isEqualToNumber:&unk_28570ACF8])
    {
      v11 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570ACF8;
LABEL_76:
      v10 = [(CSCPUTimeRestriction *)v12 initWithThreshold:v13 andTimeWindow:&unk_28570AD10];
      [_cpuTimeRestrictionWithBand_errors__restrictionsByBand setObject:v10 forKeyedSubscript:v9];
      goto LABEL_77;
    }

    if ([v9 isEqualToNumber:&unk_28570AD28])
    {
      v14 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AD28;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AD40])
    {
      v15 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AD40;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AD58])
    {
      v16 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AD58;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AD70])
    {
      v17 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AD70;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AD88])
    {
      v18 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AD88;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570ADA0])
    {
      v19 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570ADA0;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570ADB8])
    {
      v20 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570ADB8;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570ADD0])
    {
      v21 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570ADD0;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570ADE8])
    {
      v22 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570ADE8;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE00])
    {
      v23 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE00;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE18])
    {
      v24 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE18;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE30])
    {
      v25 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE30;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE48])
    {
      v26 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE48;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE60])
    {
      v27 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE60;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE78])
    {
      v28 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE78;
      goto LABEL_76;
    }

    if ([v9 isEqualToNumber:&unk_28570AE90])
    {
      v29 = [CSLogger logForCategory:@"CSRestrictionFactory"];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AE90;
      goto LABEL_76;
    }

    v30 = [v9 isEqualToNumber:&unk_28570AEA8];
    v31 = [CSLogger logForCategory:@"CSRestrictionFactory"];
    v32 = v31;
    if (v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        +[CSRestrictionFactory _cpuTimeRestrictionWithBand:errors:];
      }

      v12 = [CSCPUTimeRestriction alloc];
      v13 = &unk_28570AEA8;
      goto LABEL_76;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(CSRestrictionFactory *)v9 _cpuTimeRestrictionWithBand:v32 errors:v35, v36, v37, v38, v39, v40];
    }

    v10 = 0;
  }

LABEL_77:
  v33 = v10;

  return v33;
}

+ (void)restrictionForClass:(uint64_t)a3 withProperties:(uint64_t)a4 errors:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_243DC3000, a1, a3, "Empty/Nil restrictionType: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuTimeRestrictionWithProperties:(uint64_t)a3 errors:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_243DC3000, a1, a3, "Detected misconfigured cpuTime restriction with unknown timeWindow: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuTimeRestrictionWithProperties:(uint64_t)a3 errors:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_243DC3000, a1, a3, "Detected misconfigured cpuTime restriction with unknown threshold: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuTimeRestrictionWithBand:(uint64_t)a3 errors:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_243DC3000, a2, a3, "Detected misconfigured cpuTime band restriction with unknown band: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end