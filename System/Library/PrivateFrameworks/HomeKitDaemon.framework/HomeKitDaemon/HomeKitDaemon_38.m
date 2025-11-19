void sub_229F4549C(_Unwind_Exception *a1)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Updating device: %@", &v15, 0x16u);
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updated device: %@", &v15, 0x16u);
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
    v2 = off_27867B610[a1];
  }

  return v2;
}

void sub_229F5246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__149252(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229F55CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F56B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F577E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__150013(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229F57DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F58790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F5A128(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F5A478(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F5D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F62E90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_229F66844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__151561(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDStreamingTierTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDStreamingTierType %tu", a1];
  }

  else
  {
    v2 = off_27867B848[a1];
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
    v2 = off_27867B870[a1];
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
    v2 = off_27867B888[a1];
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
    v2 = off_27867B8A8[a1 - 1];
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
    v2 = off_27867B990[a1];
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
    v2 = off_27867B9C8[a1];
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
    v2 = off_27867B9E0[a1];
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
    v2 = off_27867BA20[a1];
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
    v2 = off_27867BA38[a1];
  }

  return v2;
}

void sub_229F68DCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229F6C5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F6D29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F6D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229F713F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F757E4(_Unwind_Exception *a1)
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

void sub_229F76088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__155380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229F7B3DC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229F80E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229F820C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__156312(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __destructor_8_s0_s8_sb16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_229F84910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16_s24_s40(uint64_t a1)
{
  v2 = *(a1 + 40);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device updated to: %@", &v11, 0x16u);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Registering for device notifications for: %@", &v13, 0x16u);
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
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Deregistering for device notifications", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:v3 name:@"HMDDeviceUpdatedNotification" object:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t residentCapabilitiesForDevice(void *a1)
{
  v1 = a1;
  if ([v1 supportsMediaActions])
  {
    v2 = 575;
  }

  else
  {
    v2 = 31;
  }

  if ([v1 supportsShortcutActions])
  {
    v2 |= 0x100uLL;
  }

  if ([v1 supportsCameraRecording])
  {
    v2 |= 0x40uLL;
  }

  if ([v1 supportsRouterManagement])
  {
    v2 |= 0x80uLL;
  }

  if ([v1 supportsFirmwareUpdate])
  {
    v2 |= 0x800uLL;
  }

  if ([v1 supportsResidentFirmwareUpdate])
  {
    v2 |= 0x800000uLL;
  }

  if ([v1 supportsCameraActivityZones])
  {
    v2 |= 0x1000uLL;
  }

  if ([v1 supportsFaceClassification])
  {
    v2 |= 0x2000uLL;
  }

  if ([v1 supportsNaturalLighting])
  {
    v2 |= 0x4000uLL;
  }

  if ([v1 supportsAnnounce])
  {
    v2 |= 0x8000uLL;
  }

  if ([v1 supportsThreadBorderRouter])
  {
    v2 |= 0x10000uLL;
  }

  if ([v1 supportsCameraRecordingReachabilityNotifications])
  {
    v2 |= 0x20000uLL;
  }

  if ([v1 supportsWalletKey])
  {
    v2 |= 0x40000uLL;
  }

  if ([v1 supportsAccessCodes])
  {
    v2 |= 0x200000uLL;
  }

  if ([v1 supportsLockNotificationContext])
  {
    v2 |= 0x80000uLL;
  }

  if ([v1 supportsCameraPackageDetection])
  {
    v2 |= 0x100000uLL;
  }

  if ([v1 supportsCHIP])
  {
    v2 |= 0x400000uLL;
  }

  if ([v1 supportsCustomMediaApplicationDestination])
  {
    v2 |= 0x1000000uLL;
  }

  if ([v1 supportsThreadNetworkCredentialSharing])
  {
    v2 |= 0x2000000uLL;
  }

  if ([v1 supportsMatterSharedAdminPairing])
  {
    v2 |= 0x4000000uLL;
  }

  if ([v1 supportsEventLog])
  {
    v2 |= 0x8000000uLL;
  }

  if ([v1 supportsUWB])
  {
    v2 |= 0x20000000uLL;
  }

  if ([v1 supportsMatterTTU])
  {
    v2 |= 0x10000000uLL;
  }

  if ([v1 supportsRestrictedGuest])
  {
    v3 = v2 | 0x40000000;
  }

  else
  {
    v3 = v2;
  }

  v4 = [v1 supportsMatterOwnerCertFetch];

  if (v4)
  {
    return v3 | 0x80000000;
  }

  else
  {
    return v3;
  }
}

CFTypeID __HMDIsOPACKValue_block_invoke()
{
  HMDIsOPACKValue_arrayTypeID = CFArrayGetTypeID();
  HMDIsOPACKValue_dictionaryTypeID = CFDictionaryGetTypeID();
  HMDIsOPACKValue_nullTypeID = CFNullGetTypeID();
  HMDIsOPACKValue_BOOLeanTypeID = CFBooleanGetTypeID();
  HMDIsOPACKValue_stringTypeID = CFStringGetTypeID();
  HMDIsOPACKValue_numberTypeID = CFNumberGetTypeID();
  HMDIsOPACKValue_dataTypeID = CFDataGetTypeID();
  result = CFDateGetTypeID();
  HMDIsOPACKValue_dateTypeID = result;
  return result;
}

void sub_229F91DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDUserActivityStateDetectorUpdateReasonAsString(unint64_t a1)
{
  if (a1 < 0xC && ((0xEFFu >> a1) & 1) != 0)
  {
    v2 = off_27867BED0[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserActivityStateDetectorUpdateReason %tu", a1];
  }

  return v2;
}

void sub_229F959E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id HMDTimeOffsetToDateComponents(uint64_t a1, _BYTE *a2)
{
  if ((a1 + 86399) >= 0x2A2FF)
  {
    v5 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  else if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v5 = v4;
    if (a1 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = -a1;
    }

    v7 = (a1 >> 63) | 1;
    v8 = v6 % 0x3C;
    if (v8)
    {
      [v4 setSecond:v7 * v8];
    }

    v9 = (v6 / 0x3C) % 0x3Cu;
    if (v9)
    {
      [v5 setMinute:v7 * v9];
    }

    if (v6 >= 0xE10)
    {
      [v5 setHour:v7 * (v6 / 0xE10)];
    }

    if (a2)
    {
      *a2 = 1;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 1;
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  }

  return v5;
}

uint64_t HMDTimeOffsetFromDateComponents(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hour];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3600 * v5;
    }

    v7 = [v4 minute];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = 60 * v7;
    }

    v9 = [v4 second];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = v8 + v10 + v6;
    if (a2)
    {
      v12 = [v4 era] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "day") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "weekday") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "weekdayOrdinal") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "quarter") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "weekOfMonth") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "yearForWeekOfYear") == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_25;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      v12 = 1;
LABEL_25:
      *a2 = v12;
    }
  }

  return v11;
}

void sub_229FA1B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isNavigation(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 predictionSources];
  if ([v2 count])
  {
  }

  else
  {
    v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v4 = [v3 preferenceForKey:@"predictedLocationContextTreatEmptySourcesLike"];
    v5 = [v4 numberValue];
    v6 = [v5 integerValue];

    if (v6 == 1)
    {
      v7 = 1;
      goto LABEL_18;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v1 predictionSources];
  v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [v11 conformsToProtocol:&unk_283FE6878];

        if (v12)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v7 = 1;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

LABEL_17:

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_229FA7EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__160007(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229FA8F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229FB0618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229FB0A80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229FB0F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229FB9FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__161946(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229FBA1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229FC6CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __updateAccount(void *a1, int a2)
{
  v51 = *MEMORY[0x277D85DE8];
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
      v48 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [v7 account];
    if (!v10)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v7;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to update account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      goto LABEL_32;
    }

    v11 = [MEMORY[0x277D0F910] systemInfo];
    v12 = [v7 maybeSkipUpdatesOfType:0 whileMigrating:{objc_msgSend(v11, "isMigrating")}];

    if (v12)
    {
      v13 = [v7 accountChangeBackoffTimer];
      [v13 resume];
    }

    else
    {
      v13 = __createAccountHandles(v7);
      v18 = [v13 hmf_isEmpty];
      v19 = objc_autoreleasePoolPush();
      v20 = v7;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (v22)
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v48 = v23;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to create handles", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        __updateCurrentDevice(v20, v10);
      }

      else
      {
        if (v22)
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v24;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating with account handles: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v25 = v13;
        v26 = [v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v43;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v42 + 1) + 8 * i) setLocallyTracked:{1, v42}];
            }

            v27 = [v25 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v27);
        }

        [v10 setHandles:v25];
        v30 = [v20 accountRegistry];
        [v30 updateAccount:v10];

        if (__updateCurrentDevice(v20, v10))
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v20;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543362;
            v48 = v34;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully updated account", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
          v35 = [v32 accountChangeBackoffTimer];
          [v35 reset];

          [v32 __updateMergeIDOnAccount];
          goto LABEL_31;
        }
      }

      if (a2)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v20;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v48 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Failed to update the account, will try again later", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
        v40 = [v37 accountChangeBackoffTimer];
        [v40 resume];
      }
    }

LABEL_31:

LABEL_32:
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __updateDevices(void *a1, char a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 devicesChangeBackoffTimer];
    [v5 suspend];

    v6 = [v4 account];
    if (v6)
    {
      v7 = [MEMORY[0x277D0F910] systemInfo];
      v8 = [v4 maybeSkipUpdatesOfType:1 whileMigrating:{objc_msgSend(v7, "isMigrating")}];

      if (v8)
      {
        v9 = [v4 devicesChangeBackoffTimer];
        [v9 resume];
      }

      else
      {
        v14 = MEMORY[0x277CBEB58];
        v15 = __createDevices(v4);
        v16 = [v14 setWithArray:v15];

        v17 = objc_autoreleasePoolPush();
        v18 = v4;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v32 = v20;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating account with peer devices: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [v18 device];
        if (v21 || (__createCurrentDevice(v18), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = v21;
          [v16 addObject:v21];
        }

        v23 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:v18[2]];
        v24 = [v18 accountRegistry];
        v25 = [v24 updateDevices:v16 onAccount:v6];

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = ____updateDevices_block_invoke;
        v28[3] = &unk_27867E188;
        v29 = v18;
        v30 = a2;
        v26 = [v25 inContext:v23 then:v28];
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v4;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to determine devices on our account, there is no account", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
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

void ____createCurrentDevice_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Created current device for the account : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) currentDeviceSettledPromise];
  [v7 fulfillWithNoValue];

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

void ____updateCurrentDevice_block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = a1[5];
      v16 = 138543618;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  if ((isEqualDeepCompare(a1[6], a1[5]) & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = a1[5];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Updating current device due to detected diff: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [a1[4] accountRegistry];
    [v14 updateDevice:a1[6] withDevice:a1[5]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ____updateCurrentDevice_block_invoke_640(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine rapport identity for current device: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = [*(a1 + 32) accountRegistry];
  [v9 addDevice:*(a1 + 40) toAccount:*(a1 + 48)];

  v10 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedDevice_164015(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____handleUpdatedDevice_block_invoke;
    v6[3] = &unk_27868A750;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated device: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated account: %@", &v30, 0x16u);
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
          __handleUpdatedDevice_164015(v18, v27);
        }
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __removeAccount(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing account: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v6 accountRegistry];
    [v9 removeAccount:v4];

    __setAccount(v6, 0, 1);
  }

  v10 = *MEMORY[0x277D85DE8];
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
    v4[3] = &unk_27868A728;
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
            _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create handles", buf, 0xCu);
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
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create current device", buf, 0xCu);

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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context is required to create account", buf, 0xCu);
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

void __addAccount(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v4 handles];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v6 accountRegistry];
      [v11 addAccount:v4 isLocal:1];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v15;
        v22 = 2112;
        v23 = v4;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No handles on account: %@ (NOT SAVING).", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    __setAccount(v6, v4, 1);
    v16 = v6[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____addAccount_block_invoke;
    block[3] = &unk_27868A728;
    v19 = v6;
    dispatch_async(v16, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void ____addAccount_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) devicesChangeBackoffTimer];
  [v1 resume];
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Primary apple account is logged in", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(*(a1 + 32) + 40);
    if (os_signpost_enabled(v9))
    {
      LOWORD(v23) = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PrimaryAppleAccountLoggedIn", "", &v23, 2u);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated account context: %@", &v23, 0x16u);
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
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Primary iCloud (Apple) account login status: Logged In : %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = *MEMORY[0x277D85DE8];
}

void sub_229FD0848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229FD0D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229FD1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164294(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229FE72C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_229FE88D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__167559(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229FF8360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229FF8A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229FF92B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing unassociated accessory %@", buf, 0x16u);
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
      v13[3] = &unk_27868A750;
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@New WAC Accessory discovered: %p %@", v27, 0x20u);
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
      v28 = &unk_27868A750;
      v29 = v24;
      v30 = v23;
      dispatch_async(v25, v27);
    }

    goto LABEL_3;
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_229FFF70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AAD33A0](v20, a1);
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

  MEMORY[0x22AAD33B0](v20);
  return a1;
}

void sub_229FFFB10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x22AAD33B0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x229FFFAE4);
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
  __cxa_throw(exception, off_27866DAD0, MEMORY[0x277D825F0]);
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

void sub_22A000B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22A0012D0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_22A0016D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22A001944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22A001DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22A001FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_22A0025A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__169646(uint64_t result, uint64_t a2)
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
    v2 = off_27867CBA8[a1];
  }

  return v2;
}

void sub_22A00B6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__170269(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A00B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22A00D37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

id findResidentDevice(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __findResidentDevice_block_invoke;
  v7[3] = &unk_2786850E0;
  v8 = v3;
  v4 = v3;
  v5 = [a1 na_firstObjectPassingTest:v7];

  return v5;
}

uint64_t __findResidentDevice_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void sub_22A00E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A010EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDResidentSyncCodingModel_block_invoke()
{
  v0 = [HMDManagedObjectCodingModel alloc];
  v3 = +[HMDCoreData managedObjectModel];
  v1 = [(HMDManagedObjectCodingModel *)v0 initWithModel:v3 configNamespace:@"residentSync" rootEntityName:@"MKFHome"];
  v2 = HMDResidentSyncCodingModel__hmf_once_v1;
  HMDResidentSyncCodingModel__hmf_once_v1 = v1;
}

void sub_22A01A0FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 136));
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
    v6[3] = &unk_27867CEF0;
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

id HMDShortDescriptionForToken(void *a1)
{
  v1 = [a1 description];
  if ([v1 hasPrefix:@"<NSPersistentHistoryToken - {\n    "] && objc_msgSend(v1, "hasSuffix:", @";\n}>"))
  {
    v2 = [v1 substringWithRange:{objc_msgSend(@"<NSPersistentHistoryToken - {\n    ", "length"), objc_msgSend(v1, "length") - (objc_msgSend(@"<NSPersistentHistoryToken - {\n    ", "length") + objc_msgSend(@"\n}>", "length"))}];;
    if ([v2 length] < 0x47)
    {
      goto LABEL_6;
    }
  }

  v2 = v1;
LABEL_6:

  return v2;
}

double HMDHomeDataChangedMessageTimeout()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"HMDHomeDataChangedMessageTimeout"];
  v2 = [v1 numberValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void sub_22A01F328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__175147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A01F4F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48n8_8_s0_s16(uint64_t a1)
{
  v2 = *(a1 + 64);
}

id __copy_helper_block_e8_48n15_8_8_s0_t8w8_s16(void *a1, uint64_t a2)
{
  a1[6] = *(a2 + 48);
  a1[7] = *(a2 + 56);
  result = *(a2 + 64);
  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_56n8_8_s0_s16(uint64_t a1)
{
  v2 = *(a1 + 72);
}

id __copy_helper_block_e8_56n15_8_8_s0_t8w8_s16(void *a1, uint64_t a2)
{
  a1[7] = *(a2 + 56);
  a1[8] = *(a2 + 64);
  result = *(a2 + 72);
  a1[9] = result;
  return result;
}

void sub_22A0222B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22A0233C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A030524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A030D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0360A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0371F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDDeviceMarkDirty(void *a1, void *a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ____HMDDeviceMarkDirty_block_invoke;
  v5[3] = &unk_27868A250;
  v6 = v3;
  v4 = v3;
  [a2 submitBlock:v5];
}

void sub_22A03C7C4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A03C858(_Unwind_Exception *a1)
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing parent identifier while updating model identifier.", buf, 0xCu);
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
      v33[3] = &unk_27867D208;
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

void sub_22A03D08C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A03EE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__177884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A03FAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A04D570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void bindStringSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v12 = v7;
    if (v7)
    {
      v9 = v7;
      v10 = sqlite3_bind_text(a1, a2, [v12 UTF8String], -1, 0);
    }

    else
    {
      v10 = sqlite3_bind_null(a1, a2);
    }

    v8 = v12;
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v12;
      *a4 = v11;
    }
  }
}

id execSQLite3(sqlite3_stmt *a1)
{
  if (sqlite3_step(a1) == 101)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  if (sqlite3_reset(a1) && !v2)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  return v2;
}

void bindDataSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v12 = v7;
    if (v7)
    {
      if ([v7 length])
      {
        v9 = v12;
        v10 = sqlite3_bind_blob64(a1, a2, [v12 bytes], objc_msgSend(v12, "length"), 0);
      }

      else
      {
        v10 = sqlite3_bind_zeroblob(a1, a2, 0);
      }
    }

    else
    {
      v10 = sqlite3_bind_null(a1, a2);
    }

    v8 = v12;
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v12;
      *a4 = v11;
    }
  }
}

sqlite3_int64 steplastrowresetSQLite3(sqlite3_stmt *a1, void *a2)
{
  if (sqlite3_step(a1) != 101)
  {
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      if (sqlite3_reset(a1))
      {
        v6 = MEMORY[0x277CCA9B8];
        goto LABEL_8;
      }
    }

    else
    {
      sqlite3_reset(a1);
    }

    return 0;
  }

  v4 = sqlite3_db_handle(a1);
  insert_rowid = sqlite3_last_insert_rowid(v4);
  if (sqlite3_reset(a1))
  {
    if (a2)
    {
      v6 = MEMORY[0x277CCA9B8];
LABEL_8:
      [v6 errorWithSQLite3Statement:a1];
      *a2 = insert_rowid = 0;
      return insert_rowid;
    }

    return 0;
  }

  return insert_rowid;
}

sqlite3_stmt *bindIntSQLite3(sqlite3_stmt *result, int a2, sqlite3_int64 a3, void *a4)
{
  if (!*a4)
  {
    v5 = result;
    result = sqlite3_bind_int64(result, a2, a3);
    if (result)
    {
      result = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:v5];
      *a4 = result;
    }
  }

  return result;
}

id _handleFetchWithRawCallback(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  sqlite3_reset(a1);
  while (1)
  {
    v4 = sqlite3_step(a1);
    if (v4 != 100)
    {
      break;
    }

    v5 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:0];
    v6 = sqlite3_column_int64(a1, 2);
    v7 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:1];
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:a1 column:3];
    LOBYTE(v6) = v3[2](v3, v5, v6, v7, v8, 0);

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v4 == 101)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  (v3)[2](v3, 0, 0, 0, 0, v9);
LABEL_8:
  sqlite3_reset(a1);

  return v9;
}

