@interface KeyboardBacklightHIDCurve
- (BOOL)KBBrightnessCurvePropertyHandler:(id)a3;
- (BOOL)KBBrightnessLuxHysteresisPropertyHandler:(id)a3;
- (BOOL)isBrightnessCurveValid:(id)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (KeyboardBacklightHIDCurve)initWithQueue:(id)a3 device:(id)a4;
- (NSDictionary)brightnessCurve;
- (float)brightness;
- (float)convertNitsToLevelPercentage:(float)a3;
- (float)convertPWMPercentageToNits:(float)a3;
- (float)currentLuxToAmbient;
- (float)currentLuxToNits;
- (float)level;
- (float)maxCurveNits;
- (float)maxLevelPercentage;
- (float)maxUserLevel;
- (float)perceptualBrightnessForLevel:(float)a3;
- (id)copyPropertyForKey:(id)a3;
- (id)defaultBrightnessCurve;
- (id)description;
- (void)calculateLevelPercentageAtAmbient:(float)a3;
- (void)dealloc;
- (void)getKeyboardBacklightPreferences;
- (void)reconfigureSettingsForColor:(int)a3;
- (void)setBacklightLevel:(float)a3;
- (void)setBrightness:(float)a3;
- (void)setBrightness:(float)a3 withFadeSpeed:(int)a4 commit:(BOOL)a5;
- (void)setColor:(int)a3;
- (void)storeKeyboardBacklightCurveToPreferences;
- (void)storeKeyboardBacklightPreferences;
- (void)updateBrightnessCurve:(id)a3;
- (void)updateDefaultBrightnessCurve:(id)a3;
- (void)updateDefaultCurveForColor:(int)a3;
- (void)updateLuxToNitsCurve;
@end

@implementation KeyboardBacklightHIDCurve

- (KeyboardBacklightHIDCurve)initWithQueue:(id)a3 device:(id)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16.receiver = self;
  v16.super_class = KeyboardBacklightHIDCurve;
  v21 = [(KeyboardBacklight *)&v16 initWithQueue:a3 device:a4 ambientOffset:?];
  if (v21)
  {
    if ([(KeyboardBacklight *)v21 supportsAuthentication])
    {
      if (v21->super.super._logHandle)
      {
        logHandle = v21->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v15 = logHandle;
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_impl(&dword_1DE8E5000, log, type, "SECONDARY BACKLIGHT HID Curve", v13, 2u);
      }
    }

    v21->_chicletCurveCoefficient = 0.053369;
    v21->_chicletCurvePower = 2.5271;
    v21->_color = 48;
    v21->_curveVersion = 1.0;
    v21->_luxHysteresis = 40.0;
    [(KeyboardBacklight *)v21 setHysteresisOn:1];
    if ([(KeyboardBacklight *)v21 levelUnit]== 16777441)
    {
      luxToNitsCurve = 0;
      defaultLuxToNitsCurve = 0;
      dword_1ECDDDB70 = 1116471296;
      dword_1ECDDDB90 = 1116471296;
      dword_1ECDDDB78 = 1126170624;
      dword_1ECDDDB98 = 1126170624;
      dword_1ECDDDB80 = 1133903872;
      dword_1ECDDDBA0 = 1133903872;
      [(KeyboardBacklight *)v21 levelMax];
      *&dword_1ECDDDB6C = 0.25 * v4;
      *&dword_1ECDDDB8C = 0.25 * v4;
      [(KeyboardBacklight *)v21 levelMax];
      *&dword_1ECDDDB74 = 0.69375 * v5;
      *&dword_1ECDDDB94 = 0.69375 * v5;
      [(KeyboardBacklight *)v21 levelMax];
      *&dword_1ECDDDB7C = 0.69375 * v6;
      *&dword_1ECDDDB9C = 0.69375 * v6;
      [(KeyboardBacklight *)v21 levelMax];
      *&dword_1ECDDDB84 = 0.01 * v7;
      *&dword_1ECDDDBA4 = 0.01 * v7;
    }
  }

  return v21;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = KeyboardBacklightHIDCurve;
  [(KeyboardBacklight *)&v2 dealloc];
}

- (id)description
{
  v8 = self;
  v7 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = KeyboardBacklightHIDCurve;
  v4 = [(KeyboardBacklight *)&v6 description];
  [(KeyboardBacklightHIDCurve *)v8 maxCurveNits];
  return [v5 stringWithFormat:@"%@ maxCurveNits %f luxToNitsCurve [%f, %f], [%f, %f], [%f, %f], [%f, %f]", v4, v2, *&luxToNitsCurve, *&dword_1ECDDDB6C, *&dword_1ECDDDB70, *&dword_1ECDDDB74, *&dword_1ECDDDB78, *&dword_1ECDDDB7C, *&dword_1ECDDDB80, *&dword_1ECDDDB84];
}

- (id)copyPropertyForKey:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if ([a3 isEqualToString:@"KeyboardBacklightLuxHysteresis"])
  {
    v4 = objc_alloc(MEMORY[0x1E696AD98]);
    [(KeyboardBacklightHIDCurve *)v9 luxHysteresis];
    return [v4 initWithFloat:?];
  }

  else if ([v7 isEqualToString:@"KeyboardBacklightCurve"])
  {
    return [(NSDictionary *)[(KeyboardBacklightHIDCurve *)v9 brightnessCurve] copy];
  }

  else
  {
    v5.receiver = v9;
    v5.super_class = KeyboardBacklightHIDCurve;
    return [(KeyboardBacklight *)&v5 copyPropertyForKey:v7];
  }
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = 0;
  if ([a4 isEqualToString:@"KeyboardBacklightCurve"])
  {
    v6 = [(KeyboardBacklightHIDCurve *)v10 KBBrightnessCurvePropertyHandler:v8];
  }

  else if ([v7 isEqualToString:@"KeyboardBacklightLuxHysteresis"])
  {
    v6 = [(KeyboardBacklightHIDCurve *)v10 KBBrightnessLuxHysteresisPropertyHandler:v8];
  }

  if ((v6 & 1) == 0)
  {
    v5.receiver = v10;
    v5.super_class = KeyboardBacklightHIDCurve;
    v6 = [(KeyboardBacklight *)&v5 setProperty:v8 forKey:v7];
  }

  return v6 & 1;
}

