id getImagesPath()
{
  v0 = HMDCreateHomeKitDaemonCacheDirectory();
  v1 = [v0 stringByAppendingString:@"/Snapshots"];

  return v1;
}

id getBulletinImagesPath()
{
  v0 = HMDCreateHomeKitDaemonCacheDirectory();
  v1 = [v0 stringByAppendingString:@"/BulletinSnapshots"];

  return v1;
}

BOOL compareCharacteristicValue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7 || !v8)
  {
    v13 = (v7 | v8) == 0;
    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      v11 = v7;
      v12 = *[v10 objCType] == 102 || *objc_msgSend(v10, "objCType") == 100;
      if (*[v11 objCType] == 102 || (*objc_msgSend(v11, "objCType") == 100 ? (v14 = 1) : (v14 = v12), v14 == 1))
      {
        [v10 doubleValue];
        v16 = v15;
        [v11 doubleValue];
        v18 = v17;
        v19 = 0.00999999978;
        if (v9)
        {
          [v9 doubleValue];
          if (fabs(v20) >= 2.22044605e-16)
          {
            [v9 doubleValue];
            v19 = v21;
          }
        }

        context = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        v23 = (v16 * (1.0 / v19));
        v24 = (v18 * (1.0 / v19));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138544642;
          v43 = v25;
          v44 = 2048;
          v45 = v16;
          v46 = 2048;
          v47 = (v16 * (1.0 / v19));
          v48 = 2048;
          v49 = v18;
          v50 = 2048;
          v51 = (v18 * (1.0 / v19));
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Saved double value: %lf (%ld), current double value: %lf (%ld), step value: %lf", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(context);
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v13 = v24 >= v23;
            goto LABEL_58;
          }

          if (a3 == 5)
          {
            v13 = v24 != v23;
            goto LABEL_58;
          }
        }

        else
        {
          switch(a3)
          {
            case 0:
              v13 = v24 < v23;
              goto LABEL_58;
            case 1:
              v13 = v24 <= v23;
              goto LABEL_58;
            case 2:
              v13 = v24 > v23;
LABEL_58:

              goto LABEL_59;
          }
        }

        v13 = v24 == v23;
        goto LABEL_58;
      }
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v26 = [v7 compare:v8];
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 == 5)
        {
          v13 = v26 != 0;
LABEL_52:
          v35 = objc_autoreleasePoolPush();
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            v38 = HMFBooleanToString();
            *buf = 138544386;
            v43 = v37;
            v44 = 2112;
            v45 = *&v7;
            v46 = 2048;
            v47 = a3;
            v48 = 2112;
            v49 = *&v8;
            v50 = 2112;
            v51 = v38;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Comparing characteristic value %@ (op:%tu) %@, result: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v35);
          goto LABEL_59;
        }

LABEL_41:
        v27 = v26 == 0;
        goto LABEL_44;
      }

      v34 = v26 >= 2;
    }

    else
    {
      if (!a3)
      {
        v27 = v26 == -1;
LABEL_44:
        v13 = v27;
        goto LABEL_52;
      }

      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v27 = v26 == 1;
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v34 = v26 + 1 >= 2;
    }

    v13 = !v34;
    goto LABEL_52;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v31 = objc_opt_class();
    v32 = v31;
    *buf = 138543874;
    v43 = v30;
    v44 = 2112;
    v45 = *&v31;
    v46 = 2112;
    v47 = objc_opt_class();
    v33 = v47;
  }

  objc_autoreleasePoolPop(v28);
  v13 = 0;
LABEL_59:

  v39 = *MEMORY[0x277D85DE8];
  return v13;
}

id spiClientIdentifierForUUID(void *a1)
{
  v1 = a1;
  v2 = +[HMDProcessInfo privateClientIdentifierSalt];
  v3 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v1 identifierSalt:v2];

  return v3;
}

id spiClientIdentifierForUUIDAndSalts(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[HMDProcessInfo privateClientIdentifierSalt];
  v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v4 identifierSalt:v5 withSalts:v3];

  return v6;
}

uint64_t shouldLogPrivateInformation()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"shouldLogPrivateInformation"];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t isEqualDeepCompare(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 count];
      if (v5 == [v4 count])
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = v3;
        v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v31;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v31 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              v12 = [v6 objectForKey:v11];
              v13 = [v4 objectForKey:v11];
              if (!v13 || !isEqualDeepCompare(v12, v13))
              {

                goto LABEL_34;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
            v14 = 1;
            if (v8)
            {
              continue;
            }

            goto LABEL_35;
          }
        }

LABEL_25:
        v14 = 1;
LABEL_35:

        goto LABEL_36;
      }

LABEL_31:
      v14 = 0;
      goto LABEL_36;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v3 count];
      if (v15 == [v4 count])
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v6 = v3;
        v16 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v27;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v6);
              }

              v21 = *(*(&v26 + 1) + 8 * j);
              v22 = [v4 objectAtIndex:{v18, v26}];
              LODWORD(v21) = isEqualDeepCompare(v21, v22);

              if (!v21)
              {
LABEL_34:
                v14 = 0;
                goto LABEL_35;
              }

              ++v18;
            }

            v17 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (v3 == v4)
    {
      v14 = 1;
      goto LABEL_36;
    }

    v23 = [v3 isBackingStorageEqual:v4];
  }

  else
  {
    v23 = HMFEqualObjects();
  }

  v14 = v23;
LABEL_36:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

HMDHomeKitVersion *fixHomeKitVersion(void *a1)
{
  v1 = a1;
  if ([v1 minorVersion] >= 0xA && objc_msgSend(v1, "minorVersion"))
  {
    v2 = +[HMDHomeKitVersion version10];
    if ([v1 isAtLeastVersion:v2])
    {
      v3 = v1;
    }

    else
    {
      v5 = round(log10([v1 minorVersion]));
      v3 = -[HMDHomeKitVersion initWithMajorVersion:minorVersion:updateVersion:]([HMDHomeKitVersion alloc], "initWithMajorVersion:minorVersion:updateVersion:", [v1 majorVersion], llround(objc_msgSend(v1, "minorVersion") / __exp10(v5)), objc_msgSend(v1, "updateVersion"));
    }

    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

id generateWiFiUniquePreSharedKey()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = SecPasswordGenerate();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate WiFi Pre-Shared Key with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v1;
}

void *accessoryToEncodeForXPCTransportForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

BOOL shouldSkipRemoteAccessoryNotificationRegistration(void *a1)
{
  v1 = a1;
  v2 = [v1 isCurrentDeviceAvailableResident] && (!isAppleTV() || objc_msgSend(v1, "isCurrentDeviceConfirmedPrimaryResident"));

  return v2;
}

uint64_t shouldSkipLocalAccessoryNotificationRegistration(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if ([a3 hmf_isEmpty])
  {
    goto LABEL_2;
  }

  v11 = [v7 localCapabilitiesDataSource];
  if ([v11 isResidentCapable])
  {
    if ([v7 isCurrentDevicePrimaryResident])
    {

      goto LABEL_14;
    }

    v14 = [v9 hasPrefix:@"com.apple.HomeKitDaemon.Local"];

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12 = [v7 enabledResidents];
  v13 = [v12 count];

  if (!v13)
  {
    goto LABEL_14;
  }

  if (([v9 isEqual:@"com.apple.HomeKitDaemon.bulletinNotificationManager"] & 1) == 0 && (objc_msgSend(v9, "isEqual:", @"com.apple.HomeKitDaemon.bulletinBoard") & 1) == 0)
  {
    if (![v8 hasBTLELink] || (objc_msgSend(v8, "reachableTransports") & 2) == 0)
    {
      v10 = [v8 isSecureSessionEstablished] ^ 1;
      goto LABEL_15;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_2:
  v10 = 1;
LABEL_15:

  return v10;
}

uint64_t shouldDisconnectOnIdleForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = isPersistedConnectionRequiredForAccessory(v1);

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 isCurrentDevicePrimaryResident] ^ 1;
  }

  return v4;
}

uint64_t isPersistedConnectionRequiredForAccessory(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 home];
  if (![v2 isCurrentDevicePrimaryResident])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__82538;
    v31 = __Block_byref_object_dispose__82539;
    v32 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __isPersistedConnectionRequiredForAccessory_block_invoke;
    aBlock[3] = &unk_278676888;
    p_buf = &buf;
    v7 = v1;
    v22 = v7;
    v8 = _Block_copy(aBlock);
    if ([v2 isCurrentDeviceAvailableResident])
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v9 = v8[2](v8);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __isPersistedConnectionRequiredForAccessory_block_invoke_3;
      v16[3] = &unk_2786768B0;
      v16[4] = &v17;
      [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

      if (*(v18 + 24) == 1)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [v7 shortDescription];
          *v24 = 138543618;
          v25 = v12;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Require persisted connection for Siri Remote accessory %@ for all residents", v24, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        _Block_object_dispose(&v17, 8);
        v6 = 1;
        goto LABEL_12;
      }

      _Block_object_dispose(&v17, 8);
    }

    v6 = 0;
