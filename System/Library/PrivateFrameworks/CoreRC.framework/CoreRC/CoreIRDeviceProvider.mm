@interface CoreIRDeviceProvider
- ($E9D0CE23C4879AFD1046A22AEC3FB8EC)_findButtonWithCommand:(unint64_t)a3;
- (BOOL)clearAllStoredCommands:(id *)a3;
- (BOOL)disableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5;
- (BOOL)dispatchEventForCommand:(id)a3 matchingButton:(id *)a4 timestamp:(unint64_t)a5 toDevice:(id)a6;
- (BOOL)dispatchEventsForCommand:(id)a3 toDevice:(id)a4;
- (BOOL)enableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5;
- (BOOL)sendCommand:(id)a3 error:(id *)a4;
- (BOOL)sendCommand:(unint64_t)a3 target:(id)a4 withDuration:(unint64_t)a5 error:(id *)a6;
- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5;
- (BOOL)setCommand:(unint64_t)a3 target:(id)a4 forButtonCombination:(id)a5 delay:(double)a6 error:(id *)a7;
- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setInfraredCommand:(id)a3 forCommand:(unint64_t)a4 error:(id *)a5;
- (BOOL)setMappingWithSession:(id)a3 error:(id *)a4;
- (BOOL)setOSDName:(id)a3 error:(id *)a4;
- (BOOL)updateMappingWithSession:(id)a3 error:(id *)a4;
- (CoreIRDeviceProvider)initWithCoder:(id)a3;
- (CoreIRDeviceProvider)initWithDevice:(id)a3;
- (NSDictionary)persistentProperties;
- (id)extendedPropertyForKey:(id)a3 error:(id *)a4;
- (id)infraredCommandForCommand:(unint64_t)a3;
- (id)interface;
- (id)startLearningSessionWithReason:(unint64_t)a3 error:(id *)a4;
- (int)_setInfraredCommandPattern:(id)a3 repeatPattern:(id)a4 forCommand:(unint64_t)a5;
- (unint64_t)findDuplicateIRCommand:(id)a3 forCommand:(unint64_t)a4 device:(id *)a5;
- (unsigned)protocolMask;
- (void)_removeMappingForCommand:(unint64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleIRCommand:(id)a3;
- (void)schedulePressAndHoldTimer;
- (void)setPersistentProperties:(id)a3;
- (void)synthesizeButtonReleaseWithTimestamp:(unint64_t)a3;
@end

@implementation CoreIRDeviceProvider

- (void)dealloc
{
  if (self->_buttonCount)
  {
    v3 = 0;
    p_repeatArray = &self->_buttonArray[0].repeatArray;
    do
    {
      v5 = *(p_repeatArray - 2);
      if (v5)
      {
        free(v5);
        *(p_repeatArray - 2) = 0;
      }

      if (*p_repeatArray)
      {
        free(*p_repeatArray);
        *p_repeatArray = 0;
      }

      ++v3;
      p_repeatArray += 6;
    }

    while (v3 < self->_buttonCount);
  }

  v6.receiver = self;
  v6.super_class = CoreIRDeviceProvider;
  [(CoreIRDevice *)&v6 dealloc];
}

- (CoreIRDeviceProvider)initWithDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = CoreIRDeviceProvider;
  v4 = [(CoreIRDevice *)&v7 initWithDevice:?];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_matchingDict = [a3 matchingDict];
      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:*(a3 + 12) copyItems:1];
    }

    else
    {
      v4->_matchingDict = objc_opt_new();
      v5 = objc_opt_new();
    }

    v4->_commandMappings = v5;
    v4->_lastButtonPressed = 0;
  }

  return v4;
}