- (BOOL)KBBrightnessCurvePropertyHandler:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Update brightness curve to %@", v8, 0xCu);
    }

    [(KeyboardBacklightHIDCurve *)self updateDefaultBrightnessCurve:a3];
    [(KeyboardBacklightHIDCurve *)self updateBrightnessCurve:a3];
    [(KeyboardBacklightHIDCurve *)self storeKeyboardBacklightCurveToPreferences];
    [(KeyboardBacklight *)self currentLux];
    [(KeyboardBacklightHIDCurve *)self handleLuxUpdate:?];
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)KBBrightnessLuxHysteresisPropertyHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    [(KeyboardBacklightHIDCurve *)self setLuxHysteresis:?];
    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      [(KeyboardBacklightHIDCurve *)self luxHysteresis];
      __os_log_helper_16_0_1_8_0(v9, COERCE__INT64(v3));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Lux hysteresis value set to %f", v9, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)updateDefaultBrightnessCurve:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v15 = [a3 objectForKey:@"KeyboardCurveY1"];
    if (v15)
    {
      [v15 floatValue];
      dword_1ECDDDB8C = v3;
    }

    v16 = [a3 objectForKey:@"KeyboardCurveY2"];
    if (v16)
    {
      [v16 floatValue];
      dword_1ECDDDB94 = v4;
    }

    v17 = [a3 objectForKey:@"KeyboardCurveY3"];
    if (v17)
    {
      [v17 floatValue];
      dword_1ECDDDB9C = v5;
    }

    v18 = [a3 objectForKey:@"KeyboardCurveY4"];
    if (v18)
    {
      [v18 floatValue];
      dword_1ECDDDBA4 = v6;
    }

    v19 = [a3 objectForKey:@"KeyboardCurveX1"];
    if (v19)
    {
      [v19 floatValue];
      defaultLuxToNitsCurve = v7;
    }

    v20 = [a3 objectForKey:@"KeyboardCurveX2"];
    if (v20)
    {
      [v20 floatValue];
      dword_1ECDDDB90 = v8;
    }

    v21 = [a3 objectForKey:@"KeyboardCurveX3"];
    if (v21)
    {
      [v21 floatValue];
      dword_1ECDDDB98 = v9;
    }

    v22 = [a3 objectForKey:@"KeyboardCurveX4"];
    if (v22)
    {
      [v22 floatValue];
      dword_1ECDDDBA0 = v10;
    }

    self->_luxHysteresis = *&dword_1ECDDDBA0 * 0.13;
    if (self->_color == 70)
    {
      if (self->_luxHysteresis >= 5.0)
      {
        luxHysteresis = self->_luxHysteresis;
      }

      else
      {
        luxHysteresis = 5.0;
      }

      self->_luxHysteresis = luxHysteresis;
    }

    else
    {
      if (self->_luxHysteresis >= 10.0)
      {
        v13 = self->_luxHysteresis;
      }

      else
      {
        v13 = 10.0;
      }

      self->_luxHysteresis = v13;
    }

    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_0_8_64(v25, COERCE__INT64(self->_luxHysteresis), [(KeyboardBacklightHIDCurve *)self defaultBrightnessCurve]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Hysteresis = %f Default curve = %@", v25, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateBrightnessCurve:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = self;
  v43 = a2;
  v42 = a3;
  if ([(KeyboardBacklightHIDCurve *)self isBrightnessCurveValid:a3])
  {
    [objc_msgSend(v42 objectForKeyedSubscript:{@"KeyboardCurveY1", "floatValue"}];
    dword_1ECDDDB6C = v3;
    [objc_msgSend(v42 objectForKeyedSubscript:{@"KeyboardCurveY2", "floatValue"}];
    dword_1ECDDDB74 = v4;
    [objc_msgSend(v42 objectForKeyedSubscript:{@"KeyboardCurveY3", "floatValue"}];
    dword_1ECDDDB7C = v5;
    [objc_msgSend(v42 objectForKeyedSubscript:{@"KeyboardCurveY4", "floatValue"}];
    dword_1ECDDDB84 = v6;
    v41 = [v42 objectForKey:@"KeyboardCurveX1"];
    if (v41)
    {
      [v41 floatValue];
      luxToNitsCurve = v7;
    }

    v40 = [v42 objectForKey:@"KeyboardCurveX2"];
    if (v40)
    {
      [v40 floatValue];
      dword_1ECDDDB70 = v8;
    }

    v39 = [v42 objectForKey:@"KeyboardCurveX3"];
    if (v39)
    {
      [v39 floatValue];
      dword_1ECDDDB78 = v9;
    }

    v38 = [v42 objectForKey:@"KeyboardCurveX4"];
    if (v38)
    {
      [v38 floatValue];
      dword_1ECDDDB80 = v10;
      [v38 floatValue];
      v44[86] = v11 * 0.13;
      if (*(v44 + 82) == 70)
      {
        v37 = v44[86];
        v36 = 5.0;
        if (v37 >= 5.0)
        {
          v28 = v37;
        }

        else
        {
          v28 = v36;
        }

        v35 = v28;
        v44[86] = v28;
      }

      else
      {
        v34 = v44[86];
        v33 = 10.0;
        if (v34 >= 10.0)
        {
          v27 = v34;
        }

        else
        {
          v27 = v33;
        }

        v32 = v27;
        v44[86] = v27;
      }
    }
  }

  else
  {
    if (*(v44 + 2))
    {
      v26 = *(v44 + 2);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v26 = inited;
    }

    oslog = v26;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v24 = type;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_1DE8E5000, log, v24, "Keyboard brightness curve is corrupted -> use default curve.", v29, 2u);
    }

    luxToNitsCurve = defaultLuxToNitsCurve;
    dword_1ECDDDB70 = dword_1ECDDDB90;
    dword_1ECDDDB78 = dword_1ECDDDB98;
    dword_1ECDDDB80 = dword_1ECDDDBA0;
    dword_1ECDDDB6C = dword_1ECDDDB8C;
    dword_1ECDDDB74 = dword_1ECDDDB94;
    dword_1ECDDDB7C = dword_1ECDDDB9C;
    dword_1ECDDDB84 = dword_1ECDDDBA4;
  }

  if (*(v44 + 2))
  {
    v22 = *(v44 + 2);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v21 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v21 = init_default_corebrightness_log();
    }

    v22 = v21;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *&v14 = *&luxToNitsCurve;
    *&v15 = *&dword_1ECDDDB6C;
    *&v16 = *&dword_1ECDDDB70;
    *&v17 = *&dword_1ECDDDB74;
    *&v18 = *&dword_1ECDDDB78;
    *&v19 = *&dword_1ECDDDB7C;
    *&v20 = *&dword_1ECDDDB80;
    *&v13 = *&dword_1ECDDDB84;
    [v44 luxHysteresis];
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v45, v14, v15, v16, v17, v18, v19, v20, v13, COERCE__INT64(v12));
    _os_log_impl(&dword_1DE8E5000, v22, OS_LOG_TYPE_DEFAULT, "Updated lux to nits curve to [%f, %f], [%f, %f], [%f, %f], [%f, %f] (Hysteresis = %f)", v45, 0x5Cu);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)isBrightnessCurveValid:(id)a3
{
  v21 = 1;
  v20 = ((*&dword_1ECDDDB94 - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve)) * 1.5;
  v19 = *&luxToNitsCurve;
  v18 = *&dword_1ECDDDB70;
  v16 = [a3 objectForKey:@"KeyboardCurveX1"];
  if (v16)
  {
    [v16 floatValue];
    v19 = v3;
  }

  v17 = [a3 objectForKey:@"KeyboardCurveX2"];
  if (v17)
  {
    [v17 floatValue];
    v18 = v4;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY2", "floatValue"}];
  v15 = v5;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY1", "floatValue"}];
  *&v6 = (v15 - *&v6) / (v18 - v19);
  if (*&v6 > v20)
  {
    return 0;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY2", v6), "floatValue"}];
  v14 = v7;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY1", "floatValue"}];
  v8 = *&v9;
  *&v9 = v14;
  if (v14 < v8)
  {
    return 0;
  }

  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY3", v9), "floatValue"}];
  v13 = v10;
  [objc_msgSend(a3 objectForKeyedSubscript:{@"KeyboardCurveY4", "floatValue"}];
  if (v13 < v11)
  {
    return 0;
  }

  return v21;
}

- (NSDictionary)brightnessCurve
{
  v13[8] = *MEMORY[0x1E69E9840];
  v12[0] = @"KeyboardCurveX1";
  LODWORD(v2) = luxToNitsCurve;
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v12[1] = @"KeyboardCurveX2";
  LODWORD(v3) = dword_1ECDDDB70;
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v12[2] = @"KeyboardCurveX3";
  LODWORD(v4) = dword_1ECDDDB78;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12[3] = @"KeyboardCurveX4";
  LODWORD(v5) = dword_1ECDDDB80;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v12[4] = @"KeyboardCurveY1";
  LODWORD(v6) = dword_1ECDDDB6C;
  v13[4] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v12[5] = @"KeyboardCurveY2";
  LODWORD(v7) = dword_1ECDDDB74;
  v13[5] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v12[6] = @"KeyboardCurveY3";
  LODWORD(v8) = dword_1ECDDDB7C;
  v13[6] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v12[7] = @"KeyboardCurveY4";
  LODWORD(v9) = dword_1ECDDDB84;
  v13[7] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  *MEMORY[0x1E69E9840];
  return v11;
}

- (id)defaultBrightnessCurve
{
  v13[8] = *MEMORY[0x1E69E9840];
  v12[0] = @"KeyboardCurveX1";
  LODWORD(v2) = defaultLuxToNitsCurve;
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v12[1] = @"KeyboardCurveX2";
  LODWORD(v3) = dword_1ECDDDB90;
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v12[2] = @"KeyboardCurveX3";
  LODWORD(v4) = dword_1ECDDDB98;
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v12[3] = @"KeyboardCurveX4";
  LODWORD(v5) = dword_1ECDDDBA0;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v12[4] = @"KeyboardCurveY1";
  LODWORD(v6) = dword_1ECDDDB8C;
  v13[4] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v12[5] = @"KeyboardCurveY2";
  LODWORD(v7) = dword_1ECDDDB94;
  v13[5] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v12[6] = @"KeyboardCurveY3";
  LODWORD(v8) = dword_1ECDDDB9C;
  v13[6] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v12[7] = @"KeyboardCurveY4";
  LODWORD(v9) = dword_1ECDDDBA4;
  v13[7] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  *MEMORY[0x1E69E9840];
  return v11;
}

- (float)maxCurveNits
{
  [(KeyboardBacklightHIDCurve *)self maxCapableNits];
  v5 = v2;
  [(KeyboardBacklightHIDCurve *)self maxLevelPercentage];
  return v5 * v3;
}

- (float)maxLevelPercentage
{
  [(KeyboardBacklightHIDCurve *)self chicletCurveCoefficient];
  v5 = v2;
  [(KeyboardBacklightHIDCurve *)self chicletCurvePower];
  return v5 * expf(v3);
}

- (float)maxUserLevel
{
  [(KeyboardBacklight *)self levelMax];
  v8 = v2;
  [(KeyboardBacklightHIDCurve *)self maxLevelPercentage];
  v10 = v8 * v3;
  v9 = v8 * v3;
  [(KeyboardBacklight *)self levelMin];
  v4 = *&v5;
  *&v5 = v9;
  if (v9 < v4)
  {
    [(KeyboardBacklight *)self levelMin];
    return v6;
  }

  return v10;
}

- (void)getKeyboardBacklightPreferences
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = self;
  v37 = a2;
  v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{-[KeyboardBacklight keyboardID](self, "keyboardID")}];
  v35 = +[CBKeyboardPreferencesManager copyPreferenceForKey:](CBKeyboardPreferencesManager, "copyPreferenceForKey:", [v36 stringValue]);
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = [v35 objectForKey:@"KeyboardBacklightMaxUser"];
    v33 = [v35 objectForKey:@"KeyboardBacklightAdjustedBrightnessCurve"];
    v32 = 1;
    v31 = [v35 objectForKey:@"KeyboardCurveVersion"];
    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v31 floatValue];
        v38->_curveVersion = v2;
      }
    }

    v30 = [v35 objectForKey:@"KeyboardColor"];
    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v30 intValue] == 53 && v38->_curveVersion < 2.03 || objc_msgSend(v30, "intValue") == 70 && v38->_curveVersion < 3.0 || objc_msgSend(v30, "intValue") == 71 && v38->_curveVersion < 2.0)
        {
          v32 = 0;
        }

        -[KeyboardBacklightHIDCurve setColor:](v38, "setColor:", [v30 intValue]);
      }
    }

    if (v32)
    {
      if (v33)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v34 floatValue];
          v18 = (v3 * 1000.0);
          [(KeyboardBacklightHIDCurve *)v38 maxUserLevel];
          if (v18 == (v4 * 1000.0))
          {
            if (v38->super.super._logHandle)
            {
              logHandle = v38->super.super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                inited = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                inited = init_default_corebrightness_log();
              }

              logHandle = inited;
            }

            v29 = logHandle;
            v28 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              log = v29;
              type = v28;
              __os_log_helper_16_0_0(v27);
              _os_log_impl(&dword_1DE8E5000, log, type, "Pref curve present and max user level matched -> update the curve", v27, 2u);
            }

            [(KeyboardBacklightHIDCurve *)v38 updateBrightnessCurve:v33];
          }
        }
      }
    }
  }

  else
  {
    if (v38->super.super._logHandle)
    {
      v13 = v38->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    v26 = v13;
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v26;
      v11 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_1DE8E5000, v10, v11, "Pref not present or max user doesn't matched", v24, 2u);
    }
  }

  if (v38->super.super._logHandle)
  {
    v9 = v38->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v8 = init_default_corebrightness_log();
    }

    v9 = v8;
  }

  v23 = v9;
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v40, [(KeyboardBacklightHIDCurve *)v38 defaultBrightnessCurve]);
    _os_log_impl(&dword_1DE8E5000, v23, v22, "Default curve = %{public}@", v40, 0xCu);
  }

  if (v38->super.super._logHandle)
  {
    v7 = v38->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v6 = init_default_corebrightness_log();
    }

    v7 = v6;
  }

  v21 = v7;
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v39, [(KeyboardBacklightHIDCurve *)v38 brightnessCurve]);
    _os_log_impl(&dword_1DE8E5000, v21, v20, "Current curve = %{public}@", v39, 0xCu);
  }

  MEMORY[0x1E69E5920](v35);
  *&v5 = MEMORY[0x1E69E5920](v36).n128_u64[0];
  v19.receiver = v38;
  v19.super_class = KeyboardBacklightHIDCurve;
  [(KeyboardBacklight *)&v19 getKeyboardBacklightPreferences];
  *MEMORY[0x1E69E9840];
}

