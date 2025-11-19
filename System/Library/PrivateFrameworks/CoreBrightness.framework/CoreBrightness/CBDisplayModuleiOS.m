@interface CBDisplayModuleiOS
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)edrIsEngaged;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)luxHasCrossedBDMThreshold:(float)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)shouldForceCapRamp;
- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)a3 andContext:(id)a4;
- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)a3 queue:(id)a4 display:(id)a5;
- (const)edrStateToString:(unint64_t)a3;
- (const)rtplcStateToString:(unint64_t)a3;
- (float)appliedCompensation;
- (float)compensatedSDRNits;
- (float)computeTargetHDRBrightnessForAPCE:(float)a3 andScale:(float)a4;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)a3;
- (void)apceTimerCallback;
- (void)createAPCEMonitorWithFrequency:(float)a3;
- (void)dealloc;
- (void)deleteAPCEMonitor;
- (void)handleAttachedNotification;
- (void)handleDisplayBrightnessUpdate:(id)a3;
- (void)handleEDRHeadroomRequest:(id)a3;
- (void)handleFrameInfo:(id *)a3;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)initialiseAurora;
- (void)initialiseEDR;
- (void)initialiseSDR;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
- (void)stop;
- (void)updateEDRStateForEvent:(unint64_t)a3 andHeadroom:(float)a4;
- (void)updatePanelLimit:(id)a3;
- (void)updatePresetState:(BOOL)a3;
- (void)updateSDRLimits:(id)a3;
@end

@implementation CBDisplayModuleiOS

- (BOOL)shouldForceCapRamp
{
  v14 = *MEMORY[0x1E69E9840];
  [(CBDisplayModuleiOS *)self compensatedSDRNits];
  v11 = -(self->_dynSliderCap - (v2 * self->_appliedHeadroom));
  [(CBDisplayModuleiOS *)self appliedCompensation];
  v10 = 0;
  if (v3 > 1.0)
  {
    v10 = 0;
    if (self->_edrState == 3)
    {
      v10 = 0;
      if (float_equal(self->_appliedHeadroom, self->_requestedHeadroom))
      {
        v9 = 1;
        if (!float_equal(self->_dynSliderCap, self->_nitsSDR))
        {
          v9 = v11 >= 30.0;
        }

        v10 = v9;
      }
    }
  }

  if (self->_edrState)
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
      v4 = [(CBDisplayModuleiOS *)self edrStateToString:self->_edrState];
      if (v10)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_2_8_32_8_32(v13, v4, v5);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "HDR | _edrState: %s, forceRamp: %s", v13, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)edrIsEngaged
{
  v3 = 1;
  if (self->_edrState != 1)
  {
    return self->_edrState == 2;
  }

  return v3;
}

- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)a3 queue:(id)a4 display:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v58 = self;
  v57 = a2;
  v56 = a3;
  v55 = a4;
  v54 = a5;
  if (!a4 || !v56)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v53 = inited;
    v52 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      v32 = v53;
      v33 = v52;
      __os_log_helper_16_0_0(v51);
      _os_log_error_impl(&dword_1DE8E5000, v32, v33, "invalid arguments", v51, 2u);
    }

LABEL_60:
    MEMORY[0x1E69E5920](v58);
    v58 = 0;
    v59 = 0;
    goto LABEL_61;
  }

  v50.receiver = v58;
  v50.super_class = CBDisplayModuleiOS;
  v58 = [(CBModule *)&v50 initWithQueue:v55];
  if (v58)
  {
    *(v58 + 305) = 0;
    *(v58 + 304) = 0;
    *(v58 + 184) = 1;
    *(v58 + 202) = 0;
    *(v58 + 201) = 0;
    *(v58 + 38) = 1067114824;
    if (v54)
    {
      v31 = objc_autoreleasePoolPush();
      v5 = os_log_create("com.apple.CoreBrightness.ARMDisplay", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v54, "displayId")), "UTF8String"]);
      *(v58 + 2) = v5;
      objc_autoreleasePoolPop(v31);
    }

    else
    {
      v6 = os_log_create("com.apple.CoreBrightness.ARMDisplay", "default");
      *(v58 + 2) = v6;
    }

    if (!*(v58 + 2))
    {
      v30 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v49 = v30;
      v48 = 16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        log = v49;
        type = v48;
        __os_log_helper_16_0_0(v47);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v47, 2u);
      }
    }

    if (v54)
    {
      if (*(v58 + 2))
      {
        v27 = *(v58 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v26 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v26 = init_default_corebrightness_log();
        }

        v27 = v26;
      }

      v46 = v27;
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v60, [v54 displayId]);
        _os_log_impl(&dword_1DE8E5000, v46, v45, "create display with display ID (%u)", v60, 8u);
      }

      v7 = DisplayCreateWithID(*MEMORY[0x1E695E480], v56, 0, [v54 displayId]);
      *(v58 + 41) = v7;
    }

    else
    {
      if (*(v58 + 2))
      {
        v25 = *(v58 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v24 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v24 = init_default_corebrightness_log();
        }

        v25 = v24;
      }

      v44 = v25;
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v44;
        v23 = v43;
        __os_log_helper_16_0_0(v42);
        _os_log_impl(&dword_1DE8E5000, v22, v23, "create display without display ID", v42, 2u);
      }

      v8 = DisplayCreate(*MEMORY[0x1E695E480], v56, 0);
      *(v58 + 41) = v8;
    }

    if (!*(v58 + 41))
    {
      if (*(v58 + 2))
      {
        v21 = *(v58 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v20 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v20 = init_default_corebrightness_log();
        }

        v21 = v20;
      }

      v41 = v21;
      v40 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v18 = v41;
        v19 = v40;
        __os_log_helper_16_0_0(v39);
        _os_log_error_impl(&dword_1DE8E5000, v18, v19, "failed to create DisplayRef", v39, 2u);
      }

      goto LABEL_60;
    }

    if (!DisplayOpen(*(v58 + 41), DisplayRefPropertyChangedCallback, v58))
    {
      if (*(v58 + 2))
      {
        v17 = *(v58 + 2);
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

      v38 = v17;
      v37 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v14 = v38;
        v15 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_error_impl(&dword_1DE8E5000, v14, v15, "failed to open the DisplayRef", v36, 2u);
      }

      goto LABEL_60;
    }

    DisplaySetProperty(*(v58 + 41), @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
    *(v58 + 5) = 0;
    v9 = [CBDisplayClockSourceAdapter alloc];
    v35 = [(CBDisplayClockSourceAdapter *)v9 initWithDisplayRef:*(v58 + 41)];
    v10 = [[CBRampManager alloc] initWithClockSource:v35];
    *(v58 + 35) = v10;
    v11 = [CBAppliedCompensations alloc];
    v12 = [(CBAppliedCompensations *)v11 initWithRampManager:*(v58 + 35) maxHarmony:1.29999995 maxBLR:1.79999995];
    *(v58 + 24) = v12;
    MEMORY[0x1E69E5920](v35);
  }

  v59 = v58;
LABEL_61:
  *MEMORY[0x1E69E9840];
  return v59;
}

- (CBDisplayModuleiOS)initWithBacklight:(unsigned int)a3 andContext:(id)a4
{
  v115 = *MEMORY[0x1E69E9840];
  v112 = self;
  v111 = a2;
  v110 = a3;
  v109 = a4;
  if (![a4 displayQueue] || !v110)
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v108 = inited;
    v107 = 16;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      log = v108;
      type = v107;
      __os_log_helper_16_0_0(v106);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "invalid arguments", v106, 2u);
    }

LABEL_67:
    MEMORY[0x1E69E5920](*(v112 + 17));
    MEMORY[0x1E69E5920](*(v112 + 5));
    MEMORY[0x1E69E5920](*(v112 + 6));
    MEMORY[0x1E69E5920](*(v112 + 7));
    MEMORY[0x1E69E5920](*(v112 + 8));
    MEMORY[0x1E69E5920](*(v112 + 9));
    MEMORY[0x1E69E5920](*(v112 + 10));
    MEMORY[0x1E69E5920](*(v112 + 11));
    MEMORY[0x1E69E5920](v112);
    v112 = 0;
    v113 = 0;
    goto LABEL_68;
  }

  v105.receiver = v112;
  v105.super_class = CBDisplayModuleiOS;
  v112 = -[CBModule initWithQueue:](&v105, sel_initWithQueue_, [v109 displayQueue]);
  if (v112)
  {
    *(v112 + 305) = 0;
    *(v112 + 304) = 0;
    *(v112 + 184) = 1;
    *(v112 + 38) = 1067114824;
    *(v112 + 202) = 0;
    *(v112 + 201) = 0;
    v4 = [v109 brtCtl];
    v5 = MEMORY[0x1E69E5928](v4);
    *(v112 + 5) = v5;
    *(v112 + 31) = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v112 + 32) = v6;
    v56 = objc_alloc(MEMORY[0x1E696AEC0]);
    v55 = [objc_msgSend(v112 "className")];
    v104 = [v56 initWithFormat:@"%s.%s.%u", "com.apple.CoreBrightness", v55, objc_msgSend(*(v112 + 5), "getDisplayId")];
    v7 = os_log_create([v104 cStringUsingEncoding:1], "default");
    *(v112 + 2) = v7;
    if (!*(v112 + 2))
    {
      v54 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v103 = v54;
      v102 = 16;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v52 = v103;
        v53 = v102;
        __os_log_helper_16_0_0(v101);
        _os_log_error_impl(&dword_1DE8E5000, v52, v53, "failed to create log handle", v101, 2u);
      }
    }

    MEMORY[0x1E69E5920](v104);
    v8 = DisplayCreate(*MEMORY[0x1E695E480], v110, 0);
    *(v112 + 41) = v8;
    if (!*(v112 + 41))
    {
      if (*(v112 + 2))
      {
        v51 = *(v112 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v50 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v50 = init_default_corebrightness_log();
        }

        v51 = v50;
      }

      v100 = v51;
      v99 = 16;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v48 = v100;
        v49 = v99;
        __os_log_helper_16_0_0(v98);
        _os_log_error_impl(&dword_1DE8E5000, v48, v49, "failed to create DisplayRef", v98, 2u);
      }

      goto LABEL_67;
    }

    v9 = [v109 configuration];
    *(v112 + 42) = v9;
    *(v112 + 33) = 0;
    v47 = [MEMORY[0x1E6979550] serverIfRunning];
    v97 = [v47 displayWithDisplayId:{objc_msgSend(*(v112 + 5), "getDisplayId")}];
    if (v97)
    {
      v10 = [[CBFrameInfoProvider alloc] initWithDisplayServer:v97];
      *(v112 + 33) = v10;
    }

    else
    {
      if (*(v112 + 2))
      {
        v46 = *(v112 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v45 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v45 = init_default_corebrightness_log();
        }

        v46 = v45;
      }

      v96 = v46;
      v95 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v114, [*(v112 + 5) getDisplayId]);
        _os_log_error_impl(&dword_1DE8E5000, v96, v95, "Failed to find WindowServer display #%d, frame information will not work", v114, 8u);
      }
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v112 + 11) = v11;
    v12 = [CBDisplayClockSourceAdapter alloc];
    v94 = [(CBDisplayClockSourceAdapter *)v12 initWithDisplayRef:*(v112 + 41)];
    v13 = [[CBRampManager alloc] initWithClockSource:v94];
    *(v112 + 35) = v13;
    [*(v112 + 35) activate];
    MEMORY[0x1E69E5920](v94);
    v14 = [CBAppliedCompensations alloc];
    v15 = [(CBAppliedCompensations *)v14 initWithRampManager:*(v112 + 35) maxHarmony:1.29999995 maxBLR:1.79999995];
    *(v112 + 24) = v15;
    v16 = [v109 twilight];
    v17 = MEMORY[0x1E69E5928](v16);
    *(v112 + 7) = v17;
    if (*(v112 + 7))
    {
      v18 = *(v112 + 7);
      v88 = MEMORY[0x1E69E9820];
      v89 = -1073741824;
      v90 = 0;
      v91 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke;
      v92 = &unk_1E867B558;
      v93 = v112;
      [v18 registerNotificationBlock:?];
      [*(v112 + 11) addObject:*(v112 + 7)];
    }

    v19 = [v109 ammolite];
    v20 = MEMORY[0x1E69E5928](v19);
    *(v112 + 8) = v20;
    if (*(v112 + 8))
    {
      v21 = *(v112 + 8);
      v82 = MEMORY[0x1E69E9820];
      v83 = -1073741824;
      v84 = 0;
      v85 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_2;
      v86 = &unk_1E867B558;
      v87 = v112;
      [v21 registerNotificationBlock:?];
      [*(v112 + 11) addObject:*(v112 + 8)];
    }

    v22 = [v109 gcp];
    v23 = MEMORY[0x1E69E5928](v22);
    *(v112 + 9) = v23;
    if (*(v112 + 9))
    {
      v24 = *(v112 + 9);
      v76 = MEMORY[0x1E69E9820];
      v77 = -1073741824;
      v78 = 0;
      v79 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_3;
      v80 = &unk_1E867B558;
      v81 = v112;
      [v24 registerNotificationBlock:?];
      [*(v112 + 11) addObject:*(v112 + 9)];
      [*(v112 + 9) setRampManager:*(v112 + 35)];
    }

    [v112 initialiseSDR];
    [v112 initialiseEDR];
    [v112 initialiseAurora];
    v75 = *(v112 + 24);
    v74 = DisplayCopyProperty(*(v112 + 41), @"DisplayPanelLuminanceMin");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v74 floatValue];
      v75 = v25;
    }

    else
    {
      if (*(v112 + 2))
      {
        v44 = *(v112 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v43 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v43 = init_default_corebrightness_log();
        }

        v44 = v43;
      }

      oslog = v44;
      v72 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v41 = oslog;
        v42 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_1DE8E5000, v41, v42, "Could not fetch the minimum panel nits!", v71, 2u);
      }
    }

    v70 = v75;
    v69 = *(v112 + 28);
    v26 = [CBIndicatorBrightnessModule alloc];
    LODWORD(v27) = v70;
    LODWORD(v28) = v69;
    LODWORD(v29) = *(v112 + 27);
    v30 = [(CBIndicatorBrightnessModule *)v26 initWithQueue:*(v112 + 3) min:*(v112 + 33) max:v27 contrastBoostMax:v28 andFrameInfoProvider:v29];
    *(v112 + 10) = v30;
    if (*(v112 + 10))
    {
      v31 = *(v112 + 10);
      v63 = MEMORY[0x1E69E9820];
      v64 = -1073741824;
      v65 = 0;
      v66 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_26;
      v67 = &unk_1E867B558;
      v68 = v112;
      [v31 registerNotificationBlock:?];
      [*(v112 + 11) addObject:*(v112 + 10)];
    }

    if (!DisplayOpen(*(v112 + 41), DisplayRefPropertyChangedCallback, v112))
    {
      if (*(v112 + 2))
      {
        v40 = *(v112 + 2);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v39 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v39 = init_default_corebrightness_log();
        }

        v40 = v39;
      }

      v62 = v40;
      v61 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v37 = v62;
        v38 = v61;
        __os_log_helper_16_0_0(v60);
        _os_log_error_impl(&dword_1DE8E5000, v37, v38, "failed to open the DisplayRef", v60, 2u);
      }

      goto LABEL_67;
    }

    DisplaySetProperty(*(v112 + 41), @"DisplayBrightnessAuto", *MEMORY[0x1E695E4C0]);
    DisplaySetProperty(*(v112 + 41), @"DisplaySyncBrightnessTransactions", *MEMORY[0x1E695E4D0]);
    v32 = objc_alloc_init(AABCHistograms);
    *(v112 + 39) = v32;
    [*(v112 + 39) setFirstBrightnessUpdate:1];
    [*(v112 + 39) setAutoBrightnessOn:0];
    v36 = [*(v112 + 5) getDisplayType];
    v33 = v36 == [*(v112 + 5) CBDispTypeIntegrated];
    [*(v112 + 39) setBuiltInDisplay:v33];
    v34 = [+[CBAnalyticsScheduler sharedInstance](CBAnalyticsScheduler registerHandler:"registerHandler:"];
    *(v112 + 40) = v34;
  }

  v113 = v112;
