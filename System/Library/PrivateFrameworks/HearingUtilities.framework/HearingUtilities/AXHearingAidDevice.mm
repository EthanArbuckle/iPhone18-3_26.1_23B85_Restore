@interface AXHearingAidDevice
+ (id)characteristicsUUIDs;
+ (id)deviceIDFromLeftID:(id)d andRightID:(id)iD;
- (AXHearingAidDevice)initWithLeftDevice:(id)device andRightDevice:(id)rightDevice;
- (AXHearingAidDevice)initWithPeripheral:(id)peripheral;
- (AXHearingAidDevice)initWithPersistentRepresentation:(id)representation;
- (BOOL)addPeripheral:(id)peripheral;
- (BOOL)addPeripheral:(id)peripheral asLeft:(BOOL)left;
- (BOOL)containsPeripheralWithUUID:(id)d;
- (BOOL)deviceSupportsProperty:(unint64_t)property;
- (BOOL)didLoadBasicProperties;
- (BOOL)didLoadOptionalBasicProperties;
- (BOOL)didLoadPersistentProperties;
- (BOOL)didLoadRequiredProperties;
- (BOOL)hasConnection;
- (BOOL)isAnyPeripheralInConnectingState;
- (BOOL)isConnected;
- (BOOL)isLeftConnected;
- (BOOL)isRightConnected;
- (BOOL)leftAvailable;
- (BOOL)peripheral:(id)peripheral didLoadProperty:(unint64_t)property;
- (BOOL)rightAvailable;
- (NSNumber)RSSI;
- (NSString)description;
- (NSString)deviceUUID;
- (char)signedValueForProperty:(unint64_t)property andPeripheral:(id)peripheral;
- (id)descriptionForCBPeripheralState:(int64_t)state;
- (id)deviceDescription;
- (id)discoveringServiceUUIDs;
- (id)peripheral:(id)peripheral characteristicForProperty:(unint64_t)property;
- (id)peripheral:(id)peripheral characteristicForUUID:(id)d;
- (id)persistentRepresentation;
- (id)programs;
- (id)selectedProgramIndexes;
- (id)selectedPrograms;
- (id)serviceTypeDescription;
- (id)valueForProperty:(unint64_t)property;
- (int)connectedEars;
- (unint64_t)availablePropertiesForPeripheral:(id)peripheral;
- (unint64_t)propertyForCharacteristic:(id)characteristic;
- (unsigned)volumeValueForProperty:(unint64_t)property andPeripheral:(id)peripheral;
- (void)_init;
- (void)_initCharacteristicsForPeripheral:(id)peripheral;
- (void)_sendDelayedWrites;
- (void)checkPairingStatusWithCompletion:(id)completion;
- (void)connect;
- (void)connectionDidChange;
- (void)dealloc;
- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral;
- (void)didAddPeripheral:(id)peripheral;
- (void)disconnectAndUnpair:(BOOL)unpair;
- (void)loadBasicProperties;
- (void)loadFailedProperties;
- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period;
- (void)loadRequiredProperties;
- (void)mateWithDevice:(id)device;
- (void)pairingDidCompleteForPeripheral:(id)peripheral;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didInvalidateServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error;
- (void)peripheral:(id)peripheral didUpdateCharacteristic:(id)characteristic;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralDidUnpair:(id)unpair;
- (void)peripheralDidUpdateName:(id)name;
- (void)readProperty:(unint64_t)property fromPeripheral:(id)peripheral;
- (void)readValueForCharacteristic:(id)characteristic fromPeripheral:(id)peripheral;
- (void)selectProgram:(id)program forEar:(int)ear;
- (void)setBass:(char)bass forLeft:(BOOL)left;
- (void)setLeftMicrophoneVolume:(double)volume;
- (void)setLeftSensitivity:(double)sensitivity;
- (void)setLeftStreamVolume:(double)volume;
- (void)setMixedVolume:(double)volume forLeft:(BOOL)left;
- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral;
- (void)setRightMicrophoneVolume:(double)volume;
- (void)setRightSensitivity:(double)sensitivity;
- (void)setRightStreamVolume:(double)volume;
- (void)setTreble:(char)treble forLeft:(BOOL)left;
- (void)setValue:(id)value forProperty:(unint64_t)property;
- (void)swapPeripheral:(id)peripheral toEar:(int)ear;
- (void)updateBatteryServiceForPeripheral:(id)peripheral;
- (void)updateInputTagsAndReset:(BOOL)reset;
- (void)updateName;
- (void)watchWristOrientationDidChange:(id)change;
- (void)writeInt:(unsigned __int8)int toEar:(int)ear forProperty:(unint64_t)property;
- (void)writeSignedInt:(char)int toEar:(int)ear forProperty:(unint64_t)property;
- (void)writeValueForProperty:(unint64_t)property;
@end

@implementation AXHearingAidDevice

+ (id)characteristicsUUIDs
{
  v3 = characteristicsUUIDs_CharacteristicsUUIDs;
  if (characteristicsUUIDs_CharacteristicsUUIDs)
  {
  }

  else
  {
    v21 = objc_alloc(MEMORY[0x1E695DF20]);
    v59 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x24E1DFF3-AE90-41BF-BFBD-2CF8DF42BF87"];
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:4];
    v57 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x8D17AC2F-1D54-4742-A49A-EF4B20784EB3"];
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:8];
    v55 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xC97D21D3-D79D-4DF8-9230-BB33FA805F4E"];
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:16];
    v53 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x497EEB9E-B194-4F35-BC82-36FD300482A6"];
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:32];
    v51 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xF3F594F9-E210-48F3-85E2-4B0CF235A9D3"];
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:64];
    v49 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x6AC46200-24EA-46D8-A136-81133C65840A"];
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:128];
    v47 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x21FF4275-C41D-4486-A0E3-DC11138BCDE6"];
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
    v45 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xA391C6F1-20BB-495A-ABBF-2017098FBC61"];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1024];
    v43 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xA28B6BE1-2FA4-42F8-AEB2-B15A1DBD837A"];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:4096];
    v38 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x7BE94A55-8D91-4592-BC0F-EA3664CCD3A9"];
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000];
    v41 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x9C12A3DB-9CE8-4865-A217-D394B3BC9311"];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000];
    v35 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xADC3023D-BFD2-43FD-86F6-7AE05A619092"];
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x20000];
    v31 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x16438C66-E95A-4C6F-8117-A6B745BD86FC"];
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x10000000];
    v34 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xAEA12A32-60ED-43BA-BE6F-BA6092000FDB"];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000000];
    v33 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xEAF6FB18-090C-4EF7-AAB8-06518E16D502"];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x80000000];
    v32 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x76B3DB1F-44C4-46CC-A7B5-E9CE7DFBEF50"];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x100000000];
    v29 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x98924A39-6559-40A8-B302-3C8E40DBF834"];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x200000000];
    v28 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x066E7E7F-93E9-4D26-89AC-AECCDBAFA825"];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x400000000];
    v27 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x4656D3AC-C2DF-4096-96E7-713580B69CCD"];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x800000000];
    v25 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xF6E6AC8D-248E-433F-BC2C-E51E47DF3ECA"];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x1000000000];
    v23 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xC60E7C73-203B-4B7C-AFC5-2FE79C5F2F01"];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x2000000000];
    v16 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x4603580D-3C15-4FEC-93BE-B86B243ADA64"];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x4000000000];
    v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xE893C687-7C43-4999-8FD0-6CB11D0F88CD"];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000000000];
    v6 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x61D1B37D-94D5-4281-A88F-9B67F8F96314"];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x10000000000];
    v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0xCE9CDC7E-7D7A-4135-9F3F-CA1E2EB2C8D5"];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x40000000000];
    v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"0x8E750BB1-40C1-48DF-B450-97F245C57E0C"];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x80000000000];
    v11 = [v21 initWithObjectsAndKeys:{v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v38, v40, v41, v39, v35, v37, v31, v36, v34, v20, v33, v19, v32, v30, v29, v18, v28, v17, v27, v26, v25, v24, v23, v22, v16, v15, v5, v14, v6, v13, v7, v8, v9, v10, 0}];
    v12 = characteristicsUUIDs_CharacteristicsUUIDs;
    characteristicsUUIDs_CharacteristicsUUIDs = v11;

    v3 = characteristicsUUIDs_CharacteristicsUUIDs;
  }

  return v3;
}

+ (id)deviceIDFromLeftID:(id)d andRightID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([dCopy length])
  {
    if ([iDCopy length])
    {
      iDCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", dCopy, iDCopy];
    }

    else
    {
      iDCopy = dCopy;
    }
  }

  else
  {
    iDCopy = iDCopy;
  }

  v8 = iDCopy;

  return v8;
}

- (void)_init
{
  v3 = MEMORY[0x1E695E0F0];
  [(AXHearingAidDevice *)self setRightPrograms:MEMORY[0x1E695E0F0]];
  [(AXHearingAidDevice *)self setLeftPrograms:v3];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(AXHearingAidDevice *)self setLeftPropertiesLoadCount:dictionary];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [(AXHearingAidDevice *)self setRightPropertiesLoadCount:dictionary2];

  [(AXHearingAidDevice *)self setCurrentLeftProgram:0];
  [(AXHearingAidDevice *)self setCurrentRightProgram:0];
  [(AXHearingAidDevice *)self setCurrentLeftStreamingProgram:0];
  [(AXHearingAidDevice *)self setCurrentRightStreamingProgram:0];
  v6 = hearingLocString(@"HearingAidLabel");
  [(AXHearingAidDevice *)self setName:v6];

  v7 = [MEMORY[0x1E695DF70] arrayWithObjects:{&stru_1F5614A78, &stru_1F5614A78, 0}];
  [(AXHearingAidDevice *)self setManufacturer:v7];

  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{&stru_1F5614A78, &stru_1F5614A78, 0}];
  [(AXHearingAidDevice *)self setModel:v8];

  [(AXHearingAidDevice *)self setSupportsBinauralStreaming:1];
  [(AXHearingAidDevice *)self setSupportsCombinedPresets:1];
  [(AXHearingAidDevice *)self setSupportsCombinedVolumes:1];
  [(AXHearingAidDevice *)self setRequiresCombinedPresets:0];
  [(AXHearingAidDevice *)self setRequiresCombinedVolumes:0];
  [(AXHearingAidDevice *)self setRequiresBinauralStreaming:0];
  [(AXHearingAidDevice *)self setLeftMicrophoneVolumeSteps:1];
  [(AXHearingAidDevice *)self setLeftSensitivitySteps:1];
  [(AXHearingAidDevice *)self setLeftStreamVolumeSteps:1];
  [(AXHearingAidDevice *)self setLeftMixedVolumeSteps:1];
  [(AXHearingAidDevice *)self setRightMicrophoneVolumeSteps:1];
  [(AXHearingAidDevice *)self setRightSensitivitySteps:1];
  [(AXHearingAidDevice *)self setRightStreamVolumeSteps:1];
  [(AXHearingAidDevice *)self setRightMixedVolumeSteps:1];
  [(AXHearingAidDevice *)self setLeftLeaVersion:1];
  [(AXHearingAidDevice *)self setRightLeaVersion:1];
  v9 = +[HUHearingAidSettings sharedInstance];
  -[AXHearingAidDevice setAvailableInputEars:](self, "setAvailableInputEars:", [v9 availableInputEars]);

  if ([MEMORY[0x1E69A4560] isInternalInstall])
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  [(AXHearingAidDevice *)self setEarsSupportingWatch:v10];
  v11 = objc_alloc_init(MEMORY[0x1E6988780]);
  propertyWriteTimer = self->_propertyWriteTimer;
  self->_propertyWriteTimer = v11;

  v13 = self->_propertyWriteTimer;

  [(AXDispatchTimer *)v13 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
}

- (void)_initCharacteristicsForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  services = [peripheralCopy services];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AXHearingAidDevice__initCharacteristicsForPeripheral___block_invoke;
  v7[3] = &unk_1E85CA9F0;
  v7[4] = self;
  v8 = peripheralCopy;
  v6 = peripheralCopy;
  [services enumerateObjectsUsingBlock:v7];
}

void __56__AXHearingAidDevice__initCharacteristicsForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AXHearingAidDevice__initCharacteristicsForPeripheral___block_invoke_2;
  v5[3] = &unk_1E85CA9C8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

- (AXHearingAidDevice)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v11.receiver = self;
  v11.super_class = AXHearingAidDevice;
  v5 = [(AXHearingAidDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(AXHearingAidDevice *)v5 _init];
    [peripheralCopy setDelegate:v6];
    if (peripheralCopy)
    {
      [(AXHearingAidDevice *)v6 setLeftPeripheral:peripheralCopy];
      identifier = [peripheralCopy identifier];

      if (identifier)
      {
        identifier2 = [peripheralCopy identifier];
        uUIDString = [identifier2 UUIDString];

        [(AXHearingAidDevice *)v6 setLeftPeripheralUUID:uUIDString];
      }
    }

    [(AXHearingAidDevice *)v6 updateName];
    [(AXHearingAidDevice *)v6 _initCharacteristicsForPeripheral:peripheralCopy];
  }

  return v6;
}

- (AXHearingAidDevice)initWithPersistentRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = AXHearingAidDevice;
  v5 = [(AXHearingAidDevice *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(AXHearingAidDevice *)v5 _init];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__AXHearingAidDevice_initWithPersistentRepresentation___block_invoke;
    v9[3] = &unk_1E85CA558;
    v7 = v6;
    v10 = v7;
    [representationCopy enumerateKeysAndObjectsUsingBlock:v9];
    [(AXHearingAidDevice *)v7 setIsPersistent:1];
    [(AXHearingAidDevice *)v7 setIsPaired:1];
  }

  return v6;
}

