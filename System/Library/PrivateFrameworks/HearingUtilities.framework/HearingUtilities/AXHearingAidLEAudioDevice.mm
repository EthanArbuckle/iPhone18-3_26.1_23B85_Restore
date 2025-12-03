@interface AXHearingAidLEAudioDevice
- (BOOL)addPeripheral:(id)peripheral;
- (BOOL)didLoadPersistentProperties;
- (id)discoveringServiceUUIDs;
- (id)peripheral:(id)peripheral characteristicForUUID:(id)d;
- (int)earForPeripheral:(id)peripheral;
- (unint64_t)availablePropertiesForPeripheral:(id)peripheral;
- (unint64_t)availablePropertiesFromDISForPeripheral:(id)peripheral;
- (void)connect;
- (void)connectionDidChange;
- (void)dealloc;
- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral;
- (void)didLoadPersistentProperties;
- (void)loadBasicProperties;
- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period;
- (void)loadRequiredProperties;
- (void)peripheralDidUpdateDeviceInfo;
- (void)sessionDidUpdateLocations:(id)locations;
- (void)sessionDidUpdateValue:(id)value forProperty:(unint64_t)property;
- (void)setBasicPropertiesLoaded;
- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral;
- (void)setValue:(id)value forProperty:(unint64_t)property;
- (void)setupLoadingProperties;
- (void)setupUpdatesHandlerForLEAudioPeripheral:(id)peripheral;
- (void)updateName;
- (void)writeValueForProperty:(unint64_t)property;
@end

@implementation AXHearingAidLEAudioDevice

- (void)dealloc
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [leftPeripheral setUpdateHandler:0];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [rightPeripheral setUpdateHandler:0];

  v5.receiver = self;
  v5.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v5 dealloc];
}

- (id)discoveringServiceUUIDs
{
  if (discoveringServiceUUIDs_onceToken != -1)
  {
    [AXHearingAidLEAudioDevice discoveringServiceUUIDs];
  }

  v3 = discoveringServiceUUIDs_discoveringServiceUUIDs;

  return v3;
}

void __52__AXHearingAidLEAudioDevice_discoveringServiceUUIDs__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
  v1 = [v0 initWithObjects:{v3, 0}];
  v2 = discoveringServiceUUIDs_discoveringServiceUUIDs;
  discoveringServiceUUIDs_discoveringServiceUUIDs = v1;
}

- (void)setupLoadingProperties
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setupLoadingProperties for %@", &v7, 0xCu);
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [(AXHearingAidLEAudioDevice *)self setupUpdatesHandlerForLEAudioPeripheral:leftPeripheral];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [(AXHearingAidLEAudioDevice *)self setupUpdatesHandlerForLEAudioPeripheral:rightPeripheral];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setBasicPropertiesLoaded
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setBasicPropertiesLoaded for %@", &v11, 0xCu);
  }

  if ([(AXHearingAidDevice *)self leftAvailable])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    identifier = [leftPeripheral identifier];
    uUIDString = [identifier UUIDString];

    [(AXHearingAidDevice *)self setLeftUUID:uUIDString];
    [(AXHearingAidLEAudioDevice *)self setLeftLoadedProperties:[(AXHearingAidLEAudioDevice *)self leftLoadedProperties]| 0x30];
    [(AXHearingAidDevice *)self setAvailableEars:[(AXHearingAidDevice *)self availableEars]| 2];
  }

  if ([(AXHearingAidDevice *)self rightAvailable])
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    identifier2 = [rightPeripheral identifier];
    uUIDString2 = [identifier2 UUIDString];

    [(AXHearingAidDevice *)self setRightUUID:uUIDString2];
    [(AXHearingAidLEAudioDevice *)self setRightLoadedProperties:[(AXHearingAidLEAudioDevice *)self rightLoadedProperties]| 0x30];
    [(AXHearingAidDevice *)self setAvailableEars:[(AXHearingAidDevice *)self availableEars]| 4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidUpdateValue:(id)value forProperty:(unint64_t)property
{
  valueCopy = value;
  if (property == 0x4000000000)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = HCLogHearingAids();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice sessionDidUpdateValue:forProperty:];
      }

      goto LABEL_10;
    }

    [valueCopy floatValue];
    v8 = (v7 / 255.0);
    [(AXHearingAidDevice *)self leftMixedVolume];
    v10 = v9;
    [(AXHearingAidDevice *)self rightMixedVolume];
    v12 = v11;
    [(AXHearingAidDevice *)self setLeftMixedVolume:v8];
    [(AXHearingAidDevice *)self setRightMixedVolume:v8];
    [(AXHearingAidLEAudioDevice *)self setLeftLoadedProperties:[(AXHearingAidLEAudioDevice *)self leftLoadedProperties]| 0x4000000000];
    [(AXHearingAidLEAudioDevice *)self setRightLoadedProperties:[(AXHearingAidLEAudioDevice *)self rightLoadedProperties]| 0x4000000000];
    if (v10 != v8 || v12 != v8)
    {
      v14 = +[AXHearingAidDeviceController sharedController];
      [v14 device:self didUpdateProperty:0x4000000000];
LABEL_10:
    }
  }
}