LABEL_68:
  *MEMORY[0x1E69E9840];
  return v113;
}

void __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_32(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __51__CBDisplayModuleiOS_initWithBacklight_andContext___block_invoke_2_33;
  v7 = &unk_1E867B480;
  v8 = *(a1 + 32);
  dispatch_async(v2, &block);
}

- (void)updateSDRLimits:(id)a3
{
  if (a3)
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"MinNits", "floatValue"}];
    self->_minNits = v3;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"MaxNits", "floatValue"}];
    self->_maxNits = v4;
  }

  else
  {
    self->_dynSliderCap = 600.0;
    self->_maxNits = 600.0;
    self->_minNits = 2.0;
  }
}

- (void)updatePanelLimit:(id)a3
{
  if (a3)
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"MaxNitsPanel", "floatValue"}];
    self->_maxNitsPanel = v3;
  }

  else
  {
    self->_maxNitsPanel = 2175.0;
  }
}

- (void)initialiseSDR
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  [(CBDisplayModuleiOS *)self updateSDRLimits:v4];
  [(CBDisplayModuleiOS *)self updatePanelLimit:v4];
  self->_nitsSDR = self->_minNits;
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
    __os_log_helper_16_0_3_8_0_8_0_8_0(v6, COERCE__INT64(self->_maxNits), COERCE__INT64(self->_minNits), COERCE__INT64(self->_nitsSDR));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "SDR: max=%f nits | min=%f nits | curent=%f nits", v6, 0x20u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)initialiseEDR
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = self;
  v42 = a2;
  v41 = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  v40 = 0.0;
  v39 = 0.0;
  v38 = 0.5;
  v37 = 0.75;
  if (v41)
  {
    [-[NSDictionary objectForKeyedSubscript:](v41 objectForKeyedSubscript:{@"EDRPotentialHeadroom", "floatValue"}];
    v40 = v2;
    v39 = v2;
    if ([(NSDictionary *)v41 objectForKeyedSubscript:@"EDRReferenceHeadroom"])
    {
      [-[NSDictionary objectForKeyedSubscript:](v41 objectForKeyedSubscript:{@"EDRReferenceHeadroom", "floatValue"}];
      v39 = v3;
    }

    if ([(NSDictionary *)v41 objectForKeyedSubscript:@"EDRSecondsPerStopDefault"])
    {
      [-[NSDictionary objectForKeyedSubscript:](v41 objectForKeyedSubscript:{@"EDRSecondsPerStopDefault", "floatValue"}];
      v38 = v4;
    }

    if ([(NSDictionary *)v41 objectForKeyedSubscript:@"EDRExitSecondsPerStop"])
    {
      [-[NSDictionary objectForKeyedSubscript:](v41 objectForKeyedSubscript:{@"EDRExitSecondsPerStop", "floatValue"}];
      v37 = v5;
    }

    [-[NSDictionary objectForKeyedSubscript:](v41 objectForKeyedSubscript:{@"MaxNitsEDR", "floatValue"}];
    v43->_maxNitsEDR = v6;
  }

  else
  {
    v40 = 16.0;
    v39 = 10.0;
    v43->_maxNitsEDR = 1600.0;
  }

  v43->_capToCAIsRamping = 0;
  v43->_currentCapToCA = v43->_maxNitsEDR;
  v43->_edrState = 0;
  v43->_appliedHeadroom = 1.0;
  v43->_requestedHeadroom = 1.0;
  v43->_trustedLux = 300.0;
  v43->_lastEDRHeadroomRequestFromCA = 0;
  v43->_lastBDMLux = 300.0;
  v43->_bdmLux2 = 0.0;
  v43->_bdmLux1 = 0.0;
  v43->_displayRequiresBDM = DisplayRequiresBDM(v43->_displayInternal);
  if (v43->_displayRequiresBDM)
  {
    v36 = DisplayCopyProperty(v43->_displayInternal, @"BrightDotsMitigationParameters");
    if (v36)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_msgSend(v36 objectForKey:{@"brightDotsMitigationLux1", "floatValue"}];
        v43->_bdmLux1 = v7;
        [objc_msgSend(v36 objectForKey:{@"brightDotsMitigationLux2", "floatValue"}];
        v43->_bdmLux2 = v8;
      }

      MEMORY[0x1E69E5920](v36);
    }
  }

  v9 = [CBEDR alloc];
  *&v10 = v40;
  *&v11 = v39;
  v43->_edr = [(CBEDR *)v9 initWithRampPolicy:0 potentialHeadroom:v10 andReferenceHeadroom:v11];
  v43->_sbim = [[CBSBIM alloc] initWithQueue:v43->super.super._queue andDisplayModule:v43 andEDRModule:v43->_edr];
  v35 = 1.21;
  [(CBBacklightNode *)v43->_backlightParams loadFloat:@"edr-sbim-threshold" toDestination:&v35];
  v43->_sbimEDRThreshold = clamp(v35, 0.0, 2.0);
  if (v43->_edr)
  {
    *&v12 = v43->_maxNitsEDR;
    [(CBEDR *)v43->_edr setPanelMax:v12];
    *&v13 = v43->_maxNitsEDR;
    [(CBEDR *)v43->_edr setBrightnessCap:v13];
    [(CBDisplayModuleiOS *)v43 compensatedSDRNits];
    [(CBEDR *)v43->_edr setSdrBrightness:?];
    *&v14 = v38;
    [(CBEDR *)v43->_edr setSecondsPerStop:v14];
    *&v15 = v37;
    [(CBEDR *)v43->_edr setSecondsPerStopExit:v15];
    context = objc_autoreleasePoolPush();
    v34 = [CBPreferencesHandler copyPreferenceForAllUsersMultiple:&unk_1F59C9468];
    if (v34)
    {
      [v34 objectForKeyedSubscript:@"EDRModulatorNitsConfig"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34 objectForKeyedSubscript:@"EDRModulatorHeadroomConfig"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = objc_alloc_init(CBEDRModulator);
          -[CBEDRModulator setNitsDataPointsConfig:](v33, "setNitsDataPointsConfig:", [v34 objectForKeyedSubscript:@"EDRModulatorNitsConfig"]);
          -[CBEDRModulator setHeadroomDataPointsConfig:](v33, "setHeadroomDataPointsConfig:", [v34 objectForKeyedSubscript:@"EDRModulatorHeadroomConfig"]);
          [(CBEDRModulator *)v33 setEnabled:v43->_brightnessControlEnabled];
          [(CBEDR *)v43->_edr setHeadroomModulator:v33];
          if (v43->super.super._logHandle)
          {
            logHandle = v43->super.super._logHandle;
          }

          else
          {
            v25 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            logHandle = v25;
          }

          v32 = logHandle;
          v31 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_64(v44, v33);
            _os_log_impl(&dword_1DE8E5000, v32, v31, "EDR modulator initialised: %@", v44, 0xCu);
          }
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  if (!isBrightnessAdjustmentPossible(v41))
  {
    if (v43->super.super._logHandle)
    {
      v24 = v43->super.super._logHandle;
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

      v24 = inited;
    }

    v30 = v24;
    v29 = 1;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v21 = v30;
      v22 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_impl(&dword_1DE8E5000, v21, v22, "Presets: staring up already enabled", v28, 2u);
    }

    [(CBDisplayModuleiOS *)v43 updatePresetState:1];
  }

  v43->_apceTimer = 0;
  v43->_rtplcState = 0;
  v43->_rtplcCapApplied = 0;
  v43->_currentRTPLCTarget = v43->_maxNitsEDR;
  v43->_rtplcCap = v43->_maxNitsEDR;
  v43->_frameStats = 0;
  if ([(CBBacklightNode *)v43->_backlightParams rtplc])
  {
    v20 = [CBFrameStats alloc];
    queue = v43->super.super._queue;
    frameInfoProvider = v43->_frameInfoProvider;
    v17 = [MEMORY[0x1E6979550] serverIfRunning];
    v16 = -[CBFrameStats initWithQueue:frameInfoProvider:andWindowServerDisplay:](v20, "initWithQueue:frameInfoProvider:andWindowServerDisplay:", queue, frameInfoProvider, [v17 displayWithDisplayId:{-[CBBrightnessProxy getDisplayId](v43->_brtCtl, "getDisplayId")}]);
    v43->_frameStats = v16;
    [(CBFrameStats *)v43->_frameStats setMovingAverageDuration:1.0];
    DisplayInitializeRTPLCEDRRamp(v43->_displayInternal);
  }

  DisplayInitializeFastEDR(v43->_displayInternal);
  *MEMORY[0x1E69E9840];
}

- (void)initialiseAurora
{
  v16 = self;
  v15 = a2;
  v14 = 0;
  v13 = DisplayCopyProperty(self->_displayInternal, @"AuroraSupported");
  if (v13)
  {
    v14 = [v13 BOOLValue];
    MEMORY[0x1E69E5920](v13);
  }

  if (v14)
  {
    v9 = [(CBBrightnessProxy *)v16->_brtCtl getBrightnessCapabilities];
    [(CBDisplayModuleiOS *)v16 updatePanelLimit:v9];
    if (v16->_edr)
    {
      *&v2 = v16->_maxNitsPanel;
      [(CBEDR *)v16->_edr setPanelMax:v2];
    }

    v3 = [CBFrameStats alloc];
    v8 = -[CBFrameStats initWithQueue:frameInfoProvider:andWindowServerDisplay:](v3, "initWithQueue:frameInfoProvider:andWindowServerDisplay:", v16->super.super._queue, v16->_frameInfoProvider, [objc_msgSend(MEMORY[0x1E6979550] "serverIfRunning")]);
    v16->_aurora = [[CBAurora alloc] initWithQueue:v16->super.super._queue andDisplayModule:v16 andBrtCapabilities:v9 andFrameStats:v8];
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    if (v16->super.super._logHandle)
    {
      logHandle = v16->super.super._logHandle;
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

    v12 = logHandle;
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_1DE8E5000, log, type, "Aurora not supported", v10, 2u);
    }
  }
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_displayInternal)
  {
    DisplayClose(v5->_displayInternal);
    CFRelease(v5->_displayInternal);
    v5->_displayInternal = 0;
  }

  MEMORY[0x1E69E5920](v5->_edr);
  MEMORY[0x1E69E5920](v5->_sbim);
  MEMORY[0x1E69E5920](v5->_brtCtl);
  MEMORY[0x1E69E5920](v5->_pendingCommitedTransactions);
  MEMORY[0x1E69E5920](v5->_lastEDRHeadroomRequestFromCA);
  if (v5->super.super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super.super._logHandle);
    v5->super.super._logHandle = 0;
  }

  if (v5->_apceTimer)
  {
    dispatch_source_cancel(v5->_apceTimer);
    dispatch_release(v5->_apceTimer);
    v5->_apceTimer = 0;
  }

  if (v5->_appliedCompensations)
  {
    MEMORY[0x1E69E5920](v5->_appliedCompensations);
    v5->_appliedCompensations = 0;
  }

  if (v5->_rampManager)
  {
    MEMORY[0x1E69E5920](v5->_rampManager);
  }

  MEMORY[0x1E69E5920](v5->_frameStats);
  MEMORY[0x1E69E5920](v5->_aurora);
  MEMORY[0x1E69E5920](v5->_twilight);
  MEMORY[0x1E69E5920](v5->_ammolite);
  MEMORY[0x1E69E5920](v5->_indicatorBrightnessModule);
  MEMORY[0x1E69E5920](v5->_subModules);
  MEMORY[0x1E69E5920](v5->_backlightParams);
  MEMORY[0x1E69E5920](v5->_cachedKeys);
  [+[CBAnalyticsScheduler removeHandler:MEMORY[0x1E69E5920](v5->_cachedProperties).n128_f64[0]], "removeHandler:", v5->_analyticsPeriodicSender];
  *&v2 = MEMORY[0x1E69E5920](v5->_analyticsHist).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBDisplayModuleiOS;
  [(CBModule *)&v3 dealloc];
}

- (void)stop
{
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:&__block_literal_global_92];
  if (self->_aurora)
  {
    [(CBAurora *)self->_aurora stop];
  }

  DisplayStop(self->_displayInternal);
}

