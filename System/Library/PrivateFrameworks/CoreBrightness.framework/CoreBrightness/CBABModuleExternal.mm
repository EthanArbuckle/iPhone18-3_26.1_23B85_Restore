@interface CBABModuleExternal
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)getAggregatedLux:(float *)a3;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)newALSService:(__IOHIDServiceClient *)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBABModuleExternal)initWithDisplayModule:(id)a3 andQueue:(id)a4;
- (id)copyPropertyForKey:(id)a3;
- (void)dealloc;
- (void)endFastRamp;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
- (void)start;
- (void)stop;
- (void)storeCurveToPreferences;
- (void)updateAutoBrightnessState:(BOOL)a3;
- (void)updateAvailability;
- (void)updateBrightnessForce:(BOOL)a3 periodOverride:(BOOL)a4 period:(float)a5;
- (void)userBrightnessCommitHandler;
@end

@implementation CBABModuleExternal

- (CBABModuleExternal)initWithDisplayModule:(id)a3 andQueue:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = self;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40.receiver = self;
  v40.super_class = CBABModuleExternal;
  v44 = [(CBModule *)&v40 initWithQueue:a4];
  if (v44)
  {
    v39 = [v42 copyPropertyForKey:@"kUSBContainerID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v44 + 5) = [v39 copy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v44 + 5) = [objc_msgSend(v39 "UUIDString")];
      }
    }

    v39 = [v42 copyPropertyForKey:{@"DisplayUniqueID", MEMORY[0x1E69E5920](v39).n128_f64[0]}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v44 + 7) = [v39 copy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v44 + 7) = [objc_msgSend(v39 "UUIDString")];
      }
    }

    *&v4 = MEMORY[0x1E69E5920](v39).n128_u64[0];
    if (*(v44 + 5))
    {
      *(v44 + 6) = [*(v44 + 5) copy];
    }

    else if (*(v44 + 7))
    {
      *(v44 + 6) = [*(v44 + 7) copy];
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

      v38 = inited;
      v37 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v38;
        type = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "error: no unique ID or contaienr ID - create ad-hoc UUID as backup", v36, 2u);
      }

      v39 = objc_alloc_init(MEMORY[0x1E696AFB0]);
      *(v44 + 6) = [objc_msgSend(v39 "UUIDString")];
      MEMORY[0x1E69E5920](v39);
    }

    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.CBABModuleExternal.%@", *(v44 + 6)];
    if (v35)
    {
      *(v44 + 2) = os_log_create([v35 cStringUsingEncoding:1], "default");
    }

    else
    {
      *(v44 + 2) = os_log_create("com.apple.CBABModuleExternal", "default");
    }

    MEMORY[0x1E69E5920](v35);
    *(v44 + 12) = MEMORY[0x1E69E5928](v42);
    v34 = [v42 copyPropertyForKey:@"DisplayServicesIsBuiltInDisplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v44 + 91) = [v34 BOOLValue];
    }

    MEMORY[0x1E69E5920](v34);
    *(v44 + 4) = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*(v44 + 2))
    {
      v17 = *(v44 + 2);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v16 = init_default_corebrightness_log();
      }

      v17 = v16;
    }

    v33 = v17;
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_66(v48, v42, *(v44 + 5), *(v44 + 7));
      _os_log_impl(&dword_1DE8E5000, v33, v32, "display = %{public}@ | container ID = %{public}@ | UUID = %{public}@", v48, 0x20u);
    }

    *(v44 + 64) = 1;
    *(v44 + 88) = 0;
    *(v44 + 89) = 0;
    *(v44 + 66) = 0;
    *(v44 + 90) = 0;
    *(v44 + 10) = [[CBABRamp alloc] initWithDisplayModule:*(v44 + 12) andQueue:*(v44 + 3)];
    if (*(v44 + 7))
    {
      if (([*(v44 + 6) isEqual:*(v44 + 7)] & 1) == 0 && +[CBPreferencesHandler migrateNestedPreferenceForAllUsersWithKey1:key2:toKey:](CBPreferencesHandler, "migrateNestedPreferenceForAllUsersWithKey1:key2:toKey:", @"DisplayPreferences", *(v44 + 7), *(v44 + 6)))
      {
        if (*(v44 + 2))
        {
          v15 = *(v44 + 2);
        }

        else
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v15 = v14;
        }

        v30 = v15;
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_66_8_66(v47, *(v44 + 7), *(v44 + 6));
          _os_log_impl(&dword_1DE8E5000, v30, v29, "Preferences for key = %{public}@ were migrated to key = %{public}@", v47, 0x16u);
        }
      }
    }

    v28 = [CBPreferencesHandler copyNestedPreferenceForKey1:@"DisplayPreferences" key2:*(v44 + 6) key3:@"AutoBrightnessEnable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v44 + 64) = [v28 BOOLValue];
      if (*(v44 + 2))
      {
        v13 = *(v44 + 2);
      }

      else
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v13 = v12;
      }

      oslog = v13;
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v46, *(v44 + 64) & 1);
        _os_log_impl(&dword_1DE8E5000, oslog, v26, "auto-brightness state loaded from preferences: %d", v46, 8u);
      }
    }

    v25 = [*(v44 + 12) copyPropertyForKey:{@"CBDisplayVendorID", MEMORY[0x1E69E5920](v28).n128_f64[0]}];
    v24 = [*(v44 + 12) copyPropertyForKey:@"CBDisplayProductID"];
    *(v44 + 9) = [[CBABCurve alloc] initWithUUID:*(v44 + 6) vendorID:v25 andProductID:v24];
    if (!*(v44 + 9))
    {
      if (*(v44 + 2))
      {
        v11 = *(v44 + 2);
      }

      else
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v11 = v10;
      }

      v23 = v11;
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v8 = v23;
        v9 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_1DE8E5000, v8, v9, "failed to create curve module", v21, 2u);
      }
    }

    MEMORY[0x1E69E5920](v25);
    MEMORY[0x1E69E5920](v24);
    if (*(v44 + 2))
    {
      v7 = *(v44 + 2);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v45, *(v44 + 9));
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "auto-brightness curve initialised: %{public}@", v45, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v44;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_displayModule);
  MEMORY[0x1E69E5920](v5->_ALSServices);
  MEMORY[0x1E69E5920](v5->_containerID);
  MEMORY[0x1E69E5920](v5->_uniqueID);
  MEMORY[0x1E69E5920](v5->_displayUUID);
  MEMORY[0x1E69E5920](v5->_curve);
  v2 = MEMORY[0x1E69E5920](v5->_ramp).n128_u64[0];
  if (v5->super._logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v5->super._logHandle).n128_u64[0];
    v5->super._logHandle = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBABModuleExternal;
  [(CBModule *)&v3 dealloc];
}

