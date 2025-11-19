void sub_2536686E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253668E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59239(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25366927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253669650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253669D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366A3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366AB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366D560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

BOOL __lookupDeviceForRemoteCommands(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [v3 accessory];
    v6 = [v5 home];
    if (v6)
    {
      v7 = v4;
      v8 = [v7 accessory];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [v10 device];
      v12 = v11 != 0;
      if (v11)
      {
        context = objc_autoreleasePoolPush();
        v20 = v7;
        v13 = v7;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v22 = v18;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Routing the command to the device backing the media accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v15 = v11;
        *a2 = v11;
        v7 = v20;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_25366DAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDLowPowerModeStateMachineDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown (%@)", v3];
  }

  else
  {
    v1 = off_2797280A0[a1];
  }

  return v1;
}

id findMatchingCharacteristic(void *a1, void *a2)
{
  v3 = a1;
  v4 = @"00000221-0000-1000-8000-0026BB765291";
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __findMatchingCharacteristic_block_invoke;
  v9[3] = &unk_279728080;
  v10 = v3;
  v11 = @"00000221-0000-1000-8000-0026BB765291";
  v5 = @"00000221-0000-1000-8000-0026BB765291";
  v6 = v3;
  v7 = [a2 hmf_objectPassingTest:v9];

  return v7;
}

uint64_t __findMatchingCharacteristic_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 type];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      v8 = [v6 service];
      v9 = [v8 serviceType];
      v10 = [v9 isEqualToString:*(a1 + 40)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id deserializeObject(objc_class *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [(objc_class *)a1 conformsToProtocol:&unk_286660C80])
  {
    v6 = objc_alloc_init(a1);
    v16 = 0;
    v7 = [v6 parseFromData:v5 error:&v16];
    v8 = v16;
    if (v8 || !v6 || (v7 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = NSStringFromClass(a1);
        *buf = 138543874;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an object of class: %@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v6;
    v13 = v6;
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id HMDLowPowerModeOperationStatusDescription(unint64_t a1)
{
  v1 = HMDSleepConfigurationOperationStatusAsString(a1);
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationStatus" withString:&stru_286509E58];

  return v2;
}

id HMDLowPowerModeOperationTypeDescription(uint64_t a1)
{
  v1 = HMDSleepConfigurationOperationTypeAsString(a1);
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationType" withString:&stru_286509E58];

  return v2;
}

void sub_253671884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id HMDLowPowerModeWoWLANInfoForSupportedSleepConfiguration(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v25 = [MEMORY[0x277CBEB18] array];
  v2 = [v1 version];
  v3 = [v2 value];
  v4 = [v3 unsignedCharValue];

  [v1 supportedWoLPacketConfigurations];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = v1;
    v27 = 0;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 wakePacketType];
        v11 = [v10 value];

        v12 = [v9 wakeDestinationPort];
        v13 = [v12 value];
        v14 = [v13 unsignedShortValue];

        v15 = [v9 wakeDestinationAddress];
        v16 = [v9 wakeType];
        v17 = [v16 value];

        v18 = [v9 wakePattern];
        v19 = [[HMFWoWLANInfo alloc] initWithWakeVersion:v4 wakePort:v14 wakeAddress:v15 wakeType:v17 wakePacketType:v11 wakePattern:v18];
        v20 = v19;
        if (v19)
        {
          if (v27 || [(HMFWoWLANInfo *)v19 wakeType]!= 2)
          {
            [v25 addObject:v20];
          }

          else
          {
            v27 = v20;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
    v21 = v27;
    if (v27)
    {
      [v25 insertObject:v27 atIndex:0];
    }

    v1 = v24;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

void sub_253672434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2536725CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2536730CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253673F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t __HMDLowPowerModeUUIDFromAccessory_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CB66A944-B172-4D2F-A5B4-DCF2F9CFB9D4"];
  v1 = HMDLowPowerModeUUIDFromAccessory_namespace;
  HMDLowPowerModeUUIDFromAccessory_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25367650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25367684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253676B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253676EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536771E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoTopicReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__eventUUID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__topic;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id entityFromObject(void *a1, int a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277D47358]);
  v5 = [v3 objectForKeyedSubscript:@"objectName"];
  [v4 setName:v5];

  v6 = [v3 objectForKeyedSubscript:@"objectType"];
  [v4 setEntityType:v6];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [v3 objectForKeyedSubscript:@"objectIdentifier"];
  v9 = [v7 URLWithString:v8];
  [v4 setIdentifier:v9];

  if (a2)
  {
    v10 = [v3 hmf_arrayForKey:@"objectRelatedIdentifiers"];
    if ([v10 count])
    {
      v11 = hmd_urlsFromStrings(v10);
      [v4 setRelatedEntityIdentifiers:v11];
    }
  }

  v12 = [v3 objectForKeyedSubscript:@"objectHome"];

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"objectHome"];
    [v4 setHome:v13];

    if (a2)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [v3 objectForKeyedSubscript:@"objectHomeIdentifier"];
      v16 = [v14 URLWithString:v15];
      [v4 setHomeIdentifier:v16];
    }
  }

  v17 = [v3 objectForKeyedSubscript:@"objectRoom"];

  if (v17)
  {
    v18 = [v3 objectForKeyedSubscript:@"objectRoom"];
    [v4 setRoom:v18];

    if (!a2)
    {
      goto LABEL_20;
    }

    v19 = MEMORY[0x277CBEBC0];
    v20 = [v3 objectForKeyedSubscript:@"objectRoomIdentifier"];
    v21 = [v19 URLWithString:v20];
    [v4 setRoomIdentifier:v21];
  }

  else if (!a2)
  {
    goto LABEL_20;
  }

  v22 = [v3 objectForKeyedSubscript:@"objectZones"];

  if (v22)
  {
    v23 = [v3 hmf_arrayForKey:@"objectZones"];
    v24 = [v23 firstObject];
    [v4 setZone:v24];

    v25 = [v3 hmf_arrayForKey:@"objectZoneIdentifiers"];
    if ([v25 count])
    {
      v26 = hmd_urlsFromStrings(v25);
      [v4 setZoneIdentifiers:v26];
    }
  }

  v27 = [v3 objectForKeyedSubscript:@"objectAccessoryPrimaryServiceIdentifier"];

  if (v27)
  {
    v28 = MEMORY[0x277CBEBC0];
    v29 = [v3 objectForKeyedSubscript:@"objectAccessoryPrimaryServiceIdentifier"];
    v30 = [v28 URLWithString:v29];
    [v4 setPrimaryServiceIdentifier:v30];
  }

  v31 = [v3 objectForKeyedSubscript:@"objectAccessory"];

  if (v31)
  {
    v32 = [v3 objectForKeyedSubscript:@"objectAccessory"];
    [v4 setAccessory:v32];

    v33 = MEMORY[0x277CBEBC0];
    v34 = [v3 objectForKeyedSubscript:@"objectAccessoryIdentifier"];
    v35 = [v33 URLWithString:v34];
    [v4 setAccessoryIdentifier:v35];
  }

LABEL_20:
  v36 = [v3 objectForKeyedSubscript:@"objectType"];
  v37 = [v36 isEqualToString:*MEMORY[0x277D48168]];

  if (v37)
  {
    v38 = [v3 objectForKeyedSubscript:@"objectSceneType"];
    v39 = mapToSiriSceneType(v38);
    [v4 setSceneType:v39];

    v40 = [v3 objectForKeyedSubscript:@"objectStatus"];
    [v4 setStatus:v40];

    v41 = [v3 objectForKeyedSubscript:@"objectSceneActions"];
    [v4 setSceneActions:v41];
  }

  v42 = +[HMDHAPMetadata getSharedInstance];
  v43 = [v3 objectForKeyedSubscript:@"objectServiceType"];
  v44 = [v3 objectForKeyedSubscript:@"objectServiceSubType"];
  v93 = v42;
  if (!v43)
  {
LABEL_41:
    if (!a2)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (([v43 isEqual:*MEMORY[0x277D48350]] & 1) == 0 && (objc_msgSend(v43, "isEqual:", *MEMORY[0x277D48270]) & 1) == 0 && !objc_msgSend(v43, "isEqual:", *MEMORY[0x277D48258]))
  {
    if ([v43 isEqualToString:*MEMORY[0x277D482E0]])
    {
      v50 = v4;
      v51 = v43;
    }

    else
    {
      v52 = [v42 mapToAssistantServiceName:v43];
      [v4 setServiceType:v52];

      v53 = [v4 serviceType];

      if (v53)
      {
        goto LABEL_39;
      }

      v51 = *MEMORY[0x277D48298];
      v50 = v4;
    }

    [v50 setServiceType:v51];
LABEL_39:
    if (v44)
    {
      [v4 setServiceSubType:v44];
    }

    goto LABEL_41;
  }

  [v4 setServiceType:v43];
  if (v44)
  {
    [v4 setServiceSubType:v44];
  }

  if (a2)
  {
    v45 = getAttributeForMediaProfile(v4);
    [v4 setAttributes:v45];

    v46 = [v3 objectForKeyedSubscript:@"objectReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    v49 = [v48 isCurrentAccessory];
    v42 = v93;
    if (v49)
    {
      [v4 setCurrentDevice:MEMORY[0x277CBEC38]];
    }

LABEL_42:
    v54 = [v3 objectForKeyedSubscript:@"objectHashedRouteUID"];

    if (v54)
    {
      v55 = [v3 objectForKeyedSubscript:@"objectHashedRouteUID"];
      [v4 setHashedRouteUID:v55];
    }
  }

LABEL_44:
  v56 = [v3 objectForKeyedSubscript:@"objectCharacteristics"];
  v57 = v56;
  if (a2 && v56)
  {
    v86 = v44;
    v87 = v43;
    v88 = a2;
    v89 = v3;
    v90 = v4;
    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
    v42 = v93;
    v92 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v57, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v84 = v57;
    obj = v57;
    v59 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v97;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v97 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v96 + 1) + 8 * i);
          v64 = [v42 mapToAssistantCharacteristicName:{v63, v84}];
          if (v64)
          {
            v65 = [v42 mapReadCharacteristicFromAssistantName:v64];
            v66 = [v42 getAliasedCharacteristicTypes:v65];
            if (([v58 containsObject:v64] & 1) == 0 && ((objc_msgSend(v65, "isEqualToString:", v63) & 1) != 0 || objc_msgSend(v66, "containsObject:", v63)))
            {
              [v58 addObject:v64];
            }

            v67 = [v42 mapWriteCharacteristicFromAssistantName:v64];
            v68 = [v42 getAliasedCharacteristicTypes:v67];

            if (([v92 containsObject:v64] & 1) == 0 && ((objc_msgSend(v67, "isEqual:", v63) & 1) != 0 || objc_msgSend(v68, "containsObject:", v63)) && (HMFEqualObjects() & 1) == 0)
            {
              [v92 addObject:v64];
            }

            v42 = v93;
          }
        }

        v60 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
      }

      while (v60);
    }

    v43 = v87;
    v3 = v89;
    v4 = v90;
    if ([v87 isEqualToString:*MEMORY[0x277CD0EA0]])
    {
      v69 = [v89 objectForKeyedSubscript:@"objectReference"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      v71 = v70;

      v72 = [v71 accessory];
      v73 = [v72 lightProfiles];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __entityFromObject_block_invoke;
      v94[3] = &unk_2797285D0;
      v95 = v71;
      v74 = v71;
      v75 = [v73 na_firstObjectPassingTest:v94];

      v76 = [v75 settings];
      LOBYTE(v73) = [v76 supportedFeatures];

      if (v73)
      {
        [v58 addObject:*MEMORY[0x277D47EC8]];
      }

      v42 = v93;
    }

    a2 = v88;
    v44 = v86;
    if ([v58 count])
    {
      [v90 setAttributes:v58];
      if ([v92 count])
      {
        [v90 setTargetAttributes:v92];
      }
    }

    v57 = v85;
  }

  if (a2)
  {
    v77 = [v3 objectForKey:@"objectGroups"];

    if (v77)
    {
      v78 = [v3 hmf_arrayForKey:@"objectGroups"];
      v79 = [v78 firstObject];
      [v4 setServiceGroup:v79];

      v80 = [v3 hmf_arrayForKey:@"objectGroupIdentifiers"];
      if ([v80 count])
      {
        v81 = hmd_urlsFromStrings(v80);
        [v4 setServiceGroupIdentifiers:v81];
      }

      v42 = v93;
    }
  }

  v82 = *MEMORY[0x277D85DE8];

  return v4;
}