void __55__AXHearingAidDevice_initWithPersistentRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  if ([v22 isEqualToString:@"ax_hearing_device_man_key"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
    {
      v6 = [*(a1 + 32) manufacturer];
LABEL_9:
      v7 = v6;
      [v6 replaceObjectAtIndex:0 withObject:v5];
LABEL_18:

      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = [*(a1 + 32) manufacturer];
    goto LABEL_17;
  }

  if ([v22 isEqualToString:@"ax_hearing_device_model_key"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
    {
      v6 = [*(a1 + 32) model];
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = [*(a1 + 32) model];
LABEL_17:
    v7 = v8;
    [v8 setArray:v5];
    goto LABEL_18;
  }

  if ([v22 isEqualToString:@"ax_hearing_device_man_model_key"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 32);
    v10 = [&unk_1F5623B00 stringValue];
    v11 = [v5 objectForKey:v10];
    [v9 setValue:v11 forProperty:0x80000];

    v12 = *(a1 + 32);
    v13 = [&unk_1F5623B18 stringValue];
    v14 = [v5 objectForKey:v13];
    [v12 setValue:v14 forProperty:0x100000];
    goto LABEL_51;
  }

  if ([v22 isEqualToString:@"ax_hearing_device_name_key"] && objc_msgSend(v5, "length"))
  {
    [*(a1 + 32) setName:v5];
    goto LABEL_19;
  }

  if (![v22 isEqualToString:@"ax_hearing_device_lr_key"])
  {
    if (([v22 isEqualToString:@"ax_hearing_device_left_peripheral_key"] & 1) == 0 && !objc_msgSend(v22, "isEqualToString:", @"ax_hearing_device_right_peripheral_key"))
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v16 = [v5 objectForKey:@"ax_hearing_device_isleft_key"];
    v17 = [v16 BOOLValue];

    v13 = [v5 objectForKey:@"ax_hearing_device_hiid_key"];
    v14 = [v5 objectForKey:@"ax_hearing_device_hiidother_key"];
    v18 = [v5 objectForKey:@"ax_hearing_device_uuid_key"];
    v19 = [v5 objectForKey:@"ax_hearing_device_lea_version_key"];
    v20 = [v19 intValue];

    if ([v18 length])
    {
      v21 = [v18 hasPrefix:*MEMORY[0x1E69A4538]];
      if (v17)
      {
        if ((v21 & 1) == 0)
        {
          [*(a1 + 32) setLeftPeripheralUUID:v18];
        }

        if ([v13 length])
        {
          [*(a1 + 32) setLeftUUID:v13];
        }

        if ([v14 length])
        {
          [*(a1 + 32) setRightUUID:v14];
        }

        if (v20)
        {
          [*(a1 + 32) setLeftLeaVersion:v20];
        }
      }

      else
      {
        if ((v21 & 1) == 0)
        {
          [*(a1 + 32) setRightPeripheralUUID:v18];
        }

        if ([v14 length])
        {
          [*(a1 + 32) setLeftUUID:v14];
        }

        if ([v13 length])
        {
          [*(a1 + 32) setRightUUID:v13];
        }

        if (v20)
        {
          [*(a1 + 32) setRightLeaVersion:v20];
        }
      }
    }

LABEL_51:
    goto LABEL_19;
  }

  v15 = [v5 intValue];
  if (v15 <= 6 && ((1 << v15) & 0x54) != 0)
  {
    [*(a1 + 32) setAvailableEars:v15];
  }

LABEL_19:
}

- (AXHearingAidDevice)initWithLeftDevice:(id)device andRightDevice:(id)rightDevice
{
  v80 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rightDeviceCopy = rightDevice;
  v73.receiver = self;
  v73.super_class = AXHearingAidDevice;
  v8 = [(AXHearingAidDevice *)&v73 init];
  v9 = v8;
  if (v8)
  {
    [(AXHearingAidDevice *)v8 _init];
    leftUUID = [deviceCopy leftUUID];
    [(AXHearingAidDevice *)v9 setLeftUUID:leftUUID];

    leftPeripheral = [deviceCopy leftPeripheral];
    [(AXHearingAidDevice *)v9 setLeftPeripheral:leftPeripheral];

    leftPeripheral2 = [(AXHearingAidDevice *)v9 leftPeripheral];
    [leftPeripheral2 setDelegate:v9];

    [deviceCopy leftMicrophoneVolume];
    [(AXHearingAidDevice *)v9 setLeftMicrophoneVolume:?];
    [deviceCopy leftBatteryLevel];
    [(AXHearingAidDevice *)v9 setLeftBatteryLevel:?];
    leftPrograms = [deviceCopy leftPrograms];
    [(AXHearingAidDevice *)v9 setLeftPrograms:leftPrograms];

    currentLeftProgram = [deviceCopy currentLeftProgram];
    [(AXHearingAidDevice *)v9 setCurrentLeftProgram:currentLeftProgram];

    -[AXHearingAidDevice setLeftLoadedProperties:](v9, "setLeftLoadedProperties:", [deviceCopy leftLoadedProperties]);
    -[AXHearingAidDevice setLeftStreamVolumeSteps:](v9, "setLeftStreamVolumeSteps:", [deviceCopy leftStreamVolumeSteps]);
    -[AXHearingAidDevice setLeftSensitivitySteps:](v9, "setLeftSensitivitySteps:", [deviceCopy leftSensitivitySteps]);
    [deviceCopy leftSensitivity];
    [(AXHearingAidDevice *)v9 setLeftSensitivity:?];
    -[AXHearingAidDevice setLeftMicrophoneVolumeSteps:](v9, "setLeftMicrophoneVolumeSteps:", [deviceCopy leftMicrophoneVolumeSteps]);
    -[AXHearingAidDevice setLeftTreble:](v9, "setLeftTreble:", [deviceCopy leftTreble]);
    -[AXHearingAidDevice setLeftBass:](v9, "setLeftBass:", [deviceCopy leftBass]);
    [deviceCopy leftMixedVolume];
    [(AXHearingAidDevice *)v9 setLeftMixedVolume:?];
    -[AXHearingAidDevice setLeftMixedVolumeSteps:](v9, "setLeftMixedVolumeSteps:", [deviceCopy leftMixedVolumeSteps]);
    [deviceCopy setLeftPeripheral:0];
    [deviceCopy setLeftPeripheralUUID:0];
    [deviceCopy setLeftUUID:0];
    [deviceCopy setRightPeripheral:0];
    [deviceCopy setRightPeripheralUUID:0];
    [deviceCopy setRightUUID:0];
    -[AXHearingAidDevice setLeftLeaVersion:](v9, "setLeftLeaVersion:", [deviceCopy leftLeaVersion]);
    rightUUID = [rightDeviceCopy rightUUID];
    [(AXHearingAidDevice *)v9 setRightUUID:rightUUID];

    rightPeripheral = [rightDeviceCopy rightPeripheral];
    [(AXHearingAidDevice *)v9 setRightPeripheral:rightPeripheral];

    rightPeripheral2 = [(AXHearingAidDevice *)v9 rightPeripheral];
    [rightPeripheral2 setDelegate:v9];

    [rightDeviceCopy rightMicrophoneVolume];
    [(AXHearingAidDevice *)v9 setRightMicrophoneVolume:?];
    [rightDeviceCopy rightBatteryLevel];
    [(AXHearingAidDevice *)v9 setRightBatteryLevel:?];
    rightPrograms = [rightDeviceCopy rightPrograms];
    [(AXHearingAidDevice *)v9 setRightPrograms:rightPrograms];

    currentRightProgram = [rightDeviceCopy currentRightProgram];
    [(AXHearingAidDevice *)v9 setCurrentRightProgram:currentRightProgram];

    -[AXHearingAidDevice setRightLoadedProperties:](v9, "setRightLoadedProperties:", [rightDeviceCopy rightLoadedProperties]);
    -[AXHearingAidDevice setRightStreamVolumeSteps:](v9, "setRightStreamVolumeSteps:", [rightDeviceCopy rightStreamVolumeSteps]);
    -[AXHearingAidDevice setRightSensitivitySteps:](v9, "setRightSensitivitySteps:", [rightDeviceCopy rightSensitivitySteps]);
    [rightDeviceCopy rightSensitivity];
    [(AXHearingAidDevice *)v9 setRightSensitivity:?];
    -[AXHearingAidDevice setRightMicrophoneVolumeSteps:](v9, "setRightMicrophoneVolumeSteps:", [rightDeviceCopy rightMicrophoneVolumeSteps]);
    -[AXHearingAidDevice setRightTreble:](v9, "setRightTreble:", [rightDeviceCopy rightTreble]);
    -[AXHearingAidDevice setRightBass:](v9, "setRightBass:", [rightDeviceCopy rightBass]);
    [rightDeviceCopy rightMixedVolume];
    [(AXHearingAidDevice *)v9 setRightMixedVolume:?];
    -[AXHearingAidDevice setRightMixedVolumeSteps:](v9, "setRightMixedVolumeSteps:", [rightDeviceCopy rightMixedVolumeSteps]);
    [rightDeviceCopy setRightPeripheral:0];
    [rightDeviceCopy setRightPeripheralUUID:0];
    [rightDeviceCopy setRightUUID:0];
    [rightDeviceCopy setLeftPeripheral:0];
    [rightDeviceCopy setLeftPeripheralUUID:0];
    [rightDeviceCopy setLeftUUID:0];
    -[AXHearingAidDevice setRightLeaVersion:](v9, "setRightLeaVersion:", [rightDeviceCopy rightLeaVersion]);
    currentRightStreamingProgram = [rightDeviceCopy currentRightStreamingProgram];
    [(AXHearingAidDevice *)v9 setCurrentRightStreamingProgram:currentRightStreamingProgram];

    currentLeftStreamingProgram = [deviceCopy currentLeftStreamingProgram];
    [(AXHearingAidDevice *)v9 setCurrentLeftStreamingProgram:currentLeftStreamingProgram];

    -[AXHearingAidDevice setLeftLoadedProperties:](v9, "setLeftLoadedProperties:", [deviceCopy leftLoadedProperties] | 0x20);
    -[AXHearingAidDevice setRightLoadedProperties:](v9, "setRightLoadedProperties:", [rightDeviceCopy rightLoadedProperties] | 0x20);
    if ([deviceCopy isPaired])
    {
      isPaired = 1;
    }

    else
    {
      isPaired = [rightDeviceCopy isPaired];
    }

    [(AXHearingAidDevice *)v9 setIsPaired:isPaired];
    if ([deviceCopy isPersistent])
    {
      isPersistent = 1;
    }

    else
    {
      isPersistent = [rightDeviceCopy isPersistent];
    }

    [(AXHearingAidDevice *)v9 setIsPersistent:isPersistent];
    if ([deviceCopy supportsBinauralStreaming])
    {
      supportsBinauralStreaming = [rightDeviceCopy supportsBinauralStreaming];
    }

    else
    {
      supportsBinauralStreaming = 0;
    }

    [(AXHearingAidDevice *)v9 setSupportsBinauralStreaming:supportsBinauralStreaming];
    if ([deviceCopy supportsCombinedPresets])
    {
      supportsCombinedPresets = [rightDeviceCopy supportsCombinedPresets];
    }

    else
    {
      supportsCombinedPresets = 0;
    }

    [(AXHearingAidDevice *)v9 setSupportsCombinedPresets:supportsCombinedPresets];
    if ([deviceCopy supportsCombinedVolumes])
    {
      supportsCombinedVolumes = [rightDeviceCopy supportsCombinedVolumes];
    }

    else
    {
      supportsCombinedVolumes = 0;
    }

    [(AXHearingAidDevice *)v9 setSupportsCombinedVolumes:supportsCombinedVolumes];
    if ([deviceCopy requiresBinauralStreaming])
    {
      requiresBinauralStreaming = 1;
    }

    else
    {
      requiresBinauralStreaming = [rightDeviceCopy requiresBinauralStreaming];
    }

    [(AXHearingAidDevice *)v9 setRequiresBinauralStreaming:requiresBinauralStreaming];
    if ([deviceCopy requiresCombinedPresets])
    {
      requiresCombinedPresets = [rightDeviceCopy requiresCombinedPresets];
    }

    else
    {
      requiresCombinedPresets = 0;
    }

    [(AXHearingAidDevice *)v9 setRequiresCombinedPresets:requiresCombinedPresets];
    if ([deviceCopy requiresCombinedVolumes])
    {
      requiresCombinedVolumes = [rightDeviceCopy requiresCombinedVolumes];
    }

    else
    {
      requiresCombinedVolumes = 0;
    }

    [(AXHearingAidDevice *)v9 setRequiresCombinedVolumes:requiresCombinedVolumes];
    v30 = MEMORY[0x1E695DF70];
    manufacturer = [deviceCopy manufacturer];
    firstObject = [manufacturer firstObject];
    manufacturer2 = [rightDeviceCopy manufacturer];
    lastObject = [manufacturer2 lastObject];
    v35 = [v30 arrayWithObjects:{firstObject, lastObject, 0}];
    [(AXHearingAidDevice *)v9 setManufacturer:v35];

    v36 = MEMORY[0x1E695DF70];
    model = [deviceCopy model];
    firstObject2 = [model firstObject];
    model2 = [rightDeviceCopy model];
    lastObject2 = [model2 lastObject];
    v41 = [v36 arrayWithObjects:{firstObject2, lastObject2, 0}];
    [(AXHearingAidDevice *)v9 setModel:v41];

    name = [rightDeviceCopy name];
    [(AXHearingAidDevice *)v9 setName:name];

    leftPeripheral3 = [(AXHearingAidDevice *)v9 leftPeripheral];
    identifier = [leftPeripheral3 identifier];
    uUIDString = [identifier UUIDString];

    [(AXHearingAidDevice *)v9 setLeftPeripheralUUID:uUIDString];
    if (!uUIDString)
    {
      v46 = HCLogHearingAids();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v75 = v9;
        _os_log_impl(&dword_1DA5E2000, v46, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: init with Left&Right devices, Missing left peripheral UUID %@", buf, 0xCu);
      }
    }

    rightPeripheral3 = [(AXHearingAidDevice *)v9 rightPeripheral];
    identifier2 = [rightPeripheral3 identifier];
    uUIDString2 = [identifier2 UUIDString];

    [(AXHearingAidDevice *)v9 setRightPeripheralUUID:uUIDString2];
    if (!uUIDString2)
    {
      v50 = HCLogHearingAids();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v75 = v9;
        _os_log_impl(&dword_1DA5E2000, v50, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: init with Left&Right devices, Missing right peripheral UUID %@", buf, 0xCu);
      }
    }

    -[AXHearingAidDevice setLeftLoadedProperties:](v9, "setLeftLoadedProperties:", [deviceCopy leftLoadedProperties] | 0x100000000000);
    -[AXHearingAidDevice setRightLoadedProperties:](v9, "setRightLoadedProperties:", [rightDeviceCopy rightLoadedProperties] | 0x100000000000);
    if ([(AXHearingAidDevice *)v9 leftAvailable])
    {
      v51 = 2;
    }

    else
    {
      v51 = 0;
    }

    if ([(AXHearingAidDevice *)v9 rightAvailable])
    {
      v52 = v51 | 4;
    }

    else
    {
      v52 = v51;
    }

    [(AXHearingAidDevice *)v9 setAvailableEars:v52];
    -[AXHearingAidDevice setAvailableInputEars:](v9, "setAvailableInputEars:", [rightDeviceCopy availableInputEars] | objc_msgSend(deviceCopy, "availableInputEars"));
    if ([MEMORY[0x1E69A4560] isInternalInstall])
    {
      v53 = 6;
    }

    else
    {
      earsSupportingWatch = [deviceCopy earsSupportingWatch];
      v53 = [rightDeviceCopy earsSupportingWatch] | earsSupportingWatch;
    }

    [(AXHearingAidDevice *)v9 setEarsSupportingWatch:v53];
    v55 = +[HUHearingAidSettings sharedInstance];
    [v55 setAvailableInputEars:{-[AXHearingAidDevice availableInputEars](v9, "availableInputEars")}];

    v56 = +[HANanoSettings sharedInstance];
    [v56 setAvailableInputEars:{-[AXHearingAidDevice availableInputEars](v9, "availableInputEars")}];

    v57 = +[HUHearingAidSettings sharedInstance];
    [v57 setEarsSupportingWatch:{-[AXHearingAidDevice earsSupportingWatch](v9, "earsSupportingWatch")}];

    v58 = +[HANanoSettings sharedInstance];
    [v58 setEarsSupportingWatch:{-[AXHearingAidDevice earsSupportingWatch](v9, "earsSupportingWatch")}];

    leftPeripheral4 = [(AXHearingAidDevice *)v9 leftPeripheral];
    deviceUUID = [(AXHearingAidDevice *)v9 deviceUUID];
    [leftPeripheral4 tag:deviceUUID];

    leftPeripheral5 = [(AXHearingAidDevice *)v9 leftPeripheral];
    [leftPeripheral5 tag:@"Left HA"];

    rightPeripheral4 = [(AXHearingAidDevice *)v9 rightPeripheral];
    deviceUUID2 = [(AXHearingAidDevice *)v9 deviceUUID];
    [rightPeripheral4 tag:deviceUUID2];

    rightPeripheral5 = [(AXHearingAidDevice *)v9 rightPeripheral];
    [rightPeripheral5 tag:@"Right HA"];

    v65 = +[HUHearingAidSettings sharedInstance];
    isiCloudPaired = [v65 isiCloudPaired];

    if (isiCloudPaired & 1) == 0 && (([deviceCopy isConnected] & 1) != 0 || (objc_msgSend(deviceCopy, "isPaired") & 1) != 0 || (objc_msgSend(rightDeviceCopy, "isConnected") & 1) != 0 || (objc_msgSend(rightDeviceCopy, "isPaired")))
    {
      v70 = HCLogHearingAids();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v75 = v9;
        _os_log_impl(&dword_1DA5E2000, v70, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: init with Left&Right devices, Connecting %@", buf, 0xCu);
      }

      [(AXHearingAidDevice *)v9 connect];
    }

    else
    {
      v67 = HCLogHearingAids();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        isPaired2 = [deviceCopy isPaired];
        isPaired3 = [rightDeviceCopy isPaired];
        *buf = 67109890;
        *v75 = isPaired2;
        *&v75[4] = 1024;
        *&v75[6] = isPaired3;
        v76 = 1024;
        v77 = isiCloudPaired;
        v78 = 2112;
        v79 = v9;
        _os_log_impl(&dword_1DA5E2000, v67, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: init with Left&Right devices, Paired [L:%d, R:%d, iCloudPaired: %d] Disconnecting %@", buf, 0x1Eu);
      }

      [(AXHearingAidDevice *)v9 disconnectAndUnpair:0];
    }

    if ([(AXHearingAidDevice *)v9 isPaired]&& [(AXHearingAidDevice *)v9 isPersistent]&& [(AXHearingAidDevice *)v9 isConnected]&& ![(AXHearingAidDevice *)v9 didLoadRequiredProperties])
    {
      [(AXHearingAidDevice *)v9 loadRequiredProperties];
    }

    [deviceCopy setIsPersistent:0];
    [deviceCopy setIsPaired:0];
    [rightDeviceCopy setIsPersistent:0];
    [rightDeviceCopy setIsPaired:0];
  }

  v71 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_rightPowerSourceID)
  {
    IOPSReleasePowerSource();
    self->_rightPowerSourceID = 0;
  }

  if (self->_leftPowerSourceID)
  {
    IOPSReleasePowerSource();
    self->_leftPowerSourceID = 0;
  }

  rightPowerSourceDictionary = self->_rightPowerSourceDictionary;
  self->_rightPowerSourceDictionary = 0;

  leftPowerSourceDictionary = self->_leftPowerSourceDictionary;
  self->_leftPowerSourceDictionary = 0;

  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: dealloc, Disconnecting %@", buf, 0xCu);
  }

  [(AXHearingAidDevice *)self disconnectAndUnpair:0];
  [(AXHearingAidDevice *)self setManufacturer:0];
  [(AXHearingAidDevice *)self setModel:0];
  [(AXHearingAidDevice *)self setLeftFirmwareVersion:0];
  [(AXHearingAidDevice *)self setRightFirmwareVersion:0];
  [(AXHearingAidDevice *)self setLeftHardwareVersion:0];
  [(AXHearingAidDevice *)self setRightHardwareVersion:0];
  [(AXHearingAidDevice *)self setRightPrograms:0];
  [(AXHearingAidDevice *)self setLeftPrograms:0];
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [leftPeripheral setDelegate:0];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [rightPeripheral setDelegate:0];

  [(AXHearingAidDevice *)self setLeftPropertiesLoadCount:0];
  [(AXHearingAidDevice *)self setRightPropertiesLoadCount:0];
  [(AXHearingAidDevice *)self setCurrentLeftProgram:0];
  [(AXHearingAidDevice *)self setCurrentRightProgram:0];
  [(AXHearingAidDevice *)self setCurrentLeftStreamingProgram:0];
  [(AXHearingAidDevice *)self setCurrentRightStreamingProgram:0];
  [(AXHearingAidDevice *)self setLeftBatteryLowDate:0];
  [(AXHearingAidDevice *)self setRightBatteryLowDate:0];
  v9.receiver = self;
  v9.super_class = AXHearingAidDevice;
  [(AXHearingAidDevice *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)connect
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDevice Connect\n%@", &v13, 0xCu);
  }

  if (![(AXHearingAidDevice *)self isConnected])
  {
    [(AXHearingAidDevice *)self setIsConnecting:1];
    v5 = +[HUHearingAidSettings sharedInstance];
    if ([v5 shouldStreamToLeftAid])
    {
      v6 = +[HUHearingAidSettings sharedInstance];
      if ([v6 shouldStreamToRightAid] && -[AXHearingAidDevice leftAvailable](self, "leftAvailable") && -[AXHearingAidDevice rightAvailable](self, "rightAvailable"))
      {
        v7 = supportsBinauralStreamingForHearingAid(self);

        if (v7)
        {
LABEL_17:
          v8 = +[AXHearingAidDeviceController sharedController];
          leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
          [v8 connectToPeripheral:leftPeripheral];

          v10 = +[AXHearingAidDeviceController sharedController];
          rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
          [v10 connectToPeripheral:rightPeripheral];

          goto LABEL_18;
        }

        v5 = +[HUHearingAidSettings sharedInstance];
        [v5 setShouldStreamToLeftAid:0];
      }

      else
      {
      }
    }

    goto LABEL_17;
  }

  if (![(AXHearingAidDevice *)self isPaired])
  {
    v4 = HCLogHearingHandoff();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Set isPaired to YES", &v13, 2u);
    }
  }

  [(AXHearingAidDevice *)self setIsPaired:1];
LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)disconnectAndUnpair:(BOOL)unpair
{
  unpairCopy = unpair;
  v26 = *MEMORY[0x1E69E9840];
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109378;
    v23[1] = unpairCopy;
    v24 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: disconnectAndUnpair %d\n%@", v23, 0x12u);
  }

  if (![(AXHearingAidDevice *)self isFakeDevice]&& !unpairCopy)
  {
    v6 = +[AXHearingAidDeviceController sharedController];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    [v6 disconnectFromPeripheral:leftPeripheral];

    v8 = +[AXHearingAidDeviceController sharedController];
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    [v8 disconnectFromPeripheral:rightPeripheral];
  }

  if (unpairCopy)
  {
    if (![(AXHearingAidDevice *)self isFakeDevice])
    {
      v10 = +[AXHearingAidDeviceController sharedController];
      leftPeripheralUUID = [(AXHearingAidDevice *)self leftPeripheralUUID];
      [v10 unpairPeripheralWithUUID:leftPeripheralUUID];

      v12 = +[AXHearingAidDeviceController sharedController];
      rightPeripheralUUID = [(AXHearingAidDevice *)self rightPeripheralUUID];
      [v12 unpairPeripheralWithUUID:rightPeripheralUUID];
    }

    if ([(AXHearingAidDevice *)self isPaired])
    {
      [(AXHearingAidDevice *)self setIsPaired:0];
      v14 = +[HUHearingAidSettings sharedInstance];
      [v14 setPairedHearingAids:0];
    }

    [(AXHearingAidDevice *)self setLeftPresetBitmask:0];
    [(AXHearingAidDevice *)self setRightPresetBitmask:0];
  }

  v15 = +[AXHearingAidDeviceController sharedController];
  [v15 device:self didUpdateProperty:606076928];

  [(AXHearingAidDevice *)self setIsConnecting:0];
  [(AXHearingAidDevice *)self setIsPersistent:0];
  array = [MEMORY[0x1E695DF70] array];
  [(AXHearingAidDevice *)self setRightPrograms:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [(AXHearingAidDevice *)self setLeftPrograms:array2];

  [(AXHearingAidDevice *)self setCurrentRightProgram:0];
  [(AXHearingAidDevice *)self setCurrentLeftProgram:0];
  [(AXHearingAidDevice *)self setCurrentRightStreamingProgram:0];
  [(AXHearingAidDevice *)self setCurrentLeftStreamingProgram:0];
  [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]& 0xFFFFFFFFFFFFFEFFLL];
  [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]& 0xFFFFFFFFFFFFFEFFLL];
  rightPropertiesLoadCount = [(AXHearingAidDevice *)self rightPropertiesLoadCount];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
  [rightPropertiesLoadCount removeObjectForKey:v19];

  leftPropertiesLoadCount = [(AXHearingAidDevice *)self leftPropertiesLoadCount];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
  [leftPropertiesLoadCount removeObjectForKey:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = HCLogHearingHandoff();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = [(AXHearingAidDevice *)self isConnecting];
    v18 = 1024;
    isConnected = [(AXHearingAidDevice *)self isConnected];
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: connectionDidChange, connecting %d, connected %d", &buf, 0xEu);
  }

  v4 = +[HUUtilities sharedUtilities];
  [v4 clearAudioRoutes];

  if ([(AXHearingAidDevice *)self isConnecting])
  {
    [(AXHearingAidDevice *)self setIsConnecting:0];
    [(AXHearingAidDevice *)self setIsPaired:1];
    [(AXHearingAidDevice *)self setIsPersistent:1];
    leftPropertiesLoadCount = [(AXHearingAidDevice *)self leftPropertiesLoadCount];
    [leftPropertiesLoadCount removeAllObjects];

    rightPropertiesLoadCount = [(AXHearingAidDevice *)self rightPropertiesLoadCount];
    [rightPropertiesLoadCount removeAllObjects];

    v7 = +[AXHearingAidDeviceController sharedController];
    [v7 device:self didUpdateProperty:0x100024200038];
  }

  if ([(AXHearingAidDevice *)self isConnected])
  {
    v8 = +[AXHearingAidDeviceController sharedController];
    [v8 device:self didUpdateProperty:0x200000];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__AXHearingAidDevice_connectionDidChange__block_invoke;
    v16[3] = &unk_1E85CAA18;
    v16[4] = self;
    [(AXHearingAidDevice *)self checkPairingStatusWithCompletion:v16];
  }

  else
  {
    self->_leftWriteResponseProperties = 0;
    self->_rightWriteResponseProperties = 0;
  }

  if (!self->_isListeningForStreamingChanges)
  {
    v9 = +[HUHearingAidSettings sharedInstance];
    objc_initWeak(&buf, self);
    [v9 shouldStreamToLeftAid];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__AXHearingAidDevice_connectionDidChange__block_invoke_148;
    v14[3] = &unk_1E85CAA40;
    v14[4] = self;
    objc_copyWeak(&v15, &buf);
    [v9 registerUpdateBlock:v14 forRetrieveSelector:sel_shouldStreamToLeftAid withListener:self];
    [v9 shouldStreamToRightAid];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__AXHearingAidDevice_connectionDidChange__block_invoke_152;
    v12[3] = &unk_1E85CAA40;
    v12[4] = self;
    objc_copyWeak(&v13, &buf);
    [v9 registerUpdateBlock:v12 forRetrieveSelector:sel_shouldStreamToRightAid withListener:self];
    [(AXHearingAidDevice *)self updateInputTagsAndReset:0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__AXHearingAidDevice_connectionDidChange__block_invoke_155;
    v11[3] = &unk_1E85C9F60;
    v11[4] = self;
    [v9 registerUpdateBlock:v11 forRetrieveSelector:sel_preferredInputEar withListener:self];
    self->_isListeningForStreamingChanges = 1;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&buf);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __41__AXHearingAidDevice_connectionDidChange__block_invoke(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isPaired])
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 pairedHearingAids];

    if (!v6)
    {
      if ([*(a1 + 32) leftAvailable])
      {
        v7 = [*(a1 + 32) leftPeripheral];
        v8 = [v7 identifier];

        if (v8)
        {
          v9 = [*(a1 + 32) leftPeripheral];
          v10 = [v9 identifier];
          v11 = [v10 UUIDString];

          [*(a1 + 32) setLeftPeripheralUUID:v11];
        }
      }

      if ([*(a1 + 32) rightAvailable])
      {
        v12 = [*(a1 + 32) rightPeripheral];
        v13 = [v12 identifier];

        if (v13)
        {
          v14 = [*(a1 + 32) rightPeripheral];
          v15 = [v14 identifier];
          v16 = [v15 UUIDString];

          [*(a1 + 32) setRightPeripheralUUID:v16];
        }
      }

      v17 = HCLogHearingAids();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) persistentRepresentation];
        v19 = *(a1 + 32);
        v33 = 138412546;
        v34 = v18;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: connectionDidChange, Confirmed Paired and BT paired: \nRepresentation %@\nDevice %@", &v33, 0x16u);
      }

      v20 = +[HUHearingAidSettings sharedInstance];
      v21 = [*(a1 + 32) persistentRepresentation];
      [v20 setPairedHearingAids:v21];
    }
  }

  [*(a1 + 32) updateName];
  v22 = *(a1 + 32);
  if (v22[60] == 1)
  {
    v23 = [*(a1 + 32) leftPeripheral];
    [v22 setNotify:1 forPeripheral:v23];

    v24 = *(a1 + 32);
    v25 = v24[60];
    v26 = [v24 rightPeripheral];
    [v24 setNotify:v25 forPeripheral:v26];

    [*(a1 + 32) setLeftLoadedProperties:{objc_msgSend(*(a1 + 32), "leftLoadedProperties") & 0xFFFFFF007FFEFA3BLL}];
    [*(a1 + 32) setRightLoadedProperties:{objc_msgSend(*(a1 + 32), "rightLoadedProperties") & 0xFFFFFF007FFEFA3BLL}];
    v27 = *(a1 + 32);
    v28 = [v27 leftPeripheral];
    [v27 loadProperties:0xFF800105C4 forPeripheral:v28 withRetryPeriod:0.0];

    v29 = *(a1 + 32);
    v30 = [v29 rightPeripheral];
    [v29 loadProperties:0xFF800105C4 forPeripheral:v30 withRetryPeriod:0.0];

    v22 = *(a1 + 32);
  }

  if (([v22 didLoadBasicProperties] & 1) == 0)
  {
    [*(a1 + 32) loadBasicProperties];
  }

  result = [*(a1 + 32) isPaired];
  if (result)
  {
    result = [*(a1 + 32) didLoadRequiredProperties];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) loadRequiredProperties];
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void __41__AXHearingAidDevice_connectionDidChange__block_invoke_148(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isPaired] && (+[HUHearingAidSettings sharedInstance](HUHearingAidSettings, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "pairedHearingAids"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    v5 = [v4 preferredInputEar];

    if (v5 == 2)
    {
      v6 = +[HUHearingAidSettings sharedInstance];
      [v6 setPreferredInputEar:6];
    }

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Updated shouldStreamToLeftAid, Resetting connection", &v13, 2u);
    }

    v8 = +[AXHearingAidDeviceController sharedController];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained leftPeripheral];
    [v8 resetConnectionToPeripheral:v10];
  }

  else
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Updated shouldStreamToLeftAid, Hearing aid isn't paired, but we're changing streaming prefs %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __41__AXHearingAidDevice_connectionDidChange__block_invoke_152(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isPaired] && (+[HUHearingAidSettings sharedInstance](HUHearingAidSettings, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "pairedHearingAids"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[HUHearingAidSettings sharedInstance];
    v5 = [v4 preferredInputEar];

    if (v5 == 4)
    {
      v6 = +[HUHearingAidSettings sharedInstance];
      [v6 setPreferredInputEar:6];
    }

    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Updated shouldStreamToRightAid, Resetting connection", &v13, 2u);
    }

    v8 = +[AXHearingAidDeviceController sharedController];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained rightPeripheral];
    [v8 resetConnectionToPeripheral:v10];
  }

  else
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Updated shouldStreamToRightAid, Hearing aid isn't paired, but we're changing streaming prefs %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsPeripheralWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    leftPeripheralUUID = [(AXHearingAidDevice *)self leftPeripheralUUID];
    if ([leftPeripheralUUID isEqualToString:dCopy])
    {
      v6 = 1;
    }

    else
    {
      rightPeripheralUUID = [(AXHearingAidDevice *)self rightPeripheralUUID];
      if ([rightPeripheralUUID isEqualToString:dCopy])
      {
        v6 = 1;
      }

      else
      {
        deviceUUID = [(AXHearingAidDevice *)self deviceUUID];
        v6 = [deviceUUID isEqualToString:dCopy];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)deviceUUID
{
  leftUUID = [(AXHearingAidDevice *)self leftUUID];
  rightUUID = [(AXHearingAidDevice *)self rightUUID];
  v5 = [AXHearingAidDevice deviceIDFromLeftID:leftUUID andRightID:rightUUID];

  return v5;
}

- (id)serviceTypeDescription
{
  if ([MEMORY[0x1E69A4560] isLEAudioEnabled] && -[AXHearingAidDevice deviceProtocol](self, "deviceProtocol") == 2)
  {
    return @"LEA 3";
  }

  else
  {
    return @"MFI";
  }
}

- (NSNumber)RSSI
{
  if ([(AXHearingAidDevice *)self leftAvailable])
  {
    leftRSSI = [(AXHearingAidDevice *)self leftRSSI];
    intValue = [leftRSSI intValue];

    v5 = 1;
  }

  else
  {
    v5 = 0;
    intValue = 0;
  }

  if ([(AXHearingAidDevice *)self rightAvailable])
  {
    rightRSSI = [(AXHearingAidDevice *)self rightRSSI];
    intValue += [rightRSSI intValue];

    ++v5;
  }

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithInt:(intValue / v5)];
}

- (BOOL)peripheral:(id)peripheral didLoadProperty:(unint64_t)property
{
  peripheralCopy = peripheral;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    leftLoadedProperties = [(AXHearingAidDevice *)self leftLoadedProperties];
  }

  else
  {
    leftLoadedProperties = [(AXHearingAidDevice *)self rightLoadedProperties];
  }

  v9 = leftLoadedProperties;

  return (property & ~v9) == 0;
}

- (BOOL)didLoadPersistentProperties
{
  name = [(AXHearingAidDevice *)self name];
  v4 = [name length];

  if (!v4)
  {
    return 0;
  }

  deviceUUID = [(AXHearingAidDevice *)self deviceUUID];
  v6 = [deviceUUID length];

  if (!v6)
  {
    return 0;
  }

  manufacturer = [(AXHearingAidDevice *)self manufacturer];
  firstObject = [manufacturer firstObject];
  if ([firstObject length])
  {
  }

  else
  {
    manufacturer2 = [(AXHearingAidDevice *)self manufacturer];
    lastObject = [manufacturer2 lastObject];
    v11 = [lastObject length];

    if (!v11)
    {
      return 0;
    }
  }

  model = [(AXHearingAidDevice *)self model];
  firstObject2 = [model firstObject];
  if ([firstObject2 length])
  {

    return [(AXHearingAidDevice *)self availableEars]!= 0;
  }

  model2 = [(AXHearingAidDevice *)self model];
  lastObject2 = [model2 lastObject];
  v16 = [lastObject2 length];

  if (v16)
  {
    return [(AXHearingAidDevice *)self availableEars]!= 0;
  }

  return 0;
}

- (BOOL)didLoadOptionalBasicProperties
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([MEMORY[0x1E69A4560] supportsLEA2])
  {
    v3 = 0x50000000002;
  }

  else
  {
    v3 = 2;
  }

  v4 = subPropertiesOfProperty(v3);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__AXHearingAidDevice_didLoadOptionalBasicProperties__block_invoke;
  v15[3] = &unk_1E85CAA68;
  v15[4] = self;
  v15[5] = &v20;
  v15[6] = &v16;
  [v4 enumerateObjectsUsingBlock:v15];

  if ([(AXHearingAidDevice *)self leftAvailable]&& v21[3])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    v6 = [(AXHearingAidDevice *)self peripheral:leftPeripheral didLoadProperty:v21[3]];
  }

  else
  {
    leftPeripheral = HCLogHearingAids();
    if (os_log_type_enabled(leftPeripheral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, leftPeripheral, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties, No optional properties on left", buf, 2u);
    }

    v6 = 1;
  }

  if ([(AXHearingAidDevice *)self rightAvailable]&& v17[3])
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    v8 = [(AXHearingAidDevice *)self peripheral:rightPeripheral didLoadProperty:v17[3]];
  }

  else
  {
    rightPeripheral = HCLogHearingAids();
    if (os_log_type_enabled(rightPeripheral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, rightPeripheral, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties, No optional properties on right", buf, 2u);
    }

    v8 = 1;
  }

  v9 = ([(AXHearingAidDevice *)self leftAvailable]|| [(AXHearingAidDevice *)self rightAvailable]) && v6 && v8;
  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    leftAvailable = [(AXHearingAidDevice *)self leftAvailable];
    rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
    *buf = 67110144;
    v25 = v9;
    v26 = 1024;
    v27 = leftAvailable;
    v28 = 1024;
    v29 = v6;
    v30 = 1024;
    v31 = rightAvailable;
    v32 = 1024;
    v33 = v8;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties {%d} LEFT [%d, %d] RIGHT [%d, %d]", buf, 0x20u);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

void __52__AXHearingAidDevice_didLoadOptionalBasicProperties__block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [a2 unsignedLongLongValue];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = hearingPropertyDescription(v3);
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties, Checking %@", &v23, 0xCu);
  }

  v6 = a1[4];
  v7 = [v6 leftPeripheral];
  v8 = [v6 peripheral:v7 characteristicForProperty:v3];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) |= v3;
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = hearingPropertyDescription(v3);
      v11 = a1[4];
      v12 = [v11 leftPeripheral];
      v13 = [v11 peripheral:v12 characteristicForProperty:v3];
      v23 = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties, Adding available %@ - %@", &v23, 0x16u);
    }
  }

  v14 = a1[4];
  v15 = [v14 rightPeripheral];
  v16 = [v14 peripheral:v15 characteristicForProperty:v3];

  if (v16)
  {
    *(*(a1[6] + 8) + 24) |= v3;
    v17 = HCLogHearingAids();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = hearingPropertyDescription(v3);
      v19 = a1[4];
      v20 = [v19 rightPeripheral];
      v21 = [v19 peripheral:v20 characteristicForProperty:v3];
      v23 = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_1DA5E2000, v17, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadOptionalBasicProperties, Adding available %@ - %@", &v23, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)didLoadBasicProperties
{
  v50 = *MEMORY[0x1E69E9840];
  if ([(AXHearingAidDevice *)self leftAvailable]|| [(AXHearingAidDevice *)self rightAvailable])
  {
    leftAvailable = [(AXHearingAidDevice *)self leftAvailable];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    if (leftAvailable == [(AXHearingAidDevice *)self peripheral:leftPeripheral didLoadProperty:56])
    {
      rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
      rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
      v27 = rightAvailable == [(AXHearingAidDevice *)self peripheral:rightPeripheral didLoadProperty:56]&& [(AXHearingAidDevice *)self didLoadOptionalBasicProperties];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    leftAvailable2 = [(AXHearingAidDevice *)self leftAvailable];
    leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
    v21 = [(AXHearingAidDevice *)self peripheral:leftPeripheral2 didLoadProperty:8];
    leftPeripheral3 = [(AXHearingAidDevice *)self leftPeripheral];
    v20 = [(AXHearingAidDevice *)self peripheral:leftPeripheral3 didLoadProperty:16];
    leftPeripheral4 = [(AXHearingAidDevice *)self leftPeripheral];
    v19 = [(AXHearingAidDevice *)self peripheral:leftPeripheral4 didLoadProperty:32];
    leftPeripheral5 = [(AXHearingAidDevice *)self leftPeripheral];
    v18 = [(AXHearingAidDevice *)self peripheral:leftPeripheral5 didLoadProperty:0x100000000000];
    rightAvailable2 = [(AXHearingAidDevice *)self rightAvailable];
    rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
    v10 = [(AXHearingAidDevice *)self peripheral:rightPeripheral2 didLoadProperty:8];
    rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];
    v12 = [(AXHearingAidDevice *)self peripheral:rightPeripheral3 didLoadProperty:16];
    rightPeripheral4 = [(AXHearingAidDevice *)self rightPeripheral];
    v14 = [(AXHearingAidDevice *)self peripheral:rightPeripheral4 didLoadProperty:32];
    rightPeripheral5 = [(AXHearingAidDevice *)self rightPeripheral];
    *buf = 67111680;
    v29 = v27;
    v30 = 1024;
    v31 = leftAvailable2;
    v32 = 1024;
    v33 = v21;
    v34 = 1024;
    v35 = v20;
    v36 = 1024;
    v37 = v19;
    v38 = 1024;
    v39 = v18;
    v40 = 1024;
    v41 = rightAvailable2;
    v42 = 1024;
    v43 = v10;
    v44 = 1024;
    v45 = v12;
    v46 = 1024;
    v47 = v14;
    v48 = 1024;
    v49 = [(AXHearingAidDevice *)self peripheral:rightPeripheral5 didLoadProperty:0x100000000000];
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadBasicProperties {%d} LEFT [%d]: (%d, %d, %d, %d) RIGHT [%d]: (%d, %d, %d, %d)", buf, 0x44u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)didLoadRequiredProperties
{
  v56 = *MEMORY[0x1E69E9840];
  if ([(AXHearingAidDevice *)self leftAvailable]|| [(AXHearingAidDevice *)self rightAvailable])
  {
    leftAvailable = [(AXHearingAidDevice *)self leftAvailable];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    if (leftAvailable == [(AXHearingAidDevice *)self peripheral:leftPeripheral didLoadProperty:[(AXHearingAidDevice *)self requiredProperties]])
    {
      rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
      rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
      v5 = rightAvailable ^ [(AXHearingAidDevice *)self peripheral:rightPeripheral didLoadProperty:[(AXHearingAidDevice *)self requiredProperties]]^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    leftAvailable2 = [(AXHearingAidDevice *)self leftAvailable];
    leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
    v26 = [(AXHearingAidDevice *)self peripheral:leftPeripheral2 didLoadProperty:56];
    leftPeripheral3 = [(AXHearingAidDevice *)self leftPeripheral];
    v25 = [(AXHearingAidDevice *)self peripheral:leftPeripheral3 didLoadProperty:4];
    leftPeripheral4 = [(AXHearingAidDevice *)self leftPeripheral];
    v24 = [(AXHearingAidDevice *)self peripheral:leftPeripheral4 didLoadProperty:64];
    leftPeripheral5 = [(AXHearingAidDevice *)self leftPeripheral];
    v23 = [(AXHearingAidDevice *)self peripheral:leftPeripheral5 didLoadProperty:256];
    leftPeripheral6 = [(AXHearingAidDevice *)self leftPeripheral];
    v22 = [(AXHearingAidDevice *)self peripheral:leftPeripheral6 didLoadProperty:1024];
    rightAvailable2 = [(AXHearingAidDevice *)self rightAvailable];
    rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
    v20 = [(AXHearingAidDevice *)self peripheral:rightPeripheral2 didLoadProperty:56];
    rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];
    v19 = [(AXHearingAidDevice *)self peripheral:rightPeripheral3 didLoadProperty:4];
    rightPeripheral4 = [(AXHearingAidDevice *)self rightPeripheral];
    v11 = [(AXHearingAidDevice *)self peripheral:rightPeripheral4 didLoadProperty:64];
    rightPeripheral5 = [(AXHearingAidDevice *)self rightPeripheral];
    v13 = [(AXHearingAidDevice *)self peripheral:rightPeripheral5 didLoadProperty:256];
    rightPeripheral6 = [(AXHearingAidDevice *)self rightPeripheral];
    *buf = 67112192;
    *&buf[4] = v5;
    LOWORD(v36) = 1024;
    *(&v36 + 2) = leftAvailable2;
    HIWORD(v36) = 1024;
    *v37 = v26;
    *&v37[4] = 1024;
    *&v37[6] = v25;
    v38 = 1024;
    v39 = v24;
    v40 = 1024;
    v41 = v23;
    v42 = 1024;
    v43 = v22;
    v44 = 1024;
    v45 = rightAvailable2;
    v46 = 1024;
    v47 = v20;
    v48 = 1024;
    v49 = v19;
    v50 = 1024;
    v51 = v11;
    v52 = 1024;
    v53 = v13;
    v54 = 1024;
    v55 = [(AXHearingAidDevice *)self peripheral:rightPeripheral6 didLoadProperty:1024];
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: didLoadRequiredProperties {%d} LEFT [%d]: (%d, %d, %d, %d, %d) RIGHT [%d]: (%d, %d, %d, %d, %d)", buf, 0x50u);
  }

  *buf = 0;
  v36 = buf;
  *v37 = 0x2020000000;
  v15 = 1;
  v37[8] = 1;
  if ((v5 & 1) == 0)
  {
    characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __47__AXHearingAidDevice_didLoadRequiredProperties__block_invoke;
    v34[3] = &unk_1E85CAA90;
    v34[4] = self;
    v34[5] = buf;
    [characteristicsUUIDs enumerateKeysAndObjectsUsingBlock:v34];

    v15 = v36[24];
  }

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void __47__AXHearingAidDevice_didLoadRequiredProperties__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [v17 unsignedLongLongValue];
  if ((v6 & ~[*(a1 + 32) requiredProperties]) == 0)
  {
    if ([*(a1 + 32) leftAvailable])
    {
      v7 = *(a1 + 32);
      v8 = [v7 leftPeripheral];
      if ([v7 peripheral:v8 didLoadProperty:v6])
      {
      }

      else
      {
        v9 = [*(a1 + 32) leftPropertiesLoadCount];
        v10 = [v9 objectForKey:v17];
        v11 = [v10 intValue];

        if (v11 <= 2)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }
      }
    }

    if ([*(a1 + 32) rightAvailable])
    {
      v12 = *(a1 + 32);
      v13 = [v12 rightPeripheral];
      if ([v12 peripheral:v13 didLoadProperty:v6])
      {
      }

      else
      {
        v14 = [*(a1 + 32) rightPropertiesLoadCount];
        v15 = [v14 objectForKey:v17];
        v16 = [v15 intValue];

        if (v16 <= 2)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }
      }
    }
  }
}

- (void)mateWithDevice:(id)device
{
  v19 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = deviceCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Mate, self: %@ other %@", &v15, 0x16u);
  }

  if (!deviceCopy)
  {
    goto LABEL_10;
  }

  leftUUID = [(AXHearingAidDevice *)self leftUUID];
  leftUUID2 = [deviceCopy leftUUID];
  if (![leftUUID isEqualToString:leftUUID2])
  {
    goto LABEL_9;
  }

  rightUUID = [(AXHearingAidDevice *)self rightUUID];
  rightUUID2 = [deviceCopy rightUUID];
  if (![rightUUID isEqualToString:rightUUID2])
  {

LABEL_9:
    goto LABEL_10;
  }

  leftAvailable = [(AXHearingAidDevice *)self leftAvailable];
  if (leftAvailable != [deviceCopy leftAvailable])
  {

LABEL_13:
    v11 = +[AXHearingAidDeviceController sharedController];
    [v11 mergeDevice:self withDevice:deviceCopy];
    goto LABEL_11;
  }

  rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
  rightAvailable2 = [deviceCopy rightAvailable];

  if (rightAvailable != rightAvailable2)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = +[AXHearingAidDeviceController sharedController];
  [v11 replaceDevice:deviceCopy withDevice:self];
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)leftAvailable
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v3 = leftPeripheral != 0;

  return v3;
}