- (void)storeKeyboardBacklightPreferences
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = KeyboardBacklightHIDCurve;
  [(KeyboardBacklight *)&v2 storeKeyboardBacklightPreferences];
  [(KeyboardBacklightHIDCurve *)v4 storeKeyboardBacklightCurveToPreferences];
}

- (void)storeKeyboardBacklightCurveToPreferences
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{-[KeyboardBacklight keyboardID](self, "keyboardID")}];
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v3 = self->_curveVersion;
  v9 = [v2 initWithFloat:v3];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = self->_color;
  v8 = [v4 initWithFloat:v5];
  [(NSMutableDictionary *)[(KeyboardBacklight *)self keyboardSpecificPreferences] setObject:v9 forKey:@"KeyboardCurveVersion"];
  [(NSMutableDictionary *)[(KeyboardBacklight *)self keyboardSpecificPreferences] setObject:v8 forKey:@"KeyboardColor"];
  MEMORY[0x1E69E5920](v9);
  [(NSMutableDictionary *)[(KeyboardBacklight *)self keyboardSpecificPreferences] setObject:[(KeyboardBacklightHIDCurve *)self brightnessCurve] forKey:@"KeyboardBacklightAdjustedBrightnessCurve"];
  +[CBKeyboardPreferencesManager setPreference:forKey:](CBKeyboardPreferencesManager, "setPreference:forKey:", -[KeyboardBacklight keyboardSpecificPreferences](self, "keyboardSpecificPreferences"), [v10 stringValue]);
  MEMORY[0x1E69E5920](v10);
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v12, [(KeyboardBacklight *)self keyboardSpecificPreferences]);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Brightness curve stored to preferences: %{public}@", v12, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateLuxToNitsCurve
{
  v57 = self;
  v56 = a2;
  if (![(KeyboardBacklight *)self autoAdjust])
  {
    v41 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v55 = v41;
    v54 = 16;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v55;
      type = v54;
      __os_log_helper_16_0_0(v53);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: self.autoAdjust", v53, 2u);
    }
  }

  [(KeyboardBacklight *)v57 currentLux];
  if (v2 < *&luxToNitsCurve || ([(KeyboardBacklight *)v57 currentLux], v3 > *&dword_1ECDDDB80))
  {
    v38 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v52 = v38;
    v51 = 16;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v36 = v52;
      v37 = v51;
      __os_log_helper_16_0_0(v50);
      _os_log_error_impl(&dword_1DE8E5000, v36, v37, "ASSERTION FAILED: self.currentLux >= luxToNitsCurve[0][0] && self.currentLux <= luxToNitsCurve[3][0]", v50, 2u);
    }
  }

  [(KeyboardBacklight *)v57 levelPercentage];
  if (v4 < 0.0 || ([(KeyboardBacklight *)v57 levelPercentage], v5 > 1.0))
  {
    v35 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v49 = v35;
    v48 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v33 = v49;
      v34 = v48;
      __os_log_helper_16_0_0(v47);
      _os_log_error_impl(&dword_1DE8E5000, v33, v34, "ASSERTION FAILED: self.levelPercentage >= 0.0F && self.levelPercentage <= 1.0F", v47, 2u);
    }
  }

  v46 = (*&dword_1ECDDDB94 - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve);
  v45 = v46 * 1.5;
  [(KeyboardBacklight *)v57 levelPercentage];
  v32 = v6;
  [(KeyboardBacklightHIDCurve *)v57 maxCapableNits];
  v44 = v32 * v7;
  [(KeyboardBacklight *)v57 currentLux];
  if (v8 == *&defaultLuxToNitsCurve)
  {
    dword_1ECDDDB6C = LODWORD(v44);
    *&dword_1ECDDDB74 = v44 + (v46 * (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve));
  }

  else
  {
    [(KeyboardBacklight *)v57 currentLux];
    if (v9 <= *&defaultLuxToNitsCurve || ([(KeyboardBacklight *)v57 currentLux], v10 > *&dword_1ECDDDB90))
    {
      [(KeyboardBacklight *)v57 currentLux];
      if (v17 <= *&dword_1ECDDDB90 || ([(KeyboardBacklight *)v57 currentLux], v18 > *&dword_1ECDDDB98))
      {
        [(KeyboardBacklight *)v57 currentLux];
        if (v20 > *&dword_1ECDDDB98)
        {
          [(KeyboardBacklight *)v57 currentLux];
          if (v21 < *&dword_1ECDDDBA0)
          {
            v27 = *&dword_1ECDDDBA4 - v44;
            v26 = *&dword_1ECDDDBA0;
            [(KeyboardBacklight *)v57 currentLux];
            *&dword_1ECDDDB7C = *&dword_1ECDDDBA4 - ((v27 / (v26 - v22)) * (*&dword_1ECDDDBA0 - *&dword_1ECDDDB98));
            *&dword_1ECDDDB74 = *&dword_1ECDDDB94 + (*&dword_1ECDDDB7C - *&dword_1ECDDDB9C);
            v28 = *&dword_1ECDDDB94 + (*&dword_1ECDDDB7C - *&dword_1ECDDDB9C);
            [(KeyboardBacklightHIDCurve *)v57 maxCurveNits];
            v23 = *&v24;
            *&v24 = v28;
            if (v28 > v23)
            {
              [(KeyboardBacklightHIDCurve *)v57 maxCurveNits];
              dword_1ECDDDB74 = v25;
            }

            if (((*&dword_1ECDDDB74 - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve)) <= v45)
            {
              *&dword_1ECDDDB6C = *&dword_1ECDDDB74 - (fmaxf((*&dword_1ECDDDB74 - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve), v46) * (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve));
            }

            else
            {
              *&dword_1ECDDDB6C = *&dword_1ECDDDB74 - (v45 * (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve));
            }
          }
        }
      }

      else
      {
        [(KeyboardBacklight *)v57 currentLux];
        v42 = v44 - (*&dword_1ECDDDB94 + (((v19 - *&dword_1ECDDDB90) / (*&dword_1ECDDDB98 - *&dword_1ECDDDB90)) * (*&dword_1ECDDDB9C - *&dword_1ECDDDB94)));
        *&dword_1ECDDDB74 = *&dword_1ECDDDB94 + v42;
        *&dword_1ECDDDB7C = *&dword_1ECDDDB9C + v42;
        if ((((*&dword_1ECDDDB94 + v42) - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve)) <= v45)
        {
          *&dword_1ECDDDB6C = *&dword_1ECDDDB74 - (fmaxf(((*&dword_1ECDDDB94 + v42) - *&dword_1ECDDDB8C) / (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve), v46) * (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve));
        }

        else
        {
          *&dword_1ECDDDB6C = *&dword_1ECDDDB74 - (v45 * (*&dword_1ECDDDB90 - *&defaultLuxToNitsCurve));
        }
      }
    }

    else
    {
      v31 = v44 - *&dword_1ECDDDB8C;
      [(KeyboardBacklight *)v57 currentLux];
      v43 = v31 / (v11 - *&defaultLuxToNitsCurve);
      if (v43 <= v45)
      {
        v30 = fmaxf(v43, v46);
        [(KeyboardBacklight *)v57 currentLux];
        *&dword_1ECDDDB74 = (v44 - (v30 * (v13 - *&defaultLuxToNitsCurve))) + (*&dword_1ECDDDB90 * v30);
        *&dword_1ECDDDB6C = v44 - (v30 * (v13 - *&defaultLuxToNitsCurve));
      }

      else
      {
        [(KeyboardBacklight *)v57 currentLux];
        *&dword_1ECDDDB74 = (v44 - (v45 * (v12 - *&defaultLuxToNitsCurve))) + (*&dword_1ECDDDB90 * v45);
        *&dword_1ECDDDB6C = v44 - (v45 * (v12 - *&defaultLuxToNitsCurve));
      }

      *&dword_1ECDDDB7C = *&dword_1ECDDDB9C + (*&dword_1ECDDDB74 - *&dword_1ECDDDB94);
      v29 = *&dword_1ECDDDB9C + (*&dword_1ECDDDB74 - *&dword_1ECDDDB94);
      [(KeyboardBacklightHIDCurve *)v57 maxCurveNits];
      v14 = *&v15;
      *&v15 = v29;
      if (v29 > v14)
      {
        [(KeyboardBacklightHIDCurve *)v57 maxCurveNits];
        dword_1ECDDDB7C = v16;
      }
    }
  }

  [(KeyboardBacklightHIDCurve *)v57 storeKeyboardBacklightCurveToPreferences];
}