- (void)updatePresetState:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
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
    __os_log_helper_16_0_1_4_0(v18, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Presets: setting status of pro mode to: %d", v18, 8u);
  }

  self->_brightnessControlEnabled = !a3;
  self->_referenceModeIsActive = a3;
  if (self->_brightnessControlEnabled)
  {
    v11 = 0;
  }

  else
  {
    *&v3 = self->_minNits;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  }

  [(CBDisplayModuleiOS *)self setProperty:v11 forKey:@"kCoreBrightnessDisplayPresetNitsOverride"];
  v10 = 0;
  if (self->_brightnessControlEnabled)
  {
    v10 = !self->_dominoMode;
  }

  -[CBDisplayModuleiOS sendNotificationForKey:withValue:](self, "sendNotificationForKey:withValue:", @"CBBrightnessControlAvailable", [MEMORY[0x1E696AD98] numberWithBool:v10]);
  if (a3)
  {
    [(CBSBIM *)self->_sbim disable];
  }

  else
  {
    *&v4 = self->_trustedLux;
    [(CBDisplayModuleiOS *)self updateBDMWithLux:v4];
    [(CBSBIM *)self->_sbim enable];
  }

  if (self->_edr && [(CBEDR *)self->_edr headroomModulator])
  {
    [(CBEDRModulator *)[(CBEDR *)self->_edr headroomModulator] setEnabled:self->_brightnessControlEnabled];
    if (self->super.super._logHandle)
    {
      v9 = self->super.super._logHandle;
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_brightnessControlEnabled)
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      if (self->_brightnessControlEnabled)
      {
        v6 = "enabled";
      }

      else
      {
        v6 = "disabled";
      }

      __os_log_helper_16_2_2_8_32_8_32(v17, v5, v6);
      _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "Presets: Brightness updates are %s; EDR modulator is %s", v17, 0x16u);
    }
  }

  v7 = 0.0;
  if (!a3)
  {
    v7 = -1.0;
  }

  DisplaySetCabalFactorOverride(self->_displayInternal, v7);
  [(CBChromaticCorrection *)self->_twilight setReferenceModeActive:a3];
  [(CBChromaticCorrection *)self->_ammolite setReferenceModeActive:a3];
  [(CBChromaticCorrection *)self->_gcp setReferenceModeActive:a3];
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (void)handleAttachedNotification
{
  context = objc_autoreleasePoolPush();
  v7 = [(CBBrightnessProxy *)self->_brtCtl getBrightnessCapabilities];
  if (v7)
  {
    v6 = isBrightnessAdjustmentPossible(v7);
    [(CBDisplayModuleiOS *)self updateSDRLimits:v7];
    [-[NSDictionary objectForKeyedSubscript:](v7 objectForKeyedSubscript:{@"MaxNitsEDR", "floatValue"}];
    self->_maxNitsEDR = v2;
    *&v3 = self->_maxNitsEDR;
    [(CBEDR *)self->_edr setBrightnessCap:v3];
    [-[NSDictionary objectForKeyedSubscript:](v7 objectForKeyedSubscript:{@"EDRPotentialHeadroom", "floatValue"}];
    [(CBEDR *)self->_edr setMaxHeadroom:?];
    if (self->_brightnessControlEnabled != v6)
    {
      [(CBDisplayModuleiOS *)self updatePresetState:!v6];
    }

    *&v4 = self->_maxNitsEDR;
    [(CBIndicatorBrightnessModule *)self->_indicatorBrightnessModule updateMaxContrastBoostedBrightness:v4];
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v75 = self;
  v74 = a2;
  v73 = a3;
  v72 = a4;
  v71 = 0;
  if (self->super.super._logHandle)
  {
    logHandle = v75->super.super._logHandle;
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

  v70 = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v90, v72, v73);
    _os_log_debug_impl(&dword_1DE8E5000, v70, type, "Set property for key = %@ property = %@", v90, 0x16u);
  }

  [(CBAurora *)v75->_aurora setPropertyForKey:v72 withValue:v73];
  [(CBChromaticCorrection *)v75->_twilight setProperty:v73 forKey:v72];
  [(CBChromaticCorrection *)v75->_ammolite setProperty:v73 forKey:v72];
  [(CBChromaticCorrection *)v75->_gcp setProperty:v73 forKey:v72];
  [(CBIndicatorBrightnessModule *)v75->_indicatorBrightnessModule setProperty:v73 forKey:v72];
  if ([v72 isEqualToString:@"EDRHeadroomRequest"])
  {
    if (v75->_nitsSDR > 0.0 || [v73 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessNotificationPowerOff](v75->_brtCtl, "brightnessNotificationPowerOff")}])
    {
      [(CBDisplayModuleiOS *)v75 handleEDRHeadroomRequest:v73];
    }

    else
    {
      if (v75->super.super._logHandle)
      {
        v46 = v75->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v45 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v45 = init_default_corebrightness_log();
        }

        v46 = v45;
      }

      v68 = v46;
      v67 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        [objc_msgSend(v73 objectForKey:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](v75->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
        __os_log_helper_16_0_1_8_0(v89, COERCE__INT64(v4));
        _os_log_impl(&dword_1DE8E5000, v68, v67, "EDR Headroom request received while SDR is 0: EDR: %f, caching request", v89, 0xCu);
      }

      if (!v75->_cachedProperties)
      {
        v75->_cachedProperties = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      if (!v75->_cachedKeys)
      {
        v75->_cachedKeys = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [(NSMutableArray *)v75->_cachedProperties addObject:v73];
      [(NSMutableArray *)v75->_cachedKeys addObject:v72];
    }

    goto LABEL_173;
  }

  if (v75->_brtCtl && ([v72 isEqualToString:{-[CBBrightnessProxy brightnessNotificationRequestEDR](v75->_brtCtl, "brightnessNotificationRequestEDR")}] & 1) != 0)
  {
    MEMORY[0x1E69E5920](v75->_lastEDRHeadroomRequestFromCA);
    v75->_lastEDRHeadroomRequestFromCA = MEMORY[0x1E69E5928](v73);
    goto LABEL_173;
  }

  if ([v72 isEqualToString:@"EDRSecondsPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v73 floatValue];
      v66 = LODWORD(v5);
      [(CBEDR *)v75->_edr setSecondsPerStop:v5];
    }

    goto LABEL_173;
  }

  if ([v72 isEqualToString:@"EDRExitSecondsPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v73 floatValue];
      v65 = LODWORD(v6);
      [(CBEDR *)v75->_edr setSecondsPerStopExit:v6];
    }

    goto LABEL_173;
  }

  if (v75->_brtCtl && ([v72 isEqualToString:{-[CBBrightnessProxy brightnessNotificationAttached](v75->_brtCtl, "brightnessNotificationAttached")}] & 1) != 0)
  {
    [(CBDisplayModuleiOS *)v75 handleAttachedNotification];
    v76 = 1;
  }

  else if (v75->_brtCtl && ([v72 isEqualToString:{-[CBBrightnessProxy brightnessNotificationPowerOff](v75->_brtCtl, "brightnessNotificationPowerOff")}] & 1) != 0)
  {
    if (!v75->_referenceModeIsActive)
    {
      v7 = objc_alloc(MEMORY[0x1E696AD98]);
      LODWORD(v8) = 1.0;
      v64 = [v7 initWithFloat:v8];
      if (v64)
      {
        v44 = objc_alloc(MEMORY[0x1E695DF20]);
        v43 = [(CBBrightnessProxy *)v75->_brtCtl brightnessRequestEDRHeadroom];
        v63 = [v44 initWithObjectsAndKeys:{v64, v43, *MEMORY[0x1E695E4D0], -[CBBrightnessProxy brightnessNotificationPowerOff](v75->_brtCtl, "brightnessNotificationPowerOff"), 0}];
        *&v9 = MEMORY[0x1E69E5920](v64).n128_u64[0];
        if (v63)
        {
          [(CBDisplayModuleiOS *)v75 setProperty:v63 forKey:@"EDRHeadroomRequest", v9];
          MEMORY[0x1E69E5920](v63);
        }
      }
    }

    v75->_autoDimActive = 0;
    if (v75->_indicatorBrightnessModule)
    {
      [(CBIndicatorBrightnessModule *)v75->_indicatorBrightnessModule setProperty:0 forKey:@"DisplayPowerOff"];
    }

    DisplaySetProperty(v75->_displayInternal, @"DisplayPowerOff", *MEMORY[0x1E695E4D0]);
    v76 = 1;
  }

  else if (v75->_brtCtl && (([v72 isEqualToString:{-[CBBrightnessProxy brightnessNotificationSecureIndicatorOn](v75->_brtCtl, "brightnessNotificationSecureIndicatorOn")}] & 1) != 0 || (objc_msgSend(v72, "isEqualToString:", -[CBBrightnessProxy brightnessNotificationSecureIndicatorOff](v75->_brtCtl, "brightnessNotificationSecureIndicatorOff")) & 1) != 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_173;
    }

    v62 = [v73 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessSecureIndicatorActiveCount](v75->_brtCtl, "brightnessSecureIndicatorActiveCount")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v62 unsignedIntValue])
      {
        [(CBSBIM *)v75->_sbim disable];
      }

      else
      {
        [(CBSBIM *)v75->_sbim enable];
      }

      [(CBDisplayModuleiOS *)v75 setProperty:v62 forKey:@"SecureIndicatorActiveCount"];
    }

    v76 = 1;
  }

  else
  {
    if ([v72 isEqualToString:@"SecureIndicatorState"] & 1) != 0 || (objc_msgSend(v72, "isEqualToString:", @"IndicatorUpdateRampAOD") & 1) != 0 || (objc_msgSend(v72, "isEqualToString:", @"IndicatorRampFinishedAOD"))
    {
      [(CBDisplayModuleiOS *)v75 sendNotificationForKey:v72 withValue:v73];
      goto LABEL_173;
    }

    if (([v72 isEqualToString:@"DisplayBrightness"] & 1) == 0 || v75->_brightnessControlEnabled)
    {
      if ([v72 isEqualToString:@"SBIMEnabled"])
      {
        if (CFBooleanGetValue(v73))
        {
          [(CBSBIM *)v75->_sbim enable];
        }

        else
        {
          [(CBSBIM *)v75->_sbim disable];
        }

        v76 = 1;
      }

      else if ([v72 isEqualToString:@"FrameInfoLoggingEnabled"])
      {
        [(CBFrameStats *)v75->_frameStats enableFrameInfoLogging:CFBooleanGetValue(v73) != 0];
        v76 = 1;
      }

      else
      {
        if (([v72 isEqualToString:@"AuroraFactorWithFade"] & 1) == 0)
        {
          if ([v72 isEqualToString:@"TwilightStrength"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CBDisplayModuleiOS *)v75 sendNotificationForKey:@"TwilightStrength" withValue:v73];
            }
          }

          else
          {
            if (CFEqual(v72, @"DominoStateUpdate"))
            {
              TypeID = CFBooleanGetTypeID();
              if (TypeID == CFGetTypeID(v73))
              {
                Value = CFBooleanGetValue(v73);
                if (v75->_dominoMode != Value)
                {
                  v75->_dominoMode = Value != 0;
                  if (v75->_dominoMode)
                  {
                    if ([(CBDisplayModuleiOS *)v75 edrIsEngaged])
                    {
                      context = objc_autoreleasePoolPush();
                      if (v75->super.super._logHandle)
                      {
                        v38 = v75->super.super._logHandle;
                      }

                      else
                      {
                        if (_COREBRIGHTNESS_LOG_DEFAULT)
                        {
                          v37 = _COREBRIGHTNESS_LOG_DEFAULT;
                        }

                        else
                        {
                          v37 = init_default_corebrightness_log();
                        }

                        v38 = v37;
                      }

                      v60 = v38;
                      v59 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                      {
                        __os_log_helper_16_0_1_8_0(v88, 0x3FF0000000000000);
                        _os_log_error_impl(&dword_1DE8E5000, v60, v59, "Domino EDR | Entering Domino, reducing EDR headroom to %f", v88, 0xCu);
                      }

                      v86[0] = @"DominoHeadroomRequest";
                      v87[0] = MEMORY[0x1E695E118];
                      v86[1] = [(CBBrightnessProxy *)v75->_brtCtl brightnessRequestEDRHeadroom];
                      v87[1] = &unk_1F59C9678;
                      -[CBDisplayModuleiOS setProperty:forKey:](v75, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2], @"EDRHeadroomRequest");
                      objc_autoreleasePoolPop(context);
                    }
                  }

                  else if (v75->_lastEDRHeadroomRequestFromCA)
                  {
                    v36 = objc_autoreleasePoolPush();
                    v58 = [v75->_lastEDRHeadroomRequestFromCA mutableCopy];
                    [v58 setValue:MEMORY[0x1E695E118] forKey:@"DominoHeadroomRequest"];
                    if (v75->super.super._logHandle)
                    {
                      v35 = v75->super.super._logHandle;
                    }

                    else
                    {
                      if (_COREBRIGHTNESS_LOG_DEFAULT)
                      {
                        v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                      }

                      else
                      {
                        v34 = init_default_corebrightness_log();
                      }

                      v35 = v34;
                    }

                    oslog = v35;
                    v56 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      [objc_msgSend(v58 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](v75->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                      __os_log_helper_16_0_1_8_0(v85, COERCE__INT64(v12));
                      _os_log_impl(&dword_1DE8E5000, oslog, v56, "Domino EDR | Domino is exiting Restoring EDR headroom after exiting to %f", v85, 0xCu);
                    }

                    [(CBDisplayModuleiOS *)v75 setProperty:v58 forKey:@"EDRHeadroomRequest"];
                    objc_autoreleasePoolPop(v36);
                  }

                  v33 = 0;
                  if (v75->_brightnessControlEnabled)
                  {
                    v33 = !v75->_dominoMode;
                  }

                  -[CBDisplayModuleiOS sendNotificationForKey:withValue:](v75, "sendNotificationForKey:withValue:", @"CBBrightnessControlAvailable", [MEMORY[0x1E696AD98] numberWithBool:v33]);
                }
              }
            }

            else
            {
              if (CFEqual(v72, @"AmbientAdaptiveDimming"))
              {
                if (v73)
                {
                  v32 = CFDictionaryGetTypeID();
                  if (v32 == CFGetTypeID(v73))
                  {
                    valuePtr = 0;
                    cf = CFDictionaryGetValue(v73, @"AmbientAdaptiveDimmingEnable");
                    if (cf)
                    {
                      v31 = CFNumberGetTypeID();
                      if (v31 == CFGetTypeID(cf))
                      {
                        CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
                      }
                    }

                    v53 = 0;
                    v52 = CFDictionaryGetValue(v73, @"AmbientAdaptiveDimmingPeriod");
                    if (v52)
                    {
                      v30 = CFNumberGetTypeID();
                      if (v30 == CFGetTypeID(v52))
                      {
                        CFNumberGetValue(v52, kCFNumberFloatType, &v53);
                      }
                    }

                    if (v75->_autoDimActive != valuePtr)
                    {
                      v75->_autoDimActive = valuePtr != 0;
                      if (v75->_autoDimActive)
                      {
                        if ([(CBDisplayModuleiOS *)v75 edrIsEngaged])
                        {
                          v29 = objc_autoreleasePoolPush();
                          if (v75->super.super._logHandle)
                          {
                            v28 = v75->super.super._logHandle;
                          }

                          else
                          {
                            if (_COREBRIGHTNESS_LOG_DEFAULT)
                            {
                              v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                            }

                            else
                            {
                              v27 = init_default_corebrightness_log();
                            }

                            v28 = v27;
                          }

                          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                          {
                            __os_log_helper_16_0_1_8_0(v84, COERCE__INT64(v75->_appliedHeadroom));
                            _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_DEFAULT, "AutoDim EDR | Entering AutoDim, freezing EDR headroom to %f", v84, 0xCu);
                          }

                          v26 = v75;
                          v82[0] = @"AutoDimHeadroomRequest";
                          v83[0] = MEMORY[0x1E695E118];
                          v82[1] = [(CBBrightnessProxy *)v75->_brtCtl brightnessRequestEDRHeadroom];
                          *&v13 = v75->_appliedHeadroom;
                          v83[1] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
                          -[CBDisplayModuleiOS setProperty:forKey:](v26, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2], @"EDRHeadroomRequest");
                          objc_autoreleasePoolPop(v29);
                        }
                      }

                      else if (v75->_lastEDRHeadroomRequestFromCA)
                      {
                        v25 = objc_autoreleasePoolPush();
                        v51 = [v75->_lastEDRHeadroomRequestFromCA mutableCopy];
                        [v51 setValue:MEMORY[0x1E695E118] forKey:@"AutoDimHeadroomRequest"];
                        if (v75->super.super._logHandle)
                        {
                          v24 = v75->super.super._logHandle;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v23 = init_default_corebrightness_log();
                          }

                          v24 = v23;
                        }

                        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                        {
                          [objc_msgSend(v51 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](v75->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                          __os_log_helper_16_0_1_8_0(v81, COERCE__INT64(v14));
                          _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "AutoDim EDR | AutoDim is exiting, restoring EDR headroom to %f", v81, 0xCu);
                        }

                        [(CBDisplayModuleiOS *)v75 setProperty:v51 forKey:@"EDRHeadroomRequest"];
                        objc_autoreleasePoolPop(v25);
                      }
                    }

                    v71 = DisplaySetProperty(v75->_displayInternal, v72, v73) != 0;
                  }
                }

                goto LABEL_173;
              }

              if (v75->_brtCtl)
              {
                if ([v72 isEqualToString:@"EcoMode"])
                {
                  v50 = [v73 BOOLValue];
                  if (v75->_ecoMode != v50)
                  {
                    v75->_ecoMode = v50 != 0;
                    [(AABCHistograms *)v75->_analyticsHist setEcoModeOn:v50 != 0];
                    if (v75->_ecoMode)
                    {
                      if ([(CBDisplayModuleiOS *)v75 edrIsEngaged])
                      {
                        v22 = objc_autoreleasePoolPush();
                        if (v75->super.super._logHandle)
                        {
                          v21 = v75->super.super._logHandle;
                        }

                        else
                        {
                          if (_COREBRIGHTNESS_LOG_DEFAULT)
                          {
                            v20 = _COREBRIGHTNESS_LOG_DEFAULT;
                          }

                          else
                          {
                            v20 = init_default_corebrightness_log();
                          }

                          v21 = v20;
                        }

                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          __os_log_helper_16_0_1_8_0(v80, 0x3FF0000000000000);
                          _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "EcoMode EDR | Entering EcoMode Reducing EDR headroom to %f", v80, 0xCu);
                        }

                        v78[0] = @"EcoModeHeadroomRequest";
                        v79[0] = MEMORY[0x1E695E118];
                        v78[1] = [(CBBrightnessProxy *)v75->_brtCtl brightnessRequestEDRHeadroom];
                        v79[1] = &unk_1F59C9678;
                        -[CBDisplayModuleiOS setProperty:forKey:](v75, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2], @"EDRHeadroomRequest");
                        objc_autoreleasePoolPop(v22);
                      }
                    }

                    else if (v75->_lastEDRHeadroomRequestFromCA)
                    {
                      v19 = objc_autoreleasePoolPush();
                      v49 = [v75->_lastEDRHeadroomRequestFromCA mutableCopy];
                      [v49 setValue:MEMORY[0x1E695E118] forKey:@"EcoModeHeadroomRequest"];
                      if (v75->super.super._logHandle)
                      {
                        v18 = v75->super.super._logHandle;
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

                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        [objc_msgSend(v75->_lastEDRHeadroomRequestFromCA objectForKeyedSubscript:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](v75->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
                        __os_log_helper_16_0_1_8_0(v77, COERCE__INT64(v15));
                        _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "EcoMode EDR | EcoMode is exiting Restoring EDR headroom after exiting to %f", v77, 0xCu);
                      }

                      [(CBDisplayModuleiOS *)v75 setProperty:v49 forKey:@"EDRHeadroomRequest"];
                      objc_autoreleasePoolPop(v19);
                    }
                  }
                }
              }
            }

            v71 = DisplaySetProperty(v75->_displayInternal, v72, v73) != 0;
          }