id selectSQLite3(sqlite3 *a1, const char *a2, void *a3, void *a4)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (*a4)
  {
    goto LABEL_2;
  }

  if (sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
    v9 = 0;
    *a4 = v10 = 0;
    goto LABEL_6;
  }

  v59 = a2;
  v13 = sqlite3_bind_parameter_count(ppStmt);
  if (v13 >= 2)
  {
    v14 = v13;
    v15 = 1;
    v16 = 0x277CCA000uLL;
    v17 = 0x277CBE000uLL;
    v58 = *MEMORY[0x277D0F1A0];
    while (1)
    {
      if (*a4)
      {
        goto LABEL_2;
      }

      v18 = sqlite3_bind_parameter_name(ppStmt, v15);
      if (!v18)
      {
        v48 = MEMORY[0x277CCA9B8];
        v67[0] = &unk_283E73898;
        v66[0] = @"extcode";
        v66[1] = @"text";
        v49 = [*(v16 + 3240) stringWithFormat:@"statement cannot contain nameless parameters (%d is nameless)", v15];
        v67[1] = v49;
        v66[2] = @"statement";
        v50 = [*(v16 + 3240) stringWithUTF8String:v59];
        v67[2] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
        *a4 = [v48 errorWithDomain:v58 code:3 userInfo:v51];

        goto LABEL_2;
      }

      v19 = v18;
      v20 = [*(v16 + 3240) stringWithUTF8String:v18];
      v21 = [v7 objectForKey:v20];

      if (v21)
      {
        v22 = *(v17 + 2920);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      sqlite3_bind_null(ppStmt, v15);
LABEL_34:

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        goto LABEL_37;
      }
    }

    v23 = v21;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v60 = v25;

    if (isKindOfClass)
    {
      bindDataSQLite3(ppStmt, v15, v23, a4);
LABEL_21:
      v26 = 0;
      v27 = 0;
LABEL_33:

      v17 = 0x277CBE000;
      goto LABEL_34;
    }

    v28 = *(v16 + 3240);
    v27 = v23;
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();
    if (v29)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v29)
    {
      bindStringSQLite3(ppStmt, v15, v27, a4);
      v26 = 0;
    }

    else
    {
      v26 = v27;
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();
      if (v32)
      {
        v33 = v26;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      if ((v32 & 1) == 0)
      {
        v57 = MEMORY[0x277CCA9B8];
        v65[0] = &unk_283E73898;
        v64[0] = @"extcode";
        v64[1] = @"text";
        v35 = MEMORY[0x277CCACA8];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v35 stringWithFormat:@"bind parameter %s is not of a recognized type %@ is not a (NSNull, NSData, NSString, or NSNumber)", v19, v37];
        v65[1] = v38;
        v64[2] = @"statement";
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v59];
        v65[2] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
        *a4 = [v57 errorWithDomain:v58 code:3 userInfo:v40];

        v16 = 0x277CCA000;
        goto LABEL_21;
      }

      bindIntSQLite3(ppStmt, v15, [v26 longLongValue], a4);
      v27 = 0;
    }

    v16 = 0x277CCA000;
    goto LABEL_33;
  }

LABEL_37:
  if (*a4)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v41 = 0;
  v42 = sqlite3_column_count(ppStmt);
  while (1)
  {
    v43 = sqlite3_step(ppStmt);
    if (v43 != 100)
    {
      if (v43 != 101)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:ppStmt];
      }

      sqlite3_finalize(ppStmt);
      if (*a4)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      v9 = v41;
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v42];

    if (v42 >= 1)
    {
      break;
    }

LABEL_54:
    [v8 addObject:v9];
    v41 = v9;
  }

  v44 = 0;
  while (1)
  {
    v45 = sqlite3_column_type(ppStmt, v44);
    if (v45 <= 2)
    {
      break;
    }

    switch(v45)
    {
      case 3:
        v46 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:ppStmt column:v44];
        break;
      case 5:
        v46 = [MEMORY[0x277CBEB68] null];
        break;
      case 4:
        v46 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:ppStmt column:v44];
        break;
      default:
        goto LABEL_56;
    }

LABEL_53:
    v47 = v46;
    [v9 addObject:v46];

    v44 = (v44 + 1);
    if (v42 == v44)
    {
      goto LABEL_54;
    }
  }

  if (v45 == 1)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(ppStmt, v44)}];
    goto LABEL_53;
  }

  if (v45 == 2)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(ppStmt, v44)}];
    goto LABEL_53;
  }

LABEL_56:
  v52 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277D0F1A0];
  v63[0] = &unk_283E73898;
  v62[0] = @"extcode";
  v62[1] = @"text";
  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"column %d is of SQLite3 type %d (not recognized)", v44, v45];
  v63[1] = v54;
  v62[2] = @"statement";
  v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:v59];
  v63[2] = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
  *a4 = [v52 errorWithDomain:v53 code:3 userInfo:v56];

LABEL_3:
  v10 = 0;
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id runSQLite3(sqlite3 *a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (sqlite3_exec(a1, a2, 0, 0, 0))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1];
      v11 = 138543874;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2080;
      v16 = a2;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Got Error %@ on %s", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

sqlite3_stmt *prepareSQLite3(sqlite3 *a1, const char *a2, void *a3)
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    return ppStmt;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  v7 = v6;
  result = 0;
  *a3 = v6;
  return result;
}

void sub_22A054EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__179885(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MKFCKModelCurrentWriterVersionString()
{
  if (MKFCKModelCurrentWriterVersionString__hmf_once_t0 != -1)
  {
    dispatch_once(&MKFCKModelCurrentWriterVersionString__hmf_once_t0, &__block_literal_global_180133);
  }

  v1 = MKFCKModelCurrentWriterVersionString__hmf_once_v1;

  return v1;
}

void __MKFCKModelCurrentWriterVersionString_block_invoke()
{
  v3 = [MEMORY[0x277D0F8E8] productInfo];
  v0 = [v3 softwareVersion];
  v1 = [v0 versionString];
  v2 = MKFCKModelCurrentWriterVersionString__hmf_once_v1;
  MKFCKModelCurrentWriterVersionString__hmf_once_v1 = v1;
}

id _generateFlags(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  MEMORY[0x22AAD50F0](&v6);
  if (a1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  BYTE5(v7) = BYTE5(v7) & 0xF7 | v2;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_22A058DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A059490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__180188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MKFPropertyNamesFromDescriptions(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __MKFPropertyNamesFromDescriptions_block_invoke;
  v8[3] = &unk_27867D350;
  v9 = v3;
  v4 = v3;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __MKFPropertyNamesFromDescriptions_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

id HMDSanitizeCoreDataError(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = [v1 userInfo];
    if ([v3 count])
    {
      v19 = v1;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v4 = *MEMORY[0x277CCA470];
      v24[0] = *MEMORY[0x277CCA450];
      v24[1] = v4;
      v24[2] = *MEMORY[0x277CCA498];
      v24[3] = @"reason";
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            v11 = [v3 objectForKeyedSubscript:v10];
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

            if (v13)
            {
              [v2 setObject:v13 forKeyedSubscript:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v7);
      }

      v1 = v19;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = [v1 domain];
    v16 = [v14 errorWithDomain:v15 code:objc_msgSend(v1 userInfo:{"code"), v2}];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id HMDHomeUUIDFromWorkingContextName(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"H:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"H:", "length")}];
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void HMDWorkingContextNameForHomeUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x277CCACA8];
    v4 = [v1 UUIDString];
    v5 = [v3 stringWithFormat:@"H:%@", v4];

    v6 = v5;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    [(HMDMediaGroupsParticipantData *)v7 .cxx_destruct];
  }
}

void sub_22A0606BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A063060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A06345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__182026(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A068F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_22A06E3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleFinishedUnarchive_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 3)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v71 = v7;
      v72 = 2112;
      v73 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finished unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v9 setState:2];
LABEL_40:
      [*(a1 + 32) setExtractor:0];
      goto LABEL_41;
    }

    v11 = v9;
    v12 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMDSoftwareUpdateDocumentationAsset.validation"];
    v13 = objc_autoreleasePoolPush();
    v14 = [v11 fileManager];
    v15 = [v11 bundleURL];
    v16 = [v14 bundleWithURL:v15];

    if (v16)
    {
      v69 = v13;
      v17 = MEMORY[0x277CD1E58];
      v18 = [v11 fileManager];
      v19 = [v17 localizationsForBundle:v16 fileManager:v18];

      v20 = [v19 count];
      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v25;
          v72 = 2112;
          v73 = v19;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Available localizations: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = objc_alloc(MEMORY[0x277CD1E58]);
        v27 = [v22 fileManager];
        v28 = [v26 initWithBundle:v16 fileManager:v27];

        v29 = v28 != 0;
        v30 = objc_autoreleasePoolPush();
        v31 = v22;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (v28)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v34 = v68 = v12;
            *buf = 138543618;
            v71 = v34;
            v72 = 2112;
            v73 = v28;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);

            v12 = v68;
          }

          objc_autoreleasePoolPop(v30);
          v35 = 0;
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v43 = v68 = v12;
            *buf = 138543618;
            v71 = v43;
            v72 = 2112;
            v73 = v16;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation for asset bundle: %@", buf, 0x16u);

            v12 = v68;
          }

          objc_autoreleasePoolPop(v30);
          v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        }
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v42;
          v72 = 2112;
          v73 = v16;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@No available localization for asset bundle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v29 = 0;
      }

      v13 = v69;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v11;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v13;
        v41 = [v37 bundleURL];
        *buf = 138543618;
        v71 = v40;
        v72 = 2112;
        v73 = v41;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to create bundle from: %@", buf, 0x16u);

        v13 = v39;
      }

      objc_autoreleasePoolPop(v36);
      v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v29 = 0;
    }

    objc_autoreleasePoolPop(v13);
    v44 = v35;

    v45 = v35;
    v46 = v45;
    if (v29)
    {
      v47 = v45;
    }

    else
    {
      v48 = *(a1 + 32);
      v49 = [objc_alloc(MEMORY[0x277CD1E58]) initWithAsset:v48];
      v50 = objc_autoreleasePoolPush();
      v51 = v48;
      v52 = HMFGetOSLogHandle();
      v53 = v52;
      if (v49)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v54;
          v72 = 2112;
          v73 = v49;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = v46;
      }

      else
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v56 = HMFGetLogIdentifier();
          v57 = [v51 URL];
          *buf = 138543618;
          v71 = v56;
          v72 = 2112;
          v73 = v57;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation from asset url: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v58 = v55;
      }

      v47 = v55;
      if (!v49)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = *(a1 + 32);
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v65;
          v72 = 2112;
          v73 = v47;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to validate asset with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        [*(a1 + 32) setState:0];
        [*(a1 + 32) increaseDownloadRetryCount];
        v66 = [*(a1 + 32) fileManager];
        v67 = [*(a1 + 32) bundleURL];
        [v66 removeItemAtURL:v67 error:0];

        goto LABEL_39;
      }
    }

    [*(a1 + 32) setState:{4, v68}];
    [*(a1 + 32) resetDownloadRetryCount];
LABEL_39:
    v59 = [*(a1 + 32) fileManager];
    v60 = [*(a1 + 32) archiveURL];
    [v59 removeItemAtURL:v60 error:0];

    goto LABEL_40;
  }

  if (v6)
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v10;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
LABEL_41:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_22A06F57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleStartedUnarchive_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start unarchive with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) cancelUnarchive];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Started unarchive", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v10 = [*(a1 + 40) extractor];
    [v10 setExtractorDelegate:*(a1 + 40)];

    v11 = [*(a1 + 40) archivedFileStream];
    [v11 open];

    __processNextArchivedData(*(a1 + 40));
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __processNextArchivedData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____processNextArchivedData_block_invoke;
    block[3] = &unk_27868A728;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void ____processNextArchivedData_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) archivedFileStream];
  v4 = [v3 hasBytesAvailable];

  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading next chunk from the archive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    v12 = [v11 archivedFileStream];
    v13 = [v12 read:buf maxLength:4096];

    v14 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:v13];
    objc_initWeak(&location, *v10);
    v15 = [*v10 extractor];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ____processNextArchivedData_block_invoke_414;
    v18[3] = &unk_27867D850;
    objc_copyWeak(&v19, &location);
    [v15 supplyBytes:v14 withCompletionBlock:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Reached end of input stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) finishUnarchive];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22A06FB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____processNextArchivedData_block_invoke_414(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to append data with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelUnarchive];
  }

  else if (a3)
  {
    [WeakRetained finishUnarchive];
  }

  else
  {
    __processNextArchivedData();
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __resourceBundleForBundle(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 URLForResource:@"AssetData" withExtension:0];
  if (v5)
  {
    v6 = [v4 bundleWithURL:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find resource bundle", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __htmlDocumentForResource(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 URLForResource:v7 withExtension:@"html" subdirectory:0 localization:*(*(&v24 + 1) + 8 * i)];
        if (v13)
        {
          v15 = v13;
          v23 = 0;
          v14 = [objc_alloc(MEMORY[0x277CD1A58]) initWithURL:v13 error:&v23];
          v16 = v23;
          if (!v14)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v15 path];
              *buf = 138543874;
              v29 = v19;
              v30 = 2112;
              v31 = v20;
              v32 = 2112;
              v33 = v16;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
          }

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_22A075238(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22A07CA40(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A07CACC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A07E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A081998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__184424(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A08A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__185732(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__186134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A08F1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 80));
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 - 176));
  objc_destroyWeak((v34 - 160));
  _Unwind_Resume(a1);
}

void sub_22A08FEEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t hasAssistantHashingKeyChanged()
{
  v0 = objc_alloc(MEMORY[0x277D0F918]);
  v1 = [v0 initWithKey:@"HMDAssistantLastHashingKey" options:0 domain:*MEMORY[0x277CD0030] defaultValue:0];
  v2 = [v1 stringValue];
  v3 = +[HMDHelper sharedHelper];
  v4 = [v3 hashedRouteIDForIdentifier:@"A77C551E-C3FA-414E-ACD8-A7DF3D64E9D6"];

  LODWORD(v3) = HMFEqualObjects();
  return v3 ^ 1;
}

void sub_22A090768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A0914B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDLostModeManagerExitLostModeWithAuthCompleteNotification(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v4 = [v3 needsLostModeExitAuth];

  v5 = objc_autoreleasePoolPush();
  v6 = v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received lost mode exit auth notification, but findmy indicates device hasn't exited lost mode with auth", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Sending lost mode exit with auth complete notification", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __HMDLostModeManagerLostModeChangeNotification(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [MEMORY[0x277D08F78] sharedInstance];
    v6 = [v5 lostModeIsActive];

    if (LOBYTE(v4[3]._os_unfair_lock_opaque) == v6)
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      LOBYTE(v4[3]._os_unfair_lock_opaque) = v6;
      os_unfair_lock_unlock(v4 + 2);
      v7 = objc_autoreleasePoolPush();
      v8 = v4;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMFBooleanToString();
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification lost mode is active: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 postNotificationName:@"HMDLostModeManagerUpdatedNotification" object:v8];
    }
  }

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_22A0983C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 112));
  _Unwind_Resume(a1);
}

void __deleteAccountModel(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 accountRegistry];
  [v4 removeAccount:v3];
}

void __notifyDelegateAccountRemoved_187212(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = @"HMDAccountNotificationKey";
    v14 = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"HMDRemoteAccountManagerRemovedAccountNotification" object:v7 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22A09BE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleUnregisteredDestination_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v22 = 138543874;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v14 = "%{public}@Account handle, %@, failed to resolve, removing from account: %@";
LABEL_12:
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, v14, &v22, 0x20u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (([*(a1 + 32) isEqual:v5] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v22 = 138543874;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v14 = "%{public}@Account handle, %@, now registered to account: %@";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) removeHandle:*(a1 + 40)];
      goto LABEL_14;
    }

    if (*(a1 + 48))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 48);
        v22 = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Removing unregistered device: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) removeDevice:*(a1 + 48)];
    }
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__187544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A09D104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_22A09DCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A09DF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A09EEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A09F9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A0A0804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61)
{
  objc_destroyWeak((v61 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_22A0A3E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0A7CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __documentationMaxSize_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0x200000];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateDocumentationMaxSize"];
}

uint64_t minimumApplyDurationAllowance()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateMinimumApplyDurationAllowance"];
  v2 = [v1 numberValue];
  v3 = [v2 unsignedIntValue];

  return v3;
}

void sub_22A0ACEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A0ACFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __maxSocketIdleDuration_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:60];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateMaxSocketIdleDuration"];
}

void sub_22A0B6F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_22A0B77C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0B9134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0B92E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0BA768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0BAA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0BE5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0BF53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0C0684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__189958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A0C0C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0C2DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  os_unfair_lock_unlock(v26 + 2);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_22A0C4A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  os_unfair_lock_unlock(v29 + 2);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__190226(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A0CD260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A0CEB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__191167(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A0D0858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22A0D4534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A0D9194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0D9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A0D9F28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *HMDNetworkRouterSupportAsString(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v3 = v2;
  v4 = a1;
  if (a1)
  {
    [v2 addObject:@"Home Protection Mode Update"];
    v4 = a1 & 0xFFFFFFFFFFFFFFFELL;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Accessory Protection Mode Update"];
  v4 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"Add Network Router"];
  v4 &= ~4uLL;
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"WiFi Unique PreShared Key"];
    v4 &= ~8uLL;
  }

LABEL_6:
  if ([v3 count])
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Unknown";
    if (!v4)
    {
      v6 = @"Disabled";
    }

    v5 = v6;
  }

  v7 = v5;

  return v7;
}

void sub_22A0E1358(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

HMDNetworkRouterAccessViolationControl *accessViolationControlWithType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterAccessViolationControlOperation alloc] initWithOperation:a1];
  v2 = [[HMDNetworkRouterAccessViolationControl alloc] initWithOperation:v1 clientIdentifierList:0];

  return v2;
}

HMDNetworkRouterClientControl *clientControlWithOperationType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterControlOperation alloc] initWithOperation:a1];
  v2 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  v3 = [[HMDNetworkRouterClientControlOperation alloc] initWithOperation:v1 configuration:v2];

  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [[HMDNetworkRouterClientControl alloc] initWithOperations:v4];

  return v5;
}

uint64_t __Block_byref_object_copy__194348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A0FAC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__194910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A100B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__195308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isRecordingAllowedForSettings(void *a1)
{
  v1 = a1;
  [v1 accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v2 = 1;
  }

  else
  {
    [v1 accessModeNotAtHome];
    v2 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v2;
}

void sub_22A104B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isAttributeIncludedInResidentSync(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"residentSyncInclude"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t isRelationshipIncludedInResidentSync(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"residentSyncInclude"];
  v3 = [v2 BOOLValue];

  return v3;
}

void sub_22A109B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22A10AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __destinationForAccountHandle(uint64_t a1, void *a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v4 = [a2 remoteDestinationString];
    v2 = vars8;
  }

  return v4;
}

void sub_22A10F308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__196576(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A10F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A111618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v51 - 224), 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__196731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A114DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A119544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A119780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A119E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMDHomeActivityStateContributorTypeAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDHomeActivityStateContributorType %tu", a1];
  }

  else
  {
    v2 = off_27867F1D8[a1];
  }

  return v2;
}

__CFString *HMDHomeActivityStateTypeToString(unint64_t a1)
{
  if (a1 < 0xB && ((0x7D7u >> a1) & 1) != 0)
  {
    v2 = off_27867F248[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDHomeActivityStateType %tu", a1];
  }

  return v2;
}

__CFString *HMDUserConfirmationResponseAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserConfirmationResponse %tu", a1];
  }

  else
  {
    v2 = off_27867F2C8[a1 - 1];
  }

  return v2;
}

void sub_22A120824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A121264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id actionSetFromObject(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"objectReference"];
  v3 = [v1 hmf_stringForKey:@"objectType"];

  if ([v3 isEqualToString:@"SCENE"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id valueWithAssistantUnits(void *a1, void *a2, void *a3, void *a4, unsigned int a5, int a6)
{
  v49 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v51 = +[HMDHAPMetadata getSharedInstance];
  v13 = v12;
  v14 = v10;
  v15 = v11;
  v16 = +[HMDHAPMetadata getSharedInstance];
  v17 = [v16 characteristicValueUnit:v15];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;
  v20 = [v16 supportsLocalization:v14];

  if (v20)
  {
    v21 = a6;
    v22 = v17;
    v23 = *MEMORY[0x277CCF6F8];
    v24 = [v22 isEqualToString:*MEMORY[0x277CCF6F8]];
    v25 = *MEMORY[0x277CCF700];
    if ((v24 & 1) != 0 || (v26 = [v22 isEqualToString:*MEMORY[0x277CCF700]], v27 = v22, v26))
    {
      if (v21)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }
    }

    v28 = v27;

    if (!v13 || (v29 = [v13 isEqualToString:v28], v30 = v13, v29))
    {
      v30 = v28;
    }

    v31 = v30;

    v19 = v31;
  }

  else
  {
    v23 = *MEMORY[0x277CCF6F8];
    v25 = *MEMORY[0x277CCF700];
  }

  v32 = [v51 characteristicValueUnit:v15];

  v33 = v49;
  v34 = v32;
  v35 = v19;
  v36 = v33;
  if ([v34 isEqualToString:v23])
  {
    v37 = v36;
    if (![v35 isEqualToString:v25])
    {
      goto LABEL_22;
    }

    [v36 floatValue];
    v38 = MEMORY[0x277CCABB0];
    *&v39 = (*&v39 * 1.8) + 32.0;
    goto LABEL_21;
  }

  v37 = v36;
  if ([v34 isEqualToString:v25])
  {
    v37 = v36;
    if ([v35 isEqualToString:v23])
    {
      [v36 floatValue];
      v38 = MEMORY[0x277CCABB0];
      *&v39 = ((*&v39 + -32.0) * 5.0) / 9.0;
LABEL_21:
      v37 = [v38 numberWithFloat:v39];
    }
  }

LABEL_22:

  v40 = [v51 mapToAssistantCharacteristicValue:v37 name:v14 getActionType:a5];

  v41 = [v51 mapToAssistantUnitName:v35];
  v42 = [v51 mapCharacteristicValueType:v14];

  v43 = v40;
  v44 = v42;
  v45 = v41;
  if ([v44 isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47340]);
    [v46 setValue:{objc_msgSend(v43, "BOOLValue")}];
  }

  else if (([v44 isEqualToString:*MEMORY[0x277CCF6C0]] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E8]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D0]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D8]) & 1) != 0 || objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E0]))
  {
    v46 = objc_alloc_init(MEMORY[0x277D47370]);
    [v46 setValue:{objc_msgSend(v43, "integerValue")}];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6B8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47360]);
    [v43 floatValue];
    [v46 setValue:?];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6C8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47388]);
    v48 = [v43 copy];
    [v46 setValue:v48];
  }

  else
  {
    v46 = 0;
  }

  [v46 setUnits:v45];

  return v46;
}