- (float)level
{
  if ([(KeyboardBacklight *)self suppressed]|| [(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelOff];
    return v2;
  }

  else
  {
    [(KeyboardBacklight *)self levelMax];
    v10 = v3;
    [(KeyboardBacklight *)self levelPercentage];
    v11 = rintf(v10 * v4);
    [(KeyboardBacklight *)self levelMin];
    if (v11 >= v5)
    {
      v9 = v11;
    }

    else
    {
      v9 = v5;
    }

    [(KeyboardBacklight *)self levelMax];
    if (v9 >= v6)
    {
      return v6;
    }

    else
    {
      return v9;
    }
  }
}

- (float)brightness
{
  v10 = 0.0;
  if (![(KeyboardBacklight *)self suppressed]&& ![(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelPercentage];
    if (v2 == 0.0)
    {
      return 0.0;
    }

    [(KeyboardBacklight *)self levelPercentage];
    v7 = v3;
    [(KeyboardBacklightHIDCurve *)self chicletCurveCoefficient];
    v8 = logf(v7 / v4);
    [(KeyboardBacklightHIDCurve *)self chicletCurvePower];
    return v8 / v5;
  }

  return v10;
}

- (void)setBrightness:(float)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_4_0(v23, COERCE__INT64(a3), [(KeyboardBacklight *)self manualAdjust]);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "requested brightness %f manualAdjust %d", v23, 0x12u);
  }

  if ([(KeyboardBacklight *)self manualAdjust])
  {
    *&v3 = LODWORD(a3);
    if (a3 <= 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = a3;
    }

    if (v16 >= 1.0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v16;
    }

    *&v3 = v15;
    if (v15 == 0.0)
    {
      HIDWORD(v4) = 0;
      v14 = 0.0;
    }

    else
    {
      [(KeyboardBacklightHIDCurve *)self chicletCurveCoefficient];
      v13 = v5;
      [(KeyboardBacklightHIDCurve *)self chicletCurvePower];
      v14 = v13 * expf(v6 * v15);
    }

    *&v4 = v14;
    [(KeyboardBacklight *)self setLevelPercentage:v4];
    [(KeyboardBacklight *)self setSaturated:0];
    [(KeyboardBacklight *)self levelPercentage];
    [(KeyboardBacklight *)self setMuted:v7 == 0.0];
    if ([(KeyboardBacklight *)self autoAdjust])
    {
      [(KeyboardBacklightHIDCurve *)self updateLuxToNitsCurve];
    }

    [(KeyboardBacklight *)self levelPercentage];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    [(KeyboardBacklight *)self updateBacklightDeviceWithReason:1];
    if (self->super.super._logHandle)
    {
      v12 = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v11 = init_default_corebrightness_log();
      }

      v12 = v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v22, self);
      _os_log_debug_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEBUG, "%@", v22, 0xCu);
    }
  }

  else
  {
    if (self->super.super._logHandle)
    {
      v10 = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v9 = init_default_corebrightness_log();
      }

      v10 = v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [(KeyboardBacklight *)self currentLux];
      __os_log_helper_16_0_1_8_0(v21, COERCE__INT64(v8));
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "Manual keyboard brightness adjustment not allowed (Lux=%f)", v21, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setBrightness:(float)a3 withFadeSpeed:(int)a4 commit:(BOOL)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = self;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  v35 = a5;
  if (self->super.super._logHandle)
  {
    logHandle = v39->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v34 = logHandle;
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(v41, COERCE__INT64(v37), [(KeyboardBacklight *)v39 manualAdjust], v36, v35);
    _os_log_debug_impl(&dword_1DE8E5000, v34, v33, "Requested keyboard brightness %f, manualAdjust %d, fade speed %d, commit %d", v41, 0x1Eu);
  }

  if ([(KeyboardBacklight *)v39 manualAdjust])
  {
    v31 = 0.0;
    *&v5 = LODWORD(v37);
    v30 = v37;
    if (v37 <= 0.0)
    {
      v19 = v31;
    }

    else
    {
      v19 = v30;
    }

    v29 = v19;
    v32 = v19;
    v28 = 1.0;
    if (v19 >= 1.0)
    {
      v18 = v28;
    }

    else
    {
      v18 = v32;
    }

    v27 = v18;
    v37 = v18;
    *&v5 = v18;
    if (v18 == 0.0)
    {
      HIDWORD(v6) = 0;
      v17 = 0.0;
    }

    else
    {
      [(KeyboardBacklightHIDCurve *)v39 chicletCurveCoefficient];
      v16 = v7;
      [(KeyboardBacklightHIDCurve *)v39 chicletCurvePower];
      v17 = v16 * expf(v8 * v37);
    }

    *&v6 = v17;
    [(KeyboardBacklight *)v39 setLevelPercentage:v6];
    [(KeyboardBacklight *)v39 setSaturated:0];
    [(KeyboardBacklight *)v39 levelPercentage];
    [(KeyboardBacklight *)v39 setMuted:v9 == 0.0];
    if ([(KeyboardBacklight *)v39 autoAdjust])
    {
      [(KeyboardBacklightHIDCurve *)v39 updateLuxToNitsCurve];
    }

    [(KeyboardBacklight *)v39 levelPercentage];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    [(KeyboardBacklight *)v39 updateBacklightDeviceWithFadeSpeed:v36 commit:v35 reason:1];
    if (v39->super.super._logHandle)
    {
      v15 = v39->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    v26 = v15;
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v40, v39);
      _os_log_debug_impl(&dword_1DE8E5000, v26, v25, "%@", v40, 0xCu);
    }
  }

  else
  {
    if (v39->super.super._logHandle)
    {
      v13 = v39->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    oslog = v13;
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v10 = oslog;
      v11 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_impl(&dword_1DE8E5000, v10, v11, "Manual keyboard brightness adjustment not allowed", v22, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setBacklightLevel:(float)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->super.super._logHandle)
  {
    logHandle = self->super.super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v11, COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set backlight level = %f", v11, 0xCu);
  }

  *&v3 = a3;
  [(KeyboardBacklightHIDCurve *)self convertNitsToLevelPercentage:v3];
  if (v4 >= 0.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0.0;
  }

  if (v6 >= 1.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v6;
  }

  [(KeyboardBacklightHIDCurve *)self setBrightness:COERCE_DOUBLE(LODWORD(v5))];
  *MEMORY[0x1E69E9840];
}

- (float)currentLuxToNits
{
  v34 = self;
  v33 = a2;
  v32 = 4;
  v31 = 0.0;
  [(KeyboardBacklight *)self currentLux];
  if (v2 >= *luxToNitsCurve)
  {
    [(KeyboardBacklight *)v34 currentLux];
    if (v3 < *&dword_1ECDDDB80)
    {
      for (i = 0; i < 3; ++i)
      {
        [(KeyboardBacklight *)v34 currentLux];
        if (v4 >= *&luxToNitsCurve[2 * i])
        {
          [(KeyboardBacklight *)v34 currentLux];
          if (v5 < *&luxToNitsCurve[2 * i + 2])
          {
            v6 = fabs((*&luxToNitsCurve[2 * i + 2] - *&luxToNitsCurve[2 * i]));
            v29 = v6;
            [(KeyboardBacklight *)v34 currentLux];
            v8 = fabs((v7 - *&luxToNitsCurve[2 * i]));
            v28 = v8;
            if (v29 <= 0.0)
            {
              v19 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
              v27 = v19;
              v26 = 16;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                log = v27;
                type = v26;
                __os_log_helper_16_0_0(v25);
                _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: deltaLuxCurve > 0.0F", v25, 2u);
              }
            }

            if (v28 < 0.0)
            {
              v16 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
              v24 = v16;
              v23 = 16;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v14 = v24;
                v15 = v23;
                __os_log_helper_16_0_0(v22);
                _os_log_error_impl(&dword_1DE8E5000, v14, v15, "ASSERTION FAILED: deltaLuxALS >= 0.0F", v22, 2u);
              }
            }

            v21 = 0.0;
            if (v29 != 0.0)
            {
              v21 = v28 / v29;
            }

            v31 = *&luxToNitsCurve[2 * i + 1] + (v21 * (*&luxToNitsCurve[2 * i + 3] - *&luxToNitsCurve[2 * i + 1]));
            break;
          }
        }
      }
    }

    else
    {
      v31 = *&dword_1ECDDDB84;
    }
  }

  else
  {
    v31 = *&dword_1ECDDDB6C;
  }

  v20 = v31;
  [(KeyboardBacklightHIDCurve *)v34 maxCurveNits];
  if (v20 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v20;
  }

  [(KeyboardBacklightHIDCurve *)v34 minCapableNits];
  if (v13 >= v10)
  {
    return v13;
  }

  else
  {
    return v10;
  }
}