LABEL_173:
          v76 = v71;
          goto LABEL_174;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_173;
        }

        [v73 objectForKeyedSubscript:@"AuroraFactor"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_173;
        }

        [v73 objectForKeyedSubscript:@"AuroraFadePeriod"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_173;
        }

        displayInternal = v75->_displayInternal;
        [objc_msgSend(v73 objectForKeyedSubscript:{@"AuroraFactor", "floatValue"}];
        v42 = v10;
        [objc_msgSend(v73 objectForKeyedSubscript:{@"AuroraFadePeriod", "floatValue"}];
        DisplaySetAuroraFactorWithFade(displayInternal, v42, v11);
        v76 = 1;
      }
    }

    else
    {
      v76 = 1;
    }
  }

LABEL_174:
  *MEMORY[0x1E69E9840];
  return v76 & 1;
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  if (self->super.super._logHandle)
  {
    logHandle = v34->super.super._logHandle;
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

  v30 = logHandle;
  v29 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v39, v32, v31);
    _os_log_debug_impl(&dword_1DE8E5000, v30, v29, "Handle notification for key = %@ and property = %@", v39, 0x16u);
  }

  v28 = [(CBAurora *)v34->_aurora isBoostingBrightness];
  [(CBAurora *)v34->_aurora setPropertyForKey:v32 withValue:v31];
  [(CBChromaticCorrection *)v34->_twilight handleNotificationForKey:v32 withProperty:v31];
  [(CBChromaticCorrection *)v34->_ammolite handleNotificationForKey:v32 withProperty:v31];
  [(CBChromaticCorrection *)v34->_gcp handleNotificationForKey:v32 withProperty:v31];
  [(CBIndicatorBrightnessModule *)v34->_indicatorBrightnessModule handleNotificationForKey:v32 withProperty:v31];
  if ([v32 isEqualToString:@"CBTargetWhitePoint"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v31 objectForKey:@"YWP"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v27 floatValue];
        v26 = 1.0 / v4;
        DisplaySetEDRForTargetYcompensation(v34->_displayInternal, 1.0 / v4);
      }
    }
  }

  else if ([v32 isEqualToString:@"BlueReductionEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34->_blrEnabled = [v31 BOOLValue];
      if (v34->super.super._logHandle)
      {
        v16 = v34->super.super._logHandle;
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
      v24 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v38, v31);
        _os_log_impl(&dword_1DE8E5000, v25, v24, "Set BLR enabled = %{public}@", v38, 0xCu);
      }

      DisplaySetBLREnabled(v34->_displayInternal, v34->_blrEnabled);
      if (CBU_IsSyncBrightnessTransactionsSupported())
      {
        [(CBAppliedCompensations *)v34->_appliedCompensations setBlrEnabled:v34->_blrEnabled];
      }
    }
  }

  else if ([v32 isEqualToString:@"ColorAdaptationActive"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34->_harmonyEnabled = [v31 BOOLValue];
      if (v34->super.super._logHandle)
      {
        v14 = v34->super.super._logHandle;
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
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v37, v31);
        _os_log_impl(&dword_1DE8E5000, v23, v22, "Set Harmony enabled = %{public}@", v37, 0xCu);
      }

      DisplaySetHarmonyEnabled(v34->_displayInternal, v34->_harmonyEnabled);
      if (CBU_IsSyncBrightnessTransactionsSupported())
      {
        [(CBAppliedCompensations *)v34->_appliedCompensations setHarmonyEnabled:v34->_harmonyEnabled];
      }
    }
  }

  else if ([v32 isEqualToString:@"TrustedLux"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v31 floatValue];
      v21 = *&v5;
      [(CBDisplayModuleiOS *)v34 updateBDMWithLux:v5];
      v34->_trustedLux = v21;
      if (v34->_brtCtl)
      {
        if (![+[CBAODState isAODActive] sharedInstance]
        {
          *&v6 = v34->_trustedLux;
          [(CBBrightnessProxy *)v34->_brtCtl setAmbient:v6];
          v20 = 0;
          if (([(CBBrightnessProxy *)v34->_brtCtl commitBrightness:&v20]& 1) == 0)
          {
            if (v34->super.super._logHandle)
            {
              v12 = v34->super.super._logHandle;
            }

            else
            {
              v11 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
              v12 = v11;
            }

            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v36, v20);
              _os_log_error_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_ERROR, "ERROR COMMITING LUX FROM CA!!!!!!! (%@)", v36, 0xCu);
            }
          }

          if (v34->super.super._logHandle)
          {
            v10 = v34->super.super._logHandle;
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

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_1_8_0(v35, COERCE__INT64(v34->_trustedLux));
            _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_INFO, "Set trusted lux = %f", v35, 0xCu);
          }
        }
      }
    }
  }

  else if ([v32 isEqualToString:@"FrameSynchronizedBrightnessTransaction"])
  {
    [(CBDisplayModuleiOS *)v34 handleDisplayBrightnessUpdate:v31];
  }

  else if ([v32 isEqualToString:@"CPMS.CLTM.Cap"] & 1) != 0 && !v28 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v31 floatValue];
    if (*&v7 < v34->_nitsSDR)
    {
      *&v8 = v34->_nitsSDR;
      [CBAnalytics cltmBudgetUpdated:v7 currentSDRBrightness:v8];
    }
  }

  else if ([v32 isEqualToString:@"AliasingMitigationActive"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34->_aliasingMitigationActive = [v31 BOOLValue];
    }
  }

  else if ([v32 isEqualToString:@"DisplayBrightnessAuto"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v31 BOOLValue];
      if ([(AABCHistograms *)v34->_analyticsHist autoBrightnessOn]!= (v19 & 1))
      {
        [(AABCHistograms *)v34->_analyticsHist setAutoBrightnessOn:v19 & 1];
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  if (self->super.super._notificationBlock)
  {
    (*(self->super.super._notificationBlock + 2))();
  }
}

- (id)copyPropertyInternalForKey:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  if (self->super.super._logHandle)
  {
    logHandle = v34->super.super._logHandle;
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

  v31 = logHandle;
  v30 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    log = v31;
    *type = v30;
    buf = v37;
    __os_log_helper_16_2_1_8_64(v37, v32);
    _os_log_impl(&dword_1DE8E5000, v31, v30, "Copy property for key = %@", v37, 0xCu);
  }

  v29 = 0;
  if ([v32 isEqualToString:@"StatusInfo"])
  {
    v28 = [CBStatusInfoHelper copyStatusInfoFor:v34];
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v28, @"CBDisplayModuleiOS", 0}];
    }

    MEMORY[0x1E69E5920](v28);
    goto LABEL_43;
  }

  if (([v32 isEqualToString:@"CBBrightnessControlAvailable"] & 1) == 0)
  {
    if ([v32 isEqualToString:@"CBBrightnessIsUnderAutoDimThreshold"])
    {
      v35 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v34->_brightnessIsUnderAutoDimThresholdCurrentValue];
      goto LABEL_52;
    }

    if ([v32 isEqualToString:@"EDRState"])
    {
      v35 = [(CBEDR *)v34->_edr copyStatusInfo];
      goto LABEL_52;
    }

    if ([v32 isEqualToString:kCBBrightnessCapToCA])
    {
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = v34->_currentCapToCA;
      v35 = [v4 initWithFloat:v5];
      goto LABEL_52;
    }

    if ([v32 isEqualToString:@"DisplayNitsMaxSDR"])
    {
      if (v34->_brtCtl)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v7 = v34->_maxNits;
        v29 = [v6 initWithFloat:v7];
LABEL_43:
        if (v34->super.super._logHandle)
        {
          v18 = v34->super.super._logHandle;
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

        oslog = v18;
        v26 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v14 = oslog;
          *v15 = v26;
          v16 = v36;
          __os_log_helper_16_2_2_8_64_8_64(v36, v32, v29);
          _os_log_debug_impl(&dword_1DE8E5000, v14, v15[0], "key=%@ result=%@", v16, 0x16u);
        }

        v35 = v29;
        goto LABEL_52;
      }
    }

    else if ([v32 isEqualToString:@"DisplayNitsMaxEDR"])
    {
      if (v34->_brtCtl)
      {
        v8 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v9 = v34->_maxNitsEDR;
        v29 = [v8 initWithFloat:v9];
        goto LABEL_43;
      }
    }

    else
    {
      if (([v32 isEqualToString:@"DisplayNitsMaxPanel"] & 1) == 0)
      {
        if ([v32 isEqualToString:@"DisplayNitsMaxAurora"])
        {
          if (v34->_aurora)
          {
            v29 = [(CBAurora *)v34->_aurora copyPropertyForKey:v32];
          }
        }

        else if ([v32 isEqualToString:@"IndicatorModule"])
        {
          v29 = MEMORY[0x1E69E5928](v34->_indicatorBrightnessModule);
        }

        else
        {
          v29 = [(CBIndicatorBrightnessModule *)v34->_indicatorBrightnessModule copyPropertyForKey:v32];
          if (!v29)
          {
            v29 = DisplayCopyProperty(v34->_displayInternal, v32);
          }
        }

        goto LABEL_43;
      }

      if (v34->_brtCtl)
      {
        v10 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v11 = v34->_maxNitsPanel;
        v29 = [v10 initWithFloat:v11];
        goto LABEL_43;
      }
    }

    v29 = DisplayCopyProperty(v34->_displayInternal, @"DisplayPanelLuminanceMax");
    goto LABEL_43;
  }

  v19 = objc_alloc(MEMORY[0x1E696AD98]);
  brightnessControlEnabled = v34->_brightnessControlEnabled;
  v20 = 0;
  if (brightnessControlEnabled)
  {
    v20 = !v34->_dominoMode;
  }

  v35 = [v19 initWithBool:v20 & 1];
LABEL_52:
  v13 = v35;
  *MEMORY[0x1E69E9840];
  return v35;
}