HMDAssistantCharacteristicTuple *getTupleForCharacteristic(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v6 characteristicType];

  v9 = [v7 mapToAssistantCharacteristicName:v8];
  v10 = [v7 mapCharacteristicValueType:v9];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = valueWithAssistantUnits(0, v8, v9, v5, 1u, a3);
    v14 = [[HMDAssistantCharacteristicTuple alloc] initWithAttribute:v9 value:v13];
  }

  return v14;
}

void __isMetricLocale_block_invoke()
{
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = [v1 objectForKey:*MEMORY[0x277CBE718]];
  isMetricLocale_isMetricLocale = [v0 BOOLValue];
}

uint64_t applyGuardTime()
{
  if (applyGuardTime_onceToken != -1)
  {
    dispatch_once(&applyGuardTime_onceToken, &__block_literal_global_77_198749);
  }

  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateApplyGuardTime"];
  v2 = [v1 numberValue];

  v3 = [v2 unsignedIntValue];
  return v3;
}

__CFString *HMDUserComingHomeStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMDUserComingHomeState %tu", a1];
  }

  else
  {
    v2 = off_27867F308[a1];
  }

  return v2;
}

void sub_22A125BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A12628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__199797(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A12689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_22A12729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1288BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18, id a19)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void logAndPostNotification(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 defaultCenter];
  logAndPostNotificationWithNotificationCenter(v9, v8, v7, v6);
}

void logAndPostNotificationWithNotificationCenter(void *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending notification %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v16;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Sending notification %@ with object %@ and userInfo %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  [v7 postNotificationName:v8 object:v9 userInfo:v10];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22A1318F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A132008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22A132650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1340D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__201765(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A13448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22A134724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id __descriptionsForRecordIDArray(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_436];
  v2 = [v1 copy];

  return v2;
}

void sub_22A134B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22A134F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

id __descriptionsForRecordIDSet(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_434_201789];
  v2 = [v1 copy];

  return v2;
}

void sub_22A1353E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22A1358E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22A135D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_22A137E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1381A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A138A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A141690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A142384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A142964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A143B98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __removeHomeState(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = ____removeHomeState_block_invoke;
  v9 = &unk_27867F878;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:&v6];
  if (v13[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 removeObjectAtIndex:{v6, v7, v8, v9}];
  }

  _Block_object_dispose(&v12, 8);
}

void sub_22A145160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____removeHomeState_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 accessory];
  v8 = [v7 uuid];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_22A145600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__202808(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A146C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__202996(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A146F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1472A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22A147488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A147CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A148EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A149580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A14A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __sendMessageWithFutureResult(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v30 = 0;
  v8 = MEMORY[0x277D0F7C0];
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [v8 futureWithPromise:&v30];
  v13 = [v7 state];
  v14 = [v13 device];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    [v7 dataSource];
    v17 = v26 = v12;
    v18 = [v7 state];
    v19 = [v18 deviceIdentifier];
    v16 = [v17 deviceForIdentifier:v19];

    v12 = v26;
  }

  v20 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:v11 device:v16];
  v21 = [HMDRemoteMessage secureMessageWithName:v10 qualityOfService:-1 destination:v20 messagePayload:v9 restriction:17];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = ____sendMessageWithFutureResult_block_invoke;
  v27[3] = &unk_278688370;
  v28 = v7;
  v29 = v30;
  v22 = v7;
  [v21 setResponseHandler:v27];
  v23 = [v22 homeManager];
  v24 = [v23 messageDispatcher];
  [v24 sendMessage:v21];

  return v12;
}

void ____sendMessageWithFutureResult_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Message failed: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) rejectWithError:v5];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Message completed with result: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 40) fulfillWithValue:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

__CFString *HMDUserVacationStateAsString(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMDUserVacationState %tu", a1];
  }

  else
  {
    v2 = off_27867FB10[a1];
  }

  return v2;
}

void sub_22A1561CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A158838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id randomStringWithLength(uint64_t a1)
{
  v1 = a1;
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:a1];
  {
    [i appendFormat:@"%c", randomStringWithLength_characters[arc4random_uniform(0x5Cu)]];
  }

  return i;
}

void sub_22A1594E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoConnectMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v25) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v25 & 0x7F) << v16;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 16) = v22;
          goto LABEL_49;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(MEMORY[0x277D174E0]);
          v15 = 8;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(MEMORY[0x277D174E0]);
            v15 = 40;
LABEL_28:
            objc_storeStrong((a1 + v15), v14);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
            {
LABEL_51:

              return 0;
            }

LABEL_30:
            PBReaderRecallMark();
LABEL_31:

            goto LABEL_49;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addTopicFilterAdditions:v14];
            }

            goto LABEL_31;
          case 6:
            v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
            [a1 addTopicAdditions:v14];
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMDCameraRecordingVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingVideoCodecTypeH265";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingVideoCodecType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingVideoCodecTypeH264";
  }

  return v2;
}

__CFString *HMDCameraRecordingH264ProfileTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264ProfileType %ld", a1];
  }

  else
  {
    v2 = off_27867FE48[a1];
  }

  return v2;
}

__CFString *HMDCameraRecordingH264LevelTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264LevelType %ld", a1];
  }

  else
  {
    v2 = off_27867FE60[a1];
  }

  return v2;
}

void translateResolutionWidthHeight(void *a1, void *a2, uint64_t *a3)
{
  v7 = a1;
  v5 = a2;
  if ([v7 isEqualToNumber:&unk_283E73E38] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73E50) & 1) != 0)
  {
    v6 = 1;
  }

  else if ([v7 isEqualToNumber:&unk_283E73E68] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73E80) & 1) != 0)
  {
    v6 = 2;
  }

  else if ([v7 isEqualToNumber:&unk_283E73E98] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73EB0) & 1) != 0)
  {
    v6 = 3;
  }

  else if ([v7 isEqualToNumber:&unk_283E73EC8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73EE0) & 1) != 0)
  {
    v6 = 4;
  }

  else if ([v7 isEqualToNumber:&unk_283E73E38] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73EF8) & 1) != 0)
  {
    v6 = 5;
  }

  else if ([v7 isEqualToNumber:&unk_283E73E98] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F10) & 1) != 0)
  {
    v6 = 6;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F28] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F40) & 1) != 0)
  {
    v6 = 7;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F58] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F70) & 1) != 0)
  {
    v6 = 8;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F10] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73E98) & 1) != 0)
  {
    v6 = 9;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F40] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F28) & 1) != 0)
  {
    v6 = 10;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F88] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73FA0) & 1) != 0)
  {
    v6 = 11;
  }

  else if ([v7 isEqualToNumber:&unk_283E73FB8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F40) & 1) != 0)
  {
    v6 = 12;
  }

  else if ([v7 isEqualToNumber:&unk_283E73FA0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F88) & 1) != 0)
  {
    v6 = 13;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F40] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73FB8) & 1) != 0)
  {
    v6 = 14;
  }

  else if ([v7 isEqualToNumber:&unk_283E73EB0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73E98) & 1) != 0)
  {
    v6 = 15;
  }

  else if ([v7 isEqualToNumber:&unk_283E73E80] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73E68) & 1) != 0)
  {
    v6 = 16;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F70] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F58) & 1) != 0)
  {
    v6 = 17;
  }

  else if ([v7 isEqualToNumber:&unk_283E73FD0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73FD0) & 1) != 0)
  {
    v6 = 18;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F10] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F10) & 1) != 0)
  {
    v6 = 19;
  }

  else if ([v7 isEqualToNumber:&unk_283E73F40] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73F40) & 1) != 0)
  {
    v6 = 20;
  }

  else if ([v7 isEqualToNumber:&unk_283E73EE0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_283E73EE0) & 1) != 0)
  {
    v6 = 21;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_22A167318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id logDescriptionForAccessory(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (isKindOfClass)
    {
      [v1 needsAirplayAccess];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [v1 name];
    v8 = [v1 uuid];
    v9 = [v1 identifier];
    v10 = HMFBooleanToString();
    v11 = HMFBooleanToString();
    v5 = [v6 stringWithFormat:@"'%@' (%@ / %@, HAP=%@, Airplay=%@)", v7, v8, v9, v10, v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22A16ABD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v10 - 152));
  _Unwind_Resume(a1);
}

void ContinueRouterOperationOnWorkQueue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [v7 workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __ContinueRouterOperationOnWorkQueue_block_invoke;
    v13[3] = &unk_278681B48;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_async(v11, v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v9 + 2))(v9, v12);
  }
}

void __ContinueRouterOperationOnWorkQueue_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_22A16BF94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

uint64_t credentialTypeForCredential(void *a1)
{
  v1 = a1;
  v2 = [v1 psk];

  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v4 = [v1 macAddress];
    v5 = v4 != 0;

    v3 = 2 * v5;
  }

  return v3;
}

uint64_t getProtectionModeForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = [v2 protectionMode];

  if (v3 && [v1 supportsNetworkProtection])
  {
    v4 = [v1 targetNetworkProtectionMode];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

BOOL shouldManageAccessory(void *a1)
{
  v1 = a1;
  if ([v1 supportsNetworkProtection])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 wiFiUniquePreSharedKey];
    if (v3)
    {
      v2 = 1;
    }

    else
    {
      v4 = [v1 networkClientIdentifier];
      v2 = v4 != 0;
    }
  }

  return v2;
}

void sub_22A16CD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A16D4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A16D84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDNetworkRouterCredential *networkRouterCredentialForAccessory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(HMDNetworkRouterCredential);
  v6 = [v3 wiFiUniquePreSharedKey];

  if (v6)
  {
    v7 = [v3 wiFiUniquePreSharedKey];
    [(HMDNetworkRouterCredential *)v5 setPsk:v7];
  }

  else
  {
    [(HMDNetworkRouterCredential *)v5 setMacAddress:v4];
  }

  return v5;
}

void sub_22A16E474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1705D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1714F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __HMDCreateUniquePSKClientConfiguration_block_invoke_2;
    v7[3] = &unk_2786800B0;
    v10 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 addClientConfiguration:v6 completion:v7];
  }
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [HMDAccessoryNetworkCredential alloc];
    v6 = [*(a1 + 32) uuid];
    v7 = [(HMDAccessoryNetworkCredential *)v5 initWithNetworkRouterUUID:v6 clientIdentifier:v8 wiFiPSK:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_22A1785E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id keyFromSelector(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  if ([v1 hasPrefix:@"set"] && objc_msgSend(v1, "length") != 3)
  {
    v2 = [v1 substringWithRange:{3, 1}];
    v3 = [v2 lowercaseString];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = v1;

      goto LABEL_7;
    }

    v6 = [v2 lowercaseString];
    v7 = [v1 substringWithRange:{4, objc_msgSend(v1, "length") - 5}];
    v8 = [v6 stringByAppendingString:v7];

    v1 = v8;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

void setPropertyIMP(void *a1, const char *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = keyFromSelector(a2);
  if (![v5 propertyIsReadOnly:v8])
  {
    v14 = [objc_opt_class() properties];
    v15 = [v14 objectForKey:v8];
    v16 = [v15 classObj];

    if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = MEMORY[0x277CBEAD8];
      v23 = *MEMORY[0x277CBE658];
      v24 = MEMORY[0x277CCACA8];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromClass(v16);
      v28 = [v24 stringWithFormat:@"Property for parameter %@ was supplied as %@, but was expected to be %@.", v8, v26, v27];
      v29 = [v22 exceptionWithName:v23 reason:v28 userInfo:0];
      v30 = v29;

      objc_exception_throw(v29);
    }

    if (v5[1])
    {
      if (v6)
      {
LABEL_9:
        v17 = v5[1];
        v18 = [v8 hmf_stringWithSmallestEncoding];
        [v17 setValue:v6 forKey:v18];

        goto LABEL_10;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CBEB38] dictionary];
      v21 = v5[1];
      v5[1] = v20;

      if (v6)
      {
        goto LABEL_9;
      }
    }

    v6 = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v5;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    *buf = 138544130;
    v32 = v12;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to write property %@ from %@, unwritable in homed data version %@.", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_22A18381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A184080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDStructuredDataTokenTypeAsString(uint64_t a1)
{
  if ((a1 + 2) >= 0xF)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%zd)", a1];
  }

  else
  {
    v2 = off_2786805C8[a1 + 2];
  }

  return v2;
}

uint64_t HMDStructuredDataErrorWithReason(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15 reason:v11];

  return -2;
}

void sub_22A188B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__211009(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A193FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__213133(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A195DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 144));
  _Unwind_Resume(a1);
}

void sub_22A196C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDUserDataControllerStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_278680C78[a1];
  }

  return v1;
}

uint64_t HMDRemoteEventRouterProtoFetchEventsMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
        [a1 addTopics:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22A1A8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1A93E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1AEC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1C1A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1C82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__219319(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isIrrecoverableError(void *a1)
{
  v1 = a1;
  if ([v1 isHMError] && (objc_msgSend(v1, "code") == 90 || objc_msgSend(v1, "code") == 79 || objc_msgSend(v1, "code") == 52 || objc_msgSend(v1, "code") == 96 || objc_msgSend(v1, "code") == 13 || objc_msgSend(v1, "code") == 11 || objc_msgSend(v1, "code") == 55))
  {
    goto LABEL_30;
  }

  if (![v1 isHAPError])
  {
    goto LABEL_40;
  }

  if ([v1 code] != 20 && objc_msgSend(v1, "code") != 21 && objc_msgSend(v1, "code") != 22 && objc_msgSend(v1, "code") != 23 && objc_msgSend(v1, "code") != 26 && objc_msgSend(v1, "code") != 25 && objc_msgSend(v1, "code") != 34 && objc_msgSend(v1, "code") != 9 && objc_msgSend(v1, "code") != 12 && objc_msgSend(v1, "code") != 10 && objc_msgSend(v1, "code") != 11 && objc_msgSend(v1, "code") != 18 && objc_msgSend(v1, "code") != 7 && objc_msgSend(v1, "code") != 3 && objc_msgSend(v1, "code") != 15 && objc_msgSend(v1, "code") != 17 && objc_msgSend(v1, "code") != 16 && objc_msgSend(v1, "code") != 35 && objc_msgSend(v1, "code") != 36 && objc_msgSend(v1, "code") != 30)
  {
    if ([v1 code] == 13 || objc_msgSend(v1, "code") == 14 || objc_msgSend(v1, "code") == 2 || objc_msgSend(v1, "code") == 1)
    {
      v3 = [v1 userInfo];
      v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      objc_opt_class();
      v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
      v6 = v5;

      if (v6)
      {
        v7 = MEMORY[0x277CCA9B8];
        v8 = [v6 domain];
        v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v6 userInfo:{"code"), 0}];
        v2 = isIrrecoverableError();

LABEL_41:
        goto LABEL_42;
      }
    }

LABEL_40:
    v6 = [v1 domain];
    v2 = [v6 isEqualToString:*MEMORY[0x277CD5120]];
    goto LABEL_41;
  }

LABEL_30:
  v2 = 1;
LABEL_42:

  return v2;
}

id _normalizeSetupCode(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x277CFEC30] isValidSetupCode:v1] || objc_msgSend(v1, "length") != 8)
  {
    v3 = v1;
  }

  else
  {
    v2 = [v1 mutableCopy];
    [v2 insertString:@"-" atIndex:3];
    [v2 insertString:@"-" atIndex:6];
    v3 = [v2 copy];
  }

  return v3;
}