- (void)start
{
  v10 = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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

  v8 = logHandle;
  v7 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
  }
}

- (void)stop
{
  v10 = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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

  v8 = logHandle;
  v7 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
  }

  [(CBABRamp *)v10->_ramp stopTransition];
}

- (id)copyPropertyForKey:(id)a3
{
  v4 = 0;
  if ([a3 isEqualToString:@"DisplayBrightnessAuto2"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_enabled];
  }

  if ([a3 isEqualToString:@"DisplayBrightnessAuto2Available"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_available];
  }

  return v4;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = [(CBABModuleExternal *)self setPropertyInternal:a3 forKey:a4];
  if ([a4 isEqualToString:@"DisplayBrightnessAuto2"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableArray *)self->_ALSServices count])
    {
      -[CBABModuleExternal updateAutoBrightnessState:](self, "updateAutoBrightnessState:", [a3 BOOLValue]);
      v11 = 1;
    }
  }

  else if ([a4 isEqualToString:@"DisplayBrightness2"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [a3 objectForKey:@"Commit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 BOOLValue])
        {
          [(CBABModuleExternal *)self userBrightnessCommitHandler];
        }

        else
        {
          [(CBABModuleExternal *)self userBrightnessChangingHandler];
        }

        v11 = 1;
      }
    }
  }

  else if ([a4 isEqual:@"DisplayBrightnessFactorWithFade"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([a3 BOOLValue])
    {
      LODWORD(v4) = 1036831949;
      [(CBABModuleExternal *)self updateBrightnessForce:0 periodOverride:1 period:v4];
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v8;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v16, [a3 intValue]);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Receive brightness factor %d -> update brightness of ext display in short period.", v16, 8u);
      }
    }
  }

  if (self->super._logHandle)
  {
    v7 = self->super._logHandle;
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

    v7 = inited;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_66_8_64_4_0(v15, a4, a3, v11);
    _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "key = %{public}@ | property = %@ | result = %d", v15, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

- (void)updateAutoBrightnessState:(BOOL)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  enabled = self->_enabled;
  self->_enabled = a3;
  if (!v21 || enabled)
  {
    if (!v21)
    {
      [(CBABRamp *)v23->_ramp stopTransition];
    }
  }

  else
  {
    [(CBABCurve *)v23->_curve resetToDefaultState];
    [(CBABModuleExternal *)v23 storeCurveToPreferences];
    LODWORD(v3) = 0.5;
    [(CBABModuleExternal *)v23 updateBrightnessForce:1 periodOverride:1 period:v3];
  }

  if (enabled != v21)
  {
    if (v21)
    {
      v4 = MEMORY[0x1E695E118];
    }

    else
    {
      v4 = MEMORY[0x1E695E110];
    }

    [(CBABModuleExternal *)v23 sendNotificationForKey:@"DisplayBrightnessAuto2" withValue:v4];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v23->_enabled];
  if (v19)
  {
    if ([CBPreferencesHandler storeNestedPreferenceForAllUsersWithKey1:@"DisplayPreferences" key2:v23->_uniqueID key3:@"AutoBrightnessEnable" andValue:v19])
    {
      if (v23->super._logHandle)
      {
        logHandle = v23->super._logHandle;
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

      v18 = logHandle;
      v17 = 2;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        log = v18;
        type = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_debug_impl(&dword_1DE8E5000, log, type, "auto-brightness state preferences stored successfully", v16, 2u);
      }
    }

    else
    {
      if (v23->super._logHandle)
      {
        v8 = v23->super._logHandle;
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

      v15 = v8;
      v14 = 16;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v5 = v15;
        v6 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, v5, v6, "auto-brightness state preferences failed to store", v13, 2u);
      }
    }
  }

  MEMORY[0x1E69E5920](v19);
}

