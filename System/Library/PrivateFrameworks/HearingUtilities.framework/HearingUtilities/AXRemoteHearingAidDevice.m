@interface AXRemoteHearingAidDevice
- (AXHARemoteUpdateProtocol)updateDelegate;
- (AXRemoteHearingAidDevice)init;
- (AXRemoteHearingAidDevice)initWithPersistentRepresentation:(id)a3;
- (AXRemoteHearingAidDevice)initWithRemoteRepresentation:(id)a3 andDeviceID:(id)a4;
- (BOOL)checkDidLoadProperties:(unint64_t)a3;
- (BOOL)containsPeripheralWithUUID:(id)a3;
- (BOOL)didLoadRequiredPeerProperties;
- (BOOL)didLoadRequiredProperties;
- (BOOL)hasConnection;
- (BOOL)isConnected;
- (BOOL)isLeftConnected;
- (BOOL)isRightConnected;
- (BOOL)programsListsAreEqual;
- (BOOL)propertyIsAvailable:(unint64_t)a3 forEar:(int)a4;
- (BOOL)shouldDisplayCombinedVolume;
- (BOOL)shouldOnlyShowIndividualVolumesForProperty:(unint64_t)a3;
- (BOOL)showCombinedPrograms;
- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)a3;
- (NSString)description;
- (double)combinedVolumeForProperty:(unint64_t)a3;
- (id)_valueForProperty:(unint64_t)a3;
- (id)combinedPrograms;
- (id)programAtIndex:(unsigned __int8)a3 forEar:(int)a4;
- (id)programs;
- (id)selectedProgramIndexes;
- (id)selectedPrograms;
- (id)valueForProperty:(unint64_t)a3;
- (void)_delayWriteProperties;
- (void)_updateSelectedProgramsProperties;
- (void)_writeAllProgramSelectionsToPeripheral;
- (void)connect;
- (void)dealloc;
- (void)disconnectAndUnpair:(BOOL)a3;
- (void)loadRequiredProperties;
- (void)selectProgram:(id)a3 forEar:(int)a4;
- (void)setKeepInSync:(BOOL)a3;
- (void)setLeftBass:(char)a3;
- (void)setLeftMicrophoneVolume:(double)a3;
- (void)setLeftMixedVolume:(double)a3;
- (void)setLeftSensitivity:(double)a3;
- (void)setLeftStreamVolume:(double)a3;
- (void)setLeftTreble:(char)a3;
- (void)setRightBass:(char)a3;
- (void)setRightMicrophoneVolume:(double)a3;
- (void)setRightMixedVolume:(double)a3;
- (void)setRightSensitivity:(double)a3;
- (void)setRightStreamVolume:(double)a3;
- (void)setRightTreble:(char)a3;
- (void)setValue:(id)a3 forProperty:(unint64_t)a4;
- (void)writeVolumesForProperty:(unint64_t)a3;
@end

@implementation AXRemoteHearingAidDevice

- (AXRemoteHearingAidDevice)init
{
  v9.receiver = self;
  v9.super_class = AXRemoteHearingAidDevice;
  v2 = [(AXRemoteHearingAidDevice *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695E0F0];
    [(AXRemoteHearingAidDevice *)v2 setLeftPrograms:MEMORY[0x1E695E0F0]];
    [(AXRemoteHearingAidDevice *)v3 setRightPrograms:v4];
    v5 = [MEMORY[0x1E695DF70] arrayWithObjects:{&stru_1F5614A78, &stru_1F5614A78, 0}];
    [(AXRemoteHearingAidDevice *)v3 setManufacturer:v5];

    v6 = [MEMORY[0x1E695DF70] arrayWithObjects:{&stru_1F5614A78, &stru_1F5614A78, 0}];
    [(AXRemoteHearingAidDevice *)v3 setModel:v6];

    [(AXRemoteHearingAidDevice *)v3 setSupportsCombinedPresets:1];
    [(AXRemoteHearingAidDevice *)v3 setSupportsCombinedVolumes:1];
    [(AXRemoteHearingAidDevice *)v3 setSupportsBinauralStreaming:1];
    v7 = +[AXHAServer sharedInstance];
    [(AXRemoteHearingAidDevice *)v3 setUpdateDelegate:v7];

    [(AXRemoteHearingAidDevice *)v3 setRequiredProperties:0xD07D42105FCLL];
  }

  return v3;
}

- (AXRemoteHearingAidDevice)initWithRemoteRepresentation:(id)a3 andDeviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXRemoteHearingAidDevice *)self init];
  v9 = v8;
  if (v8)
  {
    [(AXRemoteHearingAidDevice *)v8 setDeviceUUID:v7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__AXRemoteHearingAidDevice_initWithRemoteRepresentation_andDeviceID___block_invoke;
    v11[3] = &unk_1E85CA558;
    v12 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v9;
}

void __69__AXRemoteHearingAidDevice_initWithRemoteRepresentation_andDeviceID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setValue:v5 forProperty:{objc_msgSend(a2, "unsignedLongLongValue")}];
}

- (AXRemoteHearingAidDevice)initWithPersistentRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(AXRemoteHearingAidDevice *)self init];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__AXRemoteHearingAidDevice_initWithPersistentRepresentation___block_invoke;
    v9[3] = &unk_1E85CA558;
    v7 = v5;
    v10 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v9];
    [(AXRemoteHearingAidDevice *)v7 setIsPaired:1];
  }

  return v6;
}

void __61__AXRemoteHearingAidDevice_initWithPersistentRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  if ([v27 isEqualToString:@"ax_hearing_device_man_key"])
  {
    v6 = [*(a1 + 32) manufacturer];
    v7 = [v6 mutableCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
    {
      [v7 replaceObjectAtIndex:0 withObject:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setArray:v5];
      }
    }

    [*(a1 + 32) setManufacturer:v7];
    goto LABEL_43;
  }

  if ([v27 isEqualToString:@"ax_hearing_device_model_key"])
  {
    v8 = [*(a1 + 32) model];
    v7 = [v8 mutableCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
    {
      [v7 replaceObjectAtIndex:0 withObject:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setArray:v5];
      }
    }

    [*(a1 + 32) setModel:v7];
    goto LABEL_43;
  }

  if ([v27 isEqualToString:@"ax_hearing_device_man_model_key"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_44;
    }

    v9 = *(a1 + 32);
    v10 = [&unk_1F5623ED8 stringValue];
    v11 = [v5 objectForKey:v10];
    [v9 setValue:v11 forProperty:0x80000];

    v12 = *(a1 + 32);
    v7 = [&unk_1F5623EF0 stringValue];
    v13 = [v5 objectForKey:v7];
    [v12 setValue:v13 forProperty:0x100000];
    goto LABEL_42;
  }

  if ([v27 isEqualToString:@"ax_hearing_device_name_key"])
  {
    [*(a1 + 32) setName:v5];
    goto LABEL_44;
  }

  if ([v27 isEqualToString:@"ax_hearing_device_lr_key"])
  {
    v14 = [v5 intValue];
    if (v14 <= 6 && ((1 << v14) & 0x54) != 0)
    {
      [*(a1 + 32) setAvailableEars:v14];
    }
  }

  else if (([v27 isEqualToString:@"ax_hearing_device_left_peripheral_key"] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", @"ax_hearing_device_right_peripheral_key"))
  {
    v15 = [v5 objectForKey:@"ax_hearing_device_isleft_key"];
    v16 = [v15 BOOLValue];

    v7 = [v5 objectForKey:@"ax_hearing_device_hiid_key"];
    v13 = [v5 objectForKey:@"ax_hearing_device_hiidother_key"];
    v17 = [v5 objectForKey:@"ax_hearing_device_uuid_key"];
    v18 = [v5 objectForKey:@"ax_hearing_device_lea_version_key"];
    v19 = [v18 intValue];

    if ([v17 length] && (objc_msgSend(v7, "length") || objc_msgSend(v13, "length")))
    {
      v20 = [v17 hasPrefix:*MEMORY[0x1E69A4538]];
      if (v16)
      {
        if ((v20 & 1) == 0)
        {
          [*(a1 + 32) setLeftPeripheralUUID:v17];
        }

        [*(a1 + 32) setLeftUUID:v7];
        [*(a1 + 32) setRightUUID:v13];
        [*(a1 + 32) setLeftLeaVersion:v19];
      }

      else
      {
        if ((v20 & 1) == 0)
        {
          [*(a1 + 32) setRightPeripheralUUID:v17];
        }

        [*(a1 + 32) setLeftUUID:v13];
        [*(a1 + 32) setRightUUID:v7];
        [*(a1 + 32) setRightLeaVersion:v19];
      }

      v21 = [*(a1 + 32) leftUUID];

      v22 = [*(a1 + 32) rightUUID];
      v23 = v22;
      if (v21)
      {

        if (v23)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [*(a1 + 32) leftUUID];
          v26 = [*(a1 + 32) rightUUID];
          v23 = [v24 stringWithFormat:@"%@_%@", v25, v26];
        }

        else
        {
          v23 = [*(a1 + 32) leftUUID];
        }
      }

      [*(a1 + 32) setDeviceUUID:v23];
    }

LABEL_42:
LABEL_43:
  }

LABEL_44:
}