- (BOOL)rightAvailable
{
  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  v3 = rightPeripheral != 0;

  return v3;
}

- (BOOL)isLeftConnected
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v3 = [leftPeripheral state] == 2;

  return v3;
}

- (BOOL)isRightConnected
{
  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  v3 = [rightPeripheral state] == 2;

  return v3;
}

- (BOOL)isConnected
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  state = [leftPeripheral state];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  state2 = [rightPeripheral state];

  if ([(AXHearingAidDevice *)self leftAvailable]|| (v7 = [(AXHearingAidDevice *)self rightAvailable]))
  {
    if ((state != 2) == [(AXHearingAidDevice *)self leftAvailable])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = (state2 != 2) ^ [(AXHearingAidDevice *)self rightAvailable];
    }
  }

  return v7;
}

- (BOOL)hasConnection
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  state = [leftPeripheral state];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  state2 = [rightPeripheral state];

  return state == 2 || state2 == 2;
}

- (BOOL)isAnyPeripheralInConnectingState
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  state = [leftPeripheral state];

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  state2 = [rightPeripheral state];

  return state == 1 || state2 == 1;
}

- (int)connectedEars
{
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v4 = [leftPeripheral state] == 2;

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  state = [rightPeripheral state];

  if (state == 2)
  {
    return (2 * v4) | 4;
  }

  else
  {
    return 2 * v4;
  }
}

- (id)programs
{
  leftPrograms = [(AXHearingAidDevice *)self leftPrograms];
  rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
  v5 = [leftPrograms arrayByAddingObjectsFromArray:rightPrograms];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_6];

  return v6;
}

uint64_t __30__AXHearingAidDevice_programs__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (unint64_t)propertyForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 2;
  characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AXHearingAidDevice_propertyForCharacteristic___block_invoke;
  v8[3] = &unk_1E85CAA90;
  v5 = characteristicCopy;
  v9 = v5;
  v10 = &v11;
  [characteristicsUUIDs enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __48__AXHearingAidDevice_propertyForCharacteristic___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 UUID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v11 unsignedLongLongValue];
    *a4 = 1;
  }
}

- (id)peripheral:(id)peripheral characteristicForProperty:(unint64_t)property
{
  peripheralCopy = peripheral;
  characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
  v8 = [characteristicsUUIDs objectForKey:v7];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  services = [peripheralCopy services];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AXHearingAidDevice_peripheral_characteristicForProperty___block_invoke;
  v13[3] = &unk_1E85CAB00;
  v10 = v8;
  v14 = v10;
  v15 = &v16;
  [services enumerateObjectsUsingBlock:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __59__AXHearingAidDevice_peripheral_characteristicForProperty___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__AXHearingAidDevice_peripheral_characteristicForProperty___block_invoke_2;
  v9[3] = &unk_1E85CAAD8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __59__AXHearingAidDevice_peripheral_characteristicForProperty___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 UUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (unint64_t)availablePropertiesForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = 2;
  v14 = 2;
  if (peripheralCopy)
  {
    characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__AXHearingAidDevice_availablePropertiesForPeripheral___block_invoke;
    v8[3] = &unk_1E85CAB28;
    v8[4] = self;
    v9 = peripheralCopy;
    v10 = &v11;
    [characteristicsUUIDs enumerateKeysAndObjectsUsingBlock:v8];

    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __55__AXHearingAidDevice_availablePropertiesForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = [*(a1 + 32) peripheral:*(a1 + 40) characteristicForProperty:v3];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) |= v3;
  }
}

- (id)peripheral:(id)peripheral characteristicForUUID:(id)d
{
  peripheralCopy = peripheral;
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  services = [peripheralCopy services];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__AXHearingAidDevice_peripheral_characteristicForUUID___block_invoke;
  v11[3] = &unk_1E85CAB00;
  v8 = dCopy;
  v12 = v8;
  v13 = &v14;
  [services enumerateObjectsUsingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __55__AXHearingAidDevice_peripheral_characteristicForUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AXHearingAidDevice_peripheral_characteristicForUUID___block_invoke_2;
  v9[3] = &unk_1E85CAAD8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __55__AXHearingAidDevice_peripheral_characteristicForUUID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 UUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (void)setNotify:(BOOL)notify forPeripheral:(id)peripheral
{
  notifyCopy = notify;
  v20 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (peripheralCopy)
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      services = [peripheralCopy services];
      *buf = 67109634;
      v15 = notifyCopy;
      v16 = 2112;
      v17 = peripheralCopy;
      v18 = 2112;
      v19 = services;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Setting notify %d for peripheral: %@ - %@", buf, 0x1Cu);
    }

    services2 = [peripheralCopy services];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__AXHearingAidDevice_setNotify_forPeripheral___block_invoke;
    v11[3] = &unk_1E85CAB78;
    v11[4] = self;
    v12 = peripheralCopy;
    v13 = notifyCopy;
    [services2 enumerateObjectsUsingBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__AXHearingAidDevice_setNotify_forPeripheral___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AXHearingAidDevice_setNotify_forPeripheral___block_invoke_2;
  v5[3] = &unk_1E85CAB50;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __46__AXHearingAidDevice_setNotify_forPeripheral___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) peripheral:*(a1 + 40) propertyForCharacteristic:?] & 0xFFFFFE007FFDFB3BLL) == 0)
  {
    [*(a1 + 40) setNotifyValue:*(a1 + 48) forCharacteristic:v3];
  }
}

- (void)loadProperties:(unint64_t)properties forPeripheral:(id)peripheral withRetryPeriod:(double)period
{
  v32 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v9 = peripheralCopy;
  if (properties != 2 && peripheralCopy)
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = hearingPropertyDescription(properties);
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: loadProperties, Loading %@ for %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v31 = 0;
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    if (leftPeripheral == v9)
    {
      [(AXHearingAidDevice *)self leftPropertiesLoadCount];
    }

    else
    {
      [(AXHearingAidDevice *)self rightPropertiesLoadCount];
    }
    v13 = ;

    services = [v9 services];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__AXHearingAidDevice_loadProperties_forPeripheral_withRetryPeriod___block_invoke;
    v24[3] = &unk_1E85CABC8;
    v15 = v9;
    v25 = v15;
    selfCopy = self;
    v16 = v13;
    v27 = v16;
    v28 = buf;
    propertiesCopy = properties;
    [services enumerateObjectsUsingBlock:v24];

    if (period > 0.0 && (*(*&buf[8] + 24) & 1) != 0)
    {
      v17 = dispatch_time(0, (period * 1000000000.0));
      v18 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AXHearingAidDevice_loadProperties_forPeripheral_withRetryPeriod___block_invoke_168;
      block[3] = &unk_1E85CABF0;
      block[4] = self;
      propertiesCopy2 = properties;
      v21 = v15;
      periodCopy = period;
      dispatch_after(v17, v18, block);
    }

    _Block_object_dispose(buf, 8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __67__AXHearingAidDevice_loadProperties_forPeripheral_withRetryPeriod___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__AXHearingAidDevice_loadProperties_forPeripheral_withRetryPeriod___block_invoke_2;
  v8[3] = &unk_1E85CABA0;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v7 = v4;
  v5 = *(a1 + 48);
  v11 = *(a1 + 64);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 56);
  v9 = v7;
  v10 = v6;
  [v3 enumerateObjectsUsingBlock:v8];
}

void __67__AXHearingAidDevice_loadProperties_forPeripheral_withRetryPeriod___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) leftPeripheral];
  v6 = *(a1 + 40);
  if (v4 == v5)
  {
    v7 = [v6 leftLoadedProperties];
  }

  else
  {
    v7 = [v6 rightLoadedProperties];
  }

  v8 = v7;

  v9 = [*(a1 + 40) peripheral:*(a1 + 32) propertyForCharacteristic:v3];
  v10 = *(a1 + 48);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
  v12 = [v10 objectForKey:v11];
  v13 = [v12 intValue];

  if (v9 == 2 || (v9 & ~*(a1 + 64)) != 0 || ([*(a1 + 40) peripheral:*(a1 + 32) didLoadProperty:v9] & 1) != 0)
  {
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = hearingPropertyDescription(v9);
      v16 = [*(a1 + 40) peripheral:*(a1 + 32) didLoadProperty:v9];
      v17 = hearingPropertyDescription(v8);
      v22 = 138413314;
      v23 = v15;
      v24 = 1024;
      v25 = v13;
      v26 = 1024;
      v27 = v16;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: loadProperties, Not loading %@, %d, %d - %@ = %@", &v22, 0x2Cu);
    }
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696AD98] numberWithInt:(v13 + 1)];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    [v19 setObject:v20 forKey:v21];

    [*(a1 + 40) readValueForCharacteristic:v3 fromPeripheral:*(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = (v9 & 0xFFFFFF007FFEFA3BLL) != 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)loadBasicProperties
{
  if (!self->_finishedLoading)
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    [(AXHearingAidDevice *)self loadProperties:0x5000000003ALL forPeripheral:leftPeripheral withRetryPeriod:0.0];

    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    [(AXHearingAidDevice *)self loadProperties:0x5000000003ALL forPeripheral:rightPeripheral withRetryPeriod:0.0];
  }
}

- (void)loadRequiredProperties
{
  v3 = +[AXHearingAidDeviceController sharedController];
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AXHearingAidDevice_loadRequiredProperties__block_invoke;
  v8[3] = &unk_1E85CA050;
  v8[4] = self;
  [v3 checkPeripheralPaired:leftPeripheral withCompletion:v8];

  v5 = +[AXHearingAidDeviceController sharedController];
  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AXHearingAidDevice_loadRequiredProperties__block_invoke_170;
  v7[3] = &unk_1E85CA050;
  v7[4] = self;
  [v5 checkPeripheralPaired:rightPeripheral withCompletion:v7];
}

void __44__AXHearingAidDevice_loadRequiredProperties__block_invoke(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) isPaired];
  v5 = *(a1 + 32);
  v6 = [v5 leftPeripheral];
  v30 = v6;
  if ((v4 & 1) != 0 || a2)
  {
    v8 = [v5 peripheral:v6 didLoadProperty:{objc_msgSend(*(a1 + 32), "requiredProperties")}];

    if ((v8 & 1) == 0)
    {
      v9 = HCLogHearingAids();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(a1 + 32) leftPeripheral];
        v10 = *(a1 + 32);
        v31 = [v10 leftPeripheral];
        v26 = [v10 peripheral:v31 didLoadProperty:56];
        v11 = *(a1 + 32);
        v29 = [v11 leftPeripheral];
        v25 = [v11 peripheral:v29 didLoadProperty:4];
        v12 = *(a1 + 32);
        v28 = [v12 leftPeripheral];
        v13 = [v12 peripheral:v28 didLoadProperty:64];
        v14 = *(a1 + 32);
        v15 = [v14 leftPeripheral];
        v16 = [v14 peripheral:v15 didLoadProperty:128];
        v17 = *(a1 + 32);
        v18 = [v17 leftPeripheral];
        LODWORD(v17) = [v17 peripheral:v18 didLoadProperty:256];
        v19 = *(a1 + 32);
        v20 = [v19 leftPeripheral];
        *buf = 138413826;
        v33 = v27;
        v34 = 1024;
        v35 = v26;
        v36 = 1024;
        v37 = v25;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v16;
        v42 = 1024;
        v43 = v17;
        v44 = 1024;
        v45 = [v19 peripheral:v20 didLoadProperty:1024];
        _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: loadRequiredProperties, Loading required properties for %@ - (%d, %d, %d, %d, %d, %d)", buf, 0x30u);
      }

      v21 = *(a1 + 32);
      v22 = [v21 requiredProperties];
      v23 = [*(a1 + 32) leftPeripheral];
      [v21 loadProperties:v22 forPeripheral:v23 withRetryPeriod:10.0];
    }

    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [v5 loadProperties:64 forPeripheral:v6 withRetryPeriod:0.0];
    v7 = *MEMORY[0x1E69E9840];
  }
}

void __44__AXHearingAidDevice_loadRequiredProperties__block_invoke_170(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) isPaired];
  v5 = *(a1 + 32);
  v6 = [v5 rightPeripheral];
  v30 = v6;
  if ((v4 & 1) != 0 || a2)
  {
    v8 = [v5 peripheral:v6 didLoadProperty:{objc_msgSend(*(a1 + 32), "requiredProperties")}];

    if ((v8 & 1) == 0)
    {
      v9 = HCLogHearingAids();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [*(a1 + 32) rightPeripheral];
        v10 = *(a1 + 32);
        v31 = [v10 rightPeripheral];
        v26 = [v10 peripheral:v31 didLoadProperty:56];
        v11 = *(a1 + 32);
        v29 = [v11 rightPeripheral];
        v25 = [v11 peripheral:v29 didLoadProperty:4];
        v12 = *(a1 + 32);
        v28 = [v12 rightPeripheral];
        v13 = [v12 peripheral:v28 didLoadProperty:64];
        v14 = *(a1 + 32);
        v15 = [v14 rightPeripheral];
        v16 = [v14 peripheral:v15 didLoadProperty:128];
        v17 = *(a1 + 32);
        v18 = [v17 rightPeripheral];
        LODWORD(v17) = [v17 peripheral:v18 didLoadProperty:256];
        v19 = *(a1 + 32);
        v20 = [v19 rightPeripheral];
        *buf = 138413826;
        v33 = v27;
        v34 = 1024;
        v35 = v26;
        v36 = 1024;
        v37 = v25;
        v38 = 1024;
        v39 = v13;
        v40 = 1024;
        v41 = v16;
        v42 = 1024;
        v43 = v17;
        v44 = 1024;
        v45 = [v19 peripheral:v20 didLoadProperty:1024];
        _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: loadRequiredProperties, Loading required properties for %@ - (%d, %d, %d, %d, %d, %d)", buf, 0x30u);
      }

      v21 = *(a1 + 32);
      v22 = [v21 requiredProperties];
      v23 = [*(a1 + 32) rightPeripheral];
      [v21 loadProperties:v22 forPeripheral:v23 withRetryPeriod:10.0];
    }

    v24 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [v5 loadProperties:64 forPeripheral:v6 withRetryPeriod:0.0];
    v7 = *MEMORY[0x1E69E9840];
  }
}

- (void)loadFailedProperties
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(AXHearingAidDevice *)self isPaired])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 2;
    leftPropertiesLoadCount = [(AXHearingAidDevice *)self leftPropertiesLoadCount];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __42__AXHearingAidDevice_loadFailedProperties__block_invoke;
    v18[3] = &unk_1E85CAA90;
    v18[4] = self;
    v18[5] = &v19;
    [leftPropertiesLoadCount enumerateKeysAndObjectsUsingBlock:v18];

    v4 = v20[3];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    [(AXHearingAidDevice *)self loadProperties:v4 forPeripheral:leftPeripheral withRetryPeriod:0.0];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 2;
    rightPropertiesLoadCount = [(AXHearingAidDevice *)self rightPropertiesLoadCount];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__AXHearingAidDevice_loadFailedProperties__block_invoke_2;
    v13[3] = &unk_1E85CAA90;
    v13[4] = self;
    v13[5] = &v14;
    [rightPropertiesLoadCount enumerateKeysAndObjectsUsingBlock:v13];

    v7 = v15[3];
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    [(AXHearingAidDevice *)self loadProperties:v7 forPeripheral:rightPeripheral withRetryPeriod:0.0];

    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = hearingPropertyDescription(v20[3]);
      v11 = hearingPropertyDescription(v15[3]);
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: loadFailedProperties, (L: %@ - R: %@)", buf, 0x16u);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v19, 8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__AXHearingAidDevice_loadFailedProperties__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 unsignedLongLongValue];
  v6 = *(a1 + 32);
  v7 = [v6 leftPeripheral];
  if ([v6 peripheral:v7 didLoadProperty:v5])
  {
  }

  else
  {
    v8 = [v9 intValue];

    if (v8 >= 3)
    {
      *(*(*(a1 + 40) + 8) + 24) |= v5;
    }
  }
}

void __42__AXHearingAidDevice_loadFailedProperties__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 unsignedLongLongValue];
  v6 = *(a1 + 32);
  v7 = [v6 rightPeripheral];
  if ([v6 peripheral:v7 didLoadProperty:v5])
  {
  }

  else
  {
    v8 = [v9 intValue];

    if (v8 >= 3)
    {
      *(*(*(a1 + 40) + 8) + 24) |= v5;
    }
  }
}

- (BOOL)deviceSupportsProperty:(unint64_t)property
{
  if ([(AXHearingAidDevice *)self leftAvailable])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    v6 = [(AXHearingAidDevice *)self peripheral:leftPeripheral characteristicForProperty:property];

    rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = rightAvailable;
    }

    if (rightAvailable && !v6)
    {
      rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
      v10 = [(AXHearingAidDevice *)self peripheral:rightPeripheral characteristicForProperty:property];
      v8 = v10 != 0;
    }
  }

  else
  {
    [(AXHearingAidDevice *)self rightAvailable];
    return 1;
  }

  return v8;
}

- (void)updateName
{
  v14 = *MEMORY[0x1E69E9840];
  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  name = [rightPeripheral name];

  if (![(AXHearingAidDevice *)self rightAvailable]&& [(AXHearingAidDevice *)self leftAvailable])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    name2 = [leftPeripheral name];

    name = name2;
  }

  if ([name length])
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v8 = [name stringByTrimmingCharactersInSet:newlineCharacterSet];

    [(AXHearingAidDevice *)self setName:v8];
    v9 = +[AXHearingAidDeviceController sharedController];
    [v9 device:self didUpdateProperty:0x40000];

    name = v8;
  }

  v10 = HCLogHearingAids();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = name;
    _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: updateName %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateBatteryServiceForPeripheral:(id)peripheral
{
  v36[11] = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (peripheralCopy)
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    v6 = 88;
    if (rightPeripheral == peripheralCopy)
    {
      v6 = 96;
    }

    v7 = *(&self->super.isa + v6);
    if ([peripheralCopy state] == 2)
    {
      if (!v7)
      {
        if (IOPSCreatePowerSource())
        {
          v8 = HCLogHearingAids();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [AXHearingAidDevice updateBatteryServiceForPeripheral:];
          }
        }

        else if (rightPeripheral == peripheralCopy)
        {
          self->_rightPowerSourceID = v7;
        }

        else
        {
          self->_leftPowerSourceID = v7;
        }
      }

      if (rightPeripheral == peripheralCopy)
      {
        v9 = 112;
      }

      else
      {
        v9 = 104;
      }

      v10 = *(&self->super.isa + v9);
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = *(&self->super.isa + v9);
        *(&self->super.isa + v9) = v10;
      }

      name = [(AXHearingAidDevice *)self name];
      if ([name length])
      {
        [(AXHearingAidDevice *)self name];
      }

      else
      {
        hearingLocString(@"HearingAidLabel");
      }
      v13 = ;

      v14 = MEMORY[0x1E696AEC0];
      if (rightPeripheral == peripheralCopy)
      {
        v17 = hearingLocString(@"RightHearingAidLabel");
        v16 = [v14 stringWithFormat:@"%@ %@", v13, v17];

        [(AXHearingAidDevice *)self rightPeripheralUUID];
      }

      else
      {
        v15 = hearingLocString(@"LeftHearingAidLabel");
        v16 = [v14 stringWithFormat:@"%@ %@", v13, v15];

        [(AXHearingAidDevice *)self leftPeripheralUUID];
      }
      v18 = ;
      deviceUUID = [(AXHearingAidDevice *)self deviceUUID];
      if ([v18 length] && objc_msgSend(deviceUUID, "length"))
      {
        v35[0] = @"Type";
        v35[1] = @"Transport Type";
        v36[0] = @"Accessory Source";
        v36[1] = @"Bluetooth LE";
        v35[2] = @"Accessory Identifier";
        v35[3] = @"Max Capacity";
        v36[2] = v18;
        v36[3] = &unk_1F5623B30;
        v35[4] = @"Part Name";
        v35[5] = @"Name";
        v36[4] = v16;
        v36[5] = v13;
        v36[6] = deviceUUID;
        v35[6] = @"Group Identifier";
        v35[7] = @"Current Capacity";
        v20 = MEMORY[0x1E696AD98];
        if (rightPeripheral == peripheralCopy)
        {
          [(AXHearingAidDevice *)self rightBatteryLevel];
          v22 = @"Right";
        }

        else
        {
          [(AXHearingAidDevice *)self leftBatteryLevel];
          v22 = @"Left";
        }

        v24 = [v20 numberWithDouble:v21 * 10.0];
        v36[7] = v24;
        v36[8] = @"Battery Power";
        v35[8] = @"Power Source State";
        v35[9] = @"Accessory Category";
        v35[10] = @"Part Identifier";
        v36[9] = @"HearingAid";
        v36[10] = v22;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:11];
        [(objc_class *)v10 setDictionary:v25];

        v26 = IOPSSetPowerSourceDetails();
        if (!v26)
        {
          goto LABEL_39;
        }

        v27 = v26;
        v23 = HCLogHearingAids();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v30 = peripheralCopy;
          v31 = 1024;
          v32 = v27;
          v33 = 2112;
          v34 = v10;
          _os_log_error_impl(&dword_1DA5E2000, v23, OS_LOG_TYPE_ERROR, "Failed to update the power source for peripheral %@: 0x%X - %@", buf, 0x1Cu);
        }
      }

      else
      {
        v23 = HCLogHearingAids();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [AXHearingAidDevice updateBatteryServiceForPeripheral:];
        }
      }

LABEL_39:
      goto LABEL_40;
    }

    if (v7)
    {
      IOPSReleasePowerSource();
      if (rightPeripheral == peripheralCopy)
      {
        self->_rightPowerSourceID = 0;
      }

      else
      {
        self->_leftPowerSourceID = 0;
      }
    }
  }

LABEL_40:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)watchWristOrientationDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changeCopy;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Wrist orientation changed %@", &v7, 0xCu);
  }

  [(AXHearingAidDevice *)self updateInputTagsAndReset:1];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateInputTagsAndReset:(BOOL)reset
{
  resetCopy = reset;
  if (!-[AXHearingAidDevice isPaired](self, "isPaired") || ![MEMORY[0x1E69A4560] supportsLEA2])
  {
    return;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v7 = +[HUHearingAidSettings sharedInstance];
  preferredInputEar = [v7 preferredInputEar];

  v9 = array;
  if (preferredInputEar <= 3)
  {
    v10 = array;
    if (preferredInputEar)
    {
      v9 = array2;
      v10 = array;
      if (preferredInputEar != 2)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  v10 = array2;
  if (preferredInputEar == 4)
  {
LABEL_17:
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    [v9 hcSafeAddObject:leftPeripheral];

    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    [v10 hcSafeAddObject:rightPeripheral];

    goto LABEL_18;
  }

  if (preferredInputEar == 6)
  {
    availableInputEars = [(AXHearingAidDevice *)self availableInputEars];
    if (availableInputEars > 3)
    {
      if (availableInputEars == 6)
      {
        v9 = array2;
        v10 = array2;
      }

      else
      {
        v9 = array;
        v10 = array2;
        if (availableInputEars != 4)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v9 = array;
      v10 = array;
      if (availableInputEars)
      {
        v9 = array2;
        v10 = array;
        if (availableInputEars != 2)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  [array enumerateObjectsUsingBlock:&__block_literal_global_237];
  [array2 enumerateObjectsUsingBlock:&__block_literal_global_246];
  if (resetCopy)
  {
    v14 = HCLogHearingAids();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1DA5E2000, v14, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Updated Input tags, resetting connection", v19, 2u);
    }

    v15 = +[AXHearingAidDeviceController sharedController];
    leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
    [v15 resetConnectionToPeripheral:leftPeripheral2];

    v17 = +[AXHearingAidDeviceController sharedController];
    rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
    [v17 resetConnectionToPeripheral:rightPeripheral2];
  }
}

void __46__AXHearingAidDevice_updateInputTagsAndReset___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Disabling input for %@", &v5, 0xCu);
  }

  [v2 axTag:@"Disable Input"];
  [v2 axUntag:@"Enable Input"];

  v4 = *MEMORY[0x1E69E9840];
}

void __46__AXHearingAidDevice_updateInputTagsAndReset___block_invoke_244(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DA5E2000, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Enabling input for %@", &v5, 0xCu);
  }

  [v2 axUntag:@"Disable Input"];
  [v2 axTag:@"Enable Input"];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)swapPeripheral:(id)peripheral toEar:(int)ear
{
  v32 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (ear == 4)
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral != peripheralCopy)
    {
      rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
      [(AXHearingAidDevice *)self setRightPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setLeftPeripheral:rightPeripheral2];
      v9 = HCLogHearingAids();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
        identifier = [peripheralCopy identifier];
        identifier2 = [rightPeripheral2 identifier];
        v26 = 138412802;
        v27 = serviceTypeDescription;
        v28 = 2112;
        v29 = identifier;
        v30 = 2112;
        v31 = identifier2;
        _os_log_impl(&dword_1DA5E2000, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: swapPeripheral, %@: HearingDevice Swapped to Right %@, Left %@", &v26, 0x20u);
      }
    }

    [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 8];
  }

  else
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

    if (leftPeripheral != peripheralCopy)
    {
      leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
      [(AXHearingAidDevice *)self setLeftPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setRightPeripheral:leftPeripheral2];
      v15 = HCLogHearingAids();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        serviceTypeDescription2 = [(AXHearingAidDevice *)self serviceTypeDescription];
        identifier3 = [peripheralCopy identifier];
        identifier4 = [leftPeripheral2 identifier];
        v26 = 138412802;
        v27 = serviceTypeDescription2;
        v28 = 2112;
        v29 = identifier3;
        v30 = 2112;
        v31 = identifier4;
        _os_log_impl(&dword_1DA5E2000, v15, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: swapPeripheral, %@: HearingDevice Swapped to Left %@, Right %@", &v26, 0x20u);
      }
    }

    [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 8];
  }

  leftPeripheral3 = [(AXHearingAidDevice *)self leftPeripheral];
  identifier5 = [leftPeripheral3 identifier];
  uUIDString = [identifier5 UUIDString];

  [(AXHearingAidDevice *)self setLeftPeripheralUUID:uUIDString];
  rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];
  identifier6 = [rightPeripheral3 identifier];
  uUIDString2 = [identifier6 UUIDString];

  [(AXHearingAidDevice *)self setRightPeripheralUUID:uUIDString2];
  v25 = *MEMORY[0x1E69E9840];
}

