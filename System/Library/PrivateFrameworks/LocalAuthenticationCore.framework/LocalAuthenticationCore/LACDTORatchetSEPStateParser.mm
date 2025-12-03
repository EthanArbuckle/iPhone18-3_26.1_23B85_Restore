@interface LACDTORatchetSEPStateParser
- ($6910299AB903B8CE2079D76558F1EBB1)_configFromRatchetState:(SEL)state;
- ($FBBE84042AAD2D0963404A2A9E26EA0D)_statusFromRatchetState:(SEL)state;
- (double)_durationFromRatchetStatus:(id *)status config:(id *)config;
- (double)_resetDurationFromRatchetStatus:(id *)status config:(id *)config;
- (double)_scaleDuration:(double)result;
- (id)_biometryWatchdogDTOFromConfig:(id *)config status:(id *)status;
- (id)_biometryWatchdogGlobalFromConfig:(id *)config status:(id *)status;
- (id)_gracePeriodStateFromConfig:(id *)config status:(id *)status;
- (id)_ratchetUUIDFromACMRatchetState:(id *)state;
- (id)_timerConfigurationFromConfig:(id *)config;
- (id)gracePeriodStateFromState:(id)state;
- (id)ratchetStateFromState:(id)state;
- (id)timerConfigurationFromState:(id)state;
- (id)watchdogPackFromState:(id)state;
- (int64_t)_ratchetStateFromACMRatchetState:(id *)state;
@end

@implementation LACDTORatchetSEPStateParser

- (id)ratchetStateFromState:(id)state
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 75);
  stateCopy = state;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:stateCopy];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:stateCopy, 0, 0, 0, 0, 0, 0, 0];

  v5 = [(LACDTORatchetSEPStateParser *)self _ratchetStateFromACMRatchetState:v15];
  [(LACDTORatchetSEPStateParser *)self _durationFromRatchetStatus:v15 config:&v14];
  [(LACDTORatchetSEPStateParser *)self _scaleDuration:?];
  v7 = v6;
  [(LACDTORatchetSEPStateParser *)self _resetDurationFromRatchetStatus:v15 config:&v14];
  [(LACDTORatchetSEPStateParser *)self _scaleDuration:?];
  v9 = v8;
  v10 = [(LACDTORatchetSEPStateParser *)self _ratchetUUIDFromACMRatchetState:v15];
  v11 = [[LACDTORatchetState alloc] initWithRawValue:v5 duration:v10 resetDuration:v7 uuid:v9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)watchdogPackFromState:(id)state
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 75);
  stateCopy = state;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:stateCopy];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:stateCopy, 0, 0, 0, 0, 0, 0, 0];

  v5 = [(LACDTORatchetSEPStateParser *)self _biometryWatchdogGlobalFromConfig:&v10 status:v11];
  v6 = [(LACDTORatchetSEPStateParser *)self _biometryWatchdogDTOFromConfig:&v10 status:v11];
  v7 = [[LACDTOBiometryWatchdogPack alloc] initWithBiometryWatchdogGlobal:v5 biometryWatchdogDTO:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)gracePeriodStateFromState:(id)state
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 75);
  stateCopy = state;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:stateCopy];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:stateCopy, 0, 0, 0, 0, 0, 0, 0];

  v5 = [(LACDTORatchetSEPStateParser *)self _gracePeriodStateFromConfig:&v8 status:v9];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)timerConfigurationFromState:(id)state
{
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:state, 0, 0, 0, 0, 0, 0, 0];
  v4 = [(LACDTORatchetSEPStateParser *)self _timerConfigurationFromConfig:&v6];

  return v4;
}

- ($6910299AB903B8CE2079D76558F1EBB1)_configFromRatchetState:(SEL)state
{
  result = [a4 bytes];
  v6 = *&result->var2;
  *&retstr->var0 = *&result->var0;
  *&retstr->var2 = v6;
  *&retstr->var4 = *&result->var4;
  retstr->var6 = result->var6;
  return result;
}

