@interface CMContinuityCaptureFrameRateManager
- (CMContinuityCaptureFrameRateManager)init;
- (id)allowedFrameRateRangeForDevice:(id)device;
- (id)throttledFrameRateByActiveStreamingEntities;
- (id)throttledFrameRateByThermalLevelAndLowPowerMode;
- (void)dealloc;
- (void)lowPowerModeChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reportStreamStatus:(BOOL)status forDevice:(id)device;
- (void)updateAllowedFPS;
@end

@implementation CMContinuityCaptureFrameRateManager

- (CMContinuityCaptureFrameRateManager)init
{
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureFrameRateManager;
  v2 = [(CMContinuityCaptureFrameRateManager *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    objc_sync_enter(v4);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activeStreamingDevices = v4->_activeStreamingDevices;
    v4->_activeStreamingDevices = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    allowedFrameRateRangeForDevice = v4->_allowedFrameRateRangeForDevice;
    v4->_allowedFrameRateRangeForDevice = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    clientRequestedFrameRateRangeForDevice = v4->_clientRequestedFrameRateRangeForDevice;
    v4->_clientRequestedFrameRateRangeForDevice = weakToStrongObjectsMapTable2;

    v11 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    [v11 addObserver:v4 forKeyPath:@"thermalLevel" options:3 context:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_lowPowerModeChanged_ name:*MEMORY[0x277CCA5E8] object:0];

    v4->_currentThermalLevel = 1;
    objc_sync_exit(v4);

    v13 = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v3 removeObserver:self forKeyPath:@"thermalLevel" context:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

  v5.receiver = self;
  v5.super_class = CMContinuityCaptureFrameRateManager;
  [(CMContinuityCaptureFrameRateManager *)&v5 dealloc];
}

- (id)allowedFrameRateRangeForDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_allowedFrameRateRangeForDevice objectForKey:deviceCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([pathCopy isEqualToString:@"thermalLevel"])
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = 138543874;
      v17 = selfCopy;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluate FPS Throttle due to change in thermal level(%@ -> %@)", &v16, 0x20u);
    }

    [(CMContinuityCaptureFrameRateManager *)selfCopy updateAllowedFPS];
  }

  objc_sync_exit(selfCopy);
}

- (void)lowPowerModeChanged:(id)changed
{
  name = [changed name];
  v5 = [name isEqualToString:*MEMORY[0x277CCA5E8]];

  if (v5)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 1024;
      v12 = isLowPowerModeEnabled;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Device PowerState has changed - lowPowerModeEnabled(%d)", &v9, 0x12u);
    }

    [(CMContinuityCaptureFrameRateManager *)self updateAllowedFPS];
  }
}

- (id)throttledFrameRateByThermalLevelAndLowPowerMode
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  v5 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  thermalLevel = [v5 thermalLevel];
  currentThermalLevel = self->_currentThermalLevel;

  if (thermalLevel > currentThermalLevel)
  {
    v8 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    self->_currentThermalLevel = [v8 thermalLevel];
  }

  v9 = self->_currentThermalLevel;
  v10 = v9 > 3;
  v11 = (v9 == 3) | isLowPowerModeEnabled & 1;
  if (v10)
  {
    v11 = 2;
  }

  if (v11 == 1)
  {
    v12 = &unk_2854ECAA0;
  }

  else
  {
    if (v11 != 2)
    {
      return 0;
    }

    v12 = &unk_2854ECAB8;
  }

  v13 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy = self;
    v17 = 1024;
    v18 = isLowPowerModeEnabled;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Throttle Reason: Thermal/LPM (%d). Throttled frame rate: %@", &v15, 0x1Cu);
  }

  return v12;
}