LABEL_12:

    _Block_object_dispose(&buf, 8);
    goto LABEL_13;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Current device is primary resident, always require persisted connection with accessories", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = 1;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_229CEEEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id __isPersistedConnectionRequiredForAccessory_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 32)];
    v5 = [*(a1 + 32) identifiersForBridgedAccessories];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __isPersistedConnectionRequiredForAccessory_block_invoke_2;
    v14 = &unk_278676860;
    v15 = *(a1 + 32);
    v16 = v4;
    v6 = v4;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

    v7 = [v6 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

uint64_t __isPersistedConnectionRequiredForAccessory_block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 supportsTargetController];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __isPersistedConnectionRequiredForAccessory_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 accessoryWithUUID:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

void __shouldEnableInternalDebugInterfaces_block_invoke()
{
  if (isInternalBuild())
  {
    v1 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v0 = [v1 preferenceForKey:@"shouldEnableInternalDebugInterfaces"];
    shouldEnableInternalDebugInterfaces__hmf_once_v49 = [v0 BOOLValue];
  }

  else
  {
    shouldEnableInternalDebugInterfaces__hmf_once_v49 = 0;
  }
}

uint64_t getCKContainer()
{
  v0 = @"com.apple.homekit.config";
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __getCKContainer_block_invoke;
  block[3] = &unk_27868A728;
  v5 = @"com.apple.homekit.config";
  if (getCKContainer_onceToken != -1)
  {
    dispatch_once(&getCKContainer_onceToken, block);
  }

  v1 = getCKContainer_container;
  v2 = getCKContainer_container;

  return v1;
}

void __getCKContainer_block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:*(a1 + 32) environment:cloudKitContainerEnvironment];
  v1 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3];
  v2 = getCKContainer_container;
  getCKContainer_container = v1;
}

id shortHAPTypeDescription(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CFE988];
  if ([v1 hasSuffix:*MEMORY[0x277CFE988]])
  {
    v3 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(v2, "length")}];

    v1 = v3;
  }

  return v1;
}

id listOfUUIDsFromManagedObjectSet(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 na_map:&__block_literal_global_792];

  return v2;
}

uint64_t isThisDeviceDesignatedFMFDevice()
{
  v0 = +[HMDFMFHandlerFactory sharedHandler];
  v1 = [v0 isThisDesignatedFMFDevice];

  return v1;
}

void setPrimaryPreference(void *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = @"hmd.preferred.primary.homeutil";
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMFBooleanToString();
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = @"hmd.preferred.primary.homeutil";
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Setting preferred primary: %@, isOneTime: %@, applicationKey: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  CFPreferencesSetAppValue(@"hmd.preferred.primary", v3, @"hmd.preferred.primary.homeutil");
  if (a2)
  {
    v9 = MEMORY[0x277CBEC38];
  }

  else
  {
    v9 = MEMORY[0x277CBEC28];
  }

  CFPreferencesSetAppValue(@"hmd.preferred.primary.one.time", v9, @"hmd.preferred.primary.homeutil");

  v10 = *MEMORY[0x277D85DE8];
}

void clearPrimaryPreference(int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = @"hmd.preferred.primary.homeutil";
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = @"hmd.preferred.primary.homeutil";
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing preferred primary with requireOneTime: %@ ...withApplication: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = CFPreferencesCopyAppValue(@"hmd.preferred.primary.one.time", @"hmd.preferred.primary.homeutil");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
    if (!a1 || v9)
    {
      CFPreferencesSetAppValue(@"hmd.preferred.primary", 0, @"hmd.preferred.primary.homeutil");
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t isTransientCloudKitError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 <= 0x17)
    {
      v5 = 0x8000D8u >> v4;
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

  return v5 & 1;
}

void __isFirstLaunchAfterBoot_block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = determineHomeKitDaemonRootStorePath();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 stringByAppendingPathComponent:@"lastBootUuid"];
    *v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v18 = 37;
    v3 = sysctlbyname("kern.bootsessionuuid", v21, &v18, 0, 0);
    if (v3)
    {
      if (v3 == -1)
      {
        v17 = *__error();
        _os_assumes_log();
      }

      v4 = objc_autoreleasePoolPush();
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to get kern.bootsessionuuid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      isFirstLaunchAfterBoot_firstLaunchAfterBoot = 1;
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:0];
      if (!v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v13;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Failed to load existing boot uuid", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
      }

      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v21];
      v15 = 1;
      [v14 writeToFile:v2 atomically:1 encoding:4 error:0];
      if (v10)
      {
        v15 = [v14 isEqualToString:v10] ^ 1;
      }

      isFirstLaunchAfterBoot_firstLaunchAfterBoot = v15;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *v21 = 138543362;
      *&v21[4] = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get HomeKit daemon root store path!", v21, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    isFirstLaunchAfterBoot_firstLaunchAfterBoot = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t HMDTruncatedHash(void *a1)
{
  v4 = 0;
  v1 = [a1 hm_generateSHA256];
  [v1 getBytes:&v4 length:8];
  v2 = v4;

  return v2;
}

void sub_229CF04F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229CF2294(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDMatterAccessoryPairingStepAsString(unint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMDMatterAccessoryPairingStep %tu", a1];
  }

  else
  {
    v2 = off_2786769C8[a1];
  }

  return v2;
}

void __callResolveBlocks(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 underlyingQueue];
  dispatch_assert_queue_V2(v8);

  if (v5 && v6 | v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v5 resolveBlocks];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v16 + 1) + 8 * v13++) + 16))();
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v14 = [v5 resolveBlocks];
    [v14 removeAllObjects];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_229CF7894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _isNetworkIntefaceActive(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = socket(2, 2, 0);
  if (v2 < 0 && (!*__error() || *__error()))
  {
    goto LABEL_25;
  }

  v14 = 0;
  getifaddrs(&v14);
  v5 = v14;
  if (!v14)
  {
    if (v2 < 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  do
  {
    if ((v5->ifa_flags & 8) == 0)
    {
      ifa_name = v5->ifa_name;
      if (ifa_name)
      {
        if (!SocketGetInterfaceInfo())
        {
          if (gLogCategory_HMDPowerManager <= 20 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
          {
            v6 = v5->ifa_name;
            LogPrintF();
          }

          v7 = objc_autoreleasePoolPush();
          v8 = v1;
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = HMFGetLogIdentifier();
            v11 = v5->ifa_name;
            *buf = 138544130;
            v16 = v10;
            v17 = 2080;
            v18 = v11;
            v19 = 2080;
            v20 = "?";
            v21 = 2080;
            v22 = "active";
            _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Network interface %s (%s): %s\n", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v7);
        }
      }
    }

    v5 = v5->ifa_next;
  }

  while (v5);
  if (v14)
  {
    MEMORY[0x22AAD3AA0](v14, ifa_name, v4);
  }

  if ((v2 & 0x80000000) == 0)
  {
LABEL_22:
    if (close(v2) && *__error())
    {
      __error();
    }
  }

LABEL_25:

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void _handleNetworkInterfaceChanged(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 setNetworkInterfaceActive:_isNetworkIntefaceActive(v3)];
  if (gLogCategory_HMDPowerManager <= 30 && (gLogCategory_HMDPowerManager != -1 || _LogCategory_Initialize()))
  {
    [v3 networkInterfaceActive];
    LogPrintF();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v5 networkInterfaceActive];
    v9 = "no";
    if (v8)
    {
      v9 = "yes";
    }

    *buf = 138543618;
    v12 = v7;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Network changed. Network interface active: %s\n", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v5 _update];

  v10 = *MEMORY[0x277D85DE8];
}

void sub_229CFB07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CFB8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CFBB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CFCE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85229(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229CFD594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _parseTargetList(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    [v1 bytes];
    [v1 length];
      ;
    }
  }

  return 0;
}

id _parseTargetButtonConfiguration(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  [v1 bytes];
  [v1 length];
    ;
  }

  v3 = [v2 copy];

  return v3;
}

unint64_t targetConfigurationTLVSize(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = 32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = v8 + 12;
        v12 = [v10 name];
        v13 = [v12 UTF8String];

        if (v13)
        {
          v14 = strlen(v13);
          if (v14 >= 0x80)
          {
            v15 = 128;
          }

          else
          {
            v15 = v14;
          }

          v11 += v15;
        }

        v16 = [v10 buttonConfiguration];
        if ([v16 count])
        {
          v17 = [v10 buttonConfiguration];
          v18 = buttonConfigurationTLVSize(v17);
        }

        else
        {
          v18 = buttonConfigurationTLVSize(v4);
        }

        v8 = v18 + v11;
      }

      v6 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 32;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8 + 2 * (v8 / 0xFF);
}