- (void)handleEDRHeadroomRequest:(id)a3
{
  v122 = *MEMORY[0x1E69E9840];
  v115 = self;
  v114 = a2;
  v113 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v113 objectForKey:{-[CBBrightnessProxy brightnessRequestEDRHeadroom](v115->_brtCtl, "brightnessRequestEDRHeadroom")), "floatValue"}];
    v112 = *&v3;
    [(CBEDR *)v115->_edr clampHeadroom:v3];
    v112 = *&v4;
    [(CBSBIM *)v115->_sbim setCurrentHeadroomRequest:v4];
    if (v115->_sbim)
    {
      [(CBSBIM *)v115->_sbim cap];
      if (v112 > v5)
      {
        if (v115->super.super._logHandle)
        {
          logHandle = v115->super.super._logHandle;
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

        v111 = logHandle;
        v110 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          [(CBSBIM *)v115->_sbim cap];
          __os_log_helper_16_0_2_8_0_8_0(v121, COERCE__INT64(v112), COERCE__INT64(v6));
          _os_log_impl(&dword_1DE8E5000, v111, v110, "EDR headroom is being capped by SBIM: request=%f cap=%f", v121, 0x16u);
        }

        [(CBSBIM *)v115->_sbim cap];
        v112 = v7;
      }
    }

    v63 = [v113 objectForKeyedSubscript:@"AuroraEDRHeadroomRequest"];
    if (v63 != *MEMORY[0x1E695E4D0] && ((*&v8 = v112, [(CBAurora *)v115->_aurora setCurrentEDRHeadroomRequest:v8], [(CBAurora *)v115->_aurora isActive]) || [(CBAurora *)v115->_aurora isBoostingBrightness]))
    {
      if (v115->super.super._logHandle)
      {
        v62 = v115->super.super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v61 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v61 = init_default_corebrightness_log();
        }

        v62 = v61;
      }

      v109 = v62;
      v108 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v109;
        v60 = v108;
        __os_log_helper_16_0_0(v107);
        _os_log_impl(&dword_1DE8E5000, v59, v60, "Discarding EDR headroom request, Aurora is active", v107, 2u);
      }
    }

    else
    {
      [v113 objectForKeyedSubscript:@"AODEDRHeadroomRequest"];
      objc_opt_class();
      v58 = 0;
      if (objc_opt_isKindOfClass())
      {
        v58 = [objc_msgSend(v113 objectForKeyedSubscript:{@"AODEDRHeadroomRequest", "BOOLValue"}];
      }

      v106 = v58 & 1;
      if (![+[CBAODState isAODActive]|| (v106 & 1) != 0 sharedInstance]
      {
        v102 = float_equal(v112, 1.0);
        v53 = 0;
        if (v112 > 1.0)
        {
          v53 = float_equal(v115->_requestedHeadroom, 1.0);
        }

        v101 = v53;
        v100 = !float_equal(v115->_requestedHeadroom, v112);
        v52 = 0;
        if (v100)
        {
          v52 = v112 < v115->_appliedHeadroom;
        }

        v99 = v52;
        [v113 objectForKeyedSubscript:@"EcoModeHeadroomRequest"];
        objc_opt_class();
        v51 = 0;
        if (objc_opt_isKindOfClass())
        {
          v51 = [objc_msgSend(v113 objectForKeyedSubscript:{@"EcoModeHeadroomRequest", "BOOLValue"}];
        }

        v98 = v51 & 1;
        if (!v115->_ecoMode || v115->_referenceModeIsActive || (v98 & 1) != 0 || v102)
        {
          [v113 objectForKeyedSubscript:@"DominoHeadroomRequest"];
          objc_opt_class();
          v46 = 0;
          if (objc_opt_isKindOfClass())
          {
            v46 = [objc_msgSend(v113 objectForKeyedSubscript:{@"DominoHeadroomRequest", "BOOLValue"}];
          }

          v94 = v46 & 1;
          if (!v115->_dominoMode || (v94 & 1) != 0)
          {
            [v113 objectForKeyedSubscript:@"AutoDimHeadroomRequest"];
            objc_opt_class();
            v41 = 0;
            if (objc_opt_isKindOfClass())
            {
              v41 = [objc_msgSend(v113 objectForKeyedSubscript:{@"AutoDimHeadroomRequest", "BOOLValue"}];
            }

            v90 = v41 & 1;
            if (!v115->_autoDimActive || (v90 & 1) != 0 || v102)
            {
              if (v101)
              {
                if ([(CBBacklightNode *)v115->_backlightParams rtplc])
                {
                  v81[0] = 0;
                  v81[1] = v81;
                  v82 = 1375731712;
                  v83 = 48;
                  v84 = __Block_byref_object_copy_;
                  v85 = __Block_byref_object_dispose_;
                  v86 = v115;
                  v73 = MEMORY[0x1E69E9820];
                  v74 = -1073741824;
                  v75 = 0;
                  v76 = __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke;
                  v77 = &unk_1E867B5F0;
                  v79 = v81;
                  v78 = v115;
                  v80 = &v73;
                  [(CBFrameStats *)v115->_frameStats startMonitoring:&v73];
                  if (v115->_rtplcState == 2 || v115->_rtplcState == 1)
                  {
                    LODWORD(v10) = 0.5;
                    [(CBDisplayModuleiOS *)v115 createAPCEMonitorWithFrequency:v10];
                  }

                  _Block_object_dispose(v81, 8);
                }

                *&v9 = v112;
                [(CBDisplayModuleiOS *)v115 updateEDRStateForEvent:2 andHeadroom:v9];
              }

              if (v100)
              {
                if (v112 <= v115->_sbimEDRThreshold)
                {
                  [(CBSBIM *)v115->_sbim exitEDR];
                }

                else
                {
                  [(CBSBIM *)v115->_sbim enterEDR];
                }
              }

              if (v102)
              {
                if ([(CBBacklightNode *)v115->_backlightParams rtplc])
                {
                  [(CBFrameStats *)v115->_frameStats stopMonitoring];
                  [(CBDisplayModuleiOS *)v115 deleteAPCEMonitor];
                }

                *&v11 = v112;
                [(CBDisplayModuleiOS *)v115 updateEDRStateForEvent:3 andHeadroom:v11];
              }

              v72 = [(CBDisplayModuleiOS *)v115 edrIsEngaged];
              displayInternal = v115->_displayInternal;
              if (v72)
              {
                DisplaySetProperty(displayInternal, @"DisplayFasterEDREngaged", *MEMORY[0x1E695E4D0]);
              }

              else
              {
                DisplaySetProperty(displayInternal, @"DisplayFasterEDREngaged", *MEMORY[0x1E695E4C0]);
              }

              v115->_requestedHeadroom = v112;
              v71 = 1.0;
              v70 = 0.0;
              [v113 objectForKeyedSubscript:@"EDRSecondsPerStop"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [objc_msgSend(v113 objectForKeyedSubscript:{@"EDRSecondsPerStop", "floatValue"}];
                v68 = v12;
                if (v115->super.super._logHandle)
                {
                  v35 = v115->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v34 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v34 = init_default_corebrightness_log();
                  }

                  v35 = v34;
                }

                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_1_8_0(v120, COERCE__INT64(v68));
                  _os_log_impl(&dword_1DE8E5000, v35, OS_LOG_TYPE_DEFAULT, "HDR | Transition is using the seconds per stop specified in request = %f", v120, 0xCu);
                }

                *&v13 = v115->_requestedHeadroom;
                *&v14 = v68;
                v69 = [(CBEDR *)v115->_edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v13 durationPerStop:v14];
              }

              else if (v102 || v99)
              {
                if (v115->super.super._logHandle)
                {
                  v33 = v115->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v32 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v32 = init_default_corebrightness_log();
                  }

                  v33 = v32;
                }

                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = @"Exit transition";
                  if (!v102)
                  {
                    v15 = @"Transition to lower headroom";
                  }

                  v31 = v15;
                  [(CBEDR *)v115->_edr secondsPerStopExit];
                  __os_log_helper_16_2_2_8_64_8_0(v119, v31, COERCE__INT64(v16));
                  _os_log_impl(&dword_1DE8E5000, v33, OS_LOG_TYPE_DEFAULT, "HDR | %@ is using the exit duration per stop = %f", v119, 0x16u);
                }

                edr = v115->_edr;
                requestedHeadroom = v115->_requestedHeadroom;
                [(CBEDR *)edr secondsPerStopExit];
                LODWORD(v18) = v17;
                *&v19 = requestedHeadroom;
                v69 = [(CBEDR *)edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v19 durationPerStop:v18];
              }

              else
              {
                if (v115->super.super._logHandle)
                {
                  v28 = v115->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v27 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v27 = init_default_corebrightness_log();
                  }

                  v28 = v27;
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  [(CBEDR *)v115->_edr secondsPerStop];
                  __os_log_helper_16_0_1_8_0(v118, COERCE__INT64(v21));
                  _os_log_impl(&dword_1DE8E5000, v28, OS_LOG_TYPE_DEFAULT, "HDR | Transition is using the default duration per stop = %f", v118, 0xCu);
                }

                *&v20 = v115->_requestedHeadroom;
                v69 = [(CBEDR *)v115->_edr shouldUpdateEDRForRequestedHeadroom:&v71 targetHeadroom:&v70 rampTime:v20];
              }

              if ([v113 objectForKeyedSubscript:{-[CBBrightnessProxy brightnessNotificationPowerOff](v115->_brtCtl, "brightnessNotificationPowerOff")}])
              {
                v69 = 1;
                [(CBEDR *)v115->_edr resetRequestedHeadroom];
              }

              v67 = [v113 objectForKey:{-[CBBrightnessProxy brightnessRequestRampDuration](v115->_brtCtl, "brightnessRequestRampDuration")}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v67 floatValue];
                v66 = v22;
                if (v115->super.super._logHandle)
                {
                  v26 = v115->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v25 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v25 = init_default_corebrightness_log();
                  }

                  v26 = v25;
                }

                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_3_8_0_8_0_8_0(v117, COERCE__INT64(v115->_requestedHeadroom), COERCE__INT64(v115->_appliedHeadroom), COERCE__INT64(v66));
                  _os_log_impl(&dword_1DE8E5000, v26, OS_LOG_TYPE_DEFAULT, "HDR | CA request for headroom: %f, currrent headroom: %f, transitionTime: %f", v117, 0x20u);
                }

                DisplayStartFastEDRRamp(v115->_displayInternal, v115->_requestedHeadroom, v66);
              }

              else if (v69)
              {
                if (v115->super.super._logHandle)
                {
                  v24 = v115->super.super._logHandle;
                }

                else
                {
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v23 = _COREBRIGHTNESS_LOG_DEFAULT;
                  }

                  else
                  {
                    v23 = init_default_corebrightness_log();
                  }

                  v24 = v23;
                }

                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_0_3_8_0_8_0_8_0(v116, COERCE__INT64(v115->_requestedHeadroom), *&v70, COERCE__INT64(v71));
                  _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_DEFAULT, "HDR | Received EDRHeadroomRequest: %f, evaluated ramp time: %f, targetHeadroom: %f", v116, 0x20u);
                }

                DisplayStartFastEDRRamp(v115->_displayInternal, v71, v70);
              }
            }

            else
            {
              if (v115->super.super._logHandle)
              {
                v40 = v115->super.super._logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v39 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v39 = init_default_corebrightness_log();
                }

                v40 = v39;
              }

              v89 = v40;
              v88 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v37 = v89;
                v38 = v88;
                __os_log_helper_16_0_0(v87);
                _os_log_impl(&dword_1DE8E5000, v37, v38, "AutoDim EDR | Discarding AutoDim EDR headroom request, AutoDim is on", v87, 2u);
              }
            }
          }

          else
          {
            if (v115->super.super._logHandle)
            {
              v45 = v115->super.super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v44 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v44 = init_default_corebrightness_log();
              }

              v45 = v44;
            }

            v93 = v45;
            v92 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v93;
              v43 = v92;
              __os_log_helper_16_0_0(v91);
              _os_log_impl(&dword_1DE8E5000, v42, v43, "Domino EDR | Discarding Domino EDR headroom request, Domino is on", v91, 2u);
            }
          }
        }

        else
        {
          if (v115->super.super._logHandle)
          {
            v50 = v115->super.super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v49 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v49 = init_default_corebrightness_log();
            }

            v50 = v49;
          }

          v97 = v50;
          v96 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v97;
            v48 = v96;
            __os_log_helper_16_0_0(v95);
            _os_log_impl(&dword_1DE8E5000, v47, v48, "EcoMode EDR | Discarding EDR headroom request, EcoMode is on", v95, 2u);
          }
        }
      }

      else
      {
        if (v115->super.super._logHandle)
        {
          v57 = v115->super.super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v56 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v56 = init_default_corebrightness_log();
          }

          v57 = v56;
        }

        v105 = v57;
        v104 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v105;
          v55 = v104;
          __os_log_helper_16_0_0(v103);
          _os_log_impl(&dword_1DE8E5000, v54, v55, "AOD EDR | Discarding EDR headroom request, AOD is on", v103, 2u);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke(uint64_t a1, _OWORD *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = *(*(*(*(a1 + 40) + 8) + 40) + 24);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke_2;
  v8 = &unk_1E867B5C8;
  v10 = *(a1 + 40);
  v11 = *a2;
  v12 = a2[1];
  v9 = *(a1 + 32);
  dispatch_async(v3, &block);
}

uint64_t __47__CBDisplayModuleiOS_handleEDRHeadroomRequest___block_invoke_2(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = *(a1 + 48);
  v7[1] = *(a1 + 64);
  [v2 handleFrameInfo:v7];
  v3 = *(*(a1 + 32) + 272);
  v6[0] = *(a1 + 48);
  v6[1] = *(a1 + 64);
  return [v3 processFrameInfo:v6];
}