- (float)convertNitsToLevelPercentage:(float)a3
{
  v30 = self;
  v29 = a2;
  v28 = a3;
  v27 = 0.0;
  v26 = 17;
  if (a3 >= 0.0)
  {
    if (v28 < 30.0)
    {
      for (i = 0; i < 16; ++i)
      {
        if (v28 >= *&nitsToPWMPercentage[2 * i] && v28 < *&nitsToPWMPercentage[2 * i + 2])
        {
          v3 = fabs((*&nitsToPWMPercentage[2 * i + 2] - *&nitsToPWMPercentage[2 * i]));
          v24 = v3;
          v4 = fabs((v28 - *&nitsToPWMPercentage[2 * i]));
          v23 = v4;
          if (v24 <= 0.0)
          {
            v14 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
            v22 = v14;
            v21 = 16;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              log = v22;
              type = v21;
              __os_log_helper_16_0_0(v20);
              _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: deltaPWMCurve > 0.0F", v20, 2u);
            }
          }

          if (v23 < 0.0)
          {
            v11 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
            v19 = v11;
            v18 = 16;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v9 = v19;
              v10 = v18;
              __os_log_helper_16_0_0(v17);
              _os_log_error_impl(&dword_1DE8E5000, v9, v10, "ASSERTION FAILED: deltaPWMALS >= 0.0F", v17, 2u);
            }
          }

          v16 = 0.0;
          if (v24 != 0.0)
          {
            v16 = v23 / v24;
          }

          v27 = *&nitsToPWMPercentage[2 * i + 1] + (v16 * (*&nitsToPWMPercentage[2 * i + 3] - *&nitsToPWMPercentage[2 * i + 1]));
          break;
        }
      }
    }

    else
    {
      v27 = 1.0;
    }
  }

  else
  {
    v27 = 0.0;
  }

  v15 = v27;
  [(KeyboardBacklightHIDCurve *)v30 maxLevelPercentage];
  if (v15 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v15;
  }

  if (v8 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v8;
  }
}

