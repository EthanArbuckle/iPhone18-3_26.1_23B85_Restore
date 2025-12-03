@interface AXRemoteHearingAidDevice
- (AXHARemoteUpdateProtocol)updateDelegate;
- (AXRemoteHearingAidDevice)init;
- (AXRemoteHearingAidDevice)initWithPersistentRepresentation:(id)representation;
- (AXRemoteHearingAidDevice)initWithRemoteRepresentation:(id)representation andDeviceID:(id)d;
- (BOOL)checkDidLoadProperties:(unint64_t)properties;
- (BOOL)containsPeripheralWithUUID:(id)d;
- (BOOL)didLoadRequiredPeerProperties;
- (BOOL)didLoadRequiredProperties;
- (BOOL)hasConnection;
- (BOOL)isConnected;
- (BOOL)isLeftConnected;
- (BOOL)isRightConnected;
- (BOOL)programsListsAreEqual;
- (BOOL)propertyIsAvailable:(unint64_t)available forEar:(int)ear;
- (BOOL)shouldDisplayCombinedVolume;
- (BOOL)shouldOnlyShowIndividualVolumesForProperty:(unint64_t)property;
- (BOOL)showCombinedPrograms;
- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)property;
- (NSString)description;
- (double)combinedVolumeForProperty:(unint64_t)property;
- (id)_valueForProperty:(unint64_t)property;
- (id)combinedPrograms;
- (id)programAtIndex:(unsigned __int8)index forEar:(int)ear;
- (id)programs;
- (id)selectedProgramIndexes;
- (id)selectedPrograms;
- (id)valueForProperty:(unint64_t)property;
- (void)_delayWriteProperties;
- (void)_updateSelectedProgramsProperties;
- (void)_writeAllProgramSelectionsToPeripheral;
- (void)connect;
- (void)dealloc;
- (void)disconnectAndUnpair:(BOOL)unpair;
- (void)loadRequiredProperties;
- (void)selectProgram:(id)program forEar:(int)ear;
- (void)setKeepInSync:(BOOL)sync;
- (void)setLeftBass:(char)bass;
- (void)setLeftMicrophoneVolume:(double)volume;
- (void)setLeftMixedVolume:(double)volume;
- (void)setLeftSensitivity:(double)sensitivity;
- (void)setLeftStreamVolume:(double)volume;
- (void)setLeftTreble:(char)treble;
- (void)setRightBass:(char)bass;
- (void)setRightMicrophoneVolume:(double)volume;
- (void)setRightMixedVolume:(double)volume;
- (void)setRightSensitivity:(double)sensitivity;
- (void)setRightStreamVolume:(double)volume;
- (void)setRightTreble:(char)treble;
- (void)setValue:(id)value forProperty:(unint64_t)property;
- (void)writeVolumesForProperty:(unint64_t)property;
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

- (AXRemoteHearingAidDevice)initWithRemoteRepresentation:(id)representation andDeviceID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  v8 = [(AXRemoteHearingAidDevice *)self init];
  v9 = v8;
  if (v8)
  {
    [(AXRemoteHearingAidDevice *)v8 setDeviceUUID:dCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__AXRemoteHearingAidDevice_initWithRemoteRepresentation_andDeviceID___block_invoke;
    v11[3] = &unk_1E85CA558;
    v12 = v9;
    [representationCopy enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v9;
}

void __69__AXRemoteHearingAidDevice_initWithRemoteRepresentation_andDeviceID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setValue:v5 forProperty:{objc_msgSend(a2, "unsignedLongLongValue")}];
}

- (AXRemoteHearingAidDevice)initWithPersistentRepresentation:(id)representation
{
  representationCopy = representation;
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
    [representationCopy enumerateKeysAndObjectsUsingBlock:v9];
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
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "Requesting connect: %@", &v7, 0xCu);
  }

  updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [updateDelegate writeValue:&unk_1F5623F08 forProperty:0x200000 andDeviceID:deviceUUID];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disconnectAndUnpair:(BOOL)unpair
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Requesting disconnect: %@", &v8, 0xCu);
  }

  updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [updateDelegate writeValue:&unk_1F5623F20 forProperty:0x200000 andDeviceID:deviceUUID];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnected
{
  leftAvailable = [(AXRemoteHearingAidDevice *)self leftAvailable];
  if (leftAvailable != [(AXRemoteHearingAidDevice *)self leftConnected])
  {
    return 0;
  }

  rightAvailable = [(AXRemoteHearingAidDevice *)self rightAvailable];
  return rightAvailable ^ [(AXRemoteHearingAidDevice *)self rightConnected]^ 1;
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

- (BOOL)containsPeripheralWithUUID:(id)d
{
  dCopy = d;
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  if ([deviceUUID rangeOfString:dCopy] == 0x7FFFFFFFFFFFFFFFLL)
  {
    deviceUUID2 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    v7 = [dCopy rangeOfString:deviceUUID2] != 0x7FFFFFFFFFFFFFFFLL;
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
  requiredProperties = [(AXRemoteHearingAidDevice *)self requiredProperties];

  return [(AXRemoteHearingAidDevice *)self checkDidLoadProperties:requiredProperties];
}

- (BOOL)checkDidLoadProperties:(unint64_t)properties
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(AXRemoteHearingAidDevice *)self didLoadProperty:properties];
  if (!v4 && [MEMORY[0x1E69A4560] isInternalInstall])
  {
    array = [MEMORY[0x1E695DF70] array];
    requiredProperties = [(AXRemoteHearingAidDevice *)self requiredProperties];
    for (i = 0; i != 64; ++i)
    {
      if (((1 << i) & requiredProperties) != 0 && ![(AXRemoteHearingAidDevice *)self didLoadProperty:1 << i])
      {
        v8 = hearingPropertyDescription(1 << i);
        [array addObject:v8];
      }
    }

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [array componentsJoinedByString:@" and "];
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
  updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
  requiredProperties = [(AXRemoteHearingAidDevice *)self requiredProperties];
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [updateDelegate updateProperty:requiredProperties | 0xFF800105C4 forDeviceID:deviceUUID];
}

- (BOOL)propertyIsAvailable:(unint64_t)available forEar:(int)ear
{
  switch(ear)
  {
    case 6:
      if ((available & ~[(AXRemoteHearingAidDevice *)self leftAvailableProperties]) == 0)
      {
        return 1;
      }

      goto LABEL_7;
    case 4:
LABEL_7:
      rightAvailableProperties = [(AXRemoteHearingAidDevice *)self rightAvailableProperties];
      return (available & ~rightAvailableProperties) == 0;
    case 2:
      rightAvailableProperties = [(AXRemoteHearingAidDevice *)self leftAvailableProperties];
      return (available & ~rightAvailableProperties) == 0;
  }

  return 0;
}

- (void)_delayWriteProperties
{
  self->_delayWritePending = 1;
  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x40) != 0)
  {
    updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v4 = MEMORY[0x1E695DEC8];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftMicrophoneVolume];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightMicrophoneVolume];
    v7 = [v4 arrayWithObjects:{v5, v6, 0}];
    deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate writeValue:v7 forProperty:64 andDeviceID:deviceUUID];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFFFFFFFFBFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x80) != 0)
  {
    updateDelegate2 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v10 = MEMORY[0x1E695DEC8];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftStreamVolume];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightStreamVolume];
    v13 = [v10 arrayWithObjects:{v11, v12, 0}];
    deviceUUID2 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate2 writeValue:v13 forProperty:128 andDeviceID:deviceUUID2];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFFFFFFFF7FLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x80000000) != 0)
  {
    updateDelegate3 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v16 = MEMORY[0x1E695DEC8];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftSensitivity];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightSensitivity];
    v19 = [v16 arrayWithObjects:{v17, v18, 0}];
    deviceUUID3 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate3 writeValue:v19 forProperty:0x80000000 andDeviceID:deviceUUID3];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFFF7FFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x2000000000) != 0)
  {
    updateDelegate4 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v22 = MEMORY[0x1E695DEC8];
    v23 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftTreble];
    v24 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightTreble];
    v25 = [v22 arrayWithObjects:{v23, v24, 0}];
    deviceUUID4 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate4 writeValue:v25 forProperty:0x2000000000 andDeviceID:deviceUUID4];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFDFFFFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x1000000000) != 0)
  {
    updateDelegate5 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v28 = MEMORY[0x1E695DEC8];
    v29 = [MEMORY[0x1E696AD98] numberWithChar:self->_leftBass];
    v30 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightBass];
    v31 = [v28 arrayWithObjects:{v29, v30, 0}];
    deviceUUID5 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate5 writeValue:v31 forProperty:0x1000000000 andDeviceID:deviceUUID5];

    [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0xFFFFFFEFFFFFFFFFLL];
  }

  if (([(AXRemoteHearingAidDevice *)self pendingPropertyWrites]& 0x4000000000) != 0)
  {
    updateDelegate6 = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v34 = MEMORY[0x1E695DEC8];
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_leftMixedVolume];
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rightMixedVolume];
    v37 = [v34 arrayWithObjects:{v35, v36, 0}];
    deviceUUID6 = [(AXRemoteHearingAidDevice *)self deviceUUID];
    [updateDelegate6 writeValue:v37 forProperty:0x4000000000 andDeviceID:deviceUUID6];

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