- (void)dealloc
{
  [(AXRemoteHearingAidDevice *)self setManufacturer:0];
  [(AXRemoteHearingAidDevice *)self setModel:0];
  [(AXRemoteHearingAidDevice *)self setLeftFirmwareVersion:0];
  [(AXRemoteHearingAidDevice *)self setRightFirmwareVersion:0];
  [(AXRemoteHearingAidDevice *)self setLeftHardwareVersion:0];
  [(AXRemoteHearingAidDevice *)self setRightHardwareVersion:0];
  [(AXRemoteHearingAidDevice *)self setRightPrograms:0];
  [(AXRemoteHearingAidDevice *)self setLeftPrograms:0];
  [(AXRemoteHearingAidDevice *)self setLeftPeripheralUUID:0];
  [(AXRemoteHearingAidDevice *)self setRightPeripheralUUID:0];
  [(AXRemoteHearingAidDevice *)self setLeftSelectedProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedProgram:0];
  [(AXRemoteHearingAidDevice *)self setLeftUUID:0];
  [(AXRemoteHearingAidDevice *)self setRightUUID:0];
  [(AXRemoteHearingAidDevice *)self setLeftSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setLeftBatteryLowDate:0];
  [(AXRemoteHearingAidDevice *)self setRightBatteryLowDate:0];
  [(AXRemoteHearingAidDevice *)self setDeviceUUID:0];
  [(AXRemoteHearingAidDevice *)self setName:0];
  v3.receiver = self;
  v3.super_class = AXRemoteHearingAidDevice;
  [(AXRemoteHearingAidDevice *)&v3 dealloc];
}

- (void)connect
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Requesting connect: %@", &v7, 0xCu);
  }

  v4 = [(AXRemoteHearingAidDevice *)self updateDelegate];
  v5 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [v4 writeValue:&unk_1F5623F08 forProperty:0x200000 andDeviceID:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disconnectAndUnpair:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Requesting disconnect: %@", &v8, 0xCu);
  }

  v5 = [(AXRemoteHearingAidDevice *)self updateDelegate];
  v6 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [v5 writeValue:&unk_1F5623F20 forProperty:0x200000 andDeviceID:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnected
{
  v3 = [(AXRemoteHearingAidDevice *)self leftAvailable];
  if (v3 != [(AXRemoteHearingAidDevice *)self leftConnected])
  {
    return 0;
  }

  v5 = [(AXRemoteHearingAidDevice *)self rightAvailable];
  return v5 ^ [(AXRemoteHearingAidDevice *)self rightConnected]^ 1;
}

- (BOOL)hasConnection
{
  if ([(AXRemoteHearingAidDevice *)self leftConnected])
  {
    return 1;
  }

  return [(AXRemoteHearingAidDevice *)self rightConnected];
}

- (BOOL)isLeftConnected
{
  if ([(AXRemoteHearingAidDevice *)self leftAvailable])
  {
    if ([(AXRemoteHearingAidDevice *)self leftConnected])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = +[AXHAServer sharedInstance];
      if ([v4 hearingAidReachable])
      {
        v3 = ![(AXRemoteHearingAidDevice *)self rightConnected];
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isRightConnected
{
  if ([(AXRemoteHearingAidDevice *)self rightAvailable])
  {
    if ([(AXRemoteHearingAidDevice *)self rightConnected])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = +[AXHAServer sharedInstance];
      if ([v4 hearingAidReachable])
      {
        v3 = ![(AXRemoteHearingAidDevice *)self leftConnected];
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)containsPeripheralWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  if ([v5 rangeOfString:v4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    v7 = [v4 rangeOfString:v6] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)didLoadRequiredPeerProperties
{
  v3 = [(AXRemoteHearingAidDevice *)self requiredProperties]& 0xFFFFFFFFFBDFFFFFLL;

  return [(AXRemoteHearingAidDevice *)self checkDidLoadProperties:v3];
}

- (BOOL)didLoadRequiredProperties
{
  v3 = [(AXRemoteHearingAidDevice *)self requiredProperties];

  return [(AXRemoteHearingAidDevice *)self checkDidLoadProperties:v3];
}

- (BOOL)checkDidLoadProperties:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(AXRemoteHearingAidDevice *)self didLoadProperty:a3];
  if (!v4 && [MEMORY[0x1E69A4560] isInternalInstall])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(AXRemoteHearingAidDevice *)self requiredProperties];
    for (i = 0; i != 64; ++i)
    {
      if (((1 << i) & v6) != 0 && ![(AXRemoteHearingAidDevice *)self didLoadProperty:1 << i])
      {
        v8 = hearingPropertyDescription(1 << i);
        [v5 addObject:v8];
      }
    }

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 componentsJoinedByString:@" and "];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "Haven't loaded %@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)loadRequiredProperties
{
  v5 = [(AXRemoteHearingAidDevice *)self updateDelegate];
  v3 = [(AXRemoteHearingAidDevice *)self requiredProperties];
  v4 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [v5 updateProperty:v3 | 0xFF800105C4 forDeviceID:v4];
}

- (BOOL)propertyIsAvailable:(unint64_t)a3 forEar:(int)a4
{
  switch(a4)
  {
    case 6:
      if ((a3 & ~[(AXRemoteHearingAidDevice *)self leftAvailableProperties]) == 0)
      {
        return 1;
      }

      goto LABEL_7;
    case 4:
LABEL_7:
      v6 = [(AXRemoteHearingAidDevice *)self rightAvailableProperties];
      return (a3 & ~v6) == 0;
    case 2:
      v6 = [(AXRemoteHearingAidDevice *)self leftAvailableProperties];
      return (a3 & ~v6) == 0;
  }

  return 0;
}

- (void)_delayWriteProperties
{
  self->_delayWritePending = 1;
  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x40) != 0)
  {
    v3 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v4 = MEMORY[0x1E695DEC8];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftMicrophoneVolume];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightMicrophoneVolume];
    v7 = [v4 arrayWithObjects:{v5, v6, 0}];
    v8 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v3 writeValue:v7 forProperty:64 andDeviceID:v8];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFFFFFFFFBFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x80) != 0)
  {
    v9 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v10 = MEMORY[0x1E695DEC8];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftStreamVolume];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightStreamVolume];
    v13 = [v10 arrayWithObjects:{v11, v12, 0}];
    v14 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v9 writeValue:v13 forProperty:128 andDeviceID:v14];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFFFFFFFF7FLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x80000000) != 0)
  {
    v15 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v16 = MEMORY[0x1E695DEC8];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftSensitivity];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightSensitivity];
    v19 = [v16 arrayWithObjects:{v17, v18, 0}];
    v20 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v15 writeValue:v19 forProperty:0x80000000 andDeviceID:v20];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFF7FFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x2000000000) != 0)
  {
    v21 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v22 = MEMORY[0x1E695DEC8];
    v23 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftTreble];
    v24 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightTreble];
    v25 = [v22 arrayWithObjects:{v23, v24, 0}];
    v26 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v21 writeValue:v25 forProperty:0x2000000000 andDeviceID:v26];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFDFFFFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x1000000000) != 0)
  {
    v27 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v28 = MEMORY[0x1E695DEC8];
    v29 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftBass];
    v30 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightBass];
    v31 = [v28 arrayWithObjects:{v29, v30, 0}];
    v32 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v27 writeValue:v31 forProperty:0x1000000000 andDeviceID:v32];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFEFFFFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x4000000000) != 0)
  {
    v33 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v34 = MEMORY[0x1E695DEC8];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftMixedVolume];
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightMixedVolume];
    v37 = [v34 arrayWithObjects:{v35, v36, 0}];
    v38 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [v33 writeValue:v37 forProperty:0x4000000000 andDeviceID:v38];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFBFFFFFFFFFLL];
  }

  v39 = dispatch_time(0, 100000000);
  v40 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AXRemoteHearingAidDevice__delayWriteProperties__block_invoke;
  block[3] = &unk_1E85C9F60;
  block[4] = self;
  dispatch_after(v39, v40, block);
}

- (void)writeVolumesForProperty:(unint64_t)a3
{
  [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]| a3];
  if (a3 > 0xFFFFFFFFFLL)
  {
    if (a3 != 0x1000000000 && a3 != 0x4000000000)
    {
      v5 = 0x2000000000;
LABEL_8:
      if (a3 != v5)
      {
        return;
      }
    }
  }

  else if (a3 != 64 && a3 != 128)
  {
    v5 = 0x80000000;
    goto LABEL_8;
  }

  if (!self->_delayWritePending)
  {

    [(AXRemoteHearingAidDevice *)self _delayWriteProperties];
  }
}

