@interface CBColorPolicyFilter
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)shouldMitigateForSample:(id)a3 withLuxThr:(float *)a4 NitsThr:(float *)a5 andSize:(unint64_t)a6;
- (CBColorPolicyFilter)initWithID:(unsigned int)a3;
- (id)copyPropertyForKey:(id)a3;
- (id)filterEvent:(id)a3;
- (id)handleALSEvent:(id)a3;
- (void)dealloc;
- (void)initializeMitigationsForDevice:(unsigned int)a3;
- (void)resetFilter;
- (void)setModuleObject:(id)a3;
@end

@implementation CBColorPolicyFilter

- (CBColorPolicyFilter)initWithID:(unsigned int)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBColorPolicyFilter;
  v9 = [(CBColorPolicyFilter *)&v6 init];
  if (v9)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBColorPolicyFilter", "default");
    v9->super._logHandle = v3;
    [(CBColorPolicyFilter *)v9 initializeMitigationsForDevice:v7];
    v4 = [[CBStack alloc] initWithLength:?];
    v9->_alsStack = v4;
    v9->_stackLength = 20;
    v9->_stackCurrentCount = 0;
    v9->_consecutiveNonMitgatedCount = 0;
    v9->_mitigationUsedYet = 0;
    v9->_ceConfidenceThreshold = 0.1;
    v9->_ceEnabled = 1;
  }

  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  MEMORY[0x1E69E5920](v5->_ceModule);
  *&v2 = MEMORY[0x1E69E5920](v5->_alsStack).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBColorPolicyFilter;
  [(CBColorPolicyFilter *)&v3 dealloc];
}

- (void)setModuleObject:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_ceModule = a3;
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

- (id)filterEvent:(id)a3
{
  if ([a3 eventType] == 12)
  {
    return [(CBColorPolicyFilter *)self handleALSEvent:a3];
  }

  else
  {
    return a3;
  }
}