- (CoreIRDeviceProvider)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CoreIRDeviceProvider;
  v4 = [(CoreIRDevice *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_matchingDict = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"matchingDict"];
    v4->_commandMappings = objc_opt_new();
    v4->_lastButtonPressed = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreIRDeviceProvider;
  [(CoreIRDevice *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_matchingDict forKey:@"matchingDict"];
}

- (id)interface
{
  v2 = [(CoreRCDevice *)self bus];

  return [v2 interface];
}

- (BOOL)setOSDName:(id)a3 error:(id *)a4
{
  v9 = 0;
  if (a3)
  {
    if ([-[CoreRCDevice bus](self "bus")])
    {
      v8.receiver = self;
      v8.super_class = CoreIRDeviceProvider;
      if ([(CoreIRDevice *)&v8 setOSDName:a3 error:&v9])
      {
        [-[CoreRCDevice bus](self "bus")];
        return 1;
      }
    }

    else
    {
      [CoreIRDeviceProvider setOSDName:? error:?];
    }
  }

  else
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
  }

  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

- (NSDictionary)persistentProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(CoreIRDevice *)self OSDName])
  {
    [(NSDictionary *)v3 setObject:[(CoreIRDevice *)self OSDName] forKeyedSubscript:@"OSDName"];
  }

  return v3;
}

- (void)setPersistentProperties:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"OSDName"];
  if (v4)
  {
    v5.receiver = self;
    v5.super_class = CoreIRDeviceProvider;
    [(CoreIRDevice *)&v5 setOSDName:v4 error:0];
  }
}

- (BOOL)setExtendedProperty:(id)a3 forKey:(id)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (id)extendedPropertyForKey:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

- (unsigned)protocolMask
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  commandMappings = self->_commandMappings;
  v3 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(commandMappings);
        }

        v5 |= 1 << [objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * i) objectForKeyedSubscript:{@"Mapping IRCommand", "protocol"), "protocolID"}];
      }

      v4 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)infraredCommandForCommand:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider infraredCommandForCommand:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  commandMappings = self->_commandMappings;
  v6 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(commandMappings);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [objc_msgSend(v10 objectForKey:{@"Mapping CoreRCCommand", "integerValue"}];
        if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
        {
          [CoreIRDeviceProvider infraredCommandForCommand:];
        }

        if (v11 == a3)
        {
          v13 = [v10 objectForKey:@"Mapping IRCommand"];
          if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
          {
            [CoreIRDeviceProvider infraredCommandForCommand:];
          }

          goto LABEL_21;
        }

        ++v9;
      }

      while (v7 != v9);
      v12 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v12;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)setInfraredCommand:(id)a3 forCommand:(unint64_t)a4 error:(id *)a5
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = -6705;
  if (!a4 || !a3)
  {
    goto LABEL_13;
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a3, @"Mapping IRCommand", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a4), @"Mapping CoreRCCommand", 0}];
  if (!v10)
  {
    v9 = -6728;
LABEL_13:
    [(CoreCECBus *)a5 setOSDName:v9 error:&v13];
    return v13;
  }

  v11 = v10;
  [(CoreIRDeviceProvider *)self _removeMappingForCommand:a4];
  if (a4 == 46)
  {
    [(CoreIRDeviceProvider *)self _removeMappingForCommand:67];
    [(CoreIRDeviceProvider *)self _removeMappingForCommand:47];
  }

  [(NSMutableSet *)self->_commandMappings addObject:v11];
  return 1;
}

- (BOOL)sendHIDEvent:(id)a3 target:(id)a4 error:(id *)a5
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider sendHIDEvent:target:error:];
  }

  if ([a3 isRepeat])
  {
    [CoreIRDeviceProvider setOSDName:v9 error:?];
  }

  else
  {
    [a3 getCommand:&v11 pressed:&v12];
    if (v11)
    {
      result = [(CoreIRDeviceProvider *)self sendCommand:v11 target:a4 withDuration:0 error:&v13];
      if (!a5)
      {
        return result;
      }

      goto LABEL_7;
    }

    [CoreIRDeviceProvider sendHIDEvent:? target:? error:?];
  }

  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_7:
  if (!result)
  {
    *a5 = v13;
  }

  return result;
}

- (BOOL)sendCommand:(unint64_t)a3 target:(id)a4 withDuration:(unint64_t)a5 error:(id *)a6
{
  v12 = 0;
  if (!a4 || (objc_opt_class(), (objc_opt_isKindOfClass())) && a3)
  {
    result = [-[CoreIRDeviceProvider interface](self "interface")];
    if (!a6)
    {
      return result;
    }
  }

  else
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
    result = 0;
    if (!a6)
    {
      return result;
    }
  }

  if (!result)
  {
    *a6 = v12;
  }

  return result;
}