- (void)setLeftMicrophoneVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_leftMicrophoneVolume != v4)
  {
    self->_leftMicrophoneVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:64];
  }
}

- (void)setRightMicrophoneVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_rightMicrophoneVolume != v4)
  {
    self->_rightMicrophoneVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:64];
  }
}

- (void)setLeftStreamVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_leftStreamVolume != v4)
  {
    self->_leftStreamVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:128];
  }
}

- (void)setRightStreamVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_rightStreamVolume != v4)
  {
    self->_rightStreamVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:128];
  }
}

- (void)setLeftSensitivity:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_leftSensitivity != v4)
  {
    self->_leftSensitivity = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x80000000];
  }
}

- (void)setRightSensitivity:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_rightSensitivity != v4)
  {
    self->_rightSensitivity = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x80000000];
  }
}

- (void)setLeftTreble:(char)a3
{
  if (a3 <= -127)
  {
    v3 = -127;
  }

  else
  {
    v3 = a3;
  }

  if (self->_leftTreble != v3)
  {
    self->_leftTreble = v3;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x2000000000];
  }
}

- (void)setRightTreble:(char)a3
{
  if (a3 <= -127)
  {
    v3 = -127;
  }

  else
  {
    v3 = a3;
  }

  if (self->_rightTreble != v3)
  {
    self->_rightTreble = v3;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x2000000000];
  }
}

- (void)setLeftBass:(char)a3
{
  if (a3 <= -127)
  {
    v3 = -127;
  }

  else
  {
    v3 = a3;
  }

  if (self->_leftBass != v3)
  {
    self->_leftBass = v3;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x1000000000];
  }
}

- (void)setRightBass:(char)a3
{
  if (a3 <= -127)
  {
    v3 = -127;
  }

  else
  {
    v3 = a3;
  }

  if (self->_rightBass != v3)
  {
    self->_rightBass = v3;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x1000000000];
  }
}

- (void)setLeftMixedVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_leftMixedVolume != v4)
  {
    self->_leftMixedVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x4000000000];
  }
}

- (void)setRightMixedVolume:(double)a3
{
  v3 = 0.0;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (a3 <= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  if (self->_rightMixedVolume != v4)
  {
    self->_rightMixedVolume = v4;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x4000000000];
  }
}

- (id)programAtIndex:(unsigned __int8)a3 forEar:(int)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if (a4 == 2)
  {
    [(AXRemoteHearingAidDevice *)self leftPrograms];
  }

  else
  {
    [(AXRemoteHearingAidDevice *)self rightPrograms];
  }
  v5 = ;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AXRemoteHearingAidDevice_programAtIndex_forEar___block_invoke;
  v8[3] = &unk_1E85CC9C0;
  v9 = a3;
  v8[4] = &v10;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __50__AXRemoteHearingAidDevice_programAtIndex_forEar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 index] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)a3
{
  v5 = [(AXRemoteHearingAidDevice *)self leftAvailable];
  if (v5 != [(AXRemoteHearingAidDevice *)self rightAvailable])
  {
    return 1;
  }

  result = 0;
  if (a3 > 0x7FFFFFFF)
  {
    if (a3 == 0x80000000)
    {
      v15 = [(AXRemoteHearingAidDevice *)self leftSensitivitySteps];
      if (v15 == [(AXRemoteHearingAidDevice *)self rightSensitivitySteps])
      {
        [(AXRemoteHearingAidDevice *)self leftSensitivity];
        v9 = v16;
        [(AXRemoteHearingAidDevice *)self rightSensitivity];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }

    else
    {
      if (a3 != 0x4000000000)
      {
        return result;
      }

      v11 = [(AXRemoteHearingAidDevice *)self leftMixedVolumeSteps];
      if (v11 == [(AXRemoteHearingAidDevice *)self rightMixedVolumeSteps])
      {
        [(AXRemoteHearingAidDevice *)self leftMixedVolume];
        v9 = v12;
        [(AXRemoteHearingAidDevice *)self rightMixedVolume];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }
  }

  else if (a3 == 64)
  {
    v13 = [(AXRemoteHearingAidDevice *)self leftMicrophoneVolumeSteps];
    if (v13 == [(AXRemoteHearingAidDevice *)self rightMicrophoneVolumeSteps])
    {
      [(AXRemoteHearingAidDevice *)self leftMicrophoneVolume];
      v9 = v14;
      [(AXRemoteHearingAidDevice *)self rightMicrophoneVolume];
      return vabdd_f64(v9, v10) < 0.01;
    }
  }

  else
  {
    if (a3 != 128)
    {
      return result;
    }

    v7 = [(AXRemoteHearingAidDevice *)self leftStreamVolumeSteps];
    if (v7 == [(AXRemoteHearingAidDevice *)self rightStreamVolumeSteps])
    {
      [(AXRemoteHearingAidDevice *)self leftStreamVolume];
      v9 = v8;
      [(AXRemoteHearingAidDevice *)self rightStreamVolume];
      return vabdd_f64(v9, v10) < 0.01;
    }
  }

  return 0;
}

- (BOOL)shouldDisplayCombinedVolume
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = (![v3 independentHearingAidSettings] || -[AXRemoteHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes")) && -[AXRemoteHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes") && -[AXRemoteHearingAidDevice isLeftConnected](self, "isLeftConnected") && -[AXRemoteHearingAidDevice isRightConnected](self, "isRightConnected");

  return v4;
}

- (BOOL)shouldOnlyShowIndividualVolumesForProperty:(unint64_t)a3
{
  v5 = +[HUHearingAidSettings sharedInstance];
  if ((![v5 independentHearingAidSettings] || -[AXRemoteHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes") || !-[AXRemoteHearingAidDevice isLeftConnected](self, "isLeftConnected") || !-[AXRemoteHearingAidDevice isRightConnected](self, "isRightConnected")) && -[AXRemoteHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes") && (v6 = -[AXRemoteHearingAidDevice isLeftConnected](self, "isLeftConnected"), v6 == -[AXRemoteHearingAidDevice isRightConnected](self, "isRightConnected")))
  {
    v7 = ![(AXRemoteHearingAidDevice *)self supportsCombinedVolumesForProperty:a3];
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)programsListsAreEqual
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v4 = [v3 count];
  v5 = [(AXRemoteHearingAidDevice *)self rightPrograms];
  LOBYTE(v4) = v4 == [v5 count];

  v18 = v4;
  if (*(v16 + 24) != 1)
  {
    goto LABEL_5;
  }

  v6 = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__AXRemoteHearingAidDevice_programsListsAreEqual__block_invoke;
  v14[3] = &unk_1E85CC948;
  v14[4] = self;
  v14[5] = &v15;
  [v6 enumerateObjectsUsingBlock:v14];

  if (v16[3])
  {
    v7 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
    v8 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
    if ([v7 isEqual:v8])
    {
      v9 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
      v10 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
      v11 = [v9 isEqual:v10];
      *(v16 + 24) = v11;
    }

    else
    {
      *(v16 + 24) = 0;
    }

    v12 = *(v16 + 24);
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v12 & 1;
}

void __49__AXRemoteHearingAidDevice_programsListsAreEqual__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 index];
  v8 = [*(a1 + 32) rightPrograms];
  v9 = [v8 objectAtIndex:a3];
  v10 = [v9 index];

  if (v7 != v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)showCombinedPrograms
{
  if (![(AXRemoteHearingAidDevice *)self supportsCombinedPresets])
  {
    return 0;
  }

  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = (![v3 independentHearingAidSettings] || -[AXRemoteHearingAidDevice requiresCombinedPresets](self, "requiresCombinedPresets")) && -[AXRemoteHearingAidDevice programsListsAreEqual](self, "programsListsAreEqual");

  return v4;
}

- (id)programs
{
  v3 = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v4 = [(AXRemoteHearingAidDevice *)self rightPrograms];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_20];

  return v6;
}

uint64_t __36__AXRemoteHearingAidDevice_programs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 index];
  v7 = [v5 index];
  v8 = v6 == v7;
  if (v6 < v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v8)
  {
    [v4 setEar:6];
    [v5 setEar:6];
    v9 = 0;
  }

  return v9;
}

