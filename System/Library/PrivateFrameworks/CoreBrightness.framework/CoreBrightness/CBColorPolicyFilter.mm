@interface CBColorPolicyFilter
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)shouldMitigateForSample:(id)sample withLuxThr:(float *)thr NitsThr:(float *)nitsThr andSize:(unint64_t)size;
- (CBColorPolicyFilter)initWithID:(unsigned int)d;
- (id)copyPropertyForKey:(id)key;
- (id)filterEvent:(id)event;
- (id)handleALSEvent:(id)event;
- (void)dealloc;
- (void)initializeMitigationsForDevice:(unsigned int)device;
- (void)resetFilter;
- (void)setModuleObject:(id)object;
@end

@implementation CBColorPolicyFilter

- (CBColorPolicyFilter)initWithID:(unsigned int)d
{
  selfCopy = self;
  v8 = a2;
  dCopy = d;
  v6.receiver = self;
  v6.super_class = CBColorPolicyFilter;
  selfCopy = [(CBColorPolicyFilter *)&v6 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBColorPolicyFilter", "default");
    selfCopy->super._logHandle = v3;
    [(CBColorPolicyFilter *)selfCopy initializeMitigationsForDevice:dCopy];
    v4 = [[CBStack alloc] initWithLength:?];
    selfCopy->_alsStack = v4;
    selfCopy->_stackLength = 20;
    selfCopy->_stackCurrentCount = 0;
    selfCopy->_consecutiveNonMitgatedCount = 0;
    selfCopy->_mitigationUsedYet = 0;
    selfCopy->_ceConfidenceThreshold = 0.1;
    selfCopy->_ceEnabled = 1;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_ceModule);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_alsStack).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBColorPolicyFilter;
  [(CBColorPolicyFilter *)&v3 dealloc];
}

- (void)setModuleObject:(id)object
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_ceModule = object;
    MEMORY[0x1E69E5928](self->_ceModule);
  }
}

- (void)resetFilter
{
  [(CBStack *)self->_alsStack clear];
  self->_stackCurrentCount = 0;
  self->_consecutiveNonMitgatedCount = 0;
  self->_mitigationUsedYet = 0;
}

- (id)filterEvent:(id)event
{
  if ([event eventType] == 12)
  {
    return [(CBColorPolicyFilter *)self handleALSEvent:event];
  }

  else
  {
    return event;
  }
}