- (void)sessionDidUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke;
    v5[3] = &unk_1E85CA0B8;
    v5[4] = self;
    [locationsCopy enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 UUIDString];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v10 = v9;
    if (v6 < 0x2000)
    {
      if (v6 > 63)
      {
        if (v6 <= 511)
        {
          switch(v6)
          {
            case 0x40:
              v11 = "FrontLeftOfCenter";
              goto LABEL_73;
            case 0x80:
              v11 = "FrontRightOfCenter";
              goto LABEL_73;
            case 0x100:
              v11 = "BackCenter";
              goto LABEL_73;
          }
        }

        else if (v6 > 2047)
        {
          if (v6 == 2048)
          {
            v11 = "SideRight";
            goto LABEL_73;
          }

          if (v6 == 4096)
          {
            v11 = "TopFrontLeft";
            goto LABEL_73;
          }
        }

        else
        {
          if (v6 == 512)
          {
            v11 = "LowFrequencyEffects2";
            goto LABEL_73;
          }

          if (v6 == 1024)
          {
            v11 = "SideLeft";
            goto LABEL_73;
          }
        }
      }

      else if (v6 <= 3)
      {
        switch(v6)
        {
          case 0:
            v11 = "NotAllowed";
            goto LABEL_73;
          case 1:
            v11 = "FrontLeft";
            goto LABEL_73;
          case 2:
            v11 = "FrontRight";
            goto LABEL_73;
        }
      }

      else if (v6 > 15)
      {
        if (v6 == 16)
        {
          v11 = "BackLeft";
          goto LABEL_73;
        }

        if (v6 == 32)
        {
          v11 = "BackRight";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 4)
        {
          v11 = "FrontCenter";
          goto LABEL_73;
        }

        if (v6 == 8)
        {
          v11 = "LowFrequencyEffects1";
          goto LABEL_73;
        }
      }
    }

    else if (v6 < 0x100000)
    {
      if (v6 < 0x10000)
      {
        switch(v6)
        {
          case 0x2000:
            v11 = "TopFrontRight";
            goto LABEL_73;
          case 0x4000:
            v11 = "TopFrontCenter";
            goto LABEL_73;
          case 0x8000:
            v11 = "TopCenter";
            goto LABEL_73;
        }
      }

      else if (v6 >= 0x40000)
      {
        if (v6 == 0x40000)
        {
          v11 = "TopSideLeft";
          goto LABEL_73;
        }

        if (v6 == 0x80000)
        {
          v11 = "TopSideRight";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 0x10000)
        {
          v11 = "TopBackLeft";
          goto LABEL_73;
        }

        if (v6 == 0x20000)
        {
          v11 = "TopBackRight";
          goto LABEL_73;
        }
      }
    }

    else if (v6 > 0xFFFFFF)
    {
      if (v6 > 0x3FFFFFF)
      {
        if (v6 == 0x4000000)
        {
          v11 = "LeftSurround";
          goto LABEL_73;
        }

        if (v6 == 0x8000000)
        {
          v11 = "RightSurround";
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 == 0x1000000)
        {
          v11 = "FrontLeftWide";
          goto LABEL_73;
        }

        if (v6 == 0x2000000)
        {
          v11 = "FrontRightWide";
          goto LABEL_73;
        }
      }
    }

    else if (v6 >= 0x400000)
    {
      if (v6 == 0x400000)
      {
        v11 = "BottomFrontLeft";
        goto LABEL_73;
      }

      if (v6 == 0x800000)
      {
        v11 = "BottomFrontRight";
        goto LABEL_73;
      }
    }

    else
    {
      if (v6 == 0x100000)
      {
        v11 = "TopBackCenter";
        goto LABEL_73;
      }

      if (v6 == 0x200000)
      {
        v11 = "BottomFrontCenter";
LABEL_73:
        v25 = 138412802;
        v26 = v8;
        v27 = 2112;
        v28 = v9;
        v29 = 2080;
        v30 = v11;
        _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: sessionDidUpdateLocations, session location %@ %@ %s", &v25, 0x20u);

        goto LABEL_74;
      }
    }

    v11 = "?";
    goto LABEL_73;
  }