- (float)convertPWMPercentageToNits:(float)a3
{
  v31 = self;
  v30 = a2;
  v29 = a3;
  v28 = 0.0;
  v27 = 17;
  if (a3 >= 0.0)
  {
    if (v29 < 1.0)
    {
      for (i = 0; i < 16; ++i)
      {
        if (v29 >= *&nitsToPWMPercentage[2 * i + 1] && v29 < *&nitsToPWMPercentage[2 * i + 3])
        {
          v25 = 0.0;
          v3 = fabs((*&nitsToPWMPercentage[2 * i + 3] - *&nitsToPWMPercentage[2 * i + 1]));
          v24 = v3;
          v4 = fabs((v29 - *&nitsToPWMPercentage[2 * i + 1]));
          v23 = v4;
          if (v24 <= 0.0)
          {
            v15 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
            v22 = v15;
            v21 = 16;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              log = v22;
              type = v21;
              __os_log_helper_16_0_0(v20);
              _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: deltaCurve > 0.0F", v20, 2u);
            }
          }

          if (v23 < 0.0)
          {
            v12 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
            v19 = v12;
            v18 = 16;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v10 = v19;
              v11 = v18;
              __os_log_helper_16_0_0(v17);
              _os_log_error_impl(&dword_1DE8E5000, v10, v11, "ASSERTION FAILED: deltaPWM >= 0.0F", v17, 2u);
            }
          }

          if (v24 != 0.0)
          {
            v25 = v23 / v24;
          }

          v28 = *&nitsToPWMPercentage[2 * i] + (v25 * (*&nitsToPWMPercentage[2 * i + 2] - *&nitsToPWMPercentage[2 * i]));
          break;
        }
      }
    }

    else
    {
      v28 = 30.0;
    }
  }

  else
  {
    v28 = 0.0;
  }

  if (v28 > 0.0)
  {
    v16 = v28;
    [(KeyboardBacklightHIDCurve *)v31 maxCurveNits];
    if (v16 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v16;
    }

    [(KeyboardBacklightHIDCurve *)v31 minCapableNits];
    if (v9 >= v6)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }

  return v28;
}

