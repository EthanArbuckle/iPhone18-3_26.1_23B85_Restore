@interface AXFakeHearingAidDevice
- (BOOL)leftAvailable;
- (BOOL)programsListsAreEqual;
- (BOOL)rightAvailable;
- (BOOL)showCombinedPrograms;
- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)property;
- (id)manufacturerForType;
- (id)modelForType;
- (id)persistentRepresentation;
- (id)valueForProperty:(unint64_t)property;
- (unint64_t)availablePropertiesForPeripheral:(id)peripheral;
- (void)createPrograms;
- (void)dealloc;
- (void)persist;
- (void)registerWriteBlock:(id)block;
- (void)setValue:(id)value forProperty:(unint64_t)property;
@end

@implementation AXFakeHearingAidDevice

- (void)dealloc
{
  [(AXFakeHearingAidDevice *)self setName:0];
  [(AXFakeHearingAidDevice *)self setManufacturer:0];
  [(AXFakeHearingAidDevice *)self setModel:0];
  [(AXFakeHearingAidDevice *)self setLeftUUID:0];
  [(AXFakeHearingAidDevice *)self setRightUUID:0];
  [(AXFakeHearingAidDevice *)self setLeftFirmwareVersion:0];
  [(AXFakeHearingAidDevice *)self setRightFirmwareVersion:0];
  [(AXFakeHearingAidDevice *)self setLeftHardwareVersion:0];
  [(AXFakeHearingAidDevice *)self setRightHardwareVersion:0];
  [(AXFakeHearingAidDevice *)self setLeftBatteryLowDate:0];
  [(AXFakeHearingAidDevice *)self setRightBatteryLowDate:0];
  v3.receiver = self;
  v3.super_class = AXFakeHearingAidDevice;
  [(AXHearingAidDevice *)&v3 dealloc];
}

- (id)manufacturerForType
{
  if ([(AXFakeHearingAidDevice *)self type]== 64)
  {
    return @"Carbondale";
  }

  else
  {
    return @"That Fruit Company";
  }
}

- (id)modelForType
{
  type = [(AXFakeHearingAidDevice *)self type];
  v3 = @"DEMO";
  v4 = @"T0B1AS";
  v5 = @"P0E";
  v6 = @"IL5440";
  if (type != 64)
  {
    v6 = @"DEMO";
  }

  if (type != 32)
  {
    v5 = v6;
  }

  if (type != 16)
  {
    v4 = v5;
  }

  if (type == 8)
  {
    v3 = @"B0TH";
  }

  if (type == 4)
  {
    v3 = @"R1G4T";
  }

  if (type == 2)
  {
    v3 = @"L3FT";
  }

  if (type <= 15)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

void __33__AXFakeHearingAidDevice_connect__block_invoke(uint64_t a1)
{
  v2 = +[AXHearingAidDeviceController sharedController];
  [v2 device:*(a1 + 32) didUpdateProperty:0xD07D42105FCLL];
}

- (BOOL)leftAvailable
{
  if (([(AXFakeHearingAidDevice *)self type]& 0x40) != 0 || ([(AXFakeHearingAidDevice *)self type]& 2) != 0 || ([(AXFakeHearingAidDevice *)self type]& 8) != 0 || ([(AXFakeHearingAidDevice *)self type]& 0x10) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(AXFakeHearingAidDevice *)self type]>> 5) & 1;
  }

  return v3;
}

- (BOOL)rightAvailable
{
  if (([(AXFakeHearingAidDevice *)self type]& 0x40) != 0 || ([(AXFakeHearingAidDevice *)self type]& 4) != 0 || ([(AXFakeHearingAidDevice *)self type]& 8) != 0 || ([(AXFakeHearingAidDevice *)self type]& 0x10) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(AXFakeHearingAidDevice *)self type]>> 5) & 1;
  }

  return v3;
}