- (id)combinedPrograms
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(AXRemoteHearingAidDevice *)self programs];
  v3 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __44__AXRemoteHearingAidDevice_combinedPrograms__block_invoke;
        v14[3] = &unk_1E85CC9E8;
        v14[4] = v8;
        if ([v3 indexOfObjectPassingTest:v14] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = [v8 name];
          v10 = [v9 length];

          if (v10)
          {
            [v3 addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

BOOL __44__AXRemoteHearingAidDevice_combinedPrograms__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 index];
  v7 = [*(a1 + 32) index];
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)_updateSelectedProgramsProperties
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(AXRemoteHearingAidDevice *)self programs];
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [(AXRemoteHearingAidDevice *)self setLeftSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedProgram:0];
  [(AXRemoteHearingAidDevice *)self setLeftSelectedProgram:0];
  v5 = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke;
  v17[3] = &unk_1E85CAC60;
  v17[4] = self;
  [v5 enumerateObjectsUsingBlock:v17];

  v6 = [(AXRemoteHearingAidDevice *)self rightPrograms];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke_2;
  v16[3] = &unk_1E85CAC60;
  v16[4] = self;
  [v6 enumerateObjectsUsingBlock:v16];

  v7 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];

  if (!v7)
  {
    v8 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
    [(AXRemoteHearingAidDevice *)self setLeftSelectedProgram:v8];
  }

  v9 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];

  if (!v9)
  {
    v10 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
    [(AXRemoteHearingAidDevice *)self setLeftSelectedStreamingProgram:v10];
  }

  v11 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];

  if (!v11)
  {
    v12 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
    [(AXRemoteHearingAidDevice *)self setRightSelectedProgram:v12];
  }

  v13 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];

  if (!v13)
  {
    v14 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
    [(AXRemoteHearingAidDevice *)self setRightSelectedStreamingProgram:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isSelected])
  {
    v3 = [v5 isStreamOrMixingStream];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 setLeftSelectedStreamingProgram:v5];
    }

    else
    {
      [v4 setLeftSelectedProgram:v5];
    }
  }
}

void __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isSelected])
  {
    v3 = [v5 isStreamOrMixingStream];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 setRightSelectedStreamingProgram:v5];
    }

    else
    {
      [v4 setRightSelectedProgram:v5];
    }
  }
}

- (void)_writeAllProgramSelectionsToPeripheral
{
  v3 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
  v4 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  v5 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
  v6 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
  v7 = 0x1E695D000;
  if ([(AXRemoteHearingAidDevice *)self propertyIsAvailable:0x800000000 forEar:2]|| [(AXRemoteHearingAidDevice *)self propertyIsAvailable:0x800000000 forEar:4])
  {
    v8 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v9 = MEMORY[0x1E695DEC8];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "index")}];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "index")}];
    v12 = [v9 arrayWithObjects:{v10, v11, 0}];
    [(AXRemoteHearingAidDevice *)self deviceUUID];
    v13 = v6;
    v14 = v4;
    v15 = v5;
    v17 = v16 = v3;
    [v8 writeValue:v12 forProperty:0x800000000 andDeviceID:v17];

    v3 = v16;
    v5 = v15;
    v4 = v14;
    v6 = v13;

    v7 = 0x1E695D000uLL;
  }

  else
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "AXHearingPropertyStreamingProgramActive not available", buf, 2u);
    }
  }

  v18 = [(AXRemoteHearingAidDevice *)self updateDelegate];
  v19 = *(v7 + 3784);
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "index")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "index")}];
  v22 = [v19 arrayWithObjects:{v20, v21, 0}];
  v23 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [v18 writeValue:v22 forProperty:1024 andDeviceID:v23];
}

- (void)selectProgram:(id)a3 forEar:(int)a4
{
  v11 = a3;
  if ([(AXRemoteHearingAidDevice *)self showCombinedPrograms])
  {
    v6 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    [v6 setProgram:v11 withOtherSidePrograms:0 selected:{objc_msgSend(v11, "isSelected")}];

    v7 = [(AXRemoteHearingAidDevice *)self rightPrograms];
    [v7 setProgram:v11 withOtherSidePrograms:0 selected:{objc_msgSend(v11, "isSelected")}];
LABEL_7:

    goto LABEL_8;
  }

  if ((a4 & [v11 ear] & 2) != 0)
  {
    v8 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    v9 = [(AXRemoteHearingAidDevice *)self rightPrograms];
    [v8 setProgram:v11 withOtherSidePrograms:v9 selected:{objc_msgSend(v11, "isSelected")}];
  }

  if ((a4 & [v11 ear] & 4) != 0)
  {
    v7 = [(AXRemoteHearingAidDevice *)self rightPrograms];
    v10 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    [v7 setProgram:v11 withOtherSidePrograms:v10 selected:{objc_msgSend(v11, "isSelected")}];

    goto LABEL_7;
  }

LABEL_8:
  [(AXRemoteHearingAidDevice *)self _updateSelectedProgramsProperties];
  [(AXRemoteHearingAidDevice *)self _writeAllProgramSelectionsToPeripheral];
}

- (id)selectedPrograms
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  v5 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
  v6 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
  v7 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
  v8 = [v3 arrayWithObjects:{v4, v5, v6, v7, 0}];

  v9 = [v8 indexesOfObjectsPassingTest:&__block_literal_global_65];
  v10 = [v8 objectsAtIndexes:v9];

  return v10;
}

- (id)selectedProgramIndexes
{
  v2 = [(AXRemoteHearingAidDevice *)self programs];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_68];

  return v3;
}

- (void)setKeepInSync:(BOOL)a3
{
  if (self->_keepInSync != a3)
  {
    self->_keepInSync = a3;
    if (a3)
    {
      if ([(AXRemoteHearingAidDevice *)self didLoadRequiredProperties])
      {
        v6 = [(AXRemoteHearingAidDevice *)self updateDelegate];
        v4 = [(AXRemoteHearingAidDevice *)self deviceUUID];
        [v6 updateProperty:0xFF800105C4 forDeviceID:v4];
      }

      else
      {
        v5 = HCLogHearingAids();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "Not completely loaded, trying again", buf, 2u);
        }

        [(AXRemoteHearingAidDevice *)self loadRequiredProperties];
      }
    }
  }
}

