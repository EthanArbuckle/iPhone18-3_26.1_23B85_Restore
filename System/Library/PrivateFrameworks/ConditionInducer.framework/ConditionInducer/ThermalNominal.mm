@interface ThermalNominal
+ (id)thermalStateEnumToCLTMStringKey:(int64_t)key;
- (BOOL)active;
- (BOOL)isDestructive;
- (BOOL)isInternalOnly;
- (BOOL)setUp;
- (ThermalNominal)initWithThermalLevel:(int64_t)level;
- (id)identifierName;
- (id)userFriendlyName;
- (void)setUp;
- (void)tearDown;
@end

@implementation ThermalNominal

+ (id)thermalStateEnumToCLTMStringKey:(int64_t)key
{
  if (key < 4)
  {
    return off_278DF80D8[key];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[ThermalNominal thermalStateEnumToCLTMStringKey:];
  }

  return 0;
}

- (id)identifierName
{
  v8 = 0;
  v2 = @"ThermalCondition";
  v3 = [COConditionSession prepareInfoDictForBuiltInCondition:@"ThermalCondition" error:&v8];
  v4 = [v3 objectForKey:@"ConditionIdentifierName"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v2 = v4;
  }

  return v2;
}

- (id)userFriendlyName
{
  v6 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"ThermalCondition" error:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"ConditionUserFriendlyName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDestructive
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"ThermalCondition" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsDestructive"];
  }

  return 1;
}

- (BOOL)isInternalOnly
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"ThermalCondition" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsInternalOnly"];
  }

  return 1;
}

- (ThermalNominal)initWithThermalLevel:(int64_t)level
{
  v10.receiver = self;
  v10.super_class = ThermalNominal;
  v4 = [(COCondition *)&v10 init];
  v5 = v4;
  if (v4 && (v4->_desiredState = level, [ThermalNominal thermalStateEnumToCLTMStringKey:level], v6 = objc_claimAutoreleasedReturnValue(), thermalLevelKey = v5->_thermalLevelKey, v5->_thermalLevelKey = v6, thermalLevelKey, !v5->_thermalLevelKey))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ThermalNominal initWithThermalLevel:level];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)setUp
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Setup - %@ Condition", buf, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];
  [v3 setObject:self->_thermalLevelKey forKey:@"thermalSimulationMode"];
  v4 = 30;
  v5 = MEMORY[0x277D86220];
  *&v6 = 134218240;
  v16 = v6;
  while (1)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    -[ThermalNominal setActualState:](self, "setActualState:", [processInfo thermalState]);

    actualState = [(ThermalNominal *)self actualState];
    if (actualState >= [(ThermalNominal *)self desiredState])
    {
      break;
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:0.5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      actualState2 = [(ThermalNominal *)self actualState];
      desiredState = [(ThermalNominal *)self desiredState];
      *buf = v16;
      selfCopy2 = actualState2;
      v19 = 2048;
      v20 = desiredState;
      _os_log_debug_impl(&dword_243E0F000, v5, OS_LOG_TYPE_DEBUG, "Thermal state is at currently at %lu, and the desired state is %lu", buf, 0x16u);
    }

    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    actualState3 = [(ThermalNominal *)self actualState];
    desiredState2 = [(ThermalNominal *)self desiredState];
    *buf = v16;
    selfCopy2 = actualState3;
    v19 = 2048;
    v20 = desiredState2;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Thermal state is at %lu, which is at or above the desired state of %lu", buf, 0x16u);
  }

LABEL_11:
  actualState4 = [(ThermalNominal *)self actualState];
  if (actualState4 < [(ThermalNominal *)self desiredState]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [(ThermalNominal *)self setUp];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Setup - %@ Condition", buf, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)tearDown
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];
  [v2 setObject:@"off" forKey:@"thermalSimulationMode"];
  sleep(5u);
}

- (BOOL)active
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];
  v4 = [v3 objectForKey:@"thermalSimulationMode"];
  LOBYTE(self) = [v4 isEqualToString:self->_thermalLevelKey];

  return self;
}

- (void)initWithThermalLevel:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown thermal state passed to enum translator: %lu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setUp
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  desiredState = [self desiredState];
  v5 = 2048;
  actualState = [self actualState];
  _os_log_fault_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Timed out waiting for thermal mitigation to reach %lu. Last known level was %lu, but we will assume that we actually reached it and move on", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end