- (void)writeVolumesForProperty:(unint64_t)property
{
  [(AXRemoteHearingAidDevice *)self setPendingPropertyWrites:[(AXRemoteHearingAidDevice *)self pendingPropertyWrites]| property];
  if (property > 0xFFFFFFFFFLL)
  {
    if (property != 0x1000000000 && property != 0x4000000000)
    {
      v5 = 0x2000000000;
LABEL_8:
      if (property != v5)
      {
        return;
      }
    }
  }

  else if (property != 64 && property != 128)
  {
    v5 = 0x80000000;
    goto LABEL_8;
  }

  if (!self->_delayWritePending)
  {

    [(AXRemoteHearingAidDevice *)self _delayWriteProperties];
  }
}

- (void)setLeftMicrophoneVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (void)setRightMicrophoneVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (void)setLeftStreamVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (void)setRightStreamVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (void)setLeftSensitivity:(double)sensitivity
{
  sensitivityCopy = 0.0;
  if (sensitivity >= 0.0)
  {
    sensitivityCopy = sensitivity;
  }

  if (sensitivity <= 1.0)
  {
    v4 = sensitivityCopy;
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

- (void)setRightSensitivity:(double)sensitivity
{
  sensitivityCopy = 0.0;
  if (sensitivity >= 0.0)
  {
    sensitivityCopy = sensitivity;
  }

  if (sensitivity <= 1.0)
  {
    v4 = sensitivityCopy;
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

- (void)setLeftTreble:(char)treble
{
  if (treble <= -127)
  {
    trebleCopy = -127;
  }

  else
  {
    trebleCopy = treble;
  }

  if (self->_leftTreble != trebleCopy)
  {
    self->_leftTreble = trebleCopy;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x2000000000];
  }
}

- (void)setRightTreble:(char)treble
{
  if (treble <= -127)
  {
    trebleCopy = -127;
  }

  else
  {
    trebleCopy = treble;
  }

  if (self->_rightTreble != trebleCopy)
  {
    self->_rightTreble = trebleCopy;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x2000000000];
  }
}

- (void)setLeftBass:(char)bass
{
  if (bass <= -127)
  {
    bassCopy = -127;
  }

  else
  {
    bassCopy = bass;
  }

  if (self->_leftBass != bassCopy)
  {
    self->_leftBass = bassCopy;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x1000000000];
  }
}

- (void)setRightBass:(char)bass
{
  if (bass <= -127)
  {
    bassCopy = -127;
  }

  else
  {
    bassCopy = bass;
  }

  if (self->_rightBass != bassCopy)
  {
    self->_rightBass = bassCopy;
    [(AXRemoteHearingAidDevice *)self writeVolumesForProperty:0x1000000000];
  }
}

- (void)setLeftMixedVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (void)setRightMixedVolume:(double)volume
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v4 = volumeCopy;
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

- (id)programAtIndex:(unsigned __int8)index forEar:(int)ear
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  if (ear == 2)
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
  indexCopy = index;
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

- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)property
{
  leftAvailable = [(AXRemoteHearingAidDevice *)self leftAvailable];
  if (leftAvailable != [(AXRemoteHearingAidDevice *)self rightAvailable])
  {
    return 1;
  }

  result = 0;
  if (property > 0x7FFFFFFF)
  {
    if (property == 0x80000000)
    {
      leftSensitivitySteps = [(AXRemoteHearingAidDevice *)self leftSensitivitySteps];
      if (leftSensitivitySteps == [(AXRemoteHearingAidDevice *)self rightSensitivitySteps])
      {
        [(AXRemoteHearingAidDevice *)self leftSensitivity];
        v9 = v16;
        [(AXRemoteHearingAidDevice *)self rightSensitivity];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }

    else
    {
      if (property != 0x4000000000)
      {
        return result;
      }

      leftMixedVolumeSteps = [(AXRemoteHearingAidDevice *)self leftMixedVolumeSteps];
      if (leftMixedVolumeSteps == [(AXRemoteHearingAidDevice *)self rightMixedVolumeSteps])
      {
        [(AXRemoteHearingAidDevice *)self leftMixedVolume];
        v9 = v12;
        [(AXRemoteHearingAidDevice *)self rightMixedVolume];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }
  }

  else if (property == 64)
  {
    leftMicrophoneVolumeSteps = [(AXRemoteHearingAidDevice *)self leftMicrophoneVolumeSteps];
    if (leftMicrophoneVolumeSteps == [(AXRemoteHearingAidDevice *)self rightMicrophoneVolumeSteps])
    {
      [(AXRemoteHearingAidDevice *)self leftMicrophoneVolume];
      v9 = v14;
      [(AXRemoteHearingAidDevice *)self rightMicrophoneVolume];
      return vabdd_f64(v9, v10) < 0.01;
    }
  }

  else
  {
    if (property != 128)
    {
      return result;
    }

    leftStreamVolumeSteps = [(AXRemoteHearingAidDevice *)self leftStreamVolumeSteps];
    if (leftStreamVolumeSteps == [(AXRemoteHearingAidDevice *)self rightStreamVolumeSteps])
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

- (BOOL)shouldOnlyShowIndividualVolumesForProperty:(unint64_t)property
{
  v5 = +[HUHearingAidSettings sharedInstance];
  if ((![v5 independentHearingAidSettings] || -[AXRemoteHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes") || !-[AXRemoteHearingAidDevice isLeftConnected](self, "isLeftConnected") || !-[AXRemoteHearingAidDevice isRightConnected](self, "isRightConnected")) && -[AXRemoteHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes") && (v6 = -[AXRemoteHearingAidDevice isLeftConnected](self, "isLeftConnected"), v6 == -[AXRemoteHearingAidDevice isRightConnected](self, "isRightConnected")))
  {
    v7 = ![(AXRemoteHearingAidDevice *)self supportsCombinedVolumesForProperty:property];
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
  leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v4 = [leftPrograms count];
  rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
  LOBYTE(v4) = v4 == [rightPrograms count];

  v18 = v4;
  if (*(v16 + 24) != 1)
  {
    goto LABEL_5;
  }

  leftPrograms2 = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__AXRemoteHearingAidDevice_programsListsAreEqual__block_invoke;
  v14[3] = &unk_1E85CC948;
  v14[4] = self;
  v14[5] = &v15;
  [leftPrograms2 enumerateObjectsUsingBlock:v14];

  if (v16[3])
  {
    leftSelectedProgram = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
    rightSelectedProgram = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
    if ([leftSelectedProgram isEqual:rightSelectedProgram])
    {
      leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
      rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
      v11 = [leftSelectedStreamingProgram isEqual:rightSelectedStreamingProgram];
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
  leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
  rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
  v5 = [leftPrograms arrayByAddingObjectsFromArray:rightPrograms];
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
  programs = [(AXRemoteHearingAidDevice *)self programs];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = programs;
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
        if ([array indexOfObjectPassingTest:v14] == 0x7FFFFFFFFFFFFFFFLL)
        {
          name = [v8 name];
          v10 = [name length];

          if (v10)
          {
            [array addObject:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
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
    programs = [(AXRemoteHearingAidDevice *)self programs];
    *buf = 138412290;
    v19 = programs;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [(AXRemoteHearingAidDevice *)self setLeftSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedStreamingProgram:0];
  [(AXRemoteHearingAidDevice *)self setRightSelectedProgram:0];
  [(AXRemoteHearingAidDevice *)self setLeftSelectedProgram:0];
  leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke;
  v17[3] = &unk_1E85CAC60;
  v17[4] = self;
  [leftPrograms enumerateObjectsUsingBlock:v17];

  rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__AXRemoteHearingAidDevice__updateSelectedProgramsProperties__block_invoke_2;
  v16[3] = &unk_1E85CAC60;
  v16[4] = self;
  [rightPrograms enumerateObjectsUsingBlock:v16];

  leftSelectedProgram = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];

  if (!leftSelectedProgram)
  {
    leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
    [(AXRemoteHearingAidDevice *)self setLeftSelectedProgram:leftSelectedStreamingProgram];
  }

  leftSelectedStreamingProgram2 = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];

  if (!leftSelectedStreamingProgram2)
  {
    leftSelectedProgram2 = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
    [(AXRemoteHearingAidDevice *)self setLeftSelectedStreamingProgram:leftSelectedProgram2];
  }

  rightSelectedProgram = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];

  if (!rightSelectedProgram)
  {
    rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
    [(AXRemoteHearingAidDevice *)self setRightSelectedProgram:rightSelectedStreamingProgram];
  }

  rightSelectedStreamingProgram2 = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];

  if (!rightSelectedStreamingProgram2)
  {
    rightSelectedProgram2 = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
    [(AXRemoteHearingAidDevice *)self setRightSelectedStreamingProgram:rightSelectedProgram2];
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
  leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
  leftSelectedProgram = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
  rightSelectedProgram = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
  v7 = 0x1E695D000;
  if ([(AXRemoteHearingAidDevice *)self propertyIsAvailable:0x800000000 forEar:2]|| [(AXRemoteHearingAidDevice *)self propertyIsAvailable:0x800000000 forEar:4])
  {
    updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
    v9 = MEMORY[0x1E695DEC8];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(leftSelectedStreamingProgram, "index")}];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rightSelectedStreamingProgram, "index")}];
    v12 = [v9 arrayWithObjects:{v10, v11, 0}];
    [(AXRemoteHearingAidDevice *)self deviceUUID];
    v13 = rightSelectedProgram;
    v14 = leftSelectedProgram;
    v15 = rightSelectedStreamingProgram;
    v17 = v16 = leftSelectedStreamingProgram;
    [updateDelegate writeValue:v12 forProperty:0x800000000 andDeviceID:v17];

    leftSelectedStreamingProgram = v16;
    rightSelectedStreamingProgram = v15;
    leftSelectedProgram = v14;
    rightSelectedProgram = v13;

    v7 = 0x1E695D000uLL;
  }

  else
  {
    updateDelegate = HCLogHearingAids();
    if (os_log_type_enabled(updateDelegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, updateDelegate, OS_LOG_TYPE_DEFAULT, "AXHearingPropertyStreamingProgramActive not available", buf, 2u);
    }
  }

  updateDelegate2 = [(AXRemoteHearingAidDevice *)self updateDelegate];
  v19 = *(v7 + 3784);
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(leftSelectedProgram, "index")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(rightSelectedProgram, "index")}];
  v22 = [v19 arrayWithObjects:{v20, v21, 0}];
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  [updateDelegate2 writeValue:v22 forProperty:1024 andDeviceID:deviceUUID];
}

- (void)selectProgram:(id)program forEar:(int)ear
{
  programCopy = program;
  if ([(AXRemoteHearingAidDevice *)self showCombinedPrograms])
  {
    leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
    [leftPrograms setProgram:programCopy withOtherSidePrograms:0 selected:{objc_msgSend(programCopy, "isSelected")}];

    rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
    [rightPrograms setProgram:programCopy withOtherSidePrograms:0 selected:{objc_msgSend(programCopy, "isSelected")}];
LABEL_7:

    goto LABEL_8;
  }

  if ((ear & [programCopy ear] & 2) != 0)
  {
    leftPrograms2 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    rightPrograms2 = [(AXRemoteHearingAidDevice *)self rightPrograms];
    [leftPrograms2 setProgram:programCopy withOtherSidePrograms:rightPrograms2 selected:{objc_msgSend(programCopy, "isSelected")}];
  }

  if ((ear & [programCopy ear] & 4) != 0)
  {
    rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
    leftPrograms3 = [(AXRemoteHearingAidDevice *)self leftPrograms];
    [rightPrograms setProgram:programCopy withOtherSidePrograms:leftPrograms3 selected:{objc_msgSend(programCopy, "isSelected")}];

    goto LABEL_7;
  }

LABEL_8:
  [(AXRemoteHearingAidDevice *)self _updateSelectedProgramsProperties];
  [(AXRemoteHearingAidDevice *)self _writeAllProgramSelectionsToPeripheral];
}

- (id)selectedPrograms
{
  v3 = MEMORY[0x1E695DEC8];
  leftSelectedProgram = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  rightSelectedProgram = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
  leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
  rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
  v8 = [v3 arrayWithObjects:{leftSelectedProgram, rightSelectedProgram, leftSelectedStreamingProgram, rightSelectedStreamingProgram, 0}];

  v9 = [v8 indexesOfObjectsPassingTest:&__block_literal_global_65];
  v10 = [v8 objectsAtIndexes:v9];

  return v10;
}

- (id)selectedProgramIndexes
{
  programs = [(AXRemoteHearingAidDevice *)self programs];
  v3 = [programs indexesOfObjectsPassingTest:&__block_literal_global_68];

  return v3;
}

- (void)setKeepInSync:(BOOL)sync
{
  if (self->_keepInSync != sync)
  {
    self->_keepInSync = sync;
    if (sync)
    {
      if ([(AXRemoteHearingAidDevice *)self didLoadRequiredProperties])
      {
        updateDelegate = [(AXRemoteHearingAidDevice *)self updateDelegate];
        deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
        [updateDelegate updateProperty:0xFF800105C4 forDeviceID:deviceUUID];
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

- (void)setValue:(id)value forProperty:(unint64_t)property
{
  v113 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = hearingPropertyDescription(property);
    *buf = 134218498;
    propertyCopy = self;
    v109 = 2112;
    v110 = v8;
    v111 = 2112;
    v112 = valueCopy;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "%p = property:%@ - value:%@", buf, 0x20u);
  }

  if (property > 0xFFFFFFF)
  {
    if (property > 0x1FFFFFFFFFLL)
    {
      if (property <= 0x1FFFFFFFFFFLL)
      {
        if (property > 0x7FFFFFFFFFLL)
        {
          if (property == 0x8000000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
            {
              goto LABEL_180;
            }

            firstObject = [valueCopy firstObject];
            -[AXRemoteHearingAidDevice setLeftMixedVolumeSteps:](self, "setLeftMixedVolumeSteps:", [firstObject shortValue]);

            lastObject = [valueCopy lastObject];
            -[AXRemoteHearingAidDevice setRightMixedVolumeSteps:](self, "setRightMixedVolumeSteps:", [lastObject shortValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x8000000000;
          }

          else
          {
            if (property != 0x10000000000)
            {
              goto LABEL_167;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            -[AXRemoteHearingAidDevice setAvailableInputEars:](self, "setAvailableInputEars:", [valueCopy intValue]);
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x10000000000;
          }
        }

        else
        {
          if (property == 0x2000000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
            {
              goto LABEL_180;
            }

            firstObject2 = [valueCopy firstObject];
            -[AXRemoteHearingAidDevice setLeftTreble:](self, "setLeftTreble:", [firstObject2 charValue]);

            lastObject2 = [valueCopy lastObject];
            -[AXRemoteHearingAidDevice setRightTreble:](self, "setRightTreble:", [lastObject2 charValue]);
            goto LABEL_179;
          }

          if (property != 0x4000000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject3 = [valueCopy firstObject];
          [firstObject3 doubleValue];
          self->_leftMixedVolume = v21;

          lastObject3 = [valueCopy lastObject];
          [lastObject3 doubleValue];
          self->_rightMixedVolume = v23;

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x4000000000;
        }

        goto LABEL_166;
      }

      if (property > 0x7FFFFFFFFFFLL)
      {
        switch(property)
        {
          case 0x80000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 4)
            {
              goto LABEL_180;
            }

            v86 = [valueCopy objectAtIndex:1];
            -[AXRemoteHearingAidDevice setRequiresCombinedPresets:](self, "setRequiresCombinedPresets:", [v86 BOOLValue]);

            v87 = [valueCopy objectAtIndex:2];
            -[AXRemoteHearingAidDevice setRequiresCombinedVolumes:](self, "setRequiresCombinedVolumes:", [v87 BOOLValue]);

            v88 = [valueCopy objectAtIndex:3];
            -[AXRemoteHearingAidDevice setRequiresBinauralStreaming:](self, "setRequiresBinauralStreaming:", [v88 BOOLValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000000000;
            break;
          case 0x100000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
            {
              goto LABEL_180;
            }

            firstObject4 = [valueCopy firstObject];
            [(AXRemoteHearingAidDevice *)self setLeftPeripheralUUID:firstObject4];

            lastObject4 = [valueCopy lastObject];
            [(AXRemoteHearingAidDevice *)self setRightPeripheralUUID:lastObject4];

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000000000;
            break;
          case 0x200000000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            [(AXRemoteHearingAidDevice *)self setRSSI:valueCopy];
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000000000;
            break;
          default:
            goto LABEL_167;
        }

        goto LABEL_166;
      }

      if (property == 0x20000000000)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[AXRemoteHearingAidDevice setDeviceProtocol:](self, "setDeviceProtocol:", [valueCopy unsignedIntegerValue]);
        }

        goto LABEL_180;
      }

      if (property == 0x40000000000)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_180;
        }

        -[AXRemoteHearingAidDevice setEarsSupportingWatch:](self, "setEarsSupportingWatch:", [valueCopy intValue]);
        v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000000000;
        goto LABEL_166;
      }
    }

    else
    {
      if (property <= 0xFFFFFFFFLL)
      {
        if (property > 0x3FFFFFFF)
        {
          if (property == 0x40000000)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 4)
            {
              goto LABEL_180;
            }

            v51 = [valueCopy objectAtIndex:1];
            -[AXRemoteHearingAidDevice setSupportsCombinedPresets:](self, "setSupportsCombinedPresets:", [v51 BOOLValue]);

            v52 = [valueCopy objectAtIndex:2];
            -[AXRemoteHearingAidDevice setSupportsCombinedVolumes:](self, "setSupportsCombinedVolumes:", [v52 BOOLValue]);

            v53 = [valueCopy objectAtIndex:3];
            -[AXRemoteHearingAidDevice setSupportsBinauralStreaming:](self, "setSupportsBinauralStreaming:", [v53 BOOLValue]);

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000000;
          }

          else
          {
            if (property != 0x80000000)
            {
              goto LABEL_167;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
            {
              goto LABEL_180;
            }

            firstObject5 = [valueCopy firstObject];
            [firstObject5 doubleValue];
            self->_leftSensitivity = v34;

            lastObject5 = [valueCopy lastObject];
            [lastObject5 doubleValue];
            self->_rightSensitivity = v36;

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000000;
          }
        }

        else if (property == 0x10000000)
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
          if (property != 0x20000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_180;
          }

          -[AXRemoteHearingAidDevice setIsBluetoothPaired:](self, "setIsBluetoothPaired:", [valueCopy BOOLValue]);
          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x20000000;
        }

        goto LABEL_166;
      }

      if (property <= 0x3FFFFFFFFLL)
      {
        if (property == 0x100000000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject6 = [valueCopy firstObject];
          -[AXRemoteHearingAidDevice setLeftMicrophoneVolumeSteps:](self, "setLeftMicrophoneVolumeSteps:", [firstObject6 shortValue]);

          lastObject6 = [valueCopy lastObject];
          -[AXRemoteHearingAidDevice setRightMicrophoneVolumeSteps:](self, "setRightMicrophoneVolumeSteps:", [lastObject6 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000000;
        }

        else
        {
          if (property != 0x200000000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject7 = [valueCopy firstObject];
          -[AXRemoteHearingAidDevice setLeftStreamVolumeSteps:](self, "setLeftStreamVolumeSteps:", [firstObject7 shortValue]);

          lastObject7 = [valueCopy lastObject];
          -[AXRemoteHearingAidDevice setRightStreamVolumeSteps:](self, "setRightStreamVolumeSteps:", [lastObject7 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000000;
        }

        goto LABEL_166;
      }

      switch(property)
      {
        case 0x400000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject8 = [valueCopy firstObject];
          -[AXRemoteHearingAidDevice setLeftSensitivitySteps:](self, "setLeftSensitivitySteps:", [firstObject8 shortValue]);

          lastObject8 = [valueCopy lastObject];
          -[AXRemoteHearingAidDevice setRightSensitivitySteps:](self, "setRightSensitivitySteps:", [lastObject8 shortValue]);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x400000000;
          goto LABEL_166;
        case 0x800000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject9 = [valueCopy firstObject];
            intValue = [firstObject9 intValue];

            lastObject9 = [valueCopy lastObject];
            intValue2 = [lastObject9 intValue];

            if (intValue != -1)
            {
              leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
              v95[0] = MEMORY[0x1E69E9820];
              v95[1] = 3221225472;
              v95[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_7;
              v95[3] = &unk_1E85CACA8;
              v96 = intValue;
              v95[4] = self;
              [leftPrograms enumerateObjectsUsingBlock:v95];
            }

            if (intValue2 != -1)
            {
              rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
              v93[0] = MEMORY[0x1E69E9820];
              v93[1] = 3221225472;
              v93[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_8;
              v93[3] = &unk_1E85CACA8;
              v94 = intValue2;
              v93[4] = self;
              [rightPrograms enumerateObjectsUsingBlock:v93];
            }

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x800000000;
            goto LABEL_166;
          }

          goto LABEL_180;
        case 0x1000000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject10 = [valueCopy firstObject];
          -[AXRemoteHearingAidDevice setLeftBass:](self, "setLeftBass:", [firstObject10 charValue]);

          lastObject2 = [valueCopy lastObject];
          -[AXRemoteHearingAidDevice setRightBass:](self, "setRightBass:", [lastObject2 charValue]);
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
      [valueCopy enumerateKeysAndObjectsUsingBlock:v92];
    }

    v89 = HCLogHearingAids();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      propertyCopy = property;
      _os_log_impl(&dword_1DA5E2000, v89, OS_LOG_TYPE_DEFAULT, "Unknown property: %lld", buf, 0xCu);
    }

    goto LABEL_180;
  }

  if (property >= 0x10000)
  {
    if (property >= 0x200000)
    {
      if (property < 0x800000)
      {
        if (property == 0x200000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject11 = [valueCopy firstObject];
          -[AXRemoteHearingAidDevice setLeftConnected:](self, "setLeftConnected:", [firstObject11 intValue] == 2);

          lastObject10 = [valueCopy lastObject];
          -[AXRemoteHearingAidDevice setRightConnected:](self, "setRightConnected:", [lastObject10 intValue] == 2);

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200000;
        }

        else
        {
          if (property != 0x400000)
          {
            goto LABEL_167;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
          {
            goto LABEL_180;
          }

          firstObject12 = [valueCopy firstObject];
          [(AXRemoteHearingAidDevice *)self setLeftFirmwareVersion:firstObject12];

          lastObject11 = [valueCopy lastObject];
          [(AXRemoteHearingAidDevice *)self setRightFirmwareVersion:lastObject11];

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x400000;
        }
      }

      else
      {
        switch(property)
        {
          case 0x800000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
            {
              goto LABEL_180;
            }

            firstObject13 = [valueCopy firstObject];
            [(AXRemoteHearingAidDevice *)self setLeftHardwareVersion:firstObject13];

            lastObject12 = [valueCopy lastObject];
            [(AXRemoteHearingAidDevice *)self setRightHardwareVersion:lastObject12];

            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x800000;
            break;
          case 0x1000000uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_180;
            }

            [(AXRemoteHearingAidDevice *)self setDeviceUUID:valueCopy];
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x1000000;
            break;
          case 0x4000000uLL:
            v18 = HCLogHearingAids();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              propertyCopy = valueCopy;
              _os_log_impl(&dword_1DA5E2000, v18, OS_LOG_TYPE_DEFAULT, "RemoteDevice Paired %@", buf, 0xCu);
            }

            -[AXRemoteHearingAidDevice setIsPaired:](self, "setIsPaired:", [valueCopy BOOLValue]);
            v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x4000000;
            goto LABEL_166;
          default:
            goto LABEL_167;
        }
      }

      goto LABEL_166;
    }

    if (property >= 0x80000)
    {
      if (property == 0x80000)
      {
        manufacturer = [(AXRemoteHearingAidDevice *)self manufacturer];
        lastObject2 = [manufacturer mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          [lastObject2 setArray:valueCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [lastObject2 replaceObjectAtIndex:0 withObject:valueCopy];
          }
        }

        [(AXRemoteHearingAidDevice *)self setManufacturer:lastObject2];
        v90 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80000;
      }

      else
      {
        if (property != 0x100000)
        {
          goto LABEL_167;
        }

        model = [(AXRemoteHearingAidDevice *)self model];
        lastObject2 = [model mutableCopy];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          [lastObject2 setArray:valueCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [lastObject2 replaceObjectAtIndex:0 withObject:valueCopy];
          }
        }

        [(AXRemoteHearingAidDevice *)self setModel:lastObject2];
        v90 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x100000;
      }

      [(AXRemoteHearingAidDevice *)self setLoadedProperties:v90];
      goto LABEL_179;
    }

    if (property == 0x10000)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
      {
        goto LABEL_180;
      }

      firstObject14 = [valueCopy firstObject];
      -[AXRemoteHearingAidDevice setLeftAvailableProperties:](self, "setLeftAvailableProperties:", [firstObject14 unsignedLongLongValue]);

      lastObject13 = [valueCopy lastObject];
      -[AXRemoteHearingAidDevice setRightAvailableProperties:](self, "setRightAvailableProperties:", [lastObject13 unsignedLongLongValue]);

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x10000;
    }

    else
    {
      if (property != 0x40000)
      {
        goto LABEL_167;
      }

      [(AXRemoteHearingAidDevice *)self setName:valueCopy];
      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40000;
    }

LABEL_166:
    [(AXRemoteHearingAidDevice *)self setLoadedProperties:v15];
    goto LABEL_180;
  }

  if (property <= 63)
  {
    if (property <= 15)
    {
      if (property != 4)
      {
        if (property == 8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            availableEars = [(AXRemoteHearingAidDevice *)self availableEars];
            if (availableEars != [valueCopy intValue] && objc_msgSend(valueCopy, "intValue") >= 1)
            {
              -[AXRemoteHearingAidDevice setAvailableEars:](self, "setAvailableEars:", [valueCopy intValue]);
            }
          }

          v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 8;
          goto LABEL_166;
        }

        goto LABEL_167;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
      {
        goto LABEL_180;
      }

      firstObject15 = [valueCopy firstObject];
      [firstObject15 doubleValue];
      [(AXRemoteHearingAidDevice *)self setLeftBatteryLevel:?];

      lastObject14 = [valueCopy lastObject];
      [lastObject14 doubleValue];
      [(AXRemoteHearingAidDevice *)self setRightBatteryLevel:?];

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 4;
      goto LABEL_166;
    }

    if (property != 16 && property != 32)
    {
      goto LABEL_167;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
    {
      goto LABEL_180;
    }

    firstObject16 = [valueCopy firstObject];
    [(AXRemoteHearingAidDevice *)self setLeftUUID:firstObject16];

    lastObject15 = [valueCopy lastObject];
    [(AXRemoteHearingAidDevice *)self setRightUUID:lastObject15];

    [(AXRemoteHearingAidDevice *)self setLoadedProperties:[(AXRemoteHearingAidDevice *)self loadedProperties]| property];
    leftUUID = [(AXRemoteHearingAidDevice *)self leftUUID];
    v27 = [leftUUID length];

    rightUUID = [(AXRemoteHearingAidDevice *)self rightUUID];
    lastObject2 = rightUUID;
    if (v27)
    {
      v29 = [rightUUID length];

      if (v29)
      {
        v30 = MEMORY[0x1E696AEC0];
        leftUUID2 = [(AXRemoteHearingAidDevice *)self leftUUID];
        rightUUID2 = [(AXRemoteHearingAidDevice *)self rightUUID];
        lastObject2 = [v30 stringWithFormat:@"%@_%@", leftUUID2, rightUUID2];
      }

      else
      {
        lastObject2 = [(AXRemoteHearingAidDevice *)self leftUUID];
      }
    }

    [(AXRemoteHearingAidDevice *)self setDeviceUUID:lastObject2];
LABEL_179:

    goto LABEL_180;
  }

  if (property <= 255)
  {
    if (property == 64)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
      {
        goto LABEL_180;
      }

      firstObject17 = [valueCopy firstObject];
      [firstObject17 doubleValue];
      self->_leftMicrophoneVolume = v58;

      lastObject16 = [valueCopy lastObject];
      [lastObject16 doubleValue];
      self->_rightMicrophoneVolume = v60;

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x40;
    }

    else
    {
      if (property != 128)
      {
        goto LABEL_167;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
      {
        goto LABEL_180;
      }

      firstObject18 = [valueCopy firstObject];
      [firstObject18 doubleValue];
      self->_leftStreamVolume = v39;

      lastObject17 = [valueCopy lastObject];
      [lastObject17 doubleValue];
      self->_rightStreamVolume = v41;

      v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x80;
    }

    goto LABEL_166;
  }

  if (property == 256)
  {
    v75 = HCLogHearingAids();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      programs = [(AXRemoteHearingAidDevice *)self programs];
      *buf = 138412290;
      propertyCopy = programs;
      _os_log_impl(&dword_1DA5E2000, v75, OS_LOG_TYPE_DEFAULT, "AXHearingPropertyProgramsAvailable %@", buf, 0xCu);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
    {
      goto LABEL_180;
    }

    lastObject2 = [valueCopy firstObject];
    lastObject18 = [valueCopy lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x1E695DF70] array];
      v105[0] = MEMORY[0x1E69E9820];
      v105[1] = 3221225472;
      v105[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke;
      v105[3] = &unk_1E85CCA30;
      v106 = array;
      v79 = array;
      [lastObject2 enumerateObjectsUsingBlock:v105];
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
      array2 = [MEMORY[0x1E695DF70] array];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_3;
      v102[3] = &unk_1E85CCA30;
      v103 = array2;
      v81 = array2;
      [lastObject18 enumerateObjectsUsingBlock:v102];
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

  if (property == 512)
  {
    v65 = [valueCopy objectForKey:&unk_1F5623ED8];
    [(AXRemoteHearingAidDevice *)self setValue:v65 forProperty:0x80000];

    v66 = [valueCopy objectForKey:&unk_1F5623EF0];
    [(AXRemoteHearingAidDevice *)self setValue:v66 forProperty:0x100000];

    v15 = [(AXRemoteHearingAidDevice *)self loadedProperties]| 0x200;
    goto LABEL_166;
  }

  if (property != 1024)
  {
    goto LABEL_167;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
  {
    firstObject19 = [valueCopy firstObject];
    intValue3 = [firstObject19 intValue];

    if (intValue3 != -1)
    {
      leftPrograms2 = [(AXRemoteHearingAidDevice *)self leftPrograms];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_5;
      v99[3] = &unk_1E85CACA8;
      v100 = intValue3;
      v99[4] = self;
      [leftPrograms2 enumerateObjectsUsingBlock:v99];
    }

    lastObject19 = [valueCopy lastObject];
    intValue4 = [lastObject19 intValue];

    if (intValue4 != -1)
    {
      rightPrograms2 = [(AXRemoteHearingAidDevice *)self rightPrograms];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __49__AXRemoteHearingAidDevice_setValue_forProperty___block_invoke_6;
      v97[3] = &unk_1E85CACA8;
      v98 = intValue4;
      v97[4] = self;
      [rightPrograms2 enumerateObjectsUsingBlock:v97];
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

- (id)_valueForProperty:(unint64_t)property
{
  v80[2] = *MEMORY[0x1E69E9840];
  if (property > 0x3FFFFFF)
  {
    if (property <= 0xFFFFFFFFFLL)
    {
      if (property > 0x7FFFFFFF)
      {
        if (property <= 0x1FFFFFFFFLL)
        {
          if (property == 0x80000000)
          {
            v29 = MEMORY[0x1E695DEC8];
            v46 = MEMORY[0x1E696AD98];
            [(AXRemoteHearingAidDevice *)self leftSensitivity];
            v30 = [v46 numberWithDouble:?];
            v34 = MEMORY[0x1E696AD98];
            [(AXRemoteHearingAidDevice *)self rightSensitivity];
            goto LABEL_93;
          }

          if (property != 0x100000000)
          {
            goto LABEL_114;
          }

          v29 = MEMORY[0x1E695DEC8];
          v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftMicrophoneVolumeSteps](self, "leftMicrophoneVolumeSteps")}];
          v31 = MEMORY[0x1E696AD98];
          rightMicrophoneVolumeSteps = [(AXRemoteHearingAidDevice *)self rightMicrophoneVolumeSteps];
        }

        else
        {
          switch(property)
          {
            case 0x200000000uLL:
              v29 = MEMORY[0x1E695DEC8];
              v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftStreamVolumeSteps](self, "leftStreamVolumeSteps")}];
              v31 = MEMORY[0x1E696AD98];
              rightMicrophoneVolumeSteps = [(AXRemoteHearingAidDevice *)self rightStreamVolumeSteps];
              break;
            case 0x400000000uLL:
              v29 = MEMORY[0x1E695DEC8];
              v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftSensitivitySteps](self, "leftSensitivitySteps")}];
              v31 = MEMORY[0x1E696AD98];
              rightMicrophoneVolumeSteps = [(AXRemoteHearingAidDevice *)self rightSensitivitySteps];
              break;
            case 0x800000000uLL:
              v5 = MEMORY[0x1E695DEC8];
              v11 = MEMORY[0x1E696AD98];
              leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedStreamingProgram];
              v8 = [v11 numberWithInt:{objc_msgSend(leftSelectedStreamingProgram, "index")}];
              v9 = MEMORY[0x1E696AD98];
              rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedStreamingProgram];
              goto LABEL_16;
            default:
              goto LABEL_114;
          }
        }

        goto LABEL_106;
      }

      if (property <= 0x1FFFFFFF)
      {
        if (property != 0x4000000)
        {
          if (property == 0x10000000)
          {
            v14 = MEMORY[0x1E695E118];
            goto LABEL_134;
          }

          goto LABEL_114;
        }

        v41 = MEMORY[0x1E696AD98];
        isPaired = [(AXRemoteHearingAidDevice *)self isPaired];
        goto LABEL_88;
      }

      if (property == 0x20000000)
      {
        v41 = MEMORY[0x1E696AD98];
        isPaired = [(AXRemoteHearingAidDevice *)self isBluetoothPaired];
LABEL_88:
        model = [v41 numberWithBool:isPaired];
        goto LABEL_113;
      }

      if (property != 0x40000000)
      {
        goto LABEL_114;
      }

      v78[0] = &unk_1F5623F20;
      leftSelectedStreamingProgram = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsCombinedPresets](self, "supportsCombinedPresets")}];
      v78[1] = leftSelectedStreamingProgram;
      model2 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes")}];
      v78[2] = model2;
      v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice supportsBinauralStreaming](self, "supportsBinauralStreaming")}];
      v78[3] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v78;