id hmd_urlsFromStrings(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    v8 = 0x277CBE000uLL;
    *&v5 = 138543618;
    v22 = v5;
    do
    {
      v9 = 0;
      v23 = v6;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [*(v8 + 3008) URLWithString:{v10, v22}];
        if (v11)
        {
          [v2 addObject:v11];
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v14 = v7;
            v15 = v8;
            v16 = v2;
            v18 = v17 = v3;
            *buf = v22;
            v29 = v18;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to map NSString '%@' to NSURL", buf, 0x16u);

            v3 = v17;
            v2 = v16;
            v8 = v15;
            v7 = v14;
            v6 = v23;
          }

          objc_autoreleasePoolPop(v12);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  v19 = [v2 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id mapToSiriSceneType(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277D481B8];
  if ([v1 isEqualToString:*MEMORY[0x277CCF1B0]])
  {
    v3 = MEMORY[0x277D48198];
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCF198]])
  {
    v3 = MEMORY[0x277D481A0];
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CCF180]])
  {
    v3 = MEMORY[0x277D481A8];
  }

  else
  {
    if (![v1 isEqualToString:*MEMORY[0x277CCF188]])
    {
      goto LABEL_10;
    }

    v3 = MEMORY[0x277D481B0];
  }

  v4 = *v3;

  v2 = v4;
LABEL_10:

  return v2;
}

id getAttributeForMediaProfile(void *a1)
{
  v1 = a1;
  if (getAttributeForMediaProfile_onceToken != -1)
  {
    dispatch_once(&getAttributeForMediaProfile_onceToken, &__block_literal_global_61493);
  }

  v2 = [v1 serviceType];
  v3 = [v1 serviceSubType];
  if (v2)
  {
    v4 = [v1 entityType];
    v5 = [v4 isEqualToString:*MEMORY[0x277D48170]];

    if (v5)
    {
      if ([v2 isEqualToString:*MEMORY[0x277D48270]])
      {
        v6 = &getAttributeForMediaProfile_atvAttributes;
LABEL_15:
        v8 = *v6;
        goto LABEL_17;
      }

      v7 = *MEMORY[0x277D48350];
      if ([v2 isEqualToString:*MEMORY[0x277D48350]] && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D48200]) & 1) != 0)
      {
        v6 = &getAttributeForMediaProfile_homePodAttributes;
        goto LABEL_15;
      }

      if ([v2 isEqualToString:*MEMORY[0x277D48258]] && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D481C0]) & 1) != 0 || objc_msgSend(v2, "isEqualToString:", v7) && objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D481C0]))
      {
        v6 = &getAttributeForMediaProfile_thirdPartyAttributes;
        goto LABEL_15;
      }
    }
  }

  v8 = 0;
LABEL_17:

  return v8;
}

uint64_t __entityFromObject_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 service];
  v4 = [v2 isEqual:v3];

  return v4;
}

void __getAttributeForMediaProfile_block_invoke()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D48000];
  v10[0] = *MEMORY[0x277D48048];
  v10[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v2 = getAttributeForMediaProfile_atvAttributes;
  getAttributeForMediaProfile_atvAttributes = v1;

  v9 = v0;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v4 = getAttributeForMediaProfile_homePodAttributes;
  getAttributeForMediaProfile_homePodAttributes = v3;

  v8 = v0;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = getAttributeForMediaProfile_thirdPartyAttributes;
  getAttributeForMediaProfile_thirdPartyAttributes = v5;

  v7 = *MEMORY[0x277D85DE8];
}

id entityForService(void *a1, void *a2, void *a3, int a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v22 = a4;
    v23 = v8;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:@"objectIdentifier"];
        v16 = [v7 urlString];
        v17 = [v16 isEqual:v15];

        if (v17)
        {
          v19 = entityFromObject(v14, v22);
          v18 = v19;
          v8 = v23;
          if (v23)
          {
            [v19 setServiceType:v23];
          }

          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 0;
    v8 = v23;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

id entityForMediaProfile(void *a1, void *a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = a3;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"objectIdentifier"];
        v13 = [v5 urlString];
        v14 = [v13 isEqual:v12];

        if (v14)
        {
          v15 = entityFromObject(v11, v18);

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __HMDHomeDataCopyProperties(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v54 = a1;
  v6 = [v5 homes];
  v7 = [v6 copyWithZone:a3];
  v8 = v54[2];
  v54[2] = v7;

  v9 = [v5 accessories];
  v10 = [v9 copyWithZone:a3];
  v11 = v54[3];
  v54[3] = v10;

  v12 = [v5 primaryHomeUUID];
  v13 = [v12 copyWithZone:a3];
  v14 = v54[4];
  v54[4] = v13;

  v15 = [v5 lastCurrentHomeUUID];
  v16 = [v15 copyWithZone:a3];
  v17 = v54[5];
  v54[5] = v16;

  v54[7] = [v5 schemaVersion];
  v54[6] = [v5 dataVersion];
  v54[8] = [v5 recoveryVersion];
  v18 = [v5 dataTag];
  v19 = [v18 copyWithZone:a3];
  v20 = v54[9];
  v54[9] = v19;

  v21 = [v5 UUIDsOfRemovedHomes];
  v22 = [v21 copyWithZone:a3];
  v23 = v54[10];
  v54[10] = v22;

  v24 = [v5 cloudZones];
  v25 = [v24 copyWithZone:a3];
  v26 = v54[11];
  v54[11] = v25;

  v27 = [v5 incomingInvitations];
  v28 = [v27 copyWithZone:a3];
  v29 = v54[12];
  v54[12] = v28;

  v30 = [v5 currentDevice];
  v31 = [v30 copyWithZone:a3];
  v32 = v54[13];
  v54[13] = v31;

  v33 = [v5 pendingReasonSaved];
  v34 = [v33 copyWithZone:a3];
  v35 = v54[14];
  v54[14] = v34;

  v36 = [v5 pendingUserManagementOperations];
  v37 = [v36 copyWithZone:a3];
  v38 = v54[15];
  v54[15] = v37;

  v39 = [v5 unprocessedOperationIdentifiers];
  v40 = [v39 copyWithZone:a3];
  v41 = v54[16];
  v54[16] = v40;

  v42 = [v5 applicationData];
  v43 = [v42 copyWithZone:a3];
  v44 = v54[17];
  v54[17] = v43;

  v54[18] = [v5 residentEnabledState];
  v45 = [v5 account];
  v46 = v54[19];
  v54[19] = v45;

  v47 = [v5 remoteAccounts];
  v48 = [v47 copyWithZone:a3];
  v49 = v54[20];
  v54[20] = v48;

  v50 = [v5 primaryAccountHandle];
  v51 = v54[21];
  v54[21] = v50;

  *(v54 + 8) = [v5 accessAllowedWhenLocked];
  v52 = [v5 demoAccessories];
  v53 = v54[22];
  v54[22] = v52;

  LOBYTE(a3) = [v5 demoFinalized];
  *(v54 + 9) = a3;
}

void sub_25368AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253691304(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id anonymizeUnknownVendorString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (anonymizeUnknownVendorString_onceToken != -1)
    {
      dispatch_once(&anonymizeUnknownVendorString_onceToken, &__block_literal_global_64717);
    }

    if (([anonymizeUnknownVendorString_allowedNames containsObject:v1] & 1) != 0 || objc_msgSend(v1, "length") <= 2)
    {
      v3 = v1;
    }

    else
    {
      v2 = [v1 substringToIndex:2];
      v3 = [@"unknown: " stringByAppendingString:v2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __anonymizeUnknownVendorString_block_invoke()
{
  v0 = anonymizeUnknownVendorString_allowedNames;
  anonymizeUnknownVendorString_allowedNames = &unk_286626EF0;
}

void sub_2536B5058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2536B57E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B5CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B74A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536B7DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2536B8D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___legacyMultiUserSettings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = objc_alloc_init(HMDAnalyticsMultiUserSettingsValueByKeyPath);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    if ([v7 isEqualToString:@"private.root.home.dismissedUserSplitMediaAccountWarning"])
    {
      v8 = 2;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedIdentifyVoiceOnboarding"])
    {
      v8 = 4;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedTVViewingProfileOnboarding"])
    {
      v8 = 6;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedTVViewingProfileSetupBanner"])
    {
      v8 = 7;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedCameraRecordingOnboarding"])
    {
      v8 = 8;
    }

    else if ([v7 isEqualToString:@"private.root.home.dismissedCameraRecordingSetupBanner"])
    {
      v8 = 9;
    }

    else if ([v7 isEqualToString:@"shared.root.siri.identifyVoice"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"shared.root.music.playbackInfluencesForYou"])
    {
      v8 = 11;
    }

    else
    {
      v8 = [v7 isEqualToString:@"private.root.home.dismissedIdentifyVoiceSetupBanner"] ? 5 : 0;
    }

    [(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 setType:v8];
    if ([(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 type])
    {
      v9 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [v11 longLongValue];
      [(HMDAnalyticsMultiUserSettingsValueByKeyPath *)v6 setMultiUserSettingsValueInteger:v12];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    }
  }
}

void sub_2536C1698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __HMDHH2AutoMigrationHasRealSharedUserForHome_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOwner] & 1) != 0 || (objc_msgSend(v2, "isRemoteGateway"))
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 userID];
    v3 = v4 != 0;
  }

  return v3;
}

uint64_t HMDHH2AutoMigrationHasSharedUserOrPendingInvitation(void *a1)
{
  v1 = a1;
  v2 = [v1 users];
  v3 = [v2 na_any:&__block_literal_global_226_66759];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 outgoingInvitations];
    v4 = [v5 na_any:&__block_literal_global_224_66782];
  }

  return v4;
}

void sub_2536C9F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536CF960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void __HMDCompanionManagerUpdateWithConnectedDevices(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v32 = a2;
  if (v31)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v31;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v6;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating connected devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = v32;
    v8 = [(HMDDevice *)v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v8)
    {
      v9 = *v34;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          if ([HMDCompanionManager isCompatibleCompanionDevice:v11, v31])
          {
            v12 = [HMDDevice alloc];
            v13 = [(os_unfair_lock_s *)v4 service];
            v14 = [(HMDDevice *)v12 initWithService:v13 device:v11];

            if (v14)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = v4;
              v21 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v22 = HMFGetLogIdentifier();
                *buf = 138543618;
                v39 = v22;
                v40 = 2112;
                v41 = v14;
                _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Found connected companion device: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v19);
              goto LABEL_19;
            }
          }
        }

        v8 = [(HMDDevice *)v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@No connected companion found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
LABEL_19:
    os_unfair_lock_lock_with_options();
    v23 = *&v4[6]._os_unfair_lock_opaque;
    if (HMFEqualObjects())
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v4;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [(HMDDevice *)v14 shortDescription];
        *buf = 138543618;
        v39 = v27;
        v40 = 2112;
        v41 = v28;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Updated companion to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      objc_storeStrong(v25 + 3, v14);
      os_unfair_lock_unlock(v4 + 2);
      v29 = [MEMORY[0x277CCAB98] defaultCenter];
      [v29 postNotificationName:@"HMDCompanionManagerUpdatedCompanionNotification" object:v25];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_2536D5654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void __run(void *a1)
{
  v1 = a1;
  v2 = v1[20];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = v1;
        [v1 _configureDevice];
        break;
      case 5:
        v3 = v1;
        [v1 _waitForPostWACMatch];
        break;
      case 6:
        v3 = v1;
        [v1 _postWACMatchTimeout];
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
    v1[20] = 1;
    goto LABEL_12;
  }

  if (v2 == 1)
  {
LABEL_12:
    v3 = v1;
    [v1 _requestUserPermission];
LABEL_13:
    v1 = v3;
  }

LABEL_14:
}

void __callCompletion(void *a1, void *a2, void *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  [v7[19] cancel];
  v10 = v7[19];
  v7[19] = 0;

  v11 = v7[21];
  v7[21] = 0;

  if (v7[18])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2080;
      v21 = a4;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion from %s", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    (*(v13[18] + 2))();
    v16 = v13[18];
    v13[18] = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

__CFString *HMDXPCCounterTypeAsString(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"XPCSentNotifications";
      goto LABEL_7;
    case 1:
      v1 = @"XPCErroredRequests";
      goto LABEL_7;
    case 0:
      v1 = @"XPCAcceptedRequests";
LABEL_7:
      v2 = v1;
      goto LABEL_9;
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown counter type:%lu", a1];
LABEL_9:

  return v1;
}

void sub_2536E0B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536E1098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDSWAuthFeaturesToString(char a1)
{
  if (a1)
  {
    v2 = [@"<" stringByAppendingString:@" HAP"];
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = @"<";
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@" HAPAirPlay2"];

    v2 = v3;
  }

LABEL_6:
  v4 = [(__CFString *)v2 stringByAppendingString:@" >"];

  return v4;
}

void sub_2536E2014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DateFromEpochInterval(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    [a1 doubleValue];
    a1 = [v2 dateWithTimeIntervalSince1970:?];
    v1 = vars8;
  }

  return a1;
}