- (id)handleALSEvent:(id)event
{
  v33 = __b;
  selfCopy = self;
  v73 = a2;
  eventCopy = event;
  v71 = 1;
  v70 = 0;
  v69 = 0.27;
  v68 = 1.0;
  __c = 0;
  v67 = 0;
  [event illuminance];
  *&v3 = v3;
  v66 = *&v3;
  memset(__b, 0, sizeof(__b));
  v35 = eventCopy;
  if (eventCopy)
  {
    [(CBHIDEvent *)v35 vendorData];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  v64 = *(v33 + 3);
  v67 = *(v33 + 18);
  *&v4 = v66;
  if (v66 >= 10.0)
  {
    if (__b[82])
    {
      if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy, v4])
      {
        *&v5 = v66;
        *&v6 = v64;
        [(CBColorPolicyFilter *)selfCopy computeBaselineStrengthForLux:v5 andNits:v6];
        v69 = v7;
        [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
        selfCopy->_isColorMitigationTriggered = 1;
      }

      else
      {
        [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
        selfCopy->_isColorMitigationTriggered = 0;
        v69 = 0.27;
      }

      selfCopy->_filteredALS = eventCopy;
      selfCopy->_filteredStrength = v69;
    }

    else if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy, v4])
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      *&v8 = v66;
      *&v9 = v64;
      [(CBColorPolicyFilter *)selfCopy computeBaselineStrengthForLux:v8 andNits:v9];
      v63 = v10;
      if (selfCopy->_ceEnabled)
      {
        if ([(CBColorPolicyFilter *)selfCopy sampleIsFromCERegion:eventCopy])
        {
          v70 = 1;
          v62 = [(CBCEModule *)selfCopy->_ceModule copyInference:eventCopy];
          v32 = v62;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [objc_msgSend(v62 objectForKey:{@"CEStrength", "floatValue"}];
            v69 = v11;
            [objc_msgSend(v62 objectForKey:{@"CEConfidence", "floatValue"}];
            v68 = v12;
          }

          MEMORY[0x1E69E5920](v62);
          if (v68 >= selfCopy->_ceConfidenceThreshold)
          {
            if (v69 < v63)
            {
              v70 = 0;
              v69 = v63;
            }
          }

          else
          {
            v69 = v63;
            v70 = 0;
          }
        }

        else
        {
          v69 = 0.27;
        }
      }

      else
      {
        v69 = v63;
      }

      selfCopy->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
      selfCopy->_isColorMitigationTriggered = 0;
      v69 = 0.27;
    }

    if (v71)
    {
      v29 = objc_alloc(MEMORY[0x1E695DF20]);
      v28 = eventCopy;
      v24 = 0x1E696A000uLL;
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v67];
      *&v13 = v69;
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      v23 = MEMORY[0x1E696AD98];
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBHIDEvent colorMitigationTriggered](eventCopy, "colorMitigationTriggered")}];
      v30 = &v18;
      v61 = [v29 initWithObjectsAndKeys:{v28, @"ALSSample", v25, @"sampleTimestamp", v26, @"Strength", v27, @"Mitigated", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v70 & 1), @"isStrengthFromCE", 0}];
      [(CBStack *)selfCopy->_alsStack pushObj:v61];
      v31 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
      ++selfCopy->_stackCurrentCount;
      MEMORY[0x1E69E5920](v61);
      if (*(&selfCopy->super.super.isa + v31[735]) > selfCopy->_stackLength)
      {
        context = objc_autoreleasePoolPush();
        popObj = [(CBStack *)selfCopy->_alsStack popObj];
        v15 = context;
        v61 = popObj;
        --selfCopy->_stackCurrentCount;
        objc_autoreleasePoolPop(v15);
      }
    }

    if ((__b[82] & 1) == 0)
    {
      if (([(CBHIDEvent *)eventCopy colorMitigationTriggered]& 1) != 0)
      {
        selfCopy->_consecutiveNonMitgatedCount = 0;
        stack = [(CBStack *)selfCopy->_alsStack stack];
        v53 = 0;
        v54 = &v53;
        v55 = 1375731712;
        v56 = 48;
        v57 = __Block_byref_object_copy__23;
        v58 = __Block_byref_object_dispose__23;
        v59 = 0;
        v47 = MEMORY[0x1E69E9820];
        v48 = -1073741824;
        v49 = 0;
        v50 = __38__CBColorPolicyFilter_handleALSEvent___block_invoke;
        v51 = &unk_1E867C510;
        v52 = &v53;
        [(NSMutableArray *)stack enumerateObjectsUsingBlock:?];
        if (!v54[5])
        {
          selfCopy->_mitigationUsedYet = 1;
          v43[0] = 0;
          v43[1] = v43;
          v44 = 0x20000000;
          v45 = 32;
          v46 = 0;
          v36 = MEMORY[0x1E69E9820];
          v37 = -1073741824;
          v38 = 0;
          v39 = __38__CBColorPolicyFilter_handleALSEvent___block_invoke_2;
          v40 = &unk_1E867D2E8;
          v41 = v43;
          v42 = &v53;
          [(NSMutableArray *)stack enumerateObjectsUsingBlock:?];
          _Block_object_dispose(v43, 8);
        }

        v21 = [v54[5] objectForKey:@"ALSSample"];
        selfCopy->_filteredALS = v21;
        v20 = [v54[5] objectForKey:@"Strength"];
        [v20 floatValue];
        v19 = v16;
        selfCopy->_filteredStrength = v16;
        _Block_object_dispose(&v53, 8);
      }

      else if (selfCopy->_mitigationUsedYet)
      {
        if (++selfCopy->_consecutiveNonMitgatedCount < 0x14)
        {
          [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
          selfCopy->_isColorMitigationTriggered = 1;
        }

        selfCopy->_filteredALS = eventCopy;
        selfCopy->_filteredStrength = v69;
      }

      else
      {
        selfCopy->_filteredALS = eventCopy;
        selfCopy->_filteredStrength = v69;
      }
    }
  }

  else
  {
    v69 = 0.27;
    if ([(CBColorPolicyFilter *)selfCopy sampleIsFromMitigatedRegion:eventCopy])
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      selfCopy->_isColorMitigationTriggered = 1;
      selfCopy->_mitigationUsedYet = 1;
      selfCopy->_consecutiveNonMitgatedCount = 0;
    }

    else if (selfCopy->_mitigationUsedYet && (++selfCopy->_consecutiveNonMitgatedCount, selfCopy->_consecutiveNonMitgatedCount < 0x14))
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:1];
      selfCopy->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)eventCopy setColorMitigationTriggered:0];
      selfCopy->_isColorMitigationTriggered = 0;
    }

    v71 = 0;
    selfCopy->_filteredALS = eventCopy;
    selfCopy->_filteredStrength = v69;
  }

  return selfCopy->_filteredALS;
}