- (void)writeValueForProperty:(unint64_t)property
{
  if ((property & ~self->leftWriteRequestProperties) == 0)
  {
    if ((self->_leftWriteResponseProperties & property) != 0)
    {
      p_leftWriteResponseProperties = &self->_leftWriteResponseProperties;
      leftSelectedProgram2 = HCLogHearingAids();
      if (os_log_type_enabled(leftSelectedProgram2, OS_LOG_TYPE_ERROR))
      {
        [(AXHearingAidDevice *)&self->_leftWriteResponseProperties writeValueForProperty:leftSelectedProgram2];
      }
    }

    else
    {
      p_leftWriteResponseProperties = &self->leftWriteRequestProperties;
      if ((property & 0xFFFFFFBF7FFFFF3FLL) == 0)
      {
        leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
        v14 = [(AXHearingAidDevice *)self volumeValueForProperty:property andPeripheral:leftPeripheral];

        [(AXHearingAidDevice *)self writeInt:v14 toEar:2 forProperty:property];
        goto LABEL_6;
      }

      if ((property & 0xFFFFFFFFFFFFFBFFLL) != 0)
      {
        if ((property & 0xFFFFFFF7FFFFFFFFLL) != 0)
        {
          leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
          v10 = [(AXHearingAidDevice *)self signedValueForProperty:property andPeripheral:leftPeripheral2];

          [(AXHearingAidDevice *)self writeSignedInt:v10 toEar:2 forProperty:property];
        }

        else
        {
          leftSelectedStreamingProgram = [(AXHearingAidDevice *)self leftSelectedStreamingProgram];
          leftSelectedProgram = [(AXHearingAidDevice *)self leftSelectedProgram];
          v20 = leftSelectedProgram;
          if (leftSelectedStreamingProgram)
          {
            v21 = leftSelectedStreamingProgram;
          }

          else
          {
            v21 = leftSelectedProgram;
          }

          v22 = v21;

          -[AXHearingAidDevice writeInt:toEar:forProperty:](self, "writeInt:toEar:forProperty:", [v22 index], 2, 0x800000000);
        }

        goto LABEL_6;
      }

      leftSelectedProgram2 = [(AXHearingAidDevice *)self leftSelectedProgram];
      [(AXHearingAidDevice *)self writeInt:[leftSelectedProgram2 index] toEar:2 forProperty:1024];
    }

LABEL_6:
    *p_leftWriteResponseProperties &= ~property;
  }

  if ((property & ~self->rightWriteRequestProperties) == 0)
  {
    if ((self->_rightWriteResponseProperties & property) != 0)
    {
      p_rightWriteResponseProperties = &self->_rightWriteResponseProperties;
      v8 = HCLogHearingAids();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AXHearingAidDevice *)p_rightWriteResponseProperties writeValueForProperty:v8];
      }
    }

    else
    {
      p_rightWriteResponseProperties = &self->rightWriteRequestProperties;
      if ((property & 0xFFFFFFBF7FFFFF3FLL) != 0)
      {
        if ((property & 0xFFFFFFFFFFFFFBFFLL) != 0)
        {
          if ((property & 0xFFFFFFF7FFFFFFFFLL) != 0)
          {
            rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
            v12 = [(AXHearingAidDevice *)self signedValueForProperty:property andPeripheral:rightPeripheral];

            [(AXHearingAidDevice *)self writeSignedInt:v12 toEar:4 forProperty:property];
          }

          else
          {
            rightSelectedStreamingProgram = [(AXHearingAidDevice *)self rightSelectedStreamingProgram];
            rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedProgram];
            v25 = rightSelectedProgram;
            if (rightSelectedStreamingProgram)
            {
              v26 = rightSelectedStreamingProgram;
            }

            else
            {
              v26 = rightSelectedProgram;
            }

            v27 = v26;

            -[AXHearingAidDevice writeInt:toEar:forProperty:](self, "writeInt:toEar:forProperty:", [v27 index], 4, 0x800000000);
          }
        }

        else
        {
          rightSelectedProgram2 = [(AXHearingAidDevice *)self rightSelectedProgram];
          -[AXHearingAidDevice writeInt:toEar:forProperty:](self, "writeInt:toEar:forProperty:", [rightSelectedProgram2 index], 4, 1024);
        }
      }

      else
      {
        rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
        v16 = [(AXHearingAidDevice *)self volumeValueForProperty:property andPeripheral:rightPeripheral2];

        [(AXHearingAidDevice *)self writeInt:v16 toEar:4 forProperty:property];
      }
    }

    *p_rightWriteResponseProperties &= ~property;
  }
}

- (void)_sendDelayedWrites
{
  v18 = *MEMORY[0x1E69E9840];
  isPaired = [(AXHearingAidDevice *)self isPaired];
  v4 = HCLogHearingAids();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isPaired)
  {
    if (v5)
    {
      leftWriteRequestProperties = self->leftWriteRequestProperties;
      rightWriteRequestProperties = self->rightWriteRequestProperties;
      *buf = 134218240;
      v15 = leftWriteRequestProperties;
      v16 = 2048;
      v17 = rightWriteRequestProperties;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: _sendDelayedWrites, Left %lld - Right %lld", buf, 0x16u);
    }

    characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__AXHearingAidDevice__sendDelayedWrites__block_invoke;
    v13[3] = &unk_1E85CA558;
    v13[4] = self;
    [characteristicsUUIDs enumerateKeysAndObjectsUsingBlock:v13];

    if ([(AXHearingAidDevice *)self keepInSync]&& (self->leftWriteRequestProperties || self->rightWriteRequestProperties))
    {
      [(AXDispatchTimer *)self->_propertyWriteTimer cancel];
      objc_initWeak(buf, self);
      propertyWriteTimer = self->_propertyWriteTimer;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__AXHearingAidDevice__sendDelayedWrites__block_invoke_2;
      v11[3] = &unk_1E85C9F10;
      objc_copyWeak(&v12, buf);
      [(AXDispatchTimer *)propertyWriteTimer afterDelay:v11 processBlock:0.1];
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "Not paired", buf, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __40__AXHearingAidDevice__sendDelayedWrites__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 writeValueForProperty:v3];
}

void __40__AXHearingAidDevice__sendDelayedWrites__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendDelayedWrites];
}

- (void)delayWriteProperty:(unint64_t)property forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v7 = +[AXHearingAidDeviceController sharedController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AXHearingAidDevice_delayWriteProperty_forPeripheral___block_invoke;
  v9[3] = &unk_1E85CAC38;
  v9[4] = self;
  v10 = peripheralCopy;
  propertyCopy = property;
  v8 = peripheralCopy;
  [v7 checkPeripheralPaired:v8 withCompletion:v9];
}

void __55__AXHearingAidDevice_delayWriteProperty_forPeripheral___block_invoke(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 & 1) != 0 || ([*(a1 + 32) isFakeDevice])
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) leftPeripheral];
    if ([v3 isEqual:v4] && objc_msgSend(*(a1 + 32), "leftAvailable"))
    {
      v5 = *(a1 + 48) & *(*(a1 + 32) + 456);

      if (!v5)
      {
        *(*(a1 + 32) + 456) |= *(a1 + 48);
        v6 = 1;
LABEL_9:
        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) rightPeripheral];
        if ([v7 isEqual:v8] && objc_msgSend(*(a1 + 32), "rightAvailable"))
        {
          v9 = *(a1 + 48) & *(*(a1 + 32) + 464);

          if (v9)
          {
            if ((v6 & 1) == 0)
            {
LABEL_16:
              v11 = *(a1 + 32);
              if (*(v11 + 456))
              {
                v10 = 0;
              }

              else
              {
                v10 = 0;
                if (!*(v11 + 464))
                {
                  goto LABEL_24;
                }
              }

              goto LABEL_22;
            }
          }

          else
          {
            *(*(a1 + 32) + 464) |= *(a1 + 48);
          }
        }

        else
        {

          if ((v6 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v10 = 1;
LABEL_22:
        if (([*(*(a1 + 32) + 72) isPending] & 1) == 0)
        {
          [*(a1 + 32) _sendDelayedWrites];
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v6 = 0;
    goto LABEL_9;
  }

  v12 = HCLogHearingAids();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: delayWriteProperty, Not writing because peripheral isn't paired", v17, 2u);
  }

  v10 = 0;
LABEL_24:
  v13 = HCLogHearingAids();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v17[0] = 67109634;
    v17[1] = v10;
    v18 = 2048;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: delayWriteProperty, [%d] %lld - %@", v17, 0x1Cu);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)writeInt:(unsigned __int8)int toEar:(int)ear forProperty:(unint64_t)property
{
  intCopy = int;
  v29 = *MEMORY[0x1E69E9840];
  intCopy2 = int;
  if (ear == 2)
  {
    [(AXHearingAidDevice *)self leftPeripheral];
  }

  else
  {
    [(AXHearingAidDevice *)self rightPeripheral];
  }
  v8 = ;
  if (v8)
  {
    v9 = [(AXHearingAidDevice *)self peripheral:v8 characteristicForProperty:property];
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = hearingPropertyDescription(property);
      *buf = 67109634;
      v24 = intCopy;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: writeInt, Writing %d for %@ - %@", buf, 0x1Cu);
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&intCopy2 length:1];
    v13 = v12;
    if (v9 && v12)
    {
      [v8 writeValue:v12 forCharacteristic:v9 type:0];
      leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
      v15 = [v8 isEqual:leftPeripheral];

      if (v15)
      {
        v16 = [(AXHearingAidDevice *)self leftWriteResponseProperties]| property;
LABEL_13:
        [(AXHearingAidDevice *)self setLeftWriteResponseProperties:v16];
LABEL_17:

        goto LABEL_18;
      }

      v20 = [(AXHearingAidDevice *)self rightWriteResponseProperties]| property;
    }

    else
    {
      leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
      v18 = [v8 isEqual:leftPeripheral2];

      v19 = ~property;
      if (v18)
      {
        v16 = [(AXHearingAidDevice *)self leftWriteResponseProperties]& v19;
        goto LABEL_13;
      }

      v20 = [(AXHearingAidDevice *)self rightWriteResponseProperties]& v19;
    }

    [(AXHearingAidDevice *)self setRightWriteResponseProperties:v20];
    goto LABEL_17;
  }

LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)writeSignedInt:(char)int toEar:(int)ear forProperty:(unint64_t)property
{
  intCopy = int;
  v29 = *MEMORY[0x1E69E9840];
  intCopy2 = int;
  if (ear == 2)
  {
    [(AXHearingAidDevice *)self leftPeripheral];
  }

  else
  {
    [(AXHearingAidDevice *)self rightPeripheral];
  }
  v8 = ;
  if (v8)
  {
    v9 = [(AXHearingAidDevice *)self peripheral:v8 characteristicForProperty:property];
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = hearingPropertyDescription(property);
      *buf = 67109634;
      v24 = intCopy;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: writeSignedInt, Writing %d for %@ - %@", buf, 0x1Cu);
    }

    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&intCopy2 length:1];
    v13 = v12;
    if (v9 && v12)
    {
      [v8 writeValue:v12 forCharacteristic:v9 type:0];
      leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
      v15 = [v8 isEqual:leftPeripheral];

      if (v15)
      {
        v16 = [(AXHearingAidDevice *)self leftWriteResponseProperties]| property;
LABEL_13:
        [(AXHearingAidDevice *)self setLeftWriteResponseProperties:v16];
LABEL_17:

        goto LABEL_18;
      }

      v20 = [(AXHearingAidDevice *)self rightWriteResponseProperties]| property;
    }

    else
    {
      leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
      v18 = [v8 isEqual:leftPeripheral2];

      v19 = ~property;
      if (v18)
      {
        v16 = [(AXHearingAidDevice *)self leftWriteResponseProperties]& v19;
        goto LABEL_13;
      }

      v20 = [(AXHearingAidDevice *)self rightWriteResponseProperties]& v19;
    }

    [(AXHearingAidDevice *)self setRightWriteResponseProperties:v20];
    goto LABEL_17;
  }

LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)readValueForCharacteristic:(id)characteristic fromPeripheral:(id)peripheral
{
  v15 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  v7 = HCLogHearingAids();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (characteristicCopy)
  {
    if (v8)
    {
      uUID = [characteristicCopy UUID];
      v11 = 138412546;
      v12 = uUID;
      v13 = 2112;
      v14 = peripheralCopy;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: readValueForCharacteristic, Reading %@ from %@", &v11, 0x16u);
    }

    [peripheralCopy readValueForCharacteristic:characteristicCopy];
  }

  else
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "Reading nil characteristic", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)readProperty:(unint64_t)property fromPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v7 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:property];
  [(AXHearingAidDevice *)self readValueForCharacteristic:v7 fromPeripheral:peripheralCopy];
}

- (void)selectProgram:(id)program forEar:(int)ear
{
  programCopy = program;
  if ((ear & [programCopy ear] & 2) != 0)
  {
    if ([programCopy isStreamOrMixingStream])
    {
      [(AXHearingAidDevice *)self setLeftSelectedStreamingProgram:programCopy];
    }

    else
    {
      [(AXHearingAidDevice *)self setLeftSelectedProgram:programCopy];
    }
  }

  else
  {
    leftPrograms = [(AXHearingAidDevice *)self leftPrograms];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__AXHearingAidDevice_selectProgram_forEar___block_invoke;
    v10[3] = &unk_1E85CAC60;
    v10[4] = self;
    [leftPrograms enumerateObjectsUsingBlock:v10];
  }

  if ((ear & [programCopy ear] & 4) != 0)
  {
    if ([programCopy isStreamOrMixingStream])
    {
      [(AXHearingAidDevice *)self setRightSelectedStreamingProgram:programCopy];
    }

    else
    {
      [(AXHearingAidDevice *)self setRightSelectedProgram:programCopy];
    }
  }

  else
  {
    rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AXHearingAidDevice_selectProgram_forEar___block_invoke_2;
    v9[3] = &unk_1E85CAC60;
    v9[4] = self;
    [rightPrograms enumerateObjectsUsingBlock:v9];
  }
}

void __43__AXHearingAidDevice_selectProgram_forEar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 category] == 1)
  {
    [*(a1 + 32) setLeftSelectedProgram:v6];
    *a4 = 1;
  }
}

void __43__AXHearingAidDevice_selectProgram_forEar___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 category] == 1)
  {
    [*(a1 + 32) setRightSelectedProgram:v6];
    *a4 = 1;
  }
}

- (id)selectedPrograms
{
  array = [MEMORY[0x1E695DF70] array];
  programs = [(AXHearingAidDevice *)self programs];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AXHearingAidDevice_selectedPrograms__block_invoke;
  v8[3] = &unk_1E85CAC60;
  v9 = array;
  v5 = array;
  [programs enumerateObjectsUsingBlock:v8];

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];

  return v6;
}

void __38__AXHearingAidDevice_selectedPrograms__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSelected])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)selectedProgramIndexes
{
  programs = [(AXHearingAidDevice *)self programs];
  v3 = [programs indexesOfObjectsPassingTest:&__block_literal_global_251];

  return v3;
}

- (char)signedValueForProperty:(unint64_t)property andPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v8 = [peripheralCopy isEqual:leftPeripheral];

  if (property == 0x1000000000)
  {
    v9 = v8 == 0;
    v10 = 58;
  }

  else
  {
    if (property != 0x2000000000)
    {
      LOBYTE(v11) = 0;
      return v11;
    }

    v9 = v8 == 0;
    v10 = 56;
  }

  if (v9)
  {
    ++v10;
  }

  v11 = *(&self->super.isa + v10);
  if (v11 <= -127)
  {
    LOBYTE(v11) = -127;
  }

  return v11;
}

- (unsigned)volumeValueForProperty:(unint64_t)property andPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v8 = [peripheralCopy isEqual:leftPeripheral];

  LOBYTE(v9) = 0;
  if (property > 0x7FFFFFFF)
  {
    if (property == 0x80000000)
    {
      v10 = v8 == 0;
      v11 = 384;
      v12 = 376;
    }

    else
    {
      if (property != 0x4000000000)
      {
        return v9;
      }

      v10 = v8 == 0;
      v11 = 400;
      v12 = 392;
    }
  }

  else if (property == 64)
  {
    v10 = v8 == 0;
    v11 = 32;
    v12 = 24;
  }

  else
  {
    if (property != 128)
    {
      return v9;
    }

    v10 = v8 == 0;
    v11 = 48;
    v12 = 40;
  }

  if (!v10)
  {
    v11 = v12;
  }

  return (*(&self->super.isa + v11) * 255.0);
}

- (void)setLeftMicrophoneVolume:(double)volume
{
  if (self->_leftMicrophoneVolume != -1.0)
  {
    volumeCopy = 0.0;
    if (volume >= 0.0)
    {
      volumeCopy = volume;
    }

    if (volume <= 1.0)
    {
      v5 = volumeCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_leftMicrophoneVolume = v5;
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:64 forPeripheral:leftPeripheral];
}

- (void)setRightMicrophoneVolume:(double)volume
{
  if (self->_rightMicrophoneVolume != -1.0)
  {
    volumeCopy = 0.0;
    if (volume >= 0.0)
    {
      volumeCopy = volume;
    }

    if (volume <= 1.0)
    {
      v5 = volumeCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_rightMicrophoneVolume = v5;
  }

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:64 forPeripheral:rightPeripheral];
}

- (void)setLeftStreamVolume:(double)volume
{
  if (self->_leftStreamVolume != -1.0)
  {
    volumeCopy = 0.0;
    if (volume >= 0.0)
    {
      volumeCopy = volume;
    }

    if (volume <= 1.0)
    {
      v5 = volumeCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_leftStreamVolume = v5;
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:128 forPeripheral:leftPeripheral];
}

- (void)setRightStreamVolume:(double)volume
{
  if (self->_rightStreamVolume != -1.0)
  {
    volumeCopy = 0.0;
    if (volume >= 0.0)
    {
      volumeCopy = volume;
    }

    if (volume <= 1.0)
    {
      v5 = volumeCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_rightStreamVolume = v5;
  }

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:128 forPeripheral:rightPeripheral];
}

- (void)setLeftSensitivity:(double)sensitivity
{
  if (self->_leftSensitivity != -1.0)
  {
    sensitivityCopy = 0.0;
    if (sensitivity >= 0.0)
    {
      sensitivityCopy = sensitivity;
    }

    if (sensitivity <= 1.0)
    {
      v5 = sensitivityCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_leftSensitivity = v5;
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:0x80000000 forPeripheral:leftPeripheral];
}

- (void)setRightSensitivity:(double)sensitivity
{
  if (self->_rightSensitivity != -1.0)
  {
    sensitivityCopy = 0.0;
    if (sensitivity >= 0.0)
    {
      sensitivityCopy = sensitivity;
    }

    if (sensitivity <= 1.0)
    {
      v5 = sensitivityCopy;
    }

    else
    {
      v5 = 1.0;
    }

    self->_rightSensitivity = v5;
  }

  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  [(AXHearingAidDevice *)self delayWriteProperty:0x80000000 forPeripheral:rightPeripheral];
}

- (void)setTreble:(char)treble forLeft:(BOOL)left
{
  if (left)
  {
    self->_leftTreble = treble;
    [(AXHearingAidDevice *)self leftPeripheral];
  }

  else
  {
    self->_rightTreble = treble;
    [(AXHearingAidDevice *)self rightPeripheral];
  }
  v5 = ;
  [(AXHearingAidDevice *)self delayWriteProperty:0x2000000000 forPeripheral:v5];
}

- (void)setBass:(char)bass forLeft:(BOOL)left
{
  if (left)
  {
    self->_leftBass = bass;
    [(AXHearingAidDevice *)self leftPeripheral];
  }

  else
  {
    self->_rightBass = bass;
    [(AXHearingAidDevice *)self rightPeripheral];
  }
  v5 = ;
  [(AXHearingAidDevice *)self delayWriteProperty:0x1000000000 forPeripheral:v5];
}

- (void)setMixedVolume:(double)volume forLeft:(BOOL)left
{
  volumeCopy = 0.0;
  if (volume >= 0.0)
  {
    volumeCopy = volume;
  }

  if (volume <= 1.0)
  {
    v6 = volumeCopy;
  }

  else
  {
    v6 = 1.0;
  }

  if (left)
  {
    self->_leftMixedVolume = v6;
    [(AXHearingAidDevice *)self leftPeripheral];
  }

  else
  {
    self->_rightMixedVolume = v6;
    [(AXHearingAidDevice *)self rightPeripheral];
  }
  v7 = ;
  [(AXHearingAidDevice *)self delayWriteProperty:0x4000000000 forPeripheral:v7];
}

- (void)setValue:(id)value forProperty:(unint64_t)property
{
  v80 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AXHearingAidDevice *)property setValue:valueCopy forProperty:v7];
  }

  if (property < 0x800000)
  {
    if (property <= 1023)
    {
      if (property > 127)
      {
        switch(property)
        {
          case 0x80uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
            {
              firstObject = [valueCopy firstObject];
              [firstObject doubleValue];
              [(AXHearingAidDevice *)self setLeftStreamVolume:?];

              lastObject = [valueCopy lastObject];
              [lastObject doubleValue];
              [(AXHearingAidDevice *)self setRightStreamVolume:?];
              goto LABEL_122;
            }

            goto LABEL_132;
          case 0x100uLL:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
            {
              firstObject2 = [valueCopy firstObject];
              lastObject2 = [valueCopy lastObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v58 = lastObject2;
                array = [MEMORY[0x1E695DF70] array];
                v72 = 0u;
                v73 = 0u;
                v74 = 0u;
                v75 = 0u;
                v59 = firstObject2;
                v28 = firstObject2;
                v29 = [v28 countByEnumeratingWithState:&v72 objects:v79 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v73;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v73 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = [[AXHearingAidMode alloc] initWithRepresentation:*(*(&v72 + 1) + 8 * i)];
                      if (v33)
                      {
                        [array addObject:v33];
                      }
                    }

                    v30 = [v28 countByEnumeratingWithState:&v72 objects:v79 count:16];
                  }

                  while (v30);
                }

                [(AXHearingAidDevice *)self setLeftPrograms:array];
                lastObject2 = v58;
                firstObject2 = v59;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = lastObject2;
                array2 = [MEMORY[0x1E695DF70] array];
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v71 = 0u;
                v36 = [array2 countByEnumeratingWithState:&v68 objects:v78 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v69;
                  do
                  {
                    for (j = 0; j != v37; ++j)
                    {
                      if (*v69 != v38)
                      {
                        objc_enumerationMutation(array2);
                      }

                      v40 = [[AXHearingAidMode alloc] initWithRepresentation:*(*(&v68 + 1) + 8 * j)];
                      if (v40)
                      {
                        [array2 addObject:v40];
                      }
                    }

                    v37 = [array2 countByEnumeratingWithState:&v68 objects:v78 count:16];
                  }

                  while (v37);
                }

                [(AXHearingAidDevice *)self setRightPrograms:array2];

                lastObject2 = v34;
              }
            }

            goto LABEL_132;
          case 0x200uLL:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [valueCopy objectForKey:&unk_1F5623B00];
              [(AXHearingAidDevice *)self setValue:v14 forProperty:0x80000];

              lastObject = [valueCopy objectForKey:&unk_1F5623B18];
              [(AXHearingAidDevice *)self setValue:lastObject forProperty:0x100000];
              goto LABEL_122;
            }

            goto LABEL_132;
        }

        goto LABEL_123;
      }

      if (property == 4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          firstObject3 = [valueCopy firstObject];
          [firstObject3 doubleValue];
          [(AXHearingAidDevice *)self setLeftBatteryLevel:?];

          lastObject = [valueCopy lastObject];
          [lastObject doubleValue];
          [(AXHearingAidDevice *)self setRightBatteryLevel:?];
          goto LABEL_122;
        }

        goto LABEL_132;
      }

      if (property != 8)
      {
        if (property == 64)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject4 = [valueCopy firstObject];
            [firstObject4 doubleValue];
            [(AXHearingAidDevice *)self setLeftMicrophoneVolume:?];

            lastObject = [valueCopy lastObject];
            [lastObject doubleValue];
            [(AXHearingAidDevice *)self setRightMicrophoneVolume:?];
LABEL_122:

            goto LABEL_132;
          }

          goto LABEL_132;
        }

LABEL_123:
        v10 = HCLogHearingAids();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy = property;
          v11 = "Unknown property: %ld";
          goto LABEL_125;
        }

        goto LABEL_131;
      }

LABEL_17:
      v10 = HCLogHearingAids();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy = property;
        v11 = "Attempting to set readonly property: %ld";
LABEL_125:
        _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }

LABEL_131:

      goto LABEL_132;
    }

    if (property >= 0x100000)
    {
      if (property != 0x100000)
      {
        if (property == 0x200000)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            integerValue = [valueCopy integerValue];
            if (integerValue)
            {
              if (integerValue == 2)
              {
                [(AXHearingAidDevice *)self connect];
              }
            }

            else
            {
              v57 = HCLogHearingAids();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy = self;
                _os_log_impl(&dword_1DA5E2000, v57, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: setValue, Status: Disconnected, Disconnecting %@", buf, 0xCu);
              }

              [(AXHearingAidDevice *)self disconnectAndUnpair:0];
            }
          }

          goto LABEL_132;
        }

        if (property == 0x400000)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject5 = [valueCopy firstObject];
            [(AXHearingAidDevice *)self setLeftFirmwareVersion:firstObject5];

            lastObject = [valueCopy lastObject];
            [(AXHearingAidDevice *)self setRightFirmwareVersion:lastObject];
            goto LABEL_122;
          }

          goto LABEL_132;
        }

        goto LABEL_123;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
      {
        model = [(AXHearingAidDevice *)self model];
        goto LABEL_118;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_132;
      }

      model2 = [(AXHearingAidDevice *)self model];
LABEL_130:
      v10 = model2;
      [model2 replaceObjectAtIndex:0 withObject:valueCopy];
      goto LABEL_131;
    }

    if (property != 1024)
    {
      if (property == 0x40000)
      {
        [(AXHearingAidDevice *)self setName:valueCopy];
        goto LABEL_132;
      }

      if (property != 0x80000)
      {
        goto LABEL_123;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
      {
        model = [(AXHearingAidDevice *)self manufacturer];
LABEL_118:
        v10 = model;
        [model setArray:valueCopy];
        goto LABEL_131;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_132;
      }

      model2 = [(AXHearingAidDevice *)self manufacturer];
      goto LABEL_130;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2)
    {
      goto LABEL_132;
    }

    firstObject6 = [valueCopy firstObject];
    intValue = [firstObject6 intValue];

    leftPrograms = [(AXHearingAidDevice *)self leftPrograms];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __43__AXHearingAidDevice_setValue_forProperty___block_invoke;
    v66[3] = &unk_1E85CACA8;
    v67 = intValue;
    v66[4] = self;
    [leftPrograms enumerateObjectsUsingBlock:v66];

    lastObject3 = [valueCopy lastObject];
    intValue2 = [lastObject3 intValue];

    rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
    lastObject = rightPrograms;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __43__AXHearingAidDevice_setValue_forProperty___block_invoke_2;
    v64[3] = &unk_1E85CACA8;
    v65 = intValue2;
    v64[4] = self;
    v24 = v64;
LABEL_105:
    [rightPrograms enumerateObjectsUsingBlock:v24];
    goto LABEL_122;
  }

  if (property <= 0x3FFFFFFFFLL)
  {
    if (property > 0x7FFFFFFF)
    {
      switch(property)
      {
        case 0x80000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject7 = [valueCopy firstObject];
            [firstObject7 doubleValue];
            [(AXHearingAidDevice *)self setLeftSensitivity:?];

            lastObject = [valueCopy lastObject];
            [lastObject doubleValue];
            [(AXHearingAidDevice *)self setRightSensitivity:?];
            goto LABEL_122;
          }

          goto LABEL_132;
        case 0x100000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject8 = [valueCopy firstObject];
            -[AXHearingAidDevice setLeftMicrophoneVolumeSteps:](self, "setLeftMicrophoneVolumeSteps:", [firstObject8 shortValue]);

            lastObject = [valueCopy lastObject];
            -[AXHearingAidDevice setRightMicrophoneVolumeSteps:](self, "setRightMicrophoneVolumeSteps:", [lastObject shortValue]);
            goto LABEL_122;
          }

          goto LABEL_132;
        case 0x200000000uLL:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
          {
            firstObject9 = [valueCopy firstObject];
            -[AXHearingAidDevice setLeftStreamVolumeSteps:](self, "setLeftStreamVolumeSteps:", [firstObject9 shortValue]);

            lastObject = [valueCopy lastObject];
            -[AXHearingAidDevice setRightStreamVolumeSteps:](self, "setRightStreamVolumeSteps:", [lastObject shortValue]);
            goto LABEL_122;
          }

          goto LABEL_132;
      }

      goto LABEL_123;
    }

    if (property == 0x800000)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
      {
        firstObject10 = [valueCopy firstObject];
        [(AXHearingAidDevice *)self setLeftHardwareVersion:firstObject10];

        lastObject = [valueCopy lastObject];
        [(AXHearingAidDevice *)self setRightHardwareVersion:lastObject];
        goto LABEL_122;
      }

      goto LABEL_132;
    }

    if (property != 0x1000000 && property != 0x20000000)
    {
      goto LABEL_123;
    }

    goto LABEL_17;
  }

  if (property > 0x1FFFFFFFFFLL)
  {
    switch(property)
    {
      case 0x2000000000uLL:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          firstObject11 = [valueCopy firstObject];
          -[AXHearingAidDevice setTreble:forLeft:](self, "setTreble:forLeft:", [firstObject11 charValue], 1);

          lastObject = [valueCopy lastObject];
          -[AXHearingAidDevice setTreble:forLeft:](self, "setTreble:forLeft:", [lastObject charValue], 0);
          goto LABEL_122;
        }

        goto LABEL_132;
      case 0x4000000000uLL:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          firstObject12 = [valueCopy firstObject];
          [firstObject12 doubleValue];
          [(AXHearingAidDevice *)self setMixedVolume:1 forLeft:?];

          lastObject = [valueCopy lastObject];
          [lastObject doubleValue];
          [(AXHearingAidDevice *)self setMixedVolume:0 forLeft:?];
          goto LABEL_122;
        }

        goto LABEL_132;
      case 0x8000000000uLL:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
        {
          firstObject13 = [valueCopy firstObject];
          -[AXHearingAidDevice setLeftMixedVolumeSteps:](self, "setLeftMixedVolumeSteps:", [firstObject13 shortValue]);

          lastObject = [valueCopy lastObject];
          -[AXHearingAidDevice setRightMixedVolumeSteps:](self, "setRightMixedVolumeSteps:", [lastObject shortValue]);
          goto LABEL_122;
        }

        goto LABEL_132;
    }

    goto LABEL_123;
  }

  if (property == 0x400000000)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
    {
      firstObject14 = [valueCopy firstObject];
      -[AXHearingAidDevice setLeftSensitivitySteps:](self, "setLeftSensitivitySteps:", [firstObject14 shortValue]);

      lastObject = [valueCopy lastObject];
      -[AXHearingAidDevice setRightSensitivitySteps:](self, "setRightSensitivitySteps:", [lastObject shortValue]);
      goto LABEL_122;
    }

    goto LABEL_132;
  }

  if (property == 0x800000000)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy count] != 2 || !-[AXHearingAidDevice deviceSupportsProperty:](self, "deviceSupportsProperty:", 0x800000000))
    {
      goto LABEL_132;
    }

    firstObject15 = [valueCopy firstObject];
    intValue3 = [firstObject15 intValue];

    leftPrograms2 = [(AXHearingAidDevice *)self leftPrograms];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __43__AXHearingAidDevice_setValue_forProperty___block_invoke_3;
    v62[3] = &unk_1E85CACA8;
    v63 = intValue3;
    v62[4] = self;
    [leftPrograms2 enumerateObjectsUsingBlock:v62];

    lastObject4 = [valueCopy lastObject];
    intValue4 = [lastObject4 intValue];

    rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
    lastObject = rightPrograms;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __43__AXHearingAidDevice_setValue_forProperty___block_invoke_4;
    v60[3] = &unk_1E85CACA8;
    v61 = intValue4;
    v60[4] = self;
    v24 = v60;
    goto LABEL_105;
  }

  if (property != 0x1000000000)
  {
    goto LABEL_123;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [valueCopy count] == 2)
  {
    firstObject16 = [valueCopy firstObject];
    -[AXHearingAidDevice setBass:forLeft:](self, "setBass:forLeft:", [firstObject16 charValue], 1);

    lastObject = [valueCopy lastObject];
    -[AXHearingAidDevice setBass:forLeft:](self, "setBass:forLeft:", [lastObject charValue], 0);
    goto LABEL_122;
  }