void sub_2536F3404(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2536F5C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536F64DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536F6768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253702108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253706A90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25370A108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25370D080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void BFSTraverseGroupWithBlock(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = 0x277CBE000uLL;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = v3;
  [v6 addObject:v3];
  for (; [v6 count]; v5 = 0x277CBE000)
  {
    v7 = v6;
    v6 = objc_alloc_init(*(v5 + 2840));
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * v11);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = [v12 groups];
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              v17 = 0;
              do
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v6 addObject:*(*(&v23 + 1) + 8 * v17++)];
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }

          v18 = [v12 settings];
          v19 = v4[2](v4, v12, v18);

          if (!v19)
          {

            goto LABEL_20;
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t isReconfigurationPossible(void *a1)
{
  v1 = a1;
  if ([v1 supportsWiFiReconfiguration])
  {
    v2 = [v1 isReachable];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __modelIdentifierForURI(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (__modelIdentifierForURI_onceToken != -1)
  {
    dispatch_once(&__modelIdentifierForURI_onceToken, &__block_literal_global_232);
  }

  v5 = MEMORY[0x277CCAD78];
  if (v4)
  {
    v6 = __modelIdentifierForURI_namespace;
    v7 = [v4 UUIDString];
    v15[0] = v7;
    v8 = [v3 prefixedURI];
    v15[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v10 = [v5 hm_deriveUUIDFromBaseUUID:v6 withSalts:v9];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = __modelIdentifierForURI_namespace;
    v7 = [v3 prefixedURI];
    v8 = [v7 dataUsingEncoding:4];
    v10 = [v11 initWithNamespace:v12 data:v8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t ____modelIdentifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F48EA8E5-696C-4EA4-B767-16D13368CB16"];
  v1 = __modelIdentifierForURI_namespace;
  __modelIdentifierForURI_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_253719BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76247(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ____identifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"297A1FDB-8A3E-443F-A8A8-1F3360785587"];
  v1 = __identifierForURI_namespace;
  __identifierForURI_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void addLogEventsToResponse(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObjectsFromArray:v5];
}

id Siri_log()
{
  if (Siri_log__hmf_once_t0 != -1)
  {
    dispatch_once(&Siri_log__hmf_once_t0, &__block_literal_global_78093);
  }

  v1 = Siri_log__hmf_once_v1;

  return v1;
}

void sub_2537305A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253731178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25373222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79184(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253734408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253734D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253735C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79595(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25373656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253736EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2537377F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253738224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_253738D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253739AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id parseMediaSourceDisplayOrder(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if ([v3 length])
  {
    [v3 bytes];
    [v3 length];
    v4 = [MEMORY[0x277CBEB18] array];
    *&v5 = 138543618;
    v13 = v5;
    do
    {
      Next = TLV8GetNext();
    }

    while (!Next);
    if (Next != -6727)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = v13;
        v16 = v9;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@TLV parsing failed - %@ - dropping", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v4 = 0;
    }

    v10 = [v4 copy];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t HMDRemoteEventRouterProtoDisconnectMessageReadFrom(void *a1)
{
  while (1)
  {
    v2 = [a1 position];
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v12 = 0;
      v6 = [a1 position] + 1;
      if (v6 >= [a1 position] && (v7 = objc_msgSend(a1, "position") + 1, v7 <= objc_msgSend(a1, "length")))
      {
        v8 = [a1 data];
        [v8 getBytes:&v12 range:{objc_msgSend(a1, "position"), 1}];

        [a1 setPosition:{objc_msgSend(a1, "position") + 1}];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v12 & 0x7F) << v3;
      if ((v12 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_15;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_15:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 hasError] ^ 1;
}

void ____transactionSettingUpdated_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sent updated setting notification. Error : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_253752688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537534BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location)
{
  objc_destroyWeak((v13 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253760448(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253760608(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t getAccessoryFirmwareUpdateActiveTransport(void *a1)
{
  v1 = a1;
  if ([v1 isReachable])
  {
    if ([v1 isThreadTheCurrentlyActiveTransport])
    {
      v2 = 4;
    }

    else if ([v1 hasBTLELink])
    {
      v2 = 3;
    }

    else if ([v1 hasIPLink])
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_253762160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253762758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2537633A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __disconnectFromEndpoint(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 externalDevice];
    v4 = v3;
    if (v3 && [v3 connectionState] != 3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v10 = 138543618;
        v11 = v7;
        v12 = 2112;
        v13 = v2;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting the connection state callback for endpoint %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      v8 = dispatch_get_global_queue(0, 0);
      [v4 setConnectionStateCallback:0 withQueue:v8];

      [v4 disconnect:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_253764108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *AVCVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"kAVCCodecTypeHEVC";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC video codec type (%ld)", a1];
    }
  }

  else
  {
    v2 = @"kAVCCodecTypeH264";
  }

  return v2;
}

__CFString *AVCCipherSuiteAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown AVC cipher suite (%ld)", a1];
  }

  else
  {
    v2 = off_279729560[a1];
  }

  return v2;
}

void sub_253769B6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253769BFC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25376CEB8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __shouldAcceptMessage(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 accessory];
  if ([v5 isCurrentAccessory] & 1) != 0 || (objc_msgSend(v5, "supportsFirmwareUpdate"))
  {
    v6 = 1;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v3;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot update state for other accessory", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v6 = [v4 responseHandler];

    if (v6)
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
      v14 = [v4 responseHandler];
      (v14)[2](v14, v13, 0);

      v6 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __registerDocumentationMetadata(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 dataSource];
    v6 = [v5 notificationCenterForSoftwareUpdate:v3];
    [v6 removeObserver:v3 name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:0];
    if (v4)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v3;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Registering documentation metadata: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
      [v11 registerDocumentationMetadata:v4];

      v12 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
      v13 = [v12 assetForDocumentationMetadata:v4];

      [v6 addObserver:v8 selector:sel__handleDocumentationStateNotification_ name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __unregisterDocumentationMetadata(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 dataSource];
    v7 = [v6 notificationCenterForSoftwareUpdate:v3];
    [v7 removeObserver:v3 name:@"HMDSoftwareUpdateDocumentationAssetStateUpdatedNotification" object:0];
    v8 = objc_autoreleasePoolPush();
    v9 = v3;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering documentation metadata: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    [v12 unregisterDocumentationMetadata:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_253771700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void notifyObservers(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v14 + 1) + 8 * v12++) updatedCounter:v8 fromOldValue:a3 toNewValue:a4];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_253773060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85878(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253773C54(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __findAssociatedCharacteristicWithService(void *a1, uint64_t a2)
{
  v2 = [a1 characteristicsOfType:a2];
  v3 = [v2 firstObject];

  return v3;
}

void sub_253778420(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537784AC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253778AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253779068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253779370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377AAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377ADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377AF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377B6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377C03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377C4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25377E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25377E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMDStringFromDataStreamBulkSendResponsePayloadStatus(uint64_t a1)
{
  if (a1 - 1) < 9 && ((0x11Bu >> (a1 - 1)))
  {
    v2 = off_279729718[(a1 - 1)];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown status: %d>", a1];
  }

  return v2;
}

__CFString *HMDStringFromDataStreamMessageStatus(uint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown status: %d>", a1];
  }

  else
  {
    v2 = off_279729760[a1];
  }

  return v2;
}

void sub_25378B928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_25378C1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378D710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378D8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378EBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25378F3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25379096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253790F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537922EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253792518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25379298C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253799D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25379C194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_25379F934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id failedActionResultFor(void *a1)
{
  v1 = MEMORY[0x277D47338];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 actions];
  v5 = [v4 firstObject];
  v6 = [v5 aceId];
  [v3 setRequestActionId:v6];

  [v3 setOutcome:*MEMORY[0x277D47DE0]];
  v7 = [v2 actions];
  v8 = [v7 firstObject];
  v9 = [v8 value];
  [v3 setResultValue:v9];

  v10 = [v2 actions];

  v11 = [v10 firstObject];
  v12 = [v11 attribute];
  [v3 setResultAttribute:v12];

  return v3;
}

void __mapToFailureActionOutcome_block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D47DE8];
  v1 = *MEMORY[0x277D480F8];
  v6[0] = *MEMORY[0x277D480D8];
  v6[1] = v1;
  v2 = *MEMORY[0x277D47E18];
  v7[0] = v0;
  v7[1] = v2;
  v6[2] = *MEMORY[0x277D48120];
  v7[2] = *MEMORY[0x277D47E28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = mapToFailureActionOutcome_outcomeMap;
  mapToFailureActionOutcome_outcomeMap = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2537A1970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __configurationFromAdvertisement(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v6 = [v4 name];
    v7 = [v3 name];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v3;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 name];
        *buf = 138543618;
        v36 = v12;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory name, %@, is out of sync", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [v10 name];
      [v5 setObject:v14 forKeyedSubscript:@"name"];
    }

    v15 = [v3 home];
    v16 = [v15 mediaPassword];
    v17 = [v3 password];
    v18 = HMFEqualObjects();

    if ((v18 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v3;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory password is out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      if (v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = &stru_286509E58;
      }

      [v5 setObject:v23 forKeyedSubscript:@"password"];
    }

    v24 = [v15 minimumMediaUserPrivilege];
    if ([v3 minimumUserPriviledge] != v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v3;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        [v26 minimumUserPriviledge];
        HMUserPrivilegeToString();
        v29 = v34 = v25;
        *buf = 138543618;
        v36 = v28;
        v37 = 2112;
        v38 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory minimum user privilege, %@, is out of sync", buf, 0x16u);

        v25 = v34;
      }

      objc_autoreleasePoolPop(v25);
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:v24];
      [v5 setObject:v30 forKeyedSubscript:@"privilege"];
    }

    v31 = [v5 copy];
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __updateConfiguration(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9 = v5;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v11;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating configuration to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v9 home];
    v13 = [v12 isOwnerUser];

    if (v13)
    {
      v14 = [v9 advertisement];
      v15 = [v14 outputDevice];
      v16 = [v15 av_OutputDevice];

      if (v16)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ____updateConfiguration_block_invoke;
        aBlock[3] = &unk_279729D10;
        v37 = v6;
        v17 = v9;
        v38 = v17;
        v18 = _Block_copy(aBlock);
        objc_initWeak(buf, v17);
        v19 = __outputDeviceConfigurationOptions();
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = ____updateConfiguration_block_invoke_223;
        v32[3] = &unk_279729CA0;
        v33 = v14;
        objc_copyWeak(&v35, buf);
        v34 = v7;
        [v16 configureUsingBlock:v18 options:v19 completionHandler:v32];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);

        v20 = v37;
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v9;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        __startConfigurationRetryTimer(v28);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        (*(v7 + 2))(v7, v20);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v9;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Only owner can update configuration", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
      (*(v7 + 2))(v7, v14);
    }
  }

  else
  {
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing required paramter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v7 + 2))(v7, v14);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2537A2364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __stopConfigurationRetryTimer(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____stopConfigurationRetryTimer_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void ____stopConfigurationRetryTimer_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configurationRetryTimer];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping configuration retry timer", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 32) configurationRetryTimer];
    [v7 suspend];

    v8 = *(a1 + 32);
    v9 = *(v8 + 520);
    *(v8 + 520) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __startConfigurationRetryTimer(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____startConfigurationRetryTimer_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void ____updateConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) hmf_stringForKey:@"name"];
  if (v4)
  {
    [v3 setDeviceName:v4];
  }

  v5 = [*(a1 + 32) hmf_stringForKey:@"password"];
  if (v5)
  {
    [v3 setDevicePassword:v5];
  }

  v6 = [*(a1 + 32) hmf_numberForKey:@"privilege"];
  v7 = v6;
  if (v6)
  {
    [v3 startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:{objc_msgSend(v6, "integerValue") != 0}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with configuration: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

id __outputDeviceConfigurationOptions()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8660];
  v4[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void ____updateConfiguration_block_invoke_223(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = objc_autoreleasePoolPush();
  v13 = WeakRetained;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v8)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    __stopConfigurationRetryTimer(v13);
    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to update configuration with error: %@, cancellationReason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set configuration." suggestion:0 underlyingError:v10];
    __startConfigurationRetryTimer(v13);
  }

  v19 = *(a1 + 40);
  if (!v19)
  {
LABEL_11:
    if (v8)
    {
      v21 = v13;
      v22 = v8;
      if (v21)
      {
        v23 = v22;
        v24 = [v21 workQueue];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ____updateWithCurrentConfiguration_block_invoke;
        v31 = &unk_2797359B0;
        v32 = v21;
        v33 = v23;
        dispatch_async(v24, buf);
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v20 = [v13 workQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ____updateConfiguration_block_invoke_224;
    v27[3] = &unk_279735738;
    v29 = *(a1 + 40);
    v28 = v17;
    dispatch_async(v20, v27);

    goto LABEL_11;
  }

  (*(v19 + 16))(v19, v17);
  if (v8)
  {
    v25 = v8;
LABEL_16:
  }

LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

void ____updateWithCurrentConfiguration_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v43 = 138543618;
    v44 = v5;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating with configuration: %@", &v43, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) devicePassword];
  if (![v7 length])
  {

    v7 = 0;
  }

  v8 = [*(a1 + 32) password];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Caching updated password", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = v14;
      v16 = v7;
      v17 = [v15 transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      [v19 setPassword:v16];
      v20 = [v15 home];

      v21 = [v20 backingStore];
      v22 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v23 = [v21 transaction:@"Update Password" options:v22];

      [v23 add:v19 withMessage:0];
      [v23 run];
    }
  }

  v24 = [*(a1 + 40) onlyAllowsConnectionsFromPeersInHomeGroup];
  v25 = [*(a1 + 32) minimumUserPriviledge];
  if (v25 >= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  if (v26 != v24)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Caching updated user minimum privilege", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = v24;
      v33 = v31;
      v34 = [v33 transactionWithObjectChangeType:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v36 = v35;

      v37 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
      [v36 setMinimumUserPriviledge:v37];

      v38 = [v33 home];

      v39 = [v38 backingStore];
      v40 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v41 = [v39 transaction:@"Update Minimum User Privilege" options:v40];

      [v41 add:v36 withMessage:0];
      [v41 run];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void ____startConfigurationRetryTimer_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationRetryTimer];
  if (!v2)
  {
    v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v4 = [v3 preferenceForKey:@"airPlayConfigurationRetryMinimum"];

    v5 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v6 = [v5 preferenceForKey:@"airPlayConfigurationRetryMaximum"];

    v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [v7 preferenceForKey:@"airPlayConfigurationRetryFactor"];

    v9 = objc_alloc(MEMORY[0x277D0F7B0]);
    v10 = [v4 numberValue];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v6 numberValue];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v8 numberValue];
    obja = [v9 initWithMinimumTimeInterval:objc_msgSend(v16 maximumTimeInterval:"integerValue") exponentialFactor:0 options:{v12, v15}];

    [obja setDelegate:*(a1 + 32)];
    objc_storeStrong((*(a1 + 32) + 520), obja);

    v2 = obja;
  }

  obj = v2;
  [v2 resume];
}

void sub_2537A35F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__90437(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537A39FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A4090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A4B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A5424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537A6084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updatePassword_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      v10 = "%{public}@Failed to update password with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully updated password";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2537A64CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updateMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      v10 = "%{public}@Failed to minimum user privilege with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully updated minimum user privilege";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2537A6A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____updateName_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      v10 = "%{public}@Failed to update name with error: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully updated name";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2537A73A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCameraRecordingMediaContainerTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingMediaContainerType %ld", a1];
  }

  else
  {
    v2 = @"HMDCameraRecordingMediaContainerTypeFragmentedMP4";
  }

  return v2;
}

id HMDCameraRecordingEventTriggerOptionsAsString(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"HMDCameraRecordingEventTriggerOptionsMotion"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"HMDCameraRecordingEventTriggerOptionsDoorbell"];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"[%@]", v5];

  return v6;
}

void sub_2537ABB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__91032(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id mapButtonConfigurationForTVReceiver(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 type] - 1;
        if (v9 <= 0xB && ((0xCFFu >> v9) & 1) != 0)
        {
          v10 = -[THAButton initWithType:identifier:]([THAButton alloc], "initWithType:identifier:", qword_253D4BDC8[v9], [v8 identifier]);
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_2537B4130(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537B41BC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537B42C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __findUserWithUUID(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithUUIDString:v5];

  v7 = [v4 userWithUUID:v6];

  return v7;
}

void sub_2537BA564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537BB68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isNameValidWithVoiceShortcut(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass];

  if (v3 == 6)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@siriactiond does not run on HomePod", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v7 = 1;
  }

  else
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 1;
    v9 = [MEMORY[0x277D79D98] standardClient];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __isNameValidWithVoiceShortcut_block_invoke;
    v14[3] = &unk_279729E28;
    p_buf = &buf;
    v10 = v8;
    v15 = v10;
    [v9 getVoiceShortcutWithPhrase:v1 completion:v14];

    v11 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v10, v11);
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void sub_2537BD394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __isNameValidWithVoiceShortcut_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

HMDCUWiFiDeviceWrapper *__wrapCUWiFiDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [HMDCUWiFiDeviceWrapper alloc];
  v6 = v4[1];

  v7 = [(HMDCUWiFiDeviceWrapper *)v5 initWithCUWiFiDevice:v3 dispatchQueue:v6];

  return v7;
}

void sub_2537BFAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__92759(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537C0FCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 152));
  _Unwind_Resume(a1);
}

void ____start_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v8;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Found device %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    if (v9)
    {
      v10 = __wrapCUWiFiDevice(v6, v3);
      v11 = objc_autoreleasePoolPush();
      v12 = v6;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v14;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Device %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v12 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_145;
      block[3] = &unk_279734960;
      v19 = v9;
      v20 = v12;
      v21 = v10;
      v16 = v10;
      dispatch_async(v15, block);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void ____start_block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 ssid];
      v10 = [v3 identifier];
      *buf = 138543874;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Lost device %@: (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [v6 delegate];
    if (v11)
    {
      v12 = __wrapCUWiFiDevice(v6, v3);
      v13 = [v6 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_147;
      block[3] = &unk_279734960;
      v17 = v11;
      v18 = v6;
      v19 = v12;
      v14 = v12;
      dispatch_async(v13, block);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ____start_block_invoke_2_148(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    if (v6)
    {
      v7 = __wrapCUWiFiDevice(v5, v3);
      v8 = [v5 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_3;
      block[3] = &unk_279734960;
      v11 = v6;
      v12 = v5;
      v13 = v7;
      v9 = v7;
      dispatch_async(v8, block);
    }
  }
}

void ____start_block_invoke_4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    if (v9)
    {
      v10 = [v6 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_150;
      block[3] = &unk_279734960;
      v13 = v9;
      v14 = v6;
      v15 = v3;
      dispatch_async(v10, block);
    }

    [v6[2] invalidate];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void ____start_block_invoke_2_152(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@CUWiFiScanner invalidated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = v3[2];
    v3[2] = 0;
  }

  v7 = [WeakRetained delegate];
  if (v7)
  {
    v8 = [WeakRetained delegateQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ____start_block_invoke_153;
    v10[3] = &unk_2797359B0;
    v11 = v7;
    v12 = WeakRetained;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2537CAC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537CCB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537CCE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2537CD9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __bootstrapSupportedStereoPairVersions(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 identifier];
  v3 = _mediaRouteIdentifier;
  if (([v2 isEqual:v3] & 1) == 0)
  {
    v4 = [v1 supportedStereoPairVersions];

    if (v4)
    {
      goto LABEL_5;
    }

    v6 = [v1 softwareVersion];
    v7 = v6;
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v8 = [v1 device];
      v9 = [v8 productInfo];
      v2 = [v9 softwareVersion];
    }

    if ([v1 isHomePod])
    {
      v10 = 0;
      if (v2)
      {
LABEL_11:
        [v2 operatingSystemVersion];
        goto LABEL_14;
      }
    }

    else
    {
      v11 = [v1 device];
      v12 = [v11 productInfo];
      v10 = [v12 productClass] != 6;

      if (v2)
      {
        goto LABEL_11;
      }
    }

    buf = 0uLL;
    v25 = 0;
LABEL_14:
    v20 = *MEMORY[0x277D0F228];
    v22 = *(MEMORY[0x277D0F228] + 16);
    v13 = HMFOperatingSystemVersionCompare();
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    else
    {
      buf = 0uLL;
      v25 = 0;
    }

    v21 = *MEMORY[0x277D0F390];
    v23 = *(MEMORY[0x277D0F390] + 16);
    v14 = HMFOperatingSystemVersionCompare();
    v15 = v13 != 1 || v10;
    if ((v15 & 1) == 0 && v14 != 1)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Bootstrapping stereo pair version to V1", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [v17 setSupportedStereoPairVersions:{1, v21, v23}];
    }

    goto LABEL_3;
  }

LABEL_3:
LABEL_5:

  v5 = *MEMORY[0x277D85DE8];
}

void __HMDAppleMediaAccessoryHandleUpdatedDevice(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Device updated to: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 notificationCenter];
  [v9 removeObserver:v6 name:@"HMDDeviceUpdatedNotification" object:0];

  if (v4)
  {
    [v6 startMonitoringReachability];
    v10 = [v6 symptomsHandler];
    [v10 handleAccessoryDeviceUpdated];

    v11 = [v6 identifier];
    v12 = [v6 deviceMediaRouteIdentifierFactory];
    v13 = v12[2]();
    v14 = [v11 isEqual:v13];

    if (v14)
    {
      v15 = [v6 notificationCenter];
      [v15 addObserver:v6 selector:sel_handleCurrentDeviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:v4];

      if ([v6 shouldUpdateWithDevice:v4 initialConfiguration:0])
      {
        [v6 updateWithDevice:v4];
      }
    }

    __bootstrapSupportedStereoPairVersions(v6);
    v16 = [v6 notificationCenter];
    [v16 postNotificationName:@"HMDAppleMediaAccessoryDeviceUpdatedNotification" object:v6];
  }

  [v6 registerForPublishingNotifications];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__94518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __HMDAppleMediaAccessoryGetDeviceController(void *a1)
{
  v1 = a1;
  os_unfair_recursive_lock_lock_with_options();
  v2 = v1[63];
  os_unfair_recursive_lock_unlock();

  return v2;
}

uint64_t ____transactionAccessoryUpdated_block_invoke_94534(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) markChanged];
  }

  return result;
}

void sub_2537D679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 184));
  _Unwind_Resume(a1);
}

void sub_2537D6F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D7E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D8628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537D92E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2537D9C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537DA31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2537DADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537DB3F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2537DD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_279731AD0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2537E0234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27972A208;
    v7 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id addressesFromWANRule(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 subject];
  v2 = [v1 hostnames];

  if (v2)
  {
    v3 = [v1 hostnames];
    goto LABEL_8;
  }

  v4 = [v1 addresses];

  if (v4)
  {
    v5 = [v1 addresses];
    v6 = [v5 na_map:&__block_literal_global_70];
LABEL_7:
    v3 = v6;

    goto LABEL_8;
  }

  v7 = [v1 addressRange];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v1 addressRange];
    v10 = [v9 addressStart];
    v11 = [v10 addressString];
    v12 = [v1 addressRange];
    v13 = [v12 addressEnd];
    v14 = [v13 addressString];
    v5 = [v8 stringWithFormat:@"%@ - %@", v11, v14];

    v17[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    goto LABEL_7;
  }

  v3 = MEMORY[0x277CBEBF8];
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

id wanRuleFromJSONRule(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CCAAA0];
  v3 = [v1 dataUsingEncoding:4];
  v16 = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:&v16];
  v5 = v16;

  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [HMDNetworkRouterFirewallRuleWAN createWithJSONDictionary:v8 error:0];
    if (v9)
    {
      goto LABEL_12;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      v13 = "%{public}@Failed to convert dictionary %@ to HMDNetworkRouterFirewallRuleWAN";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v1;
      v13 = "%{public}@Failed to convert JSON string %@ to dictionary";
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v10);
  v9 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