- (BOOL)sendCommand:(id)a3 error:(id *)a4
{
  v6 = 0;
  if (a3)
  {
    result = [-[CoreIRDeviceProvider interface](self "interface")];
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    [CoreIRDeviceProvider setOSDName:a2 error:?];
    result = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (!result)
  {
    *a4 = v6;
  }

  return result;
}

- (BOOL)clearAllStoredCommands:(id *)a3
{
  v4 = [(CoreIRDeviceProvider *)self interface];

  return [v4 clearAllStoredCommands:a3];
}

- (BOOL)setCommand:(unint64_t)a3 target:(id)a4 forButtonCombination:(id)a5 delay:(double)a6 error:(id *)a7
{
  v16 = 0;
  if (!a3)
  {
    v13 = [(CoreIRDeviceProvider *)self interface:0];
    v14 = 0;
LABEL_5:
    result = [v13 setCommand:v14 forButtonCombination:a5 delay:&v16 error:a6];
    if (!a7)
    {
      return result;
    }

    goto LABEL_6;
  }

  v11 = [a4 infraredCommandForCommand:?];
  if (v11)
  {
    v12 = v11;
    v13 = [(CoreIRDeviceProvider *)self interface];
    v14 = v12;
    goto LABEL_5;
  }

  [CoreIRDeviceProvider setCommand:? target:? forButtonCombination:? delay:? error:?];
  result = 0;
  if (!a7)
  {
    return result;
  }

LABEL_6:
  if (!result)
  {
    *a7 = v16;
  }

  return result;
}

- (BOOL)enableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5
{
  v8 = [(CoreIRDeviceProvider *)self interface];

  return [v8 enableButtonCombination:a3 delay:a5 error:a4];
}

- (BOOL)disableButtonCombination:(id)a3 delay:(double)a4 error:(id *)a5
{
  v8 = [(CoreIRDeviceProvider *)self interface];

  return [v8 disableButtonCombination:a3 delay:a5 error:a4];
}

- (id)startLearningSessionWithReason:(unint64_t)a3 error:(id *)a4
{
  v6 = [[CoreIRLearningSessionProvider alloc] initWithReason:a3];
  if (v6)
  {
    -[CoreIRLearningSessionProvider scheduleWithDispatchQueue:](v6, "scheduleWithDispatchQueue:", [-[CoreRCDevice bus](self "bus")]);
    [(CoreIRDevice *)self setLearningSession:v6];
  }

  else
  {
    [CoreIRDeviceProvider startLearningSessionWithReason:a4 error:?];
  }

  return v6;
}

- (BOOL)setMappingWithSession:(id)a3 error:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CoreIRDeviceProvider_setMappingWithSession_error___block_invoke;
  v8[3] = &unk_278EA3540;
  v8[4] = self;
  v8[5] = &v13;
  v8[6] = &v9;
  [a3 enumerateMappingUsingBlock:v8];
  if ((v10[3] & 1) == 0 && !v14[5])
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    v14[5] = v5;
  }

  if (a4)
  {
    *a4 = v14[5];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t __52__CoreIRDeviceProvider_setMappingWithSession_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) _setInfraredCommandPattern:a3 repeatPattern:a4 forCommand:a2];
  if (result)
  {
    return __52__CoreIRDeviceProvider_setMappingWithSession_error___block_invoke_cold_1(result, a1, a5);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (BOOL)dispatchEventsForCommand:(id)a3 toDevice:(id)a4
{
  v7 = [a3 timestamp];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider dispatchEventsForCommand:a3 toDevice:?];
  }

  if ([a4 learningSessionProvider])
  {
    v39 = [objc_msgSend(a4 "learningSessionProvider")];
  }

  else
  {
    v39 = 0;
  }

  buttonCount = self->_buttonCount;
  v9 = 0x27EE4F000uLL;
  if ([a3 isRepeat] && v7 - self->_lastCommandTimestamp > _maxRepeatIntervalTicks_0)
  {
    if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreIRDeviceProvider dispatchEventsForCommand:toDevice:];
      if (buttonCount)
      {
LABEL_13:
        v10 = (buttonCount + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v11 = vdupq_n_s64(buttonCount - 1);
        v12 = &self->_buttonArray[2];
        v13 = xmmword_2473D5500;
        v14 = xmmword_2473D5510;
        v15 = vdupq_n_s64(4uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v11, v14));
          if (vuzp1_s16(v16, *v11.i8).u8[0])
          {
            v12[-2].matchIndex = 0;
          }

          if (vuzp1_s16(v16, *&v11).i8[2])
          {
            v12[-1].matchIndex = 0;
          }

          if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v13))).i32[1])
          {
            v12->matchIndex = 0;
            v12[1].matchIndex = 0;
          }

          v13 = vaddq_s64(v13, v15);
          v14 = vaddq_s64(v14, v15);
          v12 += 4;
          v10 -= 4;
        }

        while (v10);
        goto LABEL_23;
      }
    }

    else if (buttonCount)
    {
      goto LABEL_13;
    }