LABEL_102:
      v14 = [v27 arrayWithObjects:v28 count:4];

      goto LABEL_103;
    }

    if (property <= 0xFFFFFFFFFFLL)
    {
      if (property <= 0x3FFFFFFFFFLL)
      {
        if (property == 0x1000000000)
        {
          leftSelectedStreamingProgram = [MEMORY[0x1E696AD98] numberWithChar:self->_leftBass];
          v76[0] = leftSelectedStreamingProgram;
          model2 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightBass];
          v76[1] = model2;
          v22 = MEMORY[0x1E695DEC8];
          v23 = v76;
        }

        else
        {
          if (property != 0x2000000000)
          {
            goto LABEL_114;
          }

          leftSelectedStreamingProgram = [MEMORY[0x1E696AD98] numberWithChar:self->_leftTreble];
          v77[0] = leftSelectedStreamingProgram;
          model2 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightTreble];
          v77[1] = model2;
          v22 = MEMORY[0x1E695DEC8];
          v23 = v77;
        }

        goto LABEL_86;
      }

      if (property == 0x4000000000)
      {
        v29 = MEMORY[0x1E695DEC8];
        v44 = MEMORY[0x1E696AD98];
        [(AXRemoteHearingAidDevice *)self leftMixedVolume];
        v30 = [v44 numberWithDouble:?];
        v34 = MEMORY[0x1E696AD98];
        [(AXRemoteHearingAidDevice *)self rightMixedVolume];
        goto LABEL_93;
      }

      if (property != 0x8000000000)
      {
        goto LABEL_114;
      }

      v29 = MEMORY[0x1E695DEC8];
      v30 = [MEMORY[0x1E696AD98] numberWithShort:{-[AXRemoteHearingAidDevice leftMixedVolumeSteps](self, "leftMixedVolumeSteps")}];
      v31 = MEMORY[0x1E696AD98];
      rightMicrophoneVolumeSteps = [(AXRemoteHearingAidDevice *)self rightMixedVolumeSteps];