void sub_22A1D4A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 88));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Block_object_dispose((v44 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22A1D88DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1DA1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1DB31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1DFCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__220754(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A1E26BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1E7A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A1E8974(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1E8A04(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1F0CF8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1F0D88(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id observerMatchingConnection(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 observedObject];
        v10 = HMFEqualObjects();

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_22A1F1774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_22A1F1D58(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1F521C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getAccessoryAuthorizationsSettingsSerializedFilePath(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v4 = [v1 stringWithFormat:@"%@/HMDHome-Authorization-Data-%@.plist", v3, v2];

  return v4;
}

void sub_22A1F8280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A1FAC10(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1FACC4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1FAF80(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1FB240(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A1FB2F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A202190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createHMFNetAddressFromIPAddressString(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 UTF8String];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  *v11 = xmmword_22A587040;
  if (inet_pton(2, v3, &v11[4]) == 1 || (*v11 = xmmword_22A587CE8, *&v11[12] = *(&xmmword_22A587CE8 + 12), inet_pton(30, v3, &v11[8]) == 1))
  {
    v4 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v11];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *v11 = 138543618;
      *&v11[4] = v8;
      *&v11[12] = 2112;
      *&v11[14] = v1;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@'%@' is not a valid IPv4 or IPv6 address string", v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

void __validateHostNameForWANFirewallRule_block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(?=[^*]*(?:\\*(?:[^*]+|$)){0 options:2}$)[a-zA-Z0-9*](?:[a-zA-Z0-9*-]*[a-zA-Z0-9*])?$" error:{0, 0}];
  v1 = validateHostNameForWANFirewallRule_componentRegex;
  validateHostNameForWANFirewallRule_componentRegex = v0;
}

uint64_t decodeStringFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v24 = 0;
  v9 = decodeValueFromJSONDictionary(v7, v8, a3, &v24);
  v10 = v24;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = v10;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if ((isKindOfClass & 1) != 0 && [v12 length])
      {
        v16 = v12;
        *a4 = v12;
        v17 = 1;
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = objc_opt_class();
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          v26 = v21;
          v27 = 2112;
          v28 = v8;
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v17 = 0;
      }
    }

    else
    {
      *a4 = 0;
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t decodeValueFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    *a4 = v10;
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  if (!a3)
  {
    *a4 = 0;
    goto LABEL_8;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_opt_class();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@JSON contains no '%@' value: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t decodeUnsignedIntegerFromJSONDictionary(void *a1, void *a2, int a3, unint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v27 = 0;
  v11 = decodeValueFromJSONDictionary(v9, v10, a3, &v27);
  v12 = v27;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      v14 = v12;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if ((isKindOfClass & 1) != 0 && [v14 unsignedLongLongValue] <= a4 && (v18 = CFGetTypeID(v14), v18 != CFBooleanGetTypeID()))
      {
        v26 = v14;
        *a5 = v14;
        v23 = 1;
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = objc_opt_class();
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v29 = v22;
          v30 = 2112;
          v31 = v10;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = 0;
      }
    }

    else
    {
      *a5 = 0;
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t decodeAddressFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v20 = 0;
  v9 = decodeStringFromJSONDictionary(v7, v8, a3, &v20);
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = createHMFNetAddressFromIPAddressString(v10);
      *a4 = v12;
      if (!v12)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = objc_opt_class();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543874;
          v22 = v16;
          v23 = 2112;
          v24 = v8;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' address: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        goto LABEL_7;
      }
    }

    else
    {
      *a4 = 0;
    }

    v17 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v17 = 0;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t decodeTimeFromJSONDictionary(void *a1, void *a2, void *a3)
{
  v8 = 0;
  v4 = decodeUnsignedIntegerFromJSONDictionary(a1, a2, 1, 0xFFFFFFFFuLL, &v8);
  v5 = v8;
  v6 = v5;
  if (v4)
  {
    *a3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v5, "unsignedLongValue")}];
  }

  return v4;
}

uint64_t decodePortFromJSONDictionary(void *a1, void *a2, int a3, _WORD *a4, BOOL *a5)
{
  v12 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(a1, a2, a3, 0xFFFFuLL, &v12);
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    if (a5)
    {
      *a5 = v8 != 0;
    }

    if (v8)
    {
      v10 = [v8 unsignedShortValue];
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
  }

  return v7;
}

void sub_22A20AB04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22A20D1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__223849(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A20D8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _findResidentMatching(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 idsIdentifier];
  v6 = [v3 idsDestination];
  v7 = [HMDDeviceAddress addressWithIDSIdentifier:v5 idsDestination:v6];

  isMKFResidentCurrentDevice = _isMKFResidentCurrentDevice(v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___findResidentMatching_block_invoke;
  v14[3] = &unk_278681C08;
  v17 = isMKFResidentCurrentDevice;
  v15 = v3;
  v16 = v7;
  v9 = v7;
  v10 = v3;
  v11 = [v4 objectsPassingTest:v14];

  v12 = [v11 anyObject];

  return v12;
}

uint64_t _isMKFResidentCurrentDevice(void *a1)
{
  v1 = [a1 appleMediaAccessory];
  v2 = [v1 identifier];
  v3 = _mediaRouteIdentifier;
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t ___findResidentMatching_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentDevice] && (*(a1 + 48) & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 device];
    v6 = [v5 identifier];
    v7 = [*(a1 + 32) device];
    v8 = [v7 identifier];
    if ([v6 isEqual:v8])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isDeviceEquivalentToDeviceAddress:*(a1 + 40)];
    }
  }

  return v4;
}

void sub_22A210AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A212230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCoreDataTransactionAuthorAsString(uint64_t a1)
{
  if ((a1 - 2) > 9)
  {
    return @"HMD.Unknown";
  }

  else
  {
    return off_278681C50[a1 - 2];
  }
}

uint64_t shouldCreateHybridMatterAccessoryFromServer(void *a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 featuresDataSource];
  v6 = [v5 isRVCEnabled];

  if (v6)
  {
    v7 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      v13 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v10 = [v4 matterAccessories];
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __shouldCreateHybridMatterAccessoryFromServer_block_invoke;
    v42 = &unk_278681CA8;
    v43 = v7;
    v11 = [v10 na_firstObjectPassingTest:&v39];

    v12 = v11;
    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if ((v10 & 1) != 0 && v12)
    {
      v13 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v14 = [v4 primaryResident];
    v15 = v14;
    if (v14 && [v14 supportsNativeMatterPlugin] && !objc_msgSend(v4, "isCurrentDeviceConfirmedPrimaryResident"))
    {
      v13 = 0;
      goto LABEL_23;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v9 matterDeviceTypeID];
      v20 = [v9 clusterIDCharacteristicMap];
      *buf = 138544130;
      *&buf[4] = v18;
      v45 = 2112;
      v46 = v9;
      v47 = 2112;
      v48 = v19;
      v49 = 2112;
      v50 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Checking if we should use HAP+Matter accessory for server: %@, deviceType: %@ and %@", buf, 0x2Au);
    }

    v38 = v15;

    objc_autoreleasePoolPop(v16);
    v21 = v9;
    v22 = [v21 matterDeviceTypeID];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = [v21 productID];
      v25 = [v21 vendorID];
      v26 = [v21 browser];
      v27 = [v26 vendorMetadataStore];
      v28 = [v27 retrieveVendorMetadataForVendorID:v25 productID:v24];

      v29 = [v28 productWithID:v24];
      v23 = [v29 deviceTypeID];

      if (!v23)
      {
        goto LABEL_21;
      }
    }

    v30 = [MEMORY[0x277D17B68] protocolMap];
    *buf = v23;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
    v32 = [v30 categoriesForDeviceTypes:v31];
    v33 = [v32 firstObject];

    if (v33)
    {
      v34 = [MEMORY[0x277CD1680] categoryWithCategoryIdentifier:v33];
      v35 = [v34 categoryType];
      v13 = [v35 isEqual:*MEMORY[0x277CCE8C8]] ^ 1;

LABEL_22:
      v15 = v38;

LABEL_23:
      goto LABEL_24;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v13 = 0;
LABEL_26:

  v36 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __shouldCreateHybridMatterAccessoryFromServer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrimary])
  {
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t shouldCreateNativeMatterAccessoryFromServer(void *a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 featuresDataSource];
  v6 = [v5 isRVCEnabled];

  if (v6)
  {
    v7 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      v13 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v10 = [v4 matterAccessories];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __shouldCreateNativeMatterAccessoryFromServer_block_invoke;
    v46[3] = &unk_278681CA8;
    v47 = v7;
    v11 = [v10 na_firstObjectPassingTest:v46];

    v12 = v11;
    objc_opt_class();
    LOBYTE(v10) = objc_opt_isKindOfClass();

    if ((v10 & 1) != 0 && v12)
    {
      v13 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v14 = [v4 primaryResident];
    v15 = v14;
    if (!v14)
    {
LABEL_15:
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v9 matterDeviceTypeID];
        v20 = [v9 clusterIDCharacteristicMap];
        *buf = 138544130;
        v53 = v18;
        v54 = 2112;
        v55 = v9;
        v56 = 2112;
        v57 = v19;
        v58 = 2112;
        v59 = v20;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Checking if we should use native matter accessory for server: %@, deviceType: %@ and %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v21 = v9;
      v22 = [MEMORY[0x277D17B68] protocolMap];
      v23 = [v22 nativeMatterDeviceTypes];

      v24 = [v21 matterDeviceTypeID];
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        v43 = v15;
        v30 = [v21 productID];
        v44 = [v21 vendorID];
        v31 = [v21 browser];
        v32 = [v31 vendorMetadataStore];
        v33 = [v32 retrieveVendorMetadataForVendorID:v44 productID:v30];

        v34 = [v33 productWithID:v30];
        v25 = [v34 deviceTypeID];

        if (!v25)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v37 = [v21 endpointToDeviceTypesMap];
          v25 = [v37 allValues];

          v13 = [v25 countByEnumeratingWithState:&v48 objects:buf count:16];
          if (v13)
          {
            v45 = v23;
            v42 = v21;
            v38 = *v49;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v49 != v38)
                {
                  objc_enumerationMutation(v25);
                }

                v40 = [MEMORY[0x277CBEB98] setWithArray:{*(*(&v48 + 1) + 8 * i), v42}];
                v41 = [v40 intersectsSet:v45];

                if (v41)
                {
                  v13 = 1;
                  goto LABEL_43;
                }
              }

              v13 = [v25 countByEnumeratingWithState:&v48 objects:buf count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

LABEL_43:
            v21 = v42;
            v15 = v43;
            v23 = v45;
          }

          else
          {
            v15 = v43;
          }

          goto LABEL_24;
        }

        v15 = v43;
      }

      v13 = [v23 containsObject:v25];
LABEL_24:

LABEL_29:
      goto LABEL_30;
    }

    if ([v14 supportsNativeMatterPlugin])
    {
      if (!v12 || ([v4 isCurrentDeviceConfirmedPrimaryResident] & 1) != 0)
      {
        goto LABEL_15;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v28;
        v29 = "%{public}@Primary resident should handle creating native matter";
        goto LABEL_27;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v28;
        v29 = "%{public}@Resident doesn't support native matter plugin";
LABEL_27:
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, v29, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v26);
    v13 = 0;
    goto LABEL_29;
  }

  v13 = 0;
LABEL_32:

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __shouldCreateNativeMatterAccessoryFromServer_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrimary])
  {
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id HMDSortedServiceTypeUUIDsFromStrings(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSString:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [v2 sortUsingSelector:sel_compare_];
  v9 = [v2 copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id serviceTypeUUIDsForAccessory(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [a1 services];
  if ([v1 count])
  {
    v2 = +[HMDHAPMetadata getSharedInstance];
    v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 type];
          if (([v2 shouldFilterServiceOfType:v10] & 1) == 0)
          {
            v11 = [v9 type];
            [v3 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v12 = [v3 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void HMDPopulateAccessoryModelFromHAPAccessory(void *a1, void *a2, uint64_t a3, void *a4)
{
  v87[3] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setCertificationStatus:v10];

  v11 = [v8 name];
  v12 = [v11 copy];
  [v7 setProvidedName:v12];

  v13 = [v8 category];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = +[HMDHAPMetadata getSharedInstance];
    v17 = [v16 categoryForOther];
    v15 = [v17 identifier];
  }

  [v7 setAccessoryCategory:v15];
  [v7 setInitialCategoryIdentifier:v15];
  v18 = [v8 model];
  [v7 setModel:v18];

  v19 = [v8 model];
  [v7 setInitialModel:v19];

  v20 = [v8 manufacturer];
  [v7 setManufacturer:v20];

  v21 = [v8 manufacturer];
  [v7 setInitialManufacturer:v21];

  v22 = [v8 firmwareVersion];
  [v7 setFirmwareVersion:v22];

  v23 = [v8 server];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v67 = v23;

  v66 = v25;
  if (v25)
  {
    v26 = [v8 services];
    v27 = [v26 na_filter:&__block_literal_global_225222];
    v28 = [v27 na_map:&__block_literal_global_137_225223];
    v29 = [v28 firstObject];

    if (v29)
    {
      [v7 setDisplayableFirmwareVersion:v29];
    }
  }

  v30 = serviceTypeUUIDsForAccessory(v8);
  v65 = v30;
  if (v30)
  {
    v31 = HMDSortedServiceTypeUUIDsFromStrings(v30);
    [v7 setInitialServiceTypes:v31];
  }

  else
  {
    [v7 setInitialServiceTypes:0];
  }

  v68 = v15;
  v32 = [v8 serialNumber];
  [v7 setSerialNumber:v32];

  v33 = [v8 sleepInterval];
  [v7 setSleepInterval:v33];

  if (v9)
  {
    [v7 setHostAccessory:v9];
    v34 = [v9 room];
    [v7 setRoom:v34];
  }

  v69 = v9;
  v86[0] = @"HM.serverIdentifier";
  v35 = [v8 serverIdentifier];
  v87[0] = v35;
  v86[1] = @"HM.instanceID";
  v36 = [v8 instanceID];
  v87[1] = v36;
  v86[2] = @"linkType";
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "linkType")}];
  v87[2] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];

  v64 = v38;
  v39 = [MEMORY[0x277CBEB18] arrayWithObject:v38];
  if ([v8 linkType] == 1)
  {
    v40 = [v8 servicesOfType:@"00000701-0000-1000-8000-0026BB765291"];
    v41 = [v40 count];

    if (v41)
    {
      v84[0] = @"HM.serverIdentifier";
      v42 = [v8 serverIdentifier];
      v85[0] = v42;
      v84[1] = @"HM.instanceID";
      v43 = [v8 instanceID];
      v84[2] = @"linkType";
      v85[1] = v43;
      v85[2] = &unk_283E74768;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];

      [v39 addObject:v44];
    }
  }

  v63 = v39;
  [v7 setTransportInformation:v39];
  v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "communicationProtocol")}];
  [v7 setCommunicationProtocol:v45];

  v46 = [v8 uniqueIdentifier];
  [v7 setUniqueIdentifier:v46];

  v47 = [v8 identifier];
  [v7 setIdentifier:v47];

  v48 = [v8 identifier];
  v71 = 0;
  v49 = [MEMORY[0x277CFEC78] systemStore];
  v70 = 0;
  v50 = [v49 readPublicKeyForAccessoryName:v48 registeredWithHomeKit:&v71 error:&v70];
  v51 = v70;

  if (!v51 && v48 && v50 && v71 == 1)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = HMFGetOSLogHandle();
    v54 = v69;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      v56 = [v8 name];
      *buf = 138544130;
      v73 = v55;
      v74 = 2112;
      v75 = v56;
      v76 = 2112;
      v77 = v48;
      v78 = 2112;
      v79 = v50;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ setting pairing username and pubkey to ('%@', '%@')", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v52);
    [v7 setPairingUsername:v48];
    [v7 setPublicKey:v50];
  }

  else
  {
    v57 = objc_autoreleasePoolPush();
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      v60 = [v7 providedName];
      v61 = HMFBooleanToString();
      *buf = 138544642;
      v73 = v59;
      v74 = 2112;
      v75 = v60;
      v76 = 2112;
      v77 = v48;
      v78 = 2112;
      v79 = v50;
      v80 = 2112;
      v81 = v61;
      v82 = 2112;
      v83 = v51;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ - failed to read public key(%@)/pairing username(%@) homeKitRegistered(%@) - error %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v57);
    v54 = v69;
  }

  [HMDHome updateCHIPPropertiesOnMKFAccessoryModel:v7 forAddedHAPAccessoryServer:v67];

  v62 = *MEMORY[0x277D85DE8];
}

id __HMDPopulateAccessoryModelFromHAPAccessory_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristics];
  v3 = [v2 na_filter:&__block_literal_global_140_225228];
  v4 = [v3 na_map:&__block_literal_global_143];
  v5 = [v4 firstObject];

  return v5;
}

void *__HMDPopulateAccessoryModelFromHAPAccessory_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 value];
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

  return v3;
}

uint64_t __HMDPopulateAccessoryModelFromHAPAccessory_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqual:*MEMORY[0x277CCF8B8]];

  return v3;
}

uint64_t __HMDPopulateAccessoryModelFromHAPAccessory_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqual:*MEMORY[0x277CD0DD0]];

  return v3;
}

id HMDNewModelsFromHAPServices(void *a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v60 = a2;
  v4 = +[HMDHAPMetadata getSharedInstance];
  v59 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v3;
  v63 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  if (v63)
  {
    v5 = *v80;
    v68 = *MEMORY[0x277CD2138];
    v66 = *MEMORY[0x277CD2190];
    v67 = *MEMORY[0x277CD21A8];
    v65 = *MEMORY[0x277CD2148];
    v57 = *v80;
    v58 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v80 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v6;
        v7 = *(*(&v79 + 1) + 8 * v6);
        v8 = [v7 type];
        v9 = [v4 shouldFilterServiceOfType:v8];

        if ((v9 & 1) == 0)
        {
          v10 = [v7 instanceID];
          v11 = [v60 materializeOrCreateServicesRelationWithInstanceID:v10 createdNew:0];

          v12 = objc_alloc(MEMORY[0x277CCAD78]);
          v13 = [v7 type];
          v14 = [v12 initWithUUIDString:v13];
          [v11 setServiceType:v14];

          v15 = [v7 linkedServices];
          v16 = [v15 copy];
          [v11 setLinkedServices:v16];

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "serviceProperties")}];
          [v11 setServiceProperties:v17];

          v18 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;

          v21 = [v20 endpoint];

          [v11 setMatterEndpointID:v21];
          [v59 addObject:v11];
          v22 = v18;
          v72 = v11;
          v23 = +[HMDHAPMetadata getSharedInstance];
          v24 = MEMORY[0x277CBEB58];
          v25 = [v22 characteristics];
          v71 = [v24 setWithCapacity:{objc_msgSend(v25, "count")}];

          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v62 = v22;
          v74 = [v22 characteristics];
          v26 = [v74 countByEnumeratingWithState:&v83 objects:v90 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v84;
            v69 = *v84;
            v70 = v23;
            do
            {
              v29 = 0;
              v73 = v27;
              do
              {
                if (*v84 != v28)
                {
                  objc_enumerationMutation(v74);
                }

                v30 = *(*(&v83 + 1) + 8 * v29);
                v31 = [v30 type];
                v32 = [v23 shouldFilterCharacteristicOfType:v31];

                if ((v32 & 1) == 0)
                {
                  v33 = [v30 metadata];
                  v78 = [v33 constraints];
                  v75 = [HMDCharacteristicMetadata alloc];
                  v34 = [v78 minimumValue];
                  v35 = [v78 maximumValue];
                  v36 = [v78 stepValue];
                  v37 = [v78 maxLength];
                  v38 = [v78 validValues];
                  v77 = v33;
                  v39 = [v33 format];
                  v40 = [v33 units];
                  v41 = [v33 manufacturerDescription];
                  v76 = [(HMDCharacteristicMetadata *)v75 initWithMinimumValue:v34 maximumValue:v35 stepValue:v36 maxLength:v37 validValues:v38 format:v39 units:v40 manufacturerDescription:v41];

                  v42 = MEMORY[0x277CBEB38];
                  v88[0] = v68;
                  v43 = [v30 instanceID];
                  v89[0] = v43;
                  v88[1] = v67;
                  v44 = [v30 type];
                  v89[1] = v44;
                  v88[2] = v66;
                  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v30, "properties")}];
                  v89[2] = v45;
                  v88[3] = v65;
                  v46 = [(HMDCharacteristicMetadata *)v76 dictionaryRepresentation];
                  v89[3] = v46;
                  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
                  v48 = [v42 dictionaryWithDictionary:v47];

                  v23 = v70;
                  v49 = [v77 format];
                  v50 = [HMDServiceTransaction cd_modelTypeForCharacteristicFormat:v49];

                  v51 = [v30 instanceID];
                  v52 = [v72 materializeOrCreateCharacteristicsRelationOfType:v50 instanceID:v51 createdNew:0];

                  [v52 pr_updateWithDictionary:v48];
                  [v71 addObject:v52];

                  v28 = v69;
                  v27 = v73;
                }

                ++v29;
              }

              while (v27 != v29);
              v27 = [v74 countByEnumeratingWithState:&v83 objects:v90 count:16];
            }

            while (v27);
          }

          v53 = [v71 copy];
          v5 = v57;
          v4 = v58;
        }

        v6 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v63);
  }

  v54 = [v59 copy];
  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

id HMDAddToTransactionBlockFromHAPAccessoryModel(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v52 = a1;
  v9 = a2;
  v10 = a3;
  v51 = a4;
  v11 = a5;
  v12 = HMDCastIfManagedObjectBSORepresentable(v9);
  v58 = 0;
  v13 = [v12 hmd_modelsWithChangeType:1 detached:1 createManagedObject:0 error:&v58];
  v14 = v58;
  v15 = [v13 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v17 roomUUID];

    if (!v18)
    {
      v19 = [v10 roomForEntireHome];
      v20 = [v19 uuid];
      v21 = [v20 UUIDString];
      [v17 setRoomUUID:v21];
    }

    v49 = [v11 uuidForKey:@"HMDHostAccessoryIdentifierMessageKey"];
    v50 = v17;
    if (v49)
    {
      v22 = [v17 hostAccessoryUUID];

      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v22)
      {
        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v50 hostAccessoryUUID];
          *buf = 138544130;
          v61 = v26;
          v62 = 2112;
          v63 = v49;
          v64 = 2112;
          v65 = v9;
          v66 = 2112;
          v67 = v27;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Not setting host UUID: %@ from message on accessory model: %@ as it was already set on the model to: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v23);
        v17 = v50;
      }

      else
      {
        if (v25)
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543874;
          v61 = v29;
          v62 = 2112;
          v63 = v49;
          v64 = 2112;
          v65 = v9;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Setting host UUID: %@ from message on accessory model: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v30 = [v49 UUIDString];
        v17 = v50;
        [v50 setHostAccessoryUUID:v30];
      }
    }

    v31 = [v10 uuid];
    [v17 setParentUUIDIfNotNil:v31];

    [v17 setConfigurationTracker:v51];
    [v52 add:v17 withMessage:v11];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v32 = [v9 services];
    v33 = [v32 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v33)
    {
      v34 = v33;
      v45 = v12;
      v46 = v11;
      v47 = v10;
      v48 = v9;
      v35 = *v55;
      while (2)
      {
        v36 = 0;
        v37 = v14;
        do
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = HMDCastIfManagedObjectBSORepresentable(*(*(&v54 + 1) + 8 * v36));
          v53 = v37;
          v39 = [v38 hmd_modelsWithChangeType:1 detached:0 createManagedObject:0 error:&v53];
          v14 = v53;

          v40 = [v39 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v40;
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          if (!v42)
          {
            v14 = v14;

            v28 = v14;
            goto LABEL_29;
          }

          [v42 setConfigurationTracker:v51];
          [v52 add:v42];

          ++v36;
          v37 = v14;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }

      v28 = 0;
LABEL_29:
      v10 = v47;
      v9 = v48;
      v12 = v45;
      v11 = v46;
    }

    else
    {
      v28 = 0;
    }

    v17 = v50;
  }

  else
  {
    v14 = v14;
    v28 = v14;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v28;
}

HMDManagedObjectCodingModel *HMDRemoteAddCodingModel()
{
  v0 = [HMDManagedObjectCodingModel alloc];
  v1 = +[HMDCoreData managedObjectModel];
  v2 = [(HMDManagedObjectCodingModel *)v0 initWithModel:v1 configNamespace:@"remoteAdd" rootEntityName:@"MKFHAPAccessory"];

  return v2;
}

void sub_22A222E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2246CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

__CFString *HMDFMFStatusAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDFMFStatus %tu", a1];
  }

  else
  {
    v2 = off_278681F68[a1];
  }

  return v2;
}

__CFString *changeTypeAsNSString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a1];
  }

  else
  {
    v2 = off_278681F88[a1];
  }

  return v2;
}