- (void)setValue:(id)a3 forProperty:(unint64_t)a4
{
  v113 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = hearingPropertyDescription(a4);
    *buf = 134218498;
    v108 = self;
    v109 = 2112;
    v110 = v8;
    v111 = 2112;
    v112 = v6;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "%p = property:%@ - value:%@", buf, 0x20u);
  }

  if (a4 > 0xFFFFFFF)
  {
    if (a4 > 0x1FFFFFFFFFLL)
    {
      if (a4 <= 0x1FFFFFFFFFFLL)
      {
        if (a4 > 0x7FFFFFFFFFLL)
        {
          if (a4 == 0x8000000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
            {
              goto LABEL_180;
            }

            v55 = [v6 firstObject];
            -[AXRemoteHearingAidDevice setLeftMixedVolumeSteps:](self, "setLeftMixedVolumeSteps:", [v55 shortValue]);

            v56 = [v6 lastObject];
            -[AXRemoteHearingAidDevice setRightMixedVolumeSteps:](self, "setRightMixedVolumeSteps:", [v56 shortValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x8000000000;
          }

          else
          {
            if (a4 != 0x10000000000)
            {
              goto LABEL_167;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            -[AXRemoteHearingAidDevice setAvailableInputEars:](self, "setAvailableInputEars:", [v6 intValue]);
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x10000000000;
          }
        }

        else
        {
          if (a4 == 0x2000000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
            {
              goto LABEL_180;
            }

            v50 = [v6 firstObject];
            -[AXRemoteHearingAidDevice setLeftTreble:](self, "setLeftTreble:", [v50 charValue]);

            v17 = [v6 lastObject];
            -[AXRemoteHearingAidDevice setRightTreble:](self, "setRightTreble:", [v17 charValue]);
            goto LABEL_179;
          }

          if (a4 != 0x4000000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v20 = [v6 firstObject];
          [v20 doubleValue];
          self->_leftMixedVolume = v21;

          v22 = [v6 lastObject];
          [v22 doubleValue];
          self->_rightMixedVolume = v23;

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x4000000000;
        }

        goto LABEL_166;
      }

      if (a4 > 0x7FFFFFFFFFFLL)
      {
        switch(a4)
        {
          case 0x80000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 4)
            {
              goto LABEL_180;
            }

            v86 = [v6 objectAtIndex:1];
            -[AXRemoteHearingAidDevice setRequiresCombinedPresets:](self, "setRequiresCombinedPresets:", [v86 BOOLValue]);

            v87 = [v6 objectAtIndex:2];
            -[AXRemoteHearingAidDevice setRequiresCombinedVolumes:](self, "setRequiresCombinedVolumes:", [v87 BOOLValue]);

            v88 = [v6 objectAtIndex:3];
            -[AXRemoteHearingAidDevice setRequiresBinauralStreaming:](self, "setRequiresBinauralStreaming:", [v88 BOOLValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000000000;
            break;
          case 0x100000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
            {
              goto LABEL_180;
            }

            v73 = [v6 firstObject];
            [(AXRemoteHearingAidDevice *)self setLeftPeripheralUUID:v73];

            v74 = [v6 lastObject];
            [(AXRemoteHearingAidDevice *)self setRightPeripheralUUID:v74];

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000000000;
            break;
          case 0x200000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            [(AXRemoteHearingAidDevice *)self setRSSI:v6];
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000000000;
            break;
          default:
            goto LABEL_167;
        }

        goto LABEL_166;
      }

      if (a4 == 0x20000000000)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[AXRemoteHearingAidDevice setDeviceProtocol:](self, "setDeviceProtocol:", [v6 unsignedIntegerValue]);
        }

        goto LABEL_180;
      }

      if (a4 == 0x40000000000)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_180;
        }

        -[AXRemoteHearingAidDevice setEarsSupportingWatch:](self, "setEarsSupportingWatch:", [v6 intValue]);
        v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000000000;
        goto LABEL_166;
      }
    }

    else
    {
      if (a4 <= 0xFFFFFFFFLL)
      {
        if (a4 > 0x3FFFFFFF)
        {
          if (a4 == 0x40000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 4)
            {
              goto LABEL_180;
            }

            v51 = [v6 objectAtIndex:1];
            -[AXRemoteHearingAidDevice setSupportsCombinedPresets:](self, "setSupportsCombinedPresets:", [v51 BOOLValue]);

            v52 = [v6 objectAtIndex:2];
            -[AXRemoteHearingAidDevice setSupportsCombinedVolumes:](self, "setSupportsCombinedVolumes:", [v52 BOOLValue]);

            v53 = [v6 objectAtIndex:3];
            -[AXRemoteHearingAidDevice setSupportsBinauralStreaming:](self, "setSupportsBinauralStreaming:", [v53 BOOLValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000000;
          }

          else
          {
            if (a4 != 0x80000000)
            {
              goto LABEL_167;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
            {
              goto LABEL_180;
            }

            v33 = [v6 firstObject];
            [v33 doubleValue];
            self->_leftSensitivity = v34;

            v35 = [v6 lastObject];
            [v35 doubleValue];
            self->_rightSensitivity = v36;

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000000;
          }
        }

        else if (a4 == 0x10000000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_180;
          }

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x10000000;
        }

        else
        {
          if (a4 != 0x20000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_180;
          }

          -[AXRemoteHearingAidDevice setIsBluetoothPaired:](self, "setIsBluetoothPaired:", [v6 BOOLValue]);
          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x20000000;
        }

        goto LABEL_166;
      }

      if (a4 <= 0x3FFFFFFFFLL)
      {
        if (a4 == 0x100000000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v61 = [v6 firstObject];
          -[AXRemoteHearingAidDevice setLeftMicrophoneVolumeSteps:](self, "setLeftMicrophoneVolumeSteps:", [v61 shortValue]);

          v62 = [v6 lastObject];
          -[AXRemoteHearingAidDevice setRightMicrophoneVolumeSteps:](self, "setRightMicrophoneVolumeSteps:", [v62 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000000;
        }

        else
        {
          if (a4 != 0x200000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v42 = [v6 firstObject];
          -[AXRemoteHearingAidDevice setLeftStreamVolumeSteps:](self, "setLeftStreamVolumeSteps:", [v42 shortValue]);

          v43 = [v6 lastObject];
          -[AXRemoteHearingAidDevice setRightStreamVolumeSteps:](self, "setRightStreamVolumeSteps:", [v43 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000000;
        }

        goto LABEL_166;
      }

      switch(a4)
      {
        case 0x400000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v82 = [v6 firstObject];
          -[AXRemoteHearingAidDevice setLeftSensitivitySteps:](self, "setLeftSensitivitySteps:", [v82 shortValue]);

          v83 = [v6 lastObject];
          -[AXRemoteHearingAidDevice setRightSensitivitySteps:](self, "setRightSensitivitySteps:", [v83 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x400000000;
          goto LABEL_166;
        case 0x800000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] == 2)
          {
            v67 = [v6 firstObject];
            v68 = [v67 intValue];

            v69 = [v6 lastObject];
            v70 = [v69 intValue];

            if (v68 != -1)
            {
              v71 = [(AXRemoteHearingAidDevice *)self leftPrograms];
              v95[0] = MEMORY[0x1E69E9820];
              v95[1] = 3221225472;
              v95[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_7;
              v95[3] = &unk_1E85CACA8;
              v96 = v68;
              v95[4] = self;
              [v71 enumerateObjectsUsingBlock:v95];
            }

            if (v70 != -1)
            {
              v72 = [(AXRemoteHearingAidDevice *)self rightPrograms];
              v93[0] = MEMORY[0x1E69E9820];
              v93[1] = 3221225472;
              v93[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_8;
              v93[3] = &unk_1E85CACA8;
              v94 = v70;
              v93[4] = self;
              [v72 enumerateObjectsUsingBlock:v93];
            }

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x800000000;
            goto LABEL_166;
          }

          goto LABEL_180;
        case 0x1000000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v16 = [v6 firstObject];
          -[AXRemoteHearingAidDevice setLeftBass:](self, "setLeftBass:", [v16 charValue]);

          v17 = [v6 lastObject];
          -[AXRemoteHearingAidDevice setRightBass:](self, "setRightBass:", [v17 charValue]);
          goto LABEL_179;
      }
    }

LABEL_167:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_72;
      v92[3] = &unk_1E85CA558;
      v92[4] = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v92];
    }

    v89 = HCLogHearingAids();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v108 = a4;
      _os_log_impl(&dword_1DA5E2000, v89, OS_LOG_TYPE_DEFAULT, "Unknown property: %lld", buf, 0xCu);
    }

    goto LABEL_180;
  }

  if (a4 >= 0x10000)
  {
    if (a4 >= 0x200000)
    {
      if (a4 < 0x800000)
      {
        if (a4 == 0x200000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v63 = [v6 firstObject];
          -[AXRemoteHearingAidDevice setLeftConnected:](self, "setLeftConnected:", [v63 intValue] == 2);

          v64 = [v6 lastObject];
          -[AXRemoteHearingAidDevice setRightConnected:](self, "setRightConnected:", [v64 intValue] == 2);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000;
        }

        else
        {
          if (a4 != 0x400000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
          {
            goto LABEL_180;
          }

          v44 = [v6 firstObject];
          [(AXRemoteHearingAidDevice *)self setLeftFirmwareVersion:v44];

          v45 = [v6 lastObject];
          [(AXRemoteHearingAidDevice *)self setRightFirmwareVersion:v45];

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x400000;
        }
      }

      else
      {
        switch(a4)
        {
          case 0x800000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
            {
              goto LABEL_180;
            }

            v84 = [v6 firstObject];
            [(AXRemoteHearingAidDevice *)self setLeftHardwareVersion:v84];

            v85 = [v6 lastObject];
            [(AXRemoteHearingAidDevice *)self setRightHardwareVersion:v85];

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x800000;
            break;
          case 0x1000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            [(AXRemoteHearingAidDevice *)self setDeviceUUID:v6];
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x1000000;
            break;
          case 0x4000000uLL:
            v18 = HCLogHearingAids();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v108 = v6;
              _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "RemoteDevice Paired %@", buf, 0xCu);
            }

            -[AXRemoteHearingAidDevice setIsPaired:](self, "setIsPaired:", [v6 BOOLValue]);
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x4000000;
            goto LABEL_166;
          default:
            goto LABEL_167;
        }
      }

      goto LABEL_166;
    }

    if (a4 >= 0x80000)
    {
      if (a4 == 0x80000)
      {
        v54 = [(AXRemoteHearingAidDevice *)self manufacturer];
        v17 = [v54 mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] == 2)
        {
          [v17 setArray:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 replaceObjectAtIndex:0 withObject:v6];
          }
        }

        [(AXRemoteHearingAidDevice *)self setManufacturer:v17];
        v90 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000;
      }

      else
      {
        if (a4 != 0x100000)
        {
          goto LABEL_167;
        }

        v37 = [(AXRemoteHearingAidDevice *)self model];
        v17 = [v37 mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] == 2)
        {
          [v17 setArray:v6];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 replaceObjectAtIndex:0 withObject:v6];
          }
        }

        [(AXRemoteHearingAidDevice *)self setModel:v17];
        v90 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000;
      }

      [(AXRemoteHearingAidDevice *)self setLoadedProperties:v90];
      goto LABEL_179;
    }

    if (a4 == 0x10000)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
      {
        goto LABEL_180;
      }

      v48 = [v6 firstObject];
      -[AXRemoteHearingAidDevice setLeftAvailableProperties:](self, "setLeftAvailableProperties:", [v48 unsignedLongLongValue]);

      v49 = [v6 lastObject];
      -[AXRemoteHearingAidDevice setRightAvailableProperties:](self, "setRightAvailableProperties:", [v49 unsignedLongLongValue]);

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x10000;
    }

    else
    {
      if (a4 != 0x40000)
      {
        goto LABEL_167;
      }

      [(AXRemoteHearingAidDevice *)self setName:v6];
      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000;
    }