LABEL_106:
      v39 = [v31 numberWithShort:rightMicrophoneVolumeSteps];
      goto LABEL_107;
    }

    if (property <= 0x3FFFFFFFFFFLL)
    {
      if (property != 0x10000000000)
      {
        if (property != 0x20000000000)
        {
          goto LABEL_114;
        }

        model = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXRemoteHearingAidDevice deviceProtocol](self, "deviceProtocol")}];
        goto LABEL_113;
      }

      v47 = MEMORY[0x1E696AD98];
      availableInputEars = [(AXRemoteHearingAidDevice *)self availableInputEars];
    }

    else
    {
      if (property != 0x40000000000)
      {
        if (property != 0x80000000000)
        {
          if (property != 0x100000000000)
          {
            goto LABEL_114;
          }

          leftSelectedStreamingProgram = [MEMORY[0x1E695DF70] array];
          leftPeripheralUUID = [(AXRemoteHearingAidDevice *)self leftPeripheralUUID];
          if (leftPeripheralUUID)
          {
            leftPeripheralUUID2 = [(AXRemoteHearingAidDevice *)self leftPeripheralUUID];
            [leftSelectedStreamingProgram addObject:leftPeripheralUUID2];
          }

          else
          {
            [leftSelectedStreamingProgram addObject:&stru_1F5614A78];
          }

          rightPeripheralUUID = [(AXRemoteHearingAidDevice *)self rightPeripheralUUID];
          if (rightPeripheralUUID)
          {
            rightPeripheralUUID2 = [(AXRemoteHearingAidDevice *)self rightPeripheralUUID];
            goto LABEL_130;
          }

          goto LABEL_131;
        }

        v74[0] = &unk_1F5623F20;
        leftSelectedStreamingProgram = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresCombinedPresets](self, "requiresCombinedPresets")}];
        v74[1] = leftSelectedStreamingProgram;
        model2 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes")}];
        v74[2] = model2;
        v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXRemoteHearingAidDevice requiresBinauralStreaming](self, "requiresBinauralStreaming")}];
        v74[3] = v26;
        v27 = MEMORY[0x1E695DEC8];
        v28 = v74;
        goto LABEL_102;
      }

      v47 = MEMORY[0x1E696AD98];
      availableInputEars = [(AXRemoteHearingAidDevice *)self earsSupportingWatch];
    }

    v19 = availableInputEars;
    v20 = v47;