- (void)createPrograms
{
  if (!self->_leftFakePrograms)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leftFakePrograms = self->_leftFakePrograms;
    self->_leftFakePrograms = v3;

    if ([(AXFakeHearingAidDevice *)self leftAvailable])
    {
      v5 = objc_alloc_init(AXHearingAidMode);
      [(AXHearingAidMode *)v5 setName:@"Default"];
      [(AXHearingAidMode *)v5 setCategory:1];
      [(AXHearingAidMode *)v5 setIndex:1];
      [(AXHearingAidMode *)v5 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v5];
      v6 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v6 setName:@"Theater"];
      [(AXHearingAidMode *)v6 setCategory:3];
      [(AXHearingAidMode *)v6 setIndex:4];
      [(AXHearingAidMode *)v6 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v6];
      v7 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v7 setName:@"Car"];
      [(AXHearingAidMode *)v7 setCategory:4];
      [(AXHearingAidMode *)v7 setIndex:7];
      [(AXHearingAidMode *)v7 setEar:2];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v7];
      v8 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v8 setName:@"Restaurant"];
      [(AXHearingAidMode *)v8 setCategory:3];
      [(AXHearingAidMode *)v8 setIndex:12];
      [(AXHearingAidMode *)v8 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v8];
      v9 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v9 setName:@"Television streamer"];
      [(AXHearingAidMode *)v9 setCategory:200];
      [(AXHearingAidMode *)v9 setIndex:14];
      [(AXHearingAidMode *)v9 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v9];
      v10 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v10 setName:@"Mixing streamer"];
      [(AXHearingAidMode *)v10 setCategory:100];
      [(AXHearingAidMode *)v10 setIndex:15];
      [(AXHearingAidMode *)v10 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v10];
      v11 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v11 setName:@"Mixing streamer 2"];
      [(AXHearingAidMode *)v11 setCategory:100];
      [(AXHearingAidMode *)v11 setIndex:16];
      [(AXHearingAidMode *)v11 setEar:6];
      [(NSMutableArray *)self->_leftFakePrograms addObject:v11];
      if ([(AXFakeHearingAidDevice *)self type]!= 64)
      {
        v12 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v12 setName:@"Park"];
        [(AXHearingAidMode *)v12 setCategory:4];
        [(AXHearingAidMode *)v12 setIndex:8];
        [(AXHearingAidMode *)v12 setEar:2];
        [(NSMutableArray *)self->_leftFakePrograms addObject:v12];
        v13 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v13 setName:@"Bowling"];
        [(AXHearingAidMode *)v13 setCategory:4];
        [(AXHearingAidMode *)v13 setIndex:9];
        [(AXHearingAidMode *)v13 setEar:6];
        [(NSMutableArray *)self->_leftFakePrograms addObject:v13];
        v11 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v11 setName:@"Skydiving"];
        [(AXHearingAidMode *)v11 setCategory:4];
        [(AXHearingAidMode *)v11 setIndex:10];
        [(AXHearingAidMode *)v11 setEar:6];
        [(NSMutableArray *)self->_leftFakePrograms addObject:v11];
      }
    }
  }

  if (!self->_rightFakePrograms)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    rightFakePrograms = self->_rightFakePrograms;
    self->_rightFakePrograms = v14;

    if ([(AXFakeHearingAidDevice *)self rightAvailable])
    {
      v16 = objc_alloc_init(AXHearingAidMode);
      [(AXHearingAidMode *)v16 setName:@"Default"];
      [(AXHearingAidMode *)v16 setCategory:1];
      [(AXHearingAidMode *)v16 setIndex:1];
      [(AXHearingAidMode *)v16 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v16];
      v17 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v17 setName:@"Theater"];
      [(AXHearingAidMode *)v17 setCategory:3];
      [(AXHearingAidMode *)v17 setIndex:4];
      [(AXHearingAidMode *)v17 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v17];
      v18 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v18 setName:@"Restaurant"];
      [(AXHearingAidMode *)v18 setCategory:3];
      [(AXHearingAidMode *)v18 setIndex:12];
      [(AXHearingAidMode *)v18 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v18];
      v19 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v19 setName:@"Television streamer"];
      [(AXHearingAidMode *)v19 setCategory:201];
      [(AXHearingAidMode *)v19 setIndex:14];
      [(AXHearingAidMode *)v19 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v19];
      v20 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v20 setName:@"Mixing streamer"];
      [(AXHearingAidMode *)v20 setCategory:100];
      [(AXHearingAidMode *)v20 setIndex:15];
      [(AXHearingAidMode *)v20 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v20];
      v21 = objc_alloc_init(AXHearingAidMode);

      [(AXHearingAidMode *)v21 setName:@"Mixing streamer 2"];
      [(AXHearingAidMode *)v21 setCategory:100];
      [(AXHearingAidMode *)v21 setIndex:16];
      [(AXHearingAidMode *)v21 setEar:6];
      [(NSMutableArray *)self->_rightFakePrograms addObject:v21];
      if ([(AXFakeHearingAidDevice *)self type]!= 64)
      {
        v22 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v22 setName:@"Parking lot"];
        [(AXHearingAidMode *)v22 setCategory:3];
        [(AXHearingAidMode *)v22 setIndex:25];
        [(AXHearingAidMode *)v22 setEar:6];
        [(NSMutableArray *)self->_rightFakePrograms addObject:v22];
        v23 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v23 setName:@"Baseball game"];
        [(AXHearingAidMode *)v23 setCategory:3];
        [(AXHearingAidMode *)v23 setIndex:26];
        [(AXHearingAidMode *)v23 setEar:4];
        [(NSMutableArray *)self->_rightFakePrograms addObject:v23];
        v21 = objc_alloc_init(AXHearingAidMode);

        [(AXHearingAidMode *)v21 setName:@"Space Station Ring Toss Jacuzzi"];
        [(AXHearingAidMode *)v21 setCategory:200];
        [(AXHearingAidMode *)v21 setIndex:27];
        [(AXHearingAidMode *)v21 setEar:4];
        [(NSMutableArray *)self->_rightFakePrograms addObject:v21];
      }
    }
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24 = self->_leftFakePrograms;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__AXFakeHearingAidDevice_createPrograms__block_invoke;
  v31[3] = &unk_1E85CD130;
  v31[4] = &v32;
  [(NSMutableArray *)v24 enumerateObjectsUsingBlock:v31];
  [(AXHearingAidDevice *)self setLeftPresetBitmask:*(v33 + 6)];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v25 = self->_rightFakePrograms;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__AXFakeHearingAidDevice_createPrograms__block_invoke_2;
  v26[3] = &unk_1E85CD130;
  v26[4] = &v27;
  [(NSMutableArray *)v25 enumerateObjectsUsingBlock:v26];
  [(AXHearingAidDevice *)self setRightPresetBitmask:*(v28 + 6)];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t __40__AXFakeHearingAidDevice_createPrograms__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 index];
  *(*(*(a1 + 32) + 8) + 24) += 1 << result;
  return result;
}