LABEL_166:
    [(AXRemoteHearingAidDevice *)self setLoadedProperties:v15];
    goto LABEL_180;
  }

  if (a4 <= 63)
  {
    if (a4 <= 15)
    {
      if (a4 != 4)
      {
        if (a4 == 8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [(AXRemoteHearingAidDevice *)self availableEars];
            if (v19 != [v6 intValue] && objc_msgSend(v6, "intValue") >= 1)
            {
              -[AXRemoteHearingAidDevice setAvailableEars:](self, "setAvailableEars:", [v6 intValue]);
            }
          }

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 8;
          goto LABEL_166;
        }

        goto LABEL_167;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
      {
        goto LABEL_180;
      }

      v46 = [v6 firstObject];
      [v46 doubleValue];
      [(AXRemoteHearingAidDevice *)self setLeftBatteryLevel:?];

      v47 = [v6 lastObject];
      [v47 doubleValue];
      [(AXRemoteHearingAidDevice *)self setRightBatteryLevel:?];

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 4;
      goto LABEL_166;
    }

    if (a4 != 16 && a4 != 32)
    {
      goto LABEL_167;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
    {
      goto LABEL_180;
    }

    v24 = [v6 firstObject];
    [(AXRemoteHearingAidDevice *)self setLeftUUID:v24];

    v25 = [v6 lastObject];
    [(AXRemoteHearingAidDevice *)self setRightUUID:v25];

    [(AXRemoteHearingAidDevice *)self setLoadedProperties:[(AXRemoteHearingAidDevice *)self loadedProperties]| a4];
    v26 = [(AXRemoteHearingAidDevice *)self leftUUID];
    v27 = [v26 length];

    v28 = [(AXRemoteHearingAidDevice *)self rightUUID];
    v17 = v28;
    if (v27)
    {
      v29 = [v28 length];

      if (v29)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = [(AXRemoteHearingAidDevice *)self leftUUID];
        v32 = [(AXRemoteHearingAidDevice *)self rightUUID];
        v17 = [v30 stringWithFormat:@"%@_%@", v31, v32];
      }

      else
      {
        v17 = [(AXRemoteHearingAidDevice *)self leftUUID];
      }
    }

    [(AXRemoteHearingAidDevice *)self setDeviceUUID:v17];
LABEL_179:

    goto LABEL_180;
  }

  if (a4 <= 255)
  {
    if (a4 == 64)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
      {
        goto LABEL_180;
      }

      v57 = [v6 firstObject];
      [v57 doubleValue];
      self->_leftMicrophoneVolume = v58;

      v59 = [v6 lastObject];
      [v59 doubleValue];
      self->_rightMicrophoneVolume = v60;

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40;
    }

    else
    {
      if (a4 != 128)
      {
        goto LABEL_167;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
      {
        goto LABEL_180;
      }

      v38 = [v6 firstObject];
      [v38 doubleValue];
      self->_leftStreamVolume = v39;

      v40 = [v6 lastObject];
      [v40 doubleValue];
      self->_rightStreamVolume = v41;

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80;
    }

    goto LABEL_166;
  }

  if (a4 == 256)
  {
    v75 = HCLogHearingAids();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [(AXRemoteHearingAidDevice *)self programs];
      *buf = 138412290;
      v108 = v76;
      _os_log_impl(&dword_1DA5E2000, v75, OS_LOG_TYPE_DEFAULT, "AXHearingPropertyProgramsAvailable %@", buf, 0xCu);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 count] != 2)
    {
      goto LABEL_180;
    }

    v17 = [v6 firstObject];
    v77 = [v6 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = [MEMORY[0x1E695DF70] array];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke;
      v105[3] = &unk_1E85CCA30;
      v106 = v78;
      v79 = v78;
      [v17 enumerateObjectsUsingBlock:v105];
      [(AXRemoteHearingAidDevice *)self setLeftPrograms:v79];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_2;
      v104[3] = &unk_1E85CAC60;
      v104[4] = self;
      [v79 enumerateObjectsUsingBlock:v104];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = [MEMORY[0x1E695DF70] array];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_3;
      v102[3] = &unk_1E85CCA30;
      v103 = v80;
      v81 = v80;
      [v77 enumerateObjectsUsingBlock:v102];
      [(AXRemoteHearingAidDevice *)self setRightPrograms:v81];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_4;
      v101[3] = &unk_1E85CAC60;
      v101[4] = self;
      [v81 enumerateObjectsUsingBlock:v101];
    }

    [(AXRemoteHearingAidDevice *)self _updateSelectedProgramsProperties];
    [(AXRemoteHearingAidDevice *)self setLoadedProperties:[(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100];

    goto LABEL_179;
  }

  if (a4 == 512)
  {
    v65 = [v6 objectForKey:&unk_1F5623ED8];
    [(AXRemoteHearingAidDevice *)self setValue:v65 forProperty:0x80000];

    v66 = [v6 objectForKey:&unk_1F5623EF0];
    [(AXRemoteHearingAidDevice *)self setValue:v66 forProperty:0x100000];

    v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200;
    goto LABEL_166;
  }

  if (a4 != 1024)
  {
    goto LABEL_167;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count] == 2)
  {
    v9 = [v6 firstObject];
    v10 = [v9 intValue];

    if (v10 != -1)
    {
      v11 = [(AXRemoteHearingAidDevice *)self leftPrograms];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_5;
      v99[3] = &unk_1E85CACA8;
      v100 = v10;
      v99[4] = self;
      [v11 enumerateObjectsUsingBlock:v99];
    }

    v12 = [v6 lastObject];
    v13 = [v12 intValue];

    if (v13 != -1)
    {
      v14 = [(AXRemoteHearingAidDevice *)self rightPrograms];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_6;
      v97[3] = &unk_1E85CACA8;
      v98 = v13;
      v97[4] = self;
      [v14 enumerateObjectsUsingBlock:v97];
    }

    v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x400;
    goto LABEL_166;
  }

LABEL_180:

  v91 = *MEMORY[0x1E69E9840];
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[AXHearingAidMode alloc] initWithRepresentation:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isSelected])
  {
    v3 = [*(a1 + 32) leftPrograms];
    v4 = [*(a1 + 32) rightPrograms];
    [v3 setProgram:v5 withOtherSidePrograms:v4 selected:{objc_msgSend(v5, "isSelected")}];
  }
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[AXHearingAidMode alloc] initWithRepresentation:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isSelected])
  {
    v3 = [*(a1 + 32) rightPrograms];
    v4 = [*(a1 + 32) leftPrograms];
    [v3 setProgram:v5 withOtherSidePrograms:v4 selected:{objc_msgSend(v5, "isSelected")}];
  }
}

uint64_t __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = *(a1 + 40);
  v7 = [v12 index];
  v8 = v12;
  if (v6 == v7)
  {
    [*(a1 + 32) setLeftSelectedProgram:v12];
    if (([v12 isSelected] & 1) == 0)
    {
      v9 = [*(a1 + 32) leftPrograms];
      v10 = [*(a1 + 32) rightPrograms];
      [v9 setProgram:v12 withOtherSidePrograms:v10 selected:1];
    }

    v7 = [v12 isStreamOrMixingStream];
    if (v7)
    {
      v7 = [*(a1 + 32) setLeftSelectedStreamingProgram:v12];
    }

    *a4 = 1;
    v8 = v12;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

uint64_t __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = *(a1 + 40);
  v7 = [v12 index];
  v8 = v12;
  if (v6 == v7)
  {
    [*(a1 + 32) setRightSelectedProgram:v12];
    if (([v12 isSelected] & 1) == 0)
    {
      v9 = [*(a1 + 32) rightPrograms];
      v10 = [*(a1 + 32) leftPrograms];
      [v9 setProgram:v12 withOtherSidePrograms:v10 selected:1];
    }

    v7 = [v12 isStreamOrMixingStream];
    if (v7)
    {
      v7 = [*(a1 + 32) setRightSelectedStreamingProgram:v12];
    }

    *a4 = 1;
    v8 = v12;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v11 = v6;
  if (v7 == [v6 index])
  {
    v8 = [*(a1 + 32) leftSelectedStreamingProgram];
    [v8 setIsSelected:0];

    [*(a1 + 32) setLeftSelectedStreamingProgram:v11];
    v9 = [*(a1 + 32) leftPrograms];
    v10 = [*(a1 + 32) rightPrograms];
    [v9 setProgram:v11 withOtherSidePrograms:v10 selected:1];

    *a4 = 1;
  }
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v11 = v6;
  if (v7 == [v6 index])
  {
    v8 = [*(a1 + 32) rightSelectedStreamingProgram];
    [v8 setIsSelected:0];

    [*(a1 + 32) setRightSelectedStreamingProgram:v11];
    v9 = [*(a1 + 32) rightPrograms];
    v10 = [*(a1 + 32) leftPrograms];
    [v9 setProgram:v11 withOtherSidePrograms:v10 selected:1];

    *a4 = 1;
  }
}

void __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setValue:v5 forProperty:{objc_msgSend(a2, "unsignedLongLongValue")}];
}