- (float)currentLuxToAmbient
{
  [(KeyboardBacklightHIDCurve *)self currentLuxToNits];
  [(KeyboardBacklightHIDCurve *)self convertNitsToLevelPercentage:?];
  return result;
}

- (void)calculateLevelPercentageAtAmbient:(float)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  if (a3 < 0.0)
  {
    v15 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v23 = v15;
    v22 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ASSERTION FAILED: ambient >= 0.0", v21, 2u);
    }
  }

  if (v24 > 1.0)
  {
    v12 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v20 = v12;
    v19 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v10 = v20;
      v11 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_1DE8E5000, v10, v11, "ASSERTION FAILED: ambient <= 1.0", v18, 2u);
    }
  }

  v17 = 0.001;
  [(KeyboardBacklight *)v26 levelMin];
  if (v3 == 0.0)
  {
    v17 = 0.015;
  }

  if (v24 >= 0.0 && v24 <= 1.0)
  {
    v4 = v24;
    if (v24 == 0.0)
    {
      v9 = v17;
    }

    else
    {
      [(KeyboardBacklight *)v26 ambientSlope];
      v9 = *&v4 * v24;
    }

    *&v4 = v9;
    [(KeyboardBacklight *)v26 setLevelPercentage:v4];
    [(KeyboardBacklight *)v26 levelPercentage];
    v16 = v5;
    [(KeyboardBacklightHIDCurve *)v26 maxLevelPercentage];
    if (v16 >= *&v6)
    {
      v8 = *&v6;
    }

    else
    {
      v8 = v16;
    }

    if (v17 >= v8)
    {
      v7 = v17;
    }

    else
    {
      v7 = v8;
    }

    *&v6 = v7;
    [(KeyboardBacklight *)v26 setLevelPercentage:v6];
  }
}

- (float)perceptualBrightnessForLevel:(float)a3
{
  v9 = 0.0;
  if (a3 > 0.0)
  {
    [(KeyboardBacklightHIDCurve *)self maxCapableNits];
    v7 = v3;
    [(KeyboardBacklightHIDCurve *)self minCapableNits];
    v8 = logf(v7 / v4);
    if (v8 != 0.0)
    {
      [(KeyboardBacklightHIDCurve *)self maxCapableNits];
      return (logf(a3 / v5) / v8) + 1.0;
    }
  }

  return v9;
}