void __sort(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count] >= 2)
  {
    v2 = [v1 mutableCopy];
    v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v1;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v54;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v54 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v53 + 1) + 8 * i) change];
          v10 = [v9 uuid];
          [v3 addObject:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v6);
    }

    v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = [v2 count];
    v13 = 0;
    v38 = v12 & ~(v12 >> 63);
    v39 = v4;
    v42 = v2;
    while ([v2 count])
    {
      v40 = v13;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [v2 copy];
      v14 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v14)
      {
        v15 = v14;
        v44 = *v50;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v50 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v49 + 1) + 8 * j);
            v18 = [MEMORY[0x277CBEB58] set];
            v19 = [v17 change];
            v20 = [v19 parentUUID];

            if (v20)
            {
              v21 = [v17 change];
              v22 = [v21 parentUUID];
              [v18 addObject:v22];
            }

            v23 = [v17 dependentUUIDs];
            v24 = [v23 allObjects];
            [v18 addObjectsFromArray:v24];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v25 = v18;
            v26 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v46;
              while (2)
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v46 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v45 + 1) + 8 * k);
                  if ([v3 containsObject:v30] && !objc_msgSend(v11, "containsObject:", v30))
                  {

                    goto LABEL_29;
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            [v41 addObject:v17];
            v31 = [v17 change];
            v32 = [v31 uuid];
            [v11 addObject:v32];

            [v42 removeObject:v17];
LABEL_29:
          }

          v15 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v15);
      }

      v4 = v39;
      v13 = v40 + 1;
      v2 = v42;
      if (v40 == v38)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v35;
          v59 = 2112;
          v60 = v42;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Possible circular dependency in %@, trying to continue", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [v41 addObjectsFromArray:v42];
        [v42 removeAllObjects];
        break;
      }
    }

    [v4 setArray:v41];

    v1 = v37;
  }

  v36 = *MEMORY[0x277D85DE8];
}

id __identifierForParentUUID(void *a1)
{
  v1 = __identifierForParentUUID_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&__identifierForParentUUID_onceToken, &__block_literal_global_1216);
  }

  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = __identifierForParentUUID_namespace;
  v5 = [v2 UUIDString];

  v6 = [v5 dataUsingEncoding:4];
  v7 = [v3 initWithNamespace:v4 data:v6];

  return v7;
}

void ____identifierForParentUUID_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"497A934F-F7DC-4596-BA43-9B1BBA077D55"];
  v1 = __identifierForParentUUID_namespace;
  __identifierForParentUUID_namespace = v0;
}