- (void)handleDisplayBrightnessUpdate:(id)a3
{
  v344 = v367;
  v345 = "Brightness Cap";
  v397 = *MEMORY[0x1E69E9840];
  v383 = self;
  v382 = a2;
  v381 = a3;
  v346 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(*(v344 + 32) objectForKey:{@"NitsPhysical", "floatValue"}];
    v3 = v344;
    *(v344 + 63) = v4;
    [objc_msgSend(*(v3 + 32) objectForKey:{@"EDRHeadroom", "floatValue"}];
    v5 = v344;
    *(v344 + 62) = v6;
    [objc_msgSend(*(v5 + 32) objectForKey:{@"NitsCap", "floatValue"}];
    v7 = v344;
    *(v344 + 61) = v8;
    [objc_msgSend(*(v7 + 32) objectForKey:{@"DynSliderCap", "floatValue"}];
    v9 = v344;
    *(*(v344 + 34) + 120) = v10;
    if (*(v9 + 63) < 0.0)
    {
      if (*(*(v344 + 34) + 16))
      {
        v219 = *(*(v344 + 34) + 16);
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

        v219 = inited;
      }

      v348 = v219;
      v347 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
      {
        v215[15] = v348;
        *v216 = v347;
        *&v214 = *(v344 + 63);
        v217 = v384;
        __os_log_helper_16_0_1_8_0(v384, v214);
        _os_log_impl(&dword_1DE8E5000, v348, v347, "Unexpected SDR brightness: %f, ignore", v384, 0xCu);
      }
    }

    else
    {
      v342 = *(*(v344 + 34) + 280);
      [v342 updateRampsForTimestamp:mach_time_now_in_seconds()];
      v11 = v344;
      *(*(v344 + 34) + 116) = *(v344 + 63);
      [*(v11 + 34) compensatedSDRNits];
      v12 = *(v344 + 34);
      v343 = 0x1ECDAF000uLL;
      [*(v12 + 136) setSdrBrightness:?];
      LODWORD(v13) = *(v344 + 61);
      [*(*(v344 + 34) + 136) setBrightnessCap:v13];
      LODWORD(v14) = *(v344 + 63);
      [*(*(v344 + 34) + 144) setSdrBrightness:v14];
      if ([*(*(v344 + 34) + 336) rtplc])
      {
        if (*(*(v344 + 34) + 240) == 2 || *(*(v344 + 34) + 240) == 1 || *(*(v344 + 34) + 240) == 3)
        {
          *&v15 = DisplayGetCurrentRTPLCHeadroomCap(*(*(v344 + 34) + 328));
          v16 = v344;
          *(v344 + 60) = LODWORD(v15);
          *(*(v16 + 34) + 232) = fminf(*(v16 + 60), *(*(v16 + 34) + 108));
        }

        *&v15 = fminf(*(*(v344 + 34) + 232), *(v344 + 61));
        [*(*(v344 + 34) + 136) setBrightnessCap:v15];
        if (*(*(v344 + 34) + 16))
        {
          v341 = *(*(v344 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v340 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v340 = init_default_corebrightness_log();
          }

          v341 = v340;
        }

        v17 = v344;
        *(v344 + 29) = v341;
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(*(v17 + 29), OS_LOG_TYPE_INFO))
        {
          log = *(v344 + 29);
          *v338 = type;
          v18 = [*(v344 + 34) rtplcStateToString:*(*(v344 + 34) + 240)];
          *&v19 = *(*(v344 + 34) + 232);
          *&v20 = *(v344 + 61);
          *&v21 = *(*(v344 + 34) + 120);
          *&v22 = *(*(v344 + 34) + 116);
          buf = v396;
          __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v396, v18, v19, v20, v21, v22);
          _os_log_impl(&dword_1DE8E5000, log, v338[0], "HDR CAPS | RTPLC: [%s] %f, currentNitCap: %f, dynSliderCap: %f, Nits: %f", v396, 0x34u);
        }
      }

      v23 = [*(*(v344 + 34) + 136) copyStatusInfo];
      v24 = v344;
      *(v344 + 27) = v23;
      if (*(v24 + 27))
      {
        v336 = *(v344 + 27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (*(*(v344 + 34) + 16))
          {
            v335 = *(*(v344 + 34) + 16);
          }

          else
          {
            v334 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v335 = v334;
          }

          v25 = v344;
          *(v344 + 26) = v335;
          v379 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v25 + 26), OS_LOG_TYPE_DEBUG))
          {
            v320 = *(v344 + 26);
            *v321 = v379;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"AvailableHeadroom", "floatValue"}];
            *&v322 = v26;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"BrightnessCap", "floatValue"}];
            *&v323 = v27;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"HDRMax", "floatValue"}];
            *&v324 = v28;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"Headroom", "floatValue"}];
            *&v325 = v29;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"MaxHeadroom", "floatValue"}];
            *&v326 = v30;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"PanelMax", "floatValue"}];
            *&v327 = v31;
            v328 = [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"RampPolicy", "unsignedLongValue"}];
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"ReferenceHeadroom", "floatValue"}];
            *&v329 = v32;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"RequestedHeadroom", "floatValue"}];
            *&v330 = v33;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"SDR", "floatValue"}];
            *&v331 = v34;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"SecPerStop", "floatValue"}];
            *&v332 = v35;
            [objc_msgSend(*(v344 + 27) objectForKeyedSubscript:{@"SecPerStopExit", "floatValue"}];
            *&v333 = v36;
            if ([*(*(v344 + 34) + 136) headroomModulator])
            {
              v319 = [objc_msgSend(*(*(v344 + 34) + 136) "headroomModulator")];
            }

            else
            {
              v319 = 0;
            }

            v318 = v395;
            __os_log_helper_16_0_13_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_4_0(v395, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v319 & 1);
            _os_log_debug_impl(&dword_1DE8E5000, v320, v321[0], "CBEDR statusInfo | AvailableHeadroom=%.3f | BrightnessCap=%.3f | HDRMax=%.3f | Headroom=%.3f | MaxHeadroom=%.3f | PanelMax=%.3f | RampPolicy=%lu | ReferenceHeadroom=%.3f | RequestedHeadroom=%.3f | Compensated.SDR=%.3f | SecPerStop=%.3f | SecPerStopExit=%.3f | ModulatorEnabled=%d", v395, 0x80u);
          }
        }
      }

      v37 = MEMORY[0x1E69E5920](*(v344 + 27));
      v37.n128_u32[0] = *(v344 + 62);
      [*(*(v344 + 34) + 136) cappedHeadroomFromUncapped:v37.n128_f64[0]];
      v38 = v344;
      *(*(v344 + 34) + 156) = v39;
      *(v38 + 50) = *(*(v38 + 34) + 108);
      if ([*(*(v38 + 34) + 48) isBoostingBrightness])
      {
        *(v344 + 50) = *(*(v344 + 34) + 112);
      }

      LODWORD(v40) = *(v344 + 63);
      v41 = *(v344 + 34);
      v317 = 0x1ECDAF000uLL;
      [*(v41 + 48) setCurrentNits:v40];
      LODWORD(v42) = *(*(v344 + 34) + 156);
      [*(*(v344 + 34) + 48) setCurrentEDRHeadroom:v42];
      if (![+[CBAODState isAODActive] sharedInstance]
      {
        LODWORD(v43) = *(v344 + 63);
        v44 = *(v344 + 34);
        v314 = 0x1ECDAF000uLL;
        [*(v44 + 56) setNits:v43];
        LODWORD(v45) = *(v344 + 63);
        v46 = *(v344 + 34);
        v315 = 0x1ECDAF000uLL;
        [*(v46 + 64) setNits:v45];
        LODWORD(v47) = *(v344 + 63);
        v48 = *(v344 + 34);
        v316 = 0x1ECDAF000uLL;
        [*(v48 + 72) setNits:v47];
        [*(*(v344 + 34) + 56) updateRamp];
        [*(*(v344 + 34) + 64) updateRamp];
        [*(*(v344 + 34) + 72) updateRamp];
      }

      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v50 = *(v344 + 34);
        v313 = 0x1ECDAF000uLL;
        LODWORD(v49) = *(*(v344 + 34) + 116);
        [*(v50 + 80) setSDRBrightness:v49];
        LODWORD(v51) = *(*(v344 + 34) + 156);
        [*(*(v344 + 34) + 80) setAppliedHeadroom:v51];
        [*(*(v344 + 34) + 80) updateRamp];
      }

      LODWORD(v49) = *(*(v344 + 34) + 156);
      [*(*(v344 + 34) + 144) setCurrentHeadroom:v49];
      v52 = v344;
      *(v344 + 49) = 0;
      if (*(*(v52 + 34) + 164))
      {
        *(v344 + 49) = *(v344 + 61);
      }

      else if ([*(v344 + 34) shouldForceCapRamp])
      {
        [*(v344 + 34) compensatedSDRNits];
        v53 = v344;
        *(v344 + 49) = fminf(v54 * *(*(v344 + 34) + 156), *(v344 + 50));
        if (*(*(v53 + 34) + 16))
        {
          v312 = *(*(v344 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v311 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v311 = init_default_corebrightness_log();
          }

          v312 = v311;
        }

        v55 = v344;
        *(v344 + 23) = v312;
        v378 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(*(v55 + 23), OS_LOG_TYPE_DEFAULT))
        {
          v308 = *(v344 + 23);
          *v309 = v378;
          *&v56 = *(*(v344 + 34) + 124);
          *&v57 = *(v344 + 49);
          *&v58 = *(*(v344 + 34) + 120);
          v310 = v394;
          __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v394, v345, v56, v57, v58);
          _os_log_impl(&dword_1DE8E5000, v308, v309[0], "[BRT update: %s]: currentCap: %f targetCap: %f dynSliderCap: %f", v394, 0x2Au);
        }

        v59 = v344;
        *(*(v344 + 34) + 124) = *(v344 + 49);
        DisplayClockCapRamp(*(*(v59 + 34) + 328));
        *(*(v344 + 34) + 128) = 1;
      }

      else if (*(*(v344 + 34) + 128))
      {
        if ((*(*(v344 + 34) + 124) - 10.0) <= *(*(v344 + 34) + 120) || *(*(v344 + 34) + 176) == 1)
        {
          DisplayStopCapRamp(*(*(v344 + 34) + 328));
          v60 = v344;
          *(v344 + 49) = fmaxf(*(*(v344 + 34) + 120), *(*(v344 + 34) + 124) - 10.0);
          *(*(v60 + 34) + 128) = 0;
        }

        else
        {
          v61 = v344;
          *(v344 + 49) = *(*(v344 + 34) + 124) - 10.0;
          *(*(v61 + 34) + 124) = *(*(v61 + 34) + 124) - 10.0;
        }
      }

      else
      {
        v307 = *(v344 + 61);
        v306 = *(*(v344 + 34) + 120);
        [*(v344 + 34) compensatedSDRNits];
        v62 = v344;
        *(v344 + 49) = fminf(v307, fmaxf(v306, fminf(v63 * *(*(v344 + 34) + 156), *(v344 + 50))));
        *(*(v62 + 34) + 124) = *(v62 + 49);
      }

      if ([*(*(v344 + 34) + 336) rtplc])
      {
        [*(v344 + 34) compensatedSDRNits];
        v65 = v344;
        *(v344 + 44) = v66 * *(*(v344 + 34) + 156);
        *(v65 + 43) = *(v65 + 44) / *(*(v65 + 34) + 116);
        if (*(*(v65 + 34) + 240) == 2)
        {
          if (*(*(v344 + 34) + 16))
          {
            v305 = *(*(v344 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v304 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v304 = init_default_corebrightness_log();
            }

            v305 = v304;
          }

          v67 = v344;
          *(v344 + 20) = v305;
          v377 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v67 + 20), OS_LOG_TYPE_DEBUG))
          {
            v301 = *(v344 + 20);
            *v302 = v377;
            *&v68 = *(v344 + 44);
            *&v69 = *(v344 + 43);
            *&v70 = *(v344 + 62);
            *&v71 = *(*(v344 + 34) + 160);
            *&v72 = *(*(v344 + 34) + 232);
            v303 = v393;
            __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v393, v68, v69, v70, v71, v72);
            _os_log_debug_impl(&dword_1DE8E5000, v301, v302[0], "HDR RTPLC RECOVERY: hdrBrightness = %f, hdrHeadroom = %f, currentHeadroom = %f, _requestedHeadroom = %f, rtplcCap = %f", v393, 0x34u);
          }

          if (*(v344 + 44) < *(*(v344 + 34) + 108))
          {
            if (*(v344 + 43) >= *(*(v344 + 34) + 160) && *(v344 + 44) < *(*(v344 + 34) + 232) && *(v344 + 62) <= *(v344 + 43))
            {
              if (*(*(v344 + 34) + 16))
              {
                v295 = *(*(v344 + 34) + 16);
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v294 = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  v294 = init_default_corebrightness_log();
                }

                v295 = v294;
              }

              v75 = v344;
              *(v344 + 16) = v295;
              v374 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(*(v75 + 16), OS_LOG_TYPE_DEFAULT))
              {
                v291 = *(v344 + 16);
                *v292 = v374;
                *&v76 = *(*(v344 + 34) + 232);
                *&v77 = *(*(v344 + 34) + 108);
                v293 = v392;
                __os_log_helper_16_0_2_8_0_8_0(v392, v76, v77);
                _os_log_impl(&dword_1DE8E5000, v291, v292[0], "HDR RTPLC RECOVERY COMPLETE -> EXITING RTPLC: ramp cap: %f --> %f", v392, 0x16u);
              }

              [*(v344 + 34) deleteAPCEMonitor];
              v78 = v344;
              *(*(v344 + 34) + 240) = 3;
              DisplayStartRTPLCEDRCapRamp(*(*(v78 + 34) + 328), 0, *(*(v78 + 34) + 232), *(*(v78 + 34) + 108), 4.0);
            }
          }

          else
          {
            v73 = v344;
            *(*(v344 + 34) + 232) = *(*(v344 + 34) + 108);
            *(*(v73 + 34) + 240) = 0;
            if (*(*(v73 + 34) + 16))
            {
              v300 = *(*(v344 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v299 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v299 = init_default_corebrightness_log();
              }

              v300 = v299;
            }

            v74 = v344;
            *(v344 + 18) = v300;
            v376 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v74 + 18), OS_LOG_TYPE_DEFAULT))
            {
              v296 = *(v344 + 18);
              *v297 = v376;
              v298 = v375;
              __os_log_helper_16_0_0(v375);
              _os_log_impl(&dword_1DE8E5000, v296, v297[0], "HDR RTPLC RECOVERY COMPLETE!!", v375, 2u);
            }

            [*(v344 + 34) deleteAPCEMonitor];
          }
        }

        else if (*(*(v344 + 34) + 240) == 1)
        {
          if (*(*(v344 + 34) + 16))
          {
            v290 = *(*(v344 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v289 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v289 = init_default_corebrightness_log();
            }

            v290 = v289;
          }

          v79 = v344;
          *(v344 + 14) = v290;
          v373 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v79 + 14), OS_LOG_TYPE_DEBUG))
          {
            v286 = *(v344 + 14);
            *v287 = v373;
            *&v80 = *(v344 + 44);
            *&v81 = *(*(v344 + 34) + 232);
            *&v82 = *(v344 + 43);
            *&v83 = *(v344 + 62);
            *&v84 = *(*(v344 + 34) + 160);
            v288 = v391;
            __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v391, v80, v81, v82, v83, v84);
            _os_log_debug_impl(&dword_1DE8E5000, v286, v287[0], "HDR RTPLC ACTION: hdrBrightness = %f, rtplcCap = %f, hdrHeadroom = %f, currentHeadroom = %f, _requestedHeadroom = %f", v391, 0x34u);
          }

          if (float_equal(*(*(v344 + 34) + 160), 1.0) && *(v344 + 44) < *(*(v344 + 34) + 232))
          {
            v85 = v344;
            *(*(v344 + 34) + 224) = 0;
            if (*(*(v85 + 34) + 16))
            {
              v285 = *(*(v344 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v284 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v284 = init_default_corebrightness_log();
              }

              v285 = v284;
            }

            v86 = v344;
            *(v344 + 12) = v285;
            v372 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v86 + 12), OS_LOG_TYPE_DEFAULT))
            {
              v281 = *(v344 + 12);
              *v282 = v372;
              *&v87 = *(*(v344 + 34) + 232);
              *&v88 = *(*(v344 + 34) + 108);
              v283 = v390;
              __os_log_helper_16_0_2_8_0_8_0(v390, v87, v88);
              _os_log_impl(&dword_1DE8E5000, v281, v282[0], "HDR RTPLC RELEASED AND RECOVERY COMPLETE -> EXITING RTPLC: ramp cap: %f --> %f", v390, 0x16u);
            }

            [*(v344 + 34) deleteAPCEMonitor];
            v89 = v344;
            *(*(v344 + 34) + 240) = 3;
            DisplayStartRTPLCEDRCapRamp(*(*(v89 + 34) + 328), 0, *(*(v89 + 34) + 232), *(*(v89 + 34) + 108), 4.0);
          }
        }

        else if (*(*(v344 + 34) + 240) == 3)
        {
          if (*(*(v344 + 34) + 16))
          {
            v280 = *(*(v344 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v279 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v279 = init_default_corebrightness_log();
            }

            v280 = v279;
          }

          v90 = v344;
          *(v344 + 10) = v280;
          v371 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(*(v90 + 10), OS_LOG_TYPE_DEBUG))
          {
            v276 = *(v344 + 10);
            *v277 = v371;
            *&v91 = *(*(v344 + 34) + 232);
            *&v92 = *(*(v344 + 34) + 108);
            v278 = v389;
            __os_log_helper_16_0_2_8_0_8_0(v389, v91, v92);
            _os_log_debug_impl(&dword_1DE8E5000, v276, v277[0], "HDR RTPLC EXIT: _rtplcCap = %f (_maxNitsEDR = %f)", v389, 0x16u);
          }

          if (float_equal(*(*(v344 + 34) + 232), *(*(v344 + 34) + 108)))
          {
            if (*(*(v344 + 34) + 16))
            {
              v275 = *(*(v344 + 34) + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v274 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v274 = init_default_corebrightness_log();
              }

              v275 = v274;
            }

            v93 = v344;
            *(v344 + 8) = v275;
            v370 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(*(v93 + 8), OS_LOG_TYPE_DEFAULT))
            {
              v271 = *(v344 + 8);
              *v272 = v370;
              v273 = v369;
              __os_log_helper_16_0_0(v369);
              _os_log_impl(&dword_1DE8E5000, v271, v272[0], "RTPLC EXIT COMPLETE!!", v369, 2u);
            }

            *(*(v344 + 34) + 240) = 0;
          }
        }

        if (float_equal(*(*(v344 + 34) + 156), 1.0))
        {
          v94 = v344;
          *(*(v344 + 34) + 232) = *(*(v344 + 34) + 108);
          *(*(v94 + 34) + 240) = 0;
        }
      }

      LODWORD(v64) = *(v344 + 62);
      [*(v344 + 34) updateEDRStateForEvent:4 andHeadroom:v64];
      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v95 = v344;
        v96 = (*(v344 + 34) + 248);
        v97 = (*v96)++;
        *(v95 + 6) = v97;
        *(v95 + 11) = 2143289344;
        v270 = [*(v95 + 32) objectForKey:@"ContrastEnhancerStrength"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(*(v344 + 32) objectForKey:{@"ContrastEnhancerStrength", "floatValue"}];
          *(v344 + 11) = v98;
        }

        v99 = v344;
        *(v344 + 10) = 2143289344;
        if (*(*(v99 + 34) + 56))
        {
          [*(*(v344 + 34) + 56) currentStrength];
          *(v344 + 10) = v100;
        }

        v101 = v344;
        *(v344 + 9) = 2143289344;
        if (*(*(v101 + 34) + 64))
        {
          [*(*(v344 + 34) + 64) currentStrength];
          *(v344 + 9) = v102;
        }

        if (*(*(v344 + 34) + 72))
        {
          [*(*(v344 + 34) + 72) currentStrength];
          v269 = v103;
        }

        else
        {
          v269 = 2143289344;
        }

        v104 = v344;
        *(v344 + 8) = v269;
        *(v104 + 7) = 2143289344;
        if (*(*(v104 + 34) + 80) && (CBU_IsSecureIndicatorSupported() & 1) != 0 && [+[CBSILState isSILActive] sharedInstance]
        {
          [*(*(v344 + 34) + 80) currentIndicatorBrightness];
          *(v344 + 7) = v105;
        }

        v106 = v344;
        *(v344 + 6) = fmaxf(*(v344 + 7), *(v344 + 49));
        if (*(*(v106 + 34) + 16))
        {
          v268 = *(*(v344 + 34) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v267 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v267 = init_default_corebrightness_log();
          }

          v268 = v267;
        }

        v107 = v344;
        *(v344 + 2) = v268;
        v368 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(*(v107 + 2), OS_LOG_TYPE_DEFAULT))
        {
          v264 = *(v344 + 2);
          *v265 = v368;
          v256 = *(v344 + 6);
          *&v257 = *(v344 + 63);
          [*(v344 + 34) appliedCompensation];
          *&v258 = v109;
          *&v259 = *(v344 + 61);
          *&v260 = *(*(v344 + 34) + 120);
          *&v261 = *(v344 + 49);
          *&v262 = *(*(v344 + 34) + 32);
          v110 = *(v344 + 34);
          v111 = *(v110 + 116);
          v244 = 0x1ECDAF000uLL;
          *&v248 = (v111 * *(v110 + 156));
          v249 = [*(v344 + 34) edrStateToString:*(*(v344 + 34) + 176)];
          *&v250 = *(*(v344 + 34) + 156);
          v112 = *(v344 + 34);
          v245 = 0x1ECDAF000uLL;
          [*(v112 + 48) currentScaler];
          *&v251 = v113;
          v114 = [*(*(v344 + 34) + 48) rampInProgress];
          v246 = "NO";
          v115 = "YES";
          v247 = "YES";
          if ((v114 & 1) == 0)
          {
            v115 = "NO";
          }

          v252 = v115;
          v116 = [*(v344 + 34) rtplcStateToString:*(*(v344 + 34) + 240)];
          v117 = v247;
          v253 = v116;
          *&v254 = *(*(v344 + 34) + 232);
          if ((*(*(v344 + 34) + 224) & 1) == 0)
          {
            v117 = v246;
          }

          v255 = v117;
          [*(*(v344 + 34) + 272) getPeakAPCE];
          *&v118 = *(v344 + 7);
          *&v119 = *(v344 + 6);
          *&v120 = *(v344 + 10);
          *&v121 = *(v344 + 9);
          *&v122 = *(v344 + 8);
          *&v123 = *(v344 + 11);
          v263 = v215;
          v266 = v388;
          __os_log_helper_16_2_22_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_0_8_0_8_32_8_32_8_0_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v388, v256, v257, v258, v259, v260, v261, v262, v248, v249, v250, v251, v252, v253, v254, v255, COERCE__INT64(v124), v118, v119, v120, v121, v122, v123);
          _os_log_impl(&dword_1DE8E5000, v264, v265[0], "SyncDBV Transaction | ID=%llu | SDR.Nits=%.3f | Applied.Compensation=%.3f | Nits.Cap=%0.3f | DynamicSlider.Cap=%0.3f | Brightness.Limit=%0.3f | Trusted.Lux=%.3f | HDR.Nits=%.3f | HDR.State=%s | Capped.Headroom.Current=%0.3f  | Aurora.Factor=%0.3f | Aurora.RampInProgress=%s | RTPLC.State=%s | RTPLC.Cap=%.3f | RTPLC.CapApplied=%s | PeakAPCE.Cap=%0.3f | IndicatorBrightness.Nits=%.3f | IndicatorBrightness.Cap=%.3f | Twilight.Strength=%0.3f | Ammolite.Strength=%0.3f | GCP.Strength=%0.3f | ContrastEnhancer.Strength=%.3f |", v266, 0xDEu);
        }

        v125 = *(v344 + 34);
        v243 = 0x1ECDAF000uLL;
        LODWORD(v108) = *(v344 + 63);
        [*(v125 + 40) setSDRBrightness:v108];
        v242 = *(*(v344 + 34) + *(v243 + 2392));
        [*(*(v344 + 34) + 136) maxHeadroom];
        [v242 setPotentialHeadroom:?];
        LODWORD(v126) = *(*(v344 + 34) + 156);
        [*(*(v344 + 34) + *(v243 + 2392)) setHeadroom:v126];
        LODWORD(v127) = *(*(v344 + 34) + 32);
        [*(*(v344 + 34) + *(v243 + 2392)) setAmbient:v127];
        LODWORD(v128) = *(v344 + 49);
        [*(*(v344 + 34) + *(v243 + 2392)) setBrightnessLimit:v128];
        if (!std::__math::isnan[abi:de200100](*(v344 + 11)))
        {
          LODWORD(v129) = *(v344 + 11);
          [*(*(v344 + 34) + 40) setContrastEnhancer:v129];
        }

        if (!std::__math::isnan[abi:de200100](*(v344 + 10)))
        {
          LODWORD(v130) = *(v344 + 10);
          [*(*(v344 + 34) + 40) setLowAmbientAdaptation:v130];
        }

        if (!std::__math::isnan[abi:de200100](*(v344 + 9)))
        {
          LODWORD(v131) = *(v344 + 9);
          [*(*(v344 + 34) + 40) setHighAmbientAdaptation:v131];
        }

        if (!std::__math::isnan[abi:de200100](*(v344 + 8)))
        {
          LODWORD(v132) = *(v344 + 8);
          [*(*(v344 + 34) + 40) setContrastPreservation:v132];
        }

        if (std::__math::isnan[abi:de200100](*(v344 + 7)))
        {
          LODWORD(v133) = *(v344 + 7);
          [*(*(v344 + 34) + 40) setIndicatorBrightness:v133];
        }

        else
        {
          v134 = v344;
          *(v344 + 2) = *(v344 + 7);
          if (([*(*(v134 + 34) + 80) indicatorBrightnessFollowsMIB] & 1) == 0)
          {
            *&v135 = std::__math::fmax[abi:de200100](*(v344 + 2), *(v344 + 63));
            *(v344 + 2) = LODWORD(v135);
          }

          LODWORD(v135) = *(v344 + 2);
          [*(*(v344 + 34) + 40) setIndicatorBrightness:v135];
        }

        v137 = *(v344 + 34);
        v233 = 0x1ECDAF000uLL;
        LODWORD(v136) = *(v344 + 6);
        [*(v137 + 40) setIndicatorBrightnessLimit:v136];
        v234 = v367;
        *v344 = 0;
        context = objc_autoreleasePoolPush();
        v231 = *(*(v344 + 34) + 256);
        v237 = 0x1E696A000uLL;
        v229 = MEMORY[0x1E696AD98];
        *&v138 = mach_time_now_in_milliseconds();
        v230 = [v229 numberWithFloat:v138];
        v139 = [*(v237 + 3480) numberWithUnsignedLongLong:*(v344 + 6)];
        [v231 setObject:v230 forKey:v139];
        objc_autoreleasePoolPop(context);
        v140 = *(*(v344 + 34) + *(v233 + 2392));
        v359 = MEMORY[0x1E69E9820];
        v360 = -1073741824;
        v361 = 0;
        v362 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke;
        v363 = &unk_1E867B640;
        v364 = *(v344 + 34);
        v365 = *(v344 + 6);
        v366 = [v140 commitBrightness:v234 withBlock:?];
        v141 = objc_autoreleasePoolPush();
        v142 = v237;
        v143 = v344;
        v241 = v141;
        v239 = &v386;
        *(v344 + 39) = @"SDR.Nits";
        LODWORD(v144) = *(v143 + 63);
        v145 = [*(v142 + 3480) numberWithFloat:v144];
        v146 = v237;
        v147 = v344;
        v238 = &v387;
        *(v344 + 53) = v145;
        *(v147 + 40) = @"HDR.Nits";
        v148 = *(v146 + 3480);
        v149 = *(*(v147 + 34) + 116);
        v150 = *(v147 + 34);
        v235 = 0x1ECDAF000uLL;
        *&v151 = v149 * *(v150 + 156);
        v152 = [v148 numberWithFloat:v151];
        v153 = v235;
        v154 = v237;
        v155 = v344;
        *(v344 + 54) = v152;
        *(v155 + 41) = @"HDR.Headroom";
        LODWORD(v156) = *(*(v155 + 34) + *(v153 + 2492));
        v157 = [*(v154 + 3480) numberWithFloat:v156];
        v158 = v237;
        v159 = v344;
        *(v344 + 55) = v157;
        *(v159 + 42) = @"BrightnessLimit";
        LODWORD(v160) = *(v159 + 49);
        v161 = [*(v158 + 3480) numberWithFloat:v160];
        v162 = v237;
        v163 = v344;
        *(v344 + 56) = v161;
        *(v163 + 43) = @"Lux";
        LODWORD(v164) = *(*(v163 + 34) + 32);
        v165 = [*(v162 + 3480) numberWithFloat:v164];
        v166 = v237;
        v167 = v344;
        *(v344 + 57) = v165;
        *(v167 + 44) = @"Twilight.Strength";
        LODWORD(v168) = *(v167 + 10);
        v169 = [*(v166 + 3480) numberWithFloat:v168];
        v170 = v237;
        v171 = v344;
        *(v344 + 58) = v169;
        *(v171 + 45) = @"Ammolite.Strength";
        LODWORD(v172) = *(v171 + 9);
        v173 = [*(v170 + 3480) numberWithFloat:v172];
        v174 = v237;
        v175 = v344;
        *(v344 + 59) = v173;
        *(v175 + 46) = @"GCP.Gamma";
        LODWORD(v176) = *(v175 + 8);
        v177 = [*(v174 + 3480) numberWithFloat:v176];
        v178 = v237;
        v179 = v344;
        *(v344 + 60) = v177;
        *(v179 + 47) = @"IndicatorBrightness.Nits";
        LODWORD(v180) = *(v179 + 7);
        v181 = [*(v178 + 3480) numberWithFloat:v180];
        v182 = v237;
        v183 = v344;
        *(v344 + 61) = v181;
        *(v183 + 48) = @"IndicatorBrightness.Cap";
        LODWORD(v184) = *(v183 + 6);
        v185 = [*(v182 + 3480) numberWithFloat:v184];
        v186 = v237;
        v187 = v344;
        *(v344 + 62) = v185;
        *(v187 + 49) = @"ContrastEnhancer.Strength";
        LODWORD(v188) = *(v187 + 11);
        v189 = [*(v186 + 3480) numberWithFloat:v188];
        v190 = v237;
        v191 = v344;
        *(v344 + 63) = v189;
        *(v191 + 50) = @"Aurora.Factor";
        v236 = *(v190 + 3480);
        [*(*(v191 + 34) + 48) currentScaler];
        v192 = [v236 numberWithFloat:?];
        v193 = v237;
        v194 = v344;
        *(v344 + 64) = v192;
        *(v194 + 51) = @"AliasingMitigation.Active";
        v195 = [*(v193 + 3480) numberWithBool:*(*(v194 + 34) + 305) & 1];
        v196 = v238;
        v197 = v239;
        v198 = v344;
        *(v344 + 65) = v195;
        *(v198 + 52) = @"Result";
        v199 = @"Success";
        if ((v366 & 1) == 0)
        {
          v199 = @"Error";
        }

        *(v198 + 66) = v199;
        v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v196 forKeys:v197 count:14];
        v200 = *(*(v344 + 34) + 328);
        v240 = @"BrightnessTransaction";
        _DisplaySetInternalDictionaryProperty(v200, @"BrightnessTransaction", v358);
        [*(v344 + 34) sendNotificationForKey:v240 withValue:v358];
        objc_autoreleasePoolPop(v241);
        v201 = *(v344 + 63) < 100.0;
        v357 = v201;
        if ((*(*(v344 + 34) + 304) & 1) != v201)
        {
          v202 = v344;
          *(*(v344 + 34) + 304) = v357;
          v228 = *(v202 + 34);
          v203 = [MEMORY[0x1E696AD98] numberWithBool:*(*(v202 + 34) + 304) & 1];
          [v228 sendNotificationForKey:@"CBBrightnessIsUnderAutoDimThreshold" withValue:v203];
        }

        if (v366)
        {
          [*(v344 + 34) sendNotificationForKey:@"CBCACommit" withValue:*(v344 + 32)];
          v205 = *(v344 + 34);
          LODWORD(v206) = *(v205 + 116);
          *&v207 = *&v206 * *(v205 + 156);
          [*(v205 + 312) luminanceHistLogNitsSDR:v206 andNitsEDR:v207];
        }

        else
        {
          if (*(*(v344 + 34) + 16))
          {
            v227 = *(*(v344 + 34) + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v226 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v226 = init_default_corebrightness_log();
            }

            v227 = v226;
          }

          oslog = v227;
          v355 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v227, OS_LOG_TYPE_ERROR))
          {
            v223 = oslog;
            *v224 = v355;
            v204 = *v344;
            v225 = v385;
            __os_log_helper_16_2_1_8_64(v385, v204);
            _os_log_error_impl(&dword_1DE8E5000, v223, v224[0], "ERROR COMMITING BRIGHTNESS FROM CA!!!!!!! (%@)", v225, 0xCu);
          }
        }
      }

      if (*(*(v344 + 34) + 116) > 0.0)
      {
        v208 = *(v344 + 34);
        v220 = 0x1ECDAF000uLL;
        v209 = *(v208 + 296);
        v349 = MEMORY[0x1E69E9820];
        v350 = -1073741824;
        v351 = 0;
        v352 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_371;
        v353 = &unk_1E867B668;
        v354 = *(v344 + 34);
        [v209 enumerateObjectsUsingBlock:?];
        MEMORY[0x1E69E5920](*(*(v344 + 34) + *(v220 + 2552)));
        v210 = v344;
        v211 = *(v344 + 34);
        v212 = *(v220 + 2552);
        v222 = 0;
        *(v211 + v212) = 0;
        v213 = *(v210 + 34);
        v221 = 0x1ECDAF000uLL;
        MEMORY[0x1E69E5920](*(v213 + 288));
        *(*(v344 + 34) + *(v221 + 2556)) = v222;
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

void __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  context = objc_autoreleasePoolPush();
  MEMORY[0x1E69E5928](v14);
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_2;
  v9 = &unk_1E867B618;
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v11 = v14;
  dispatch_async(v2, &block);
  objc_autoreleasePoolPop(context);
}