LABEL_74:

  v12 = [*(a1 + 32) leftPeripheral];
  v13 = [v12 identifier];
  v14 = [v5 isEqual:v13];

  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = [v15 leftPeripheral];
    v17 = [*(a1 + 32) isLeftEventHandlerSet];
    v18 = [*(a1 + 32) isRightEventHandlerSet];
    goto LABEL_78;
  }

  v19 = [v15 rightPeripheral];
  v20 = [v19 identifier];
  v21 = [v5 isEqual:v20];

  if (v21)
  {
    v16 = [*(a1 + 32) rightPeripheral];
    v17 = [*(a1 + 32) isRightEventHandlerSet];
    v18 = [*(a1 + 32) isLeftEventHandlerSet];
LABEL_78:
    v22 = v18;
    if (v6 == 2)
    {
      [*(a1 + 32) swapPeripheral:v16 toEar:4];
      [*(a1 + 32) setRightLoadedProperties:{objc_msgSend(*(a1 + 32), "rightLoadedProperties") | 8}];
      [*(a1 + 32) setAvailableEars:{objc_msgSend(*(a1 + 32), "availableEars") | 4}];
      [*(a1 + 32) setIsRightEventHandlerSet:v17];
      [*(a1 + 32) setIsLeftEventHandlerSet:v22];
    }

    else if (v6 == 1)
    {
      [*(a1 + 32) swapPeripheral:v16 toEar:2];
      [*(a1 + 32) setLeftLoadedProperties:{objc_msgSend(*(a1 + 32), "leftLoadedProperties") | 8}];
      [*(a1 + 32) setAvailableEars:{objc_msgSend(*(a1 + 32), "availableEars") | 2}];
      [*(a1 + 32) setIsLeftEventHandlerSet:v17];
      [*(a1 + 32) setIsRightEventHandlerSet:v22];
    }

    else
    {
      v23 = HCLogHearingAids();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_2();
      }
    }

    goto LABEL_87;
  }

  v16 = HCLogHearingAids();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_1(v5);
  }

LABEL_87:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: Connect to %@", buf, 0xCu);
  }

  v4 = +[AXHearingAidDeviceController sharedController];
  [v4 stopSearching];

  [(AXHearingAidLEAudioDevice *)self setupLoadingProperties];
  v6.receiver = self;
  v6.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v6 connect];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidChange
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    isConnecting = [(AXHearingAidDevice *)self isConnecting];
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: connectionDidChange, isConnecting %d %@", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v5 connectionDidChange];
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)addPeripheral:(id)peripheral
{
  v17 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v10.receiver = self;
  v10.super_class = AXHearingAidLEAudioDevice;
  v5 = [(AXHearingAidDevice *)&v10 addPeripheral:peripheralCopy];
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = [peripheralCopy identifier];
    *buf = 138412802;
    v12 = identifier;
    v13 = 1024;
    v14 = v5;
    v15 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_1DA5E2000, v6, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: addPeripheral: %@, didAdd: %d\n%@", buf, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)loadBasicProperties
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(AXHearingAidDevice *)self name];
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: loadBasicProperties SKIP for %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)loadRequiredProperties
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(AXHearingAidDevice *)self name];
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: loadRequiredProperties SKIP for %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)didLoadPersistentProperties
{
  name = [(AXHearingAidDevice *)self name];
  v4 = [name length];
  v7 = v4 && (-[AXHearingAidDevice deviceUUID](self, "deviceUUID"), v5 = ;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice didLoadPersistentProperties];
  }

  return v7;
}

- (unint64_t)availablePropertiesForPeripheral:(id)peripheral
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice availablePropertiesForPeripheral:?];
  }

  return 0x4000D80538;
}

- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral
{
  notifyCopy = notify;
  v22 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice setNotify:? forPeripheral:?];
  }

  if (peripheralCopy)
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      services = [peripheralCopy services];
      *buf = 67109634;
      v17 = notifyCopy;
      v18 = 2112;
      v19 = peripheralCopy;
      v20 = 2112;
      v21 = services;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: peripheral setting notify %d for peripheral: %@ - %@", buf, 0x1Cu);
    }

    v10 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
    services2 = [peripheralCopy services];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__AXHearingAidLEAudioDevice_setNotify_forPeripheral___block_invoke;
    v14[3] = &unk_1E85CA0E0;
    v15 = v10;
    v12 = v10;
    [services2 enumerateObjectsUsingBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __53__AXHearingAidLEAudioDevice_setNotify_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  if (a1)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "LEA 3: peripheral DIS", v5, 2u);
    }
  }
}

- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period
{
  peripheralCopy = peripheral;
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice loadProperties:forPeripheral:withRetryPeriod:];
  }
}

- (void)updateName
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: updated name %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)peripheralDidUpdateDeviceInfo
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isPaired = [(AXHearingAidDevice *)self isPaired];
    keepInSync = [(AXHearingAidDevice *)self keepInSync];
    name = [(AXHearingAidDevice *)self name];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    name2 = [leftPeripheral name];
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    name3 = [rightPeripheral name];
    v12[0] = 67110402;
    v12[1] = isPaired;
    v13 = 1024;
    v14 = keepInSync;
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = name2;
    v21 = 2112;
    v22 = name3;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: peripheralDidUpdateDeviceInfo, (paired: %d %d) device info updated: %p %@, left: %@, right: %@", v12, 0x36u);
  }

  [(AXHearingAidLEAudioDevice *)self updateName];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)value forProperty:(unint64_t)property
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    name = [(AXHearingAidDevice *)self name];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    *buf = 138412802;
    v13 = name;
    v14 = 2112;
    v15 = valueCopy;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: setValue, %@ %@ %@", buf, 0x20u);
  }

  v11.receiver = self;
  v11.super_class = AXHearingAidLEAudioDevice;
  [(AXHearingAidDevice *)&v11 setValue:valueCopy forProperty:property];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral
{
  v30 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v7 = [(AXHearingAidLEAudioDevice *)self earForPeripheral:peripheralCopy];
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    identifier = [peripheralCopy identifier];
    name = [(AXHearingAidDevice *)self name];
    v22 = 138413058;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = identifier;
    v28 = 2112;
    v29 = name;
    _os_log_debug_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEBUG, "HearingAidLEA3Device LEA 3: delayWriteProperty %@ ear %@ peripheral %@ device name %@", &v22, 0x2Au);
  }

  if (v7)
  {
    if ((property & 0x400) != 0)
    {
      if (v7 == 2)
      {
        [(AXHearingAidDevice *)self leftSelectedProgram];
      }

      else
      {
        [(AXHearingAidDevice *)self rightSelectedProgram];
      }
      v9 = ;
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: setActivePreset %@", &v22, 0xCu);
      }

      [peripheralCopy setActivePreset:0 OptionalPresetIndex:objc_msgSend(v9 withResponse:{"index"), &__block_literal_global_49}];
    }

    if ((property & 0x4000000000) != 0)
    {
      if (v7 == 2)
      {
        [(AXHearingAidDevice *)self leftMixedVolume];
      }

      else
      {
        [(AXHearingAidDevice *)self rightMixedVolume];
      }

      v12 = v11;
      v13 = (v11 * 255.0);
      v14 = HCLogHearingAids();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v13];
        v22 = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: setVolume %@ adjusted %@", &v22, 0x16u);
      }

      [peripheralCopy setVolume:v13 withResponse:&__block_literal_global_52];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_cold_1();
    }
  }
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HCLogHearingAids();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50_cold_1();
    }
  }
}

- (void)writeValueForProperty:(unint64_t)property
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice writeValueForProperty:?];
  }
}

- (id)peripheral:(id)peripheral characteristicForUUID:(id)d
{
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXHearingAidLEAudioDevice peripheral:? characteristicForUUID:?];
  }

  return 0;
}