LABEL_56:
    v19 = 0;
    goto LABEL_57;
  }

  if (!buttonCount)
  {
    goto LABEL_56;
  }

LABEL_23:
  v36 = a2;
  v37 = a4;
  v38 = v7;
  v17 = 0;
  v18 = 104;
  v19 = 1;
  while (1)
  {
    v20 = (self + v18);
    v21 = 4;
    if (self + v18 == self->_lastButtonPressed)
    {
      v21 = 8;
    }

    v22 = 2;
    if (self + v18 == self->_lastButtonPressed)
    {
      v22 = 6;
    }

    v23 = *&v20[v22];
    v24 = *&v20[v21];
    if (v23)
    {
      if (!v24)
      {
        goto LABEL_51;
      }
    }

    else
    {
      [(CoreIRDeviceProvider *)v36 dispatchEventsForCommand:v17 toDevice:?];
      if (!v24)
      {
LABEL_51:
        [(CoreIRDeviceProvider *)v36 dispatchEventsForCommand:v17 toDevice:?];
      }
    }

    if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      v34 = v24;
      v35 = *(v23 + 8 * *v20);
      v32 = self->_lastButtonPressed != 0;
      v33 = *v20;
      v30 = v17;
      v31 = buttonCount;
      LogPrintF();
    }

    v25 = *v20;
    if (v24 > v25)
    {
      v26 = *(v23 + 8 * v25);
      if (v26 == [a3 payload])
      {
        break;
      }
    }

    *v20 = 0;
LABEL_47:
    v19 = ++v17 < buttonCount;
    v18 += 48;
    if (buttonCount == v17)
    {
      v19 = 0;
      v7 = v38;
      goto LABEL_53;
    }
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider dispatchEventsForCommand:? toDevice:?];
  }

  v27 = (*v20 + 1);
  *v20 = v27;
  if (v24 != v27)
  {
    goto LABEL_47;
  }

  *v20 = 0;
  if (v39)
  {
    if (CoreRCCommandIsBasicButton(v39))
    {
      goto LABEL_47;
    }

    v28 = self + v18;
    if (!CoreRCCommandIsMenuButton((&self->super.super._uniqueID)[v18 / 8]) && !CoreRCCommandIsLeftButton(*(v28 + 5)) && !CoreRCCommandIsRightButton(*(v28 + 5)))
    {
      goto LABEL_47;
    }
  }

  v7 = v38;
  [(CoreIRDeviceProvider *)self dispatchEventForCommand:a3 matchingButton:self + v18 timestamp:v38 toDevice:v37, v30, v31, v32, v33, v34, v35];
LABEL_53:
  v9 = 0x27EE4F000;
LABEL_57:
  if (gLogCategory_CoreRCDevice <= 20 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider dispatchEventsForCommand:v19 toDevice:&self->_buttonCount];
  }

  *(&self->super.super.super.isa + *(v9 + 2132)) = v7;
  return v19;
}