__CFString *HMDCameraRemoteStreamSessionStateAsString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_27972A220[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRemoteStreamSessionState %tu", a1];
  }

  return v3;
}

void sub_2537ED118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__95496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2537F0950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2537F16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Unwind_Resume(a1);
}

void addFallbackLANRules(_BYTE *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 hasFullAccessToLAN])
  {
    *a1 = 1;
  }

  else
  {
    v6 = [v5 lanRules];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 lanRules];
      [v9 addObjectsFromArray:v8];
    }
  }
}

void sub_2537F809C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F8894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537F9884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2537FB8C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2537FE564(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FEAA4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FEE98(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF1F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF288(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2537FF3F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253802758(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538027E4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253802870(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538028FC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538055DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538057D0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380585C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253808508(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253808DD8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380E624(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25380E820(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __HMDDeviceControllerUpdateDevice(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating device: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    if (*(v6 + 3) == v4)
    {
      os_unfair_lock_unlock(v6 + 2);
    }

    else
    {
      objc_storeStrong(v6 + 3, a2);
      os_unfair_lock_unlock(v6 + 2);
      v9 = objc_autoreleasePoolPush();
      v10 = v6;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updated device: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [v10 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v13 deviceController:v10 didUpdateDevice:v4];
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

__CFString *HMDNetworkRouterControlOperationStatusTypeAsString(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterControlOperationStatusType %ld", a1];
  }

  else
  {
    v2 = off_27972A7C8[a1];
  }

  return v2;
}

void sub_25381C58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381D41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381E0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99799(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25381E6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25381F074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253820A0C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253820D5C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253823FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDStreamingTierTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDStreamingTierType %tu", a1];
  }

  else
  {
    v2 = off_27972AA00[a1];
  }

  return v2;
}

__CFString *HMDVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDVideoCodecType %tu", a1];
  }

  else
  {
    v2 = @"HMDVideoCodecTypeH264";
  }

  return v2;
}

__CFString *HMDH264ProfileTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDH264ProfileType %tu", a1];
  }

  else
  {
    v2 = off_27972AA28[a1];
  }

  return v2;
}

__CFString *HMDH264LevelTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDH264LevelType %tu", a1];
  }

  else
  {
    v2 = off_27972AA40[a1];
  }

  return v2;
}

__CFString *HMDPacketizationModeTypeAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDPacketizationModeType %tu", a1];
  }

  else
  {
    v2 = @"HMDPacketizationModeTypeSingleNonInterleaved";
  }

  return v2;
}

