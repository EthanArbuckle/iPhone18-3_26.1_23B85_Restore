@interface LACDTORatchetSEPStateParser
- ($6910299AB903B8CE2079D76558F1EBB1)_configFromRatchetState:(SEL)a3;
- ($FBBE84042AAD2D0963404A2A9E26EA0D)_statusFromRatchetState:(SEL)a3;
- (double)_durationFromRatchetStatus:(id *)a3 config:(id *)a4;
- (double)_resetDurationFromRatchetStatus:(id *)a3 config:(id *)a4;
- (double)_scaleDuration:(double)result;
- (id)_biometryWatchdogDTOFromConfig:(id *)a3 status:(id *)a4;
- (id)_biometryWatchdogGlobalFromConfig:(id *)a3 status:(id *)a4;
- (id)_gracePeriodStateFromConfig:(id *)a3 status:(id *)a4;
- (id)_ratchetUUIDFromACMRatchetState:(id *)a3;
- (id)_timerConfigurationFromConfig:(id *)a3;
- (id)gracePeriodStateFromState:(id)a3;
- (id)ratchetStateFromState:(id)a3;
- (id)timerConfigurationFromState:(id)a3;
- (id)watchdogPackFromState:(id)a3;
- (int64_t)_ratchetStateFromACMRatchetState:(id *)a3;
@end

@implementation LACDTORatchetSEPStateParser

- (id)ratchetStateFromState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, 75);
  v4 = a3;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:v4];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:v4, 0, 0, 0, 0, 0, 0, 0];

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

- (id)watchdogPackFromState:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 75);
  v4 = a3;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:v4];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:v4, 0, 0, 0, 0, 0, 0, 0];

  v5 = [(LACDTORatchetSEPStateParser *)self _biometryWatchdogGlobalFromConfig:&v10 status:v11];
  v6 = [(LACDTORatchetSEPStateParser *)self _biometryWatchdogDTOFromConfig:&v10 status:v11];
  v7 = [[LACDTOBiometryWatchdogPack alloc] initWithBiometryWatchdogGlobal:v5 biometryWatchdogDTO:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)gracePeriodStateFromState:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 75);
  v4 = a3;
  [(LACDTORatchetSEPStateParser *)self _statusFromRatchetState:v4];
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:v4, 0, 0, 0, 0, 0, 0, 0];

  v5 = [(LACDTORatchetSEPStateParser *)self _gracePeriodStateFromConfig:&v8 status:v9];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)timerConfigurationFromState:(id)a3
{
  [(LACDTORatchetSEPStateParser *)self _configFromRatchetState:a3, 0, 0, 0, 0, 0, 0, 0];
  v4 = [(LACDTORatchetSEPStateParser *)self _timerConfigurationFromConfig:&v6];

  return v4;
}

- ($6910299AB903B8CE2079D76558F1EBB1)_configFromRatchetState:(SEL)a3
{
  result = [a4 bytes];
  v6 = *&result->var2;
  *&retstr->var0 = *&result->var0;
  *&retstr->var2 = v6;
  *&retstr->var4 = *&result->var4;
  retstr->var6 = result->var6;
  return result;
}

- ($FBBE84042AAD2D0963404A2A9E26EA0D)_statusFromRatchetState:(SEL)a3
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

- (double)_durationFromRatchetStatus:(id *)a3 config:(id *)a4
{
  var0 = a3->var0;
  if (a3->var0 > 1)
  {
    switch(var0)
    {
      case 2:
        return *(&a3->var5 + 2);
      case 3:
        return *(&a3->var7 + 2);
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
    return *(&a3->var0 + 1);
  }

  return result;
}

- (double)_resetDurationFromRatchetStatus:(id *)a3 config:(id *)a4
{
  var0 = a3->var0;
  if (a3->var0 > 1)
  {
    switch(var0)
    {
      case 2:
        return *(&a3->var5 + 2);
      case 3:
        return *(&a3->var7 + 2);
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
    return (a4->var1 + *(&a3->var0 + 1));
  }

  return result;
}

- (int64_t)_ratchetStateFromACMRatchetState:(id *)a3
{
  v3 = (a3->var0 - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)_ratchetUUIDFromACMRatchetState:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&a3->var1 + 4];
  if (v3 && (v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:0], v5 = objc_msgSend(v3, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    v6 = [v3 UUIDString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_gracePeriodStateFromConfig:(id *)a3 status:(id *)a4
{
  if (BYTE2(a4->var9) == 3)
  {
    v4 = +[LACDTOGracePeriodState unlimitedGracePeriod];
  }

  else
  {
    v4 = [[LACDTOGracePeriodState alloc] initWithTime:*(&a4->var8 + 2) maxThreshold:a3->var5];
  }

  return v4;
}

- (id)_biometryWatchdogGlobalFromConfig:(id *)a3 status:(id *)a4
{
  v4 = [[LACDTOBiometryWatchdog alloc] initWithIsRunning:BYTE1(a4->var4) time:(*(&a4->var4 + 2) / 0x3E8) minThreshold:(a3->var6 / 0x3E8) maxThreshold:(a3->var4 / 0x3E8)];

  return v4;
}

- (id)_biometryWatchdogDTOFromConfig:(id *)a3 status:(id *)a4
{
  v4 = [[LACDTOBiometryWatchdog alloc] initWithIsRunning:a4->var2.var0[12] time:(*&a4->var2.var0[13] / 0x3E8uLL) minThreshold:(a3->var3 / 0x3E8) maxThreshold:(a3->var4 / 0x3E8)];

  return v4;
}

- (id)_timerConfigurationFromConfig:(id *)a3
{
  v4 = objc_alloc_init(LACDTOMutableTimerConfiguration);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var0 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setCoolOff:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var1 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setWaitingForSecondAuth:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var2 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setReady:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var3 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setDtoFallback:v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var6 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setDtoShortFallback:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var4 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setLostMode:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3->var5 / 0x3E8];
  [(LACDTOMutableTimerConfiguration *)v4 setGracePeriod:v11];

  return v4;
}

@end