LABEL_132:

  v56 = *MEMORY[0x1E69E9840];
}

void __43__AXHearingAidDevice_setValue_forProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  if (v4 == [v3 index])
  {
    [v9 setIsSelected:1];
  }

  else
  {
    v5 = [*(a1 + 32) leftSelectedStreamingProgram];
    [v9 setIsSelected:{objc_msgSend(v5, "index") == objc_msgSend(v9, "index")}];
  }

  v6 = *(a1 + 40);
  if (v6 == [v9 index])
  {
    [*(a1 + 32) setLeftSelectedProgram:v9];
    v7 = *(a1 + 32);
    v8 = [v7 leftPeripheral];
    [v7 delayWriteProperty:1024 forPeripheral:v8];
  }
}

void __43__AXHearingAidDevice_setValue_forProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  if (v4 == [v3 index])
  {
    [v9 setIsSelected:1];
  }

  else
  {
    v5 = [*(a1 + 32) rightSelectedStreamingProgram];
    [v9 setIsSelected:{objc_msgSend(v5, "index") == objc_msgSend(v9, "index")}];
  }

  v6 = *(a1 + 40);
  if (v6 == [v9 index])
  {
    [*(a1 + 32) setRightSelectedProgram:v9];
    v7 = *(a1 + 32);
    v8 = [v7 rightPeripheral];
    [v7 delayWriteProperty:1024 forPeripheral:v8];
  }
}

void __43__AXHearingAidDevice_setValue_forProperty___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  if (v4 == [v3 index])
  {
    [v9 setIsSelected:1];
  }

  else
  {
    v5 = [*(a1 + 32) leftSelectedProgram];
    [v9 setIsSelected:{objc_msgSend(v5, "index") == objc_msgSend(v9, "index")}];
  }

  v6 = *(a1 + 40);
  if (v6 == [v9 index])
  {
    [*(a1 + 32) setLeftSelectedStreamingProgram:v9];
    if ([*(a1 + 32) deviceSupportsProperty:0x800000000])
    {
      v7 = *(a1 + 32);
      v8 = [v7 leftPeripheral];
      [v7 delayWriteProperty:0x800000000 forPeripheral:v8];
    }
  }
}

void __43__AXHearingAidDevice_setValue_forProperty___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  if (v4 == [v3 index])
  {
    [v9 setIsSelected:1];
  }

  else
  {
    v5 = [*(a1 + 32) rightSelectedProgram];
    [v9 setIsSelected:{objc_msgSend(v5, "index") == objc_msgSend(v9, "index")}];
  }

  v6 = *(a1 + 40);
  if (v6 == [v9 index])
  {
    [*(a1 + 32) setRightSelectedStreamingProgram:v9];
    if ([*(a1 + 32) deviceSupportsProperty:0x800000000])
    {
      v7 = *(a1 + 32);
      v8 = [v7 rightPeripheral];
      [v7 delayWriteProperty:0x800000000 forPeripheral:v8];
    }
  }
}

- (id)valueForProperty:(unint64_t)property
{
  v103[2] = *MEMORY[0x1E69E9840];
  if (property < 0x800000)
  {
    if (property > 4095)
    {
      if (property >= 0x20000)
      {
        if (property >= 0x100000)
        {
          if (property != 0x100000)
          {
            if (property == 0x200000)
            {
              v51 = MEMORY[0x1E695DEC8];
              v52 = MEMORY[0x1E696AD98];
              leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
              model2 = [v52 numberWithInteger:{objc_msgSend(leftPeripheral, "state")}];
              v53 = MEMORY[0x1E696AD98];
              rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
              v55 = [v53 numberWithInteger:{objc_msgSend(rightPeripheral, "state")}];
              v24 = [v51 arrayWithObjects:{model2, v55, 0}];

LABEL_112:
              goto LABEL_158;
            }

            if (property != 0x400000)
            {
              goto LABEL_115;
            }

            leftPeripheral = [MEMORY[0x1E695DF70] array];
            leftFirmwareVersion = [(AXHearingAidDevice *)self leftFirmwareVersion];
            if (leftFirmwareVersion)
            {
              leftFirmwareVersion2 = [(AXHearingAidDevice *)self leftFirmwareVersion];
              [leftPeripheral addObject:leftFirmwareVersion2];
            }

            else
            {
              [leftPeripheral addObject:&stru_1F5614A78];
            }

            rightFirmwareVersion = [(AXHearingAidDevice *)self rightFirmwareVersion];
            if (rightFirmwareVersion)
            {
              rightFirmwareVersion2 = [(AXHearingAidDevice *)self rightFirmwareVersion];
              goto LABEL_154;
            }

            goto LABEL_155;
          }

          model = [(AXHearingAidDevice *)self model];
        }

        else
        {
          if (property == 0x20000)
          {
            goto LABEL_71;
          }

          if (property == 0x40000)
          {
            name = [(AXHearingAidDevice *)self name];
            goto LABEL_135;
          }

          if (property != 0x80000)
          {
            goto LABEL_115;
          }

          model = [(AXHearingAidDevice *)self manufacturer];
        }

        leftPeripheral = model;
        firstObject = [model firstObject];
        goto LABEL_157;
      }

      if (property < 0x4000)
      {
        if (property != 4096 && property != 0x2000)
        {
          goto LABEL_115;
        }

        goto LABEL_71;
      }

      if (property == 0x4000 || property == 0x8000)
      {
        goto LABEL_71;
      }

      if (property != 0x10000)
      {
        goto LABEL_115;
      }

      leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
      v18 = [(AXHearingAidDevice *)self availablePropertiesForPeripheral:leftPeripheral2];

      rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
      v20 = [(AXHearingAidDevice *)self availablePropertiesForPeripheral:rightPeripheral2];

      leftPeripheral = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18];
      v100[0] = leftPeripheral;
      model2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
      v100[1] = model2;
      v22 = MEMORY[0x1E695DEC8];
      v23 = v100;
      goto LABEL_89;
    }

    if (property <= 63)
    {
      if (property <= 7)
      {
        if (property != 2)
        {
          if (property == 4)
          {
            v5 = MEMORY[0x1E695DEC8];
            v30 = MEMORY[0x1E696AD98];
            [(AXHearingAidDevice *)self leftBatteryLevel];
            leftPeripheral = [v30 numberWithDouble:?];
            v8 = MEMORY[0x1E696AD98];
            [(AXHearingAidDevice *)self rightBatteryLevel];
            goto LABEL_94;
          }

          goto LABEL_115;
        }

        goto LABEL_71;
      }

      if (property != 8)
      {
        if (property != 16 && property != 32)
        {
          goto LABEL_115;
        }

        leftPeripheral = [MEMORY[0x1E695DF70] array];
        leftUUID = [(AXHearingAidDevice *)self leftUUID];
        if (leftUUID)
        {
          leftUUID2 = [(AXHearingAidDevice *)self leftUUID];
          [leftPeripheral addObject:leftUUID2];
        }

        else
        {
          [leftPeripheral addObject:&stru_1F5614A78];
        }

        rightFirmwareVersion = [(AXHearingAidDevice *)self rightUUID];
        if (rightFirmwareVersion)
        {
          rightFirmwareVersion2 = [(AXHearingAidDevice *)self rightUUID];
LABEL_154:
          v79 = rightFirmwareVersion2;
          [leftPeripheral addObject:rightFirmwareVersion2];

LABEL_156:
          firstObject = [MEMORY[0x1E695DEC8] arrayWithArray:leftPeripheral];
          goto LABEL_157;
        }

LABEL_155:
        [leftPeripheral addObject:&stru_1F5614A78];
        goto LABEL_156;
      }

      v10 = MEMORY[0x1E696AD98];
      availableEars = [(AXHearingAidDevice *)self availableEars];
LABEL_102:
      name = [v10 numberWithUnsignedInt:availableEars];
      goto LABEL_135;
    }

    if (property <= 255)
    {
      if (property == 64)
      {
        v5 = MEMORY[0x1E695DEC8];
        v34 = MEMORY[0x1E696AD98];
        [(AXHearingAidDevice *)self leftMicrophoneVolume];
        leftPeripheral = [v34 numberWithDouble:?];
        v8 = MEMORY[0x1E696AD98];
        [(AXHearingAidDevice *)self rightMicrophoneVolume];
        goto LABEL_94;
      }

      if (property == 128)
      {
        v5 = MEMORY[0x1E695DEC8];
        v31 = MEMORY[0x1E696AD98];
        [(AXHearingAidDevice *)self leftStreamVolume];
        leftPeripheral = [v31 numberWithDouble:?];
        v8 = MEMORY[0x1E696AD98];
        [(AXHearingAidDevice *)self rightStreamVolume];
        goto LABEL_94;
      }

      goto LABEL_115;
    }

    if (property == 256)
    {
      array = [MEMORY[0x1E695DF70] array];
      leftPrograms = [(AXHearingAidDevice *)self leftPrograms];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __39__AXHearingAidDevice_valueForProperty___block_invoke;
      v89[3] = &unk_1E85CAC60;
      v90 = array;
      leftPeripheral = array;
      [leftPrograms enumerateObjectsUsingBlock:v89];

      array2 = [MEMORY[0x1E695DF70] array];
      rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __39__AXHearingAidDevice_valueForProperty___block_invoke_2;
      v87[3] = &unk_1E85CAC60;
      v88 = array2;
      v39 = array2;
      [rightPrograms enumerateObjectsUsingBlock:v87];

      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:{leftPeripheral, v39, 0}];

      goto LABEL_158;
    }

    if (property == 512)
    {
      v102[0] = &unk_1F5623B00;
      leftPeripheral = [(AXHearingAidDevice *)self manufacturer];
      v102[1] = &unk_1F5623B18;
      v103[0] = leftPeripheral;
      model2 = [(AXHearingAidDevice *)self model];
      v103[1] = model2;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
LABEL_111:
      v24 = v40;
      goto LABEL_112;
    }

    if (property != 1024)
    {
      goto LABEL_115;
    }

    leftSelectedProgram = [(AXHearingAidDevice *)self leftSelectedProgram];
    if (leftSelectedProgram)
    {
      leftSelectedProgram2 = [(AXHearingAidDevice *)self leftSelectedProgram];
      index = [leftSelectedProgram2 index];
    }

    else
    {
      index = 0xFFFFFFFFLL;
    }

    rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedProgram];
    if (rightSelectedProgram)
    {
      rightSelectedProgram2 = [(AXHearingAidDevice *)self rightSelectedProgram];
      goto LABEL_145;
    }

LABEL_146:
    index2 = 0xFFFFFFFFLL;
    goto LABEL_147;
  }

  if (property <= 0x7FFFFFFFFLL)
  {
    if (property > 0x1FFFFFFF)
    {
      if (property <= 0xFFFFFFFFLL)
      {
        if (property != 0x20000000)
        {
          if (property != 0x40000000)
          {
            if (property == 0x80000000)
            {
              v5 = MEMORY[0x1E695DEC8];
              v6 = MEMORY[0x1E696AD98];
              [(AXHearingAidDevice *)self leftSensitivity];
              leftPeripheral = [v6 numberWithDouble:?];
              v8 = MEMORY[0x1E696AD98];
              [(AXHearingAidDevice *)self rightSensitivity];
LABEL_94:
              v50 = [v8 numberWithDouble:?];
LABEL_110:
              model2 = v50;
              v40 = [v5 arrayWithObjects:{leftPeripheral, v50, 0}];
              goto LABEL_111;
            }

            goto LABEL_115;
          }

          v101[0] = &unk_1F5623B48;
          leftPeripheral = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice supportsCombinedPresets](self, "supportsCombinedPresets")}];
          v101[1] = leftPeripheral;
          model2 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice supportsCombinedVolumes](self, "supportsCombinedVolumes")}];
          v101[2] = model2;
          v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice supportsBinauralStreaming](self, "supportsBinauralStreaming")}];
          v101[3] = v58;
          v59 = MEMORY[0x1E695DEC8];
          v60 = v101;
          goto LABEL_106;
        }

        if (([(AXHearingAidDevice *)self leftAvailable]|| [(AXHearingAidDevice *)self rightAvailable]) && (leftPeripheralPaired = self->_leftPeripheralPaired, leftPeripheralPaired == [(AXHearingAidDevice *)self leftAvailable]))
        {
          rightPeripheralPaired = self->_rightPeripheralPaired;
          isPaired = rightPeripheralPaired == [(AXHearingAidDevice *)self rightAvailable];
        }

        else
        {
          isPaired = 0;
        }

        v48 = MEMORY[0x1E696AD98];
        goto LABEL_134;
      }

      switch(property)
      {
        case 0x100000000uLL:
          v5 = MEMORY[0x1E695DEC8];
          leftPeripheral = [MEMORY[0x1E696AD98] numberWithShort:{-[AXHearingAidDevice leftMicrophoneVolumeSteps](self, "leftMicrophoneVolumeSteps")}];
          v25 = MEMORY[0x1E696AD98];
          rightMicrophoneVolumeSteps = [(AXHearingAidDevice *)self rightMicrophoneVolumeSteps];
          goto LABEL_109;
        case 0x200000000uLL:
          v5 = MEMORY[0x1E695DEC8];
          leftPeripheral = [MEMORY[0x1E696AD98] numberWithShort:{-[AXHearingAidDevice leftStreamVolumeSteps](self, "leftStreamVolumeSteps")}];
          v25 = MEMORY[0x1E696AD98];
          rightMicrophoneVolumeSteps = [(AXHearingAidDevice *)self rightStreamVolumeSteps];
          goto LABEL_109;
        case 0x400000000uLL:
          v5 = MEMORY[0x1E695DEC8];
          leftPeripheral = [MEMORY[0x1E696AD98] numberWithShort:{-[AXHearingAidDevice leftSensitivitySteps](self, "leftSensitivitySteps")}];
          v25 = MEMORY[0x1E696AD98];
          rightMicrophoneVolumeSteps = [(AXHearingAidDevice *)self rightSensitivitySteps];
          goto LABEL_109;
      }

      goto LABEL_115;
    }

    if (property > 0x1FFFFFF)
    {
      if (property != 0x2000000)
      {
        if (property == 0x4000000)
        {
          v46 = MEMORY[0x1E696AD98];
          isPaired = [(AXHearingAidDevice *)self isPaired];
          v48 = v46;
LABEL_134:
          name = [v48 numberWithBool:isPaired];
          goto LABEL_135;
        }

        if (property == 0x10000000)
        {
          v24 = MEMORY[0x1E695E118];
          goto LABEL_159;
        }

        goto LABEL_115;
      }

LABEL_71:
      v32 = HCLogHearingAids();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = hearingPropertyDescription(property);
        *buf = 138412290;
        propertyCopy3 = v33;
        _os_log_impl(&dword_1DA5E2000, v32, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: valueForProperty, Reading component property %@", buf, 0xCu);
      }

      v24 = &stru_1F5614A78;
      goto LABEL_159;
    }

    if (property != 0x800000)
    {
      if (property != 0x1000000)
      {
        goto LABEL_115;
      }

      name = [(AXHearingAidDevice *)self deviceUUID];
      goto LABEL_135;
    }

    leftPeripheral = [MEMORY[0x1E695DF70] array];
    leftHardwareVersion = [(AXHearingAidDevice *)self leftHardwareVersion];
    if (leftHardwareVersion)
    {
      leftHardwareVersion2 = [(AXHearingAidDevice *)self leftHardwareVersion];
      [leftPeripheral addObject:leftHardwareVersion2];
    }

    else
    {
      [leftPeripheral addObject:&stru_1F5614A78];
    }

    rightFirmwareVersion = [(AXHearingAidDevice *)self rightHardwareVersion];
    if (rightFirmwareVersion)
    {
      rightFirmwareVersion2 = [(AXHearingAidDevice *)self rightHardwareVersion];
      goto LABEL_154;
    }

    goto LABEL_155;
  }

  if (property > 0xFFFFFFFFFFLL)
  {
    if (property > 0x7FFFFFFFFFFLL)
    {
      if (property == 0x80000000000)
      {
        v97[0] = &unk_1F5623B48;
        leftPeripheral = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice requiresCombinedPresets](self, "requiresCombinedPresets")}];
        v97[1] = leftPeripheral;
        model2 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice requiresCombinedVolumes](self, "requiresCombinedVolumes")}];
        v97[2] = model2;
        v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXHearingAidDevice requiresBinauralStreaming](self, "requiresBinauralStreaming")}];
        v97[3] = v58;
        v59 = MEMORY[0x1E695DEC8];
        v60 = v97;
LABEL_106:
        v24 = [v59 arrayWithObjects:v60 count:4];

        goto LABEL_112;
      }

      if (property != 0x100000000000)
      {
        if (property != 0x200000000000)
        {
          goto LABEL_115;
        }

        name = [(AXHearingAidDevice *)self RSSI];
LABEL_135:
        v24 = name;
        goto LABEL_159;
      }

      leftPeripheral = [MEMORY[0x1E695DF70] array];
      leftPeripheralUUID = [(AXHearingAidDevice *)self leftPeripheralUUID];
      if (leftPeripheralUUID)
      {
        leftPeripheralUUID2 = [(AXHearingAidDevice *)self leftPeripheralUUID];
        [leftPeripheral addObject:leftPeripheralUUID2];
      }

      else
      {
        [leftPeripheral addObject:&stru_1F5614A78];
      }

      rightFirmwareVersion = [(AXHearingAidDevice *)self rightPeripheralUUID];
      if (rightFirmwareVersion)
      {
        rightFirmwareVersion2 = [(AXHearingAidDevice *)self rightPeripheralUUID];
        goto LABEL_154;
      }

      goto LABEL_155;
    }

    switch(property)
    {
      case 0x10000000000uLL:
        v10 = MEMORY[0x1E696AD98];
        availableEars = [(AXHearingAidDevice *)self availableInputEars];
        break;
      case 0x20000000000uLL:
        name = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXHearingAidDevice deviceProtocol](self, "deviceProtocol")}];
        goto LABEL_135;
      case 0x40000000000uLL:
        v10 = MEMORY[0x1E696AD98];
        availableEars = [(AXHearingAidDevice *)self earsSupportingWatch];
        break;
      default:
        goto LABEL_115;
    }

    goto LABEL_102;
  }

  if (property <= 0x1FFFFFFFFFLL)
  {
    if (property != 0x800000000)
    {
      if (property != 0x1000000000)
      {
        goto LABEL_115;
      }

      leftPeripheral = [MEMORY[0x1E696AD98] numberWithChar:self->_leftBass];
      v98[0] = leftPeripheral;
      model2 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightBass];
      v98[1] = model2;
      v22 = MEMORY[0x1E695DEC8];
      v23 = v98;
      goto LABEL_89;
    }

    leftSelectedStreamingProgram = [(AXHearingAidDevice *)self leftSelectedStreamingProgram];
    if (leftSelectedStreamingProgram)
    {
      leftSelectedStreamingProgram2 = [(AXHearingAidDevice *)self leftSelectedStreamingProgram];
      index = [leftSelectedStreamingProgram2 index];
    }

    else
    {
      index = 0xFFFFFFFFLL;
    }

    rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedStreamingProgram];
    if (rightSelectedProgram)
    {
      rightSelectedProgram2 = [(AXHearingAidDevice *)self rightSelectedStreamingProgram];
LABEL_145:
      v74 = rightSelectedProgram2;
      index2 = [rightSelectedProgram2 index];

LABEL_147:
      v76 = MEMORY[0x1E695DEC8];
      v77 = [MEMORY[0x1E696AD98] numberWithInt:index];
      v78 = [MEMORY[0x1E696AD98] numberWithInt:index2];
      v24 = [v76 arrayWithObjects:{v77, v78, 0}];

      goto LABEL_159;
    }

    goto LABEL_146;
  }

  switch(property)
  {
    case 0x2000000000uLL:
      leftPeripheral = [MEMORY[0x1E696AD98] numberWithChar:self->_leftTreble];
      v99[0] = leftPeripheral;
      model2 = [MEMORY[0x1E696AD98] numberWithChar:self->_rightTreble];
      v99[1] = model2;
      v22 = MEMORY[0x1E695DEC8];
      v23 = v99;
LABEL_89:
      v40 = [v22 arrayWithObjects:v23 count:2];
      goto LABEL_111;
    case 0x4000000000uLL:
      v5 = MEMORY[0x1E695DEC8];
      v49 = MEMORY[0x1E696AD98];
      [(AXHearingAidDevice *)self leftMixedVolume];
      leftPeripheral = [v49 numberWithDouble:?];
      v8 = MEMORY[0x1E696AD98];
      [(AXHearingAidDevice *)self rightMixedVolume];
      goto LABEL_94;
    case 0x8000000000uLL:
      v5 = MEMORY[0x1E695DEC8];
      leftPeripheral = [MEMORY[0x1E696AD98] numberWithShort:{-[AXHearingAidDevice leftMixedVolumeSteps](self, "leftMixedVolumeSteps")}];
      v25 = MEMORY[0x1E696AD98];
      rightMicrophoneVolumeSteps = [(AXHearingAidDevice *)self rightMixedVolumeSteps];
LABEL_109:
      v50 = [v25 numberWithShort:rightMicrophoneVolumeSteps];
      goto LABEL_110;
  }

LABEL_115:
  v63 = HCLogHearingAids();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    propertyCopy3 = property;
    _os_log_impl(&dword_1DA5E2000, v63, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: valueForProperty, Compound property: %ld", buf, 0xCu);
  }

  leftPeripheral = [MEMORY[0x1E695DF90] dictionary];
  v64 = 0;
  while (((1 << v64) & property) == 0)
  {
LABEL_127:
    if (++v64 == 64)
    {
      goto LABEL_167;
    }
  }

  characteristicsUUIDs = [objc_opt_class() characteristicsUUIDs];
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1 << v64];
  v67 = [characteristicsUUIDs objectForKey:v66];

  if (v64 != 16 && !v67)
  {
    v68 = HCLogHearingAids();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      propertyCopy3 = property;
      _os_log_impl(&dword_1DA5E2000, v68, OS_LOG_TYPE_DEFAULT, "Ignored property without characteristic: %ld", buf, 0xCu);
    }

LABEL_126:

    goto LABEL_127;
  }

  if (1 << v64 != property)
  {
    v68 = [(AXHearingAidDevice *)self valueForProperty:1 << v64];
    if (v68)
    {
      v69 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:1 << v64];
      [leftPeripheral setObject:v68 forKey:v69];
    }

    goto LABEL_126;
  }

  v85 = HCLogHearingAids();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
  {
    [(AXHearingAidDevice *)property valueForProperty:v85];
  }

LABEL_167:
  if ([leftPeripheral count])
  {
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithDictionary:leftPeripheral];
LABEL_157:
    v24 = firstObject;
  }

  else
  {
    v86 = HCLogHearingAids();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      propertyCopy3 = property;
      _os_log_impl(&dword_1DA5E2000, v86, OS_LOG_TYPE_DEFAULT, "Unknown property: %ld", buf, 0xCu);
    }

    v24 = &stru_1F5614A78;
  }

LABEL_158:

LABEL_159:
  v80 = HCLogHearingAids();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:property];
    *buf = 138412802;
    propertyCopy3 = serviceTypeDescription;
    v93 = 2112;
    v94 = v84;
    v95 = 2112;
    v96 = v24;
    _os_log_debug_impl(&dword_1DA5E2000, v80, OS_LOG_TYPE_DEBUG, "HearingAidDevice: valueForProperty, %@ property %@ value %@", buf, 0x20u);
  }

  v81 = *MEMORY[0x1E69E9840];

  return v24;
}

void __39__AXHearingAidDevice_valueForProperty___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transportRepresentation];
  [v2 addObject:v3];
}

void __39__AXHearingAidDevice_valueForProperty___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transportRepresentation];
  [v2 addObject:v3];
}