- (int)earForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    v8 = 2;
  }

  else
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral == peripheralCopy)
    {
      v8 = 4;
    }

    else
    {
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice earForPeripheral:peripheralCopy];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)setupUpdatesHandlerForLEAudioPeripheral:(id)peripheral
{
  v17 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (!peripheralCopy)
  {
    goto LABEL_14;
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    if ([(AXHearingAidLEAudioDevice *)self isLeftEventHandlerSet])
    {
      goto LABEL_14;
    }

    [(AXHearingAidLEAudioDevice *)self setIsLeftEventHandlerSet:1];
  }

  else
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral != peripheralCopy)
    {
      v7 = HCLogHearingAids();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AXHearingAidLEAudioDevice setupUpdatesHandlerForLEAudioPeripheral:peripheralCopy];
      }

      goto LABEL_14;
    }

    if ([(AXHearingAidLEAudioDevice *)self isRightEventHandlerSet])
    {
      goto LABEL_14;
    }

    [(AXHearingAidLEAudioDevice *)self setIsRightEventHandlerSet:1];
  }

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peripheralCopy identifier];
    *buf = 138412546;
    v14 = identifier;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device LEA 3: setup update handler for peripheral %@, device: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AXHearingAidLEAudioDevice_setupUpdatesHandlerForLEAudioPeripheral___block_invoke;
  v11[3] = &unk_1E85CA128;
  v11[4] = self;
  objc_copyWeak(&v12, buf);
  [peripheralCopy setUpdateHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
}

void __69__AXHearingAidLEAudioDevice_setupUpdatesHandlerForLEAudioPeripheral___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 identifier];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "deviceType")}];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "eventType")}];
    v11 = [v6 description];
    v12 = *(a1 + 32);
    *buf = 138413570;
    v59 = v8;
    v60 = 2112;
    v61 = v9;
    v62 = 2112;
    v63 = v10;
    v64 = 2112;
    v65 = v6;
    v66 = 2112;
    v67 = v11;
    v68 = 2112;
    v69 = v12;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: updateHandler %@ deviceType: %@, event type: %@, event: %@\n %@device: %@", buf, 0x3Eu);
  }

  v13 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained earForPeripheral:v5];

  if ([v13 eventType] == 8)
  {
    v16 = HCLogHearingAids();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 identifier];
      v18 = MEMORY[0x1E696AD98];
      v19 = [v13 presetResults];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
      v21 = [v13 updatedValue];
      *buf = 138412802;
      v59 = v17;
      v60 = 2112;
      v61 = v20;
      v62 = 2112;
      v63 = v21;
      _os_log_impl(&dword_1DA5E2000, v16, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, presets %@, active preset index %@", buf, 0x20u);
    }

    v22 = objc_loadWeakRetained((a1 + 40));
    v23 = [v13 presetResults];
    v24 = [v13 activePreset];
    [v22 processBTPresetsUpdate:v23 activePreset:v24 forEar:v15];

    goto LABEL_7;
  }

  if ([v13 eventType] == 9)
  {
    v25 = HCLogHearingAids();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v5 identifier];
      v27 = [v13 updatedValue];
      *buf = 138412546;
      v59 = v26;
      v60 = 2112;
      v61 = v27;
      _os_log_impl(&dword_1DA5E2000, v25, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, active preset %@", buf, 0x16u);
    }

    v28 = [v13 updatedValue];

    if (v28)
    {
      v29 = [v13 updatedValue];
      v30 = [v29 integerValue];

      v31 = *(a1 + 32);
      if (v15 == 2)
      {
        [v31 leftPrograms];
      }

      else
      {
        [v31 rightPrograms];
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v22 = v54 = 0u;
      v44 = [v22 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v54;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v54 != v46)
            {
              objc_enumerationMutation(v22);
            }

            v48 = *(*(&v53 + 1) + 8 * i);
            [v48 setIsSelected:{v30 == objc_msgSend(v48, "index", v53)}];
            if ([v48 isSelected])
            {
              v49 = *(a1 + 32);
              if (v15 == 4)
              {
                [v49 setRightSelectedProgram:v48];
              }

              else
              {
                [v49 setLeftSelectedProgram:v48];
              }
            }
          }

          v45 = [v22 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v45);
      }

      v50 = +[AXHearingAidDeviceController sharedController];
      [v50 device:*(a1 + 32) didUpdateProperty:1024];

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ([v13 eventType] == 10)
  {
    v22 = HCLogHearingAids();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = [v5 identifier];
    v32 = [v13 updatedValue];
    *buf = 138412546;
    v59 = v23;
    v60 = 2112;
    v61 = v32;
    v33 = "HearingAidLEA3Device peripheral LEA 3: update %@, name preset at index: %@";
    goto LABEL_17;
  }

  if ([v13 eventType] != 1)
  {
    if ([v13 eventType] != 7)
    {
      goto LABEL_37;
    }

    v22 = HCLogHearingAids();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v23 = [v5 identifier];
    v32 = [v13 updatedValue];
    *buf = 138412546;
    v59 = v23;
    v60 = 2112;
    v61 = v32;
    v33 = "HearingAidLEA3Device peripheral LEA 3: update %@, HA features %@";
LABEL_17:
    _os_log_impl(&dword_1DA5E2000, v22, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);

LABEL_7:
LABEL_36:

    goto LABEL_37;
  }

  v34 = HCLogHearingAids();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v5 identifier];
    v36 = [v13 updatedValue];
    *buf = 138412546;
    v59 = v35;
    v60 = 2112;
    v61 = v36;
    _os_log_impl(&dword_1DA5E2000, v34, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: update %@, volume %@", buf, 0x16u);
  }

  v37 = [v13 updatedValue];
  [v37 floatValue];
  v39 = v38;

  v40 = *(a1 + 32);
  v41 = v39 / 255.0;
  if (v15 == 2)
  {
    [v40 leftMixedVolume];
    v43 = v42;
    [*(a1 + 32) setLeftMixedVolume:v41];
    [*(a1 + 32) setLeftLoadedProperties:{objc_msgSend(*(a1 + 32), "leftLoadedProperties") | 0x4000000000}];
  }

  else
  {
    [v40 rightMixedVolume];
    v43 = v52;
    [*(a1 + 32) setRightMixedVolume:v41];
    [*(a1 + 32) setRightLoadedProperties:{objc_msgSend(*(a1 + 32), "rightLoadedProperties") | 0x4000000000}];
  }

  if (v43 != v41)
  {
    v22 = +[AXHearingAidDeviceController sharedController];
    [v22 device:*(a1 + 32) didUpdateProperty:0x4000000000];
    goto LABEL_36;
  }