- (void)updateBrightnessForce:(BOOL)a3 periodOverride:(BOOL)a4 period:(float)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = self;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  if (!self->_enabled || v36->_updatesFrozen || v36->_suspendAutoBrightness || v36->_presetDisableAB)
  {
    if (v36->super._logHandle)
    {
      logHandle = v36->super._logHandle;
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
      __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(v37, v36->_enabled, v36->_updatesFrozen, v36->_suspendAutoBrightness, v36->_presetDisableAB);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "skip update (enabled=%i | frozen=%i | suspended=%i | presetDisableAB=%i)", v37, 0x1Au);
    }
  }

  else
  {
    v31 = 0.0;
    v30 = 0.0;
    if ([(CBABModuleExternal *)v36 getAggregatedLux:&v30])
    {
      *&v5 = v30;
      if ([(CBABCurve *)v36->_curve setLux:v5])
      {
        [(CBABCurve *)v36->_curve getLinearBrightness];
        v31 = v6;
        if (v36->super._logHandle)
        {
          v20 = v36->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v19 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v19 = init_default_corebrightness_log();
          }

          v20 = v19;
        }

        v29 = v20;
        v28 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v40, v36->_curve);
          _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "Curve Object: %@", v40, 0xCu);
        }

        if (v36->super._logHandle)
        {
          v18 = v36->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v17 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v17 = init_default_corebrightness_log();
          }

          v18 = v17;
        }

        v27 = v18;
        v26 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_2_8_0_8_0(v39, COERCE__INT64(v31), COERCE__INT64(v30));
          _os_log_impl(&dword_1DE8E5000, v27, v26, "Got brightness %f from Lux %f", v39, 0x16u);
        }

        if (v36->_fastRamp)
        {
          v33 = 1;
          v32 = 0.5;
        }

        *&v7 = v31;
        *&v8 = v32;
        [(CBABRamp *)v36->_ramp transitionToBrightness:v34 force:v33 periodOverride:v7 period:v8];
      }

      else
      {
        if (v36->super._logHandle)
        {
          v16 = v36->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        v25 = v16;
        v24 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v38, COERCE__INT64(v30));
          _os_log_error_impl(&dword_1DE8E5000, v25, v24, "Error retrieving brightness for lux %f", v38, 0xCu);
        }
      }
    }

    else
    {
      if (v36->super._logHandle)
      {
        v14 = v36->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v13 = init_default_corebrightness_log();
        }

        v14 = v13;
      }

      v23 = v14;
      v22 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v11 = v23;
        v12 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_1DE8E5000, v11, v12, "failed to retrieve aggregated lux value", v21, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)newALSService:(__IOHIDServiceClient *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = IOHIDServiceClientCopyProperty(a3, @"kUSBContainerID");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [objc_msgSend(v27 "UUIDString")];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];
      v29 = [objc_msgSend(v26 "UUIDString")];
      MEMORY[0x1E69E5920](v26);
    }
  }

  v25 = IOHIDServiceClientCopyProperty(v31, @"Built-In");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v25 BOOLValue];
  }

  MEMORY[0x1E69E5920](v25);
  if (v33->super._logHandle)
  {
    logHandle = v33->super._logHandle;
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

  v24 = logHandle;
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_4_0(v37, v29, v28 & 1);
    _os_log_impl(&dword_1DE8E5000, v24, v23, "sensor: containerID=%{public}@ builtIn=%i", v37, 0x12u);
  }

  if (([v29 isEqual:v33->_containerID] & 1) != 0 || (v28 & 1) == 1 && v33->_builtIn)
  {
    v22 = [[CBALSService alloc] initWithHIDALSServiceClient:v31];
    if (v22)
    {
      if (v33->super._logHandle)
      {
        v11 = v33->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v21 = v11;
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v36, 0x4008000000000000);
        _os_log_impl(&dword_1DE8E5000, v21, v20, "Set fast ramp for %f sec", v36, 0xCu);
      }

      v33->_fastRamp = 1;
      v3 = dispatch_time(0, 3000000000);
      queue = v33->super._queue;
      block = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __36__CBABModuleExternal_newALSService___block_invoke;
      v18 = &unk_1E867B480;
      v19 = v33;
      dispatch_after(v3, queue, &block);
      [(NSMutableArray *)v33->_ALSServices addObject:v22];
      v30 = 1;
      if (v33->super._logHandle)
      {
        v9 = v33->super._logHandle;
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_66_4_0(v35, v22, v30 & 1);
        _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "new ALS service added \n%{public}@, success=%d", v35, 0x12u);
      }
    }

    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    if (v33->super._logHandle)
    {
      v7 = v33->super._logHandle;
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_66(v34, v29, v33->_containerID);
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "service containerID (%{public}@) and display container ID (%{public}@) mismatch", v34, 0x16u);
    }
  }

  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v29);
  *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v4 = 0;
  if (a3 && (IOHIDServiceClientConformsTo(a3, 0x20u, 0x41u) || IOHIDServiceClientConformsTo(a3, 0xFF00u, 4u)))
  {
    v4 = [(CBABModuleExternal *)self newALSService:a3];
    if (v4)
    {
      [(CBABModuleExternal *)self updateBrightness];
    }
  }

  [(CBABModuleExternal *)self updateAvailability];
  return v4;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 1375731712;
  v15 = 48;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  ALSServices = self->_ALSServices;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __45__CBABModuleExternal_removeHIDServiceClient___block_invoke;
  v9 = &unk_1E867BE40;
  v11 = a3;
  v10 = &v12;
  [(NSMutableArray *)ALSServices enumerateObjectsUsingBlock:?];
  [(NSMutableArray *)v21->_ALSServices removeObject:v13[5]];
  [(CBABModuleExternal *)v21 updateAvailability];
  _Block_object_dispose(&v12, 8);
  return 1;
}