__CFString *HMDVideoResolutionTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 0x1D)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDVideoResolutionType %tu", a1];
  }

  else
  {
    v2 = off_27972AA60[a1 - 1];
  }

  return v2;
}

__CFString *HMDAudioCodecGroupTypeAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAudioCodecGroupType %tu", a1];
  }

  else
  {
    v2 = off_27972AB48[a1];
  }

  return v2;
}

__CFString *HMDBitRateSettingTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDBitRateSettingTypeConstant";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDBitRateSettingType %tu", a1];
    }
  }

  else
  {
    v2 = @"HMDBitRateSettingTypeVariable";
  }

  return v2;
}

__CFString *HMDAudioSampleRateTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAudioSampleRateType %tu", a1];
  }

  else
  {
    v2 = off_27972AB80[a1];
  }

  return v2;
}

__CFString *HMDSRTPCryptoSuiteTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSRTPCryptoSuiteType %tu", a1];
  }

  else
  {
    v2 = off_27972AB98[a1];
  }

  return v2;
}

__CFString *HMDStreamControlPointResponseStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSessionControlCommand %tu", a1];
  }

  else
  {
    v2 = off_27972ABD8[a1];
  }

  return v2;
}

__CFString *HMDStreamingStatusTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDStreamingStatusType %tu", a1];
  }

  else
  {
    v2 = off_27972ABF0[a1];
  }

  return v2;
}

void sub_25382B390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25382C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25382CAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25382D1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void notifyMatterMetricPairingStep(void *a1, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMDMatterAccessoryPairingStepAsString(a2);
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing step %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v9 setObject:v10 forKeyedSubscript:@"HMDMatterAccessoryPairingStepKey"];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [v9 copy];
  [v11 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void notifyMatterMetricPairingEnded(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = a1;
  v18 = [v3 defaultCenter];
  v6 = v5;
  v7 = v4;
  v8 = objc_autoreleasePoolPush();
  v9 = v6;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing ended %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDMatterAccessoryPairingSubmitKey"];
  v13 = [v7 step];
  [v12 setObject:v13 forKeyedSubscript:@"HMDMatterAccessoryPairingStepKey"];

  v14 = [v7 error];
  [v12 setObject:v14 forKeyedSubscript:@"HMDMatterAccessoryPairingFailureErrorKey"];

  v15 = [v7 sourceErrorDomain];
  [v12 setObject:v15 forKeyedSubscript:@"HMDMatterAccessoryPairingSourceErrorDomain"];

  v16 = [v12 copy];
  [v18 postNotificationName:@"HMDMatterAccessoryUpdatePairingMetricNotification" object:0 userInfo:v16];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2538310B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253831790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253835990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253839498(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDDefaultRoomName()
{
  v0 = HMDLocalizedStringForKey(@"DEFAULT_ROOM");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Default Room";
  }

  v3 = v2;

  return v2;
}

void sub_25383C970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25383DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25383EA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 + 64));
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103983(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25383ECA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_25383F308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_253840D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25384104C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _validateClientRequest(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 headerFields];
  v5 = [v4 hmf_stringForKey:@"Protocol-Version"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v5];
    if (v6)
    {
      v7 = +[HMDHTTPServerMessageTransport maximumSupportedProtocolVersion];
      v8 = [v6 isAtLeastVersion:v7];

      if (v8)
      {
        if (a2)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"The client's protocol version, %@, is not supported", v6];
          *a2 = LABEL_22:;
          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }
  }

  v9 = [v3 headerFields];
  v10 = [v9 hmf_UUIDForKey:@"Client-Identifier"];

  if (v10)
  {
    v11 = [v3 body];
    v12 = [v11 length];

    if (v12)
    {
      v13 = MEMORY[0x277CCAC58];
      v14 = [v3 body];
      v22 = 0;
      v15 = [v13 propertyListWithData:v14 options:0 format:0 error:&v22];
      v6 = v22;

      if (!v15)
      {
        if (a2)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to deserialize message payload with error: %@", v6];
          goto LABEL_22;
        }

LABEL_23:

        goto LABEL_24;
      }

      v16 = v15;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (a2 && (isKindOfClass & 1) == 0)
      {
        *a2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid message class type: %@", objc_opt_class()];
      }

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v20 = 1;
  }

  else
  {
    if (!a2)
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    v20 = 0;
    *a2 = @"Missing the client identifier from the request";
  }

LABEL_25:

  return v20;
}