- (id)deviceDescription
{
  v21 = *MEMORY[0x1E69E9840];
  deviceUUID = [(AXHearingAidDevice *)self deviceUUID];
  v4 = [deviceUUID length];

  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    descriptiveProperties = [(AXHearingAidDevice *)self descriptiveProperties];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __39__AXHearingAidDevice_deviceDescription__block_invoke;
    v16 = &unk_1E85CACD0;
    selfCopy = self;
    v18 = dictionary;
    v7 = dictionary;
    [descriptiveProperties enumerateObjectsUsingBlock:&v13];

    v8 = MEMORY[0x1E695DF20];
    v9 = [(AXHearingAidDevice *)self deviceUUID:v13];
    v10 = [v8 dictionaryWithObject:v7 forKey:v9];
  }

  else
  {
    v7 = HCLogHearingAids();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "DeviceUUID NULL %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __39__AXHearingAidDevice_deviceDescription__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForProperty:{objc_msgSend(v4, "integerValue")}];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

- (void)peripheralDidUpdateName:(id)name
{
  name = [name name];

  if (name)
  {

    [(AXHearingAidDevice *)self updateName];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  v15 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  servicesCopy = services;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = peripheralCopy;
    v13 = 2112;
    v14 = servicesCopy;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: Reloading services %@, %@", &v11, 0x16u);
  }

  discoveringServiceUUIDs = [(AXHearingAidDevice *)self discoveringServiceUUIDs];
  [peripheralCopy discoverServices:discoveringServiceUUIDs];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v36 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (servicesCopy)
  {
    v8 = HCLogHearingAids();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
      *buf = 138412802;
      v31 = serviceTypeDescription;
      v32 = 2112;
      v33 = peripheralCopy;
      v34 = 2112;
      v35 = servicesCopy;
      _os_log_error_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_ERROR, "HearingAidDevice peripheral: didDiscoverServices, Error discovering services %@ %@ %@", buf, 0x20u);
LABEL_10:
    }
  }

  else
  {
    services = [peripheralCopy services];
    v11 = [services count];

    v8 = HCLogHearingAids();
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        serviceTypeDescription2 = [(AXHearingAidDevice *)self serviceTypeDescription];
        identifier = [peripheralCopy identifier];
        services2 = [peripheralCopy services];
        *buf = 138412802;
        v31 = serviceTypeDescription2;
        v32 = 2112;
        v33 = identifier;
        v34 = 2112;
        v35 = services2;
        _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didDiscoverServices, %@ %@ %@", buf, 0x20u);
      }

      serviceUUID = [(AXHearingAidDevice *)self serviceUUID];
      v17 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
      v18 = [MEMORY[0x1E695D2A0] UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
      services3 = [peripheralCopy services];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __53__AXHearingAidDevice_peripheral_didDiscoverServices___block_invoke;
      v24[3] = &unk_1E85CAD20;
      v25 = v17;
      v26 = v18;
      v27 = peripheralCopy;
      v28 = serviceUUID;
      selfCopy = self;
      v20 = serviceUUID;
      v21 = v18;
      v8 = v17;
      [services3 enumerateObjectsUsingBlock:v24];
    }

    else if (v12)
    {
      serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
      identifier2 = [peripheralCopy identifier];
      *buf = 138412546;
      v31 = serviceTypeDescription;
      v32 = 2112;
      v33 = identifier2;
      _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didDiscoverServices, EMPTY SERVICES %@ %@", buf, 0x16u);

      goto LABEL_10;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __53__AXHearingAidDevice_peripheral_didDiscoverServices___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 UUID];
  v6 = [v5 isEqual:*(a1 + 32)];
  if (v6 & 1) != 0 || ([v4 UUID], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isEqual:", *(a1 + 40))))
  {
    v7 = [v4 characteristics];
    v8 = [v7 count];

    if ((v6 & 1) == 0)
    {
    }

    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = [v4 UUID];
  if ([v9 isEqual:*(a1 + 56)])
  {
    v10 = [v4 characteristics];
    v11 = [v10 count];

    if (!v11)
    {
      [*(a1 + 64) setLeftLoadedProperties:{objc_msgSend(*(a1 + 64), "leftLoadedProperties") | 0x8000}];
      [*(a1 + 64) setRightLoadedProperties:{objc_msgSend(*(a1 + 64), "rightLoadedProperties") | 0x8000}];
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = *(a1 + 64);
      v14 = [objc_opt_class() characteristicsUUIDs];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53__AXHearingAidDevice_peripheral_didDiscoverServices___block_invoke_2;
      v23[3] = &unk_1E85CACF8;
      v24 = v12;
      v15 = v12;
      [v14 enumerateKeysAndObjectsUsingBlock:v23];

      [*(a1 + 48) discoverCharacteristics:v15 forService:v4];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v16 = [v4 UUID];
  v17 = [v16 isEqual:*(a1 + 40)];

  if (v17)
  {
LABEL_13:
    [*(a1 + 48) discoverCharacteristics:0 forService:v4];
    goto LABEL_19;
  }

  v18 = [v4 characteristics];
  v19 = [v18 count];

  if (v19)
  {
    [*(a1 + 64) loadBasicProperties];
  }

  else
  {
    v20 = HCLogHearingAids();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v4 UUID];
      *buf = 138412546;
      v26 = v4;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_1DA5E2000, v20, OS_LOG_TYPE_DEFAULT, "Unknown service: %@ - %@", buf, 0x16u);
    }
  }

LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v52 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v11 = HCLogHearingAids();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
    identifier = [peripheralCopy identifier];
    characteristics = [serviceCopy characteristics];
    *buf = 138413058;
    *v49 = serviceTypeDescription;
    *&v49[8] = 2112;
    *&v49[10] = identifier;
    *&v49[18] = 2112;
    *&v49[20] = serviceCopy;
    v50 = 2112;
    v51 = characteristics;
    _os_log_debug_impl(&dword_1DA5E2000, v11, OS_LOG_TYPE_DEBUG, "HearingAidDevice peripheral: didDiscoverCharacteristicsForService, %@ %@, service %@ - %@", buf, 0x2Au);
  }

  if (errorCopy)
  {
    serviceUUID = HCLogHearingAids();
    if (os_log_type_enabled(serviceUUID, OS_LOG_TYPE_ERROR))
    {
      [AXHearingAidDevice peripheral:didDiscoverCharacteristicsForService:error:];
    }

    goto LABEL_28;
  }

  characteristics2 = [serviceCopy characteristics];
  v14 = [characteristics2 count];

  serviceUUID = HCLogHearingAids();
  v15 = os_log_type_enabled(serviceUUID, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v15)
    {
      characteristics3 = [serviceCopy characteristics];
      *buf = 138412546;
      *v49 = peripheralCopy;
      *&v49[8] = 2112;
      *&v49[10] = characteristics3;
      _os_log_impl(&dword_1DA5E2000, serviceUUID, OS_LOG_TYPE_DEFAULT, "%@ - %@", buf, 0x16u);
    }

    serviceUUID = [(AXHearingAidDevice *)self serviceUUID];
    v17 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
    v18 = [MEMORY[0x1E695D2A0] UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
    uUID = [serviceCopy UUID];
    v20 = [uUID isEqual:v17];

    if (v20)
    {
      characteristics4 = [serviceCopy characteristics];
      v22 = [characteristics4 count];

      if (v22)
      {
        characteristics5 = [serviceCopy characteristics];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __76__AXHearingAidDevice_peripheral_didDiscoverCharacteristicsForService_error___block_invoke;
        v46[3] = &unk_1E85CAD48;
        v46[4] = self;
        v47 = peripheralCopy;
        [characteristics5 enumerateObjectsUsingBlock:v46];
      }

      else
      {
        [peripheralCopy discoverCharacteristics:0 forService:serviceCopy];
      }

      goto LABEL_27;
    }

    uUID2 = [serviceCopy UUID];
    v25 = [uUID2 isEqual:v18];

    if (v25)
    {
      v26 = HCLogHearingAids();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DA5E2000, v26, OS_LOG_TYPE_DEFAULT, "Loaded auth service characteristics", buf, 2u);
      }
    }

    else
    {
      uUID3 = [serviceCopy UUID];
      v31 = [uUID3 isEqual:serviceUUID];

      if (v31)
      {
        [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x10000];
        [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x10000];
        if ([(AXHearingAidDevice *)self isPaired]|| [(AXHearingAidDevice *)self peripheral:peripheralCopy didLoadProperty:56])
        {
          if (![(AXHearingAidDevice *)self isPaired])
          {
            goto LABEL_27;
          }

          rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

          if (rightPeripheral == peripheralCopy)
          {
            [(AXHearingAidDevice *)self setRightMicrophoneVolumeSteps:1];
            [(AXHearingAidDevice *)self setRightSensitivitySteps:1];
            [(AXHearingAidDevice *)self setRightStreamVolumeSteps:1];
            [(AXHearingAidDevice *)self setRightMixedVolumeSteps:1];
          }

          else
          {
            [(AXHearingAidDevice *)self setLeftMicrophoneVolumeSteps:1];
            [(AXHearingAidDevice *)self setLeftSensitivitySteps:1];
            [(AXHearingAidDevice *)self setLeftStreamVolumeSteps:1];
            [(AXHearingAidDevice *)self setLeftMixedVolumeSteps:1];
          }

          v41 = +[AXHearingAidDeviceController sharedController];
          [v41 device:self didUpdateProperty:0x5F7800000C0];

          [(AXHearingAidDevice *)self loadRequiredProperties];
          if (!self->_keepInSync)
          {
            goto LABEL_27;
          }

          leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
          [(AXHearingAidDevice *)self setNotify:1 forPeripheral:leftPeripheral];

          keepInSync = self->_keepInSync;
          rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
          [(AXHearingAidDevice *)self setNotify:keepInSync forPeripheral:rightPeripheral2];

          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]& 0xFFFFFF007FFEFA3BLL];
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]& 0xFFFFFF007FFEFA3BLL];
          leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
          [(AXHearingAidDevice *)self loadProperties:0xFF800105C4 forPeripheral:leftPeripheral2 withRetryPeriod:0.0];

          rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];
          [(AXHearingAidDevice *)self loadProperties:0xFF800105C4 forPeripheral:rightPeripheral3 withRetryPeriod:0.0];
        }

        else
        {
          rightPeripheral3 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:8];
          if (rightPeripheral3)
          {
            [(AXHearingAidDevice *)self readValueForCharacteristic:rightPeripheral3 fromPeripheral:peripheralCopy];
          }

          v37 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:0x10000000000];
          if (!v37)
          {
            v38 = HCLogHearingAids();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1DA5E2000, v38, OS_LOG_TYPE_DEFAULT, "The characteristic for input availability is nil", buf, 2u);
            }

            v39 = +[HUHearingAidSettings sharedInstance];
            [v39 setAvailableInputEars:0];

            [(AXHearingAidDevice *)self setAvailableInputEars:0];
            rightPeripheral4 = [(AXHearingAidDevice *)self rightPeripheral];

            if (rightPeripheral4 == peripheralCopy)
            {
              [(AXHearingAidDevice *)self setRightLeaVersion:1];
            }

            else
            {
              [(AXHearingAidDevice *)self setLeftLeaVersion:1];
            }
          }

          [(AXHearingAidDevice *)self updateName];
        }

LABEL_27:
        goto LABEL_28;
      }

      v26 = HCLogHearingAids();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [peripheralCopy hasTag:@"IsMFiAuthenticated_CertClass0B"];
        uUID4 = [serviceCopy UUID];
        *buf = 67109634;
        *v49 = v33;
        *&v49[4] = 2112;
        *&v49[6] = serviceCopy;
        *&v49[14] = 2112;
        *&v49[16] = uUID4;
        _os_log_impl(&dword_1DA5E2000, v26, OS_LOG_TYPE_DEFAULT, "Unknown service: (%d) %@ - %@", buf, 0x1Cu);
      }
    }

    goto LABEL_27;
  }

  if (v15)
  {
    *buf = 138412290;
    *v49 = serviceCopy;
    _os_log_impl(&dword_1DA5E2000, serviceUUID, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didDiscoverCharacteristicsForService, EMPTY CHARACTERISTICS %@", buf, 0xCu);
  }

LABEL_28:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = HCLogHearingAids();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [characteristicCopy UUID];
      v13 = 138412802;
      v14 = characteristicCopy;
      v15 = 2112;
      v16 = uUID;
      v17 = 2112;
      v18 = errorCopy;
      _os_log_impl(&dword_1DA5E2000, v10, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateValueForCharacteristic, Error reading characteristic value (%@)(%@): %@", &v13, 0x20u);
    }
  }

  else
  {
    [(AXHearingAidDevice *)self peripheral:peripheral didUpdateCharacteristic:characteristicCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didUpdateCharacteristic:(id)characteristic
{
  v403 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    identifier = [peripheralCopy identifier];
    v53 = [characteristicCopy description];
    *buf = 138412802;
    *&buf[4] = serviceTypeDescription;
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    v399 = v53;
    _os_log_debug_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEBUG, "HearingAidDevice peripheral: didUpdateCharacteristic, %@ %@ %@", buf, 0x20u);
  }

  isFakeDevice = [(AXHearingAidDevice *)self isFakeDevice];
  if (peripheralCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = isFakeDevice;
  }

  if (characteristicCopy && v9)
  {
    serviceUUID = [(AXHearingAidDevice *)self serviceUUID];
    v365 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
    service = [characteristicCopy service];
    uUID = [service UUID];
    v11 = [uUID isEqual:v365];

    if (v11)
    {
      v12 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2a29"];
      v13 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2a24"];
      v362 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2a26"];
      v360 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2a27"];
      value = [characteristicCopy value];
      if (![value length])
      {
LABEL_249:

        goto LABEL_474;
      }

      rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      value2 = [characteristicCopy value];
      v18 = [v16 initWithData:value2 encoding:4];

      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v21 = HCLogHearingAids();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        identifier2 = [peripheralCopy identifier];
        if (rightPeripheral == peripheralCopy)
        {
          v115 = @"R";
        }

        else
        {
          v115 = @"L";
        }

        leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
        identifier3 = [leftPeripheral identifier];
        rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
        identifier4 = [rightPeripheral2 identifier];
        *buf = 138413570;
        *&buf[4] = serviceTypeDescription;
        *&buf[12] = 2112;
        *&buf[14] = identifier2;
        *&buf[22] = 2112;
        v399 = v20;
        *v400 = 2112;
        *&v400[2] = v115;
        *&v400[10] = 2112;
        *&v400[12] = identifier3;
        v401 = 2112;
        v117 = identifier4;
        v402 = identifier4;
        _os_log_debug_impl(&dword_1DA5E2000, v21, OS_LOG_TYPE_DEBUG, "HearingAidDevice peripheral: didUpdateCharacteristic, %@ %@ DIS value: %@, ear: %@, L: %@, R: %@", buf, 0x3Eu);
      }

      if ([v20 length])
      {
        leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
        v23 = leftPeripheral2 != peripheralCopy;

        uUID2 = [characteristicCopy UUID];
        v25 = [uUID2 isEqual:v12];

        if (v25)
        {
          v26 = HCLogHearingAids();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            identifier5 = [peripheralCopy identifier];
            *buf = 138412802;
            *&buf[4] = serviceTypeDescription;
            *&buf[12] = 2112;
            *&buf[14] = identifier5;
            *&buf[22] = 2112;
            v399 = v20;
            _os_log_impl(&dword_1DA5E2000, v26, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateCharacteristic, Manufacturer found: %@ %@ |%@|", buf, 0x20u);
          }

          manufacturer = [(AXHearingAidDevice *)self manufacturer];
          v29 = [manufacturer objectAtIndexedSubscript:v23];
          v30 = [v29 isEqualToString:v20];

          if (v30)
          {
            goto LABEL_248;
          }

          manufacturer2 = [(AXHearingAidDevice *)self manufacturer];
          [manufacturer2 replaceObjectAtIndex:v23 withObject:v20];

          v32 = 0x80000;
          goto LABEL_247;
        }

        uUID3 = [characteristicCopy UUID];
        v55 = [uUID3 isEqual:v13];

        if (v55)
        {
          v56 = HCLogHearingAids();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            identifier6 = [peripheralCopy identifier];
            *buf = 138412802;
            *&buf[4] = serviceTypeDescription;
            *&buf[12] = 2112;
            *&buf[14] = identifier6;
            *&buf[22] = 2112;
            v399 = v20;
            _os_log_impl(&dword_1DA5E2000, v56, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateCharacteristic, Model Number found: %@ %@ |%@|", buf, 0x20u);
          }

          model = [(AXHearingAidDevice *)self model];
          v59 = [model objectAtIndexedSubscript:v23];
          v60 = [v59 isEqualToString:v20];

          if (v60)
          {
            goto LABEL_248;
          }

          model2 = [(AXHearingAidDevice *)self model];
          [model2 replaceObjectAtIndex:v23 withObject:v20];

          v32 = 0x100000;
          goto LABEL_247;
        }

        uUID4 = [characteristicCopy UUID];
        v80 = [uUID4 isEqual:v362];

        if (v80)
        {
          v81 = HCLogHearingAids();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            identifier7 = [peripheralCopy identifier];
            *buf = 138412802;
            *&buf[4] = serviceTypeDescription;
            *&buf[12] = 2112;
            *&buf[14] = identifier7;
            *&buf[22] = 2112;
            v399 = v20;
            _os_log_impl(&dword_1DA5E2000, v81, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateCharacteristic, Firmware version found: %@ %@ %@", buf, 0x20u);
          }

          if (rightPeripheral == peripheralCopy)
          {
            [(AXHearingAidDevice *)self setRightFirmwareVersion:v20];
          }

          else
          {
            [(AXHearingAidDevice *)self setLeftFirmwareVersion:v20];
          }

          v32 = 0x400000;
LABEL_247:
          v212 = +[AXHearingAidDeviceController sharedController];
          [v212 device:self didUpdateProperty:v32];

          [(AXHearingAidDevice *)self peripheralDidUpdateDeviceInfo];
          goto LABEL_248;
        }

        uUID5 = [characteristicCopy UUID];
        v96 = [uUID5 isEqual:v360];

        if (v96)
        {
          v97 = HCLogHearingAids();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            identifier8 = [peripheralCopy identifier];
            *buf = 138412802;
            *&buf[4] = serviceTypeDescription;
            *&buf[12] = 2112;
            *&buf[14] = identifier8;
            *&buf[22] = 2112;
            v399 = v20;
            _os_log_impl(&dword_1DA5E2000, v97, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateCharacteristic, Hardware version found: %@ %@ %@", buf, 0x20u);
          }

          if (rightPeripheral == peripheralCopy)
          {
            [(AXHearingAidDevice *)self setRightHardwareVersion:v20];
          }

          else
          {
            [(AXHearingAidDevice *)self setLeftHardwareVersion:v20];
          }

          v32 = 0x800000;
          goto LABEL_247;
        }
      }

LABEL_248:

      goto LABEL_249;
    }

    uUID6 = [service UUID];
    v34 = [uUID6 isEqual:serviceUUID];

    if (!v34)
    {
LABEL_474:

      goto LABEL_475;
    }

    v35 = [(AXHearingAidDevice *)self peripheral:peripheralCopy propertyForCharacteristic:characteristicCopy];
    v36 = HCLogHearingAids();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = hearingPropertyDescription(v35);
      value3 = [characteristicCopy value];
      leftPeripheral3 = [(AXHearingAidDevice *)self leftPeripheral];
      v40 = @"Right";
      *buf = 138413058;
      *&buf[4] = v37;
      if (leftPeripheral3 == peripheralCopy)
      {
        v40 = @"Left";
      }

      *&buf[12] = 2112;
      *&buf[14] = value3;
      *&buf[22] = 2112;
      v399 = v40;
      *v400 = 2112;
      *&v400[2] = peripheralCopy;
      _os_log_impl(&dword_1DA5E2000, v36, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didUpdateCharacteristic, Getting property: %@ (%@) for %@ - %@", buf, 0x2Au);
    }

    v397[0] = MEMORY[0x1E69E9820];
    v397[1] = 3221225472;
    v397[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke;
    v397[3] = &unk_1E85CAD70;
    v397[4] = self;
    v397[5] = v35;
    [(AXHearingAidDevice *)self checkPairingStatusWithCompletion:v397];
    if (v35 <= 0x3FFFFFFF)
    {
      if (v35 > 255)
      {
        if (v35 >= 0x2000)
        {
          if (v35 < 0x20000)
          {
            if (v35 == 0x2000)
            {
              rightPeripheral3 = [(AXHearingAidDevice *)self rightPeripheral];

              v386 = 0;
              v119 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:4096];
              value4 = [v119 value];
              [value4 getBytes:&v386 length:1];

              if (rightPeripheral3 == peripheralCopy)
              {
                rightPrograms = [(AXHearingAidDevice *)self rightPrograms];
                [(AXHearingAidDevice *)self rightSelectedProgram];
              }

              else
              {
                rightPrograms = [(AXHearingAidDevice *)self leftPrograms];
                [(AXHearingAidDevice *)self leftSelectedProgram];
              }
              v234 = ;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v399 = __Block_byref_object_copy__0;
              *v400 = __Block_byref_object_dispose__0;
              *&v400[8] = 0;
              v380 = 0;
              v381 = &v380;
              v382 = 0x3032000000;
              v383 = __Block_byref_object_copy__0;
              v384 = __Block_byref_object_dispose__0;
              v385 = 0;
              v378[0] = MEMORY[0x1E69E9820];
              v378[1] = 3221225472;
              v378[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_294;
              v378[3] = &unk_1E85CAE50;
              v379 = v386;
              v378[4] = buf;
              v378[5] = &v380;
              [rightPrograms enumerateObjectsUsingBlock:v378];
              if (*(*&buf[8] + 40))
              {
                v372 = 0;
                v373 = &v372;
                v374 = 0x3032000000;
                v375 = __Block_byref_object_copy__0;
                v376 = __Block_byref_object_dispose__0;
                v377 = 0;
                value5 = [characteristicCopy value];
                v236 = value5;
                bytes = [value5 bytes];

                if (bytes)
                {
                  v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                  value6 = [characteristicCopy value];
                  v240 = [v238 initWithBytes:bytes length:objc_msgSend(value6 encoding:{"length"), 4}];
                  v241 = v373[5];
                  v373[5] = v240;

                  v242 = v373[5];
                  whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                  v244 = [v242 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
                  v245 = v373[5];
                  v373[5] = v244;

                  v246 = v373[5];
                  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
                  v248 = [v246 stringByTrimmingCharactersInSet:controlCharacterSet];
                  v249 = v373[5];
                  v373[5] = v248;
                }

                if (![v373[5] length])
                {
                  v250 = MEMORY[0x1E696AEC0];
                  v251 = hearingLocString(@"DefaultProgramName");
                  v252 = MEMORY[0x1E696ADA0];
                  v253 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(*(*&buf[8] + 40), "index")}];
                  v254 = [v252 localizedStringFromNumber:v253 numberStyle:1];
                  v254 = [v250 stringWithFormat:v251, v254];
                  v256 = v373[5];
                  v373[5] = v254;

                  if (rightPeripheral3 == peripheralCopy)
                  {
                    [(AXHearingAidDevice *)self leftPrograms];
                  }

                  else
                  {
                    [(AXHearingAidDevice *)self rightPrograms];
                  }
                  v309 = ;
                  v371[0] = MEMORY[0x1E69E9820];
                  v371[1] = 3221225472;
                  v371[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2_295;
                  v371[3] = &unk_1E85CAE78;
                  v371[4] = buf;
                  v371[5] = &v372;
                  [v309 enumerateObjectsUsingBlock:v371];
                }

                [*(*&buf[8] + 40) setName:v373[5]];
                v310 = +[AXHearingAidDeviceController sharedController];
                [v310 device:self didUpdateProperty:1280];

                _Block_object_dispose(&v372, 8);
              }

              v311 = v381[5];
              if (v311)
              {
                [v311 setSyncAttempts:{objc_msgSend(v381[5], "syncAttempts") + 1}];
                v312 = v381[5];
                if (rightPeripheral3 == peripheralCopy)
                {
                  [(AXHearingAidDevice *)self setCurrentRightProgram:v312];
                }

                else
                {
                  [(AXHearingAidDevice *)self setCurrentLeftProgram:v312];
                }

                index = [v381[5] index];
                if (rightPeripheral3 == peripheralCopy)
                {
                  v314 = 4;
                }

                else
                {
                  v314 = 2;
                }

                [(AXHearingAidDevice *)self writeInt:index toEar:v314 forProperty:4096];
              }

              else if (!v234)
              {
                [(AXHearingAidDevice *)self readProperty:1024 fromPeripheral:peripheralCopy];
              }

              _Block_object_dispose(&v380, 8);

              _Block_object_dispose(buf, 8);
            }

            else if (v35 == 0x4000)
            {
              LOBYTE(v380) = 0;
              v41 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:4096];
              value7 = [v41 value];
              [value7 getBytes:&v380 length:1];

              rightPeripheral4 = [(AXHearingAidDevice *)self rightPeripheral];
              if (rightPeripheral4 == peripheralCopy)
              {
                [(AXHearingAidDevice *)self rightPrograms];
              }

              else
              {
                [(AXHearingAidDevice *)self leftPrograms];
              }
              v219 = ;

              v387[0] = MEMORY[0x1E69E9820];
              v387[1] = 3221225472;
              v387[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_3_292;
              v387[3] = &__block_descriptor_33_e33_B32__0__AXHearingAidMode_8Q16_B24l;
              v388 = v380;
              v220 = [v219 indexOfObjectPassingTest:v387];
              if (v220 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v221 = HCLogHearingAids();
                if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DA5E2000, v221, OS_LOG_TYPE_DEFAULT, "Not setting category", buf, 2u);
                }
              }

              else
              {
                v221 = [v219 objectAtIndex:v220];
                value8 = [characteristicCopy value];
                *buf = 0;
                [value8 getBytes:buf length:4];
                [v221 setCategory:*buf];
                v223 = +[AXHearingAidDeviceController sharedController];
                [v223 device:self didUpdateProperty:256];
              }
            }

            goto LABEL_454;
          }

          if (v35 != 0x20000)
          {
            if (v35 == 0x10000000)
            {
              value9 = [characteristicCopy value];
              if ([value9 length])
              {
                LODWORD(v380) = 0;
                [value9 getBytes:&v380 length:4];
                if ((v380 - 257) <= 0xFFFFFEFF)
                {
                  v100 = HCLogHearingAids();
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v380;
                    _os_log_impl(&dword_1DA5E2000, v100, OS_LOG_TYPE_DEFAULT, "Hearing aid out of spec: %d", buf, 8u);
                  }

                  v101 = +[HUHearingAidSettings sharedInstance];
                  [v101 setPairedHearingAids:0];

                  [(AXHearingAidDevice *)self disconnectAndUnpair:1];
                }

                leftPeripheral4 = [(AXHearingAidDevice *)self leftPeripheral];
                v103 = leftPeripheral4 == peripheralCopy;

                if (v103)
                {
                  [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x10000000];
                }

                else
                {
                  [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x10000000];
                }

                v295 = +[AXHearingAidDeviceController sharedController];
                [v295 device:self didUpdateProperty:0x10000000];
              }
            }

            goto LABEL_454;
          }

          rightPeripheral5 = [(AXHearingAidDevice *)self rightPeripheral];

          value10 = [characteristicCopy value];
          if (![value10 length])
          {
            goto LABEL_440;
          }

          v130 = rightPeripheral5 == peripheralCopy;
          *buf = 0;
          [value10 getBytes:buf length:4];
          v131 = *buf;
          if (v130)
          {
            if (v131 != [(AXHearingAidDevice *)self rightProgramVersion])
            {
              array = [MEMORY[0x1E695DF70] array];
              [(AXHearingAidDevice *)self setRightPrograms:array];

              [(AXHearingAidDevice *)self setCurrentRightProgram:0];
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]& 0xFFFFFFFFFFFFFEFFLL];
              rightPropertiesLoadCount = [(AXHearingAidDevice *)self rightPropertiesLoadCount];
              v286 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
              [rightPropertiesLoadCount removeObjectForKey:v286];

              rightPeripheral6 = [(AXHearingAidDevice *)self rightPeripheral];
              goto LABEL_330;
            }
          }

          else if (v131 != [(AXHearingAidDevice *)self leftProgramVersion])
          {
            array2 = [MEMORY[0x1E695DF70] array];
            [(AXHearingAidDevice *)self setLeftPrograms:array2];

            [(AXHearingAidDevice *)self setCurrentLeftProgram:0];
            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]& 0xFFFFFFFFFFFFFEFFLL];
            leftPropertiesLoadCount = [(AXHearingAidDevice *)self leftPropertiesLoadCount];
            v134 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:256];
            [leftPropertiesLoadCount removeObjectForKey:v134];

            rightPeripheral6 = [(AXHearingAidDevice *)self leftPeripheral];
LABEL_330:
            v287 = rightPeripheral6;
            [(AXHearingAidDevice *)self loadProperties:256 forPeripheral:rightPeripheral6 withRetryPeriod:3.0];
          }

LABEL_440:

          goto LABEL_454;
        }

        if (v35 != 256)
        {
          if (v35 != 1024)
          {
            if (v35 == 4096)
            {
              buf[0] = 0;
              v83 = [(AXHearingAidDevice *)self peripheral:peripheralCopy characteristicForProperty:4096];
              value11 = [v83 value];
              [value11 getBytes:buf length:1];
            }

            goto LABEL_454;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v399) = 0;
          value12 = [characteristicCopy value];
          v190 = value12;
          bytes2 = [value12 bytes];

          rightPeripheral7 = [(AXHearingAidDevice *)self rightPeripheral];

          if (rightPeripheral7 == peripheralCopy)
          {
            [(AXHearingAidDevice *)self rightPrograms];
          }

          else
          {
            [(AXHearingAidDevice *)self leftPrograms];
          }
          v225 = ;
          v391[0] = MEMORY[0x1E69E9820];
          v391[1] = 3221225472;
          v391[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_290;
          v391[3] = &unk_1E85CADE0;
          v392 = rightPeripheral7 == peripheralCopy;
          v391[4] = self;
          v391[5] = buf;
          v391[6] = bytes2;
          [v225 enumerateObjectsUsingBlock:v391];
          if (*(*&buf[8] + 24) == 1)
          {
            if (rightPeripheral7 == peripheralCopy)
            {
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x400];
            }

            else
            {
              [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x400];
            }

            rightSelectedProgram2 = +[AXHearingAidDeviceController sharedController];
            [rightSelectedProgram2 device:self didUpdateProperty:1024];
          }

          else
          {
            leftSelectedProgram = [(AXHearingAidDevice *)self leftSelectedProgram];
            if (leftSelectedProgram)
            {
              leftPeripheral5 = [(AXHearingAidDevice *)self leftPeripheral];
              v228 = leftPeripheral5 == peripheralCopy;

              if (v228)
              {
                leftSelectedProgram2 = [(AXHearingAidDevice *)self leftSelectedProgram];
                [(AXHearingAidDevice *)self setLeftSelectedProgram:leftSelectedProgram2];
              }
            }

            rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedProgram];
            if (!rightSelectedProgram)
            {
              goto LABEL_367;
            }

            rightPeripheral8 = [(AXHearingAidDevice *)self rightPeripheral];
            v232 = rightPeripheral8 == peripheralCopy;

            if (!v232)
            {
              goto LABEL_367;
            }

            rightSelectedProgram2 = [(AXHearingAidDevice *)self rightSelectedProgram];
            [(AXHearingAidDevice *)self setRightSelectedProgram:rightSelectedProgram2];
          }