- (unint64_t)findDuplicateIRCommand:(id)a3 forCommand:(unint64_t)a4 device:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    [CoreIRDeviceProvider findDuplicateIRCommand:a2 forCommand:self device:?];
  }

  if ([(CoreRCDevice *)self isLocalDevice])
  {
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v9 = [-[CoreIRDeviceProvider busProvider](self "busProvider")];
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          if (([v14 isLocalDevice] & 1) == 0 && (objc_msgSend(v14, "isReceiver") & 1) == 0)
          {
            v15 = [v14 findDuplicateIRCommand:a3 forCommand:a4 device:a5];
            if (v15)
            {
              v22 = v15;
              goto LABEL_28;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_25;
  }

  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  commandMappings = self->_commandMappings;
  v17 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v17)
  {
LABEL_25:
    v22 = 0;
    goto LABEL_28;
  }

  v18 = v17;
  v26 = self;
  v27 = a5;
  v19 = *v29;
  while (2)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(commandMappings);
      }

      v21 = *(*(&v28 + 1) + 8 * j);
      v22 = [objc_msgSend(v21 objectForKeyedSubscript:{@"Mapping CoreRCCommand", v26, v27), "unsignedIntegerValue"}];
      v23 = [v21 objectForKeyedSubscript:@"Mapping IRCommand"];
      if (v22 != a4 && ([a3 isEqual:v23] & 1) != 0)
      {
        *v27 = v26;
        goto LABEL_28;
      }
    }

    v18 = [(NSMutableSet *)commandMappings countByEnumeratingWithState:&v28 objects:v36 count:16];
    v22 = 0;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)synthesizeButtonReleaseWithTimestamp:(unint64_t)a3
{
  lastButtonPressed = self->_lastButtonPressed;
  if (lastButtonPressed)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (v6 = _LogCategory_Initialize(), lastButtonPressed = self->_lastButtonPressed, v6))
      {
        var5 = lastButtonPressed->var5;
        v8 = CoreRCCommandString(var5);
        LogPrintF();
        lastButtonPressed = self->_lastButtonPressed;
      }
    }

    -[CoreIRDeviceProvider dispatchButtonEventWithCommand:pressed:timestamp:toDevice:](self, "dispatchButtonEventWithCommand:pressed:timestamp:toDevice:", lastButtonPressed->var5, 0, a3, [-[CoreIRDeviceProvider busProvider](self busProvider]);
    self->_lastButtonPressed = 0;
  }

  else if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDeviceProvider synthesizeButtonReleaseWithTimestamp:];
  }
}

- (void)schedulePressAndHoldTimer
{
  pressAndHoldTimeoutGenerationCount = self->_pressAndHoldTimeoutGenerationCount;
  v4 = dispatch_time(0, 140000000);
  v5 = [-[CoreRCDevice bus](self "bus")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CoreIRDeviceProvider_schedulePressAndHoldTimer__block_invoke;
  v6[3] = &unk_278EA2AA0;
  v6[4] = self;
  v6[5] = pressAndHoldTimeoutGenerationCount;
  dispatch_after(v4, v5, v6);
}

uint64_t __49__CoreIRDeviceProvider_schedulePressAndHoldTimer__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __49__CoreIRDeviceProvider_schedulePressAndHoldTimer__block_invoke_cold_1(v1);
    }
  }

  v3 = v1 + 32;
  v2 = *(v1 + 32);
  if (*(v3 + 8) == v2[124])
  {
    v4 = mach_absolute_time();

    return [v2 synthesizeButtonReleaseWithTimestamp:v4];
  }

  return result;
}

- (BOOL)dispatchEventForCommand:(id)a3 matchingButton:(id *)a4 timestamp:(unint64_t)a5 toDevice:(id)a6
{
  [(CoreIRDeviceProvider *)self cancelPressAndHoldTimer];
  p_var5 = &a4->var5;
  var5 = a4->var5;
  if (!var5)
  {
    [CoreIRDeviceProvider dispatchEventForCommand:&v17 matchingButton:? timestamp:? toDevice:?];
    return v17;
  }

  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1)
    {
LABEL_4:
      v15 = var5;
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      var5 = *p_var5;
      goto LABEL_4;
    }
  }