- (id)_valueForProperty:(unint64_t)a3
{
  v80[2] = *MEMORY[0x1E69E9840];
  if (a3 > 0x3FFFFFF)
  {
    if (a3 <= 0xFFFFFFFFFLL)
    {
      if (a3 > 0x7FFFFFFF)
      {
        if (a3 <= 0x1FFFFFFFFLL)
        {
          if (a3 == 0x80000000)
          {
            v29 = MEMORY[0x1E695DEC8];
            v46 = MEMORY[0x1E696AD98];
            [(AXRemoteHearingAidDevice *)self leftSensitivity];
            v30 = [v46 numberWithDouble:?];
            v34 = MEMORY[0x1E696AD98];
            [(AXRemoteHearingAidDevice *)self rightSensitivity];
            goto LABEL_93;
          }

          if (a3 != 0x100000000)
          {
            goto LABEL_114;
          }

          v29 = MEMORY[0x1E695DEC8];
          v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftMicrophoneVolumeSteps](self, "leftMicrophoneVolumeSteps")}];
          v31 = MEMORY[0x1E696AD98];
          v32 = [(AXRemoteHearingAidDevice *)self rightMicrophoneVolumeSteps];
        }

        else
        {
          switch(a3)
          {
            case 0x200000000uLL:
              v29 = MEMORY[0x1E695DEC8];
              v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftStreamVolumeSteps](self, "leftStreamVolumeSteps")}];
              v31 = MEMORY[0x1E696AD98];
              v32 = [(AXRemoteHearingAidDevice *)self rightStreamVolumeSteps];
              break;
            case 0x400000000uLL:
              v29 = MEMORY[0x1E695DEC8];
              v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftSensitivitySteps](self, "leftSensitivitySteps")}];
              v31 = MEMORY[0x1E696AD98];
              v32 = [(AXRemoteHearingAidDevice *)self rightSensitivitySteps];
              break;
            case 0x800000000uLL:
              v5 = MEMORY[0x1E695DEC8];
              v11 = MEMORY[0x1E696AD98];
              v7 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
              v8 = [v11 numberWithInt:{objc_msgSend(v7, "index")}];
              v9 = MEMORY[0x1E696AD98];
              v10 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
              goto LABEL_16;
            default:
              goto LABEL_114;
          }
        }

        goto LABEL_106;
      }

      if (a3 <= 0x1FFFFFFF)
      {
        if (a3 != 0x4000000)
        {
          if (a3 == 0x10000000)
          {
            v14 = MEMORY[0x1E695E118];
            goto LABEL_134;
          }

          goto LABEL_114;
        }

        v41 = MEMORY[0x1E696AD98];
        v42 = [(AXRemoteHearingAidDevice *)self isPaired];
        goto LABEL_88;
      }

      if (a3 == 0x20000000)
      {
        v41 = MEMORY[0x1E696AD98];
        v42 = [(AXRemoteHearingAidDevice *)self isBluetoothPaired];
LABEL_88:
        v15 = [v41 numberWithBool:v42];
        goto LABEL_113;
      }

      if (a3 != 0x40000000)
      {
        goto LABEL_114;
      }

      v78[0] = &unk_1F5623F20;
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsCombinedPresets](self, "supportsCombinedPresets")}];
      v78[1] = v7;
      v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes")}];
      v78[2] = v21;
      v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsBinauralStreaming](self, "supportsBinauralStreaming")}];
      v78[3] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v78;
LABEL_102:
      v14 = [v27 arrayWithObjects:v28 count:4];

      goto LABEL_103;
    }

    if (a3 <= 0xFFFFFFFFFFLL)
    {
      if (a3 <= 0x3FFFFFFFFFLL)
      {
        if (a3 == 0x1000000000)
        {
          v7 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftBass];
          v76[0] = v7;
          v21 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightBass];
          v76[1] = v21;
          v22 = MEMORY[0x1E695DEC8];
          v23 = v76;
        }

        else
        {
          if (a3 != 0x2000000000)
          {
            goto LABEL_114;
          }

          v7 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftTreble];
          v77[0] = v7;
          v21 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightTreble];
          v77[1] = v21;
          v22 = MEMORY[0x1E695DEC8];
          v23 = v77;
        }

        goto LABEL_86;
      }

      if (a3 == 0x4000000000)
      {
        v29 = MEMORY[0x1E695DEC8];
        v44 = MEMORY[0x1E696AD98];
        [(AXRemoteHearingAidDevice *)self leftMixedVolume];
        v30 = [v44 numberWithDouble:?];
        v34 = MEMORY[0x1E696AD98];
        [(AXRemoteHearingAidDevice *)self rightMixedVolume];
        goto LABEL_93;
      }

      if (a3 != 0x8000000000)
      {
        goto LABEL_114;
      }

      v29 = MEMORY[0x1E695DEC8];
      v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftMixedVolumeSteps](self, "leftMixedVolumeSteps")}];
      v31 = MEMORY[0x1E696AD98];
      v32 = [(AXRemoteHearingAidDevice *)self rightMixedVolumeSteps];
LABEL_106:
      v39 = [v31 numberWithShort:v32];
      goto LABEL_107;
    }

    if (a3 <= 0x3FFFFFFFFFFLL)
    {
      if (a3 != 0x10000000000)
      {
        if (a3 != 0x20000000000)
        {
          goto LABEL_114;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXRemoteHearingAidDevice deviceProtocol](self, "deviceProtocol")}];
        goto LABEL_113;
      }

      v47 = MEMORY[0x1E696AD98];
      v48 = [(AXRemoteHearingAidDevice *)self availableInputEars];
    }

    else
    {
      if (a3 != 0x40000000000)
      {
        if (a3 != 0x80000000000)
        {
          if (a3 != 0x100000000000)
          {
            goto LABEL_114;
          }

          v7 = [MEMORY[0x1E695DF70] array];
          v16 = [(AXRemoteHearingAidDevice *)self leftPeripheralUUID];
          if (v16)
          {
            v17 = [(AXRemoteHearingAidDevice *)self leftPeripheralUUID];
            [v7 addObject:v17];
          }

          else
          {
            [v7 addObject:&stru_1F5614A78];
          }

          v60 = [(AXRemoteHearingAidDevice *)self rightPeripheralUUID];
          if (v60)
          {
            v61 = [(AXRemoteHearingAidDevice *)self rightPeripheralUUID];
            goto LABEL_130;
          }

          goto LABEL_131;
        }

        v74[0] = &unk_1F5623F20;
        v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresCombinedPresets](self, "requiresCombinedPresets")}];
        v74[1] = v7;
        v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes")}];
        v74[2] = v21;
        v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresBinauralStreaming](self, "requiresBinauralStreaming")}];
        v74[3] = v26;
        v27 = MEMORY[0x1E695DEC8];
        v28 = v74;
        goto LABEL_102;
      }

      v47 = MEMORY[0x1E696AD98];
      v48 = [(AXRemoteHearingAidDevice *)self earsSupportingWatch];
    }

    v19 = v48;
    v20 = v47;