void __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = [*(*(a1 + 32) + 256) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  v7 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E6979628]];
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

    v5 = inited;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 48);
    v3 = mach_time_to_milliseconds([v7 unsignedLongLongValue]);
    [v8 floatValue];
    __os_log_helper_16_0_2_8_0_8_0(v9, v2, COERCE__INT64((v3 - v1)));
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "SyncDBV Telemetry | Transaction.ID=%llu Latency=%.0fms", v9, 0x16u);
  }

  [*(*(a1 + 32) + 256) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a1 + 48))}];
  MEMORY[0x1E69E5920](*(a1 + 40));
  *MEMORY[0x1E69E9840];
}

void __52__CBDisplayModuleiOS_handleDisplayBrightnessUpdate___block_invoke_371(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = [*(*(a1 + 32) + 288) objectAtIndex:a3];
  [*(a1 + 32) setProperty:v6 forKey:a2];
  if (*(*(a1 + 32) + 16))
  {
    v4 = *(*(a1 + 32) + 16);
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

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v8, v6);
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_INFO, "Restoring cached %@ property", v8, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleFrameInfo:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v34 = 1.0;
  *&v3 = a3->var5 - 1.0;
  v33 = *&v3;
  var3 = 0;
  if (!self->_rtplcCapApplied)
  {
    var3 = a3->var3;
  }

  v32 = var3;
  v17 = 0;
  if (v37->_rtplcCapApplied)
  {
    v17 = 0;
    if (a3->var3)
    {
      *&v3 = v33;
      v17 = v33 != v37->_currentRTPLCTarget;
    }
  }

  v31 = v17;
  v16 = 0;
  if (v37->_rtplcCapApplied)
  {
    v16 = !a3->var3;
  }

  v30 = v16;
  v15 = 1;
  if (!a3->var2)
  {
    v15 = a3->var3;
  }

  v29 = v15;
  v37->_rtplcCapApplied = a3->var3;
  if (v32 || v31)
  {
    [(CBDisplayModuleiOS *)v37 deleteAPCEMonitor];
    v37->_rtplcState = 1;
    v37->_currentRTPLCTarget = v33;
    v28 = v37->_currentRTPLCTarget / v37->_nitsSDR;
    if (v37->super.super._logHandle)
    {
      logHandle = v37->super.super._logHandle;
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

    v27 = logHandle;
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v39, COERCE__INT64(v37->_currentRTPLCTarget), COERCE__INT64(v28), COERCE__INT64(v37->_appliedHeadroom), COERCE__INT64(v37->_nitsSDR), COERCE__INT64(v37->_currentCapToCA));
      _os_log_impl(&dword_1DE8E5000, v27, v26, "RTPLC TRIGGER!! RTPLCBrightness: %f, reducedHeadroom: %f, current(_applied): %f, _nitsSDR: %f, _currentCapToCA = %f", v39, 0x34u);
    }

    [(CBDisplayModuleiOS *)v37 compensatedSDRNits];
    v25 = *&v3 * v37->_appliedHeadroom;
    currentRTPLCTarget = v37->_currentRTPLCTarget;
    *&v3 = currentRTPLCTarget;
    if (currentRTPLCTarget < v25)
    {
      if (v37->super.super._logHandle)
      {
        v12 = v37->super.super._logHandle;
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

      v23 = v12;
      v22 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_8_0_8_0(v38, COERCE__INT64(v25), COERCE__INT64(currentRTPLCTarget));
        _os_log_impl(&dword_1DE8E5000, v23, v22, "RTPLC ACTION: StartRTPLCRamp, ramp Cap: %f--->%f", v38, 0x16u);
      }

      DisplayStartRTPLCEDRCapRamp(v37->_displayInternal, 0, v25, currentRTPLCTarget, 4.0);
    }
  }

  else if (v30)
  {
    if (v37->super.super._logHandle)
    {
      v10 = v37->super.super._logHandle;
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

    v21 = v10;
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v21;
      v8 = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_1DE8E5000, v7, v8, "RTPLC RELEASED!", v19, 2u);
    }

    LODWORD(v4) = 0.5;
    [(CBDisplayModuleiOS *)v37 createAPCEMonitorWithFrequency:v4];
  }

  if ([(CBFrameStats *)v37->_frameStats tripLength]&& !v29)
  {
    mach_time_now_in_seconds();
    [(CBFrameStats *)v37->_frameStats currentTripStartTime];
    v6 = [(CBFrameStats *)v37->_frameStats tripLength];
    [(CBFrameStats *)v37->_frameStats tripMaxAPCE];
    rtplcTripMaxBrightness = v37->_rtplcTripMaxBrightness;
    [CBAnalytics rtplcTriggeredWithLength:"rtplcTriggeredWithLength:maxAPCE:durationInSeconds:sdrBrightness:referenceModeEnabled:" maxAPCE:v6 durationInSeconds:v37->_referenceModeIsActive sdrBrightness:? referenceModeEnabled:?];
    v37->_rtplcTripMaxBrightness = 0.0;
  }

  if (![(CBFrameStats *)v37->_frameStats tripLength]&& v29)
  {
    v37->_rtplcTripMaxBrightness = v37->_nitsSDR;
  }

  if (v29)
  {
    v37->_rtplcTripMaxBrightness = fmaxf(v37->_nitsSDR, v37->_rtplcTripMaxBrightness);
  }

  *MEMORY[0x1E69E9840];
}