id __HMDDeviceCapabilitiesModelCodingKeyMapping()
{
  v65[61] = *MEMORY[0x277D85DE8];
  v64[0] = @"HM.keychainSync";
  v63 = NSStringFromSelector(sel_supportsKeychainSync);
  v65[0] = v63;
  v64[1] = @"HM.deviceSetup";
  v62 = NSStringFromSelector(sel_supportsDeviceSetup);
  v65[1] = v62;
  v64[2] = @"HM.keyTransferClient";
  v61 = NSStringFromSelector(sel_supportsKeyTransferClient);
  v65[2] = v61;
  v64[3] = @"HM.keyTransferServer";
  v60 = NSStringFromSelector(sel_supportsKeyTransferServer);
  v65[3] = v60;
  v64[4] = @"HM.standalone";
  v59 = NSStringFromSelector(sel_supportsStandaloneMode);
  v65[4] = v59;
  v64[5] = @"HM.cloudDataSync";
  v58 = NSStringFromSelector(sel_supportsCloudDataSync);
  v65[5] = v58;
  v64[6] = @"HM.WHA";
  v57 = NSStringFromSelector(sel_supportsWholeHouseAudio);
  v65[6] = v57;
  v64[7] = @"HM.assistantAC";
  v56 = NSStringFromSelector(sel_supportsAssistantAccessControl);
  v65[7] = v56;
  v64[8] = @"HM.resident";
  v55 = NSStringFromSelector(sel_residentCapable);
  v65[8] = v55;
  v64[9] = @"HM.remoteGateway";
  v54 = NSStringFromSelector(sel_remoteGatewayCapable);
  v65[9] = v54;
  v64[10] = @"HM.homeInvitation";
  v53 = NSStringFromSelector(sel_supportsHomeInvitation);
  v65[10] = v53;
  v64[11] = @"HM.targetControl";
  v52 = NSStringFromSelector(sel_supportsTargetControl);
  v65[11] = v52;
  v64[12] = @"HM.multiUser";
  v51 = NSStringFromSelector(sel_supportsMultiUser);
  v65[12] = v51;
  v64[13] = @"HM.homeLevelLocationServiceSetting";
  v50 = NSStringFromSelector(sel_supportsHomeLevelLocationServiceSetting);
  v65[13] = v50;
  v64[14] = @"HM.restart";
  v49 = NSStringFromSelector(sel_supportsCompanionInitiatedRestart);
  v65[14] = v49;
  v64[15] = @"HM.obliterate";
  v48 = NSStringFromSelector(sel_supportsCompanionInitiatedObliterate);
  v65[15] = v48;
  v64[16] = @"HM.camRec";
  v47 = NSStringFromSelector(sel_supportsCameraRecording);
  v65[16] = v47;
  v64[17] = @"HM.routerManagement";
  v46 = NSStringFromSelector(sel_supportsRouterManagement);
  v65[17] = v46;
  v64[18] = @"HM.shortcutAction";
  v45 = NSStringFromSelector(sel_supportsShortcutActions);
  v65[18] = v45;
  v64[19] = @"HM.mediaActions";
  v44 = NSStringFromSelector(sel_supportsMediaActions);
  v65[19] = v44;
  v64[20] = @"HM.firmwareUpdate";
  v43 = NSStringFromSelector(sel_supportsFirmwareUpdate);
  v65[20] = v43;
  v64[21] = @"HM.residentFirmwareUpdate";
  v42 = NSStringFromSelector(sel_supportsResidentFirmwareUpdate);
  v65[21] = v42;
  v64[22] = @"HM.cameraActivityZones";
  v41 = NSStringFromSelector(sel_supportsCameraActivityZones);
  v65[22] = v41;
  v64[23] = @"HM.createMusicAlarm";
  v40 = NSStringFromSelector(sel_supportsMusicAlarm);
  v65[23] = v40;
  v64[24] = @"HM.faceClassification";
  v39 = NSStringFromSelector(sel_supportsFaceClassification);
  v65[24] = v39;
  v64[25] = @"HM.naturalLighting";
  v38 = NSStringFromSelector(sel_supportsNaturalLighting);
  v65[25] = v38;
  v64[26] = @"HM.IDSActivityMonitorPresence";
  v37 = NSStringFromSelector(sel_supportsIDSActivityMonitorPresence);
  v65[26] = v37;
  v64[27] = @"HM.cameraRecordingReachabilityNotifications";
  v36 = NSStringFromSelector(sel_supportsCameraRecordingReachabilityNotifications);
  v65[27] = v36;
  v64[28] = @"HM.announce";
  v35 = NSStringFromSelector(sel_supportsAnnounce);
  v65[28] = v35;
  v64[29] = @"HM.soundAnalysis";
  v34 = NSStringFromSelector(sel_supportsAudioAnalysis);
  v65[29] = v34;
  v64[30] = @"HM.supportsDropIn";
  v33 = NSStringFromSelector(sel_supportsDropIn);
  v65[30] = v33;
  v64[31] = @"HM.ThirdPartyMusic";
  v32 = NSStringFromSelector(sel_supportsThirdPartyMusic);
  v65[31] = v32;
  v64[32] = @"HM.preferredMediaUser";
  v31 = NSStringFromSelector(sel_supportsPreferredMediaUser);
  v65[32] = v31;
  v64[33] = @"HM.ThreadBorderRouter";
  v30 = NSStringFromSelector(sel_supportsThreadBorderRouter);
  v65[33] = v30;
  v64[34] = @"HM.siriEndpointSetup";
  v29 = NSStringFromSelector(sel_supportsSiriEndpointSetup);
  v65[34] = v29;
  v64[35] = @"HM.homeHub";
  v28 = NSStringFromSelector(sel_supportsHomeHub);
  v65[35] = v28;
  v64[36] = @"HM.lockNotificationContext";
  v27 = NSStringFromSelector(sel_supportsLockNotificationContext);
  v65[36] = v27;
  v64[37] = @"HM.wakeOnLAN";
  v26 = NSStringFromSelector(sel_supportsWakeOnLAN);
  v65[37] = v26;
  v64[38] = @"HM.audioReturnChannel";
  v25 = NSStringFromSelector(sel_supportsAudioReturnChannel);
  v65[38] = v25;
  v64[39] = @"HM.walletKey";
  v24 = NSStringFromSelector(sel_supportsWalletKey);
  v65[39] = v24;
  v64[40] = @"HM.cameraPackageDetection";
  v23 = NSStringFromSelector(sel_supportsCameraPackageDetection);
  v65[40] = v23;
  v64[41] = @"HM.coordinationDoorbellChime";
  v22 = NSStringFromSelector(sel_supportsCoordinationDoorbellChime);
  v65[41] = v22;
  v64[42] = @"HM.coordinationFreeDoorbellChime";
  v21 = NSStringFromSelector(sel_supportsCoordinationFreeDoorbellChime);
  v65[42] = v21;
  v64[43] = @"HM.TVOSUpdateManualUpdateAvailableNotification";
  v20 = NSStringFromSelector(sel_supportsTVOSUpdateManualUpdateAvailableNotification);
  v65[43] = v20;
  v64[44] = @"HM.accessCodes";
  v19 = NSStringFromSelector(sel_supportsAccessCodes);
  v65[44] = v19;
  v64[45] = @"HM.CHIP";
  v18 = NSStringFromSelector(sel_supportsCHIP);
  v65[45] = v18;
  v64[46] = @"HM.doorbellChime";
  v17 = NSStringFromSelector(sel_supportsDoorbellChime);
  v65[46] = v17;
  v64[47] = @"HM.userMediaSettings";
  v16 = NSStringFromSelector(sel_supportsUserMediaSettings);
  v65[47] = v16;
  v64[48] = @"HM.unifiedMediaNotifications";
  v15 = NSStringFromSelector(sel_supportsUnifiedMediaNotifications);
  v65[48] = v15;
  v64[49] = @"HM.managedConfigProfile";
  v14 = NSStringFromSelector(sel_supportsManagedConfigurationProfile);
  v65[49] = v14;
  v64[50] = @"HM.captiveNetworks";
  v13 = NSStringFromSelector(sel_supportsCaptiveNetworks);
  v65[50] = v13;
  v64[51] = @"HM.modernTransport";
  v0 = NSStringFromSelector(sel_supportsModernTransport);
  v65[51] = v0;
  v64[52] = @"HM.residentFirstAccessoryCommunication";
  v1 = NSStringFromSelector(sel_supportsResidentFirstAccessoryCommunication);
  v65[52] = v1;
  v64[53] = @"HM.messagedHomePodSettings";
  v2 = NSStringFromSelector(sel_supportsMessagedHomePodSettings);
  v65[53] = v2;
  v64[54] = @"HM.customDestinationMediaAction";
  v3 = NSStringFromSelector(sel_supportsCustomMediaApplicationDestination);
  v65[54] = v3;
  v64[55] = @"HM.threadNetworkCredentialSharing";
  v4 = NSStringFromSelector(sel_supportsThreadNetworkCredentialSharing);
  v65[55] = v4;
  v64[56] = @"HM.matterSharedAdminPairing";
  v5 = NSStringFromSelector(sel_supportsMatterSharedAdminPairing);
  v65[56] = v5;
  v64[57] = @"HM.appleTVRMV";
  v6 = NSStringFromSelector(sel_supportsRMVonAppleTV);
  v65[57] = v6;
  v64[58] = @"HM.justSiri";
  v7 = NSStringFromSelector(sel_supportsJustSiri);
  v65[58] = v7;
  v64[59] = @"HM.threadService";
  v8 = NSStringFromSelector(sel_supportsThreadService);
  v65[59] = v8;
  v64[60] = @"HM.matterOwnerCertFetch";
  v9 = NSStringFromSelector(sel_supportsMatterOwnerCertFetch);
  v65[60] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:61];

  v10 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL productSupportsKeychainSync(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  if (v2 > 5)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (((1 << v2) & 0x2A) == 0)
  {
    if (((1 << v2) & 0x11) == 0 && [v1 productClass] != 6)
    {
      v3 = [v1 productClass] != 4;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 1;
LABEL_6:

  return v3;
}

BOOL productSupportsDeviceSetup(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 4)
  {
    return v4 == 6;
  }

  v6 = *MEMORY[0x277D0F700];
  v7 = *(MEMORY[0x277D0F700] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsKeyTransferClient(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 productPlatform] == 1)
  {
    goto LABEL_7;
  }

  v8 = [v5 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v13 = *MEMORY[0x277D0F708];
  v14 = *(MEMORY[0x277D0F708] + 16);
  v10 = HMFOperatingSystemVersionCompare();

  if (v10 == -1)
  {
LABEL_7:
    v11 = [v5 productPlatform] == 5;
  }

  else
  {
    v11 = productSupportsKeychainSync(v5);
  }

  return v11;
}

BOOL productSupportsKeyTransferServer(void *a1)
{
  v1 = a1;
  if ([v1 productClass] == 4 && objc_msgSend(v1, "productPlatform") == 4)
  {
    v2 = [v1 softwareVersion];
    v3 = v2;
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    v8 = *MEMORY[0x277D0F708];
    v10 = *(MEMORY[0x277D0F708] + 16);
    if (HMFOperatingSystemVersionCompare() == -1)
    {
      v4 = 0;
    }

    else
    {
      v5 = [v1 softwareVersion];
      v6 = v5;
      if (v5)
      {
        [v5 operatingSystemVersion];
      }

      v9 = *MEMORY[0x277D0F728];
      v11 = *(MEMORY[0x277D0F728] + 16);
      v4 = HMFOperatingSystemVersionCompare() == -1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t productSupportsCloudDataSync(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = 1;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_16;
      }

      if (v4 == 2)
      {
        v6 = [v1 productClass] == 4;
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

  if (v4 != 3 && v4 != 5)
  {
    if (v4 == 4)
    {
      v8 = *MEMORY[0x277D0F708];
      v9 = *(MEMORY[0x277D0F708] + 16);
      v6 = HMFOperatingSystemVersionCompare() == 1;
LABEL_12:
      v5 = !v6;
      goto LABEL_16;
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

BOOL productSupportsWholeHouseAudio(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 == 6)
  {
    v5 = MEMORY[0x277D0F378];
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    v5 = MEMORY[0x277D0F360];
LABEL_7:
    v7 = *v5;
    v8 = *(v5 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsAssistantAccessControl(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F2B0];
  v7 = *(MEMORY[0x277D0F2B0] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productIsResidentCapable(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 4)
  {
    return v4 == 6;
  }

  v6 = *MEMORY[0x277D0F708];
  v7 = *(MEMORY[0x277D0F708] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsHomeInvitation(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = 1;
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v2 == 2 && [v1 productClass] != 6)
    {
      v3 = [v1 productClass] != 4;
      goto LABEL_9;
    }

LABEL_8:
    v3 = 0;
  }

LABEL_9:

  return v3;
}

BOOL productSupportsTargetControl(void *a1)
{
  v1 = a1;
  if ([v1 productClass] == 4)
  {
    v2 = [v1 softwareVersion];
    v3 = v2;
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    v6 = *MEMORY[0x277D0F420];
    v7 = *(MEMORY[0x277D0F420] + 16);
    v4 = HMFOperatingSystemVersionCompare() != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL productSupportsMultiUser(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 == 6)
  {
    v5 = MEMORY[0x277D0F748];
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    v5 = MEMORY[0x277D0F728];
LABEL_7:
    v7 = *v5;
    v8 = *(v5 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsHomeLevelLocationServiceSetting(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  result = 0;
  if (v2 == 4 && v3 == 6)
  {
    v6 = *MEMORY[0x277D0F608];
    v7 = *(MEMORY[0x277D0F608] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCompanionInitiatedRestart(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F730];
  v7 = *(MEMORY[0x277D0F730] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCompanionInitiatedObliterate(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F690];
  v7 = *(MEMORY[0x277D0F690] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCameraRecording(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  result = 0;
  if (v3 <= 6 && ((1 << v3) & 0x58) != 0)
  {
    if (v2 == 2)
    {
      v6 = MEMORY[0x277D0F748];
      goto LABEL_9;
    }

    if (v2 == 4)
    {
      v6 = MEMORY[0x277D0F728];
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsRouterManagement(void *a1)
{
  v1 = a1;
  if (!productIsResidentCapable(v1))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_12;
  }

  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  v6 = 0;
  if (v3 <= 6 && ((1 << v3) & 0x58) != 0)
  {
    if (v2 == 4)
    {
      v7 = MEMORY[0x277D0F718];
      goto LABEL_11;
    }

    if (v2 == 2)
    {
      v7 = MEMORY[0x277D0F730];
LABEL_11:
      v9 = *v7;
      v10 = *(v7 + 2);
      v6 = HMFOperatingSystemVersionCompare() != 1;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_12:

  return v6;
}

BOOL productSupportsShortcutActions(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v5 = MEMORY[0x277D0F728];
        goto LABEL_15;
      }

      if (v4 == 5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x277D0F470];
    goto LABEL_15;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v5 = MEMORY[0x277D0F748];
LABEL_15:
  v7 = *v5;
  v8 = *(v5 + 2);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsMediaActions(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = MEMORY[0x277D0F418];
        goto LABEL_16;
      case 4:
        v5 = MEMORY[0x277D0F728];
        goto LABEL_16;
      case 5:
        return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x277D0F470];
    goto LABEL_16;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v5 = MEMORY[0x277D0F748];
LABEL_16:
  v7 = *v5;
  v8 = *(v5 + 2);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsFirmwareUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if ([v1 productPlatform] == 1)
  {
    v6 = MEMORY[0x277D0F400];
LABEL_5:
    v9 = *v6;
    v10 = *(v6 + 2);
    v7 = HMFOperatingSystemVersionCompare() != 1;
    goto LABEL_6;
  }

  v7 = 0;
  if (v3 <= 3)
  {
    if (v3 == 1 || v3 == 3)
    {
      if (v2 == 2)
      {
        v6 = MEMORY[0x277D0F250];
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        goto LABEL_11;
      case 11:
        v7 = 1;
        break;
      case 6:
LABEL_11:
        if (v2 == 4)
        {
          v6 = MEMORY[0x277D0F620];
          goto LABEL_5;
        }

LABEL_17:
        v7 = 0;
        break;
    }
  }

LABEL_6:

  return v7;
}

BOOL productSupportsResidentFirmwareUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if ((v3 | 2) != 6 || v2 != 4)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F620];
  v7 = *(MEMORY[0x277D0F620] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCameraActivityZones(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if (v5 == 6 || v5 == 4)
  {
    if (v4 == 4)
    {
      v6 = MEMORY[0x277D0F228];
      goto LABEL_10;
    }
  }

  else if (v5 == 3 && v4 == 2)
  {
    v6 = MEMORY[0x277D0F250];
LABEL_10:
    v8 = *v6;
    v9 = *(v6 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsMusicAlarm(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F228];
  v7 = *(MEMORY[0x277D0F228] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsAnnounce(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 > 4)
  {
    if (v5 == 5)
    {
      if (v4 == 3)
      {
        v7 = MEMORY[0x277D0F458];
        goto LABEL_14;
      }
    }

    else
    {
      if (v5 != 6)
      {
        return v5 == 11;
      }

      if (v4 == 4)
      {
        v7 = MEMORY[0x277D0F228];
        goto LABEL_14;
      }
    }
  }

  else
  {
    if ((v5 - 1) >= 3)
    {
      return result;
    }

    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F250];
LABEL_14:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

uint64_t productSupportsAudioAnalysis(void *a1, void *a2)
{
  v3 = a2;
  v16 = 0uLL;
  v4 = a1;
  v5 = [v4 softwareVersion];
  v6 = v5;
  if (v5)
  {
    [v5 operatingSystemVersion];
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = [v4 productPlatform];
  v8 = [v4 productClass];

  v9 = 0;
  if (v8 > 4)
  {
    if (v8 == 5)
    {
      if (v7 == 3)
      {
        v10 = MEMORY[0x277D0F458];
        goto LABEL_13;
      }

LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    if (v8 == 6)
    {
      if (v7 == 4)
      {
        v13 = *MEMORY[0x277D0F570];
        v15 = *(MEMORY[0x277D0F570] + 16);
        if (HMFOperatingSystemVersionCompare() != 1)
        {
          v9 = [v3 homeSafetySecurityEnabled];
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }

    v9 = v8 == 11;
  }

  else if ((v8 - 1) < 3)
  {
    if (v7 == 2)
    {
      v10 = MEMORY[0x277D0F250];
LABEL_13:
      v12 = *v10;
      v14 = *(v10 + 2);
      v9 = HMFOperatingSystemVersionCompare() != 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

uint64_t productSupportsDropIn(void *a1, void *a2)
{
  v3 = a2;
  v16 = 0uLL;
  v4 = a1;
  v5 = [v4 softwareVersion];
  v6 = v5;
  if (v5)
  {
    [v5 operatingSystemVersion];
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = [v4 productPlatform];
  v8 = [v4 productClass];

  if ((v8 - 1) < 3)
  {
    if (v7 == 2)
    {
      v9 = MEMORY[0x277D0F250];
LABEL_14:
      v13 = *v9;
      v15 = *(v9 + 2);
      v10 = HMFOperatingSystemVersionCompare() != 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 == 5)
  {
    if (v7 == 3)
    {
      v9 = MEMORY[0x277D0F458];
      goto LABEL_14;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (v8 != 6)
  {
    goto LABEL_15;
  }

  if (v7 != 4)
  {
    goto LABEL_15;
  }

  v12 = *MEMORY[0x277D0F570];
  v14 = *(MEMORY[0x277D0F570] + 16);
  if (HMFOperatingSystemVersionCompare() == 1)
  {
    goto LABEL_15;
  }

  v10 = [v3 homeSafetySecurityEnabled];
LABEL_16:

  return v10;
}

BOOL productSupportsThirdPartyMusic(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F228];
    v8 = *(MEMORY[0x277D0F228] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsPreferredMediaUser(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F208];
    v8 = *(MEMORY[0x277D0F208] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsUserMediaSettings(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F608];
    v8 = *(MEMORY[0x277D0F608] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCoordinationDoorbellChime(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F648];
    v8 = *(MEMORY[0x277D0F648] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCoordinationFreeDoorbellChime(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F690];
    v8 = *(MEMORY[0x277D0F690] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsSiriEndpointSetup(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F218];
  v8 = *(MEMORY[0x277D0F218] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsHomeHub(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 softwareVersion];
  v6 = v5;
  if (v5)
  {
    [v5 operatingSystemVersion];
  }

  v7 = [v4 productPlatform];
  v8 = [v4 productClass];

  if (v8 == 6)
  {
    v9 = [v3 supportsSiriHub];
    v10 = 0;
    if (v7 == 4 && v9)
    {
      v12 = *MEMORY[0x277D0F218];
      v13 = *(MEMORY[0x277D0F218] + 16);
      v10 = HMFOperatingSystemVersionCompare() != 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL productSupportsWakeOnLAN(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 > 3)
  {
    if (v5 == 4 || v5 == 6)
    {
      if (v4 == 4)
      {
        v7 = MEMORY[0x277D0F620];
        goto LABEL_12;
      }

      return 0;
    }
  }

  else if (v5 == 1 || v5 == 3)
  {
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F648];
LABEL_12:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsLockNotificationContext(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if (v5 == 6 || v5 == 4)
  {
    if (v4 == 4)
    {
      v6 = MEMORY[0x277D0F620];
      goto LABEL_10;
    }
  }

  else if (v5 == 3 && v4 == 2)
  {
    v6 = MEMORY[0x277D0F648];
LABEL_10:
    v8 = *v6;
    v9 = *(v6 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

uint64_t productSupportsAudioReturnChannel(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 productClass] == 6)
  {
    v4 = [v3 supportsReceivingARCStreamOverAirPlay];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL productSupportsUnifiedMediaNotifications(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F608];
  v8 = *(MEMORY[0x277D0F608] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCaptiveNetworks(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F610];
    v8 = *(MEMORY[0x277D0F610] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsResidentFirstAccessoryCommunication(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 <= 6 && ((1 << v5) & 0x58) != 0)
  {
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F638];
      goto LABEL_9;
    }

    if (v4 == 4)
    {
      v7 = MEMORY[0x277D0F610];
LABEL_9:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsMessagedHomePodSettings(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 softwareVersion];
  v6 = v5;
  if (v5)
  {
    [v5 operatingSystemVersion];
  }

  v7 = [v4 productPlatform];
  v8 = [v4 productClass];

  v9 = 0;
  if (v8 == 6 && v7 == 4)
  {
    v10 = +[HMDHomeKitVersion version8];
    if ([v10 compare:v3] == 1)
    {
      v9 = 0;
    }

    else
    {
      v12 = *MEMORY[0x277D0F608];
      v13 = *(MEMORY[0x277D0F608] + 16);
      v9 = HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return v9;
}

BOOL productSupportsCustomMediaApplicationDestination(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F588];
  v8 = *(MEMORY[0x277D0F588] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsThreadNetworkCredentialSharing(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F588];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F6E8];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

BOOL productSupportsMatterSharedAdminPairing(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F578];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F6D8];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

uint64_t productSupportsRMVonAppleTV(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 4 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F550];
    v8 = *(MEMORY[0x277D0F550] + 16);
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      return 0;
    }

    else
    {
      return _os_feature_enabled_impl();
    }
  }

  return result;
}

BOOL productSupportsJustSiri(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F698];
    v8 = *(MEMORY[0x277D0F698] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsMatterOwnerCertFetch(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F688];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F320];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

void sub_22A234F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDWatchManagerUpdateWithConnectedDevices(void *a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v39 = a1;
  v40 = a2;
  if (v39)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v39;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v6;
      v65 = 2112;
      v66 = v40;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Processing connected devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v41 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v40, "count")}];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = v40;
    v8 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v8)
    {
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          if ([HMDWatchManager isCompatibleWatchDevice:v11])
          {
            v12 = [[HMDDevice alloc] initWithService:*&v4[10]._os_unfair_lock_opaque device:v11];
            if (v12)
            {
              [v41 addObject:v12];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock_with_options();
    v38 = [MEMORY[0x277CBEB98] setWithArray:*&v4[8]._os_unfair_lock_opaque];
    v13 = [v41 allObjects];
    v14 = *&v4[8]._os_unfair_lock_opaque;
    *&v4[8]._os_unfair_lock_opaque = v13;

    LOBYTE(v4[6]._os_unfair_lock_opaque) = [v41 count] != 0;
    os_unfair_lock_unlock(v4 + 2);
    [v38 hmf_removedObjectsFromSet:v41];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v15 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v15)
    {
      v16 = *v49;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v48 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          v20 = v4;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v64 = v22;
            v65 = 2112;
            v66 = v18;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Removed connected device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v23 = +[HMDWatchConnectivityLogEventManager sharedInstance];
          [v23 incrementWatchRemovedNotificationCount];

          v24 = [MEMORY[0x277CCAB98] defaultCenter];
          v59 = @"HMDDeviceNotificationKey";
          v60 = v18;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          [v24 postNotificationName:@"HMDWatcherManagerWatchDisconnectedNotification" object:v20 userInfo:v25];
        }

        v15 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v15);
    }

    [v38 hmf_addedObjectsFromSet:v41];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    obja = v45 = 0u;
    v26 = [obja countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v26)
    {
      v27 = *v45;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(obja);
          }

          v29 = *(*(&v44 + 1) + 8 * k);
          v30 = objc_autoreleasePoolPush();
          v31 = v4;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543618;
            v64 = v33;
            v65 = 2112;
            v66 = v29;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Added connected device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = +[HMDWatchConnectivityLogEventManager sharedInstance];
          [v34 incrementWatchAddedNotificationCount];

          v35 = [MEMORY[0x277CCAB98] defaultCenter];
          v56 = @"HMDDeviceNotificationKey";
          v57 = v29;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [v35 postNotificationName:@"HMDWatcherManagerWatchConnectedNotification" object:v31 userInfo:v36];
        }

        v26 = [obja countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v26);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_22A245BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__229298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A2464F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A24ABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22A2539F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__230646(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A253EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22A254F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A256084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A256A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A256EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A257138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A2577CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A257A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A257EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A25847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A258F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A25BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A25C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__231211(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A25D934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A25DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A25E4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A264BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A265A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A2663B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __updateClipManagerWriteAccess(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 workQueue];
  dispatch_assert_queue_V2(v5);

  [v3 accessModeAtHome];
  LOBYTE(v5) = HMIsRecordingAllowedForCameraAccessMode();
  [v3 accessModeNotAtHome];

  LOBYTE(v3) = v5 | HMIsRecordingAllowedForCameraAccessMode();
  v6 = [v4 clipManager];

  [v6 setHasWriteAccess:v3 & 1];
}

void sub_22A2756D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL __HMDDeviceSetupManagerIsProxSetupRunning(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 darwinNotificationProvider];
  v3 = [v2 notifyIsValidToken:v1[3]];

  if (v3)
  {
    v13 = 0;
    v4 = [v1 darwinNotificationProvider];
    v5 = [v4 notifyGetState:v1[3] state:&v13];

    if (!v5)
    {
      v10 = v13 == 1;
      goto LABEL_7;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get ProxSetup state with status: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_22A2797F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__234309(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A27C4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A27F534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A280CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2849B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 - 176));
  _Unwind_Resume(a1);
}

void sub_22A286128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_22A287368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_22A2885B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A28E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__235110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ipAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.ipAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateIPAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);

  return v0;
}

id bleAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.bleAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateBLEAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], 5);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);

  return v0;
}

id threadAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.threadAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateThreadAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], 5);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);

  return v0;
}

uint64_t uint32ForPreference(void *a1)
{
  v1 = uint32ForPreference_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&uint32ForPreference_onceToken, &__block_literal_global_163_236604);
  }

  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:v2];

  v5 = [v4 numberValue];
  v6 = [v5 unsignedIntValue];

  return v6;
}

uint64_t __uint32ForPreference_block_invoke()
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B28 forPreferenceKey:@"firmwareUpdateStageMinDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B40 forPreferenceKey:@"firmwareUpdateStageMaxDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B58 forPreferenceKey:@"firmwareUpdateApplyMinDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B70 forPreferenceKey:@"firmwareUpdateApplyMaxDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B88 forPreferenceKey:@"firmwareUpdateIPAccessoryStageConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74B58 forPreferenceKey:@"firmwareUpdateIPAccessoryApplyConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74BA0 forPreferenceKey:@"firmwareUpdateBLEAccessoryStageConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74BB8 forPreferenceKey:@"firmwareUpdateBLEAccessoryApplyConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E74BA0 forPreferenceKey:@"firmwareUpdateThreadAccessoryStageConcurrentLimit"];
  v0 = MEMORY[0x277D0F8D0];

  return [v0 setDefaultValue:&unk_283E74BA0 forPreferenceKey:@"firmwareUpdateThreadAccessoryApplyConcurrentLimit"];
}

void sub_22A2A0FCC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A2A6150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, id a18)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HMDRemoteDeviceMonitorReachable(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_14;
  }

  if (([v1[11] isReachable] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v2;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Considering ourselves unreachable because net monitor is unreachable";
LABEL_12:
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v10, &v15, 0xCu);

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(v2 + 9);
  v4 = [WeakRetained device];

  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    v11 = v2;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Considering ourselves unreachable because there is no current device";
    goto LABEL_12;
  }

  if (([v2[6] hmd_isActive] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v12 = v2;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Considering ourselves unreachable because the IDSService is not active";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v6);
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_22A2AF0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__238199(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A2AFDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A2B22B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2B6690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22A2BBEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2BDF38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id __accessoriesFromAccessoryUUIDs(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v4 accessoryWithUUID:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __displayNameForUser(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__240476;
  v13 = __Block_byref_object_dispose__240477;
  v14 = 0;
  v2 = MEMORY[0x277D0F770];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ____displayNameForUser_block_invoke;
  v6[3] = &unk_27868A688;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  [v2 activityWithName:@"User.Name" block:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_22A2C95F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__240476(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____displayNameForUser_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountHandle];
  v11 = [v2 contact];

  if (v11 || ([*(a1 + 32) account], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "contact"), v11 = objc_claimAutoreleasedReturnValue(), v3, v11))
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:v11 style:0];
    if (v4)
    {
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  v6 = +[HMDAccountHandleFormatter defaultFormatter];
  v7 = [*(a1 + 32) accountHandle];
  v8 = [v6 stringForObjectValue:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_7:
}

void sub_22A2D0500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __registerForAccountNotifications(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 dataSource];
    v4 = [v3 notificationCenter];
    [v4 removeObserver:v2 name:@"HMDAccountRegistryAddedAccountNotification" object:0];

    v5 = [v2 dataSource];
    v6 = [v5 notificationCenter];
    [v6 removeObserver:v2 name:@"HMDAccountRegistryRemovedAccountNotification" object:0];

    v7 = [v2 dataSource];
    v8 = [v7 notificationCenter];
    [v8 removeObserver:v2 name:@"HMDAppleAccountManagerAccountModifiedNotification" object:0];

    v9 = [v2 accountHandle];
    if (v9)
    {
      v27 = 0;
      v10 = +[HMDAccountRegistry sharedRegistry];
      v11 = [v10 accountForHandle:v9 exists:&v27];

      v12 = v27;
      v13 = objc_autoreleasePoolPush();
      v14 = v2;
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v12 == 1)
      {
        if (v16)
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v11 shortDescription];
          *buf = 138543618;
          v29 = v17;
          v30 = 2112;
          v31 = v18;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Registering for notifications for account: %@", buf, 0x16u);
        }

        v19 = @"HMDAccountRegistryRemovedAccountNotification";
        v20 = &selRef___handleRemovedAccount_;
      }

      else
      {
        if (v16)
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v21;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account notifications", buf, 0xCu);
        }

        v19 = @"HMDAccountRegistryAddedAccountNotification";
        v20 = &selRef___handleAddedAccount_;
      }

      objc_autoreleasePoolPop(v13);
      v22 = [v14 dataSource];
      v23 = [v22 notificationCenter];
      v24 = *v20;
      v25 = +[HMDAccountRegistry sharedRegistry];
      [v23 addObserver:v14 selector:v24 name:v19 object:v25];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedAccount(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 deregisterIdentity];
    [v1 registerIdentity];
  }
}

void __updateWithAccount(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
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
      v9 = [v6 userID];
      *buf = 138543874;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with account: %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if (v4)
    {
      v10 = [v6 accountHandle];
      if (v10)
      {
        v11 = [v4 handles];
        v12 = [v11 containsObject:v10];

        if (v12)
        {
          if ([v4 isAuthenticated])
          {
            v13 = [v4 identifier];
            v14 = [v6 accountIdentifier];
            v15 = HMFEqualObjects();

            if ((v15 & 1) == 0)
            {
              v16 = objc_autoreleasePoolPush();
              v17 = v6;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = HMFGetLogIdentifier();
                v20 = [v17 userID];
                *buf = 138543874;
                v36 = v19;
                v37 = 2112;
                v38 = v20;
                v39 = 2112;
                v40 = v13;
                _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account identifier to: %@ / %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v16);
              v21 = [v17 newModelWithChangeType:2];
              [v21 setAccountIdentifier:v13];
              v22 = [v17 home];
              v23 = [v22 backingStore];
              v24 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
              v25 = [v23 transaction:@"userUpdateAccountIdentifier" options:v24];

              [v25 add:v21];
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = ____updateWithAccount_block_invoke;
              v32[3] = &unk_27868A1D8;
              v33 = v17;
              v34 = v13;
              [v25 run:v32];
            }
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v6;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v27 userID];
            *buf = 138543874;
            v36 = v29;
            v37 = 2112;
            v38 = v30;
            v39 = 2112;
            v40 = v4;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update with account: %@ / %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void ____updateWithAccount_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) userID];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finished updating the accountIdentifier [%@] for user [%@] finished with error: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_22A2D7E58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22A2D8584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2DA5DC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id _userPairingIdentity(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CFEC20];
    v4 = a1;
    v5 = [v3 alloc];
    v6 = [v4 identifier];
    v7 = [v4 publicKey];

    v8 = [v5 initWithIdentifier:v6 publicKey:v7 privateKey:0 permissions:(a2 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void ____auditAccount_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountHandle];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) home];
      v9 = [v8 name];
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v2;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing user account with handle : %@ for home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v20 = 0;
    v10 = +[HMDAccountRegistry sharedRegistry];
    v11 = [v10 accountForHandle:v2 exists:&v20];

    if (v20)
    {
      __updateWithAccount(*(a1 + 32), v11);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [*(a1 + 32) userID];
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Account does not currently exist for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    if (v6)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) userID];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Not auditing the account for the user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t HMDUserPrivilegeCompare(uint64_t a1, uint64_t a2)
{
  v2 = 3;
  if (a1 == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = a2;
  }

  if (v3 == v2)
  {
    return 0;
  }

  if (v3 == 3 || v2 == 3)
  {
    v6 = v3 == 3;
    goto LABEL_23;
  }

  if (v3 == 4 || v2 == 4)
  {
    v6 = v3 == 4;
    goto LABEL_23;
  }

  if (!v3 || !v2)
  {
    v6 = v3 == 0;
LABEL_23:
    if (v6)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (v2 == 5)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 5)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_22A2E04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2E1320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_22A2E8244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__242489(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A2E9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A2EB930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A2F1A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A2F213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22A2F2570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__244399(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A2F4874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCameraLocalStreamSessionStateAsString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_278684520[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraLocalStreamSessionState %tu", a1];
  }

  return v3;
}

void sub_22A2F6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__245221(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A2F6A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id encodedSnapshotFile(void *a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CD1060];
  v1 = a1;
  v2 = [v1 slotIdentifier];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277CD26B8];
  v3 = [v1 filePath];
  v13[1] = v3;
  v12[2] = *MEMORY[0x277CD26B0];
  v4 = [v1 dateCaptured];
  v13[2] = v4;
  v12[3] = *MEMORY[0x277CD1198];
  v5 = MEMORY[0x277CCABB0];
  [v1 aspectRatio];
  v7 = v6;

  v8 = [v5 numberWithDouble:v7];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t HMDRemoteEventRouterProtoEventsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 3)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addCachedEvents:v13];
      }

      else
      {
        if ((v12 >> 3) != 2)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addEvents:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22A3013A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A302144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __percentageForCharacteristicValue(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    [a2 floatValue];
    v5 = v4;
    v6 = [v3 metadata];

    v7 = [v6 minimumValue];
    if (v7)
    {
      v8 = [v6 minimumValue];
      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v12 = [v6 maximumValue];
    if (v12)
    {
      v13 = [v6 maximumValue];
      [v13 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = 100.0;
    }

    *&v16 = (v5 - v10) / (v15 - v10);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_22A304C5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22A305628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDHomeActivityVacationAggregatorStateTypeAsString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"HMDHomeActivityVacationAggregatorStateTypeVacation";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown vacation aggregator state %tu", a1];
  }

  else
  {
    v2 = @"HMDHomeActivityVacationAggregatorStateTypeNotVacation";
  }

  return v2;
}

void sub_22A3093A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A3096A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__246802(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A3099F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22A30A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30C514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30CF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30D598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30E130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A30F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A310244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id updatedCharacteristicIIDs(void *a1)
{
  v1 = MEMORY[0x277CBEB58];
  v2 = a1;
  v3 = [v1 set];
  v4 = [v2 na_map:&__block_literal_global_538];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  [v3 addObjectsFromArray:v8];
  v9 = [v2 na_map:&__block_literal_global_540_246886];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  [v3 addObjectsFromArray:v11];
  v12 = [v3 allObjects];

  return v12;
}

uint64_t __updatedCharacteristicIIDs_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 longLongValue];

  return [v2 numberWithLongLong:v3];
}

void sub_22A310C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22A3110FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Block_object_dispose((v32 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_22A311538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A312A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A313208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22A31392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A315FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A316534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A31A510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A31B854(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A31B954(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A31BA54(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A31E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__247791(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CompositeSettings_Database_log()
{
  if (CompositeSettings_Database_log__hmf_once_t0 != -1)
  {
    dispatch_once(&CompositeSettings_Database_log__hmf_once_t0, &__block_literal_global_247954);
  }

  v1 = CompositeSettings_Database_log__hmf_once_v1;

  return v1;
}

void sub_22A3207C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A321048(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A32C9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A337CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A33E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A33F79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__250801(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __HMDUsersSortedByPrivilege_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 privilege];
  v6 = [v4 privilege];

  if (v5 == v6)
  {
    return 0;
  }

  if (v5 == 3 || v6 == 3)
  {
    v8 = v5 == 3;
  }

  else if (v5 == 4 || v6 == 4)
  {
    v8 = v5 == 4;
  }

  else if (v5 == 1 || v6 == 1)
  {
    v8 = v5 == 1;
  }

  else
  {
    if (v5 && v6)
    {
      if (v5 == 2)
      {
        return -1;
      }

      else
      {
        return v6 == 2;
      }
    }

    v8 = v5 == 0;
  }

  if (v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_22A3403F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t isBridgedAccessory(void *a1)
{
  v1 = MEMORY[0x277CFE9F8];
  v2 = [a1 uniqueIdentifier];
  v3 = [v1 instanceIDForUniqueIdentifier:v2];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277CFED10]];
    v5 = [v3 isEqualToNumber:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22A345BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HMDHomeLocationSourceToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_2786856D8[a1];
  }

  return v2;
}

void sub_22A34BB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_22A34BFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double getLocationUpdateTimeInterval()
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"kLocationUpdateIntervalMinutes"];
  v2 = [v1 numberValue];

  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"kLocationUpdateIntervalVarianceMinutes"];
  v5 = [v4 numberValue];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __getLocationUpdateTimeInterval_block_invoke;
  v11[3] = &unk_2786869D8;
  v14 = v18;
  v15 = v16;
  v12 = v2;
  v13 = v5;
  v6 = getLocationUpdateTimeInterval_onceToken;
  v7 = v5;
  v8 = v2;
  if (v6 != -1)
  {
    dispatch_once(&getLocationUpdateTimeInterval_onceToken, v11);
  }

  v9 = *&getLocationUpdateTimeInterval_locationUpdateIntervalWithVariance;

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  return v9;
}

void sub_22A34C7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

double __getLocationUpdateTimeInterval_block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 32) doubleValue];
    v3 = v2 * 60.0;
  }

  else
  {
    v3 = 86400.0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  *(*(*(a1 + 56) + 8) + 24) = arc4random_uniform([*(a1 + 40) unsignedIntValue]);
  result = *(*(*(a1 + 48) + 8) + 24) + (60 * *(*(*(a1 + 56) + 8) + 24));
  *&getLocationUpdateTimeInterval_locationUpdateIntervalWithVariance = result;
  return result;
}

id AdminHandlerMessagePoliciesFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 hmf_objectPassingTest:&__block_literal_global_191];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 mutableCopy];
    v9 = [v3 indexOfObjectPassingTest:&__block_literal_global_196_251884];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];
      [v8 addObject:v10];
    }

    else
    {
      v11 = v9;
      v12 = [v8 objectAtIndex:v9];
      v10 = [v12 mutableCopy];

      [v10 setUserPrivilege:4];
      [v10 setRequiresRemoteAccess:0];
      v13 = [v10 copy];
      [v8 replaceObjectAtIndex:v11 withObject:v13];
    }

    v14 = [v8 copy];
    objc_autoreleasePoolPop(v5);

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return __HMDHomeAdministratorHandlerGetOrCreateReceiver(v16);
  }
}

id __HMDHomeAdministratorHandlerGetOrCreateReceiver(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    os_unfair_lock_lock_with_options();
    v6 = [*(v3 + 12) objectForKey:v5];
    if (!v6)
    {
      v6 = [objc_alloc(objc_opt_class()) initWithReceiver:v5 handler:v3];
      [*(v3 + 12) setObject:v6 forKey:v5];
    }

    os_unfair_lock_unlock(v3 + 20);
  }

  return v6;
}

BOOL HMDIsAllowedFallbackRemoteError(void *a1)
{
  v1 = a1;
  if ([v1 isHMFError])
  {
    v2 = 14;
  }

  else
  {
    if (![v1 isHMError])
    {
      v3 = 0;
      goto LABEL_9;
    }

    if ([v1 code] == 8 || objc_msgSend(v1, "code") == 54)
    {
      v3 = 1;
      goto LABEL_9;
    }

    v2 = 2;
  }

  v3 = [v1 code] == v2;
LABEL_9:

  return v3;
}

uint64_t __AdminHandlerMessagePoliciesFrom_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __AdminHandlerMessagePoliciesFrom_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_22A353D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__252485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A35928C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_22A368340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22A36A114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A36ACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A36BFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A36F07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v26 - 176));
  _Unwind_Resume(a1);
}

void sub_22A370774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__254244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A371500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_22A37F4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v71 - 176), 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_22A37F7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_22A380AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A383378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A384264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v63 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22A385204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A387D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 152));
  _Unwind_Resume(a1);
}

id __isUserInMessagePartOfHome(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 matchingRemoteIdentityUserForHome:v6];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Found matching user: %@, for message: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_22A38CF34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_22A38D500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_22A38D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_22A38FA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  objc_destroyWeak((v44 + 48));
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a44);
  _Unwind_Resume(a1);
}

void sub_22A394834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A394D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A3979CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A39D234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A3A80A8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A3A8134(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A3A81C8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A3A8280(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A3A9870(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22A3AC5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_22A3AD498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22A3AF138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t mapToHMMediaShuffleState(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void sub_22A3BACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__256343(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A3BBE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__256571(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A3C6120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A3C9E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getRadarDraftClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarDraft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarDraftClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getRadarComponentClass_block_invoke(v3);
  }

  return result;
}

Class __getRadarComponentClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("RadarComponent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRadarComponentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __125__HMDTTRManager_initiateRadarWithTitle_componentName_componentVersion_componentID_displayReason_attachments_isUserInitiated___block_invoke(v3);
  }

  return result;
}

void TapToRadarKitLibrary()
{
  if (!TapToRadarKitLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

uint64_t TapToRadarKitLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = TapToRadarKitLibraryCore_frameworkLibrary;
  v6 = TapToRadarKitLibraryCore_frameworkLibrary;
  if (!TapToRadarKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_278686C18;
    v8 = *off_278686C28;
    v9 = 0;
    v4[3] = _sl_dlopen();
    TapToRadarKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_22A3CEB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TapToRadarKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  TapToRadarKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22A3CF3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTapToRadarServiceClass_block_invoke(uint64_t a1)
{
  TapToRadarKitLibrary();
  result = objc_getClass("TapToRadarService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTapToRadarServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(HMDTTRManager *)v3];
  }

  return result;
}

uint64_t HMDRemoteEventRouterProtoMultiHopFetchEventsResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addChangedEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __mapProfilesToProfileUUIDs(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
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

        v8 = [*(*(&v13 + 1) + 8 * i) uniqueIdentifier];
        v9 = [v8 UUIDString];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id mapProfilesToAccessoryUUIDs(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = v31 = v3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v3 accessories];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
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

        if (v11)
        {
          v12 = [v11 mediaProfile];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 uniqueIdentifier];
            v15 = [v14 UUIDString];
            v16 = [v4 containsObject:v15];

            if (v16)
            {
              v17 = [v11 uuid];
              v18 = [v17 UUIDString];
              [v32 addObject:v18];
            }
          }
        }

        v19 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (v21)
        {
          v22 = [v21 findServiceWithServiceType:@"00000228-0000-1000-8000-0026BB765291"];
          if (v22)
          {
            v23 = [(HMDMediaProfile *)HMDHAPMediaProfile uniqueIdentifierFromAccessory:v21];
            v24 = [v23 UUIDString];
            v25 = [v4 containsObject:v24];

            if (v25)
            {
              v26 = [v21 uuid];
              v27 = [v26 UUIDString];
              [v32 addObject:v27];
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v28 = [v32 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

id mapProfilesToServiceUUIDs(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = a2;
  [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v23, "count")}];
  v22 = v21 = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 accessories];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
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

        if (v11)
        {
          v12 = [v11 findServiceWithServiceType:@"00000228-0000-1000-8000-0026BB765291"];
          if (v12)
          {
            v13 = [(HMDMediaProfile *)HMDHAPMediaProfile uniqueIdentifierFromAccessory:v11];
            v14 = [v13 UUIDString];
            v15 = [v23 containsObject:v14];

            if (v15)
            {
              v16 = [v12 uuid];
              v17 = [v16 UUIDString];
              [v22 addObject:v17];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [v22 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id __mapUUIDsToProfiles(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        v13 = [v12 initWithUUIDString:{v11, v18}];
        v14 = [v3 mediaProfileWithUUID:v13];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_22A3D6540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDAccessoryFirmwareUpdateAggregatePolicy *HMDFirmwareUpdatePolicyForAccessory(void *a1, uint64_t a2, void *a3)
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 addObject:v4];
  v108 = v4;
  v112 = v5;
  v7 = getBridgedAccessoriesForBridge(v4, v5);
  [v6 addObjectsFromArray:v7];

  v113 = [MEMORY[0x277CBEB58] set];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v6;
  v111 = [obj countByEnumeratingWithState:&v132 objects:v144 count:16];
  if (v111)
  {
    v110 = *v133;
    do
    {
      v8 = 0;
      do
      {
        if (*v133 != v110)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v114 = v8;
        v10 = *(*(&v132 + 1) + 8 * v8);
        v11 = v112;
        v12 = [MEMORY[0x277CBEB58] set];
        v13 = +[HMDHAPMetadata getSharedInstance];
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v115 = [v10 services];
        v120 = [v115 countByEnumeratingWithState:&v136 objects:v145 count:16];
        if (v120)
        {
          v118 = *v137;
          v119 = v12;
          v125 = v13;
          v116 = v10;
          v121 = v11;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v137 != v118)
            {
              v15 = v14;
              objc_enumerationMutation(v115);
              v14 = v15;
            }

            v122 = v14;
            v16 = *(*(&v136 + 1) + 8 * v14);
            v17 = [v16 serviceType];
            v18 = [v10 category];
            v19 = [v18 categoryType];
            if (a2)
            {
              v20 = [v13 autoApplyPolicyConfigurationForService:v17 category:v19];

              if (v20)
              {
                goto LABEL_17;
              }

              v21 = [v16 serviceType];
              v22 = [v13 autoApplyPolicyConfigurationForService:v21 category:0];
            }

            else
            {
              v20 = [v13 stagingPolicyConfigurationForService:v17 category:v19];

              if (v20)
              {
                goto LABEL_17;
              }

              v21 = [v16 serviceType];
              v22 = [v13 stagingPolicyConfigurationForService:v21 category:0];
            }

            v20 = v22;

            if (v20)
            {
LABEL_17:
              v23 = v20;
              v24 = v10;
              v127 = v121;
              v123 = [MEMORY[0x277CBEB18] array];
              v128 = v23;
              v25 = [v23 criteria];
              v26 = [v25 anyUserAtHome];

              if ((v26 & 1) != 0 || ([v128 criteria], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "noUserAtHome"), v27, v28))
              {
                v29 = v127;
                v30 = v24;
                v31 = [[HMDAccessoryFirmwareUpdatePresencePolicy alloc] initWithAccessory:v30 presenceNeeded:v26 workQueue:v29];

                if (v31)
                {
                  [v123 addObject:v31];
                }
              }

              v32 = [v128 criteria];
              v33 = [v32 checkForScheduledAutomation];

              if (v33)
              {
                v34 = v127;
                v35 = v24;
                v36 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateTimedAutomationPolicy alloc] initWithAccessory:v35 workQueue:v34];

                if (v36)
                {
                  [v123 addObject:v36];
                }
              }

              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v37 = [v128 criteria];
              v38 = [v37 characteristicConfigurations];

              v124 = v38;
              v130 = [v38 countByEnumeratingWithState:&v140 objects:buf count:16];
              if (v130)
              {
                v129 = *v141;
                v126 = v24;
                do
                {
                  v39 = 0;
                  do
                  {
                    if (*v141 != v129)
                    {
                      objc_enumerationMutation(v124);
                    }

                    v40 = *(*(&v140 + 1) + 8 * v39);
                    v41 = [v40 format];
                    v42 = [v40 values];
                    v43 = v41;
                    v44 = v42;
                    if (([v43 isEqualToString:@"BOOL"] & 1) != 0 || (objc_msgSend(v43, "isEqualToString:", @"int") & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"uint8"))
                    {
                      *&aBlock = MEMORY[0x277D85DD0];
                      *(&aBlock + 1) = 3221225472;
                      v151 = __characteristicPolicyHandlerForFormat_block_invoke;
                      v152 = &unk_278687EB0;
                      v153 = v44;
                      v45 = _Block_copy(&aBlock);
                    }

                    else
                    {
                      v45 = 0;
                    }

                    if (v45)
                    {
                      v46 = [v128 type];
                      v47 = [v40 type];
                      v48 = [v40 settlingTime];
                      v131 = v24;
                      v49 = v46;
                      v50 = v47;
                      v51 = v48;
                      v52 = v45;
                      v53 = v127;
                      if (v51)
                      {
                        v54 = [v51 unsignedIntegerValue];
                      }

                      else
                      {
                        if (valueDebounceDuration_onceToken != -1)
                        {
                          dispatch_once(&valueDebounceDuration_onceToken, &__block_literal_global_39_260113);
                        }

                        v58 = [MEMORY[0x277D0F8D0] sharedPreferences];
                        v59 = [v58 preferenceForKey:@"firmwareUpdateCharacteristicValueDebounceDuration"];
                        v60 = [v59 numberValue];

                        v54 = [v60 unsignedIntValue];
                      }

                      v61 = [[HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy alloc] initWithAccessory:v131 serviceType:v49 characteristicType:v50 debounceDuration:v54 policyHandler:v52 workQueue:v53];

                      if (v61)
                      {
                        [v123 addObject:v61];
                      }

                      v13 = v125;
                      v24 = v126;
                    }

                    else
                    {
                      v55 = objc_autoreleasePoolPush();
                      v56 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        v57 = HMFGetLogIdentifier();
                        LODWORD(aBlock) = 138543362;
                        *(&aBlock + 4) = v57;
                        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristic policy handler", &aBlock, 0xCu);
                      }

                      objc_autoreleasePoolPop(v55);
                    }

                    ++v39;
                  }

                  while (v130 != v39);
                  v62 = [v124 countByEnumeratingWithState:&v140 objects:buf count:16];
                  v130 = v62;
                }

                while (v62);
              }

              v63 = [v128 criteria];
              v64 = [v63 updateTimeWindow];

              if (v64)
              {
                v65 = [v128 criteria];
                v66 = [v65 updateTimeWindow];
                v67 = v127;
                v68 = v66;
                v69 = v24;
                v70 = [[HMDAccessoryFirmwareUpdateTimeWindowPolicy alloc] initWithAccessory:v69 timeWindow:v68 workQueue:v67];

                if (v70)
                {
                  [v123 addObject:v70];
                }
              }

              v71 = [v24 cameraProfiles];
              v72 = [v71 count];

              v10 = v116;
              if (v72)
              {
                v73 = v127;
                v74 = v24;
                v75 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateCameraPolicy alloc] initWithAccessory:v74 workQueue:v73];

                if (v75)
                {
                  [v123 addObject:v75];
                }
              }

              v12 = v119;
              [v119 addObjectsFromArray:v123];

              goto LABEL_59;
            }

            if (![v16 isCustom])
            {
              break;
            }

            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = HMFGetLogIdentifier();
              v79 = [v16 serviceType];
              *buf = 138543618;
              v147 = v78;
              v148 = 2112;
              v149 = v79;
              v80 = v77;
              v81 = "%{public}@Skipping policy creation for the custom service: %@";
LABEL_70:
              _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, v81, buf, 0x16u);
            }

LABEL_71:

            objc_autoreleasePoolPop(v76);
            v12 = v119;
LABEL_59:
            v11 = v121;
            v14 = v122 + 1;
            if (v122 + 1 == v120)
            {
              v87 = [v115 countByEnumeratingWithState:&v136 objects:v145 count:16];
              v120 = v87;
              if (v87)
              {
                goto LABEL_8;
              }

              goto LABEL_73;
            }
          }

          v82 = v16;
          if (isIgnoredServiceForAutoApply_token != -1)
          {
            dispatch_once(&isIgnoredServiceForAutoApply_token, &__block_literal_global_260109);
          }

          v83 = [v82 accessory];
          v84 = [v83 cameraProfiles];
          if (![v84 count])
          {

LABEL_75:
            v90 = objc_autoreleasePoolPush();
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = HMFGetLogIdentifier();
              v93 = [v82 serviceType];
              *buf = 138543618;
              v147 = v92;
              v148 = 2112;
              v149 = v93;
              _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_DEBUG, "%{public}@Policy configuration not available for service type: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v90);
            v94 = MEMORY[0x277CBEA60];
            v95 = v121;
            v96 = v10;
            v97 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateAllowPolicy alloc] initWithAccessory:v96 workQueue:v95];

            v89 = [v94 arrayWithObject:v97];

            v11 = v121;
            v88 = v119;
            goto LABEL_78;
          }

          v85 = isIgnoredServiceForAutoApply_ignoredServices;
          v86 = [v82 serviceType];
          LODWORD(v85) = [v85 containsObject:v86];

          if (!v85)
          {
            goto LABEL_75;
          }

          v76 = objc_autoreleasePoolPush();
          v77 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            goto LABEL_71;
          }

          v78 = HMFGetLogIdentifier();
          v79 = [v82 serviceType];
          *buf = 138543618;
          v147 = v78;
          v148 = 2112;
          v149 = v79;
          v80 = v77;
          v81 = "%{public}@Skipping policy creation for the accessory firmware update ignored service: %@";
          goto LABEL_70;
        }

LABEL_73:

        [v12 allObjects];
        v89 = v88 = v12;
LABEL_78:

        if ([v89 count] == 1)
        {
          v98 = [v89 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v113 removeAllObjects];
            v100 = [v89 firstObject];
            [v113 addObject:v100];

            goto LABEL_84;
          }
        }

        [v113 addObjectsFromArray:v89];

        v8 = v114 + 1;
      }

      while (v114 + 1 != v111);
      v111 = [obj countByEnumeratingWithState:&v132 objects:v144 count:16];
    }

    while (v111);
  }

LABEL_84:

  v101 = [v113 allObjects];
  v102 = v108;
  v103 = v112;
  if ([v101 count])
  {
    if ([v101 count] == 1)
    {
      v104 = [v101 firstObject];
    }

    else
    {
      v104 = [[HMDAccessoryFirmwareUpdateAggregatePolicy alloc] initWithPolicies:v101 accessory:v102 workQueue:v103];
    }

    v105 = v104;
  }

  else
  {
    v105 = 0;
  }

  [(HMDAccessoryFirmwareUpdateAggregatePolicy *)v105 configure];
  v106 = *MEMORY[0x277D85DE8];

  return v105;
}

id getBridgedAccessoriesForBridge(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = a2;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v3 isPrimary])
  {
    v4 = [v3 identifiersForBridgedAccessories];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [v3 identifiersForBridgedAccessories];
      v7 = [v6 copy];

      v8 = [v3 home];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [v8 accessoryWithUUID:*(*(&v25 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = v16;
            if (v16)
            {
              v18 = [v16 bridge];
              v19 = [v18 isEqual:v3];

              if (v19)
              {
                [v24 addObject:v17];
                v20 = getBridgedAccessoriesForBridge(v17, v23);
                [v24 addObjectsFromArray:v20];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __characteristicPolicyHandlerForFormat_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
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

  if (v5)
  {
    v6 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __isIgnoredServiceForAutoApply_block_invoke()
{
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v0 = [v3 preferenceForKey:@"accessoryFirmwareUpdateAutoApplyIgnoredServices"];
  v1 = [v0 value];
  v2 = isIgnoredServiceForAutoApply_ignoredServices;
  isIgnoredServiceForAutoApply_ignoredServices = v1;
}

void sub_22A3E1164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A3E36FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__261344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A3E5D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_22A3E66C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22A3E6C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_22A3EC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_22A3EE540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A3F0144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__261886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A3F0614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __modelIDsFromModelIDStrings(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v12 + 1) + 8 * i)];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __accessoriesWithModelIDs(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v29 user];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 home];
      if (v6)
      {
        v26 = v5;
        v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = v3;
        obj = [v3 copy];
        v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          v28 = v7;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v31 + 1) + 8 * i);
              v13 = [v6 accessoryWithUUID:v12];
              if (v13)
              {
                [v7 addObject:v13];
              }

              else
              {
                v14 = objc_autoreleasePoolPush();
                v15 = v29;
                v16 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17 = HMFGetLogIdentifier();
                  v18 = [v12 UUIDString];
                  *buf = 138543874;
                  v36 = v17;
                  v37 = 2112;
                  v38 = v18;
                  v39 = 2112;
                  v40 = v6;
                  _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with model ID, %@, in home: %@", buf, 0x20u);

                  v7 = v28;
                }

                objc_autoreleasePoolPop(v14);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v9);
        }

        v19 = [v7 copy];
        v5 = v26;
        v3 = v27;
      }

      else
      {
        v19 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v29;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing user", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

id __modelIDStringsFromAccessories(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v1 copy];
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

        v8 = [*(*(&v14 + 1) + 8 * i) uuid];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 UUIDString];
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

void sub_22A3F3194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A3F40F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __getType(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  os_unfair_lock_lock_with_options();
  v3 = *&v2[14]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 2);

  return v3;
}

void sub_22A3F62F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__262400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __missingElementsFromLeftNotInRight(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 hmf_isEmpty])
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v28 = v4;
    v6 = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = __itemFromConstraint(v13);
          v15 = v14;
          if (v14)
          {
            v16 = [v14 identifier];
            [v7 setObject:v13 forKey:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v3;
    v17 = v3;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = __itemFromConstraint(v22);
          v24 = [v23 identifier];
          v25 = [v7 objectForKey:v24];

          if (!v25)
          {
            [v5 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    v4 = v28;
    v3 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

id __deepCopiedConstraints(void *a1)
{
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2 copyItems:1];

  return v3;
}

void *__itemFromConstraint(void *a1)
{
  v1 = [a1 value];
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

  return v2;
}

void sub_22A3F8254(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22A3F861C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

BOOL __isConstraintValid(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v6 type];
  if ((v7 - 1) < 2)
  {
    v15 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = v17 != 0;
    if (v17)
    {
      goto LABEL_43;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = v5;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      [v6 value];
      v23 = v46 = a3;
      *buf = 138543618;
      v48 = v22;
      v49 = 2112;
      v50 = objc_opt_class();
      v24 = v50;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);

      a3 = v46;
    }

    objc_autoreleasePoolPop(v19);
    if (!a3)
    {
      goto LABEL_43;
    }

    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    goto LABEL_41;
  }

  if (v7 == 3)
  {
    v26 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v17 = v27;

    if (v17)
    {
      if ([v17 compare:&unk_283E74FC0] == 1)
      {
        v18 = 1;
LABEL_43:

        goto LABEL_44;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v5;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v40;
        v49 = 2112;
        v50 = v17;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Invalid step constraint value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      if (a3)
      {
        v34 = 43;
        goto LABEL_40;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v5;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v6 value];
        *buf = 138543618;
        v48 = v31;
        v49 = 2112;
        v50 = objc_opt_class();
        v33 = v50;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (a3)
      {
        v34 = 22;
LABEL_40:
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v34];
        v18 = 0;
LABEL_41:
        *a3 = v25;
        goto LABEL_43;
      }
    }

    v18 = 0;
    goto LABEL_43;
  }

  if (v7 != 4)
  {
    goto LABEL_35;
  }

  v8 = [v5 type];
  if (v8 == 5)
  {
    v35 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v11 = v36;

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v5;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_34;
  }

  if (v8 != 4)
  {
LABEL_35:
    v18 = 1;
    goto LABEL_44;
  }

  v9 = [v6 value];
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

  if (v11)
  {
LABEL_34:

    goto LABEL_35;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v5;
  v14 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    goto LABEL_47;
  }

LABEL_46:
  v43 = HMFGetLogIdentifier();
  v44 = [v6 value];
  *buf = 138543618;
  v48 = v43;
  v49 = 2112;
  v50 = objc_opt_class();
  v45 = v50;
  _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);

LABEL_47:
  objc_autoreleasePoolPop(v12);
  if (a3)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *a3 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_44:

  v41 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_22A3FD46C(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__262722(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A401648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, id a34)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_22A4033B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A40F1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__264231(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A40F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A41251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__264865(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4133DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A413A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A417BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDEventTriggerExecutionStateAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerExecutionState %tu", a1];
  }

  else
  {
    v2 = off_278687A30[a1];
  }

  return v2;
}

void sub_22A419BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A41B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A41C15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A41E7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22A42159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__266419(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A422F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A423984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A426498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A426A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A4283B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A42D53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __descriptionHeader(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 author];
  v4 = [v2 context];

  v5 = [v1 stringWithFormat:@"A: %@  C: %@", v3, v4];

  return v5;
}

void __removeRegistrations(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____removeRegistrations_block_invoke;
  v11[3] = &unk_2786880F0;
  v6 = v5;
  v12 = v6;
  v7 = a3;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____removeRegistrations_block_invoke_2;
  v9[3] = &unk_278688118;
  v10 = v6;
  v8 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

uint64_t ____removeRegistrations_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  [v5 removeObjectForKey:a2];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  [v7 removeObjectForKey:a2];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 48);
  }

  else
  {
    v9 = 0;
  }

  return [v9 removeObjectForKey:a2];
}

void ____removeRegistrations_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  v7 = a2;
  [v4 removeObjectForKey:?];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  [v6 removeObjectForKey:v7];
}

void _binChanges(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 count] || objc_msgSend(v12, "count"))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__267474;
    v23 = __Block_byref_object_dispose__267475;
    v24 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___binChanges_block_invoke;
    v13[3] = &unk_2786880C8;
    v14 = v9;
    v15 = v11;
    v16 = v12;
    v17 = &v19;
    v18 = a2;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    if (v20[5])
    {
      [v10 minusSet:?];
    }

    _Block_object_dispose(&v19, 8);
  }
}

void sub_22A430014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__267474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___binChanges_block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v33;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = *(a1 + 32);
    if (!v5 || [v5 modelBelongsToThisPartition:v33])
    {
      v6 = [*(a1 + 40) objectForKey:objc_opt_class()];
      v7 = [(HMCRedirectorTuple *)v6 strongify];

      if (v7)
      {
        goto LABEL_9;
      }

      v8 = *(a1 + 48);
      v9 = [v4 modelID];
      v10 = [v8 objectForKey:v9];
      v7 = [(HMCRedirectorTuple *)v10 strongify];

      if (v7)
      {
LABEL_9:
        v11 = *(*(*(a1 + 56) + 8) + 40);
        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v13 = *(*(a1 + 56) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v11 = *(*(*(a1 + 56) + 8) + 40);
        }

        [v11 addObject:v33];
        v15 = **(a1 + 64);
        if (!v15)
        {
          v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v17 = *(a1 + 64);
          v18 = *v17;
          *v17 = v16;

          v15 = **(a1 + 64);
        }

        v19 = [v15 objectForKey:v7];
        if (!v19)
        {
          v19 = [MEMORY[0x277CBEB58] set];
          [**(a1 + 64) setObject:v19 forKey:v7];
        }

        v20 = [HMCRedirectorChangeItem alloc];
        v21 = *(a1 + 48);
        v22 = v4;
        if (v20)
        {
          v34.receiver = v20;
          v34.super_class = HMCRedirectorChangeItem;
          v20 = objc_msgSendSuper2(&v34, sel_init);
          if (v20)
          {
            v23 = [objc_opt_class() backingModelProtocol];
            modelType = v20->_modelType;
            v20->_modelType = v23;

            v25 = [v22 modelID];
            modelID = v20->_modelID;
            v20->_modelID = v25;

            v27 = MEMORY[0x277CBEB98];
            if (v21)
            {
              v28 = [v22 changedValues];
              v29 = [v28 allKeys];
              v30 = [v27 setWithArray:v29];
              changedProperties = v20->_changedProperties;
              v20->_changedProperties = v30;
            }

            else
            {
              v32 = [MEMORY[0x277CBEB98] set];
              v28 = v20->_changedProperties;
              v20->_changedProperties = v32;
            }
          }
        }

        [v19 addObject:v20];
      }
    }
  }
}