LABEL_112:
    model = [v20 numberWithUnsignedInt:v19];
    goto LABEL_113;
  }

  if (property > 4095)
  {
    if (property >= 0x100000)
    {
      if (property < 0x400000)
      {
        if (property != 0x100000)
        {
          if (property != 0x200000)
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

        model = [(AXRemoteHearingAidDevice *)self model];
      }

      else
      {
        if (property == 0x400000)
        {
          leftSelectedStreamingProgram = [MEMORY[0x1E695DF70] array];
          leftFirmwareVersion = [(AXRemoteHearingAidDevice *)self leftFirmwareVersion];
          if (leftFirmwareVersion)
          {
            leftFirmwareVersion2 = [(AXRemoteHearingAidDevice *)self leftFirmwareVersion];
            [leftSelectedStreamingProgram addObject:leftFirmwareVersion2];
          }

          else
          {
            [leftSelectedStreamingProgram addObject:&stru_1F5614A78];
          }

          rightPeripheralUUID = [(AXRemoteHearingAidDevice *)self rightFirmwareVersion];
          if (rightPeripheralUUID)
          {
            rightPeripheralUUID2 = [(AXRemoteHearingAidDevice *)self rightFirmwareVersion];
            goto LABEL_130;
          }

          goto LABEL_131;
        }

        if (property == 0x800000)
        {
          leftSelectedStreamingProgram = [MEMORY[0x1E695DF70] array];
          leftHardwareVersion = [(AXRemoteHearingAidDevice *)self leftHardwareVersion];
          if (leftHardwareVersion)
          {
            leftHardwareVersion2 = [(AXRemoteHearingAidDevice *)self leftHardwareVersion];
            [leftSelectedStreamingProgram addObject:leftHardwareVersion2];
          }

          else
          {
            [leftSelectedStreamingProgram addObject:&stru_1F5614A78];
          }

          rightPeripheralUUID = [(AXRemoteHearingAidDevice *)self rightHardwareVersion];
          if (rightPeripheralUUID)
          {
            rightPeripheralUUID2 = [(AXRemoteHearingAidDevice *)self rightHardwareVersion];
            goto LABEL_130;
          }

LABEL_131:
          [leftSelectedStreamingProgram addObject:&stru_1F5614A78];
          goto LABEL_132;
        }

        if (property != 0x1000000)
        {
          goto LABEL_114;
        }

        model = [(AXRemoteHearingAidDevice *)self deviceUUID];
      }

LABEL_113:
      v14 = model;
      goto LABEL_134;
    }

    if (property >= 0x40000)
    {
      if (property == 0x40000)
      {
        model = [(AXRemoteHearingAidDevice *)self name];
      }

      else
      {
        if (property != 0x80000)
        {
          goto LABEL_114;
        }

        model = [(AXRemoteHearingAidDevice *)self manufacturer];
      }

      goto LABEL_113;
    }

    if (property == 4096)
    {
LABEL_117:
      v14 = 0;
      goto LABEL_134;
    }

    if (property != 0x10000)
    {
LABEL_114:
      v59 = HCLogHearingAids();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        propertyCopy = property;
        _os_log_impl(&dword_1DA5E2000, v59, OS_LOG_TYPE_DEFAULT, "Unknown property: %ld", buf, 0xCu);
      }

      goto LABEL_117;
    }

    leftSelectedStreamingProgram = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_leftAvailableProperties];
    v75[0] = leftSelectedStreamingProgram;
    model2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rightAvailableProperties];
    v75[1] = model2;
    v22 = MEMORY[0x1E695DEC8];
    v23 = v75;