- (void)setColor:(int)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 != self->_color)
  {
    if (self->super.super._logHandle)
    {
      logHandle = self->super.super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v7, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set color to %d", v7, 8u);
    }

    self->_color = a3;
    [(KeyboardBacklightHIDCurve *)self reconfigureSettingsForColor:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)reconfigureSettingsForColor:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a3 == 53 || a3 == 70 || a3 == 71) && [(KeyboardBacklight *)self levelUnit]== 16777441)
  {
    v11 = [CBKeyboardPreferencesManager copyPreferenceForKey:@"KeyboardCurveVersion" keyboardID:[(KeyboardBacklight *)self keyboardID]];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (a3 == 53 && ([v11 floatValue], v3 >= 2.03) || a3 == 70 && (objc_msgSend(v11, "floatValue"), v4 >= 3.0) || a3 == 71 && (objc_msgSend(v11, "floatValue"), v5 >= 2.0)))
    {
      if (self->super.super._logHandle)
      {
        logHandle = self->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        [v11 floatValue];
        __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(v6));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Found up to date curve version %f in preferences.", v15, 0xCu);
      }

      [(KeyboardBacklightHIDCurve *)self updateDefaultCurveForColor:a3];
    }

    else
    {
      if (self->super.super._logHandle)
      {
        v8 = self->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v14, a3);
        _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Update curve and version for color %d", v14, 8u);
      }

      [(KeyboardBacklightHIDCurve *)self updateDefaultCurveForColor:a3];
      luxToNitsCurve[0] = defaultLuxToNitsCurve;
      dword_1ECDDDB70 = dword_1ECDDDB90;
      dword_1ECDDDB78 = dword_1ECDDDB98;
      dword_1ECDDDB80 = dword_1ECDDDBA0;
      dword_1ECDDDB6C = dword_1ECDDDB8C;
      dword_1ECDDDB74 = dword_1ECDDDB94;
      dword_1ECDDDB7C = dword_1ECDDDB9C;
      dword_1ECDDDB84 = dword_1ECDDDBA4;
      switch(a3)
      {
        case '5':
          self->_curveVersion = 2.03;
          break;
        case 'F':
          self->_curveVersion = 3.0;
          break;
        case 'G':
          self->_curveVersion = 2.0;
          break;
        default:
          self->_curveVersion = 1.0;
          break;
      }

      [(KeyboardBacklightHIDCurve *)self storeKeyboardBacklightCurveToPreferences];
      [(KeyboardBacklight *)self currentLux];
      [(KeyboardBacklightHIDCurve *)self handleLuxUpdate:?];
    }

    MEMORY[0x1E69E5920](v11);
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateDefaultCurveForColor:(int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case '5':
      v14 = [(HIDDevice *)[(KeyboardBacklight *)self device] propertyForKey:@"ProductID"];
      v13 = -1;
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v14 intValue];
        }
      }

      defaultLuxToNitsCurve = 0;
      dword_1ECDDDB90 = 5.0;
      dword_1ECDDDB98 = 20.0;
      dword_1ECDDDBA0 = 21.0;
      dword_1ECDDDB8C = 1114636288;
      dword_1ECDDDB94 = 1124204544;
      dword_1ECDDDB9C = 1124204544;
      [(KeyboardBacklight *)self levelMax];
      *&dword_1ECDDDBA4 = 0.01 * v3;
      self->_luxHysteresis = *&dword_1ECDDDBA0 * 0.13;
      if (self->_luxHysteresis >= 10.0)
      {
        luxHysteresis = self->_luxHysteresis;
      }

      else
      {
        luxHysteresis = 10.0;
      }

      self->_luxHysteresis = luxHysteresis;
      if (self->super.super._logHandle)
      {
        logHandle = self->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_4_8_0_4_0_4_0_8_66(v18, COERCE__INT64(self->_luxHysteresis), [(KeyboardBacklightHIDCurve *)self color], v13, [(KeyboardBacklightHIDCurve *)self defaultBrightnessCurve]);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Hysteresis = %f Color = %d PID = %d Default curve = %{public}@", v18, 0x22u);
      }

      break;
    case 'F':
      defaultLuxToNitsCurve = 0;
      dword_1ECDDDB90 = 5.0;
      dword_1ECDDDB98 = 1097754214;
      dword_1ECDDDBA0 = 1097848586;
      dword_1ECDDDB8C = 3.25;
      dword_1ECDDDB94 = 7.0;
      dword_1ECDDDB9C = 7.0;
      dword_1ECDDDBA4 = 0;
      self->_luxHysteresis = 14.99 * 0.13;
      if (self->_luxHysteresis >= 5.0)
      {
        v9 = self->_luxHysteresis;
      }

      else
      {
        v9 = 5.0;
      }

      self->_luxHysteresis = v9;
      if (self->super.super._logHandle)
      {
        v8 = self->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_0_4_0_8_66(v17, COERCE__INT64(self->_luxHysteresis), [(KeyboardBacklightHIDCurve *)self color], [(KeyboardBacklightHIDCurve *)self defaultBrightnessCurve]);
        _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Hysteresis = %f Color = %d Default curve = %{public}@", v17, 0x1Cu);
      }

      break;
    case 'G':
      defaultLuxToNitsCurve = 0;
      dword_1ECDDDB90 = 1116471296;
      dword_1ECDDDB98 = 1126170624;
      dword_1ECDDDBA0 = 1133903872;
      dword_1ECDDDB8C = 3.25;
      dword_1ECDDDB94 = 9.0;
      dword_1ECDDDB9C = 9.0;
      dword_1ECDDDBA4 = 0;
      self->_luxHysteresis = 300.0 * 0.13;
      v6 = self->_luxHysteresis >= 10.0 ? self->_luxHysteresis : 10.0;
      self->_luxHysteresis = v6;
      if (self->super.super._logHandle)
      {
        v5 = self->super.super._logHandle;
      }

      else
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_0_4_0_8_66(v16, COERCE__INT64(self->_luxHysteresis), [(KeyboardBacklightHIDCurve *)self color], [(KeyboardBacklightHIDCurve *)self defaultBrightnessCurve]);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Hysteresis = %f Color = %d Default curve = %{public}@", v16, 0x1Cu);
      }

      break;
  }

  *MEMORY[0x1E69E9840];
}

@end