LABEL_367:
          _Block_object_dispose(buf, 8);
          goto LABEL_454;
        }

        value13 = [characteristicCopy value];
        if (![value13 length])
        {
LABEL_453:

          goto LABEL_454;
        }

        array3 = [MEMORY[0x1E695DF70] array];
        v146 = value13;
        bytes3 = [value13 bytes];
        rightPeripheral9 = [(AXHearingAidDevice *)self rightPeripheral];

        if (rightPeripheral9 == peripheralCopy)
        {
          rightLoadedProperties = [(AXHearingAidDevice *)self rightLoadedProperties];
          rightPresetBitmask = [(AXHearingAidDevice *)self rightPresetBitmask];
          [(AXHearingAidDevice *)self rightPrograms];
        }

        else
        {
          rightLoadedProperties = [(AXHearingAidDevice *)self leftLoadedProperties];
          rightPresetBitmask = [(AXHearingAidDevice *)self leftPresetBitmask];
          [(AXHearingAidDevice *)self leftPrograms];
        }
        v353 = ;
        if (rightPresetBitmask == *bytes3 && [v353 count])
        {
          if (rightPeripheral9 == peripheralCopy)
          {
            [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x100];
          }

          else
          {
            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x100];
          }

LABEL_452:

          goto LABEL_453;
        }

        if ((rightLoadedProperties & 0x100) != 0)
        {
          v296 = HCLogHearingAids();
          if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DA5E2000, v296, OS_LOG_TYPE_DEFAULT, "Not reading presets, already reading", buf, 2u);
          }

          goto LABEL_452;
        }

        if (rightPeripheral9 == peripheralCopy)
        {
          [(AXHearingAidDevice *)self rightPrograms];
        }

        else
        {
          [(AXHearingAidDevice *)self leftPrograms];
        }
        v359 = ;
        value14 = [characteristicCopy value];
        v316 = [value14 length];

        v317 = 8 * v316;
        if (8 * v316 >= 1)
        {
          LODWORD(v318) = 0;
          if (rightPeripheral9 == peripheralCopy)
          {
            v319 = 4;
          }

          else
          {
            v319 = 2;
          }

          v357 = v319;
          do
          {
            if ((*bytes3 >> v318))
            {
              v320 = objc_alloc_init(AXHearingAidMode);
              [(AXHearingAidMode *)v320 setIndex:v318];
              v393[0] = MEMORY[0x1E69E9820];
              v393[1] = 3221225472;
              v393[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_4;
              v393[3] = &__block_descriptor_36_e33_B32__0__AXHearingAidMode_8Q16_B24l;
              v394 = v318;
              if ([v359 indexOfObjectPassingTest:v393] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v321 = v357;
              }

              else
              {
                v321 = 6;
              }

              [(AXHearingAidMode *)v320 setEar:v321];
              v322 = MEMORY[0x1E696AEC0];
              v323 = hearingLocString(@"DefaultProgramName");
              v324 = MEMORY[0x1E696ADA0];
              v325 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[AXHearingAidMode index](v320, "index")}];
              v326 = [v324 localizedStringFromNumber:v325 numberStyle:1];
              v326 = [v322 stringWithFormat:v323, v326];
              [(AXHearingAidMode *)v320 setName:v326];

              [array3 addObject:v320];
            }

            v318 = (v318 + 1);
          }

          while (v317 > v318);
        }

        if (rightPeripheral9 == peripheralCopy)
        {
          [(AXHearingAidDevice *)self setRightPrograms:array3];
          [(AXHearingAidDevice *)self setRightPresetBitmask:*bytes3];
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x100];
          if ([array3 count] == 1)
          {
            firstObject = [array3 firstObject];
            [firstObject setIsSelected:1];

            firstObject2 = [array3 firstObject];
            [(AXHearingAidDevice *)self setCurrentRightProgram:firstObject2];

            goto LABEL_442;
          }
        }

        else
        {
          [(AXHearingAidDevice *)self setLeftPrograms:array3];
          [(AXHearingAidDevice *)self setLeftPresetBitmask:*bytes3];
          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x100];
          if ([array3 count] == 1)
          {
            firstObject3 = [array3 firstObject];
            [firstObject3 setIsSelected:1];

            firstObject4 = [array3 firstObject];
            [(AXHearingAidDevice *)self setCurrentLeftProgram:firstObject4];

LABEL_442:
            if ([array3 count])
            {
              firstObject5 = [array3 firstObject];
              if (rightPeripheral9 == peripheralCopy)
              {
                currentRightProgram = [(AXHearingAidDevice *)self currentRightProgram];
                v344 = currentRightProgram == 0;

                if (v344)
                {
                  [(AXHearingAidDevice *)self setCurrentRightProgram:firstObject5];
                }

                v342 = 4;
              }

              else
              {
                currentLeftProgram = [(AXHearingAidDevice *)self currentLeftProgram];
                v341 = currentLeftProgram == 0;

                if (v341)
                {
                  [(AXHearingAidDevice *)self setCurrentLeftProgram:firstObject5];
                }

                v342 = 2;
              }

              -[AXHearingAidDevice writeInt:toEar:forProperty:](self, "writeInt:toEar:forProperty:", [firstObject5 index], v342, 4096);
              v345 = +[AXHearingAidDeviceController sharedController];
              [v345 device:self didUpdateProperty:256];
            }

            goto LABEL_452;
          }
        }

        [(AXHearingAidDevice *)self readProperty:1024 fromPeripheral:peripheralCopy];
        goto LABEL_442;
      }

      if (v35 <= 31)
      {
        if (v35 != 4)
        {
          if (v35 != 8)
          {
            if (v35 == 16)
            {
              value15 = [characteristicCopy value];
              v63 = value15;
              bytes4 = [value15 bytes];

              if (bytes4)
              {
                v65 = objc_alloc(MEMORY[0x1E696AEC0]);
                value16 = [characteristicCopy value];
                v67 = [v65 initWithData:value16 encoding:4];

                whitespaceAndNewlineCharacterSet3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                v69 = [v67 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet3];

                controlCharacterSet2 = [MEMORY[0x1E696AB08] controlCharacterSet];
                v71 = [v69 stringByTrimmingCharactersInSet:controlCharacterSet2];
              }

              else
              {
                v71 = 0;
              }

              leftPeripheral6 = [(AXHearingAidDevice *)self leftPeripheral];
              v217 = leftPeripheral6 == peripheralCopy;

              if (v217)
              {
                [(AXHearingAidDevice *)self setLeftUUID:v71];
                rightUUID = [(AXHearingAidDevice *)self rightUUID];
                [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x10];
              }

              else
              {
                [(AXHearingAidDevice *)self setRightUUID:v71];
                rightUUID = [(AXHearingAidDevice *)self leftUUID];
                [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x10];
              }

              if ([v71 length] && objc_msgSend(rightUUID, "length"))
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v399 = __Block_byref_object_copy__0;
                *v400 = __Block_byref_object_dispose__0;
                *&v400[8] = 0;
                v261 = +[AXHearingAidDeviceController sharedController];
                v262 = [v261 hearingAidsForUUID:v71];
                v396[0] = MEMORY[0x1E69E9820];
                v396[1] = 3221225472;
                v396[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2;
                v396[3] = &unk_1E85CAD98;
                v396[4] = self;
                v396[5] = buf;
                [v262 enumerateObjectsUsingBlock:v396];

                if (*(*&buf[8] + 40) && [(AXHearingAidDevice *)self didLoadBasicProperties])
                {
                  [(AXHearingAidDevice *)self mateWithDevice:*(*&buf[8] + 40)];
                }

                _Block_object_dispose(buf, 8);
              }

              v263 = +[AXHearingAidDeviceController sharedController];
              [v263 device:self didUpdateProperty:16];
            }

            goto LABEL_454;
          }

          value10 = [characteristicCopy value];
          if ([value10 length])
          {
            buf[0] = 0;
            [value10 getBytes:buf length:1];
            v198 = buf[0] == 1 ? 4 : 2;
            [(AXHearingAidDevice *)self swapPeripheral:peripheralCopy toEar:v198];
            if (![(AXHearingAidDevice *)self didLoadBasicProperties])
            {
              [(AXHearingAidDevice *)self loadBasicProperties];
            }
          }

          goto LABEL_440;
        }

        value10 = [characteristicCopy value];
        if (![value10 length])
        {
          goto LABEL_440;
        }

        buf[0] = 0;
        [value10 getBytes:buf length:1];
        LOBYTE(v4) = buf[0];
        leftPeripheral7 = [(AXHearingAidDevice *)self leftPeripheral];
        v156 = leftPeripheral7 == peripheralCopy;

        v157 = v4 / 10.0;
        if (v156)
        {
          v290 = v157 < 0.2;
          [(AXHearingAidDevice *)self setLeftBatteryLevel:?];
          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 4];
          leftBatteryLowDate = [(AXHearingAidDevice *)self leftBatteryLowDate];
          if (leftBatteryLowDate)
          {
            v291 = 0;
          }

          else
          {
            v291 = v290;
          }

          if (!v291)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v158 = v157 < 0.2;
          [(AXHearingAidDevice *)self setRightBatteryLevel:?];
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 4];
          leftBatteryLowDate = [(AXHearingAidDevice *)self rightBatteryLowDate];
          if (leftBatteryLowDate)
          {
            v160 = 0;
          }

          else
          {
            v160 = v158;
          }

          if (!v160)
          {
            goto LABEL_342;
          }
        }

        [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-60.0];

LABEL_342:
        v292 = +[AXHearingAidDeviceController sharedController];
        [v292 device:self didUpdateProperty:4];

        [(AXHearingAidDevice *)self updateBatteryServiceForPeripheral:peripheralCopy];
        goto LABEL_440;
      }

      if (v35 == 32)
      {
        value17 = [characteristicCopy value];
        v173 = value17;
        bytes5 = [value17 bytes];

        if (bytes5)
        {
          v175 = objc_alloc(MEMORY[0x1E696AEC0]);
          value18 = [characteristicCopy value];
          v177 = [v175 initWithData:value18 encoding:4];

          whitespaceAndNewlineCharacterSet4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v179 = [v177 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet4];

          controlCharacterSet3 = [MEMORY[0x1E696AB08] controlCharacterSet];
          v181 = [v179 stringByTrimmingCharactersInSet:controlCharacterSet3];
        }

        else
        {
          v181 = 0;
        }

        leftPeripheral8 = [(AXHearingAidDevice *)self leftPeripheral];
        v214 = leftPeripheral8 == peripheralCopy;

        if (v214)
        {
          [(AXHearingAidDevice *)self setRightUUID:v181];
          leftUUID = [(AXHearingAidDevice *)self leftUUID];
          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x20];
        }

        else
        {
          [(AXHearingAidDevice *)self setLeftUUID:v181];
          leftUUID = [(AXHearingAidDevice *)self rightUUID];
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x20];
        }

        if ([v181 length] && objc_msgSend(leftUUID, "length"))
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v399 = __Block_byref_object_copy__0;
          *v400 = __Block_byref_object_dispose__0;
          *&v400[8] = 0;
          v258 = +[AXHearingAidDeviceController sharedController];
          v259 = [v258 hearingAidsForUUID:v181];
          v395[0] = MEMORY[0x1E69E9820];
          v395[1] = 3221225472;
          v395[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_3;
          v395[3] = &unk_1E85CAD98;
          v395[4] = self;
          v395[5] = buf;
          [v259 enumerateObjectsUsingBlock:v395];

          if (*(*&buf[8] + 40) && [(AXHearingAidDevice *)self didLoadBasicProperties])
          {
            [(AXHearingAidDevice *)self mateWithDevice:*(*&buf[8] + 40)];
          }

          _Block_object_dispose(buf, 8);
        }

        v260 = +[AXHearingAidDeviceController sharedController];
        [v260 device:self didUpdateProperty:32];

        goto LABEL_454;
      }

      if (v35 != 64)
      {
        if (v35 == 128)
        {
          value10 = [characteristicCopy value];
          if (![value10 length])
          {
            goto LABEL_440;
          }

          buf[0] = 0;
          [value10 getBytes:buf length:1];
          LOBYTE(v4) = buf[0];
          leftPeripheral9 = [(AXHearingAidDevice *)self leftPeripheral];
          v89 = v4 / 255.0;
          if (leftPeripheral9 == peripheralCopy)
          {
            v281 = self->_leftStreamVolume != v89;

            if (v281)
            {
              self->_leftStreamVolume = v89;
              [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x80];
LABEL_374:
              v300 = +[AXHearingAidDeviceController sharedController];
              [v300 device:self didUpdateProperty:128];

              goto LABEL_440;
            }
          }

          else
          {
          }

          rightPeripheral10 = [(AXHearingAidDevice *)self rightPeripheral];
          if (rightPeripheral10 == peripheralCopy)
          {
            v299 = self->_rightStreamVolume != v89;

            if (v299)
            {
              self->_rightStreamVolume = v89;
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x80];
            }
          }

          else
          {
          }

          goto LABEL_374;
        }

LABEL_454:
        if (!self->_finishedLoading && [(AXHearingAidDevice *)self didLoadBasicProperties]&& ([(AXHearingAidDevice *)self leftAvailable]|| [(AXHearingAidDevice *)self rightAvailable]))
        {
          self->_finishedLoading = 1;
          if (![(AXHearingAidDevice *)self leftAvailable]|| ![(AXHearingAidDevice *)self rightAvailable])
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v399 = __Block_byref_object_copy__0;
            *v400 = __Block_byref_object_dispose__0;
            *&v400[8] = 0;
            if ([(AXHearingAidDevice *)self leftAvailable])
            {
              [(AXHearingAidDevice *)self leftUUID];
            }

            else
            {
              [(AXHearingAidDevice *)self rightUUID];
            }
            v346 = ;
            v347 = +[AXHearingAidDeviceController sharedController];
            v348 = [v347 hearingAidsForUUID:v346];
            v370[0] = MEMORY[0x1E69E9820];
            v370[1] = 3221225472;
            v370[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_299;
            v370[3] = &unk_1E85CAD98;
            v370[4] = self;
            v370[5] = buf;
            [v348 enumerateObjectsUsingBlock:v370];

            if (*(*&buf[8] + 40) && [(AXHearingAidDevice *)self didLoadBasicProperties])
            {
              [(AXHearingAidDevice *)self mateWithDevice:*(*&buf[8] + 40)];
            }

            _Block_object_dispose(buf, 8);
          }

          v349 = +[AXHearingAidDeviceController sharedController];
          [v349 deviceDidFinishLoading:self];

          if ([(AXHearingAidDevice *)self leftAvailable])
          {
            v350 = 2;
          }

          else
          {
            v350 = 0;
          }

          if ([(AXHearingAidDevice *)self rightAvailable])
          {
            v351 = v350 | 4;
          }

          else
          {
            v351 = v350;
          }

          [(AXHearingAidDevice *)self setAvailableEars:v351];
        }

        goto LABEL_474;
      }

      value10 = [characteristicCopy value];
      if (![value10 length])
      {
        goto LABEL_440;
      }

      buf[0] = 0;
      [value10 getBytes:buf length:1];
      LOBYTE(v4) = buf[0];
      leftPeripheral10 = [(AXHearingAidDevice *)self leftPeripheral];
      v203 = v4 / 255.0;
      if (leftPeripheral10 != peripheralCopy)
      {

LABEL_231:
        rightPeripheral11 = [(AXHearingAidDevice *)self rightPeripheral];
        if (rightPeripheral11 == peripheralCopy)
        {
          rightMicrophoneVolume = self->_rightMicrophoneVolume;
          if (rightMicrophoneVolume == v203)
          {
            v337 = rightMicrophoneVolume == 0.0;

            if (!v337)
            {
              goto LABEL_439;
            }
          }

          else
          {
          }

          self->_rightMicrophoneVolume = v203;
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x40];
          goto LABEL_439;
        }

LABEL_439:
        v338 = +[AXHearingAidDeviceController sharedController];
        [v338 device:self didUpdateProperty:64];

        goto LABEL_440;
      }

      leftMicrophoneVolume = self->_leftMicrophoneVolume;
      if (leftMicrophoneVolume == v203)
      {
        v308 = leftMicrophoneVolume == 0.0;

        if (!v308)
        {
          goto LABEL_231;
        }
      }

      else
      {
      }

      self->_leftMicrophoneVolume = v203;
      [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x40];
      goto LABEL_439;
    }

    if (v35 > 0xFFFFFFFFFLL)
    {
      if (v35 > 0x7FFFFFFFFFLL)
      {
        if (v35 > 0x3FFFFFFFFFFLL)
        {
          if (v35 != 0x40000000000)
          {
            if (v35 == 0x80000000000)
            {
              value19 = [characteristicCopy value];
              v105 = value19;
              bytes6 = [value19 bytes];

              value20 = [characteristicCopy value];
              v108 = [value20 length];

              v109 = 8 * v108;
              if (8 * v108 >= 1)
              {
                LODWORD(v110) = 0;
                do
                {
                  if ((*bytes6 >> v110))
                  {
                    switch(v110)
                    {
                      case 3:
                        [(AXHearingAidDevice *)self setRequiresBinauralStreaming:1];
                        break;
                      case 2:
                        [(AXHearingAidDevice *)self setRequiresCombinedVolumes:1];
                        break;
                      case 1:
                        [(AXHearingAidDevice *)self setRequiresCombinedPresets:1];
                        break;
                    }
                  }

                  v110 = (v110 + 1);
                }

                while (v109 > v110);
              }

              if ([(AXHearingAidDevice *)self requiresBinauralStreaming])
              {
                v111 = +[HUHearingAidSettings sharedInstance];
                if ([v111 shouldStreamToLeftAid])
                {
                  v112 = +[HUHearingAidSettings sharedInstance];
                  shouldStreamToRightAid = [v112 shouldStreamToRightAid];
                }

                else
                {
                  shouldStreamToRightAid = 0;
                }

                v265 = +[HUHearingAidSettings sharedInstance];
                [v265 setShouldStreamToLeftAid:shouldStreamToRightAid];

                v266 = +[HUHearingAidSettings sharedInstance];
                [v266 setShouldStreamToRightAid:shouldStreamToRightAid];
              }

              leftPeripheral11 = [(AXHearingAidDevice *)self leftPeripheral];
              v268 = leftPeripheral11 == peripheralCopy;

              if (v268)
              {
                [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x80000000000];
              }

              else
              {
                rightPeripheral12 = [(AXHearingAidDevice *)self rightPeripheral];
                v270 = rightPeripheral12 == peripheralCopy;

                if (v270)
                {
                  [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x80000000000];
                }
              }

              v271 = +[AXHearingAidDeviceController sharedController];
              [v271 device:self didUpdateProperty:0x80000000000];
            }

            goto LABEL_454;
          }

          if ([MEMORY[0x1E69A4560] supportsLEA2] && -[AXHearingAidDevice readsWatchSupportCharacteristic](self, "readsWatchSupportCharacteristic"))
          {
            value10 = [characteristicCopy value];
            if (![value10 length])
            {
              goto LABEL_440;
            }

            rightPeripheral13 = [(AXHearingAidDevice *)self rightPeripheral];
            if (rightPeripheral13 == peripheralCopy)
            {
              v137 = 4;
            }

            else
            {
              v137 = 2;
            }

            earsSupportingWatch = [(AXHearingAidDevice *)self earsSupportingWatch];
            *buf = 0;
            [value10 getBytes:buf length:4];
            if (*buf)
            {
              v139 = earsSupportingWatch | v137;
            }

            else
            {
              v139 = earsSupportingWatch & ~v137;
            }

            [(AXHearingAidDevice *)self setEarsSupportingWatch:v139];
            v140 = +[HUHearingAidSettings sharedInstance];
            [v140 setEarsSupportingWatch:{-[AXHearingAidDevice earsSupportingWatch](self, "earsSupportingWatch")}];

            v141 = +[HANanoSettings sharedInstance];
            [v141 setEarsSupportingWatch:{-[AXHearingAidDevice earsSupportingWatch](self, "earsSupportingWatch")}];
          }

          leftPeripheral12 = [(AXHearingAidDevice *)self leftPeripheral];
          v143 = leftPeripheral12 == peripheralCopy;

          if (v143)
          {
            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x40000000000];
          }

          else
          {
            rightPeripheral14 = [(AXHearingAidDevice *)self rightPeripheral];
            v145 = rightPeripheral14 == peripheralCopy;

            if (v145)
            {
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x40000000000];
            }
          }

          v264 = +[AXHearingAidDeviceController sharedController];
          [v264 device:self didUpdateProperty:0x40000000000];

          goto LABEL_454;
        }

        if (v35 == 0x8000000000)
        {
          value10 = [characteristicCopy value];
          if ([value10 length])
          {
            buf[0] = 0;
            [value10 getBytes:buf length:1];
            if (buf[0])
            {
              v122 = 255.0 / buf[0];
              v123 = llroundf(v122);
              if (v123 <= 1)
              {
                v123 = 1;
              }

              if (v123 >= 20)
              {
                v124 = 20;
              }

              else
              {
                v124 = v123;
              }

              leftPeripheral13 = [(AXHearingAidDevice *)self leftPeripheral];
              v126 = leftPeripheral13 == peripheralCopy;

              if (v126)
              {
                [(AXHearingAidDevice *)self setLeftMixedVolumeSteps:v124];
                [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x8000000000];
              }

              else
              {
                rightPeripheral15 = [(AXHearingAidDevice *)self rightPeripheral];
                v128 = rightPeripheral15 == peripheralCopy;

                if (v128)
                {
                  [(AXHearingAidDevice *)self setRightMixedVolumeSteps:v124];
                  [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x8000000000];
                }
              }
            }

            v304 = +[AXHearingAidDeviceController sharedController];
            [v304 device:self didUpdateProperty:0x8000000000];
          }

          goto LABEL_440;
        }

        if (v35 == 0x10000000000)
        {
          if ([MEMORY[0x1E69A4560] supportsLEA2])
          {
            value10 = [characteristicCopy value];
            if (![value10 length])
            {
              goto LABEL_440;
            }

            rightPeripheral16 = [(AXHearingAidDevice *)self rightPeripheral];
            if (rightPeripheral16 == peripheralCopy)
            {
              v46 = 4;
            }

            else
            {
              v46 = 2;
            }

            availableInputEars = [(AXHearingAidDevice *)self availableInputEars];
            *buf = 0;
            [value10 getBytes:buf length:4];
            if (*buf)
            {
              v48 = availableInputEars | v46;
            }

            else
            {
              v48 = availableInputEars & ~v46;
            }

            [(AXHearingAidDevice *)self setAvailableInputEars:v48];
            v49 = +[HUHearingAidSettings sharedInstance];
            [v49 setAvailableInputEars:{-[AXHearingAidDevice availableInputEars](self, "availableInputEars")}];

            v50 = +[HANanoSettings sharedInstance];
            [v50 setAvailableInputEars:{-[AXHearingAidDevice availableInputEars](self, "availableInputEars")}];

            if (*buf)
            {
              rightPeripheral17 = [(AXHearingAidDevice *)self rightPeripheral];

              if (rightPeripheral17)
              {
                [(AXHearingAidDevice *)self setRightLeaVersion:2];
              }

              else
              {
                [(AXHearingAidDevice *)self setLeftLeaVersion:2];
              }
            }
          }

          leftPeripheral14 = [(AXHearingAidDevice *)self leftPeripheral];
          v333 = leftPeripheral14 == peripheralCopy;

          if (v333)
          {
            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x10000000000];
          }

          else
          {
            rightPeripheral18 = [(AXHearingAidDevice *)self rightPeripheral];
            v335 = rightPeripheral18 == peripheralCopy;

            if (v335)
            {
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x10000000000];
            }
          }

          v336 = +[AXHearingAidDeviceController sharedController];
          [v336 device:self didUpdateProperty:0x10000000000];

          goto LABEL_454;
        }

        goto LABEL_454;
      }

      if (v35 == 0x1000000000)
      {
        value10 = [characteristicCopy value];
        if ([value10 length])
        {
          buf[0] = 0;
          [value10 getBytes:buf length:1];
          leftPeripheral15 = [(AXHearingAidDevice *)self leftPeripheral];
          v151 = leftPeripheral15 == peripheralCopy;

          if (v151)
          {
            v288 = buf[0];
            self->_leftBass = buf[0];
            if (self->_rightBass != v288)
            {
              [(AXHearingAidDevice *)self setRightBass:v288];
            }

            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x1000000000];
          }

          else
          {
            rightPeripheral19 = [(AXHearingAidDevice *)self rightPeripheral];
            v153 = rightPeripheral19 == peripheralCopy;

            if (v153)
            {
              v154 = buf[0];
              self->_rightBass = buf[0];
              if (self->_leftBass != v154)
              {
                [(AXHearingAidDevice *)self setLeftBass:v154];
              }

              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x1000000000];
            }
          }

          v289 = +[AXHearingAidDeviceController sharedController];
          [v289 device:self didUpdateProperty:0x1000000000];
        }

        goto LABEL_440;
      }

      if (v35 == 0x2000000000)
      {
        value10 = [characteristicCopy value];
        if ([value10 length])
        {
          buf[0] = 0;
          [value10 getBytes:buf length:1];
          leftPeripheral16 = [(AXHearingAidDevice *)self leftPeripheral];
          v194 = leftPeripheral16 == peripheralCopy;

          if (v194)
          {
            v293 = buf[0];
            self->_leftTreble = buf[0];
            if (self->_rightTreble != v293)
            {
              [(AXHearingAidDevice *)self setRightTreble:v293];
            }

            [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x2000000000];
          }

          else
          {
            rightPeripheral20 = [(AXHearingAidDevice *)self rightPeripheral];
            v196 = rightPeripheral20 == peripheralCopy;

            if (v196)
            {
              v197 = buf[0];
              self->_rightTreble = buf[0];
              if (self->_leftTreble != v197)
              {
                [(AXHearingAidDevice *)self setLeftTreble:v197];
              }

              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x2000000000];
            }
          }

          v294 = +[AXHearingAidDeviceController sharedController];
          [v294 device:self didUpdateProperty:0x2000000000];
        }

        goto LABEL_440;
      }

      if (v35 != 0x4000000000)
      {
        goto LABEL_454;
      }

      value10 = [characteristicCopy value];
      if (![value10 length])
      {
        goto LABEL_440;
      }

      buf[0] = 0;
      [value10 getBytes:buf length:1];
      LOBYTE(v4) = buf[0];
      leftPeripheral17 = [(AXHearingAidDevice *)self leftPeripheral];
      v86 = v4 / 255.0;
      if (leftPeripheral17 == peripheralCopy)
      {
        v280 = self->_leftMixedVolume != v86;

        if (v280)
        {
          self->_leftMixedVolume = v86;
          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x4000000000];
LABEL_370:
          v298 = +[AXHearingAidDeviceController sharedController];
          [v298 device:self didUpdateProperty:0x4000000000];

          goto LABEL_440;
        }
      }

      else
      {
      }

      rightPeripheral21 = [(AXHearingAidDevice *)self rightPeripheral];
      if (rightPeripheral21 == peripheralCopy)
      {
        v297 = self->_rightMixedVolume != v86;

        if (v297)
        {
          self->_rightMixedVolume = v86;
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x4000000000];
        }
      }

      else
      {
      }

      goto LABEL_370;
    }

    if (v35 > 0x1FFFFFFFFLL)
    {
      if (v35 == 0x200000000)
      {
        value10 = [characteristicCopy value];
        if ([value10 length])
        {
          buf[0] = 0;
          [value10 getBytes:buf length:1];
          if (buf[0])
          {
            v182 = 255.0 / buf[0];
            v183 = llroundf(v182);
            if (v183 <= 1)
            {
              v183 = 1;
            }

            if (v183 >= 20)
            {
              v184 = 20;
            }

            else
            {
              v184 = v183;
            }

            leftPeripheral18 = [(AXHearingAidDevice *)self leftPeripheral];
            v186 = leftPeripheral18 == peripheralCopy;

            if (v186)
            {
              [(AXHearingAidDevice *)self setLeftStreamVolumeSteps:v184];
              [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x200000000];
            }

            else
            {
              rightPeripheral22 = [(AXHearingAidDevice *)self rightPeripheral];
              v188 = rightPeripheral22 == peripheralCopy;

              if (v188)
              {
                [(AXHearingAidDevice *)self setRightStreamVolumeSteps:v184];
                [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x200000000];
              }
            }
          }

          v305 = +[AXHearingAidDeviceController sharedController];
          [v305 device:self didUpdateProperty:0x200000000];
        }
      }

      else
      {
        if (v35 != 0x400000000)
        {
          if (v35 == 0x800000000)
          {
            value21 = [characteristicCopy value];
            v92 = value21;
            bytes7 = [value21 bytes];

            rightPeripheral23 = [(AXHearingAidDevice *)self rightPeripheral];

            if (rightPeripheral23 == peripheralCopy)
            {
              [(AXHearingAidDevice *)self rightPrograms];
            }

            else
            {
              [(AXHearingAidDevice *)self leftPrograms];
            }
            v224 = ;
            v389[0] = MEMORY[0x1E69E9820];
            v389[1] = 3221225472;
            v389[2] = __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2_291;
            v389[3] = &unk_1E85CAE08;
            v390 = rightPeripheral23 == peripheralCopy;
            v389[4] = self;
            v389[5] = bytes7;
            [v224 enumerateObjectsUsingBlock:v389];
            if (rightPeripheral23 == peripheralCopy)
            {
              [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x800000000];
            }

            else
            {
              [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x800000000];
            }

            v257 = +[AXHearingAidDeviceController sharedController];
            [v257 device:self didUpdateProperty:0x800000000];
          }

          goto LABEL_454;
        }

        value10 = [characteristicCopy value];
        if ([value10 length])
        {
          buf[0] = 0;
          [value10 getBytes:buf length:1];
          if (buf[0])
          {
            v205 = 255.0 / buf[0];
            v206 = llroundf(v205);
            if (v206 <= 1)
            {
              v206 = 1;
            }

            if (v206 >= 20)
            {
              v207 = 20;
            }

            else
            {
              v207 = v206;
            }

            leftPeripheral19 = [(AXHearingAidDevice *)self leftPeripheral];
            v209 = leftPeripheral19 == peripheralCopy;

            if (v209)
            {
              [(AXHearingAidDevice *)self setLeftSensitivitySteps:v207];
              [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x400000000];
            }

            else
            {
              rightPeripheral24 = [(AXHearingAidDevice *)self rightPeripheral];
              v211 = rightPeripheral24 == peripheralCopy;

              if (v211)
              {
                [(AXHearingAidDevice *)self setRightSensitivitySteps:v207];
                [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x400000000];
              }
            }
          }

          v307 = +[AXHearingAidDeviceController sharedController];
          [v307 device:self didUpdateProperty:0x400000000];
        }
      }

      goto LABEL_440;
    }

    if (v35 != 0x40000000)
    {
      if (v35 != 0x80000000)
      {
        if (v35 == 0x100000000)
        {
          value10 = [characteristicCopy value];
          if ([value10 length])
          {
            buf[0] = 0;
            [value10 getBytes:buf length:1];
            if (buf[0])
            {
              v72 = 255.0 / buf[0];
              v73 = llroundf(v72);
              if (v73 <= 1)
              {
                v73 = 1;
              }

              if (v73 >= 20)
              {
                v74 = 20;
              }

              else
              {
                v74 = v73;
              }

              leftPeripheral20 = [(AXHearingAidDevice *)self leftPeripheral];
              v76 = leftPeripheral20 == peripheralCopy;

              if (v76)
              {
                [(AXHearingAidDevice *)self setLeftMicrophoneVolumeSteps:v74];
                [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x100000000];
              }

              else
              {
                rightPeripheral25 = [(AXHearingAidDevice *)self rightPeripheral];
                v78 = rightPeripheral25 == peripheralCopy;

                if (v78)
                {
                  [(AXHearingAidDevice *)self setRightMicrophoneVolumeSteps:v74];
                  [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x100000000];
                }
              }
            }

            v306 = +[AXHearingAidDeviceController sharedController];
            [v306 device:self didUpdateProperty:0x100000000];
          }

          goto LABEL_440;
        }

        goto LABEL_454;
      }

      value10 = [characteristicCopy value];
      if (![value10 length])
      {
        goto LABEL_440;
      }

      buf[0] = 0;
      [value10 getBytes:buf length:1];
      LOBYTE(v4) = buf[0];
      leftPeripheral21 = [(AXHearingAidDevice *)self leftPeripheral];
      v200 = v4 / 255.0;
      if (leftPeripheral21 == peripheralCopy)
      {
        v282 = self->_leftSensitivity != v200;

        if (v282)
        {
          self->_leftSensitivity = v200;
          [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x80000000];
LABEL_378:
          v302 = +[AXHearingAidDeviceController sharedController];
          [v302 device:self didUpdateProperty:0x80000000];

          goto LABEL_440;
        }
      }

      else
      {
      }

      rightPeripheral26 = [(AXHearingAidDevice *)self rightPeripheral];
      if (rightPeripheral26 == peripheralCopy)
      {
        v301 = self->_rightSensitivity != v200;

        if (v301)
        {
          self->_rightSensitivity = v200;
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x80000000];
        }
      }

      else
      {
      }

      goto LABEL_378;
    }

    value22 = [characteristicCopy value];
    v162 = value22;
    bytes8 = [value22 bytes];

    value23 = [characteristicCopy value];
    v165 = [value23 length];

    v166 = 8 * v165;
    if (8 * v165 >= 1)
    {
      LODWORD(v167) = 0;
      do
      {
        if ((*bytes8 >> v167))
        {
          switch(v167)
          {
            case 3:
              [(AXHearingAidDevice *)self setSupportsBinauralStreaming:0];
              break;
            case 2:
              [(AXHearingAidDevice *)self setSupportsCombinedVolumes:0];
              break;
            case 1:
              [(AXHearingAidDevice *)self setSupportsCombinedPresets:0];
              break;
          }
        }

        v167 = (v167 + 1);
      }

      while (v166 > v167);
    }

    if ([(AXHearingAidDevice *)self supportsBinauralStreaming])
    {
LABEL_315:
      leftPeripheral22 = [(AXHearingAidDevice *)self leftPeripheral];
      v276 = leftPeripheral22 == peripheralCopy;

      if (v276)
      {
        [(AXHearingAidDevice *)self setLeftLoadedProperties:[(AXHearingAidDevice *)self leftLoadedProperties]| 0x40000000];
      }

      else
      {
        rightPeripheral27 = [(AXHearingAidDevice *)self rightPeripheral];
        v278 = rightPeripheral27 == peripheralCopy;

        if (v278)
        {
          [(AXHearingAidDevice *)self setRightLoadedProperties:[(AXHearingAidDevice *)self rightLoadedProperties]| 0x40000000];
        }
      }

      v279 = +[AXHearingAidDeviceController sharedController];
      [v279 device:self didUpdateProperty:0x40000000];

      goto LABEL_454;
    }

    v168 = +[HUHearingAidSettings sharedInstance];
    if ([v168 shouldStreamToLeftAid])
    {
      v169 = +[HUHearingAidSettings sharedInstance];
      shouldStreamToRightAid2 = [v169 shouldStreamToRightAid];

      if (!shouldStreamToRightAid2)
      {
LABEL_194:
        v171 = +[HUHearingAidSettings sharedInstance];
        if ([v171 shouldStreamToLeftAid])
        {
          [(AXHearingAidDevice *)self rightPeripheral];
        }

        else
        {
          [(AXHearingAidDevice *)self leftPeripheral];
        }
        v272 = ;

        if (([v272 hasTag:@"DisableLEA"] & 1) == 0)
        {
          v273 = HCLogHearingAids();
          if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v272;
            _os_log_impl(&dword_1DA5E2000, v273, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Resetting connection to disable streaming %@", buf, 0xCu);
          }

          v274 = +[AXHearingAidDeviceController sharedController];
          [v274 resetConnectionToPeripheral:v272];
        }

        goto LABEL_315;
      }

      v168 = +[HUHearingAidSettings sharedInstance];
      [v168 setShouldStreamToLeftAid:0];
    }

    goto LABEL_194;
  }