uint64_t __addButtonConfigurationTLV(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    buttonConfigurationTLVSize(v2);
    TLV8BufferInit();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        [v8 identifier];
        v9 = TLV8BufferAppend();
        if (v9)
        {
          break;
        }

        [v8 type];
        v9 = TLV8BufferAppend();
        if (v9)
        {
          break;
        }

        v10 = [v8 name];
        v11 = [v10 UTF8String];

        if (v11)
        {
          strlen(v11);
          v9 = TLV8BufferAppend();
          if (v9)
          {
            break;
          }
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:

      v3 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
      [v3 bytes];
      [v3 length];
      v9 = TLV8BufferAppend();
    }

    v12 = v9;

    TLV8BufferFree();
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t buttonConfigurationTLVSize(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = 32;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v5 += 9;
        v7 = [*(*(&v13 + 1) + 8 * i) name];
        v8 = [v7 UTF8String];

        if (v8)
        {
          v9 = strlen(v8);
          if (v9 >= 0x80)
          {
            v10 = 128;
          }

          else
          {
            v10 = v9;
          }

          v5 += v10;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 32;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5 + 2 * (v5 / 0xFF);
}

void sub_229D050AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85560(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D05C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D07A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D08354(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229D083E0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229D0846C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id readDataFromCKRecordOptionalAssetField(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v38 = *MEMORY[0x277D85DE8];
  v6 = v1;
  v7 = v5;
  v8 = filePathFromCKRecordOptionalAssetField(v6, v7);
  v9 = v8;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_25;
  }

  v10 = createInputStreamWithFilePath(v8, 0);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [MEMORY[0x277CBEB28] data];
    [v12 open];
    v14 = [v12 read:v37 maxLength:4096];
    if (v14 < 1)
    {
LABEL_12:
      [v12 close];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v18 = [v13 copy];
LABEL_23:

        goto LABEL_24;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = objc_opt_class();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        [v12 streamError];
        v23 = v31 = v19;
        *buf = 138543618;
        v34 = v22;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from input stream: %@", buf, 0x16u);

        v19 = v31;
      }

      v24 = v19;
    }

    else
    {
      while (1)
      {
        if (v3)
        {
          v15 = [v13 length];
          v16 = __CFADD__(v14, v15);
          v17 = v16 << 63 >> 63;
          if (v17 != v16 || v17 < 0 || v14 + v15 > v3)
          {
            break;
          }
        }

        [v13 appendBytes:v37 length:v14];
        v14 = [v12 read:v37 maxLength:4096];
        if (v14 <= 0)
        {
          goto LABEL_12;
        }
      }

      [v12 close];
      v25 = objc_autoreleasePoolPush();
      v26 = objc_opt_class();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v28 = v32 = v25;
        *buf = 138543618;
        v34 = v28;
        v35 = 2048;
        v36 = v3;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Data from input stream has exceeded the maximum %lu bytes allowed", buf, 0x16u);

        v25 = v32;
      }

      v24 = v25;
    }

    objc_autoreleasePoolPop(v24);
    v18 = 0;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_24:

LABEL_25:
  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

id dataFromCKRecordRequiredField(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_autoreleasePoolPush();
    v14 = objc_opt_class();
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v10)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v5 recordID];
        [v18 hmbDescription];
        v19 = v33 = v12;
        *buf = 138543874;
        v36 = v17;
        v37 = 2112;
        v38 = v6;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSData for record %@", buf, 0x20u);

        v12 = v33;
      }

      objc_autoreleasePoolPop(v13);
      v20 = v9;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = v32 = v13;
        v28 = [v5 recordID];
        [v28 hmbDescription];
        v29 = v34 = v12;
        *buf = 138544130;
        v36 = v27;
        v37 = 2112;
        v38 = v6;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v9;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

        v12 = v34;
        v13 = v32;
      }

      objc_autoreleasePoolPop(v13);
      if (a3)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *a3 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = objc_opt_class();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v5 recordID];
      v26 = [v25 hmbDescription];
      *buf = 138543874;
      v36 = v24;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    if (a3)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      *a3 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v20;
}

id filePathFromCKRecordOptionalAssetField(void *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() & 1;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_class();
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v8)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v15 = v27 = v11;
        v26 = [v3 recordID];
        v16 = [v26 hmbDescription];
        [v7 fileURL];
        v17 = v28 = v10;
        v18 = [v17 path];
        *buf = 138544130;
        v31 = v15;
        v32 = 2112;
        v33 = v4;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = v18;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' CKAsset for record %@ from %@", buf, 0x2Au);

        v10 = v28;
        v11 = v27;
      }

      objc_autoreleasePoolPop(v11);
      v19 = [v7 fileURL];
      v20 = [v19 path];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        [v3 recordID];
        v22 = v29 = v10;
        v23 = [v22 hmbDescription];
        *buf = 138544130;
        v31 = v21;
        v32 = 2112;
        v33 = v4;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a CKAsset on record %@: %@", buf, 0x2Au);

        v10 = v29;
      }

      objc_autoreleasePoolPop(v11);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

id createInputStreamWithFilePath(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_opt_class();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream for file at path: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

id stringFromCKRecord(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (!v10 || (readDataFromCKRecordOptionalAssetField(v8), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4], v12, !v13))
  {
    v14 = v8;
    v15 = v9;
    v16 = [v14 objectForKeyedSubscript:v15];
    v17 = v16;
    if (v16)
    {
      v45 = a5;
      v18 = v16;
      objc_opt_class();
      v19 = objc_opt_isKindOfClass() & 1;
      v20 = v19 ? v18 : 0;
      v40 = v20;

      context = objc_autoreleasePoolPush();
      v21 = objc_opt_class();
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (v19)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v37 = HMFGetLogIdentifier();
          [v14 recordID];
          v24 = v42 = v9;
          [v24 hmbDescription];
          *buf = 138543874;
          v48 = v37;
          v49 = 2112;
          v50 = v15;
          v52 = v51 = 2112;
          v25 = v52;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSString for record %@", buf, 0x20u);

          v9 = v42;
        }

        objc_autoreleasePoolPop(context);
        v13 = v18;
        a5 = v45;
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          v38 = [v14 recordID];
          [v38 hmbDescription];
          v33 = v44 = v9;
          *buf = 138544130;
          v48 = v32;
          v49 = 2112;
          v50 = v15;
          v51 = 2112;
          v52 = v33;
          v53 = 2112;
          v54 = v18;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

          v9 = v44;
        }

        objc_autoreleasePoolPop(context);
        a5 = v45;
        if (v45)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
          *v45 = v13 = 0;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v43 = v9;
      v26 = objc_autoreleasePoolPush();
      v27 = objc_opt_class();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v29 = v46 = a5;
        v30 = [v14 recordID];
        [v30 hmbDescription];
        v31 = v41 = v26;
        *buf = 138543874;
        v48 = v29;
        v49 = 2112;
        v50 = v15;
        v51 = 2112;
        v52 = v31;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);

        v26 = v41;
        a5 = v46;
      }

      objc_autoreleasePoolPop(v26);
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
        *a5 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      v9 = v43;
    }

    if (!v13)
    {
      goto LABEL_29;
    }
  }

  if ([v13 length])
  {
    v13 = v13;
    v34 = v13;
    goto LABEL_30;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:51];
    *a5 = v34 = 0;
  }

  else
  {
LABEL_29:
    v34 = 0;
  }

LABEL_30:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