uint64_t __40__AXFakeHearingAidDevice_createPrograms__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 index];
  *(*(*(a1 + 32) + 8) + 24) += 1 << result;
  return result;
}

- (unint64_t)availablePropertiesForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 2;
  v5 = +[AXHearingAidDevice characteristicsUUIDs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__AXFakeHearingAidDevice_availablePropertiesForPeripheral___block_invoke;
  v9[3] = &unk_1E85CD158;
  v9[4] = &v10;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  excludedProperties = [(AXFakeHearingAidDevice *)self excludedProperties];
  v7 = v11[3] & ~excludedProperties;
  v11[3] = v7;
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __59__AXFakeHearingAidDevice_availablePropertiesForPeripheral___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 unsignedLongLongValue];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

- (BOOL)supportsCombinedVolumesForProperty:(unint64_t)property
{
  leftAvailable = [(AXFakeHearingAidDevice *)self leftAvailable];
  if (leftAvailable != [(AXFakeHearingAidDevice *)self rightAvailable])
  {
    return 1;
  }

  result = 0;
  if (property > 0x7FFFFFFF)
  {
    if (property == 0x80000000)
    {
      leftSensitivitySteps = [(AXHearingAidDevice *)self leftSensitivitySteps];
      if (leftSensitivitySteps == [(AXHearingAidDevice *)self rightSensitivitySteps])
      {
        [(AXHearingAidDevice *)self leftSensitivity];
        v9 = v16;
        [(AXHearingAidDevice *)self rightSensitivity];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }

    else
    {
      if (property != 0x4000000000)
      {
        return result;
      }

      leftMixedVolumeSteps = [(AXHearingAidDevice *)self leftMixedVolumeSteps];
      if (leftMixedVolumeSteps == [(AXHearingAidDevice *)self rightMixedVolumeSteps])
      {
        [(AXHearingAidDevice *)self leftMixedVolume];
        v9 = v12;
        [(AXHearingAidDevice *)self rightMixedVolume];
        return vabdd_f64(v9, v10) < 0.01;
      }
    }
  }

  else if (property == 64)
  {
    leftMicrophoneVolumeSteps = [(AXFakeHearingAidDevice *)self leftMicrophoneVolumeSteps];
    if (leftMicrophoneVolumeSteps == [(AXFakeHearingAidDevice *)self rightMicrophoneVolumeSteps])
    {
      [(AXHearingAidDevice *)self leftMicrophoneVolume];
      v9 = v14;
      [(AXHearingAidDevice *)self rightMicrophoneVolume];
      return vabdd_f64(v9, v10) < 0.01;
    }
  }

  else
  {
    if (property != 128)
    {
      return result;
    }

    leftStreamVolumeSteps = [(AXHearingAidDevice *)self leftStreamVolumeSteps];
    if (leftStreamVolumeSteps == [(AXHearingAidDevice *)self rightStreamVolumeSteps])
    {
      [(AXHearingAidDevice *)self leftStreamVolume];
      v9 = v8;
      [(AXHearingAidDevice *)self rightStreamVolume];
      return vabdd_f64(v9, v10) < 0.01;
    }
  }

  return 0;
}

- (BOOL)showCombinedPrograms
{
  if (![(AXHearingAidDevice *)self supportsCombinedPresets])
  {
    return 0;
  }

  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = (![v3 independentHearingAidSettings] || -[AXHearingAidDevice requiresCombinedPresets](self, "requiresCombinedPresets")) && -[AXFakeHearingAidDevice programsListsAreEqual](self, "programsListsAreEqual");

  return v4;
}

- (BOOL)programsListsAreEqual
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  leftPrograms = [(AXFakeHearingAidDevice *)self leftPrograms];
  v4 = [leftPrograms count];
  rightPrograms = [(AXFakeHearingAidDevice *)self rightPrograms];
  LOBYTE(v4) = v4 == [rightPrograms count];

  v18 = v4;
  if (*(v16 + 24) != 1)
  {
    goto LABEL_5;
  }

  leftPrograms2 = [(AXFakeHearingAidDevice *)self leftPrograms];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__AXFakeHearingAidDevice_programsListsAreEqual__block_invoke;
  v14[3] = &unk_1E85CC948;
  v14[4] = self;
  v14[5] = &v15;
  [leftPrograms2 enumerateObjectsUsingBlock:v14];

  if (v16[3])
  {
    leftSelectedProgram = [(AXHearingAidDevice *)self leftSelectedProgram];
    rightSelectedProgram = [(AXHearingAidDevice *)self rightSelectedProgram];
    if ([leftSelectedProgram isEqual:rightSelectedProgram])
    {
      leftSelectedStreamingProgram = [(AXHearingAidDevice *)self leftSelectedStreamingProgram];
      rightSelectedStreamingProgram = [(AXHearingAidDevice *)self rightSelectedStreamingProgram];
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

void __47__AXFakeHearingAidDevice_programsListsAreEqual__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (id)persistentRepresentation
{
  v3 = MEMORY[0x1E695DF90];
  v8.receiver = self;
  v8.super_class = AXFakeHearingAidDevice;
  persistentRepresentation = [(AXHearingAidDevice *)&v8 persistentRepresentation];
  v5 = [v3 dictionaryWithDictionary:persistentRepresentation];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AXFakeHearingAidDevice type](self, "type")}];
  [v5 setObject:v6 forKey:@"ax_hearing_device_fake_type_key"];

  return v5;
}

