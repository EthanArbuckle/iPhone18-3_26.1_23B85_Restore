@interface MRAVOutputDeviceSymbolProvider
+ (id)_fallbackCompositionForOutputDevice:(id)device;
+ (id)compositionForClusterOutputDevice:(id)device;
+ (id)compositionForOutputDevice:(id)device;
+ (id)compositionForOutputDevices:(id)devices;
+ (id)symbolNameForOutputDevice:(id)device;
+ (id)symbolNameForOutputDevices:(id)devices;
@end

@implementation MRAVOutputDeviceSymbolProvider

+ (id)symbolNameForOutputDevice:(id)device
{
  v3 = [self compositionForOutputDevice:device];
  v4 = [MRGroupSymbolProvider symbolNameForComposition:v3];

  return v4;
}

+ (id)compositionForOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_alloc_init(MRGroupComposition);
  deviceType = [deviceCopy deviceType];
  isAirpodsDevice = [deviceCopy isAirpodsDevice];
  if (deviceType == 2)
  {
    v8 = isAirpodsDevice;
    if ([deviceCopy isHearingDevice])
    {
      [(MRGroupComposition *)v5 setHearingDeviceCount:1];
      if (!v8)
      {
        goto LABEL_17;
      }

LABEL_16:
      if ([deviceCopy isAppleAccessory])
      {
        goto LABEL_17;
      }

LABEL_19:
      v10 = v5;
      goto LABEL_20;
    }

    if ([deviceCopy deviceSubtype] == 9)
    {
      [(MRGroupComposition *)v5 setHeadphoneCount:1];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    [(MRGroupComposition *)v5 setBluetoothSpeakerCount:1];
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    modelID = [deviceCopy modelID];
    [(MRGroupComposition *)v5 setSoloProductIdentifier:modelID];
LABEL_18:

    goto LABEL_19;
  }

  if ([deviceCopy isAirpodsMaxDevice] && objc_msgSend(deviceCopy, "deviceType") == 5)
  {
    [(MRGroupComposition *)v5 setHeadphoneCount:1];
    goto LABEL_17;
  }

  if ([deviceCopy clusterType])
  {
    v9 = [self compositionForClusterOutputDevice:deviceCopy];

    v10 = v9;
LABEL_20:
    v5 = v10;
LABEL_21:
    v12 = v10;
    goto LABEL_22;
  }

  if ([deviceCopy deviceSubtype] == 11)
  {
    [(MRGroupComposition *)v5 setTvCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 16)
  {
    [(MRGroupComposition *)v5 setSetTopCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 17)
  {
    [(MRGroupComposition *)v5 setTvStickCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 13)
  {
    [(MRGroupComposition *)v5 setAtvCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy isBeatsLegacyDevice])
  {
    [(MRGroupComposition *)v5 setLegacyBeatsCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 19)
  {
    goto LABEL_34;
  }

  if ([deviceCopy deviceSubtype] == 18)
  {
    modelID2 = [deviceCopy modelID];
    [(MRGroupComposition *)v5 setSoloModelIdentifier:modelID2];

    [(MRGroupComposition *)v5 setMacCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 21)
  {
    modelID3 = [deviceCopy modelID];
    [(MRGroupComposition *)v5 setSoloModelIdentifier:modelID3];

    [(MRGroupComposition *)v5 setVisionCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy isStudioDisplay])
  {
    [(MRGroupComposition *)v5 setDisplayCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy isB825Device])
  {
    [(MRGroupComposition *)v5 setEarPodCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceType] == 3)
  {
    [(MRGroupComposition *)v5 setCarplayCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceSubtype] == 12)
  {
    modelID4 = [deviceCopy modelID];
    [(MRGroupComposition *)v5 addHomePodWithModelIdentifier:modelID4];

    modelID = [deviceCopy modelID];
    [(MRGroupComposition *)v5 setSoloModelIdentifier:modelID];
    goto LABEL_18;
  }

  if ([deviceCopy isHearingDevice])
  {
    [(MRGroupComposition *)v5 setHearingDeviceCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceType] == 4 && objc_msgSend(deviceCopy, "deviceSubtype") == 1 && objc_msgSend(deviceCopy, "hostDeviceClass") == 1)
  {
LABEL_34:
    modelID5 = [deviceCopy modelID];
    [(MRGroupComposition *)v5 setSoloModelIdentifier:modelID5];

    [(MRGroupComposition *)v5 setIPhoneCount:1];
    goto LABEL_19;
  }

  if ([deviceCopy deviceType] == 4 && objc_msgSend(deviceCopy, "deviceSubtype") == 1)
  {
    sourceInfo = [deviceCopy sourceInfo];
    multipleBuiltInDevices = [sourceInfo multipleBuiltInDevices];

    if (multipleBuiltInDevices)
    {
      v10 = +[MRGroupComposition multiBuiltInComposition];
      goto LABEL_21;
    }
  }

  if ([deviceCopy deviceType] == 4)
  {
    [(MRGroupComposition *)v5 setBuiltInCount:1];
    goto LABEL_19;
  }

  soloProductIdentifier = [(MRGroupComposition *)v5 soloProductIdentifier];
  v21 = [self _fallbackCompositionForOutputDevice:deviceCopy];

  [v21 setSoloProductIdentifier:soloProductIdentifier];
  v5 = v21;

  v12 = v5;
LABEL_22:

  return v12;
}

+ (id)_fallbackCompositionForOutputDevice:(id)device
{
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  deviceSubtype = [deviceCopy deviceSubtype];
  producesLowFidelityAudio = [deviceCopy producesLowFidelityAudio];

  v7 = objc_alloc_init(MRGroupComposition);
  v8 = v7;
  if (deviceType > 1)
  {
    if (deviceType == 2)
    {
      if (deviceSubtype != 9)
      {
        [(MRGroupComposition *)v7 setBluetoothSpeakerCount:1];
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (deviceType == 3)
    {
LABEL_8:
      [(MRGroupComposition *)v7 setVehicleCount:1];
      goto LABEL_21;
    }

LABEL_9:
    if (deviceSubtype > 0xE)
    {
      goto LABEL_19;
    }

    if (((1 << deviceSubtype) & 0x980) != 0)
    {
      [(MRGroupComposition *)v7 setTvCount:1];
      goto LABEL_21;
    }

    if (((1 << deviceSubtype) & 0x30) != 0)
    {
      if (producesLowFidelityAudio)
      {
        goto LABEL_5;
      }

LABEL_13:
      [(MRGroupComposition *)v7 setHifiCount:1];
      goto LABEL_21;
    }

    if (deviceSubtype != 14)
    {
LABEL_19:
      if (deviceSubtype != 2)
      {
        goto LABEL_20;
      }

LABEL_15:
      [(MRGroupComposition *)v7 setHeadphoneCount:1];
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  if (deviceType)
  {
    if (deviceType == 1)
    {
      if (producesLowFidelityAudio)
      {
LABEL_5:
        [(MRGroupComposition *)v7 setLofiCount:1];
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_20:
  [(MRGroupComposition *)v7 setUnknownCount:1];
LABEL_21:

  return v8;
}

+ (id)symbolNameForOutputDevices:(id)devices
{
  v3 = [self compositionForOutputDevices:devices];
  v4 = [MRGroupSymbolProvider symbolNameForComposition:v3];

  return v4;
}

+ (id)compositionForOutputDevices:(id)devices
{
  v81 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v27 = devicesCopy;
  if ([devicesCopy count] == 1)
  {
    firstObject = [devicesCopy firstObject];
    v6 = [self compositionForOutputDevice:firstObject];
  }

  else
  {
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__48;
    v72 = __Block_byref_object_dispose__48;
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __62__MRAVOutputDeviceSymbolProvider_compositionForOutputDevices___block_invoke;
    v43[3] = &unk_1E76A4408;
    v43[4] = &v68;
    v43[5] = &v74;
    v43[6] = &v64;
    v43[7] = &v60;
    v43[8] = &v56;
    v43[9] = &v52;
    v43[10] = &v48;
    v43[11] = &v44;
    v7 = MEMORY[0x1A58E3570](v43);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = devicesCopy;
    v8 = [obj countByEnumeratingWithState:&v39 objects:v80 count:16];
    if (v8)
    {
      v29 = *v40;
      do
      {
        v30 = v8;
        for (i = 0; i != v30; ++i)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          if ([v10 deviceSubtype] == 15)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            clusterComposition = [v10 clusterComposition];
            v12 = [clusterComposition countByEnumeratingWithState:&v35 objects:v79 count:16];
            if (v12)
            {
              v13 = *v36;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v36 != v13)
                  {
                    objc_enumerationMutation(clusterComposition);
                  }

                  v15 = *(*(&v35 + 1) + 8 * j);
                  deviceType = [v15 deviceType];
                  deviceSubtype = [v15 deviceSubtype];
                  modelID = [v15 modelID];
                  (v7)[2](v7, 0, deviceType, deviceSubtype, modelID);
                }

                v12 = [clusterComposition countByEnumeratingWithState:&v35 objects:v79 count:16];
              }

              while (v12);
            }
          }

          else
          {
            deviceType2 = [v10 deviceType];
            deviceSubtype2 = [v10 deviceSubtype];
            clusterComposition = [v10 modelID];
            (v7)[2](v7, v10, deviceType2, deviceSubtype2, clusterComposition);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v39 objects:v80 count:16];
      }

      while (v8);
    }

    v6 = objc_alloc_init(MRGroupComposition);
    [(MRGroupComposition *)v6 setAtvCount:v75[3]];
    [(MRGroupComposition *)v6 setHeadphoneCount:v65[3]];
    [(MRGroupComposition *)v6 setSetTopCount:v61[3]];
    [(MRGroupComposition *)v6 setTvStickCount:v57[3]];
    [(MRGroupComposition *)v6 setTvCount:v53[3]];
    [(MRGroupComposition *)v6 setMacCount:v49[3]];
    [(MRGroupComposition *)v6 setHifiCount:v45[3]];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v69[5];
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v78 count:16];
    if (v22)
    {
      v23 = *v32;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [(MRGroupComposition *)v6 addHomePodWithModelIdentifier:*(*(&v31 + 1) + 8 * k), v27];
        }

        v22 = [v21 countByEnumeratingWithState:&v31 objects:v78 count:16];
      }

      while (v22);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v68, 8);

    _Block_object_dispose(&v74, 8);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v6;
}

void __62__MRAVOutputDeviceSymbolProvider_compositionForOutputDevices___block_invoke(void *a1, void *a2, int a3, int a4, void *a5)
{
  v12 = a2;
  v9 = a5;
  if (a4 <= 12)
  {
    switch(a4)
    {
      case 2:
        v10 = a1[6];
        goto LABEL_23;
      case 11:
        v10 = a1[9];
        goto LABEL_23;
      case 12:
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_1F1513E38;
        }

        [*(*(a1[4] + 8) + 40) addObject:v11];
        goto LABEL_24;
    }
  }

  else if (a4 > 16)
  {
    if (a4 == 17)
    {
      v10 = a1[8];
      goto LABEL_23;
    }

    if (a4 == 18)
    {
      v10 = a1[10];
      goto LABEL_23;
    }
  }

  else
  {
    if (a4 == 13)
    {
      v10 = a1[5];
      goto LABEL_23;
    }

    if (a4 == 16)
    {
      v10 = a1[7];
LABEL_23:
      ++*(*(v10 + 8) + 24);
      goto LABEL_24;
    }
  }

  if (a3 == 1 && ([v12 producesLowFidelityAudio] & 1) == 0)
  {
    v10 = a1[11];
    goto LABEL_23;
  }

LABEL_24:
}

+ (id)compositionForClusterOutputDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy clusterType] == 2)
  {
    clusterCompositionOutputDevices = [deviceCopy clusterCompositionOutputDevices];
    clusterCompositionOutputDevices3 = [clusterCompositionOutputDevices msv_firstWhere:&__block_literal_global_104];

    modelID = [clusterCompositionOutputDevices3 modelID];
    v8 = [MRGroupComposition homePodHomeTheaterCompositionWithHomePodModelIdentifier:modelID];

LABEL_7:
    goto LABEL_8;
  }

  clusterType = [deviceCopy clusterType];
  clusterCompositionOutputDevices2 = [deviceCopy clusterCompositionOutputDevices];
  v11 = clusterCompositionOutputDevices2;
  if (clusterType == 1)
  {
    v12 = [clusterCompositionOutputDevices2 msv_firstWhere:&__block_literal_global_6_2];

    modelID2 = [v12 modelID];
    v8 = [MRGroupComposition homePodStereoPairCompositionWithModelIdentifier:modelID2];

    goto LABEL_8;
  }

  v14 = [clusterCompositionOutputDevices2 count];

  if (v14)
  {
    clusterCompositionOutputDevices3 = [deviceCopy clusterCompositionOutputDevices];
    v8 = [self compositionForOutputDevices:clusterCompositionOutputDevices3];
    goto LABEL_7;
  }

  v8 = +[MRGroupComposition unknownComposition];
LABEL_8:

  return v8;
}

@end