void sub_253841C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253842748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253843584(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __handleUpdatedDevice(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device updated to: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    __registerForDeviceNotifications(v6, v4);
    v9 = [v6 residentDeviceManager];
    [v9 notifyClientsOfUpdatedResidentDevice:v6];
  }

  else
  {
    __deregisterForDeviceNotifications(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __registerForDeviceNotifications(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v5 shortDescription];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registering for device notifications for: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    __deregisterForDeviceNotifications(v7);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __deregisterForDeviceNotifications(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Deregistering for device notifications", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:v3 name:@"HMDDeviceUpdatedNotification" object:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t residentCapabilitiesForDevice(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 version];
  v6 = +[HMDHomeKitVersion version3];
  v7 = [v5 isAtLeastVersion:v6];

  if (v7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 version];
  v10 = +[HMDHomeKitVersion version4];
  v11 = [v9 isAtLeastVersion:v10];

  if (v11)
  {
    v12 = v8 | 8;
  }

  else
  {
    v12 = v8;
  }

  v13 = [v3 version];

  v14 = +[HMDHomeKitVersion version4];
  v15 = [v13 isAtLeastVersion:v14];

  if (v15)
  {
    v16 = v12 | 0x10;
  }

  else
  {
    v16 = v12;
  }

  if ([v4 supportsMediaActions])
  {
    v16 |= 0x220uLL;
  }

  if ([v4 supportsShortcutActions])
  {
    v16 |= 0x100uLL;
  }

  if ([v4 supportsCameraRecording])
  {
    v16 |= 0x40uLL;
  }

  if ([v4 supportsRouterManagement])
  {
    v16 |= 0x80uLL;
  }

  if ([v4 supportsFirmwareUpdate])
  {
    v16 |= 0x800uLL;
  }

  if ([v4 supportsResidentFirmwareUpdate])
  {
    v16 |= 0x800000uLL;
  }

  if ([v4 supportsCameraActivityZones])
  {
    v16 |= 0x1000uLL;
  }

  if ([v4 supportsFaceClassification])
  {
    v16 |= 0x2000uLL;
  }

  if ([v4 supportsNaturalLighting])
  {
    v16 |= 0x4000uLL;
  }

  if ([v4 supportsAnnounce])
  {
    v16 |= 0x8000uLL;
  }

  if ([v4 supportsThreadBorderRouter])
  {
    v16 |= 0x10000uLL;
  }

  if ([v4 supportsCameraRecordingReachabilityNotifications])
  {
    v16 |= 0x20000uLL;
  }

  if ([v4 supportsWalletKey])
  {
    v16 |= 0x40000uLL;
  }

  if ([v4 supportsAccessCodes])
  {
    v16 |= 0x200000uLL;
  }

  if ([v4 supportsLockNotificationContext])
  {
    v16 |= 0x80000uLL;
  }

  if ([v4 supportsCameraPackageDetection])
  {
    v16 |= 0x100000uLL;
  }

  if ([v4 supportsCHIP])
  {
    v16 |= 0x400000uLL;
  }

  if ([v4 supportsCustomMediaApplicationDestination])
  {
    v16 |= 0x1000000uLL;
  }

  if ([v4 supportsThreadNetworkCredentialSharing])
  {
    v16 |= 0x2000000uLL;
  }

  if ([v4 supportsMatterSharedAdminPairing])
  {
    v16 |= 0x4000000uLL;
  }

  if ([v4 supportsEventLog])
  {
    v16 |= 0x8000000uLL;
  }

  if ([v4 supportsUWB])
  {
    v16 |= 0x20000000uLL;
  }

  if ([v4 supportsMatterTTU])
  {
    v17 = v16 | 0x10000000;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v4 supportsMatterOwnerCertFetch];

  if (v18)
  {
    return v17 | 0x80000000;
  }

  else
  {
    return v17;
  }
}

void sub_25384A780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25384EDD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_2538509B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id uuidSetFromArrayOfStrings(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CCAD78]);
        v10 = [v9 initWithUUIDString:{v8, v13}];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_25385E080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25385F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25386009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253860A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_253868364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538687CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253868C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253870C14(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253875194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__108667(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538753AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __updateAccount(void *a1, int a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accountChangeBackoffTimer];
    [v5 suspend];

    v6 = objc_autoreleasePoolPush();
    v7 = v4;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v108 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v90 = [v7 account];
    if (!v90)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v7;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v108 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to update account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_60;
    }

    v10 = [MEMORY[0x277D0F910] systemInfo];
    v11 = [v7 maybeSkipUpdatesOfType:0 whileMigrating:{objc_msgSend(v10, "isMigrating")}];

    if (v11)
    {
      v12 = [v7 accountChangeBackoffTimer];
      [v12 resume];

LABEL_60:
      goto LABEL_61;
    }

    v17 = __createAccountHandles(v7);
    v89 = v7;
    if ([v17 hmf_isEmpty])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v7;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v108 = v21;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create handles", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      __updateCurrentDevice(v19, v90);
    }

    else
    {
      v84 = a2;
      v85 = v4;
      v22 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
      v23 = [v7 backingStore];
      v83 = v22;
      v82 = [v23 transaction:@"Update Handles" options:v22];

      v91 = [MEMORY[0x277CBEB18] array];
      v24 = MEMORY[0x277CBEB98];
      v25 = [v7 account];
      v26 = [v25 handles];
      v27 = [v24 setWithArray:v26];

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v88 = v17;
      v28 = [MEMORY[0x277CBEB98] setWithArray:v17];
      v86 = v27;
      v29 = [v27 hmf_addedObjectsFromSet:v28];

      v30 = [v29 countByEnumeratingWithState:&v101 objects:v111 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = v7;
        v33 = *v102;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v102 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v101 + 1) + 8 * i);
            v36 = objc_autoreleasePoolPush();
            v37 = v32;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v108 = v39;
              v109 = 2112;
              v110 = v35;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Adding handle: %@", buf, 0x16u);

              v32 = v7;
            }

            objc_autoreleasePoolPop(v36);
            v40 = [v90 modelIdentifier];
            [v35 setModelParentIdentifier:v40];

            v41 = [v35 modelObjectWithChangeType:1 version:4];
            if (v41)
            {
              [v91 addObject:v41];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v101 objects:v111 count:16];
        }

        while (v31);
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v42 = v88;
      v43 = [MEMORY[0x277CBEB98] setWithArray:v88];
      v44 = [v86 hmf_commonObjectsFromSet:v43];

      v45 = [v44 countByEnumeratingWithState:&v97 objects:v106 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v98;
        v87 = v44;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v98 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v97 + 1) + 8 * j);
            v96[0] = MEMORY[0x277D85DD0];
            v96[1] = 3221225472;
            v96[2] = ____updateAccount_block_invoke;
            v96[3] = &unk_27972B1A0;
            v96[4] = v49;
            v50 = [v42 hmf_objectPassingTest:v96];
            if (v50 && (objc_opt_respondsToSelector() & 1) != 0 && ([v49 isBackingStorageEqual:v50] & 1) == 0)
            {
              v51 = [HMDAccountHandleModel alloc];
              v52 = [v49 modelIdentifier];
              v53 = [v49 modelParentIdentifier];
              v54 = [(HMDBackingStoreModelObject *)v51 initWithObjectChangeType:2 uuid:v52 parentUUID:v53];

              v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v50, "isLocal")}];
              [(HMDAccountHandleModel *)v54 setLocal:v55];

              if (v54)
              {
                [v91 addObject:v54];
              }

              v44 = v87;
            }

            v42 = v88;
          }

          v46 = [v44 countByEnumeratingWithState:&v97 objects:v106 count:16];
        }

        while (v46);
      }

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v56 = [MEMORY[0x277CBEB98] setWithArray:v42];
      v57 = [v86 hmf_removedObjectsFromSet:v56];

      v58 = [v57 countByEnumeratingWithState:&v92 objects:v105 count:16];
      v59 = v89;
      if (v58)
      {
        v60 = v58;
        v61 = *v93;
        do
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v93 != v61)
            {
              objc_enumerationMutation(v57);
            }

            v63 = *(*(&v92 + 1) + 8 * k);
            v64 = objc_autoreleasePoolPush();
            v65 = v59;
            v66 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              v67 = HMFGetLogIdentifier();
              *buf = 138543618;
              v108 = v67;
              v109 = 2112;
              v110 = v63;
              _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Removing handle: %@", buf, 0x16u);

              v59 = v89;
            }

            objc_autoreleasePoolPop(v64);
            v68 = [v63 modelObjectWithChangeType:3 version:4];
            if (v68)
            {
              [v91 addObject:v68];
            }
          }

          v60 = [v57 countByEnumeratingWithState:&v92 objects:v105 count:16];
        }

        while (v60);
      }

      if (([v91 hmf_isEmpty] & 1) == 0)
      {
        [v82 addObjects:v91];
        [v82 run];
      }

      updated = __updateCurrentDevice(v59, v90);
      v4 = v85;
      v17 = v88;
      a2 = v84;
      if (updated)
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v89;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543362;
          v108 = v73;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully updated account", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v70);
        v74 = [v71 accountChangeBackoffTimer];
        [v74 reset];

        v75 = [v71 devicesChangeBackoffTimer];
        [v75 suspend];

        [v71 __updateMergeIDOnAccount];
        goto LABEL_59;
      }
    }

    if (a2)
    {
      v76 = objc_autoreleasePoolPush();
      v77 = v89;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        *buf = 138543362;
        v108 = v79;
        _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Failed to update the account, will try again later", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v76);
      v80 = [v77 accountChangeBackoffTimer];
      [v80 resume];
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_61:

  v81 = *MEMORY[0x277D85DE8];
}

void __updateDevices(void *a1, char a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 devicesChangeBackoffTimer];
    [v5 suspend];

    v95 = [v4 account];
    if (!v95)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v120 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to determine devices on our account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_66;
    }

    v6 = [MEMORY[0x277D0F910] systemInfo];
    v7 = [v4 maybeSkipUpdatesOfType:1 whileMigrating:{objc_msgSend(v6, "isMigrating")}];

    if (v7)
    {
      v8 = [v4 devicesChangeBackoffTimer];
      [v8 resume];

LABEL_66:
      goto LABEL_67;
    }

    v87 = a2;
    v13 = MEMORY[0x277CBEB58];
    v14 = __createDevices(v4);
    v15 = [v13 setWithArray:v14];

    v16 = objc_autoreleasePoolPush();
    v88 = v4;
    v17 = v4;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v120 = v19;
      v121 = 2112;
      v122 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating account with peer devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CBEB18] array];
    v94 = [MEMORY[0x277CBEB18] array];
    v21 = MEMORY[0x277CBEB98];
    v22 = [v17 account];
    v23 = [v22 devices];
    v24 = [v23 hmf_objectsPassingTest:&__block_literal_global_590];
    v25 = [v21 setWithArray:v24];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v89 = v25;
    v90 = v15;
    v26 = [v25 hmf_addedObjectsFromSet:v15];
    v27 = [v26 countByEnumeratingWithState:&v112 objects:v118 count:16];
    v96 = v20;
    if (v27)
    {
      v28 = v27;
      v29 = *v113;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v113 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v112 + 1) + 8 * i);
          v32 = objc_autoreleasePoolPush();
          v33 = v17;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v120 = v35;
            v121 = 2112;
            v122 = v31;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Adding device: %@", buf, 0x16u);

            v20 = v96;
          }

          objc_autoreleasePoolPop(v32);
          [v31 setAccount:v95];
          v36 = [v31 backingStoreObjectsWithChangeType:1 version:4];
          [v20 addObjectsFromArray:v36];
        }

        v28 = [v26 countByEnumeratingWithState:&v112 objects:v118 count:16];
      }

      while (v28);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v37 = v90;
    obj = [v89 hmf_commonObjectsFromSet:v90];
    v93 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
    if (!v93)
    {
LABEL_49:

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v65 = [v89 hmf_removedObjectsFromSet:v37];
      v66 = [v65 countByEnumeratingWithState:&v104 objects:v116 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v105;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v105 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v104 + 1) + 8 * j);
            v71 = objc_autoreleasePoolPush();
            v72 = v17;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              v120 = v74;
              v121 = 2112;
              v122 = v70;
              _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Removing device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v71);
            v75 = [v70 isCloudTracked];
            v76 = [v70 backingStoreObjectsWithChangeType:3 version:4];
            if (v75)
            {
              v77 = v94;
            }

            else
            {
              v77 = v96;
            }

            [v77 addObjectsFromArray:v76];
          }

          v67 = [v65 countByEnumeratingWithState:&v104 objects:v116 count:16];
        }

        while (v67);
      }

      v78 = dispatch_group_create();
      if (([v94 hmf_isEmpty] & 1) == 0)
      {
        dispatch_group_enter(v78);
        v79 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
        v80 = [v17 backingStore];
        v81 = [v80 transaction:@"Update Devices" options:v79];

        [v81 addObjects:v94];
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = ____updateDevices_block_invoke_591;
        v102[3] = &unk_2797359D8;
        v103 = v78;
        [v81 run:v102];
      }

      if (([v96 hmf_isEmpty] & 1) == 0)
      {
        dispatch_group_enter(v78);
        v82 = [v17 backingStore];
        v83 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
        v84 = [v82 transaction:@"Update Devices" options:v83];

        [v84 addObjects:v96];
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = ____updateDevices_block_invoke_2;
        v100[3] = &unk_2797359D8;
        v101 = v78;
        [v84 run:v100];
      }

      objc_initWeak(buf, v17);
      v85 = v17[2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____updateDevices_block_invoke_3;
      block[3] = &unk_2797319D8;
      objc_copyWeak(&v98, buf);
      v99 = v87;
      dispatch_group_notify(v78, v85, block);
      objc_destroyWeak(&v98);
      objc_destroyWeak(buf);

      v4 = v88;
      goto LABEL_66;
    }

    v92 = *v109;
LABEL_21:
    v38 = 0;
    while (1)
    {
      if (*v109 != v92)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v108 + 1) + 8 * v38);
      v40 = [v37 member:v39];
      v41 = v40;
      if (v40)
      {
        v42 = [v40 version];
        [v39 setLocalOnlyVersionFromIDS:v42];
      }

      if (([v39 isLocallyTracked] & 1) == 0)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v17;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [v39 shortDescription];
          *buf = 138543618;
          v120 = v46;
          v121 = 2112;
          v122 = v47;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Tracking device locally: %@", buf, 0x16u);

          v37 = v90;
        }

        objc_autoreleasePoolPop(v43);
        [v39 setLocallyTracked:1];
      }

      v48 = [v17 isDeviceLocallyPairedWatch:v39];
      if ([v39 isCloudTracked])
      {
        if (!isWatch())
        {
          if (!v48)
          {
            goto LABEL_47;
          }

          v60 = objc_autoreleasePoolPush();
          v61 = v17;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            v64 = [v39 identifier];
            *buf = 138543618;
            v120 = v63;
            v121 = 2112;
            v122 = v64;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Processing update for connected watch: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          v37 = v90;
          if (!v41)
          {
            goto LABEL_47;
          }

LABEL_34:
          v49 = [v39 version];
          v50 = [v41 version];
          v51 = [v49 isGreaterThanVersion:v50];

          if (v51)
          {
            [v41 setAccount:v95];
            v52 = [v39 version];
            [v41 updateVersion:v52];
          }

          if (([v39 isBackingStorageEqual:v41] & 1) == 0)
          {
            v53 = objc_autoreleasePoolPush();
            v54 = v17;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = HMFGetLogIdentifier();
              *buf = 138543618;
              v120 = v56;
              v121 = 2112;
              v122 = v41;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Updating device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v53);
            [v41 setAccount:v95];
            v57 = [v41 backingStoreObjectsWithChangeType:2 version:4];
            if (!v48 || (v58 = [v39 isCloudTracked], v59 = v94, (v58 & 1) == 0))
            {
              v59 = v96;
            }

            [v59 addObjectsFromArray:v57];
          }

          goto LABEL_47;
        }

        [v39 setCloudTracked:0];
      }

      if (v41)
      {
        goto LABEL_34;
      }

LABEL_47:

      if (v93 == ++v38)
      {
        v93 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
        if (!v93)
        {
          goto LABEL_49;
        }

        goto LABEL_21;
      }
    }
  }

LABEL_67:

  v86 = *MEMORY[0x277D85DE8];
}