__CFString *HMDResetConfigPostCleanupStepsToString(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"Unknown";
    goto LABEL_14;
  }

  v1 = a1;
  if (a1 == -1)
  {
    v2 = @"everything";
    goto LABEL_14;
  }

  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if ((v1 & 2) != 0)
  {
    [v3 addObject:@"working store"];
    if ((v1 & 4) == 0)
    {
LABEL_7:
      if ((v1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"cloud store"];
  if ((v1 & 8) == 0)
  {
LABEL_8:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 addObject:@"local store"];
  if ((v1 & 0x10) == 0)
  {
LABEL_9:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 addObject:@"shared cloud store"];
  if ((v1 & 0x20) == 0)
  {
LABEL_10:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [v4 addObject:@"HH1 SQL store"];
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  [v4 addObject:@"HH1 keyed archive"];
  if ((v1 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v1 & 0x100) != 0)
  {
LABEL_12:
    [v4 addObject:@"client store"];
  }

LABEL_13:
  v2 = [v4 componentsJoinedByString:{@", "}];

LABEL_14:

  return v2;
}

BOOL HMDIsEmptyHome(void *a1)
{
  v1 = a1;
  v2 = [v1 rooms];
  if ([v2 count])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 accessories];
    if ([v4 count])
    {
      v3 = 0;
    }

    else
    {
      v5 = [v1 sharedUsers];
      if ([v5 count])
      {
        v3 = 0;
      }

      else
      {
        v6 = [v1 outgoingInvitations];
        v3 = [v6 count] == 0;
      }
    }
  }

  return v3;
}

uint64_t identifierForTargetWithUUID(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  do
  {
    v5 = v4;
    v6 = MEMORY[0x277CCAD78];
    v7 = [a2 UUIDString];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v4 = [v6 hm_deriveUUIDFromBaseUUID:v5 withSalts:v8];

    v9 = [v4 hash];
  }

  while (!v9);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mapTargetCategory(void *a1)
{
  v1 = a1;
  v2 = +[HMDHAPMetadata getSharedInstance];
  v3 = [v1 categoryType];

  v4 = [v2 categoryForType:v3];

  v5 = [v4 identifier];
  v6 = [v5 unsignedShortValue];

  return v6;
}

id buttonConfigurationAsString(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) shortDescription];
        [v2 appendFormat:@"%@, ", v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void logRemoteMessageEvent(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a3;
  v6 = a2;
  v7 = [v6 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v22 hmf_stringForKey:@"kIDSMessageNameKey"];
  }

  v10 = v9;

  v11 = [v22 hmf_UUIDForKey:@"kIDSMessageIdentifierKey"];
  v12 = [v6 hmf_stringForKey:@"kRemoteMessagePeerInformationKey"];
  v13 = v12;
  v14 = @"Unknown";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [v6 hmf_numberForKey:@"kRemoteMessageTransportAttributionKey"];
  v17 = [v16 unsignedIntegerValue];
  v18 = [v6 hmf_numberForKey:@"kRemoteMessageQoSKey"];

  v19 = +[HMDMetricsManager sharedLogEventSubmitter];
  LODWORD(v21) = v17;
  v20 = +[HMDRemoteMessageLogEvent receivedRemoteMessageName:identifier:transactionIdentifier:messageType:peerInformation:secure:transportType:messageQoS:](HMDRemoteMessageLogEvent, "receivedRemoteMessageName:identifier:transactionIdentifier:messageType:peerInformation:secure:transportType:messageQoS:", v10, v11, v5, 0, v15, 1, v21, [v18 integerValue]);

  [v19 submitLogEvent:v20];
}

id augmentResponseOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v6 = [v4 mutableCopy];
    [v6 setObject:v5 forKey:@"kRemoteMessageAttributedMessageNameKey"];

    v7 = [v6 copy];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

uint64_t _pairingCopyIdentity(uint64_t a1, char **a2, _OWORD *a3, _OWORD *a4, void *a5)
{
  v8 = a5;
  v9 = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__270485;
  v30 = __Block_byref_object_dispose__270486;
  v31 = 0;
  if (!v8[23])
  {
    v22 = 4294960534;
    goto LABEL_17;
  }

  v10 = v8[30];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___pairingCopyIdentity_block_invoke;
  v25[3] = &unk_27868A688;
  v25[4] = v9;
  v25[5] = &v26;
  dispatch_sync(v10, v25);
  v11 = v27[5];
  if (!v11)
  {
    v22 = 4294960569;
    goto LABEL_17;
  }

  if (a2)
  {
    v12 = [v11 identifier];
    v13 = [v12 lengthOfBytesUsingEncoding:4];

    if (!v13)
    {
      v22 = 4294960553;
      goto LABEL_17;
    }

    v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL);
    if (!v14)
    {
      v22 = 4294960568;
      goto LABEL_17;
    }

    v15 = [v27[5] identifier];
    strlcpy(v14, [v15 UTF8String], v13 + 1);

    *a2 = v14;
  }

  if (a3)
  {
    v16 = [v27[5] publicKey];
    v17 = [v16 data];

    if (!v17)
    {
LABEL_18:
      v22 = 4294960569;
      goto LABEL_15;
    }

    if ([v17 length] != 32)
    {
LABEL_19:
      v22 = 4294960553;
      goto LABEL_15;
    }

    v18 = [v17 bytes];
    v19 = v18[1];
    *a3 = *v18;
    a3[1] = v19;
  }

  if (!a4)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v20 = [v27[5] privateKey];
  v17 = [v20 data];

  if (!v17)
  {
    goto LABEL_18;
  }

  if ([v17 length] != 32)
  {
    goto LABEL_19;
  }

  v21 = [v17 bytes];
  v22 = 0;
  v23 = v21[1];
  *a4 = *v21;
  a4[1] = v23;
LABEL_15:

LABEL_17:
  _Block_object_dispose(&v26, 8);

  return v22;
}