- (const)rtplcStateToString:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      return "None";
    case 1uLL:
      return "Action";
    case 2uLL:
      return "Recovery";
    case 3uLL:
      return "Exit";
  }

  return "Unknown";
}

- (void)createAPCEMonitorWithFrequency:(float)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = ((1.0 / a3) * 1000000000.0);
  if (self->_apceTimer)
  {
    dispatch_source_set_timer(v14->_apceTimer, 0, v11, 0);
  }

  else
  {
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14->super.super._queue);
    if (v10)
    {
      dispatch_source_set_timer(v10, 0, v11, 0);
      block = MEMORY[0x1E69E9820];
      v4 = -1073741824;
      v5 = 0;
      v6 = __53__CBDisplayModuleiOS_createAPCEMonitorWithFrequency___block_invoke;
      v7 = &unk_1E867B480;
      v8 = v14;
      handler = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
      if (handler)
      {
        dispatch_source_set_event_handler(v10, handler);
        _Block_release(handler);
      }

      v14->_apceTimer = v10;
      dispatch_activate(v10);
    }
  }
}

- (void)deleteAPCEMonitor
{
  if (self->_apceTimer)
  {
    dispatch_source_cancel(self->_apceTimer);
    dispatch_release(self->_apceTimer);
    self->_apceTimer = 0;
  }
}

- (void)apceTimerCallback
{
  v22 = *MEMORY[0x1E69E9840];
  maxNitsEDR = self->_maxNitsEDR;
  [(CBFrameStats *)self->_frameStats getMovingAverage];
  v15 = v2;
  [(CBFrameStats *)self->_frameStats getPeakAPCECap];
  v14 = v3;
  [(CBFrameStats *)self->_frameStats scaleFactor];
  v16 = v4;
  *&v5 = v15;
  *&v6 = v16;
  [(CBDisplayModuleiOS *)self computeTargetHDRBrightnessForAPCE:v5 andScale:v6];
  v17 = v7;
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
    __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v21, COERCE__INT64(v17), COERCE__INT64(v15), COERCE__INT64(self->_currentRTPLCTarget), COERCE__INT64(v16), COERCE__INT64(v14));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "RTPLC RECOVERY: target HDR Brightness= %f for APCE = %f, current RTPLC target: %f, scaleFactor: %f, peakAPCECap: %f", v21, 0x34u);
  }

  v18 = fminf(v17, v14);
  if (v18 > self->_currentRTPLCTarget)
  {
    self->_rtplcState = 2;
    rtplcCap = self->_rtplcCap;
    if (self->super.super._logHandle)
    {
      v9 = self->super.super._logHandle;
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
      __os_log_helper_16_0_3_8_0_8_0_8_0(v20, COERCE__INT64(rtplcCap), COERCE__INT64(v18), COERCE__INT64(self->_currentCapToCA));
      _os_log_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEFAULT, "RTPLC RECOVERY RAMP! ramp Cap: %f ---> %f (currentCapToCA = %f)", v20, 0x20u);
    }

    DisplayStartRTPLCEDRCapRamp(self->_displayInternal, 0, rtplcCap, v18, 16.0);
  }

  *MEMORY[0x1E69E9840];
}

- (float)computeTargetHDRBrightnessForAPCE:(float)a3 andScale:(float)a4
{
  v32 = self;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  if ([(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)self->_backlightParams rtplc] recoveryCurve] nits] count])
  {
    [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] nits] get:0];
    v25 = v4;
    for (i = 0; i < [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] count]; ++i)
    {
      if (i + 1 >= [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] count])
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] nits] get:i];
        v25 = v15;
        return v25 / v29;
      }

      [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] get:i];
      if (v30 > v5)
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] get:i + 1];
        v6 = *&v7;
        *&v7 = v30;
        if (v30 < v6)
        {
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] get:i];
          v23 = v8;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] get:i + 1];
          v22 = v9;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] nits] get:i];
          v21 = v10;
          [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] nits] get:i + 1];
          v25 = linear_interpolation(v30, v23, v21, v22, v11);
          return v25 / v29;
        }
      }

      [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] apce] get:i];
      v12 = *&v13;
      *&v13 = v30;
      if (v30 <= v12)
      {
        [(CBFloatArray *)[(CBRTPLCRecoveryCurveParams *)[(CBRTPLCParams *)[(CBBacklightNode *)v32->_backlightParams rtplc] recoveryCurve] nits] get:i];
        v25 = v14;
        return v25 / v29;
      }
    }

    return v25 / v29;
  }

  else
  {
    if (v32->super.super._logHandle)
    {
      logHandle = v32->super.super._logHandle;
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

    v28 = logHandle;
    v27 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "RTPLC | Empty Table", v26, 2u);
    }

    return v32->_maxNitsEDR;
  }
}

- (BOOL)luxHasCrossedBDMThreshold:(float)a3
{
  v8 = 0;
  if (self->_bdmLux1 <= a3)
  {
    v8 = a3 <= self->_bdmLux2;
  }

  v7 = 0;
  if (self->_lastBDMLux > self->_bdmLux1)
  {
    v7 = a3 < self->_bdmLux1;
  }

  v6 = 0;
  if (self->_lastBDMLux < self->_bdmLux2)
  {
    v6 = a3 > self->_bdmLux2;
  }

  v5 = 0;
  if (a3 != self->_lastBDMLux)
  {
    v4 = 1;
    if (!v8)
    {
      v4 = 1;
      if (!v7)
      {
        v4 = v6;
      }
    }

    v5 = v4;
  }

  self->_lastBDMLux = a3;
  return v5 & 1;
}

- (void)updateEDRStateForEvent:(unint64_t)a3 andHeadroom:(float)a4
{
  if (a3)
  {
    switch(a3)
    {
      case 2uLL:
        self->_edrState = 1;
        break;
      case 3uLL:
        if (self->_edrState == 1 || self->_edrState == 2)
        {
          self->_edrState = 3;
        }

        break;
      case 4uLL:
        if (self->_edrState == 1 && float_equal(a4, self->_requestedHeadroom))
        {
          self->_edrState = 2;
        }

        else if (self->_edrState == 3 && float_equal(a4, self->_requestedHeadroom))
        {
          self->_edrState = 0;
        }

        break;
    }
  }
}

- (const)edrStateToString:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      return "Off";
    case 1uLL:
      return "Entering";
    case 2uLL:
      return "Engaged";
    case 3uLL:
      return "Exiting";
  }

  return "Unknown";
}

- (id)copyIdentifiers
{
  v4 = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"DisplayBrightnessAuto", @"DisplayBrightnessFactor", @"DisplayBrightnessFactorWithFade", @"PreStrobeBrightnessRatio", @"EventTimestampDisplayOn", @"EventTimestampDisplayOff", @"DisplayBrightness", @"BrightnessGlobalScalar", @"DisplayPanelLuminanceMin", @"DisplayPanelLuminanceMid", @"DisplayPanelLuminanceMax", @"DisplayProductLuminanceMin", @"DisplayProductLuminanceMid", @"DisplayProductLuminanceMax", @"BrightnessRestrictions", @"DisplayBackLightArchitecture", @"FreezeBrightness", @"UserInteractedWithUI", @"EcoModeFactorUpdate", @"DominoStateUpdate", @"AmbientAdaptiveDimming", @"DisplayBrightnessFadePeriod", @"DisplayBrightnessFadePeriodOverride", @"MaxBrightness", @"BrightnessWeakCap", @"BrightnessMinPhysicalWithFade", @"DisplayBrightnessFactorRamp", @"PreStrobeConfig", @"PreStrobe", @"CoreBrightnessFeaturesDisabled", @"DisableWPShift", @"ReenablementRampPeriod", @"DisablementRampPeriod", @"AABConstraints", @"AABCurveCap", @"PreStrobeDimPeriod", @"BrightDotsMitigationParameters", @"VirtualBrightnessLimits", @"CPMSCurrentPower", @"CPMSPowerAccumulatorValue", 0}];
}

- (float)compensatedSDRNits
{
  nitsSDR = self->_nitsSDR;
  [(CBDisplayModuleiOS *)self appliedCompensation];
  return nitsSDR * v2;
}

- (float)appliedCompensation
{
  if (self->_referenceModeIsActive)
  {
    return 1.0;
  }

  nitsSDR = self->_nitsSDR;
  if ([(CBAurora *)self->_aurora isBoostingBrightness])
  {
    [(CBAurora *)self->_aurora currentPreAuroraNits];
    nitsSDR = v2;
  }

  [(CBAppliedCompensations *)self->_appliedCompensations compensationFor:nitsSDR andMax:self->_dynSliderCap];
  *&v3 = v3;
  return *&v3;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v5 = 0;
  v6 = &v5;
  v7 = 0x20000000;
  v8 = 32;
  v9 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v4 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v4 & 1;
}

uint64_t __42__CBDisplayModuleiOS_addHIDServiceClient___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 addHIDServiceClient:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v5 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v5 & 1;
}

uint64_t __42__CBDisplayModuleiOS_handleHIDEvent_from___block_invoke(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 handleHIDEvent:a1[5] from:a1[6]];
    *(*(a1[4] + 8) + 24) = (*(*(a1[4] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v5 = 0;
  v6 = &v5;
  v7 = 0x20000000;
  v8 = 32;
  v9 = 0;
  [(NSMutableArray *)self->_subModules enumerateObjectsUsingBlock:?];
  v4 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v4 & 1;
}

uint64_t __45__CBDisplayModuleiOS_removeHIDServiceClient___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    result = [a2 removeHIDServiceClient:*(a1 + 40)];
    *(*(*(a1 + 32) + 8) + 24) = (*(*(*(a1 + 32) + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

@end