id __createDevices(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CBEB58];
  v3 = [v1 service];
  v4 = [v3 devices];
  v20 = [v2 setWithCapacity:{objc_msgSend(v4, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v1 service];
  v6 = [v5 devices];

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v1 service];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        v16 = [[HMDDevice alloc] initWithService:v15 device:v12];
        if (v16)
        {
          [v20 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [v20 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void ____updateDevices_block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resolved", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    if (*(a1 + 40) == 1)
    {
      v7 = [v4 notificationCenter];
      [v7 postNotificationName:@"HMDAppleAccountManagerResolved" object:v4];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __createAccountHandles(void *a1)
{
  v1 = a1;
  if ([v1 isServiceActive])
  {
    v2 = [v1 service];
    v3 = [v2 hmd_handles];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

uint64_t __updateCurrentDevice(void *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v69 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = __createCurrentDevice(v6);
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      v52 = v6;
      v50 = v3;
      v12 = [v9 identifier];
      v13 = [v4 deviceForIdentifier:v12];

      v49 = v11;
      v48 = v13;
      if (v13)
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = ____updateCurrentDevice_block_invoke;
        v62[3] = &unk_279730430;
        v14 = v13;
        v15 = &v63;
        v16 = v6;
        v17 = v6;
        v63 = v17;
        v18 = &v64;
        v19 = v10;
        v64 = v19;
        v20 = &v65;
        v65 = v14;
        v66 = v4;
        __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(v17, v19, v62);

        v21 = v10;
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v6;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v69 = v29;
          v70 = 2112;
          v71 = v10;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Adding current device: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = ____updateCurrentDevice_block_invoke_585;
        v58[3] = &unk_279734D88;
        v15 = &v59;
        v30 = v27;
        v59 = v30;
        v18 = &v60;
        v21 = v10;
        v31 = v10;
        v60 = v31;
        v20 = &v61;
        v61 = v4;
        __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(v30, v31, v58);
        v16 = v52;
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v32 = [v16 account];
      v33 = [v32 devices];

      v34 = [v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
      v35 = v16;
      if (v34)
      {
        v36 = v34;
        v37 = *v55;
        v51 = v21;
        v53 = v33;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v55 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v39 = *(*(&v54 + 1) + 8 * i);
            if (([v39 isEqual:v21] & 1) == 0 && objc_msgSend(v39, "isRelatedToDevice:", v21))
            {
              v40 = objc_autoreleasePoolPush();
              v41 = v35;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                HMFGetLogIdentifier();
                v44 = v43 = v4;
                v45 = [v39 shortDescription];
                *buf = 138543618;
                v69 = v44;
                v70 = 2112;
                v71 = v45;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Removing stale device: %@", buf, 0x16u);

                v35 = v52;
                v4 = v43;
                v21 = v51;
              }

              objc_autoreleasePoolPop(v40);
              [v4 removeDevice:v39];
              v33 = v53;
            }
          }

          v36 = [v33 countByEnumeratingWithState:&v54 objects:v67 count:16];
        }

        while (v36);
      }

      __handleUpdatedDevice_109515(v35, v21);
      v3 = v50;
      v10 = v21;
      v11 = v49;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v69 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create current device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v11 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v11;
}

HMDDevice *__createCurrentDevice(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isServiceActive])
  {
    v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
    if (v3)
    {
      v4 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v3];
      v5 = [[HMDDeviceHandle alloc] initWithInternal:v4];
      [v2 addObject:v5];
    }

    v6 = [v1 pushConnection];
    v7 = [v6 publicToken];

    if (!v7)
    {
      v18 = [v1 service];
      v19 = [v18 iCloudAccount];

      v20 = [v19 pushToken];
      v7 = v20;
      if (!v20 || [v20 hmf_isZeroed])
      {

        goto LABEL_16;
      }
    }

    v8 = [v1 service];
    v9 = [v8 hmd_preferredHandle];

    v10 = [[_HMDGlobalDeviceHandle alloc] initWithPushToken:v7 accountHandle:v9];
    v11 = [[HMDDeviceHandle alloc] initWithInternal:v10];
    if (v11)
    {
      [v2 addObject:v11];
      v12 = [(HMDDeviceHandle *)v11 identifier];
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v21 = [HMDDevice alloc];
      v22 = [MEMORY[0x277D0F910] systemInfo];
      v23 = [v22 name];
      v24 = [MEMORY[0x277D0F8E8] productInfo];
      v25 = +[HMDHomeKitVersion currentVersion];
      v26 = +[HMDDeviceCapabilities deviceCapabilities];
      v17 = [(HMDDevice *)v21 initWithIdentifier:v12 handles:v2 name:v23 productInfo:v24 version:v25 capabilities:v26];

LABEL_19:
      goto LABEL_20;
    }

LABEL_16:
    v27 = objc_autoreleasePoolPush();
    v28 = v1;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device identifier", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v17 = 0;
    goto LABEL_19;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = v1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Cannot create current device; Service is not active", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  v17 = 0;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

void ____updateCurrentDevice_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v19 = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  if (([*(a1 + 48) isBackingStorageEqual:*(a1 + 40)] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updating current device: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v15 = [*(a1 + 32) backingStore];
    v16 = [v15 transaction:@"Update Device" options:v14];

    [*(a1 + 40) setAccount:*(a1 + 56)];
    v17 = [*(a1 + 40) backingStoreObjectsWithChangeType:1 version:4];
    [v16 addObjects:v17];

    [v16 run];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating device rapport identity on current device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D44150]);
  [v12 setDispatchQueue:v9[2]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ____HMDAppleAccountManagerUpdateRPIdentityForCurrentDevice_block_invoke;
  v18[3] = &unk_279734180;
  v19 = v12;
  v20 = v9;
  v21 = v6;
  v22 = v7;
  v13 = v12;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  [v13 getIdentitiesWithFlags:1 completion:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void ____updateCurrentDevice_block_invoke_585(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 48) addDevice:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedDevice_109515(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____handleUpdatedDevice_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____handleUpdatedDevice_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  if (v7)
  {
    v11 = @"HMDDeviceNotificationKey";
    v12 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [*(a1 + 32) notificationCenter];
  [v9 postNotificationName:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:*(a1 + 32) userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __setAccount(void *a1, void *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    v7 = v5[7];
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
      v8 = 0;
    }

    else
    {
      v9 = v5[7];
      objc_storeStrong(v5 + 7, a2);
      [v6 setManager:v5];
      v10 = v5;
      v8 = v9;
      v11 = v6;
      if (v8)
      {
        v12 = [v10 notificationCenter];
        [v12 removeObserver:v10 name:@"HMDAccountAddedDeviceNotification" object:v8];

        v13 = [v10 notificationCenter];
        [v13 removeObserver:v10 name:@"HMDAccountRemovedDeviceNotification" object:v8];
      }

      if (v11)
      {
        v14 = [v10 notificationCenter];
        [v14 addObserver:v10 selector:sel___deviceAddedToCurrentAccount_ name:@"HMDAccountAddedDeviceNotification" object:v11];

        v15 = [v10 notificationCenter];
        [v15 addObserver:v10 selector:sel___deviceRemovedFromCurrentAccount_ name:@"HMDAccountRemovedDeviceNotification" object:v11];
      }

      v16 = [v8 manager];

      if (v16 == v10)
      {
        [v8 setManager:0];
      }

      os_unfair_recursive_lock_unlock();
      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v11 shortDescription];
        v30 = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated account: %@", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      if (a3)
      {
        v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        v23 = v22;
        if (v11)
        {
          [v22 setObject:v11 forKeyedSubscript:@"HMDAccountNotificationKey"];
        }

        if (v8)
        {
          [v23 setObject:v8 forKeyedSubscript:@"HMDPreviousAccountNotificationKey"];
        }

        v24 = v11 == 0;
        v25 = [v18 notificationCenter];
        v26 = [v23 copy];
        [v25 postNotificationName:@"HMDAppleAccountManagerAccountUpdatedNotification" object:v18 userInfo:v26];

        v27 = [v18 device];
        if (v27)
        {
          v28 = 1;
        }

        else
        {
          v28 = v24;
        }

        if (v28 == 1)
        {
          __handleUpdatedDevice_109515(v18, v27);
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __removeAccount(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing account: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 backingStore];
    v10 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
    v11 = [v9 transaction:@"Remove Account" options:v10];

    v12 = [v4 modelObjectWithChangeType:3 version:4];
    [v11 add:v12];

    [v11 run];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __updateAccountContext(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = MEMORY[0x277D0F770];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ____updateAccountContext_block_invoke;
    v4[3] = &unk_279735D00;
    v5 = v1;
    [v3 activityWithName:@"Accounts.Context" parent:0 options:1 block:v4];

    objc_autoreleasePoolPop(v2);
  }
}

HMDAccount *__createAccount(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 accountContext];
    if (v3)
    {
      v4 = [HMDAccountIdentifier accountIdentifierForAppleAccountContext:v3];
      if ([v2 isServiceActive])
      {
        v5 = __createAccountHandles(v2);
        if ([v5 hmf_isEmpty])
        {
          v6 = objc_autoreleasePoolPush();
          v7 = v2;
          v8 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = HMFGetLogIdentifier();
            *buf = 138543362;
            v41 = v9;
            _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create handles", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v6);
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v16 = v5;
          v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v36;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v36 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v35 + 1) + 8 * i) setLocallyTracked:1];
              }

              v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v18);
          }
        }

        v21 = [v2 service];
        v22 = [v21 iCloudAccount];

        v23 = MEMORY[0x277CBEB58];
        v24 = [v22 devices];
        v25 = [v23 setWithCapacity:{objc_msgSend(v24, "count") + 1}];

        v26 = __createCurrentDevice(v2);
        if (v26)
        {
          [v25 addObject:v26];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          v28 = v2;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v30 = v34 = v27;
            *buf = 138543362;
            v41 = v30;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create current device", buf, 0xCu);

            v27 = v34;
          }

          objc_autoreleasePoolPop(v27);
        }

        v31 = __createDevices(v2);
        [v25 addObjectsFromArray:v31];

        v15 = [v25 allObjects];
      }

      else
      {
        v15 = MEMORY[0x277CBEBF8];
        v5 = MEMORY[0x277CBEBF8];
      }

      v10 = [[HMDAccount alloc] initWithIdentifier:v4 handles:v5 devices:v15];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v2;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context is required to create account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

void __addAccount(void *a1, void *a2, int a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v44 = v5;
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v10;
      v64 = 2112;
      v65 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = [v6 modelObjectWithChangeType:1 version:4];
    [v11 addObject:v12];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = [v6 handles];
    v14 = [v13 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v56 + 1) + 8 * i);
          if (!a3 || [*(*(&v56 + 1) + 8 * i) isLocallyTracked])
          {
            v19 = [v18 modelObjectWithChangeType:1 version:{4, v44}];
            [v11 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v15);
    }

    if ([v11 count])
    {
      v20 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:0 mustPush:0];
      v21 = [v8 backingStore];
      v22 = [v21 transaction:@"Add Account" options:v20];

      [v22 addObjects:v11];
      [v22 run];
    }

    v23 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v24 = [v6 devices];
    v25 = [v24 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v52 + 1) + 8 * j);
          if (([v29 isCurrentDevice] & 1) == 0 && (!a3 || objc_msgSend(v29, "isLocallyTracked")))
          {
            v30 = [v29 backingStoreObjectsWithChangeType:1 version:4];
            [v23 addObjectsFromArray:v30];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v26);
    }

    if ([v23 count])
    {
      v31 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
      v32 = [v8 backingStore];
      v33 = [v32 transaction:@"Add Account" options:v31];

      [v33 addObjects:v23];
      [v33 run];
    }

    v34 = dispatch_group_create();
    dispatch_group_enter(v34);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ____addAccount_block_invoke;
    aBlock[3] = &unk_2797359B0;
    v35 = v6;
    v50 = v35;
    v36 = v8;
    v51 = v36;
    v37 = _Block_copy(aBlock);
    v38 = [v36 cloudCache];
    v39 = [v38 homeManagerZone];

    v40 = [v35 modelIdentifier];
    v41 = v40;
    v5 = v44;
    if (v39 && v40)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = ____addAccount_block_invoke_2;
      v45[3] = &unk_2797349D8;
      v46 = v36;
      v48 = v37;
      v47 = v34;
      [v39 allDescendentsCloudRecordsForParentID:v41 completionHandler:v45];
    }

    else
    {
      v37[2](v37);
      dispatch_group_leave(v34);
    }

    v42 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v34, v42))
    {
      v37[2](v37);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void ____addAccount_block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentDeviceModelsWithChangeType:1 version:4];
  if ([v5 count])
  {
    v2 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
    v3 = [*(a1 + 40) backingStore];
    v4 = [v3 transaction:@"Add Account" options:v2];

    [v4 addObjects:v5];
    [v4 run];
  }
}