- (id)valueForProperty:(unint64_t)property
{
  v15[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AXFakeHearingAidDevice;
  v5 = [(AXHearingAidDevice *)&v13 valueForProperty:?];
  if (property == 512)
  {
    v14[0] = &unk_1F5624130;
    v14[1] = &unk_1F5624148;
    v15[0] = &unk_1F5624430;
    v15[1] = &unk_1F5624448;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    if (property != 0x200000)
    {
      goto LABEL_9;
    }

    if ([(AXFakeHearingAidDevice *)self isConnected])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = MEMORY[0x1E695DEC8];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v10 = [v7 arrayWithObjects:{v8, v9, 0}];

    v5 = v8;
  }

  v5 = v10;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setValue:(id)value forProperty:(unint64_t)property
{
  v7.receiver = self;
  v7.super_class = AXFakeHearingAidDevice;
  [(AXHearingAidDevice *)&v7 setValue:value forProperty:?];
  v6 = +[AXHearingAidDeviceController sharedController];
  [v6 device:self didUpdateProperty:property];
}

- (void)persist
{
  v4 = +[HUHearingAidSettings sharedInstance];
  persistentRepresentation = [(AXFakeHearingAidDevice *)self persistentRepresentation];
  [v4 setPairedHearingAids:persistentRepresentation];
}

- (void)registerWriteBlock:(id)block
{
  v4 = [block copy];
  writeBlock = self->_writeBlock;
  self->_writeBlock = v4;

  MEMORY[0x1EEE66BB8](v4, writeBlock);
}

@end