uint64_t __45__CBABModuleExternal_removeHIDServiceClient___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToHIDService:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)updateAvailability
{
  if (!self->_available || [(NSMutableArray *)self->_ALSServices count])
  {
    if (!self->_available)
    {
      if ([(NSMutableArray *)self->_ALSServices count])
      {
        self->_available = 1;
        [(CBABModuleExternal *)self sendNotificationForKey:@"DisplayBrightnessAuto2Available" withValue:MEMORY[0x1E695E118]];
      }
    }
  }

  else
  {
    self->_available = 0;
    [(CBABModuleExternal *)self sendNotificationForKey:@"DisplayBrightnessAuto2Available" withValue:MEMORY[0x1E695E110]];
  }
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (!a3)
  {
    return 0;
  }

  if (IOHIDEventGetType() == 12)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x20000000;
    v8 = 32;
    v9 = 0;
    [(NSMutableArray *)v13->_ALSServices enumerateObjectsUsingBlock:?];
    if (v6[3])
    {
      [(CBABModuleExternal *)v13 updateBrightness];
    }

    _Block_object_dispose(&v5, 8);
  }

  return 1;
}

uint64_t __42__CBABModuleExternal_handleHIDEvent_from___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToHIDService:a1[5]];
  if (result)
  {
    result = [a2 setEvent:a1[6]];
    *(*(a1[4] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)userBrightnessCommitHandler
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = self;
  v15 = a2;
  [(CBABRamp *)self->_ramp stopTransition];
  v16->_updatesFrozen = 0;
  v14 = 0;
  v14 = [(CBDisplayModule *)v16->_displayModule copyPropertyForKey:@"DisplayBrightnessLinear"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v16->super._logHandle)
    {
      logHandle = v16->super._logHandle;
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

    v13 = logHandle;
    v12 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v17, v14);
      _os_log_impl(&dword_1DE8E5000, v13, v12, "user brightness commit (%@)", v17, 0xCu);
    }

    [(CBABRamp *)v16->_ramp stopTransition];
    curve = v16->_curve;
    [v14 floatValue];
    [(CBABCurve *)curve updateALSParametersForDisplayBrightness:?];
    [(CBABModuleExternal *)v16 storeCurveToPreferences];
  }

  else
  {
    if (v16->super._logHandle)
    {
      v5 = v16->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v11 = v5;
    v10 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v11;
      v3 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "ERROR: user brightness commit - failed to retrieve current brightness", v9, 2u);
    }
  }

  MEMORY[0x1E69E5920](v14);
  *MEMORY[0x1E69E9840];
}