void ____addAccount_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * v12) extractObjectChange];
          v14 = v13;
          if (v13)
          {
            [v13 setObjectChangeType:1];
            [v7 addObject:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v15 = [HMDBackingStoreTransactionOptions optionsWithSource:2 destination:2 mustReplay:0 mustPush:0];
      v16 = [*(a1 + 32) backingStore];
      v17 = [v16 transaction:@"Add Account Reprocess Cloud Cache" options:v15];

      [v17 addObjects:v7];
      [v17 run];
    }
  }

  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));

  v18 = *MEMORY[0x277D85DE8];
}

void ____updateAccountContext_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v3 = [*(*(a1 + 32) + 32) aa_primaryAppleAccount];
  v4 = *(a1 + 32);
  if (v3)
  {
    *(v4 + 48) = 1;
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Primary apple account is logged in", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(*(a1 + 32) + 40);
    if (os_signpost_enabled(v9))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PrimaryAppleAccountLoggedIn", "", &v23, 2u);
    }

    v10 = [[HMDAppleAccountContext alloc] initWithAccount:v3];
    v11 = *(*(a1 + 32) + 64);
    if ((HMFEqualObjects() & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated account context: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      objc_storeStrong((*(a1 + 32) + 64), v10);
    }
  }

  else
  {
    *(v4 + 48) = 0;
  }

  os_unfair_recursive_lock_unlock();
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(*(a1 + 32) + 48);
    v21 = HMFBooleanToString();
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Primary iCloud (Apple) account login status: Logged In : %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_2538813E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__110988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25389577C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538997A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253899E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25389A7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25389D214(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25389D5D0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25389FB28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 144));
  _Unwind_Resume(a1);
}

void sub_25389FF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&a33);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112425(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538A29A8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __removeAllAccessories(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1[3] allKeys];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        __removeUnassociatedAccessory(v1, *(*(&v8 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [v1[3] removeAllObjects];
  v7 = *MEMORY[0x277D85DE8];
}

void __removeUnassociatedAccessory(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3[3] objectForKey:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing unassociated accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v3[3] removeObjectForKey:v4];
    v10 = [v7 delegate];
    if (v10)
    {
      v11 = [v7 delegateQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ____removeUnassociatedAccessory_block_invoke;
      v13[3] = &unk_2797359B0;
      v14 = v10;
      v15 = v5;
      dispatch_async(v11, v13);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __addDevice(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 isConfigured])
  {
    v5 = [v4 identifier];
    __removeUnassociatedAccessory(v3, v5);
LABEL_3:

    goto LABEL_11;
  }

  v6 = v3[3];
  v7 = [v4 identifier];
  v8 = [v6 objectForKey:v7];

  if (!v8 && [v4 supportsAirPlay2])
  {
    v9 = MEMORY[0x277CD1680];
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = [v10 initWithUUIDString:*MEMORY[0x277CCE900]];
    v5 = [v9 categoryWithIdentifier:v11];

    v12 = [HMDUnassociatedWACAccessory alloc];
    v13 = [v4 identifier];
    v14 = [v13 UUIDString];
    v15 = [v4 name];
    v16 = [(HMDUnassociatedWACAccessory *)v12 initWithIdentifier:v14 name:v15 category:v5 messageDispatcher:v3[4] wacDevice:v4];

    v17 = objc_autoreleasePoolPush();
    v18 = v3;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *v27 = 138543874;
      *&v27[4] = v20;
      *&v27[12] = 2048;
      *&v27[14] = v16;
      *&v27[22] = 2112;
      v28 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@New WAC Accessory discovered: %p %@", v27, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [v4 identifier];
    v22 = v18;
    v23 = v16;
    [v3[3] setObject:v23 forKey:v21];
    v24 = [v22 delegate];
    if (v24)
    {
      v25 = [v22 delegateQueue];
      *v27 = MEMORY[0x277D85DD0];
      *&v27[8] = 3221225472;
      *&v27[16] = ____addUnassociatedAccessory_block_invoke;
      v28 = &unk_2797359B0;
      v29 = v24;
      v30 = v23;
      dispatch_async(v25, v27);
    }

    goto LABEL_3;
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2538ABA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C027C0](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C027D0](v20);
  return a1;
}

void sub_2538ABE48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C027D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2538ABE1CLL);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_279720638, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_2538ACE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AD608(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_2538ADA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538ADC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2538AE324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_2538AE8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__113704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDUserPresenceRegionStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserPresenceRegionStatus %tu", a1];
  }

  else
  {
    v2 = off_27972B708[a1];
  }

  return v2;
}

void sub_2538B5BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538BC228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDApplicationInfo *__HMDApplicationRegistryApplicationInfoForApplicationProxy(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    v6 = [v4 bundleURL];
    if (v6)
    {
      __HMDApplicationRegistryApplicationForBundleURL(v3, v6);
    }

    else
    {
      __HMDApplicationRegistryApplicationWithBundleIdentifier(v3, v5);
    }
    v7 = ;
    if (!v7)
    {
      v7 = [[HMDApplicationInfo alloc] initWithBundleIdentifier:v5 bundleURL:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id *__HMDApplicationRegistryApplicationWithBundleIdentifier(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] allObjects];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____HMDApplicationRegistryApplicationWithBundleIdentifier_block_invoke;
    v6[3] = &unk_27972B8A0;
    v7 = v3;
    a1 = [v4 hmf_objectPassingTest:v6];
  }

  return a1;
}

id *__HMDApplicationRegistryApplicationForBundleURL(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] allObjects];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____HMDApplicationRegistryApplicationForBundleURL_block_invoke;
    v6[3] = &unk_27972B8A0;
    v7 = v3;
    a1 = [v4 hmf_objectPassingTest:v6];
  }

  return a1;
}

void __HMDApplicationRegistryHandleAddedApplicationInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v8 = v3;
    v4 = [v3 isEntitledForSPIAccess];
    v5 = [v8 vendorIdentifier];
    if (v5)
    {
      v6 = +[HMDApplicationVendorIDStore sharedStore];
      v7 = [v8 bundleIdentifier];
      [v6 addVendorID:v5 applicationBundleID:v7 isSPIClient:v4];
    }

    v3 = v8;
  }
}

void sub_2538C4F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538C6208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538C6A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionDeviceUpdated(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 transactionResult];
  v9 = [v5 modelObjectWithChangeType:0 version:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v39 = v6;
  if (v11)
  {
    v45 = 0;
    v12 = [v11 diff:v6 differingFields:&v45];
    v13 = v45;
    v14 = v13;
    if (!v12)
    {
      goto LABEL_38;
    }

    v37 = v11;
    v38 = v7;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v15;
    v17 = *v42;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = v5;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v23;
          v48 = 2112;
          v49 = v19;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating device information for %@", buf, 0x16u);

          v6 = v39;
        }

        objc_autoreleasePoolPop(v20);
        if ([v19 isEqualToString:@"handles"])
        {
          v24 = [v6 deviceHandles];
          if (v24)
          {
            [v21 setHandles:v24];
          }

          goto LABEL_25;
        }

        if ([v19 isEqualToString:@"name"])
        {
          v24 = [v6 name];
          v25 = [v24 copy];
          [v21 setName:v25];
LABEL_24:

LABEL_25:
          [v8 markChanged];
          goto LABEL_26;
        }

        if ([v19 isEqualToString:@"version"])
        {
          v24 = [v6 version];
          v25 = [v24 copy];
          [v21 setVersion:v25];
          goto LABEL_24;
        }

        if ([v19 isEqualToString:@"productInfo"])
        {
          v24 = [v6 productInfo];
          v25 = [v24 copy];
          [v21 setProductInfo:v25];
          goto LABEL_24;
        }

        if ([v19 isEqualToString:@"rpIdentity"])
        {
          v24 = [v6 rpIdentity];
          v25 = [v24 copy];
          [v21 setRpIdentity:v25];
          goto LABEL_24;
        }

        v26 = objc_autoreleasePoolPush();
        v27 = v21;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v29;
          v48 = 2112;
          v49 = v19;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unexpected field! -- changedField: %@", buf, 0x16u);

          v6 = v39;
        }

        objc_autoreleasePoolPop(v26);
LABEL_26:
        ++v18;
      }

      while (v16 != v18);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      v16 = v30;
      if (!v30)
      {
LABEL_32:
        v14 = obj;

        if ([v8 changed])
        {
          [v5 setDirty:1];
          v31 = [v8 backingStore];
          __HMDDeviceMarkDirty(v5, v31);
        }

        v11 = v37;
        v7 = v38;
        goto LABEL_38;
      }
    }
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v5;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v47 = v35;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve device model for updated device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
  v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [v7 respondWithError:v14];
  v6 = v39;
LABEL_38:

  v36 = *MEMORY[0x277D85DE8];
}

void __HMDDeviceMarkDirty(void *a1, void *a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ____HMDDeviceMarkDirty_block_invoke;
  v5[3] = &unk_2797359D8;
  v6 = v3;
  v4 = v3;
  [a2 submitBlock:v5];
}

void sub_2538D1874(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t ____idsIdentifierHashFromIDSIdentifier_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A08F6CA5-EC1E-4DD6-A068-377BA45247B6"];
  v1 = __idsIdentifierHashFromIDSIdentifier_namespace;
  __idsIdentifierHashFromIDSIdentifier_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2538D249C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538D259C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id __modelIdentifierFromParentIdentifier(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = MEMORY[0x277CCAD78];
    v6 = [v3 identifier];
    v7 = [v6 UUIDString];
    v16 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v9 = [v5 hm_deriveUUIDFromBaseUUID:v4 withSalts:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v3;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing parent identifier while updating model identifier.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

void __deregisterForAccountHandleUpdates(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCAB98];
    v2 = a1;
    v3 = [v1 defaultCenter];
    [v3 removeObserver:v2 name:@"HMDAccountHandlesUpdatedNotification" object:0];
  }
}

id __deviceHandlesForAccount(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v28 = a3;
  v7 = 0;
  if (v5 && v6)
  {
    v8 = [v6 hmf_isEmpty];
    if (!v28 || v8)
    {
      v7 = v5;
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = ____deviceHandlesForAccount_block_invoke;
      v33[3] = &unk_27972BB58;
      v34 = v6;
      v9 = [v5 hmf_objectsPassingTest:v33];
      if ([v9 hmf_isEmpty])
      {
        v7 = v5;
      }

      else
      {
        v25 = v6;
        v26 = v5;
        v10 = [v5 mutableCopy];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v9;
        v11 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [v15 internal];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = v16;
              }

              else
              {
                v17 = 0;
              }

              v18 = v17;

              if (v18)
              {
                v19 = [_HMDGlobalDeviceHandle alloc];
                v20 = [v18 pushToken];
                v21 = [(_HMDGlobalDeviceHandle *)v19 initWithPushToken:v20 accountHandle:v28];

                v22 = [[HMDDeviceHandle alloc] initWithInternal:v21];
                if (v22)
                {
                  [v10 removeObject:v15];
                  [v10 addObject:v22];
                }
              }
            }

            v12 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v12);
        }

        v7 = [v10 copy];
        v6 = v25;
        v5 = v26;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t ____deviceHandlesForAccount_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isGlobal])
  {
    v4 = [v3 accountHandle];
    if (v4)
    {
      v5 = [*(a1 + 32) containsObject:v4] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2538D2E3C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2538D6180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__118213(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538D797C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538D8F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538DCB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t bindStringSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = sqlite3_bind_text(a1, a2, [v11 UTF8String], -1, 0);
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}