- (id)throttledFrameRateByActiveStreamingEntities
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_activeStreamingDevices;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    selfCopy = self;
    v6 = 0;
    v7 = 0;
    v8 = *v38;
    v9 = *MEMORY[0x277CE5878];
    v10 = *MEMORY[0x277CE5888];
    v27 = *MEMORY[0x277CE5888];
    v28 = *MEMORY[0x277CE5878];
    v29 = *v38;
    do
    {
      v11 = 0;
      v31 = v5;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v37 + 1) + 8 * v11);
        activeConfiguration = [v12 activeConfiguration];
        entity = [activeConfiguration entity];

        if (entity == 2)
        {
          v7 = 1;
        }

        else
        {
          activeConfiguration2 = [v12 activeConfiguration];
          if ([activeConfiguration2 entity] == 1)
          {
            videoDevice = [v12 videoDevice];
            deviceType = [videoDevice deviceType];
            if ([deviceType isEqualToString:v9])
            {
              companionDevice = [v12 companionDevice];
              videoDevice2 = [companionDevice videoDevice];
              [videoDevice2 deviceType];
              v20 = v7;
              v21 = v6;
              v23 = v22 = v3;
              v30 = [v23 isEqualToString:v27];

              v3 = v22;
              LODWORD(v22) = v21;
              v7 = v20;
              v8 = v29;

              v9 = v28;
              v6 = v30 | v22;
            }

            v5 = v31;
          }
        }

        ++v11;
      }

      while (v5 != v11);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v5);

    if ((v7 & v6 & 1) == 0)
    {
      return 0;
    }

    v3 = CMContinuityCaptureLog(0);
    v24 = &unk_2854ECAD0;
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = selfCopy;
      v34 = 2112;
      v35 = &unk_2854ECAD0;
      _os_log_impl(&dword_242545000, &v3->super, OS_LOG_TYPE_DEFAULT, "%{public}@ Throttle Reason: DeskCam. Throttled frame rate: %@", buf, 0x16u);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)updateAllowedFPS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v46 = selfCopy;
  throttledFrameRateByThermalLevelAndLowPowerMode = [(CMContinuityCaptureFrameRateManager *)selfCopy throttledFrameRateByThermalLevelAndLowPowerMode];
  v4 = throttledFrameRateByThermalLevelAndLowPowerMode;
  if (throttledFrameRateByThermalLevelAndLowPowerMode)
  {
    unsignedIntValue = [throttledFrameRateByThermalLevelAndLowPowerMode unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  throttledFrameRateByActiveStreamingEntities = [(CMContinuityCaptureFrameRateManager *)v46 throttledFrameRateByActiveStreamingEntities];
  v7 = throttledFrameRateByActiveStreamingEntities;
  if (throttledFrameRateByActiveStreamingEntities)
  {
    unsignedIntValue2 = [throttledFrameRateByActiveStreamingEntities unsignedIntValue];
    if (unsignedIntValue2 < unsignedIntValue)
    {
      unsignedIntValue = unsignedIntValue2;
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v46->_activeStreamingDevices;
  v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v64 objects:v63 count:16];
  v35 = v7;
  v36 = v4;
  if (v9)
  {
    v45 = 0;
    v43 = *v65;
    v42 = unsignedIntValue;
    do
    {
      v10 = 0;
      v44 = v9;
      do
      {
        if (*v65 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v64 + 1) + 8 * v10);
        v12 = [(NSMapTable *)v46->_clientRequestedFrameRateRangeForDevice objectForKey:v11, v35, v36];
        v13 = v12;
        if (v12)
        {
          maxFrameRate = [v12 maxFrameRate];
          unsignedIntValue3 = [maxFrameRate unsignedIntValue];

          minFrameRate = [v13 minFrameRate];
          unsignedIntValue4 = [minFrameRate unsignedIntValue];

          if (unsignedIntValue3 >= unsignedIntValue)
          {
            v18 = unsignedIntValue;
          }

          else
          {
            v18 = unsignedIntValue3;
          }

          if (unsignedIntValue4 >= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = unsignedIntValue4;
          }

          v20 = unsignedIntValue < unsignedIntValue3;
          allowedFrameRateRangeForDevice = v46->_allowedFrameRateRangeForDevice;
          v22 = [CMContinuityCaptureFrameRateRange frameRateRangeWithMinRate:v19 maxFrameRate:?];
          [(NSMapTable *)allowedFrameRateRangeForDevice setObject:v22 forKey:v11];

          v23 = CMContinuityCaptureLog(2);
          v45 |= v20;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            activeConfiguration = [v11 activeConfiguration];
            v24 = CMContinuityCaptureStringForEntity([activeConfiguration entity]);
            v40 = [(NSMapTable *)v46->_clientRequestedFrameRateRangeForDevice objectForKey:v11];
            minFrameRate2 = [v40 minFrameRate];
            v25 = [(NSMapTable *)v46->_clientRequestedFrameRateRangeForDevice objectForKey:v11];
            maxFrameRate2 = [v25 maxFrameRate];
            v27 = [(NSMapTable *)v46->_allowedFrameRateRangeForDevice objectForKey:v11];
            minFrameRate3 = [v27 minFrameRate];
            v29 = [(NSMapTable *)v46->_allowedFrameRateRangeForDevice objectForKey:v11];
            maxFrameRate3 = [v29 maxFrameRate];
            if (v42 == -1)
            {
              v31 = @"INT_MAX";
            }

            else
            {
              v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
              v31 = v38;
            }

            *buf = 138545154;
            v48 = v46;
            v49 = 2112;
            v50 = v24;
            v51 = 2112;
            v52 = minFrameRate2;
            v53 = 2112;
            v54 = maxFrameRate2;
            v55 = 2112;
            v56 = minFrameRate3;
            v57 = 2112;
            v58 = maxFrameRate3;
            v59 = 1024;
            v60 = v45 & 1;
            v61 = 2112;
            v62 = v31;
            _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ - client requested frame rate min: %@ max: %@, allowed frame rate min: %@ max: %@. Throttled: %d systemThrottledMaxFrameRate: %@", buf, 0x4Eu);
            if (v42 != -1)
            {
            }

            unsignedIntValue = v42;
          }
        }

        else
        {
          v23 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v48 = v46;
            _os_log_error_impl(&dword_242545000, v23, OS_LOG_TYPE_ERROR, "%{public}@ device not found in clientRequestedFrameRateRange dict", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v44 != v10);
      v9 = [(NSHashTable *)obj countByEnumeratingWithState:&v64 objects:v63 count:16];
    }

    while (v9);
  }

  else
  {
    v45 = 0;
  }

  v32 = v46;
  v33 = atomic_load(&v46->_throttled);

  objc_sync_exit(v32);
  if ((v33 & 1) != 0 || ((v33 | v45 ^ 1) & 1) == 0)
  {
    v34 = v46;
    [(CMContinuityCaptureFrameRateManager *)v46 willChangeValueForKey:@"throttled", v35];
    atomic_store(v45 & 1, &v46->_throttled);
    [(CMContinuityCaptureFrameRateManager *)v34 didChangeValueForKey:@"throttled"];
  }
}

- (void)reportStreamStatus:(BOOL)status forDevice:(id)device
{
  statusCopy = status;
  deviceCopy = device;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    activeConfiguration = [deviceCopy activeConfiguration];
    v9 = CMContinuityCaptureStringForEntity([activeConfiguration entity]);
    v24 = 138543874;
    selfCopy = self;
    v26 = 1024;
    v27 = statusCopy;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ report stream status %d for device %@", &v24, 0x1Cu);
  }

  videoDevice = [deviceCopy videoDevice];

  if (!videoDevice)
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureFrameRateManager reportStreamStatus:v11 forDevice:?];
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  activeStreamingDevices = selfCopy2->_activeStreamingDevices;
  if (statusCopy)
  {
    [(NSHashTable *)activeStreamingDevices addObject:deviceCopy];
    clientRequestedFrameRateRangeForDevice = selfCopy2->_clientRequestedFrameRateRangeForDevice;
    activeConfiguration2 = [deviceCopy activeConfiguration];
    minFrameRate = [activeConfiguration2 minFrameRate];
    activeConfiguration3 = [deviceCopy activeConfiguration];
    activeConfiguration5 = +[CMContinuityCaptureFrameRateRange frameRateRangeWithMinRate:maxFrameRate:](CMContinuityCaptureFrameRateRange, "frameRateRangeWithMinRate:maxFrameRate:", minFrameRate, [activeConfiguration3 maxFrameRate]);
    [(NSMapTable *)clientRequestedFrameRateRangeForDevice setObject:activeConfiguration5 forKey:deviceCopy];
  }

  else
  {
    [(NSHashTable *)activeStreamingDevices removeObject:deviceCopy];
    v19 = [(NSMapTable *)selfCopy2->_clientRequestedFrameRateRangeForDevice objectForKey:deviceCopy];
    activeConfiguration2 = v19;
    if (!v19)
    {
      goto LABEL_12;
    }

    maxFrameRate = [v19 maxFrameRate];
    unsignedIntValue = [maxFrameRate unsignedIntValue];
    activeConfiguration4 = [deviceCopy activeConfiguration];
    [activeConfiguration4 setMaxFrameRate:unsignedIntValue];

    activeConfiguration3 = [activeConfiguration2 minFrameRate];
    unsignedIntValue2 = [activeConfiguration3 unsignedIntValue];
    activeConfiguration5 = [deviceCopy activeConfiguration];
    [activeConfiguration5 setMinFrameRate:unsignedIntValue2];
  }

LABEL_12:
  if (![(NSHashTable *)selfCopy2->_activeStreamingDevices count])
  {
    selfCopy2->_currentThermalLevel = 1;
    selfCopy2->_throttledDeskCamMultipleCamerasInUse = 0;
  }

  objc_sync_exit(selfCopy2);

  if ([(NSHashTable *)selfCopy2->_activeStreamingDevices count])
  {
    [(CMContinuityCaptureFrameRateManager *)selfCopy2 updateAllowedFPS];
  }
}

- (void)reportStreamStatus:(uint64_t)a1 forDevice:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%{public}@ reportStreamStatus called but no videoDevice exists for device", &v2, 0xCu);
}

@end