LABEL_475:

  v352 = *MEMORY[0x1E69E9840];
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke(uint64_t a1, int a2)
{
  if (propertyContainsProperty(0xFF800105C4, *(a1 + 40)) && ([*(a1 + 32) isPaired] & 1) == 0 && a2)
  {
    if ([*(a1 + 32) leftAvailable])
    {
      v4 = [*(a1 + 32) leftPeripheral];
      v5 = [v4 identifier];

      if (v5)
      {
        v6 = [*(a1 + 32) leftPeripheral];
        v7 = [v6 identifier];
        v8 = [v7 UUIDString];

        [*(a1 + 32) setLeftPeripheralUUID:v8];
      }
    }

    if ([*(a1 + 32) rightAvailable])
    {
      v9 = [*(a1 + 32) rightPeripheral];
      v10 = [v9 identifier];

      if (v10)
      {
        v11 = [*(a1 + 32) rightPeripheral];
        v12 = [v11 identifier];
        v13 = [v12 UUIDString];

        [*(a1 + 32) setRightPeripheralUUID:v13];
      }
    }

    v15 = +[HUHearingAidSettings sharedInstance];
    v14 = [*(a1 + 32) persistentRepresentation];
    [v15 setPairedHearingAids:v14];
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) != v7)
  {
    v8 = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v7 = v8;
    *a4 = 1;
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) != v7)
  {
    v8 = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v7 = v8;
    *a4 = 1;
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_290(uint64_t a1, void *a2)
{
  v4 = a2;
  if (**(a1 + 48) == [v4 index])
  {
    [v4 setIsSelected:1];
    v3 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      [v3 setRightSelectedProgram:v4];
    }

    else
    {
      [v3 setLeftSelectedProgram:v4];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (([v4 isStreamOrMixingStream] & 1) == 0)
  {
    [v4 setIsSelected:0];
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2_291(uint64_t a1, void *a2)
{
  v4 = a2;
  if (**(a1 + 40) == [v4 index])
  {
    [v4 setIsSelected:1];
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v3 setRightSelectedStreamingProgram:v4];
    }

    else
    {
      [v3 setLeftSelectedStreamingProgram:v4];
    }
  }

  else if ([v4 isStreamOrMixingStream])
  {
    [v4 setIsSelected:0];
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_294(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v4 = hearingLocString(@"DefaultProgramName");
  v5 = MEMORY[0x1E696ADA0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v16, "index")}];
  v7 = [v5 localizedStringFromNumber:v6 numberStyle:1];
  v8 = [v3 stringWithFormat:v4, v7];

  if (!*(*(*(a1 + 32) + 8) + 40) && [v16 index] == *(a1 + 48))
  {
    v9 = *(a1 + 32);
LABEL_12:
    v14 = *(v9 + 8);
    v15 = v16;
    v10 = *(v14 + 40);
    *(v14 + 40) = v15;
    goto LABEL_13;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_14;
  }

  v10 = [v16 name];
  if (([v10 isEqualToString:v8] & 1) == 0)
  {
    v12 = [v16 name];
    if ([v12 length])
    {

LABEL_13:
      goto LABEL_14;
    }

    v13 = [v16 syncAttempts];

    if (v13 > 2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v11 = [v16 syncAttempts];

  if (v11 < 3)
  {
LABEL_11:
    v9 = *(a1 + 40);
    goto LABEL_12;
  }

LABEL_14:
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_2_295(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [*(*(*(a1 + 32) + 8) + 40) index];
  if (v6 == [v10 index])
  {
    v7 = [v10 name];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void __57__AXHearingAidDevice_peripheral_didUpdateCharacteristic___block_invoke_299(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) != v7)
  {
    v8 = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v7 = v8;
    *a4 = 1;
  }
}

- (void)peripheral:(id)peripheral didInvalidateServices:(id)services
{
  v16 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  servicesCopy = services;
  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = peripheralCopy;
    v12 = 2112;
    v13 = servicesCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didInvalidateServices, peripheral %@, services %@, \n%@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = [(AXHearingAidDevice *)self peripheral:peripheralCopy propertyForCharacteristic:characteristicCopy];
  if (errorCopy)
  {
    [(AXHearingAidDevice *)self readValueForCharacteristic:characteristicCopy fromPeripheral:peripheralCopy];
    v12 = HCLogHearingAids();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AXHearingAidDevice peripheral:didWriteValueForCharacteristic:error:];
    }
  }

  else
  {
    v13 = HCLogHearingAids();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = hearingPropertyDescription(v11);
      value = [characteristicCopy value];
      v20 = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = value;
      _os_log_impl(&dword_1DA5E2000, v13, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: didWriteValueForCharacteristic, %@ - %@", &v20, 0x16u);
    }

    if (v11 == 4096)
    {
      [(AXHearingAidDevice *)self readProperty:4096 fromPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self readProperty:0x2000 fromPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self readProperty:0x4000 fromPeripheral:peripheralCopy];
    }
  }

  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  v17 = [peripheralCopy isEqual:leftPeripheral];

  v18 = 496;
  if (v17)
  {
    v18 = 488;
  }

  *(&self->super.isa + v18) = (*(&self->super.isa + v18) & ~v11);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error
{
  peripheralCopy = peripheral;
  iCopy = i;
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];

  if (leftPeripheral == peripheralCopy)
  {
    [(AXHearingAidDevice *)self setLeftRSSI:iCopy];
  }

  else
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];

    if (rightPeripheral == peripheralCopy)
    {
      [(AXHearingAidDevice *)self setRightRSSI:iCopy];
    }
  }

  v10 = +[AXHearingAidDeviceController sharedController];
  [v10 device:self didUpdateProperty:0x200000000000];
}

- (void)pairingDidCompleteForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = +[AXHearingAidDeviceController sharedController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AXHearingAidDevice_pairingDidCompleteForPeripheral___block_invoke;
  v7[3] = &unk_1E85CA2E0;
  v8 = peripheralCopy;
  selfCopy = self;
  v6 = peripheralCopy;
  [v5 checkPeripheralPaired:v6 withCompletion:v7];
}

void __54__AXHearingAidDevice_pairingDidCompleteForPeripheral___block_invoke(uint64_t a1, uint64_t a2)
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v34 = 67109378;
    v35[0] = a2;
    LOWORD(v35[1]) = 2112;
    *(&v35[1] + 2) = v5;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: Did pair with result %d - %@", &v34, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) identifier];
  v8 = [v7 UUIDString];
  LOBYTE(v6) = [v6 containsPeripheralWithUUID:v8];

  if ((v6 & 1) == 0)
  {
    v9 = HCLogHearingAids();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __54__AXHearingAidDevice_pairingDidCompleteForPeripheral___block_invoke_cold_1((a1 + 32), v9);
    }
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) leftPeripheral];

  if (v10 == v11)
  {
    [*(a1 + 40) setLeftPeripheralPaired:a2];
    if (a2)
    {
LABEL_11:
      if (([*(a1 + 32) hasTag:@"IsMFiAuthenticated_CertClass0B"] & 1) == 0)
      {
        v15 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16 = [MEMORY[0x1E695D2A0] UUIDWithString:@"9FBF120D-6301-42D9-8C58-25E699A21DBD"];
        v17 = [v14 peripheral:v15 characteristicForUUID:v16];

        if (v17)
        {
          [*(a1 + 40) readValueForCharacteristic:v17 fromPeripheral:*(a1 + 32)];
        }
      }

      [*(a1 + 40) loadProperties:objc_msgSend(*(a1 + 40) forPeripheral:"requiredProperties") withRetryPeriod:{*(a1 + 32), 0.0}];
      if ([*(a1 + 40) leftAvailable])
      {
        v18 = [*(a1 + 40) leftPeripheral];
        v19 = [v18 identifier];

        if (v19)
        {
          v20 = [*(a1 + 40) leftPeripheral];
          v21 = [v20 identifier];
          v22 = [v21 UUIDString];

          [*(a1 + 40) setLeftPeripheralUUID:v22];
        }
      }

      if ([*(a1 + 40) rightAvailable])
      {
        v23 = [*(a1 + 40) rightPeripheral];
        v24 = [v23 identifier];

        if (v24)
        {
          v25 = [*(a1 + 40) rightPeripheral];
          v26 = [v25 identifier];
          v27 = [v26 UUIDString];

          [*(a1 + 40) setRightPeripheralUUID:v27];
        }
      }

      v28 = +[HUHearingAidSettings sharedInstance];
      v29 = [*(a1 + 40) persistentRepresentation];
      [v28 setPairedHearingAids:v29];

      goto LABEL_26;
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) rightPeripheral];

    if (v12 == v13)
    {
      [*(a1 + 40) setRightPeripheralPaired:a2];
    }

    if (a2)
    {
      goto LABEL_11;
    }
  }

  v30 = HCLogHearingAids();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 40);
    v34 = 138412290;
    *v35 = v31;
    _os_log_impl(&dword_1DA5E2000, v30, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: pairingDidCompleteForPeripheral: failed, Disconnecting %@", &v34, 0xCu);
  }

  [*(a1 + 40) disconnectAndUnpair:0];
  v28 = +[HUHearingAidSettings sharedInstance];
  [v28 setPairedHearingAids:0];
LABEL_26:

  v32 = +[AXHearingAidDeviceController sharedController];
  [v32 device:*(a1 + 40) didUpdateProperty:603979776];

  v33 = *MEMORY[0x1E69E9840];
}

- (void)peripheralDidUnpair:(id)unpair
{
  v10 = *MEMORY[0x1E69E9840];
  unpairCopy = unpair;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [unpairCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice peripheral: peripheralDidUnpair %@", &v8, 0xCu);
  }

  [(AXHearingAidDevice *)self disconnectAndUnpair:1];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)checkPairingStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = +[AXHearingAidDeviceController sharedController];
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__AXHearingAidDevice_checkPairingStatusWithCompletion___block_invoke;
    v7[3] = &unk_1E85CAEC8;
    v7[4] = self;
    v8 = completionCopy;
    [v5 checkPeripheralPaired:leftPeripheral withCompletion:v7];
  }
}

void __55__AXHearingAidDevice_checkPairingStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) setLeftPeripheralPaired:a2];
  v4 = +[AXHearingAidDeviceController sharedController];
  v5 = [*(a1 + 32) rightPeripheral];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AXHearingAidDevice_checkPairingStatusWithCompletion___block_invoke_2;
  v7[3] = &unk_1E85CAEA0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = v2;
  v8 = v6;
  [v4 checkPeripheralPaired:v5 withCompletion:v7];
}

uint64_t __55__AXHearingAidDevice_checkPairingStatusWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) setRightPeripheralPaired:a2];
  v4 = [*(a1 + 32) leftUUID];
  if ([v4 length])
  {
    v5 = [*(a1 + 32) rightUUID];
    if ([v5 length])
    {
      v6 = *(a1 + 48) != v2;
    }
  }

  if (([*(a1 + 32) leftAvailable] & 1) != 0 || objc_msgSend(*(a1 + 32), "rightAvailable"))
  {
    v7 = *(a1 + 48);
    if (v7 == [*(a1 + 32) leftAvailable])
    {
      v8 = [*(a1 + 32) rightAvailable] ^ v2 ^ 1;
    }
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (NSString)description
{
  v25 = MEMORY[0x1E696AEC0];
  serviceTypeDescription = [(AXHearingAidDevice *)self serviceTypeDescription];
  model = [(AXHearingAidDevice *)self model];
  didLoadBasicProperties = [(AXHearingAidDevice *)self didLoadBasicProperties];
  v4 = @"NOT LOADED";
  if (didLoadBasicProperties)
  {
    v4 = @"LOADED";
  }

  v22 = v4;
  isPaired = [(AXHearingAidDevice *)self isPaired];
  v6 = @"NOT PAIRED";
  if (isPaired)
  {
    v6 = @"PAIRED";
  }

  v21 = v6;
  isPersistent = [(AXHearingAidDevice *)self isPersistent];
  v8 = @"NOT PERSISTENT";
  if (isPersistent)
  {
    v8 = @"PERSISTENT";
  }

  v20 = v8;
  if ([(AXHearingAidDevice *)self isConnected])
  {
    v9 = @"Available";
  }

  else
  {
    v9 = @"NOT Available";
  }

  leftAvailable = [(AXHearingAidDevice *)self leftAvailable];
  rightAvailable = [(AXHearingAidDevice *)self rightAvailable];
  leftUUID = [(AXHearingAidDevice *)self leftUUID];
  rightUUID = [(AXHearingAidDevice *)self rightUUID];
  leftPeripheralUUID = [(AXHearingAidDevice *)self leftPeripheralUUID];
  rightPeripheralUUID = [(AXHearingAidDevice *)self rightPeripheralUUID];
  leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
  rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
  v18 = [v25 stringWithFormat:@"AXHearingAidDevice:%p [%@] [%@] [%@, %@, %@, %@] L:%d R:%d, l-uuid: %@ r-uuid: %@ - [%@, %@] [%@, %@]", self, serviceTypeDescription, model, v22, v21, v20, v9, leftAvailable, rightAvailable, leftUUID, rightUUID, leftPeripheralUUID, rightPeripheralUUID, leftPeripheral, rightPeripheral];

  return v18;
}

- (id)descriptionForCBPeripheralState:(int64_t)state
{
  if (state > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85CAEE8[state];
  }
}

- (BOOL)addPeripheral:(id)peripheral
{
  v21 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v5 = HCLogHearingAids();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [peripheralCopy identifier];
    v17 = 138412546;
    v18 = identifier;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: addPeripheral %@ to device:\n%@", &v17, 0x16u);
  }

  identifier2 = [peripheralCopy identifier];

  if (identifier2)
  {
    identifier3 = [peripheralCopy identifier];
    uUIDString = [identifier3 UUIDString];

    leftPeripheralUUID = [(AXHearingAidDevice *)self leftPeripheralUUID];
    v11 = [uUIDString isEqualToString:leftPeripheralUUID];

    if (v11)
    {
      [(AXHearingAidDevice *)self setLeftPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setLeftPeripheralUUID:uUIDString];
    }

    else
    {
      rightPeripheralUUID = [(AXHearingAidDevice *)self rightPeripheralUUID];
      v14 = [uUIDString isEqualToString:rightPeripheralUUID];

      if (!v14)
      {
        v12 = 0;
        goto LABEL_11;
      }

      [(AXHearingAidDevice *)self setRightPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setRightPeripheralUUID:uUIDString];
    }

    [peripheralCopy setDelegate:self];
    v12 = 1;
LABEL_11:
    [(AXHearingAidDevice *)self didAddPeripheral:peripheralCopy];

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)addPeripheral:(id)peripheral asLeft:(BOOL)left
{
  leftCopy = left;
  v21 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (leftCopy)
    {
      v8 = @"L";
    }

    else
    {
      v8 = @"R";
    }

    identifier = [peripheralCopy identifier];
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = identifier;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA5E2000, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDevice: addPeripheral %@ %@ to device:\n%@", &v15, 0x20u);
  }

  identifier2 = [peripheralCopy identifier];

  if (identifier2)
  {
    identifier3 = [peripheralCopy identifier];
    uUIDString = [identifier3 UUIDString];

    if (leftCopy)
    {
      [(AXHearingAidDevice *)self setLeftPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setLeftPeripheralUUID:uUIDString];
    }

    else
    {
      [(AXHearingAidDevice *)self setRightPeripheral:peripheralCopy];
      [(AXHearingAidDevice *)self setRightPeripheralUUID:uUIDString];
    }

    [peripheralCopy setDelegate:self];
    [(AXHearingAidDevice *)self didAddPeripheral:peripheralCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
  return identifier2 != 0;
}

- (void)didAddPeripheral:(id)peripheral
{
  name = [peripheral name];
  if ([name length])
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(AXHearingAidDevice *)self didAddPeripheral:v5];
    }

    [(AXHearingAidDevice *)self setName:name];
  }
}

- (id)persistentRepresentation
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  name = [(AXHearingAidDevice *)self name];
  stringValue = [&unk_1F5623B00 stringValue];
  v42[0] = stringValue;
  manufacturer = [(AXHearingAidDevice *)self manufacturer];
  v43[0] = manufacturer;
  stringValue2 = [&unk_1F5623B18 stringValue];
  v42[1] = stringValue2;
  model = [(AXHearingAidDevice *)self model];
  v43[1] = model;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AXHearingAidDevice availableEars](self, "availableEars")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXHearingAidDevice deviceProtocol](self, "deviceProtocol")}];
  v12 = [v3 dictionaryWithObjectsAndKeys:{name, @"ax_hearing_device_name_key", v9, @"ax_hearing_device_man_model_key", v10, @"ax_hearing_device_lr_key", v11, @"ax_hearing_device_protocol_key", 0}];

  if ([(AXHearingAidDevice *)self leftAvailable])
  {
    leftPeripheral = [(AXHearingAidDevice *)self leftPeripheral];
    identifier = [leftPeripheral identifier];

    if (identifier)
    {
      leftPeripheral2 = [(AXHearingAidDevice *)self leftPeripheral];
      identifier2 = [leftPeripheral2 identifier];
      uUIDString = [identifier2 UUIDString];

      v18 = MEMORY[0x1E695DF90];
      v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v20 = [v18 dictionaryWithObjectsAndKeys:{v19, @"ax_hearing_device_isleft_key", 0}];

      leftUUID = [(AXHearingAidDevice *)self leftUUID];

      if (leftUUID)
      {
        leftUUID2 = [(AXHearingAidDevice *)self leftUUID];
        [v20 setObject:leftUUID2 forKey:@"ax_hearing_device_hiid_key"];
      }

      rightUUID = [(AXHearingAidDevice *)self rightUUID];

      if (rightUUID)
      {
        rightUUID2 = [(AXHearingAidDevice *)self rightUUID];
        [v20 setObject:rightUUID2 forKey:@"ax_hearing_device_hiidother_key"];
      }

      if (uUIDString)
      {
        [v20 setObject:uUIDString forKey:@"ax_hearing_device_uuid_key"];
      }

      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXHearingAidDevice leftLeaVersion](self, "leftLeaVersion")}];
      [v20 setObject:v25 forKey:@"ax_hearing_device_lea_version_key"];

      [v12 setObject:v20 forKey:@"ax_hearing_device_left_peripheral_key"];
    }
  }

  if ([(AXHearingAidDevice *)self rightAvailable])
  {
    rightPeripheral = [(AXHearingAidDevice *)self rightPeripheral];
    identifier3 = [rightPeripheral identifier];

    if (identifier3)
    {
      rightPeripheral2 = [(AXHearingAidDevice *)self rightPeripheral];
      identifier4 = [rightPeripheral2 identifier];
      uUIDString2 = [identifier4 UUIDString];

      v31 = MEMORY[0x1E695DF90];
      v32 = [MEMORY[0x1E696AD98] numberWithBool:0];
      v33 = [v31 dictionaryWithObjectsAndKeys:{v32, @"ax_hearing_device_isleft_key", 0}];

      rightUUID3 = [(AXHearingAidDevice *)self rightUUID];

      if (rightUUID3)
      {
        rightUUID4 = [(AXHearingAidDevice *)self rightUUID];
        [v33 setObject:rightUUID4 forKey:@"ax_hearing_device_hiid_key"];
      }

      leftUUID3 = [(AXHearingAidDevice *)self leftUUID];

      if (leftUUID3)
      {
        leftUUID4 = [(AXHearingAidDevice *)self leftUUID];
        [v33 setObject:leftUUID4 forKey:@"ax_hearing_device_hiidother_key"];
      }

      if (uUIDString2)
      {
        [v33 setObject:uUIDString2 forKey:@"ax_hearing_device_uuid_key"];
      }

      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AXHearingAidDevice rightLeaVersion](self, "rightLeaVersion")}];
      [v33 setObject:v38 forKey:@"ax_hearing_device_lea_version_key"];

      [v12 setObject:v33 forKey:@"ax_hearing_device_right_peripheral_key"];
    }
  }

  if ([v12 count] >= 4)
  {
    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)discoveringServiceUUIDs
{
  if (discoveringServiceUUIDs_onceToken_0 != -1)
  {
    [AXHearingAidDevice discoveringServiceUUIDs];
  }

  v3 = discoveringServiceUUIDs_discoveringServiceUUIDs_0;

  return v3;
}

void __45__AXHearingAidDevice_discoveringServiceUUIDs__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7D74F4BD-C74A-4431-862C-CCE884371592"];
  v1 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180a"];
  v2 = [MEMORY[0x1E695D2A0] UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
  v3 = [v0 initWithObjects:{v5, v1, v2, 0}];
  v4 = discoveringServiceUUIDs_discoveringServiceUUIDs_0;
  discoveringServiceUUIDs_discoveringServiceUUIDs_0 = v3;
}

- (void)updateBatteryServiceForPeripheral:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateBatteryServiceForPeripheral:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeValueForProperty:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "HearingAidDevice: writeValueForProperty, FAILED left write response check %lld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)writeValueForProperty:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_ERROR, "HearingAidDevice: writeValueForProperty, FAILED right write response check %lld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(NSObject *)a3 forProperty:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = hearingPropertyDescription(a1);
  OUTLINED_FUNCTION_0_1();
  v8 = a2;
  _os_log_debug_impl(&dword_1DA5E2000, a3, OS_LOG_TYPE_DEBUG, "HearingAidDevice: setValue, Setting %@ to %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)valueForProperty:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = hearingPropertyDescription(a1);
  v6 = 138543618;
  v7 = v4;
  v8 = 2048;
  v9 = a1;
  _os_log_fault_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_FAULT, "%{public}@ (%ld) is unhandled resulting in infinite recursion.", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:didDiscoverCharacteristicsForService:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:didWriteValueForCharacteristic:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __54__AXHearingAidDevice_pairingDidCompleteForPeripheral___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_FAULT, "Device paired but doesn't contain peripheral %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)didAddPeripheral:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 serviceTypeDescription];
  v5 = [a1 isPaired];
  v6 = [a1 keepInSync];
  v7 = [a1 name];
  v8 = [a1 leftPeripheral];
  v9 = [v8 name];
  v10 = [a1 rightPeripheral];
  v11 = [v10 name];
  v13 = 138413826;
  v14 = v4;
  v15 = 1024;
  v16 = v5;
  v17 = 1024;
  v18 = v6;
  v19 = 2048;
  v20 = a1;
  v21 = 2112;
  v22 = v7;
  v23 = 2112;
  v24 = v9;
  v25 = 2112;
  v26 = v11;
  _os_log_debug_impl(&dword_1DA5E2000, a2, OS_LOG_TYPE_DEBUG, "%@: HearingDevice (paired: %d %d) didAddPeripheral: %p %@, left: %@, right: %@", &v13, 0x40u);

  v12 = *MEMORY[0x1E69E9840];
}

@end