uint64_t significantEventReasonFromVideoAnalyzerEventClass(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([a1 isEqual:objc_opt_class()] & 1) != 0 || (objc_msgSend(a1, "isEqual:", objc_opt_class()))
  {
    result = 2;
  }

  else if ([a1 isEqual:objc_opt_class()])
  {
    result = 3;
  }

  else if ([a1 isEqual:objc_opt_class()])
  {
    result = 4;
  }

  else if ([a1 isEqual:objc_opt_class()])
  {
    result = 5;
  }

  else
  {
    if (([a1 isEqual:objc_opt_class()] & 1) == 0)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v7 = 138543618;
        v8 = v6;
        v9 = 2112;
        v10 = a1;
        _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unknown video analyzer event class: %@", &v7, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }

    result = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_229D10AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86488(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HMDNetworkRouterWANRulesFromHostNames_block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = [[HMDNetworkRouterWANICMPRule alloc] initWithHostDNSName:a2 hostIPStart:0 hostIPEnd:0 icmpTypes:*(a1 + 32)];
  }

  else
  {
    v4 = [[HMDNetworkRouterWANPortRule alloc] initWithProtocol:*(a1 + 40) hostDNSName:a2 hostIPStart:0 hostIPEnd:0 hostPortStart:*(a1 + 48) hostPortEnd:*(a1 + 56)];
  }

  v5 = v4;

  [*(a1 + 64) addObject:v5];
}

void __HMDNetworkRouterWANRulesFromAddresses_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:a2 allowWildcard:1];
  if (*(a1 + 32))
  {
    v3 = [[HMDNetworkRouterWANICMPRule alloc] initWithHostDNSName:0 hostIPStart:v5 hostIPEnd:0 icmpTypes:*(a1 + 32)];
  }

  else
  {
    v3 = [[HMDNetworkRouterWANPortRule alloc] initWithProtocol:*(a1 + 40) hostDNSName:0 hostIPStart:v5 hostIPEnd:0 hostPortStart:*(a1 + 48) hostPortEnd:*(a1 + 56)];
  }

  v4 = v3;
  [*(a1 + 64) addObject:v3];
}

HMDNetworkRouterLANIdentifierList *createIdentifierListFromLANRule(void *a1)
{
  v1 = MEMORY[0x277CFEC98];
  v2 = a1;
  v3 = [[v1 alloc] initWithValue:&unk_283E72800];
  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [v2 areConnectionsWithOtherAccessoriesAllowed];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_283E72848];
    [v4 addObject:v6];
  }

  v7 = [[HMDNetworkRouterLANIdentifierList alloc] initWithIdentifiers:v4];

  return v7;
}

void sub_229D155EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D1756C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D1822C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D1876C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D18D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229D1CF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t arraysEqualIgnoringOrder(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v8 = [v6 isEqualToSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFString *HMDSleepConfigurationOperationStatusAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationOperationStatus %ld", a1];
  }

  else
  {
    v2 = off_278676FD8[a1];
  }

  return v2;
}

__CFString *HMDSleepConfigurationOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationOperationType %ld", a1];
  }

  else
  {
    v2 = off_278676FF8[a1 - 1];
  }

  return v2;
}