LABEL_6:
  lastButtonPressed = self->_lastButtonPressed;
  if (!lastButtonPressed)
  {
    goto LABEL_9;
  }

  if (lastButtonPressed != a4)
  {
    [(CoreIRDeviceProvider *)self synthesizeButtonReleaseWithTimestamp:a5];
LABEL_9:
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [CoreIRDeviceProvider dispatchEventForCommand:? matchingButton:? timestamp:? toDevice:?];
    }

    if (![(CoreIRDeviceProvider *)self dispatchButtonEventWithCommand:*p_var5 pressed:1 timestamp:a5 toDevice:a6, v15])
    {
      [CoreIRDeviceProvider dispatchEventForCommand:? matchingButton:? timestamp:? toDevice:?];
      return v16;
    }

    self->_lastButtonPressed = a4;
    v13 = 1;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:
  [(CoreIRDeviceProvider *)self schedulePressAndHoldTimer];
  return v13;
}

- (void)_removeMappingForCommand:(unint64_t)a3
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    commandMappings = self->_commandMappings;
    v11 = OUTLINED_FUNCTION_2_7(self, a2, a3, v3, v4, v5, v6, v7, 0, 0, 0, 0, 0, 0, 0, 0, v33, v35);
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(commandMappings);
          }

          v15 = *(v26 + 8 * i);
          v16 = [objc_msgSend(v15 objectForKeyedSubscript:{@"Mapping CoreRCCommand", "unsignedIntegerValue"}];
          if (v16 == a3)
          {
            [(NSMutableSet *)self->_commandMappings removeObject:v15];
            goto LABEL_12;
          }
        }

        v12 = OUTLINED_FUNCTION_2_7(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v34, v36);
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateMappingWithSession:(id)a3 error:(id *)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = -6705;
LABEL_10:
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
LABEL_11:
    v8 = 0;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_5;
  }

  if (![(CoreIRDeviceProvider *)self setMappingWithSession:a3 error:a4])
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (([-[CoreRCDevice bus](self "bus")] & 1) == 0)
  {
    v10 = -6747;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 1;
  if (a4)
  {
LABEL_5:
    *a4 = v7;
  }

  return v8;
}

- ($E9D0CE23C4879AFD1046A22AEC3FB8EC)_findButtonWithCommand:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  buttonCount = self->_buttonCount;
  if (!buttonCount)
  {
    return 0;
  }

  for (result = self->_buttonArray; result->var5 != a3; ++result)
  {
    if (!--buttonCount)
    {
      return 0;
    }
  }

  return result;
}