uint64_t __38__CBColorPolicyFilter_handleALSEvent___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 objectForKey:{@"Mitigated", "BOOLValue"}];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 40) = a2;
    }
  }

  return result;
}

float __38__CBColorPolicyFilter_handleALSEvent___block_invoke_2(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a2 objectForKey:{@"Strength", "floatValue"}];
    if (result >= *(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = result;
      *(*(*(a1 + 40) + 8) + 40) = a2;
    }
  }

  return result;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v13 = 0;
  if ([key isEqual:@"CEEnable"])
  {
    self->_ceEnabled = [property BOOLValue] & 1;
    v13 = 1;
  }

  if ([key isEqual:@"CEConfidenceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [property floatValue];
      self->_ceConfidenceThreshold = v4;
      v13 = 1;
    }
  }

  if ([key isEqual:@"MitigationBoundaryOverride"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [property objectForKey:@"TTRestriction_th_E"];
      v11 = [property objectForKey:@"TTRestriction_th_L"];
      v8 = [v12 count];
      if (v8 == [v11 count])
      {
        if ([v12 count])
        {
          v10 = [v12 count];
          if (v10 > 0x14)
          {
            v10 = 20;
          }

          self->_mitigationThrSize = v10;
          for (i = 0; i < v10; ++i)
          {
            [objc_msgSend(v12 objectAtIndexedSubscript:{i), "floatValue"}];
            self->_mitigationThrE[i] = v5;
            [objc_msgSend(v11 objectAtIndexedSubscript:{i), "floatValue"}];
            self->_mitigationThrL[i] = v6;
          }
        }
      }
    }
  }

  return v13;
}

- (id)copyPropertyForKey:(id)key
{
  v4 = 0;
  if ([key isEqual:@"CEEnable"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_ceEnabled];
  }

  return v4;
}

- (void)initializeMitigationsForDevice:(unsigned int)device
{
  v15 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_1DEAD628C, sizeof(__dst));
  memcpy(v13, &unk_1DEAD62B8, sizeof(v13));
  self->_isColorMitigationTriggered = 0;
  self->_filteredStrength = 0.27;
  self->_mitigatedStrengthLUT = &baselineStrengthLUT;
  self->_mitigationThrSize = 11;
  mitigationThrSize = self->_mitigationThrSize;
  __memcpy_chk();
  v4 = self->_mitigationThrSize;
  __memcpy_chk();
  if (device == 1 || device == 3)
  {
    memcpy(v12, &unk_1DEAD62E4, sizeof(v12));
    memcpy(v11, &unk_1DEAD6310, sizeof(v11));
    self->_ceMitigationThrSize = 11;
    ceMitigationThrSize = self->_ceMitigationThrSize;
    __memcpy_chk();
    v6 = self->_ceMitigationThrSize;
    __memcpy_chk();
  }

  else if (device == 2 || device == 4)
  {
    self->_ceMitigationThrSize = 5;
    v7 = self->_ceMitigationThrSize;
    __memcpy_chk();
    v8 = self->_ceMitigationThrSize;
    __memcpy_chk();
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)shouldMitigateForSample:(id)sample withLuxThr:(float *)thr NitsThr:(float *)nitsThr andSize:(unint64_t)size
{
  selfCopy = self;
  v19 = a2;
  sampleCopy = sample;
  thrCopy = thr;
  nitsThrCopy = nitsThr;
  sizeCopy = size;
  if (!thr || !nitsThrCopy)
  {
    return 0;
  }

  v14 = thrCopy;
  v13 = nitsThrCopy;
  v12 = sizeCopy;
  v11 = 0;
  [sampleCopy illuminance];
  *&v6 = v6;
  v10 = *&v6;
  memset(__b, 0, sizeof(__b));
  if (sampleCopy)
  {
    [sampleCopy vendorData];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
  }

  if (v12 < 2 || v10 < *v14)
  {
    return 0;
  }

  if (v10 >= v14[v12 - 1])
  {
    return 0;
  }

  for (i = 0; i < v12 - 1; ++i)
  {
    if (v10 <= v14[i + 1])
    {
      if ((v13[i] + (((v13[i + 1] - v13[i]) / (v14[i + 1] - v14[i])) * (v10 - v14[i]))) < *&__b[6])
      {
        v11 = 1;
      }

      return v11 & 1;
    }
  }

  return v11 & 1;
}

@end