uint64_t isAccessoryInDefaultGroup(void *a1)
{
  v1 = a1;
  v2 = [v1 defaultNetworkProtectionGroupUUID];
  if (v2)
  {
    v3 = [v1 networkProtectionGroupUUID];
    v4 = [v2 isEqual:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __HMDAccountAddHandle(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3 && (os_unfair_lock_assert_owner(v3 + 4), ([*(v3 + 3) containsObject:v4] & 1) == 0))
  {
    v6 = [*(v3 + 3) mutableCopy];
    [v6 addObject:v4];
    v7 = [v6 copy];
    v8 = *(v3 + 3);
    *(v3 + 3) = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = v3;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering account handle: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = +[HMDAccountRegistry sharedRegistry];
    [v13 addHandle:v4 toAccount:v10];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void __HMDAccountDidUpdateHandles(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handles updated", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAccountHandlesUpdatedNotification" object:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __HMDAccountAddDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    os_unfair_lock_assert_owner(v3 + 4);
    if ([*(v3 + 4) containsObject:v5])
    {
      v6 = 0;
    }

    else
    {
      [*(v3 + 4) addObject:v5];
      v6 = 1;
    }
  }

  return v6;
}

void __HMDAccountDidAddDevice(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    os_unfair_lock_assert_not_owner(v3 + 4);
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Device added: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = @"HMDDeviceNotificationKey";
    v14 = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"HMDAccountAddedDeviceNotification" object:v7 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __HMDAccountRemoveHandle(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = a2;
    os_unfair_lock_assert_owner(v3 + 4);
    v5 = [*(v3 + 3) member:v4];

    if (v5)
    {
      v6 = [*(v3 + 3) mutableCopy];
      [v6 removeObject:v5];
      v7 = [v6 copy];
      v8 = *(v3 + 3);
      *(v3 + 3) = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __HMDAccountRemoveDevice(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = a2;
    os_unfair_lock_assert_owner(v3 + 4);
    v5 = [*(v3 + 4) member:v4];

    if (v5)
    {
      [*(v3 + 4) removeObject:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __HMDAccountDidRemoveDevice(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    os_unfair_lock_assert_not_owner(v3 + 4);
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = @"HMDDeviceNotificationKey";
    v13 = v4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v9 postNotificationName:@"HMDAccountRemovedDeviceNotification" object:v6 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_229D3FE14(_Unwind_Exception *a1)
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
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Routing the command to the device backing the media accessory %@", buf, 0x16u);
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

void sub_229D40354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D43A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__93296(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D47114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_229D483A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void sub_229D49F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
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
    v1 = off_278677710[a1];
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
  v9[3] = &unk_2786776F0;
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

  if (v5 && [(objc_class *)a1 conformsToProtocol:&unk_283EB7020])
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create an object of class: %@ with error: %@", buf, 0x20u);
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
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationStatus" withString:&stru_283CF9D50];

  return v2;
}

id HMDLowPowerModeOperationTypeDescription(uint64_t a1)
{
  v1 = HMDSleepConfigurationOperationTypeAsString(a1);
  v2 = [v1 stringByReplacingOccurrencesOfString:@"HMDSleepConfigurationOperationType" withString:&stru_283CF9D50];

  return v2;
}

void sub_229D4D71C(_Unwind_Exception *a1)
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

void sub_229D4E9B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229D4EB48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229D4F6A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229D50560(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void __HMDLowPowerModeUUIDFromAccessory_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CB66A944-B172-4D2F-A5B4-DCF2F9CFB9D4"];
  v1 = HMDLowPowerModeUUIDFromAccessory_namespace;
  HMDLowPowerModeUUIDFromAccessory_namespace = v0;
}

void sub_229D52C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94354(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D53060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229D53338(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229D533C4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

HMCContext *__contextWithContextName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 newManagedObjectContext];
  v6 = [v4 coordinator];

  [v5 setPersistentStoreCoordinator:v6];
  [v5 setName:v3];

  v7 = +[HMDCoreDataContextTransactionAuthor firstPartyContextAuthor];
  v8 = [v7 string];
  [v5 setTransactionAuthor:v8];

  [v5 setMergePolicy:*MEMORY[0x277CBE1C8]];
  v9 = [HMCContext alloc];
  v10 = objc_alloc_init(HMCPartition);
  v11 = [(HMCContext *)v9 initWithContext:v5 partition:v10];

  return v11;
}

uint64_t reasonFromResetSyncNotification(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBE138]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 unsignedIntegerValue];
  return v5;
}

__CFString *stringFromResetSyncReason(uint64_t a1)
{
  if ((a1 - 1) >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown: %lu", a1];
  }

  else
  {
    v2 = off_2786779E8[a1 - 1];
  }

  return v2;
}

uint64_t isHH2MigrationInProgress()
{
  v0 = +[HMDHH2MigratorRecord singleRecord];
  v1 = [v0 isMigrationInProgress];

  return v1;
}

void sub_229D569E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_229D58030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94783(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D5C420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D5C760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D5CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D5CDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229D5D0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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
      v94[3] = &unk_2786782C8;
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
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to map NSString '%@' to NSURL", buf, 0x16u);

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
    dispatch_once(&getAttributeForMediaProfile_onceToken, &__block_literal_global_96713);
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
  v52 = a1;
  v6 = [v5 homes];
  v7 = [v6 copyWithZone:a3];
  v8 = v52[2];
  v52[2] = v7;

  v9 = [v5 accessories];
  v10 = [v9 copyWithZone:a3];
  v11 = v52[3];
  v52[3] = v10;

  v12 = [v5 primaryHomeUUID];
  v13 = [v12 copyWithZone:a3];
  v14 = v52[4];
  v52[4] = v13;

  v15 = [v5 lastCurrentHomeUUID];
  v16 = [v15 copyWithZone:a3];
  v17 = v52[5];
  v52[5] = v16;

  v52[7] = [v5 schemaVersion];
  v52[6] = [v5 dataVersion];
  v52[8] = [v5 recoveryVersion];
  v18 = [v5 dataTag];
  v19 = [v18 copyWithZone:a3];
  v20 = v52[9];
  v52[9] = v19;

  v21 = [v5 UUIDsOfRemovedHomes];
  v22 = [v21 copyWithZone:a3];
  v23 = v52[10];
  v52[10] = v22;

  v24 = [v5 cloudZones];
  v25 = [v24 copyWithZone:a3];
  v26 = v52[11];
  v52[11] = v25;

  v27 = [v5 incomingInvitations];
  v28 = [v27 copyWithZone:a3];
  v29 = v52[12];
  v52[12] = v28;

  v30 = [v5 currentDevice];
  v31 = [v30 copyWithZone:a3];
  v32 = v52[13];
  v52[13] = v31;

  v33 = [v5 pendingReasonSaved];
  v34 = [v33 copyWithZone:a3];
  v35 = v52[14];
  v52[14] = v34;

  v36 = [v5 pendingUserManagementOperations];
  v37 = [v36 copyWithZone:a3];
  v38 = v52[15];
  v52[15] = v37;

  v39 = [v5 unprocessedOperationIdentifiers];
  v40 = [v39 copyWithZone:a3];
  v41 = v52[16];
  v52[16] = v40;

  v42 = [v5 applicationData];
  v43 = [v42 copyWithZone:a3];
  v44 = v52[17];
  v52[17] = v43;

  v52[18] = [v5 residentEnabledState];
  v45 = [v5 account];
  v46 = v52[19];
  v52[19] = v45;

  v47 = [v5 remoteAccounts];
  v48 = [v47 copyWithZone:a3];
  v49 = v52[20];
  v52[20] = v48;

  v50 = [v5 primaryAccountHandle];
  v51 = v52[21];
  v52[21] = v50;

  LOBYTE(a3) = [v5 accessAllowedWhenLocked];
  *(v52 + 8) = a3;
}

void sub_229D70964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97636(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D77300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98321(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D77C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229D785CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229D814D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229D82CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99442(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id anonymizeUnknownVendorString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (anonymizeUnknownVendorString_onceToken != -1)
    {
      dispatch_once(&anonymizeUnknownVendorString_onceToken, &__block_literal_global_100998);
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
  anonymizeUnknownVendorString_allowedNames = &unk_283E758A8;
}

uint64_t HMDManagedObjectClassIsBSORepresentable(uint64_t a1)
{
  if (HMDManagedObjectClassIsBSORepresentable__hmf_once_t2 != -1)
  {
    dispatch_once(&HMDManagedObjectClassIsBSORepresentable__hmf_once_t2, &__block_literal_global_47_101531);
  }

  v2 = HMDManagedObjectClassIsBSORepresentable__hmf_once_v3;

  return [v2 classConforms:a1];
}

void __HMDManagedObjectClassIsBSORepresentable_block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283E89CB8];
  v1 = HMDManagedObjectClassIsBSORepresentable__hmf_once_v3;
  HMDManagedObjectClassIsBSORepresentable__hmf_once_v3 = v0;
}

void sub_229DA0BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMDModelClassIsCDRepresentable(uint64_t a1)
{
  if (HMDModelClassIsCDRepresentable__hmf_once_t0 != -1)
  {
    dispatch_once(&HMDModelClassIsCDRepresentable__hmf_once_t0, &__block_literal_global_101541);
  }

  v2 = HMDModelClassIsCDRepresentable__hmf_once_v1;

  return [v2 classConforms:a1];
}

uint64_t __Block_byref_object_copy__101538(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __HMDModelClassIsCDRepresentable_block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283E8B828];
  v1 = HMDModelClassIsCDRepresentable__hmf_once_v1;
  HMDModelClassIsCDRepresentable__hmf_once_v1 = v0;
}

void *HMDCastIfManagedObjectBSORepresentable(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_class();
    if (HMDManagedObjectClassIsBSORepresentable(v2))
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *HMDCastIfModelCDRepresentable(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_class();
    if (HMDModelClassIsCDRepresentable(v2))
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __Block_byref_object_copy__102567(uint64_t result, uint64_t a2)
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

void sub_229DAD5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DAFD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_229DB3200(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229DB33C0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229DB493C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating connected devices: %@", buf, 0x16u);
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
                _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Found connected companion device: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No connected companion found", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Updated companion to: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Calling completion from %s", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    (*(v13[18] + 2))();
    v16 = v13[18];
    v13[18] = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

__CFString *StringFromHMDResidentLocation(uint64_t a1)
{
  switch(a1)
  {
    case 100:
      v2 = @"Unknown";

      break;
    case 200:
      v2 = @"Away";

      break;
    case 300:
      v2 = @"AtHome";

      break;
    default:
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown type: %lu", a1];

      break;
  }

  return v2;
}

void sub_229DC84A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DCA6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *StringForResidentStatusChannelDomain(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"ss";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown domain: %lu", a1];
    }
  }

  else
  {
    v2 = @"ns";
  }

  return v2;
}

void sub_229DCB6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DCBCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DCC088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DCC640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DCFD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DD023C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
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

void sub_229DD11B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id mirrorLegacyZone(void *a1, int a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x277D170E8];
  v15 = a3;
  v16 = objc_alloc_init(v14);
  if (a2)
  {
    [v11 openOrCreatePrivateZoneWithID:v15 configuration:v16 delegate:0 error:a6];
  }

  else
  {
    [v11 openExistingPrivateZoneWithID:v15 configuration:v16 delegate:0 error:a6];
  }
  v17 = ;

  if (v17)
  {
    v18 = [HMDLegacyModelContainer alloc];
    v19 = +[HMDHomeKitVersion currentVersion];
    v20 = +[HMDHomeKitVersion currentVersion];
    v21 = [(HMDLegacyModelContainer *)v18 initWithDataVersion:v19 legacyDataVersion:v20 pairingIdentity:v12];

    v22 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v22 setCreateIfNeeded:1];
    [v22 setDelegate:v13];
    [v22 setModelContainer:v21];
    v23 = [v11 localDatabase];
    v24 = [v23 openZoneWithMirror:v17 configuration:v22 error:a6];
  }

  else
  {
    v24 = 0;
  }

  return v24;
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

void sub_229DE269C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing step %@", &v14, 0x16u);
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying matter metric pairing ended %@", buf, 0x16u);
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

void sub_229DEB780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112221(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229DEEBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229DF12E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__112780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id mediaForArray(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    if ([v1 count] == 1)
    {
      v2 = [v1 firstObject];
    }

    else
    {
      v3 = [v1 sortedArrayUsingComparator:&__block_literal_global_113201];
      v4 = [v3 count];
      v5 = [v3 count] >> 1;
      if (v4)
      {
        v2 = [v3 objectAtIndexedSubscript:v5];
      }

      else
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = [v3 objectAtIndexedSubscript:v5];
        v8 = [v7 integerValue];
        v9 = [v3 objectAtIndexedSubscript:v5 - 1];
        v2 = [v6 numberWithInteger:{(objc_msgSend(v9, "integerValue") + v8) / 2}];
      }
    }
  }

  else
  {
    v2 = &unk_283E72B30;
  }

  return v2;
}

void sub_229DF76CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229DFADF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229DFDD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
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
    dispatch_once(&__modelIdentifierForURI_onceToken, &__block_literal_global_475_115604);
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

void ____modelIdentifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F48EA8E5-696C-4EA4-B767-16D13368CB16"];
  v1 = __modelIdentifierForURI_namespace;
  __modelIdentifierForURI_namespace = v0;
}

void sub_229E0E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__115632(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____identifierForURI_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"297A1FDB-8A3E-443F-A8A8-1F3360785587"];
  v1 = __identifierForURI_namespace;
  __identifierForURI_namespace = v0;
}

void sub_229E182FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id Siri_log()
{
  if (Siri_log__hmf_once_t0 != -1)
  {
    dispatch_once(&Siri_log__hmf_once_t0, &__block_literal_global_118186);
  }

  v1 = Siri_log__hmf_once_v1;

  return v1;
}

void sub_229E301D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119069(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __computeInDegrees(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v4 setObject:&unk_283E72BA8 forKey:v7];
      v8 = [v5 nextObject];

      v7 = v8;
    }

    while (v8);
  }

  v22 = v3;
  v23 = [v3 objectEnumerator];
  v9 = [v23 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          v15 = 0;
          do
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * v15);
            v17 = v4;
            v18 = v16;
            v19 = [v17 objectForKey:v18];
            v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v19, "unsignedIntValue") + 1}];
            [v17 setObject:v20 forKey:v18];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v13);
      }

      v10 = [v23 nextObject];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __decrementInDegree(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 unsignedIntValue];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v6 - 1)];
  [v4 setObject:v7 forKey:v3];
}