LABEL_112:
    v15 = [v20 numberWithUnsignedInt:v19];
    goto LABEL_113;
  }

  if (a3 > 4095)
  {
    if (a3 >= 0x100000)
    {
      if (a3 < 0x400000)
      {
        if (a3 != 0x100000)
        {
          if (a3 != 0x200000)
          {
            goto LABEL_114;
          }

          v29 = MEMORY[0x1E695DEC8];
          v35 = MEMORY[0x1E696AD98];
          if ([(AXRemoteHearingAidDevice *)self leftConnected])
          {
            v36 = 2;
          }

          else
          {
            v36 = 0;
          }

          v30 = [v35 numberWithInt:v36];
          v37 = MEMORY[0x1E696AD98];
          if ([(AXRemoteHearingAidDevice *)self rightConnected])
          {
            v38 = 2;
          }

          else
          {
            v38 = 0;
          }

          v39 = [v37 numberWithInt:v38];
LABEL_107:
          v56 = v39;
          v14 = [v29 arrayWithObjects:{v30, v39, 0}];

          goto LABEL_134;
        }

        v15 = [(AXRemoteHearingAidDevice *)self model];
      }

      else
      {
        if (a3 == 0x400000)
        {
          v7 = [MEMORY[0x1E695DF70] array];
          v57 = [(AXRemoteHearingAidDevice *)self leftFirmwareVersion];
          if (v57)
          {
            v58 = [(AXRemoteHearingAidDevice *)self leftFirmwareVersion];
            [v7 addObject:v58];
          }

          else
          {
            [v7 addObject:&stru_1F5614A78];
          }

          v60 = [(AXRemoteHearingAidDevice *)self rightFirmwareVersion];
          if (v60)
          {
            v61 = [(AXRemoteHearingAidDevice *)self rightFirmwareVersion];
            goto LABEL_130;
          }

          goto LABEL_131;
        }

        if (a3 == 0x800000)
        {
          v7 = [MEMORY[0x1E695DF70] array];
          v49 = [(AXRemoteHearingAidDevice *)self leftHardwareVersion];
          if (v49)
          {
            v50 = [(AXRemoteHearingAidDevice *)self leftHardwareVersion];
            [v7 addObject:v50];
          }

          else
          {
            [v7 addObject:&stru_1F5614A78];
          }

          v60 = [(AXRemoteHearingAidDevice *)self rightHardwareVersion];
          if (v60)
          {
            v61 = [(AXRemoteHearingAidDevice *)self rightHardwareVersion];
            goto LABEL_130;
          }

LABEL_131:
          [v7 addObject:&stru_1F5614A78];
          goto LABEL_132;
        }

        if (a3 != 0x1000000)
        {
          goto LABEL_114;
        }

        v15 = [(AXRemoteHearingAidDevice *)self deviceUUID];
      }

LABEL_113:
      v14 = v15;
      goto LABEL_134;
    }

    if (a3 >= 0x40000)
    {
      if (a3 == 0x40000)
      {
        v15 = [(AXRemoteHearingAidDevice *)self name];
      }

      else
      {
        if (a3 != 0x80000)
        {
          goto LABEL_114;
        }

        v15 = [(AXRemoteHearingAidDevice *)self manufacturer];
      }

      goto LABEL_113;
    }

    if (a3 == 4096)
    {
LABEL_117:
      v14 = 0;
      goto LABEL_134;
    }

    if (a3 != 0x10000)
    {
LABEL_114:
      v59 = HCLogHearingAids();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v73 = a3;
        _os_log_impl(&dword_1DA5E2000, v59, OS_LOG_TYPE_DEFAULT, "Unknown property: %ld", buf, 0xCu);
      }

      goto LABEL_117;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_leftAvailableProperties];
    v75[0] = v7;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rightAvailableProperties];
    v75[1] = v21;
    v22 = MEMORY[0x1E695DEC8];
    v23 = v75;
LABEL_86:
    v43 = [v22 arrayWithObjects:v23 count:2];
LABEL_97:
    v14 = v43;
LABEL_103:

    goto LABEL_133;
  }

  if (a3 <= 63)
  {
    if (a3 <= 15)
    {
      if (a3 != 4)
      {
        if (a3 != 8)
        {
          goto LABEL_114;
        }

        if ([(AXRemoteHearingAidDevice *)self leftAvailable])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        if ([(AXRemoteHearingAidDevice *)self rightAvailable])
        {
          v19 = v18 | 4;
        }

        else
        {
          v19 = v18;
        }

        v20 = MEMORY[0x1E696AD98];
        goto LABEL_112;
      }

      v29 = MEMORY[0x1E695DEC8];
      v40 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self leftBatteryLevel];
      v30 = [v40 numberWithDouble:?];
      v34 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self rightBatteryLevel];
LABEL_93:
      v39 = [v34 numberWithDouble:?];
      goto LABEL_107;
    }

    if (a3 != 16 && a3 != 32)
    {
      goto LABEL_114;
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v24 = [(AXRemoteHearingAidDevice *)self leftUUID];
    if (v24)
    {
      v25 = [(AXRemoteHearingAidDevice *)self leftUUID];
      [v7 addObject:v25];
    }

    else
    {
      [v7 addObject:&stru_1F5614A78];
    }

    v60 = [(AXRemoteHearingAidDevice *)self rightUUID];
    if (v60)
    {
      v61 = [(AXRemoteHearingAidDevice *)self rightUUID];
LABEL_130:
      v62 = v61;
      [v7 addObject:v61];

LABEL_132:
      v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  if (a3 <= 255)
  {
    if (a3 == 64)
    {
      v29 = MEMORY[0x1E695DEC8];
      v45 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self leftMicrophoneVolume];
      v30 = [v45 numberWithDouble:?];
      v34 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self rightMicrophoneVolume];
    }

    else
    {
      if (a3 != 128)
      {
        goto LABEL_114;
      }

      v29 = MEMORY[0x1E695DEC8];
      v33 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self leftStreamVolume];
      v30 = [v33 numberWithDouble:?];
      v34 = MEMORY[0x1E696AD98];
      [(AXRemoteHearingAidDevice *)self rightStreamVolume];
    }

    goto LABEL_93;
  }

  if (a3 == 256)
  {
    v51 = [MEMORY[0x1E695DF70] array];
    v52 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke;
    v70[3] = &unk_1E85CAC60;
    v71 = v51;
    v7 = v51;
    [v52 enumerateObjectsUsingBlock:v70];

    v53 = [MEMORY[0x1E695DF70] array];
    v54 = [(AXRemoteHearingAidDevice *)self rightPrograms];
    v65 = MEMORY[0x1E69E9820];
    v66 = 3221225472;
    v67 = __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke_2;
    v68 = &unk_1E85CAC60;
    v69 = v53;
    v55 = v53;
    [v54 enumerateObjectsUsingBlock:&v65];

    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v7, v55, 0, v65, v66, v67, v68}];

    goto LABEL_133;
  }

  if (a3 == 512)
  {
    v79[0] = &unk_1F5623ED8;
    v7 = [(AXRemoteHearingAidDevice *)self manufacturer];
    v79[1] = &unk_1F5623EF0;
    v80[0] = v7;
    v21 = [(AXRemoteHearingAidDevice *)self model];
    v80[1] = v21;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
    goto LABEL_97;
  }

  if (a3 != 1024)
  {
    goto LABEL_114;
  }

  v5 = MEMORY[0x1E695DEC8];
  v6 = MEMORY[0x1E696AD98];
  v7 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "index")}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
LABEL_16:
  v12 = v10;
  v13 = [v9 numberWithInt:{objc_msgSend(v10, "index")}];
  v14 = [v5 arrayWithObjects:{v8, v13, 0}];

LABEL_133:
LABEL_134:
  v63 = *MEMORY[0x1E69E9840];

  return v14;
}

void __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transportRepresentation];
  [v2 addObject:v3];
}

void __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transportRepresentation];
  [v2 addObject:v3];
}

- (id)valueForProperty:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i != 64; ++i)
  {
    if (((1 << i) & a3) != 0)
    {
      v7 = [(AXRemoteHearingAidDevice *)self _valueForProperty:1 << i];
      if (v7)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1 << i];
        [v5 setObject:v7 forKey:v8];
      }
    }
  }

  if ([v5 count] < 2)
  {
    if ([v5 count] == 1)
    {
      v10 = [v5 allValues];
      v9 = [v10 firstObject];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
  }

  return v9;
}

- (double)combinedVolumeForProperty:(unint64_t)a3
{
  if (propertyContainsProperty(0x40800000C0, a3))
  {
    v5 = [(AXRemoteHearingAidDevice *)self _valueForProperty:a3];
    objc_opt_class();
    v6 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count] == 2)
    {
      v7 = [v5 firstObject];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v5 lastObject];
      [v10 doubleValue];
      v12 = v11;

      v13 = [(AXRemoteHearingAidDevice *)self leftAvailable];
      if (v13)
      {
        v14 = v9 + 0.0;
      }

      else
      {
        v14 = 0.0;
      }

      if (v13)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = [(AXRemoteHearingAidDevice *)self rightAvailable];
      v17 = v15 + 1.0;
      v18 = v12 + v14;
      if (!v16)
      {
        v18 = v14;
        v17 = v15;
      }

      v6 = v18 / v17;
    }

LABEL_24:

    return v6;
  }

  if (a3 == 0x2000000000 || (v6 = 0.0, a3 == 0x1000000000))
  {
    v5 = [(AXRemoteHearingAidDevice *)self _valueForProperty:a3];
    objc_opt_class();
    v6 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count] == 2)
    {
      v19 = [v5 firstObject];
      v20 = [v19 charValue];

      v21 = [v5 lastObject];
      v22 = [v21 charValue];

      if (v20 != v22 && v20 == 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      v6 = v24 / 255.0 + 0.5;
    }

    goto LABEL_24;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXRemoteHearingAidDevice *)self name];
  v5 = [(AXRemoteHearingAidDevice *)self manufacturer];
  v6 = [(AXRemoteHearingAidDevice *)self model];
  v7 = [(AXRemoteHearingAidDevice *)self availableEars];
  v8 = [(AXRemoteHearingAidDevice *)self deviceUUID];
  v9 = [v3 stringWithFormat:@"AXRemoteHearingAidDevice:%p:[%@] [%@, %@] [%d] {%@}", self, v4, v5, v6, v7, v8];

  return v9;
}

- (AXHARemoteUpdateProtocol)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end