- (id)handleALSEvent:(id)a3
{
  v33 = __b;
  v74 = self;
  v73 = a2;
  v72 = a3;
  v71 = 1;
  v70 = 0;
  v69 = 0.27;
  v68 = 1.0;
  __c = 0;
  v67 = 0;
  [a3 illuminance];
  *&v3 = v3;
  v66 = *&v3;
  memset(__b, 0, sizeof(__b));
  v35 = v72;
  if (v72)
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
      if ([(CBColorPolicyFilter *)v74 sampleIsFromMitigatedRegion:v72, v4])
      {
        *&v5 = v66;
        *&v6 = v64;
        [(CBColorPolicyFilter *)v74 computeBaselineStrengthForLux:v5 andNits:v6];
        v69 = v7;
        [(CBHIDEvent *)v72 setColorMitigationTriggered:1];
        v74->_isColorMitigationTriggered = 1;
      }

      else
      {
        [(CBHIDEvent *)v72 setColorMitigationTriggered:0];
        v74->_isColorMitigationTriggered = 0;
        v69 = 0.27;
      }

      v74->_filteredALS = v72;
      v74->_filteredStrength = v69;
    }

    else if ([(CBColorPolicyFilter *)v74 sampleIsFromMitigatedRegion:v72, v4])
    {
      [(CBHIDEvent *)v72 setColorMitigationTriggered:1];
      *&v8 = v66;
      *&v9 = v64;
      [(CBColorPolicyFilter *)v74 computeBaselineStrengthForLux:v8 andNits:v9];
      v63 = v10;
      if (v74->_ceEnabled)
      {
        if ([(CBColorPolicyFilter *)v74 sampleIsFromCERegion:v72])
        {
          v70 = 1;
          v62 = [(CBCEModule *)v74->_ceModule copyInference:v72];
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
          if (v68 >= v74->_ceConfidenceThreshold)
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

      v74->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)v72 setColorMitigationTriggered:0];
      v74->_isColorMitigationTriggered = 0;
      v69 = 0.27;
    }

    if (v71)
    {
      v29 = objc_alloc(MEMORY[0x1E695DF20]);
      v28 = v72;
      v24 = 0x1E696A000uLL;
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v67];
      *&v13 = v69;
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      v23 = MEMORY[0x1E696AD98];
      v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBHIDEvent colorMitigationTriggered](v72, "colorMitigationTriggered")}];
      v30 = &v18;
      v61 = [v29 initWithObjectsAndKeys:{v28, @"ALSSample", v25, @"sampleTimestamp", v26, @"Strength", v27, @"Mitigated", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v70 & 1), @"isStrengthFromCE", 0}];
      [(CBStack *)v74->_alsStack pushObj:v61];
      v31 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
      ++v74->_stackCurrentCount;
      MEMORY[0x1E69E5920](v61);
      if (*(&v74->super.super.isa + v31[735]) > v74->_stackLength)
      {
        context = objc_autoreleasePoolPush();
        v14 = [(CBStack *)v74->_alsStack popObj];
        v15 = context;
        v61 = v14;
        --v74->_stackCurrentCount;
        objc_autoreleasePoolPop(v15);
      }
    }

    if ((__b[82] & 1) == 0)
    {
      if (([(CBHIDEvent *)v72 colorMitigationTriggered]& 1) != 0)
      {
        v74->_consecutiveNonMitgatedCount = 0;
        v60 = [(CBStack *)v74->_alsStack stack];
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
        [(NSMutableArray *)v60 enumerateObjectsUsingBlock:?];
        if (!v54[5])
        {
          v74->_mitigationUsedYet = 1;
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
          [(NSMutableArray *)v60 enumerateObjectsUsingBlock:?];
          _Block_object_dispose(v43, 8);
        }

        v21 = [v54[5] objectForKey:@"ALSSample"];
        v74->_filteredALS = v21;
        v20 = [v54[5] objectForKey:@"Strength"];
        [v20 floatValue];
        v19 = v16;
        v74->_filteredStrength = v16;
        _Block_object_dispose(&v53, 8);
      }

      else if (v74->_mitigationUsedYet)
      {
        if (++v74->_consecutiveNonMitgatedCount < 0x14)
        {
          [(CBHIDEvent *)v72 setColorMitigationTriggered:1];
          v74->_isColorMitigationTriggered = 1;
        }

        v74->_filteredALS = v72;
        v74->_filteredStrength = v69;
      }

      else
      {
        v74->_filteredALS = v72;
        v74->_filteredStrength = v69;
      }
    }
  }

  else
  {
    v69 = 0.27;
    if ([(CBColorPolicyFilter *)v74 sampleIsFromMitigatedRegion:v72])
    {
      [(CBHIDEvent *)v72 setColorMitigationTriggered:1];
      v74->_isColorMitigationTriggered = 1;
      v74->_mitigationUsedYet = 1;
      v74->_consecutiveNonMitgatedCount = 0;
    }

    else if (v74->_mitigationUsedYet && (++v74->_consecutiveNonMitgatedCount, v74->_consecutiveNonMitgatedCount < 0x14))
    {
      [(CBHIDEvent *)v72 setColorMitigationTriggered:1];
      v74->_isColorMitigationTriggered = 1;
    }

    else
    {
      [(CBHIDEvent *)v72 setColorMitigationTriggered:0];
      v74->_isColorMitigationTriggered = 0;
    }

    v71 = 0;
    v74->_filteredALS = v72;
    v74->_filteredStrength = v69;
  }

  return v74->_filteredALS;
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v13 = 0;
  if ([a4 isEqual:@"CEEnable"])
  {
    self->_ceEnabled = [a3 BOOLValue] & 1;
    v13 = 1;
  }

  if ([a4 isEqual:@"CEConfidenceThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_ceConfidenceThreshold = v4;
      v13 = 1;
    }
  }

  if ([a4 isEqual:@"MitigationBoundaryOverride"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [a3 objectForKey:@"TTRestriction_th_E"];
      v11 = [a3 objectForKey:@"TTRestriction_th_L"];
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

- (id)copyPropertyForKey:(id)a3
{
  v4 = 0;
  if ([a3 isEqual:@"CEEnable"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_ceEnabled];
  }

  return v4;
}

- (void)initializeMitigationsForDevice:(unsigned int)a3
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
  if (a3 == 1 || a3 == 3)
  {
    memcpy(v12, &unk_1DEAD62E4, sizeof(v12));
    memcpy(v11, &unk_1DEAD6310, sizeof(v11));
    self->_ceMitigationThrSize = 11;
    ceMitigationThrSize = self->_ceMitigationThrSize;
    __memcpy_chk();
    v6 = self->_ceMitigationThrSize;
    __memcpy_chk();
  }

  else if (a3 == 2 || a3 == 4)
  {
    self->_ceMitigationThrSize = 5;
    v7 = self->_ceMitigationThrSize;
    __memcpy_chk();
    v8 = self->_ceMitigationThrSize;
    __memcpy_chk();
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)shouldMitigateForSample:(id)a3 withLuxThr:(float *)a4 NitsThr:(float *)a5 andSize:(unint64_t)a6
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  if (!a4 || !v16)
  {
    return 0;
  }

  v14 = v17;
  v13 = v16;
  v12 = v15;
  v11 = 0;
  [v18 illuminance];
  *&v6 = v6;
  v10 = *&v6;
  memset(__b, 0, sizeof(__b));
  if (v18)
  {
    [v18 vendorData];
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