void sub_229E35DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E369C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E37A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119625(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229E39608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E3A240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E3BE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__121125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229E3C768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E3D0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E3D9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E3E420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_229E3EF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E3FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@TLV parsing failed - %@ - dropping", buf, 0x16u);
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

void sub_229E43454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose((v32 - 192), 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__121531(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229E4949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E4B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v21 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_229E4C7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

void sub_229E4E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E4F010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E5C314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__123763(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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

void sub_229E6284C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_229E65D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E66B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id location)
{
  objc_destroyWeak((v13 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E731F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__126661(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229E75820(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E758FC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E7DC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E7E140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
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

void sub_229E83B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__128142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229E845D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229E84BCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229E8581C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
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
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resetting the connection state callback for endpoint %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      v8 = dispatch_get_global_queue(0, 0);
      [v4 setConnectionStateCallback:0 withQueue:v8];

      [v4 disconnect:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_229E8657C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229E8743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__128851(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
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
    v2 = off_278679F78[a1];
  }

  return v2;
}

void sub_229E901D0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E90260(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E93D30(_Unwind_Exception *a1)
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cannot update state for other accessory", &v15, 0xCu);
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
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Registering documentation metadata: %@", &v15, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering documentation metadata: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    [v12 unregisterDocumentationMetadata:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_229E984DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229E9A588(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E9A614(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229E9D6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229E9FD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__132266(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EA00C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA03DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA0694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA2794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA2AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EA2D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMDStringFromDataStreamBulkSendResponsePayloadStatus(uint64_t a1)
{
  if (a1 - 1) < 9 && ((0x11Bu >> (a1 - 1)))
  {
    v2 = off_27867A0C8[(a1 - 1)];
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
    v2 = off_27867A110[a1];
  }

  return v2;
}

void sub_229EA923C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EA9A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EAB0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EAB680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EACAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EACD20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229EAD194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EB4848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EB9474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
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

void sub_229EBACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __updateAccessoryInformation(void *a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v83 = 138543362;
    v84 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating accessory information", &v83, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 outputDevice];
  v10 = [v9 av_OutputDevice];

  if (v10)
  {
    v11 = [v6 transactionWithObjectChangeType:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v6 category];
    v15 = [v14 categoryType];
    v16 = *MEMORY[0x277CCE8C8];
    v17 = [v15 isEqual:*MEMORY[0x277CCE8C8]];

    if (v17)
    {
      v18 = [v4 category];
      if (v18)
      {
        v19 = v18;
        v20 = [v4 category];
        v21 = [v20 categoryType];
        v22 = [v21 isEqual:v16];

        if ((v22 & 1) == 0)
        {
          v23 = +[HMDHAPMetadata getSharedInstance];
          v24 = [v4 category];
          v25 = [v24 categoryType];
          v26 = [v23 categoryForType:v25];

          if (v26)
          {
            v27 = objc_autoreleasePoolPush();
            v28 = v6;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = HMFGetLogIdentifier();
              v83 = 138543362;
              v84 = v30;
              _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Updating category", &v83, 0xCu);
            }

            objc_autoreleasePoolPop(v27);
            v31 = [v26 identifier];
            [v13 setAccessoryCategory:v31];
          }
        }
      }
    }

    v32 = [v10 modelID];
    if (!v32)
    {
      goto LABEL_17;
    }

    v33 = v32;
    v34 = [v10 modelID];
    v35 = [v6 model];
    v36 = HMFEqualObjects();

    if ((v36 & 1) == 0)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v6;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v83 = 138543362;
        v84 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Updating model", &v83, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v42 = [v10 modelID];
      [v13 setModel:v42];

      v37 = 1;
    }

    else
    {
LABEL_17:
      v37 = 0;
    }

    v43 = [v10 manufacturer];
    if (v43)
    {
      v44 = v43;
      v45 = [v10 manufacturer];
      v46 = [v6 manufacturer];
      v47 = HMFEqualObjects();

      if ((v47 & 1) == 0)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v6;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v83 = 138543362;
          v84 = v51;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Updating manufacturer", &v83, 0xCu);
        }

        objc_autoreleasePoolPop(v48);
        v52 = [v10 manufacturer];
        [v13 setManufacturer:v52];

        v37 = 1;
      }
    }

    v53 = [v10 serialNumber];
    if (v53)
    {
      v54 = v53;
      v55 = [v10 serialNumber];
      v56 = [v6 serialNumber];
      v57 = HMFEqualObjects();

      if ((v57 & 1) == 0)
      {
        v58 = objc_autoreleasePoolPush();
        v59 = v6;
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = HMFGetLogIdentifier();
          v83 = 138543362;
          v84 = v61;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Updating serial number", &v83, 0xCu);
        }

        objc_autoreleasePoolPop(v58);
        v62 = [v10 serialNumber];
        [v13 setSerialNumber:v62];

        v37 = 1;
      }
    }

    v63 = [v10 firmwareVersion];

    if (v63)
    {
      v64 = [HMDAccessoryVersion alloc];
      v65 = [v10 firmwareVersion];
      v66 = [(HMDAccessoryVersion *)v64 initWithString:v65];

      v67 = [v6 firmwareVersion];
      v68 = HMFEqualObjects();

      if (v68)
      {

        if ((v37 & 1) == 0)
        {
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
        v69 = objc_autoreleasePoolPush();
        v70 = v6;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          v83 = 138543362;
          v84 = v72;
          _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Updating firmware version", &v83, 0xCu);
        }

        objc_autoreleasePoolPop(v69);
        v73 = [v10 firmwareVersion];
        [v13 setFirmwareVersion:v73];
      }
    }

    else if (!v37)
    {
      goto LABEL_43;
    }

    v74 = objc_autoreleasePoolPush();
    v75 = v6;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = HMFGetLogIdentifier();
      v83 = 138543362;
      v84 = v77;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@Updated accessory information", &v83, 0xCu);
    }

    objc_autoreleasePoolPop(v74);
    v78 = [v75 home];
    v79 = [v78 backingStore];
    v80 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v81 = [v79 transaction:@"Update Accessory Information" options:v80];

    [v81 add:v13 withMessage:0];
    [v81 run];

    goto LABEL_43;
  }

LABEL_44:

  v82 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory name, %@, is out of sync", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory password is out of sync", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      if (v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = &stru_283CF9D50;
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
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Detected that the accessory minimum user privilege, %@, is out of sync", buf, 0x16u);

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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating configuration to: %@", buf, 0x16u);
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
        aBlock[3] = &unk_27867A560;
        v37 = v6;
        v17 = v9;
        v38 = v17;
        v18 = _Block_copy(aBlock);
        objc_initWeak(buf, v17);
        v19 = __outputDeviceConfigurationOptions();
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = ____updateConfiguration_block_invoke_221;
        v32[3] = &unk_27867A4F0;
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
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Missing output device", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Only owner can update configuration", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing required paramter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v7 + 2))(v7, v14);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_229EBBEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
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
    block[3] = &unk_27868A728;
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping configuration retry timer", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 32) configurationRetryTimer];
    [v7 suspend];

    v8 = *(a1 + 32);
    v9 = *(v8 + 504);
    *(v8 + 504) = 0;
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
    block[3] = &unk_27868A728;
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring with configuration: %@", &v13, 0x16u);
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

void ____updateConfiguration_block_invoke_221(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully updated configuration", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to update configuration with error: %@, cancellationReason: %@", buf, 0x20u);
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
        v31 = &unk_27868A750;
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
    v27[2] = ____updateConfiguration_block_invoke_222;
    v27[3] = &unk_27868A7A0;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating with configuration: %@", &v43, 0x16u);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Caching updated password", &v43, 0xCu);
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
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Caching updated user minimum privilege", &v43, 0xCu);
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
    objc_storeStrong((*(a1 + 32) + 504), obja);

    v2 = obja;
  }

  obj = v2;
  [v2 resume];
}

