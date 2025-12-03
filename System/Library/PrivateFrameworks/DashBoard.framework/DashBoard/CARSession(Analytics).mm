@interface CARSession(Analytics)
- (id)analytics_dictionaryRepresentationWithVehicle:()Analytics;
@end

@implementation CARSession(Analytics)

- (id)analytics_dictionaryRepresentationWithVehicle:()Analytics
{
  v4 = a3;
  configuration = [self configuration];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pPID = [configuration PPID];
  v8 = pPID;
  if (pPID)
  {
    v9 = pPID;
  }

  else
  {
    v9 = @"(no value)";
  }

  [dictionary setObject:v9 forKeyedSubscript:@"ppid"];

  name = [configuration name];
  v11 = name;
  if (name)
  {
    v12 = name;
  }

  else
  {
    v12 = @"(no value)";
  }

  [dictionary setObject:v12 forKeyedSubscript:@"name"];

  modelName = [configuration modelName];
  v14 = modelName;
  if (modelName)
  {
    v15 = modelName;
  }

  else
  {
    v15 = @"(no value)";
  }

  [dictionary setObject:v15 forKeyedSubscript:@"airplayModel"];

  manufacturerName = [configuration manufacturerName];
  v17 = manufacturerName;
  if (manufacturerName)
  {
    v18 = manufacturerName;
  }

  else
  {
    v18 = @"(no value)";
  }

  [dictionary setObject:v18 forKeyedSubscript:@"manufacturer"];

  vehicleName = [configuration vehicleName];
  v20 = vehicleName;
  if (vehicleName)
  {
    v21 = vehicleName;
  }

  else
  {
    v21 = @"(no value)";
  }

  [dictionary setObject:v21 forKeyedSubscript:@"iAPName"];

  vehicleModelName = [configuration vehicleModelName];
  v23 = vehicleModelName;
  if (vehicleModelName)
  {
    v24 = vehicleModelName;
  }

  else
  {
    v24 = @"(no value)";
  }

  [dictionary setObject:v24 forKeyedSubscript:@"iAPModel"];

  vehicleManufacturer = [configuration vehicleManufacturer];
  v26 = vehicleManufacturer;
  if (vehicleManufacturer)
  {
    v27 = vehicleManufacturer;
  }

  else
  {
    v27 = @"(no value)";
  }

  [dictionary setObject:v27 forKeyedSubscript:@"iAPManufacturer"];

  vehicleFirmwareVersion = [configuration vehicleFirmwareVersion];
  v29 = vehicleFirmwareVersion;
  if (vehicleFirmwareVersion)
  {
    v30 = vehicleFirmwareVersion;
  }

  else
  {
    v30 = @"(no value)";
  }

  [dictionary setObject:v30 forKeyedSubscript:@"firmwareVersion"];

  vehicleHardwareVersion = [configuration vehicleHardwareVersion];
  v32 = vehicleHardwareVersion;
  if (vehicleHardwareVersion)
  {
    v33 = vehicleHardwareVersion;
  }

  else
  {
    v33 = @"(no value)";
  }

  [dictionary setObject:v33 forKeyedSubscript:@"hardwareVersion"];

  supportsVehicleData = [configuration supportsVehicleData];
  v35 = MEMORY[0x277CBEC28];
  v36 = MEMORY[0x277CBEC38];
  if (supportsVehicleData)
  {
    v37 = MEMORY[0x277CBEC38];
  }

  else
  {
    v37 = MEMORY[0x277CBEC28];
  }

  [dictionary setObject:v37 forKeyedSubscript:@"nextGenCarPlaySession"];
  v38 = MEMORY[0x277CCABB0];
  supportsWirelessCarPlay = [v4 supportsWirelessCarPlay];
  supportsUSBCarPlay = [v4 supportsUSBCarPlay];

  v41 = [v38 numberWithInt:(supportsUSBCarPlay + supportsWirelessCarPlay)];
  v42 = MEMORY[0x277CCACA8];
  descriptionForTransportType = [configuration descriptionForTransportType];
  v44 = [v42 stringWithFormat:@"%@ %@", descriptionForTransportType, v41];

  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = @"(no value)";
  }

  [dictionary setObject:v45 forKeyedSubscript:@"transports"];
  systemNightMode = [self systemNightMode];
  if (systemNightMode)
  {
    v47 = v36;
  }

  else
  {
    v47 = v35;
  }

  [dictionary setObject:v47 forKeyedSubscript:@"systemNightMode"];

  descriptionForLimitableUserInterfaces = [configuration descriptionForLimitableUserInterfaces];
  v49 = descriptionForLimitableUserInterfaces;
  if (descriptionForLimitableUserInterfaces)
  {
    v50 = descriptionForLimitableUserInterfaces;
  }

  else
  {
    v50 = @"(no value)";
  }

  [dictionary setObject:v50 forKeyedSubscript:@"limitableUITypes"];

  [self voiceTriggerMode];
  v51 = CARStringFromVoiceTriggerMode();
  v52 = v51;
  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = @"(no value)";
  }

  [dictionary setObject:v53 forKeyedSubscript:@"voiceTriggerMode"];

  screens = [configuration screens];
  v55 = [screens count];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  [dictionary setObject:v56 forKeyedSubscript:@"screenCount"];

  if ([configuration vehicleSupportsDestinationSharing])
  {
    v57 = v36;
  }

  else
  {
    v57 = v35;
  }

  [dictionary setObject:v57 forKeyedSubscript:@"supportsDestinationSharing"];
  sourceVersion = [self sourceVersion];
  v59 = sourceVersion;
  if (sourceVersion)
  {
    v60 = sourceVersion;
  }

  else
  {
    v60 = @"(no value)";
  }

  [dictionary setObject:v60 forKeyedSubscript:@"SourceVersion"];

  screens2 = [configuration screens];
  firstObject = [screens2 firstObject];

  if (firstObject)
  {
    descriptionForPrimaryInteractionModel = [firstObject descriptionForPrimaryInteractionModel];
    v64 = descriptionForPrimaryInteractionModel;
    if (descriptionForPrimaryInteractionModel)
    {
      v65 = descriptionForPrimaryInteractionModel;
    }

    else
    {
      v65 = @"(no value)";
    }

    [dictionary setObject:v65 forKeyedSubscript:@"primaryInteraction"];

    descriptionForAvailableInteractionModels = [firstObject descriptionForAvailableInteractionModels];
    v67 = descriptionForAvailableInteractionModels;
    if (descriptionForAvailableInteractionModels)
    {
      v68 = descriptionForAvailableInteractionModels;
    }

    else
    {
      v68 = @"(no value)";
    }

    [dictionary setObject:v68 forKeyedSubscript:@"availableInteractions"];

    if ([firstObject supportsHighFidelityTouch])
    {
      v69 = v36;
    }

    else
    {
      v69 = v35;
    }

    [dictionary setObject:v69 forKeyedSubscript:@"supportsHiFiTouch"];
  }

  return dictionary;
}

@end