- ($FBBE84042AAD2D0963404A2A9E26EA0D)_statusFromRatchetState:(SEL)state
{
  result = [a4 bytes];
  var2 = result[3].var2;
  *&retstr->var3 = *&result[3].var0;
  *&retstr->var5 = var2;
  v7 = *&result[2].var10;
  *&retstr->var0 = *&result[2].var8;
  retstr->var2 = v7;
  *(&retstr->var7 + 3) = *(&result[3].var2 + 11);
  return result;
}

- (double)_scaleDuration:(double)result
{
  if (result != -1.0)
  {
    return result / 1000.0;
  }

  return result;
}

- (double)_durationFromRatchetStatus:(id *)status config:(id *)config
{
  var0 = status->var0;
  if (status->var0 > 1)
  {
    switch(var0)
    {
      case 2:
        return *(&status->var5 + 2);
      case 3:
        return *(&status->var7 + 2);
      case 4:
        return -1.0;
      default:
        return result;
    }
  }

  if (!var0)
  {
    return -1.0;
  }

  if (var0 == 1)
  {
    return *(&status->var0 + 1);
  }

  return result;
}

- (double)_resetDurationFromRatchetStatus:(id *)status config:(id *)config
{
  var0 = status->var0;
  if (status->var0 > 1)
  {
    switch(var0)
    {
      case 2:
        return *(&status->var5 + 2);
      case 3:
        return *(&status->var7 + 2);
      case 4:
        return -1.0;
      default:
        return result;
    }
  }

  if (!var0)
  {
    return -1.0;
  }

  if (var0 == 1)
  {
    return (config->var1 + *(&status->var0 + 1));
  }

  return result;
}

- (int64_t)_ratchetStateFromACMRatchetState:(id *)state
{
  v3 = (state->var0 - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)_ratchetUUIDFromACMRatchetState:(id *)state
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&state->var1 + 4];
  if (v3 && (v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:0], v5 = objc_msgSend(v3, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    uUIDString = [v3 UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (id)_gracePeriodStateFromConfig:(id *)config status:(id *)status
{
  if (BYTE2(status->var9) == 3)
  {
    v4 = +[LACDTOGracePeriodState unlimitedGracePeriod];
  }

  else
  {
    v4 = [[LACDTOGracePeriodState alloc] initWithTime:*(&status->var8 + 2) maxThreshold:config->var5];
  }

  return v4;
}

- (id)_biometryWatchdogGlobalFromConfig:(id *)config status:(id *)status
{
  v4 = [[LACDTOBiometryWatchdog alloc] initWithIsRunning:BYTE1(status->var4) time:(*(&status->var4 + 2) / 0x3E8) minThreshold:(config->var6 / 0x3E8) maxThreshold:(config->var4 / 0x3E8)];

  return v4;
}

- (id)_biometryWatchdogDTOFromConfig:(id *)config status:(id *)status
{
  v4 = [[LACDTOBiometryWatchdog alloc] initWithIsRunning:status->var2.var0[12] time:(*&status->var2.var0[13] / 0x3E8uLL) minThreshold:(config->var3 / 0x3E8) maxThreshold:(config->var4 / 0x3E8)];

  return v4;
}

- (id)_timerConfigurationFromConfig:(id *)config
{
  v4 = objc_alloc_init(LACDTOMutableTimerConfiguration);
  0x3E8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var0 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setCoolOff:0x3E8];

  0x3E82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var1 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setWaitingForSecondAuth:0x3E82];

  0x3E83 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var2 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setReady:0x3E83];

  0x3E84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var3 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setDtoFallback:0x3E84];

  0x3E85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var6 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setDtoShortFallback:0x3E85];

  0x3E86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var4 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setLostMode:0x3E86];

  0x3E87 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:config->var5 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setGracePeriod:0x3E87];

  return v4;
}

@end