void sub_229EBD184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__136270(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EBD590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EBDC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EBE6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EBEFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EBFC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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

void sub_229EC0060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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

void sub_229EC0484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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

void sub_229EC08C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
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
          v10 = -[THAButton initWithType:identifier:]([THAButton alloc], "initWithType:identifier:", qword_22A587980[v9], [v8 identifier]);
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

void sub_229EC8FA0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229EC902C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229EC9138(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229ECA698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
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

id HMDCKRecordIDSafeCharacters()
{
  if (HMDCKRecordIDSafeCharacters__hmf_once_t0 != -1)
  {
    dispatch_once(&HMDCKRecordIDSafeCharacters__hmf_once_t0, &__block_literal_global_27_137340);
  }

  v1 = HMDCKRecordIDSafeCharacters__hmf_once_v1;

  return v1;
}

void __HMDCKRecordIDSafeCharacters_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890._-"];
  v1 = HMDCKRecordIDSafeCharacters__hmf_once_v1;
  HMDCKRecordIDSafeCharacters__hmf_once_v1 = v0;
}

void __HMDCKRecordIDEncodedCharacters_block_invoke()
{
  v0 = HMDCKRecordIDSafeCharacters();
  v1 = [v0 mutableCopy];

  [v1 addCharactersInString:@"%0123456789abcdefABCDEF"];
  v2 = [v1 copy];

  v3 = HMDCKRecordIDEncodedCharacters__hmf_once_v3;
  HMDCKRecordIDEncodedCharacters__hmf_once_v3 = v2;
}

void sub_229ECF4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__137406(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229ED1B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_229ED212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229ED3B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EDACD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__138770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EDBE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EDCB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__138955(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EDCF08(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229EDCF78(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229EDCFE8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229EDE3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  os_unfair_lock_unlock((v7 + v8));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EDE6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  os_unfair_lock_unlock((v7 + v8));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229EDEA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EE02C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@siriactiond does not run on HomePod", &buf, 0xCu);
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
    v14[3] = &unk_27867AA00;
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

void sub_229EE33F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_229EE5B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__139507(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EE7030(_Unwind_Exception *a1)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Found device %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Device %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v12 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_145;
      block[3] = &unk_27868A010;
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Lost device %@: (%@)", buf, 0x20u);
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
      block[3] = &unk_27868A010;
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
      block[3] = &unk_27868A010;
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 delegate];
    if (v9)
    {
      v10 = [v6 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____start_block_invoke_150;
      block[3] = &unk_27868A010;
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
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@CUWiFiScanner invalidated", buf, 0xCu);
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
    v10[3] = &unk_27868A750;
    v11 = v7;
    v12 = WeakRetained;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_229EEF8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__140286(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229EF0DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EF2254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_229EFA40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __conformanceCheck(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  os_unfair_lock_lock_with_options();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__142089;
  v16 = __Block_byref_object_dispose__142090;
  v17 = [*(v5 + 3) objectForKey:a2];
  v6 = v13[5];
  if (!v6 || (a3 & 1) != 0)
  {
    v8 = *(v5 + 2);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ____conformanceCheck_block_invoke;
    v11[3] = &unk_27867ACA8;
    v11[4] = &v12;
    v11[5] = a2;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
    [*(v5 + 3) setObject:v13[5] forKey:a2];
    v7 = [v13[5] BOOLValue];
  }

  else
  {
    v7 = [v6 BOOLValue];
  }

  v9 = v7;
  _Block_object_dispose(&v12, 8);

  os_unfair_lock_unlock(v5 + 2);
  return v9;
}

uint64_t __Block_byref_object_copy__142089(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____conformanceCheck_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 40) conformsToProtocol:a2];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    *a3 = 1;
  }
}

void sub_229EFC7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229EFCB04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_229EFF2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Bootstrapping stereo pair version to V1", &buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Device updated to: %@", &v18, 0x16u);
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

  [v6 updateReachabilityOfCurrentDevice];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_229F04C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__143014(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated_143016(void *a1, void *a2, void *a3)
{
  v180 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v159 = a3;
  v7 = [v159 transactionResult];
  v8 = __HMDAppleMediaAccessoryGetDeviceController(v5);
  v9 = [v6 deviceUUID];

  if (v9)
  {
    if ([v5 isCurrentAccessory])
    {
      if (!v8)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = v5;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v173 = v13;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting up device controller for ourselves", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v14 = [v11 dependencyFactory];
        v8 = [v14 deviceController];

        [v11 setDeviceController:v8];
        [v8 setDelegate:v11];
        v15 = [v8 device];
        __HMDAppleMediaAccessoryHandleUpdatedDevice(v11, v15);

        [v7 markChanged];
      }
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      v17 = [v6 deviceUUID];
      v18 = [v16 initWithUUIDString:v17];

      v19 = [v8 identifier];
      v20 = [v18 hmf_isEqualToUUID:v19];

      if (v20)
      {
        v21 = v8;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v5;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v18 UUIDString];
          *buf = 138543618;
          v173 = v25;
          v174 = 2112;
          v175 = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v27 = [v23 dependencyFactory];
        v21 = [v27 deviceControllerWithDeviceIdentifier:v18];

        [v23 setDeviceController:v21];
        [v21 setDelegate:v23];
        v28 = [v21 device];
        __HMDAppleMediaAccessoryHandleUpdatedDevice(v23, v28);

        [v7 markChanged];
      }

      v8 = v21;
    }
  }

  v29 = [v6 device];

  if (v29)
  {
    v30 = [v6 device];
    v31 = [v5 device];
    v32 = v30 == v31;

    if (!v32)
    {
      v33 = [v5 device];

      if (v33)
      {
        v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v34 = [v5 device];
        v35 = [v34 backingStoreObjectsWithChangeType:0 version:4];

        v36 = [v35 countByEnumeratingWithState:&v166 objects:v179 count:16];
        if (v36)
        {
          v37 = *v167;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v167 != v37)
              {
                objc_enumerationMutation(v35);
              }

              [*(*(&v166 + 1) + 8 * i) dumpDebug:@" LOCAL: "];
            }

            v36 = [v35 countByEnumeratingWithState:&v166 objects:v179 count:16];
          }

          while (v36);
        }
      }

      v39 = [v6 device];

      if (v39)
      {
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v40 = [v6 device];
        v41 = [v40 backingStoreObjectsWithChangeType:0 version:4];

        v42 = [v41 countByEnumeratingWithState:&v162 objects:v178 count:16];
        if (v42)
        {
          v43 = *v163;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v163 != v43)
              {
                objc_enumerationMutation(v41);
              }

              [*(*(&v162 + 1) + 8 * j) dumpDebug:@"REMOTE: "];
            }

            v42 = [v41 countByEnumeratingWithState:&v162 objects:v178 count:16];
          }

          while (v42);
        }
      }
    }

    if (!v8)
    {
      v45 = [v5 dependencyFactory];
      v46 = [v6 device];
      v8 = [v45 deviceControllerWithDevice:v46];

      [v5 setDeviceController:v8];
      [v8 setDelegate:v5];
      v47 = [v8 device];
      __HMDAppleMediaAccessoryHandleUpdatedDevice(v5, v47);
    }

    v48 = [v6 device];
    v49 = [v5 device];
    v50 = v48 == v49;

    if (v50)
    {
      goto LABEL_38;
    }

    v51 = [v5 device];
    v52 = [v6 device];
    v53 = [v51 isBackingStorageEqual:v52];

    if ((v53 & 1) == 0)
    {
      v54 = [v6 device];
      [v8 updateWithDevice:v54 completionHandler:0];

LABEL_38:
      [v7 markChanged];
    }
  }

  v55 = [v6 deviceAddress];
  if (v55)
  {
    v56 = [v5 deviceAddress];
    v57 = HMFEqualObjects();

    if ((v57 & 1) == 0)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v5;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v173 = v61;
        v174 = 2112;
        v175 = v55;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@Updating deviceAddress %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      [v59 setDeviceAddress:v55];
      if (!v8)
      {
        v62 = [v59 dependencyFactory];
        v63 = [v62 deviceWithAddress:v55];

        if (v63)
        {
          v64 = [v59 dependencyFactory];
          v8 = [v64 deviceControllerWithDevice:v63];

          [v59 setDeviceController:v8];
          [v8 setDelegate:v59];
          v65 = [v8 device];
          __HMDAppleMediaAccessoryHandleUpdatedDevice(v59, v65);
        }

        else
        {
          v8 = 0;
        }
      }

      [v7 markChanged];
    }
  }

  v66 = [v6 deviceIRKData];
  if (v66)
  {
    v67 = [v6 deviceIRKData];
    v68 = [v5 deviceIRK];
    v69 = HMFEqualObjects();

    if ((v69 & 1) == 0)
    {
      v70 = objc_autoreleasePoolPush();
      v71 = v5;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = HMFGetLogIdentifier();
        v74 = [v6 deviceIRKData];
        *buf = 138543618;
        v173 = v73;
        v174 = 2112;
        v175 = v74;
        _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Updating deviceIRK %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v70);
      v75 = [v6 deviceIRKData];
      [v71 setDeviceIRK:v75];

      [v7 markChanged];
    }
  }

  v76 = [v6 pairingIdentity];

  if (v76)
  {
    v77 = [v6 pairingIdentity];
    [v5 handleTransactionUpdatedPublicPairingIdentity:v77 result:v7];

    v78 = *(v5 + 64);
    if (os_signpost_enabled(v78))
    {
      v79 = v78;
      v80 = [v5 uuid];
      *buf = 138412290;
      v173 = v80;
      _os_signpost_emit_with_name_impl(&dword_229538000, v79, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatePublicPairingIdentify", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
    }
  }

  v81 = [v6 softwareVersion];

  if (v81)
  {
    v82 = [v6 softwareVersion];
    v83 = [v5 softwareVersion];
    v84 = [v82 isEqual:v83];

    if ((v84 & 1) == 0)
    {
      v85 = objc_autoreleasePoolPush();
      v86 = v5;
      v87 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = HMFGetLogIdentifier();
        v89 = [v6 softwareVersion];
        *buf = 138543618;
        v173 = v88;
        v174 = 2112;
        v175 = v89;
        _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_DEFAULT, "%{public}@Updated software version: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v85);
      v90 = [v6 softwareVersion];
      [v86 setSoftwareVersion:v90];

      [v7 markChanged];
      if ([v86 isCurrentAccessory])
      {
        v91 = [v86 softwareVersion];
        v92 = [MEMORY[0x277D0F8E8] productInfo];
        v93 = [v92 softwareVersion];
        v94 = HMFEqualObjects();

        if ((v94 & 1) == 0)
        {
          v95 = objc_autoreleasePoolPush();
          v96 = v86;
          v97 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v98 = HMFGetLogIdentifier();
            v99 = [v96 softwareVersion];
            v100 = [MEMORY[0x277D0F8E8] productInfo];
            v101 = [v100 softwareVersion];
            *buf = 138543874;
            v173 = v98;
            v174 = 2112;
            v175 = v99;
            v176 = 2112;
            v177 = v101;
            _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@Stored software version is incorrect (%@), updating to: (%@)", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v95);
          v102 = [MEMORY[0x277D0F8E8] productInfo];
          v103 = [v102 softwareVersion];
          [v96 _updateSoftwareVersion:v103];
        }
      }
    }
  }

  v104 = [v6 variant];
  if (v104)
  {
    v105 = [v6 variant];
    v106 = [v105 unsignedIntegerValue];
    LOBYTE(v106) = v106 == [v5 variant];

    if ((v106 & 1) == 0)
    {
      v107 = [v6 variant];
      [v5 setVariant:{objc_msgSend(v107, "unsignedIntegerValue")}];

      v108 = objc_autoreleasePoolPush();
      v109 = v5;
      v110 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v111 = HMFGetLogIdentifier();
        v112 = [v109 variant];
        *buf = 138543618;
        v173 = v111;
        v174 = 2048;
        v175 = v112;
        _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@Updated accessory variant: 0x%tx", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v108);
      v113 = v109[64];
      if (os_signpost_enabled(v113))
      {
        v114 = v113;
        v115 = [v109 uuid];
        *buf = 138412290;
        v173 = v115;
        _os_signpost_emit_with_name_impl(&dword_229538000, v114, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "updatedAccessoryVariant", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"accessoryCapabilities"])
  {
    v116 = objc_alloc(MEMORY[0x277CD1678]);
    v117 = [v6 accessoryCapabilities];
    v118 = [v116 initWithProtoData:v117];

    if (v118)
    {
      os_unfair_recursive_lock_lock_with_options();
      v119 = *(v5 + 71);
      if (v119 && ([v119 isEqual:v118] & 1) != 0)
      {
        os_unfair_recursive_lock_unlock();
      }

      else
      {
        objc_storeStrong(v5 + 71, v118);
        v120 = [v6 accessoryCapabilities];
        v121 = *(v5 + 72);
        *(v5 + 72) = v120;

        os_unfair_recursive_lock_unlock();
        v122 = objc_autoreleasePoolPush();
        v123 = v5;
        v124 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = HMFGetLogIdentifier();
          *buf = 138543618;
          v173 = v125;
          v174 = 2112;
          v175 = v118;
          _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_DEFAULT, "%{public}@Updated accessory capabilities %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v122);
        v126 = v123[64];
        if (os_signpost_enabled(v126))
        {
          v127 = v126;
          v128 = [v123 uuid];
          *buf = 138412290;
          v173 = v128;
          _os_signpost_emit_with_name_impl(&dword_229538000, v127, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatedAccessoryCapabilities", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
        }

        [v7 markChanged];
        v129 = [v123 notificationCenter];
        v170[0] = @"accessoryUUID";
        v130 = [v123 uuid];
        v170[1] = @"accessoryCapabilities";
        v171[0] = v130;
        v171[1] = v118;
        v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:2];
        [v129 postNotificationName:@"HMDAppleMediaAccessoryCapabilitiesUpdatedNotification" object:v123 userInfo:v131];
      }
    }
  }

  if ([v6 propertyWasSet:@"idsIdentifier"])
  {
    v132 = [v5 idsIdentifier];
    v133 = [v6 idsIdentifier];
    v134 = [v132 hmf_isEqualToUUID:v133];

    if (v134)
    {
      v135 = [v6 idsIdentifier];
      [v5 setIdsIdentifier:v135];

      v136 = *(v5 + 64);
      if (os_signpost_enabled(v136))
      {
        v137 = v136;
        v138 = [v5 uuid];
        *buf = 138412290;
        v173 = v138;
        _os_signpost_emit_with_name_impl(&dword_229538000, v137, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatedAccessoryIDS", "accessoryUUID=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"supportedStereoPairVersions"])
  {
    v139 = [v6 supportedStereoPairVersions];
    v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "supportedStereoPairVersions")}];
    v141 = [v139 isEqual:v140];

    if ((v141 & 1) == 0)
    {
      v142 = objc_autoreleasePoolPush();
      v143 = v5;
      v144 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        v145 = HMFGetLogIdentifier();
        v146 = [v6 supportedStereoPairVersions];
        *buf = 138543618;
        v173 = v145;
        v174 = 2112;
        v175 = v146;
        _os_log_impl(&dword_229538000, v144, OS_LOG_TYPE_DEFAULT, "%{public}@Updated supported stereo pair versions: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v142);
      v147 = [v6 supportedStereoPairVersions];
      [v143 setSupportedStereoPairVersions:{objc_msgSend(v147, "unsignedIntegerValue")}];

      [v7 markChanged];
    }
  }

  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = ____transactionAccessoryUpdated_block_invoke_143032;
  v160[3] = &unk_278682310;
  v148 = v7;
  v161 = v148;
  [v5 transactionAccessoryUpdatedForPreferredMediaUser:v6 completionHandler:v160];
  if ([v6 propertyWasSet:@"productColor"])
  {
    v149 = [v6 productColor];
    v150 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "productColor")}];
    v151 = [v149 isEqual:v150];

    if ((v151 & 1) == 0)
    {
      v152 = objc_autoreleasePoolPush();
      v153 = v5;
      v154 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        v155 = HMFGetLogIdentifier();
        v156 = [v6 productColor];
        *buf = 138543618;
        v173 = v155;
        v174 = 2112;
        v175 = v156;
        _os_log_impl(&dword_229538000, v154, OS_LOG_TYPE_DEFAULT, "%{public}@Updated product color: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v152);
      v157 = [v6 productColor];
      [v153 setProductColor:{objc_msgSend(v157, "unsignedIntegerValue")}];

      [v148 markChanged];
    }
  }

  [v159 respondWithPayload:0];

  v158 = *MEMORY[0x277D85DE8];
}

uint64_t ____transactionAccessoryUpdated_block_invoke_143032(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) markChanged];
  }

  return result;
}

void sub_229F06D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F07C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F0842C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F09CD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_229F0A9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_229F0B480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
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
    v3[3] = &unk_278686CC0;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_229F0F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
    v6 = xmmword_27867AF48;
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

void sub_229F0FE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
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
    v3 = off_27867AF60[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRemoteStreamSessionState %tu", a1];
  }

  return v3;
}

uint64_t __Block_byref_object_copy__143900(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id wrapAppDataDictionary(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v5 = @"com.apple.homekit-entitledclient.identifer";
    v6[0] = v1;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_229F1E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__144194(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229F223BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
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

void sub_229F22F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__144420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDHomeActivityVacationStateChangeReasonAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown vacation state change reason %tu", a1];
  }

  else
  {
    v2 = off_27867B190[a1 - 1];
  }

  return v2;
}

void sub_229F2A6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F2AEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F2B6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F2BE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F2DED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_229F30B78(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F310B8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F314AC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F31808(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F3189C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F31A08(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F35084(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F35110(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F3519C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F35228(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F37CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F37EA0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F37F2C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F3ABD8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F3B4A8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F3E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F452A0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}