void sub_22A44F5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__270485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___pairingCopyIdentity_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 184);
  v12 = 0;
  v3 = (*(v2 + 16))();
  v4 = v12;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get local pairing identity with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t _pairingFindPeer(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__270485;
  v23 = __Block_byref_object_dispose__270486;
  v24 = 0;
  if (v7[24])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
    if (v8)
    {
      v9 = v7[30];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___pairingFindPeer_block_invoke;
      block[3] = &unk_27868A4D8;
      v18 = &v19;
      block[4] = v7;
      v10 = v8;
      v17 = v10;
      dispatch_sync(v9, block);

      v11 = v20[5];
      if (v11)
      {
        if ([v11 length] == 32)
        {
          v12 = [v20[5] bytes];
          v13 = 0;
          v14 = v12[1];
          *a3 = *v12;
          a3[1] = v14;
        }

        else
        {
          v13 = 4294960553;
        }
      }

      else
      {
        v13 = 4294960569;
      }
    }

    else
    {
      v10 = 0;
      v13 = 4294960579;
    }
  }

  else
  {
    v10 = 0;
    v13 = 4294960534;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

void sub_22A44F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___pairingFindPeer_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 192);
  v14 = 0;
  v4 = (*(v3 + 16))();
  v5 = v14;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Find peer %@ failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22A45695C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  __HMFActivityScopeLeave();
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_22A457364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22A45BCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__271641(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A46C6D8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HMDCameraRecordingAudioCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingAudioCodecTypeAACELD";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioCodecType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingAudioCodecTypeAACLC";
  }

  return v2;
}

__CFString *HMDCameraRecordingAudioBitRateModeTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingAudioBitRateModeTypeConstant";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioBitRateModeType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingAudioBitRateModeTypeVariable";
  }

  return v2;
}

__CFString *HMDCameraRecordingAudioSampleRateTypeAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioSampleRateType %ld", a1];
  }

  else
  {
    v2 = off_278689100[a1];
  }

  return v2;
}

uint64_t checkValueOfClass(uint64_t a1, uint64_t a2, void *a3)
{
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = isKindOfClass;
  if (a3 && (isKindOfClass & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected %@", a2];
    *a3 = [v7 hmfErrorWithCode:3 reason:v8];
  }

  return v6 & 1;
}

void classMethodNotAvailable()
{
  v0 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"class methods are not supported when adapting NSValueTransformers" userInfo:0];
  objc_exception_throw(v0);
}

void sub_22A483418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id accessoryRequestMapFromRequests(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v49 = a2;
  v47 = a3;
  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v52;
    *&v8 = 138543618;
    v46 = v8;
    do
    {
      v11 = 0;
      v48 = v9;
      do
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        v13 = [v12 accessory];
        if (v13)
        {
          v14 = v13;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v15 = v10;
          v16 = v6;
          v17 = [v12 characteristic];
          v18 = [v17 type];
          v19 = [v12 service];
          v20 = [v19 type];
          v21 = [HMDHAPMetadata isOwnerPrivilegeRequiredForWritingCharacteristicType:v18 serviceType:v20];

          if (v21 && ([v47 isOwner] & 1) == 0)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = HMFGetOSLogHandle();
            v6 = v16;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = HMFGetLogIdentifier();
              *buf = v46;
              v56 = v35;
              v57 = 2112;
              v58 = v12;
              _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic write request that requires owner privilege: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
            v37 = [HMDCharacteristicResponse responseWithRequest:v12 error:v36];

            [v49 addObject:v37];
            v10 = v15;
            v9 = v48;
          }

          else
          {
            v22 = [v12 characteristic];
            v23 = [v22 type];
            v24 = [v12 service];
            v25 = [v24 type];
            v26 = [HMDHAPMetadata isAdminPrivilegeRequiredForWritingCharacteristicType:v23 serviceType:v25];

            v6 = v16;
            v10 = v15;
            v9 = v48;
            if (!v26 || ([v47 isAdministrator] & 1) != 0)
            {
LABEL_12:
              if (([v14 isPrimary] & 1) == 0)
              {
                v27 = [v14 bridge];

                v14 = v27;
              }

              v28 = [v6 objectForKey:v14];
              if (!v28)
              {
                v28 = [MEMORY[0x277CBEB18] array];
                [v6 setObject:v28 forKey:v14];
              }

              [v28 addObject:v12];

              goto LABEL_20;
            }

            v38 = objc_autoreleasePoolPush();
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              *buf = v46;
              v56 = v40;
              v57 = 2112;
              v58 = v12;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic write request that requires admin privilege: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v38);
            v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
            v42 = [HMDCharacteristicResponse responseWithRequest:v12 error:v41];

            [v49 addObject:v42];
          }
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v46;
            v56 = v31;
            v57 = 2112;
            v58 = v12;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic request: %@, accessory is nil", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v14 = [HMDCharacteristicResponse responseWithRequest:v12 error:v32];

          [v49 addObject:v14];
        }

LABEL_20:

        ++v11;
      }

      while (v9 != v11);
      v43 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      v9 = v43;
    }

    while (v43);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_22A487E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A48A11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__writeRequestsFromRequests_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

void sub_22A48D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A48DD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDRemoteMessagePayloadKeysForTransportMetadata()
{
  if (HMDRemoteMessagePayloadKeysForTransportMetadata_onceToken != -1)
  {
    dispatch_once(&HMDRemoteMessagePayloadKeysForTransportMetadata_onceToken, &__block_literal_global_278048);
  }

  v1 = HMDRemoteMessagePayloadKeysForTransportMetadata_keys;

  return v1;
}

void __HMDRemoteMessagePayloadKeysForTransportMetadata_block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"kIDSMessageSourceIDKey";
  v3[1] = @"kRemoteMessageIsFinalResponseKey";
  v3[2] = @"kRemoteMessageTransportAttributionKey";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = HMDRemoteMessagePayloadKeysForTransportMetadata_keys;
  HMDRemoteMessagePayloadKeysForTransportMetadata_keys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_22A49BEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A49C218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A49C554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A49CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22A4A2284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__279142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4A6250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4A691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4A7368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__279785(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4A7944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4A80F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4A8738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4A8AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4ACF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4B56D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __updateLoggedInAccount(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Posting transaction to update logged in account to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v9 accessory];
  v13 = [v12 transactionWithObjectChangeType:2];
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

  if (v15)
  {
    v16 = encodeRootObject();
    [v15 setLoggedInAccount:v16];

    v32 = [v12 home];
    v17 = [v32 backingStore];
    v18 = [v7 name];
    +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = v13;
    v20 = v15;
    v21 = v9;
    v22 = v12;
    v23 = v7;
    v25 = v24 = v6;
    v26 = [v17 transaction:v18 options:v25];

    v6 = v24;
    v7 = v23;
    v12 = v22;
    v9 = v21;
    v15 = v20;
    v13 = v19;

    [v26 add:v15 withMessage:v7];
    [v26 run];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v9;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain apple media accessory model type to update logged in account.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v31 = *MEMORY[0x277D85DE8];
}

__CFString *HMDMediaDestinationManagerFailureCodeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"failureCode(%@)", v3];
  }

  else
  {
    v1 = off_27868A2C0[a1 - 1];
  }

  return v1;
}

void sub_22A4CA10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__284951(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4CE9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x228]);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__285295(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4D04E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak(&a40);
  objc_destroyWeak((v40 - 256));
  _Unwind_Resume(a1);
}

void sub_22A4D0CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, id a15)
{
  objc_destroyWeak((v15 + 72));
  objc_destroyWeak((v15 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a15);
  _Unwind_Resume(a1);
}

void sub_22A4D2D78(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__285624(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A4D3290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22A4D5024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__285954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id addOrReplaceElements(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 count])
  {
    v8 = [v6 mutableCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __addOrReplaceElements_block_invoke;
    v13[3] = &unk_27868A980;
    v9 = v8;
    v14 = v9;
    v15 = v7;
    [v5 na_each:v13];
    v10 = v15;
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

void __addOrReplaceElements_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __addOrReplaceElements_block_invoke_2;
  v11 = &unk_27868A958;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = v3;
  v12 = v5;
  v6 = [v4 indexOfObjectPassingTest:&v8];
  v7 = *(a1 + 32);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 addObject:{v5, v8, v9, v10, v11}];
  }

  else
  {
    [v7 replaceObjectAtIndex:v6 withObject:{v5, v8, v9, v10, v11}];
  }
}

uint64_t __addOrReplaceElements_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), a2);
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}