LABEL_37:

  v51 = *MEMORY[0x1E69E9840];
}

- (unint64_t)availablePropertiesFromDISForPeripheral:(id)peripheral
{
  v26 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
  services = [peripheralCopy services];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke;
  v14[3] = &unk_1E85CA178;
  v7 = v5;
  selfCopy = self;
  v17 = &v18;
  v15 = v7;
  [services enumerateObjectsUsingBlock:v14];

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19[3]];
    identifier = [peripheralCopy identifier];
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = identifier;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidLEA3Device peripheral LEA 3: availablePropertiesFromDIS %@ for Peripheral %@", buf, 0x16u);
  }

  v11 = v19[3];
  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 characteristics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke_2;
    v7[3] = &unk_1E85CA150;
    v8 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __69__AXHearingAidLEAudioDevice_availablePropertiesFromDISForPeripheral___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) propertyForCharacteristic:a2];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (void)sessionDidUpdateValue:forProperty:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000000000];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __55__AXHearingAidLEAudioDevice_sessionDidUpdateLocations___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v1];
  v3 = [v0 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didLoadPersistentProperties
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  name = [v1 name];
  leftPeripheralUUID = [v0 leftPeripheralUUID];
  rightPeripheralUUID = [v0 rightPeripheralUUID];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)availablePropertiesForPeripheral:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setNotify:(void *)a1 forPeripheral:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)loadProperties:forPeripheral:withRetryPeriod:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 name];
  v3 = [v0 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_ERROR, "HearingAidLEA3Device peripheral LEA 3: setActivePreset error %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __62__AXHearingAidLEAudioDevice_delayWriteProperty_forPeripheral___block_invoke_50_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1DA5E2000, v0, OS_LOG_TYPE_ERROR, "HearingAidLEA3Device peripheral LEA 3: setVolume error %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)writeValueForProperty:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 characteristicForUUID:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)earForPeripheral:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setupUpdatesHandlerForLEAudioPeripheral:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end