- (void)storeCurveToPreferences
{
  v18 = self;
  v17 = a2;
  v16 = [(CBABCurve *)self->_curve copyUserPrefState];
  if ([CBPreferencesHandler storeNestedPreferenceForAllUsersWithKey1:@"DisplayPreferences" key2:v18->_uniqueID key3:@"AutoBrightnessCurve" andValue:v16])
  {
    if (v18->super._logHandle)
    {
      logHandle = v18->super._logHandle;
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
      _os_log_impl(&dword_1DE8E5000, log, type, "Curve preferences saved sucessfully", v13, 2u);
    }
  }

  else
  {
    if (v18->super._logHandle)
    {
      v5 = v18->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v12 = v5;
    v11 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v12;
      v3 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "Curve preferences failed to save", v10, 2u);
    }
  }

  MEMORY[0x1E69E5920](v16);
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v9, a3, a4);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ value=%@", v9, 0x16u);
  }

  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)getAggregatedLux:(float *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v17 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x20000000;
  v10 = 32;
  v11 = 0;
  [(NSMutableArray *)self->_ALSServices enumerateObjectsUsingBlock:?];
  if (v19->super._logHandle)
  {
    logHandle = v19->super._logHandle;
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
    __os_log_helper_16_2_2_8_0_8_64(v20, COERCE__INT64(v8[6]), v19->_ALSServices);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "lux=%f from: %@", v20, 0x16u);
  }

  *v17 = v8[6];
  v4 = *(v13 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v12, 8);
  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __39__CBABModuleExternal_getAggregatedLux___block_invoke(uint64_t a1, void *a2)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 lux];
  if (v6 < v3)
  {
    result = [a2 lux];
    *&v4 = v4;
    *(*(*(a1 + 32) + 8) + 24) = LODWORD(v4);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)endFastRamp
{
  v10 = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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

  v8 = logHandle;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "Fast ramp ends", v6, 2u);
  }

  v10->_fastRamp = 0;
}

@end