LABEL_86:
    v43 = [v22 arrayWithObjects:v23 count:2];
LABEL_97:
    v14 = v43;
LABEL_103:

    goto LABEL_133;
  }

  if (property <= 63)
  {
    if (property <= 15)
    {
      if (property != 4)
      {
        if (property != 8)
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

    if (property != 16 && property != 32)
    {
      goto LABEL_114;
    }

    leftSelectedStreamingProgram = [MEMORY[0x1E695DF70] array];
    leftUUID = [(AXRemoteHearingAidDevice *)self leftUUID];
    if (leftUUID)
    {
      leftUUID2 = [(AXRemoteHearingAidDevice *)self leftUUID];
      [leftSelectedStreamingProgram addObject:leftUUID2];
    }

    else
    {
      [leftSelectedStreamingProgram addObject:&stru_1F5614A78];
    }

    rightPeripheralUUID = [(AXRemoteHearingAidDevice *)self rightUUID];
    if (rightPeripheralUUID)
    {
      rightPeripheralUUID2 = [(AXRemoteHearingAidDevice *)self rightUUID];
LABEL_130:
      v62 = rightPeripheralUUID2;
      [leftSelectedStreamingProgram addObject:rightPeripheralUUID2];

LABEL_132:
      v14 = [MEMORY[0x1E695DEC8] arrayWithArray:leftSelectedStreamingProgram];
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  if (property <= 255)
  {
    if (property == 64)
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
      if (property != 128)
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

  if (property == 256)
  {
    array = [MEMORY[0x1E695DF70] array];
    leftPrograms = [(AXRemoteHearingAidDevice *)self leftPrograms];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke;
    v70[3] = &unk_1E85CAC60;
    v71 = array;
    leftSelectedStreamingProgram = array;
    [leftPrograms enumerateObjectsUsingBlock:v70];

    array2 = [MEMORY[0x1E695DF70] array];
    rightPrograms = [(AXRemoteHearingAidDevice *)self rightPrograms];
    v65 = MEMORY[0x1E69E9820];
    v66 = 3221225472;
    v67 = __46__AXRemoteHearingAidDevice__valueForProperty___block_invoke_2;
    v68 = &unk_1E85CAC60;
    v69 = array2;
    v55 = array2;
    [rightPrograms enumerateObjectsUsingBlock:&v65];

    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:{leftSelectedStreamingProgram, v55, 0, v65, v66, v67, v68}];

    goto LABEL_133;
  }

  if (property == 512)
  {
    v79[0] = &unk_1F5623ED8;
    leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self manufacturer];
    v79[1] = &unk_1F5623EF0;
    v80[0] = leftSelectedStreamingProgram;
    model2 = [(AXRemoteHearingAidDevice *)self model];
    v80[1] = model2;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
    goto LABEL_97;
  }

  if (property != 1024)
  {
    goto LABEL_114;
  }

  v5 = MEMORY[0x1E695DEC8];
  v6 = MEMORY[0x1E696AD98];
  leftSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self leftSelectedProgram];
  v8 = [v6 numberWithInt:{objc_msgSend(leftSelectedStreamingProgram, "index")}];
  v9 = MEMORY[0x1E696AD98];
  rightSelectedStreamingProgram = [(AXRemoteHearingAidDevice *)self rightSelectedProgram];
LABEL_16:
  v12 = rightSelectedStreamingProgram;
  v13 = [v9 numberWithInt:{objc_msgSend(rightSelectedStreamingProgram, "index")}];
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

- (id)valueForProperty:(unint64_t)property
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  for (i = 0; i != 64; ++i)
  {
    if (((1 << i) & property) != 0)
    {
      v7 = [(AXRemoteHearingAidDevice *)self _valueForProperty:1 << i];
      if (v7)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1 << i];
        [dictionary setObject:v7 forKey:v8];
      }
    }
  }

  if ([dictionary count] < 2)
  {
    if ([dictionary count] == 1)
    {
      allValues = [dictionary allValues];
      firstObject = [allValues firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  }

  return firstObject;
}

- (double)combinedVolumeForProperty:(unint64_t)property
{
  if (propertyContainsProperty(0x40800000C0, property))
  {
    v5 = [(AXRemoteHearingAidDevice *)self _valueForProperty:property];
    objc_opt_class();
    v6 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count] == 2)
    {
      firstObject = [v5 firstObject];
      [firstObject doubleValue];
      v9 = v8;

      lastObject = [v5 lastObject];
      [lastObject doubleValue];
      v12 = v11;

      leftAvailable = [(AXRemoteHearingAidDevice *)self leftAvailable];
      if (leftAvailable)
      {
        v14 = v9 + 0.0;
      }

      else
      {
        v14 = 0.0;
      }

      if (leftAvailable)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      rightAvailable = [(AXRemoteHearingAidDevice *)self rightAvailable];
      v17 = v15 + 1.0;
      v18 = v12 + v14;
      if (!rightAvailable)
      {
        v18 = v14;
        v17 = v15;
      }

      v6 = v18 / v17;
    }

LABEL_24:

    return v6;
  }

  if (property == 0x2000000000 || (v6 = 0.0, property == 0x1000000000))
  {
    v5 = [(AXRemoteHearingAidDevice *)self _valueForProperty:property];
    objc_opt_class();
    v6 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count] == 2)
    {
      firstObject2 = [v5 firstObject];
      charValue = [firstObject2 charValue];

      lastObject2 = [v5 lastObject];
      charValue2 = [lastObject2 charValue];

      if (charValue != charValue2 && charValue == 0)
      {
        v24 = charValue2;
      }

      else
      {
        v24 = charValue;
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
  name = [(AXRemoteHearingAidDevice *)self name];
  manufacturer = [(AXRemoteHearingAidDevice *)self manufacturer];
  model = [(AXRemoteHearingAidDevice *)self model];
  availableEars = [(AXRemoteHearingAidDevice *)self availableEars];
  deviceUUID = [(AXRemoteHearingAidDevice *)self deviceUUID];
  v9 = [v3 stringWithFormat:@"AXRemoteHearingAidDevice:%p:[%@] [%@, %@] [%d] {%@}", self, name, manufacturer, model, availableEars, deviceUUID];

  return v9;
}

- (AXHARemoteUpdateProtocol)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

@end