@interface CARSession(Analytics)
- (id)analytics_dictionaryRepresentationWithVehicle:()Analytics;
@end

@implementation CARSession(Analytics)

- (id)analytics_dictionaryRepresentationWithVehicle:()Analytics
{
  v4 = a3;
  v5 = [a1 configuration];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v5 PPID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"(no value)";
  }

  [v6 setObject:v9 forKeyedSubscript:@"ppid"];

  v10 = [v5 name];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"(no value)";
  }

  [v6 setObject:v12 forKeyedSubscript:@"name"];

  v13 = [v5 modelName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(no value)";
  }

  [v6 setObject:v15 forKeyedSubscript:@"airplayModel"];

  v16 = [v5 manufacturerName];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"(no value)";
  }

  [v6 setObject:v18 forKeyedSubscript:@"manufacturer"];

  v19 = [v5 vehicleName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"(no value)";
  }

  [v6 setObject:v21 forKeyedSubscript:@"iAPName"];

  v22 = [v5 vehicleModelName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"(no value)";
  }

  [v6 setObject:v24 forKeyedSubscript:@"iAPModel"];

  v25 = [v5 vehicleManufacturer];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"(no value)";
  }

  [v6 setObject:v27 forKeyedSubscript:@"iAPManufacturer"];

  v28 = [v5 vehicleFirmwareVersion];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"(no value)";
  }

  [v6 setObject:v30 forKeyedSubscript:@"firmwareVersion"];

  v31 = [v5 vehicleHardwareVersion];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"(no value)";
  }

  [v6 setObject:v33 forKeyedSubscript:@"hardwareVersion"];

  v34 = [v5 supportsVehicleData];
  v35 = MEMORY[0x277CBEC28];
  v36 = MEMORY[0x277CBEC38];
  if (v34)
  {
    v37 = MEMORY[0x277CBEC38];
  }

  else
  {
    v37 = MEMORY[0x277CBEC28];
  }

  [v6 setObject:v37 forKeyedSubscript:@"nextGenCarPlaySession"];
  v38 = MEMORY[0x277CCABB0];
  v39 = [v4 supportsWirelessCarPlay];
  v40 = [v4 supportsUSBCarPlay];

  v41 = [v38 numberWithInt:(v40 + v39)];
  v42 = MEMORY[0x277CCACA8];
  v43 = [v5 descriptionForTransportType];
  v44 = [v42 stringWithFormat:@"%@ %@", v43, v41];

  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = @"(no value)";
  }

  [v6 setObject:v45 forKeyedSubscript:@"transports"];
  v46 = [a1 systemNightMode];
  if (v46)
  {
    v47 = v36;
  }

  else
  {
    v47 = v35;
  }

  [v6 setObject:v47 forKeyedSubscript:@"systemNightMode"];

  v48 = [v5 descriptionForLimitableUserInterfaces];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = @"(no value)";
  }

  [v6 setObject:v50 forKeyedSubscript:@"limitableUITypes"];

  [a1 voiceTriggerMode];
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

  [v6 setObject:v53 forKeyedSubscript:@"voiceTriggerMode"];

  v54 = [v5 screens];
  v55 = [v54 count];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  [v6 setObject:v56 forKeyedSubscript:@"screenCount"];

  if ([v5 vehicleSupportsDestinationSharing])
  {
    v57 = v36;
  }

  else
  {
    v57 = v35;
  }

  [v6 setObject:v57 forKeyedSubscript:@"supportsDestinationSharing"];
  v58 = [a1 sourceVersion];
  v59 = v58;
  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = @"(no value)";
  }

  [v6 setObject:v60 forKeyedSubscript:@"SourceVersion"];

  v61 = [v5 screens];
  v62 = [v61 firstObject];

  if (v62)
  {
    v63 = [v62 descriptionForPrimaryInteractionModel];
    v64 = v63;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = @"(no value)";
    }

    [v6 setObject:v65 forKeyedSubscript:@"primaryInteraction"];

    v66 = [v62 descriptionForAvailableInteractionModels];
    v67 = v66;
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = @"(no value)";
    }

    [v6 setObject:v68 forKeyedSubscript:@"availableInteractions"];

    if ([v62 supportsHighFidelityTouch])
    {
      v69 = v36;
    }

    else
    {
      v69 = v35;
    }

    [v6 setObject:v69 forKeyedSubscript:@"supportsHiFiTouch"];
  }

  return v6;
}

@end