- (int)_setInfraredCommandPattern:(id)a3 repeatPattern:(id)a4 forCommand:(unint64_t)a5
{
  result = -6705;
  if (!a4)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v8 = a5;
  if (!a5)
  {
    return result;
  }

  if (![a3 sequenceCount] || !objc_msgSend(a4, "sequenceCount"))
  {
    return -6705;
  }

  if (v8 != 46)
  {
    v13 = [(CoreIRDeviceProvider *)self _findButtonWithCommand:v8];
    if (v13)
    {
      v11 = v13;
      v12 = 0;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = [(CoreIRDeviceProvider *)self _findButtonWithCommand:67];
  if (!v10)
  {
    v10 = [(CoreIRDeviceProvider *)self _findButtonWithCommand:47];
    if (!v10)
    {
LABEL_12:
      buttonCount = self->_buttonCount;
      if (buttonCount > 0x11)
      {
        return -6710;
      }

      v11 = &self->_buttonArray[buttonCount];
      v12 = 1;
      goto LABEL_14;
    }
  }

  v11 = v10;
  v12 = 0;
  v8 = 46;
LABEL_14:
  v11->command = v8;
LABEL_15:
  v15 = malloc_type_malloc(8 * [a3 sequenceCount], 0x100004000313F17uLL);
  if (!v15)
  {
    return -6729;
  }

  v16 = v15;
  if ([a3 sequenceCount])
  {
    v17 = 0;
    do
    {
      v16[v17] = *([a3 sequence] + 8 * v17);
      ++v17;
    }

    while (v17 < [a3 sequenceCount]);
  }

  v18 = malloc_type_malloc(8 * [a4 sequenceCount], 0x100004000313F17uLL);
  if (!v18)
  {
    free(v16);
    return -6729;
  }

  v19 = v18;
  if ([a4 sequenceCount])
  {
    v20 = 0;
    do
    {
      v19[v20] = *([a4 sequence] + 8 * v20);
      ++v20;
    }

    while (v20 < [a4 sequenceCount]);
  }

  if ([(CoreIRDeviceProvider *)self setInfraredCommand:a3 forCommand:v11->command error:0])
  {
    commandArray = v11->commandArray;
    if (commandArray)
    {
      free(commandArray);
    }

    repeatArray = v11->repeatArray;
    if (repeatArray)
    {
      free(repeatArray);
    }

    v11->commandArray = v16;
    v11->repeatArray = v19;
    v11->commandCount = [a3 sequenceCount];
    v23 = [a4 sequenceCount];
    result = 0;
    v11->repeatCount = v23;
    v11->matchIndex = 0;
    if (v12)
    {
      result = 0;
      ++self->_buttonCount;
    }
  }

  else
  {
    free(v16);
    free(v19);
    return -6728;
  }

  return result;
}

- (void)handleIRCommand:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(CoreIRDeviceProvider *)self busProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
  {
    v16 = a3;
    LogPrintF();
  }

  if (isKindOfClass)
  {
    if ([a3 isRepeat])
    {
      if ([v5 lastAppleRemote])
      {
        [objc_msgSend(v5 "lastAppleRemote")];
      }
    }

    else
    {
      v7 = [v5 appleIRDeviceWithUID:objc_msgSend(a3 create:{"deviceUID"), 1}];
      if (!v7)
      {
        goto LABEL_26;
      }

      v8 = v7;
      if ([v7 dispatchEventsForCommand:a3 toDevice:self])
      {
        [v5 didDispatchCommandFromAppleRemote:v8];
      }
    }

    if (![a3 isRepeat])
    {
      goto LABEL_26;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v5 thirdPartyRemotes];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_15:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      if (gLogCategory_CoreRCBus <= 10 && (gLogCategory_CoreRCBus != -1 || _LogCategory_Initialize()))
      {
        v17 = v14;
        LogPrintF();
      }

      if ([v14 dispatchEventsForCommand:a3 toDevice:{self, v17}])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    [-[CoreIRDeviceProvider learningSessionProvider](self "learningSessionProvider")];
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setOSDName:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6747 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)setOSDName:(uint64_t *)a1 error:(const char *)a2 .cold.2(uint64_t *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_1_6(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)sendHIDEvent:(uint64_t *)a1 target:error:.cold.2(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)setCommand:(uint64_t *)a1 target:forButtonCombination:delay:error:.cold.1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)startLearningSessionWithReason:(void *)a1 error:.cold.1(void *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6729 userInfo:0];
  if (a1)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t __52__CoreIRDeviceProvider_setMappingWithSession_error___block_invoke_cold_1(int a1, uint64_t a2, _BYTE *a3)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
  *(*(*(a2 + 40) + 8) + 40) = result;
  *(*(*(a2 + 48) + 8) + 24) = 0;
  *a3 = 1;
  return result;
}

- (uint64_t)findDuplicateIRCommand:(uint64_t)a1 forCommand:(uint64_t)a2 device:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"CoreIRDeviceProvider.m" lineNumber:822 description:{@"CoreIRDeviceProvider** parameter not supplied, aborting."}];
}

uint64_t __49__CoreIRDeviceProvider_schedulePressAndHoldTimer__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 992);
  return LogPrintF();
}

- (uint64_t)dispatchEventForCommand:(uint64_t)result matchingButton:timestamp:toDevice:.cold.2(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 90)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)dispatchEventForCommand:(uint64_t)result matchingButton:(_BYTE *)a2 timestamp:toDevice:.cold.3(uint64_t result, _BYTE *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (void)dispatchButtonEventWithCommand:pressed:timestamp:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_0();
  }
}

@end