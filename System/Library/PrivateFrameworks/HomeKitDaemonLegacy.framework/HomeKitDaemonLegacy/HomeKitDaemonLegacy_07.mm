void sub_2534A82F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDAppleAccountSettingsPostUpdatedNotification(void *a1)
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated Apple account settings", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAppleAccountSettingsUpdatedNotification" object:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2534AB9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534AC2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __legacyWatchOSCategoryMap_block_invoke()
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (BulletinDistributorCompanionLibraryCore())
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v0 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    v18 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    if (!getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr)
    {
      v1 = BulletinDistributorCompanionLibrary();
      v16[3] = dlsym(v1, "BLTBulletinContextKeyWatchLegacyMapKey");
      getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = v16[3];
      v0 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v0)
    {
      goto LABEL_12;
    }

    v2 = *v0;
    v23 = v2;
    v3 = [&unk_286627B80 stringValue];
    v21 = v3;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v4 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    v18 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    if (!getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr)
    {
      v5 = BulletinDistributorCompanionLibrary();
      v16[3] = dlsym(v5, "BLTWatchLegacyMapCategoryIDKey");
      getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = v16[3];
      v4 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v4)
    {
LABEL_12:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v19 = *v4;
    v20 = MEMORY[0x277CBEBF8];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v19;
    v8 = [v6 dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v24[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = v10;

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = MEMORY[0x277CBEC10];
    v14 = *MEMORY[0x277D85DE8];
  }
}

void sub_2534B12DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BulletinDistributorCompanionLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    BulletinDistributorCompanionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BulletinDistributorCompanionLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTBulletinContextKeyWatchLegacyMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BulletinDistributorCompanionLibrary()
{
  v0 = BulletinDistributorCompanionLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getBLTWatchLegacyMapCategoryIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTWatchLegacyMapCategoryIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinDistributorCompanionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BulletinDistributorCompanionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2534B8080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2534B8434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534B8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NCSchedulerDateWithMultiple(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = MEMORY[0x277CBEAB8];
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(v8);
  if (v11)
  {
    v12 = [v7 era];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 * a4;
    }

    [v11 setEra:v13];
    v14 = [v7 year];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14 * a4;
    }

    [v11 setYear:v15];
    v16 = [v7 month];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16 * a4;
    }

    [v11 setMonth:v17];
    v18 = [v7 day];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18 * a4;
    }

    [v11 setDay:v19];
    v20 = [v7 hour];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20 * a4;
    }

    [v11 setHour:v21];
    v22 = [v7 minute];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22 * a4;
    }

    [v11 setMinute:v23];
    v24 = [v7 second];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24 * a4;
    }

    [v11 setSecond:v25];
    v26 = [v7 weekday];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26 * a4;
    }

    [v11 setWeekday:v27];
    v28 = [v7 weekdayOrdinal];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28 * a4;
    }

    [v11 setWeekdayOrdinal:v29];
    v30 = [v7 quarter];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30 * a4;
    }

    [v11 setQuarter:v31];
    v32 = [v7 weekOfMonth];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v32 * a4;
    }

    [v11 setWeekOfMonth:v33];
    v34 = [v7 weekOfYear];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34 * a4;
    }

    [v11 setWeekOfYear:v35];
    v36 = [v7 yearForWeekOfYear];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36 * a4;
    }

    [v11 setYearForWeekOfYear:v37];
  }

  v38 = [v9 dateByAddingComponents:v11 toDate:v10 options:0];

  return v38;
}

void sub_2534C4330(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(void *a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicAdditions:v14];
          goto LABEL_30;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicRemovals:v14];
LABEL_30:
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterAdditions:v14];
          }

          goto LABEL_33;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterRemovals:v14];
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2534CE038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534CF32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDAccessorySettingsAuditReasonAsString(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDMediaSystemSettingsAuditReason %tu", a1];
  }

  else
  {
    v2 = off_2797247A8[a1 - 1];
  }

  return v2;
}

__CFString *HMDEventTriggerActivationTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerActivationType %tu", a1];
  }

  else
  {
    v2 = off_2797247E8[a1];
  }

  return v2;
}

void sub_2534D76B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534D93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534E4B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 168));
  _Unwind_Resume(a1);
}

void sub_2534E6B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534EA0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534EE348(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534EE3EC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2534EFECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F0B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDCameraAspectRatioForImageData(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  if (v2)
  {
    v3 = v2;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    CFRelease(v3);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      CFRelease(ImageAtIndex);
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:Width / Height];
      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Failed to create image";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      v11 = "%{public}@Failed to create image source";
LABEL_8:
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, v11, &v14, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

id getIDSSessionOptionsAllowedClasses()
{
  v5[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:8];
  v2 = [v0 setWithArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_2534F5CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F7B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534F9104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2534FB494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535025AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535047E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253505EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253506D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 184));
  _Unwind_Resume(a1);
}

void sub_253509014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33507(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25350B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25350E538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25350FDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253514314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sha256(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a1;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v21 = &a9;
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      *md = 0;
      v24 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            _HMFPreconditionFailureWithFormat();
          }

          v13 = md;
          [v12 getUUIDBytes:md];
          v15 = 16;
          goto LABEL_10;
        }

        v13 = [v12 bytes];
        v14 = [v12 length];
      }

      v15 = v14;
LABEL_10:
      CC_SHA256_Update(&c, v13, v15);
      v16 = v21++;
      v17 = *v16;

      v12 = v17;
    }

    while (v17);
  }

  CC_SHA256_Final(md, &c);
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_25351F468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253521B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253522140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535226F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253522E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v38 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253528408(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253528648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id hds_log()
{
  if (hds_log__hmf_once_t0 != -1)
  {
    dispatch_once(&hds_log__hmf_once_t0, &__block_literal_global_36104);
  }

  v1 = hds_log__hmf_once_v1;

  return v1;
}

void __hds_log_block_invoke()
{
  v3 = [@"hds" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = hds_log__hmf_once_v1;
  hds_log__hmf_once_v1 = v1;
}

void sub_25352F19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352F54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25352FDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535345A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, id a28)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v29 - 152));
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_253537728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __getDenylistKeys_block_invoke()
{
  if (isInternalBuild())
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", 0, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];
  }

  else
  {
    v0 = *MEMORY[0x277CD1FD8];
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", *MEMORY[0x277CD1FD8], *MEMORY[0x277CD1FC8], *MEMORY[0x277CD2620], *MEMORY[0x277CD2040], *MEMORY[0x277CD2758], *MEMORY[0x277CD27B0], *MEMORY[0x277CD23D0], *MEMORY[0x277CD0D30], @"kAccessoryInfoSerialNumberKey", @"kUserIDKey", @"kUserIDsKey", @"kUserDisplayNameKey", @"kUserNamesKey", 0}];
  }
  v1 = ;
  v2 = getDenylistKeys_denylistKeys;
  getDenylistKeys_denylistKeys = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void sub_253538804(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t validateEntitlementForConnection(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (([v4 valueForEntitlement:v3], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v7 = 0) : (v7 = v6), v8 = v7, v6, v8))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id HMXPCClientEntitlementsToComponents(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:64];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i <= 2047)
        {
          if (i <= 31)
          {
            if (i <= 3)
            {
              v4 = @"com.apple.developer.homekit";
              if (i == 1)
              {
                goto LABEL_56;
              }

              if (i == 2)
              {
                v4 = @"com.apple.developer.homekit.background-mode";
                goto LABEL_56;
              }
            }

            else
            {
              switch(i)
              {
                case 4:
                  v4 = @"com.apple.private.homekit";
                  goto LABEL_56;
                case 8:
                  v4 = @"com.apple.private.homekit.pairing-identity";
                  goto LABEL_56;
                case 16:
                  v4 = @"com.apple.private.homekit.pairing-identity.private";
                  goto LABEL_56;
              }
            }
          }

          else if (i > 255)
          {
            switch(i)
            {
              case 256:
                v4 = @"com.apple.private.homekit.connectivity-info";
                goto LABEL_56;
              case 512:
                v4 = @"com.apple.private.homekit.multi-user.setup";
                goto LABEL_56;
              case 1024:
                v4 = @"com.apple.private.homekit.location";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 32:
                v4 = @"com.apple.private.homekit.remote-login.private";
                goto LABEL_56;
              case 64:
                v4 = @"com.apple.developer.homekit.allow-setup-payload";
                goto LABEL_56;
              case 128:
                v4 = @"com.apple.private.homekit.cameraclips";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x20000)
        {
          if (i >= 0x100000)
          {
            switch(i)
            {
              case 0x100000:
                v4 = @"com.apple.private.homekit.location-feedback-debug";
                goto LABEL_56;
              case 0x200000:
                v4 = @"com.apple.developer.matter.allow-setup-payload";
                goto LABEL_56;
              case 0x400000:
                v4 = @"com.apple.private.homekit.modern-messaging";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 0x20000:
                v4 = @"com.apple.private.homekit.wallet-key";
                goto LABEL_56;
              case 0x40000:
                v4 = @"com.apple.private.homekit.assistant-identifiers";
                goto LABEL_56;
              case 0x80000:
                v4 = @"com.apple.private.homekit.home-location";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x4000)
        {
          switch(i)
          {
            case 0x4000:
              v4 = @"com.apple.private.homekit.allow-secure-access";
              goto LABEL_56;
            case 0x8000:
              v4 = @"com.apple.private.homekit.diagnostics";
              goto LABEL_56;
            case 0x10000:
              v4 = @"com.apple.private.homekit.state-dump";
              goto LABEL_56;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v4 = @"com.apple.private.homekit.shortcuts-automation-access";
              goto LABEL_56;
            case 0x1000:
              v4 = @"com.apple.private.homekit.messaging";
              goto LABEL_56;
            case 0x2000:
              v4 = @"com.apple.private.homekit.person-manager";
LABEL_56:
              [v2 addObject:v4];
              break;
          }
        }
      }
    }
  }

  v5 = [v2 copy];

  return v5;
}

void sub_25353CD70(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253542600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253542C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2535482CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253551658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__40007(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535526FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253553180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253553E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535545D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253554F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535554C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253555AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253556D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535575E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

BOOL HMDCloudManagerIsZoneNotExistError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v3 = [v1 code] == 26 || objc_msgSend(v1, "code") == 28;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2535587EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253558FE8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x253558F94);
  }

  _Unwind_Resume(a1);
}

void sub_25355A40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v69 + 88));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a49);
  _Block_object_dispose(&a51, 8);
  objc_destroyWeak(&a64);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  objc_destroyWeak(&STACK[0x260]);
  objc_destroyWeak((v70 - 248));
  _Block_object_dispose((v70 - 240), 8);
  _Block_object_dispose((v70 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25355DA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25355E070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355E7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25355F390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_25355FE88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_25356079C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253561110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253561CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2535625D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 64));
  objc_destroyWeak((v2 + 48));
  _Block_object_dispose((v4 - 176), 8);
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_253564094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253564918(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_253564FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a27);
  _Block_object_dispose((v32 - 176), 8);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_253566648(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_253567028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253567758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_253568768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  objc_destroyWeak(&a47);
  objc_destroyWeak((v47 - 256));
  _Unwind_Resume(a1);
}

void sub_25356F3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __notifyDelegateAccountRemoved(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountRemoved_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountRemoved_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"HMDAccountNotificationKey";
  v13 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __notifyDelegateAccountAdded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountAdded_block_invoke;
    v6[3] = &unk_2797359B0;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountAdded_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = @"HMDAccountNotificationKey";
  v13 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryAddedAccountNotification" object:v9 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __cleanupRemoteDevicesWithHandles(void *a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v36 = v3;
  [v3 remoteAccountManager];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v45 = 0u;
  obj = [v29 accounts];
  v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v32)
  {
    v31 = *v43;
    v5 = 0x277CBE000uLL;
    v34 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v6;
        v7 = *(*(&v42 + 1) + 8 * v6);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v37 = v7;
        v35 = [v7 devices];
        v8 = [v35 countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v35);
              }

              v12 = *(*(&v38 + 1) + 8 * i);
              v13 = *(v5 + 2904);
              v14 = [v12 handles];
              v15 = [v13 setWithArray:v14];

              [v15 intersectSet:v4];
              if ([v15 count])
              {
                v16 = objc_autoreleasePoolPush();
                v17 = v36;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = HMFGetLogIdentifier();
                  v20 = [v12 shortDescription];
                  *buf = 138543874;
                  v47 = v19;
                  v48 = 2112;
                  v49 = v20;
                  v50 = 2112;
                  v51 = v37;
                  _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing duplicate device, %@, from account: %@", buf, 0x20u);

                  v4 = v34;
                  v5 = 0x277CBE000;
                }

                objc_autoreleasePoolPop(v16);
                [v37 removeDevice:v12];
              }
            }

            v9 = [v35 countByEnumeratingWithState:&v38 objects:v52 count:16];
          }

          while (v9);
        }

        v21 = [v37 devices];
        v22 = [v21 hmf_isEmpty];

        v5 = 0x277CBE000;
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v36;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v47 = v26;
            v48 = 2112;
            v49 = v37;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Removing duplicate empty account: %@", buf, 0x16u);

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v23);
          [v29 removeAccount:v37];
        }

        v6 = v33 + 1;
        v4 = v34;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v32);
  }

  objc_autoreleasePoolPop(context);
  v27 = *MEMORY[0x277D85DE8];
}

void __cleanupRemoteAccountsRelatedToAccount(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [v3 remoteAccountManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 accounts];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v19 = v5;
    v20 = v3;
    v21 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([v4 isEqual:v11] & 1) == 0 && objc_msgSend(v4, "isRelatedToAccount:", v11))
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v3;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v11 shortDescription];
            *buf = 138543618;
            v27 = v15;
            v28 = 2112;
            v29 = v16;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Detected stale account, %@, removing", buf, 0x16u);

            v3 = v20;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v12);
          [v5 removeAccount:v11];
          v6 = v21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v17 = *MEMORY[0x277D85DE8];
}

void __registerForAccountUpdates(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account updates: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:v6 name:@"HMDAccountHandlesUpdatedNotification" object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v6 name:@"HMDAccountAddedDeviceNotification" object:0];

  if (v4)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel___handleAppleAccountHandlesUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v4];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v6 selector:sel___handleAppleAccountDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

id __deviceForDevice(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      v20 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v21 + 1) + 8 * j);
                if ([v4 isRelatedToDevice:v16])
                {
                  v17 = v16;

                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v20;
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        v17 = 0;
      }

      while (v7);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __deviceForHandle(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) deviceForHandle:{v5, v15}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

id __accountForHandle(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 handles];
          v11 = [v10 containsObject:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

__CFString *HMDMatterAccessoryPairingStepAsString(unint64_t a1)
{
  if (a1 >= 0x1C)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined HMDMatterAccessoryPairingStep %tu", a1];
  }

  else
  {
    v2 = off_279725EA8[a1];
  }

  return v2;
}

void sub_25357EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25357ED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25357EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42241(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535809A0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253581474(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2535814F8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253581714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42652(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253588A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43792(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __createBackboardWatcher(void *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!+[HMDDeviceCapabilities supportsBackboard])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@No backboardd support for device, skipping watcher", location, 0xCu);
    }

    goto LABEL_9;
  }

  ServerPort = CARenderServerGetServerPort();
  if ((ServerPort - 1) >= 0xFFFFFFFE)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find port for default render server", location, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    goto LABEL_10;
  }

  v3 = ServerPort;
  objc_initWeak(location, v1);
  v4 = MEMORY[0x277CF0CB8];
  v5 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:v3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ____createBackboardWatcher_block_invoke;
  v12[3] = &unk_279732FD8;
  objc_copyWeak(&v13, location);
  [v4 monitorSendRight:v5 withHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

void sub_253588E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createBackboardWatcher_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backboardServicesRelaunched];
}

void sub_25358B3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25358C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 56));
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v66 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25358F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44517(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535930E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _findConstraintForType(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___findConstraintForType_block_invoke;
  v4[3] = &__block_descriptor_40_e38_B16__0__HMAccessorySettingConstraint_8l;
  v4[4] = a2;
  v2 = [a1 na_firstObjectPassingTest:v4];

  return v2;
}

void sub_253595670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535968A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __transactionAccessoryUpdated(void *a1, void *a2, void *a3)
{
  v308[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v263 = a3;
  v7 = [v263 transactionResult];
  [v7 source];
  v8 = MEMORY[0x277CBEB18];
  v9 = +[HMDAccessoryTransaction properties];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [0 configurationTracker];
  v12 = v11;
  if (v11)
  {
    dispatch_group_enter(v11);
  }

  v272 = v10;
  if (([v6 propertyWasSet:@"name"] & 1) != 0 || objc_msgSend(v6, "propertyWasSet:", @"configuredName"))
  {
    v13 = [v6 name];
    v14 = v5;
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

    if (v16)
    {
      v17 = [v6 configuredName];

      v13 = v17;
    }

    v18 = [v14 configuredName];
    v19 = [v14 name];
    if ((HMFEqualObjects() & 1) == 0)
    {
      [v14 setConfiguredName:v13];
      [v7 markChanged];
    }

    v20 = [v14 name];
    v21 = HMFEqualObjects();
    if (v20 && (v21 & 1) == 0)
    {
      [v7 markSaveToAssistant];
      v22 = [v14 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke;
      block[3] = &unk_2797359B0;
      v285 = v14;
      v286 = v20;
      dispatch_async(v22, block);

      v10 = v272;
    }
  }

  if ([v6 propertyWasSet:@"providedName"])
  {
    v23 = [v5 providedName];
    v24 = [v6 providedName];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      v26 = [v5 name];
      v27 = [v5 providedName];
      v28 = [v6 providedName];
      [v5 setProvidedName:v28];

      v29 = [v5 name];
      if (v29 && (HMFEqualObjects() & 1) == 0)
      {
        [v7 markSaveToAssistant];
        v30 = [v5 workQueue];
        v281[0] = MEMORY[0x277D85DD0];
        v281[1] = 3221225472;
        v281[2] = ____transactionAccessoryUpdated_block_invoke_2;
        v281[3] = &unk_2797359B0;
        v282 = v5;
        v283 = v29;
        dispatch_async(v30, v281);
      }

      v31 = [v5 providedName];
      v32 = HMFEqualObjects();

      if ((v32 & 1) == 0)
      {
        [v7 markChanged];
      }
    }
  }

  v33 = [v6 setProperties];
  v34 = [v33 containsObject:@"model"];
  v35 = v34;
  if (!v34)
  {
    goto LABEL_28;
  }

  v36 = [v6 model];
  v37 = [v5 model];
  v38 = HMFEqualObjects();

  if ((v38 & 1) == 0)
  {
    v39 = [v6 model];

    if (v39)
    {
      v33 = [v6 model];
      [v5 setModel:v33];
LABEL_28:

      goto LABEL_30;
    }
  }

  v35 = 0;
LABEL_30:
  v40 = [v6 setProperties];
  if (![v40 containsObject:@"manufacturer"])
  {
LABEL_34:

    goto LABEL_35;
  }

  v41 = [v6 manufacturer];
  v42 = [v5 manufacturer];
  v43 = HMFEqualObjects();

  if ((v43 & 1) == 0)
  {
    v44 = [v6 manufacturer];

    if (v44)
    {
      v40 = [v6 manufacturer];
      [v5 setManufacturer:v40];
      v35 = 1;
      goto LABEL_34;
    }
  }

LABEL_35:
  group = v12;
  v45 = [v6 firmwareVersion];
  v268 = v6;
  if (v45)
  {
    v46 = v45;
    v47 = [v6 firmwareVersion];
    v48 = [v5 firmwareVersion];
    v49 = [v48 rawVersionString];
    v50 = HMFEqualObjects();

    if (v50)
    {
      v10 = v272;
    }

    else
    {
      v51 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v52;

      if (v53 && [v53 supportsCHIP])
      {
        v54 = [HMDAccessoryVersion alloc];
        v55 = [v6 firmwareVersion];
        v56 = [(HMDAccessoryVersion *)v54 initWithMatterVersionString:v55];
      }

      else
      {
        v57 = [HMDAccessoryVersion alloc];
        v55 = [v6 firmwareVersion];
        v56 = [(HMDAccessoryVersion *)v57 initWithString:v55];
      }

      v58 = v56;
      v10 = v272;

      if (v58)
      {
        v59 = [v51 firmwareVersion];
        [v51 setFirmwareVersion:v58];
        if (([v58 isEqualToVersion:v59] & 1) == 0)
        {
          if (v59)
          {
            v307 = @"HMDAccessoryPreviousFirmwareVersionKey";
            v308[0] = v59;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v308 forKeys:&v307 count:1];
          }

          else
          {
            v60 = 0;
          }

          logAndPostNotification(@"HMDAccessoryFirmwareVersionUpdatedNotification", v51, v60);
        }

        v35 = 1;
      }
    }
  }

  v61 = [v6 setProperties];
  if (![v61 containsObject:@"displayableFirmwareVersion"])
  {
    goto LABEL_62;
  }

  v62 = [v6 displayableFirmwareVersion];
  v63 = [v5 displayableFirmwareVersion];
  v64 = HMFEqualObjects();

  if ((v64 & 1) == 0)
  {
    v65 = [v6 displayableFirmwareVersion];

    if (v65)
    {
      v61 = [v5 displayableFirmwareVersion];
      v66 = [v6 displayableFirmwareVersion];
      [v5 setDisplayableFirmwareVersion:v66];

      v67 = [v6 displayableFirmwareVersion];
      v68 = [v67 isEqualToString:v61];

      if ((v68 & 1) == 0)
      {
        if (v61)
        {
          v305 = @"HMDAccessoryPreviousDisplayableFirmwareVersionKey";
          v306 = v61;
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
        }

        else
        {
          v69 = 0;
        }

        logAndPostNotification(@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification", v5, v69);
      }

      v35 = 1;
LABEL_62:
    }
  }

  v70 = [v6 setProperties];
  if ([v70 containsObject:@"serialNumber"])
  {
    v71 = [v6 serialNumber];
    v72 = [v5 serialNumber];
    v73 = HMFEqualObjects();

    if (v73)
    {
      goto LABEL_68;
    }

    v74 = [v6 serialNumber];

    if (!v74)
    {
      goto LABEL_68;
    }

    v70 = [v6 serialNumber];
    [v5 setSerialNumber:v70];
    v35 = 1;
  }

LABEL_68:
  v75 = [v6 hostAccessoryUUID];
  v262 = v75;
  if (v75)
  {
    v267 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v75];
  }

  else
  {
    v267 = 0;
  }

  if ([v6 propertyWasSet:@"hostAccessoryUUID"])
  {
    v76 = [v5 hostAccessory];
    v77 = [v76 uuid];
    v78 = [v77 hmf_isEqualToUUID:v267];

    if ((v78 & 1) == 0)
    {
      [v5 _updateHost:v267];
      [v7 markChanged];
      [v7 markSaveToAssistant];
    }
  }

  v79 = [v5 home];
  v266 = [v79 homeManager];
  v80 = [v5 productData];
  v81 = [v6 productDataV2];
  v270 = [v6 productData];
  v82 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = v82;
  }

  else
  {
    v83 = 0;
  }

  v269 = v83;
  v274 = v82;

  v265 = v80;
  v259 = v81;
  if (v81 && (HMFEqualObjects() & 1) == 0)
  {
    v89 = v82;
    v90 = v81;
LABEL_92:
    [v89 setProductData:{v90, v259}];
    if (v269)
    {
      v96 = [v266 accessoryFirmwareUpdateManager];
      [v96 registerAccessory:v269];
    }

LABEL_94:
    v296 = v274;
    v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v296 count:{1, v259}];
    [v79 notifyClientsOfAccessoryInfoUpdatedForAccessories:v97];

    [v7 markChanged];
    goto LABEL_95;
  }

  if (v270 && !v80)
  {
    v84 = objc_autoreleasePoolPush();
    v85 = v274;
    v86 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      v87 = HMFGetLogIdentifier();
      v88 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138543874;
      v298 = v87;
      v299 = 2112;
      v300 = v270;
      v301 = 2112;
      v302 = v88;
      _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Applying initial legacy productData %@ (source: %@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v84);
    v89 = v85;
    v90 = v270;
    goto LABEL_92;
  }

  if (v270 && (HMFEqualObjects() & 1) == 0)
  {
    v91 = objc_autoreleasePoolPush();
    v92 = v82;
    v93 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      v94 = HMFGetLogIdentifier();
      v95 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138544130;
      v298 = v94;
      v299 = 2112;
      v300 = v265;
      v301 = 2112;
      v302 = v270;
      v303 = 2112;
      v304 = v95;
      _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_INFO, "%{public}@Ignoring legacy productData change %@ -> %@ (source: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v91);
  }

  if (v35)
  {
    goto LABEL_94;
  }

LABEL_95:
  v98 = [v6 initialManufacturer];
  if (v98)
  {
    v99 = v98;
    v100 = [v6 initialManufacturer];
    v101 = [v274 initialManufacturer];
    v102 = HMFEqualObjects();

    if ((v102 & 1) == 0)
    {
      v103 = [v6 initialManufacturer];
      [v274 setInitialManufacturer:v103];

      logAndPostNotification(@"HMDAccessoryManufacturerUpdatedNotification", v274, 0);
      [v7 markChanged];
    }
  }

  v104 = [v6 initialModel];
  if (v104)
  {
    v105 = v104;
    v106 = [v6 initialModel];
    v107 = [v274 initialModel];
    v108 = HMFEqualObjects();

    if ((v108 & 1) == 0)
    {
      v109 = [v6 initialModel];
      [v274 setInitialModel:v109];

      [v7 markChanged];
    }
  }

  v110 = [v6 initialCategoryIdentifier];
  if (v110)
  {
    v111 = v110;
    v112 = [v6 initialCategoryIdentifier];
    v113 = [v274 initialCategoryIdentifier];
    v114 = HMFEqualObjects();

    if ((v114 & 1) == 0)
    {
      v115 = [v6 initialCategoryIdentifier];
      [v274 setInitialCategoryIdentifier:v115];

      logAndPostNotification(@"HMDAccessoryCategoryUpdatedNotification", v274, 0);
      [v7 markChanged];
    }
  }

  v116 = [v6 accessoryCategory];

  if (v116)
  {
    v117 = [v6 accessoryCategory];
    v118 = [v274 _updateCategory:v117 notifyClients:1];

    if (v118)
    {
      [v10 addObject:v118];
      [v7 markChanged];
      if (v269)
      {
        [v269 updatePrimaryServiceIfNeeded];
      }
    }
  }

  if ([v6 propertyWasSet:@"networkClientIdentifier"])
  {
    v119 = [v6 networkClientIdentifier];
    v120 = [v274 networkClientIdentifier];
    v121 = HMFEqualObjects();

    if ((v121 & 1) == 0)
    {
      v122 = [v6 networkClientIdentifier];
      [v274 setNetworkClientIdentifier:v122];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkRouterUUID"])
  {
    v123 = [v6 networkRouterUUID];
    v124 = [v274 networkRouterUUID];
    v125 = [v124 UUIDString];
    v126 = HMFEqualObjects();

    if ((v126 & 1) == 0)
    {
      v127 = objc_alloc(MEMORY[0x277CCAD78]);
      v128 = [v6 networkRouterUUID];
      v129 = [v127 initWithUUIDString:v128];
      [v274 setNetworkRouterUUID:v129];

      [v7 markChanged];
    }
  }

  v130 = [v6 currentNetworkProtectionMode];
  if (v130)
  {
    v131 = v130;
    v132 = [v6 currentNetworkProtectionMode];
    v133 = [v132 integerValue];
    v134 = [v274 currentNetworkProtectionMode];

    if (v133 != v134)
    {
      v135 = [v6 currentNetworkProtectionMode];
      [v274 setCurrentNetworkProtectionMode:{objc_msgSend(v135, "integerValue")}];

      [v7 markChanged];
    }
  }

  v136 = [v6 wiFiCredentialType];
  if (v136)
  {
    v137 = v136;
    v138 = [v6 wiFiCredentialType];
    v139 = [v138 integerValue];
    v140 = [v274 wiFiCredentialType];

    if (v139 != v140)
    {
      v141 = objc_autoreleasePoolPush();
      v142 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        v143 = HMFGetLogIdentifier();
        v144 = [v274 wiFiCredentialType];
        v145 = [v6 wiFiCredentialType];
        v146 = [v145 integerValue];
        *buf = 138544130;
        v298 = v143;
        v299 = 2048;
        v300 = v144;
        v301 = 2048;
        v302 = v146;
        v303 = 2112;
        v304 = v274;
        _os_log_impl(&dword_2531F8000, v142, OS_LOG_TYPE_INFO, "%{public}@Updating wiFiCredentialType from [%lu] to [%lu] for accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v141);
      v147 = [v6 wiFiCredentialType];
      [v274 setWiFiCredentialType:{objc_msgSend(v147, "integerValue")}];

      [v7 markChanged];
      v148 = MEMORY[0x277D0F818];
      v149 = *MEMORY[0x277CD0A10];
      v294[0] = *MEMORY[0x277CD0A08];
      v150 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v274, "supportsWiFiReconfiguration")}];
      v295[0] = v150;
      v294[1] = *MEMORY[0x277CD09F8];
      v151 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v274, "wiFiCredentialType")}];
      v295[1] = v151;
      v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v295 forKeys:v294 count:2];
      v153 = [v148 entitledMessageWithName:v149 messagePayload:v152];
      [v10 addObject:v153];
    }
  }

  v154 = [v6 networkClientLAN];
  if (v154)
  {
    v155 = v154;
    v156 = [v6 networkClientLAN];
    v157 = [v156 integerValue];
    v158 = [v274 networkClientLAN];

    if (v157 != v158)
    {
      v159 = [v6 networkClientLAN];
      [v274 setNetworkClientLAN:{objc_msgSend(v159, "integerValue")}];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkClientProfileFingerprint"])
  {
    v160 = [v6 networkClientProfileFingerprint];
    v161 = [v274 networkClientProfileFingerprint];
    v162 = [v161 UUIDString];
    v163 = HMFEqualObjects();

    if ((v163 & 1) == 0)
    {
      v164 = objc_alloc(MEMORY[0x277CCAD78]);
      v165 = [v6 networkClientProfileFingerprint];
      v166 = [v164 initWithUUIDString:v165];
      [v274 setNetworkClientProfileFingerprint:v166];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"appliedFirewallWANRules"])
  {
    v167 = [v6 appliedFirewallWANRules];
    v168 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:v167];

    if (v168)
    {
      v169 = [v274 allowedHosts];
      v170 = HMFEqualObjects();

      if ((v170 & 1) == 0)
      {
        [v274 setAllowedHosts:v168];
        [v7 markChanged];
        v171 = MEMORY[0x277D0F818];
        v172 = *MEMORY[0x277CD09E8];
        v292 = *MEMORY[0x277CD09E0];
        v173 = [v274 allowedHosts];
        v174 = encodeRootObjectForSPIClients(v173);
        v293 = v174;
        v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
        v176 = [v171 entitledMessageWithName:v172 messagePayload:v175];

        v10 = v272;
        [v272 addObject:v176];
      }
    }
  }

  if ([v6 propertyWasSet:@"wiFiUniquePreSharedKey"])
  {
    v177 = [v6 wiFiUniquePreSharedKey];
    v178 = [v274 wiFiUniquePreSharedKey];
    v179 = HMFEqualObjects();

    if ((v179 & 1) == 0)
    {
      v180 = [v6 wiFiUniquePreSharedKey];
      [v274 setWiFiUniquePreSharedKey:v180];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"pendingConfigurationIdentifier"])
  {
    v181 = [v6 pendingConfigurationIdentifier];
    v182 = [v274 pendingConfigurationIdentifier];
    v183 = HMFEqualObjects();

    if ((v183 & 1) == 0)
    {
      v184 = [v6 pendingConfigurationIdentifier];
      [v274 setPendingConfigurationIdentifier:v184];

      [v7 markChanged];
    }
  }

  v261 = v79;
  if ([v6 propertyWasSet:@"lastNetworkAccessViolationOccurrenceSince1970"] && objc_msgSend(v6, "propertyWasSet:", @"lastNetworkAccessViolationResetSince1970"))
  {
    v185 = [v274 networkAccessViolation];
    v186 = [HMDAccessoryNetworkAccessViolation alloc];
    v187 = [v6 lastNetworkAccessViolationOccurrenceSince1970];
    v188 = [v6 lastNetworkAccessViolationResetSince1970];
    v189 = [(HMDAccessoryNetworkAccessViolation *)v186 initWithLastViolationTimeInterval:v187 lastViolationResetTimeInterval:v188];

    if ((HMFEqualObjects() & 1) == 0)
    {
      [v274 setNetworkAccessViolation:v189];
      v190 = [(HMDAccessoryNetworkAccessViolation *)v189 hasCurrentViolation];
      v191 = v190 ^ [v185 hasCurrentViolation];
      v192 = [v185 lastViolationDate];
      v193 = [(HMDAccessoryNetworkAccessViolation *)v189 lastViolationDate];
      v194 = v193;
      v195 = 0;
      if (v192 && v189)
      {
        [v193 timeIntervalSinceDate:v192];
        v195 = v196 >= 86400.0;
      }

      v197 = v194;
      if ((v191 | v195))
      {
        [v7 markChanged];
      }

      else
      {
        [v7 markLocalChanged];
      }

      v6 = v268;
      v198 = encodeRootObjectForSPIClients(v189);
      v199 = MEMORY[0x277D0F818];
      v200 = *MEMORY[0x277CD09D8];
      v290 = *MEMORY[0x277CD09D0];
      v291 = v198;
      v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
      v202 = [v199 entitledMessageWithName:v200 messagePayload:v201];

      v10 = v272;
      [v272 addObject:v202];
    }
  }

  if ([v6 propertyWasSet:@"configuredNetworkProtectionGroupUUIDString"])
  {
    v203 = [v6 configuredNetworkProtectionGroupUUIDString];
    v204 = [v274 configuredNetworkProtectionGroupUUID];
    v205 = [v204 UUIDString];
    v206 = HMFEqualObjects();

    if ((v206 & 1) == 0)
    {
      v207 = [v6 configuredNetworkProtectionGroupUUIDString];
      if (v207)
      {
        v208 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v207];
      }

      else
      {
        v208 = 0;
      }

      v209 = [v274 configuredNetworkProtectionGroupUUID];
      [v274 setConfiguredNetworkProtectionGroupUUID:v208];
      if (v209)
      {
        v288 = @"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey";
        v289 = v209;
        v210 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
      }

      else
      {
        v210 = 0;
      }

      logAndPostNotification(@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification", v274, v210);
      [v7 markChanged];
    }
  }

  v211 = [v6 suspendCapable];
  if (v211)
  {
    v212 = v211;
    v213 = [v274 isSuspendCapable];
    v214 = [v6 suspendCapable];
    v215 = [v214 BOOLValue];

    if (v213 != v215)
    {
      v216 = [v6 suspendCapable];
      [v274 setSuspendCapable:{objc_msgSend(v216, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v217 = [v6 lastSeenDate];
  if (v217)
  {
    v218 = v217;
    v219 = [v6 lastSeenDate];
    v220 = [v274 lastSeenDate];
    v221 = [v219 isEqualToDate:v220];

    if ((v221 & 1) == 0)
    {
      v222 = [v6 lastSeenDate];
      [v274 setLastSeenDate:v222];

      [v7 markChanged];
    }
  }

  v223 = [v6 lowBattery];
  if (v223)
  {
    v224 = v223;
    v225 = [v274 isLowBattery];
    v226 = [v6 lowBattery];
    v227 = [v226 BOOLValue];

    if (v225 != v227)
    {
      v228 = [v6 lowBattery];
      [v274 setLowBattery:{objc_msgSend(v228, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v229 = [v6 sharedAdminAddedTimestamp];
  if (v229)
  {
    v230 = v229;
    v231 = [v274 sharedAdminAddedTimestamp];
    v232 = [v6 sharedAdminAddedTimestamp];
    v233 = HMFEqualObjects();

    if ((v233 & 1) == 0)
    {
      v234 = [v6 sharedAdminAddedTimestamp];
      [v274 setSharedAdminAddedTimestamp:v234];

      [v7 markChanged];
    }
  }

  v235 = [v6 pairingsAuditedTimestamp];
  if (v235)
  {
    v236 = v235;
    v237 = [v274 pairingsAuditedTimestamp];
    v238 = [v6 pairingsAuditedTimestamp];
    v239 = HMFEqualObjects();

    if ((v239 & 1) == 0)
    {
      v240 = objc_autoreleasePoolPush();
      v241 = v274;
      v242 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v242, OS_LOG_TYPE_INFO))
      {
        v243 = HMFGetLogIdentifier();
        v244 = [v6 pairingsAuditedTimestamp];
        *buf = 138543618;
        v298 = v243;
        v299 = 2112;
        v300 = v244;
        _os_log_impl(&dword_2531F8000, v242, OS_LOG_TYPE_INFO, "%{public}@Setting pairings audit timestamp to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v240);
      v245 = [v6 pairingsAuditedTimestamp];
      [v241 setPairingsAuditedTimestamp:v245];

      [v7 markChanged];
    }
  }

  v273 = [v263 transport];
  v246 = dispatch_group_create();
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  obj = v10;
  v247 = [obj countByEnumeratingWithState:&v277 objects:v287 count:16];
  if (v247)
  {
    v248 = v247;
    v249 = *v278;
    do
    {
      for (i = 0; i != v248; ++i)
      {
        if (*v278 != v249)
        {
          objc_enumerationMutation(obj);
        }

        v251 = *(*(&v277 + 1) + 8 * i);
        dispatch_group_enter(v246);
        if (v263)
        {
          v252 = [v251 mutableCopy];
          [v252 setTransport:v273];
          v253 = [v252 copy];
        }

        else
        {
          v253 = v251;
        }

        v254 = [v274 msgDispatcher];
        v255 = [v274 uuid];
        v275[0] = MEMORY[0x277D85DD0];
        v275[1] = 3221225472;
        v275[2] = ____transactionAccessoryUpdated_block_invoke_1140;
        v275[3] = &unk_279735D00;
        v276 = v246;
        [v254 sendMessage:v253 target:v255 andInvokeCompletionHandler:v275];
      }

      v248 = [obj countByEnumeratingWithState:&v277 objects:v287 count:16];
    }

    while (v248);
  }

  dispatch_group_wait(v246, 0);
  v256 = [v263 responseHandler];

  if (v256)
  {
    v257 = [v263 responseHandler];
    v257[2](v257, 0, 0);
  }

  if (group)
  {
    dispatch_group_leave(group);
  }

  v258 = *MEMORY[0x277D85DE8];
}

id EpochIntervalFromDate(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    [a1 timeIntervalSince1970];
    a1 = [v2 numberWithDouble:?];
    v1 = vars8;
  }

  return a1;
}

void sub_2535A9DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535B5428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535BE3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535C0F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_2535C1D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2535C3D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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
    v13[3] = &unk_2797266A0;
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
  v11 = &unk_279726678;
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

void sub_2535C9590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2535C9868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49436(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2535CD730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535D16D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49869(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated_49871(void *a1, void *a2, void *a3)
{
  v223 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v205 = a3;
  v202 = [v205 transactionResult];
  v7 = MEMORY[0x277CBEB18];
  v8 = +[HMDHAPAccessoryTransaction properties];
  v201 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v200 = [v5 home];
  v9 = [v6 uniqueIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 uniqueIdentifier];
    v12 = [v6 uniqueIdentifier];
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [v6 uniqueIdentifier];
      [v5 setUniqueIdentifier:v14];

      [v202 markChanged];
    }
  }

  v15 = [v6 bridgeUUID];
  if (v15)
  {
    v16 = v15;
    v17 = [v5 bridge];
    v18 = [v17 uuid];
    v19 = [v18 UUIDString];
    v20 = [v6 bridgeUUID];
    v21 = [v19 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [v6 bridgeUUID];
      v24 = [v22 initWithUUIDString:v23];
      [v5 _updateHost:v24];

      [v202 markChanged];
      [v202 markSaveToAssistant];
    }
  }

  v25 = [v6 roomUUID];

  obj = v5;
  if (v25)
  {
    v26 = [v5 room];
    v27 = [v26 name];

    v28 = objc_alloc(MEMORY[0x277CCAD78]);
    v29 = [v6 roomUUID];
    v30 = [v28 initWithUUIDString:v29];

    v31 = objc_autoreleasePoolPush();
    v32 = v5;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v199 = [v32 home];
      v198 = [v199 roomWithUUID:v30];
      v197 = [v198 name];
      [v32 room];
      v35 = v31;
      v37 = v36 = v27;
      v38 = [v37 uuid];
      HMFEqualObjects();

      v5 = obj;
      v27 = v36;
      v31 = v35;
      v39 = HMFBooleanToString();
      *buf = 138544130;
      v216 = v34;
      v217 = 2112;
      v218 = v27;
      v219 = 2112;
      v220 = v197;
      v221 = 2112;
      v222 = v39;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    if (v30 && [v32 _updateRoom:v30 source:{objc_msgSend(v202, "source")}])
    {
      [v202 markChanged];
      [v202 markSaveToAssistant];
    }

    [v32 _handleRoomChangedFromOldRoomName:v27];
  }

  v40 = [v6 accessoryFlags];
  if (v40)
  {
    v41 = v40;
    v42 = [v5 accessoryFlags];
    v43 = [v6 accessoryFlags];
    v44 = [v42 isEqual:v43];

    if ((v44 & 1) == 0)
    {
      v45 = [v6 accessoryFlags];
      v46 = [v5 updateAccessoryFlagsAndNotifyClients:v45];

      if (v46)
      {
        [v201 addObject:v46];
        [v202 markChanged];
      }
    }
  }

  v47 = [v6 certificationStatus];
  v48 = v205;
  if (v47)
  {
    v49 = v47;
    v50 = [v6 certificationStatus];
    if ([v50 unsignedIntegerValue])
    {
      v51 = [v5 certificationStatus];
      v52 = [v6 certificationStatus];
      v53 = [v52 unsignedIntegerValue];

      if (v51 != v53)
      {
        v54 = [v6 certificationStatus];
        [v5 setCertificationStatus:{objc_msgSend(v54, "unsignedIntegerValue")}];

        [v202 markChanged];
      }
    }

    else
    {
    }
  }

  v55 = [v6 broadcastKey];
  if (v55)
  {
    v56 = v55;
    v57 = [v5 broadcastKey];
    v58 = [v6 broadcastKey];
    v59 = [v57 isEqualToData:v58];

    if ((v59 & 1) == 0)
    {
      v60 = [v6 broadcastKey];
      [v5 setBroadcastKey:v60];

      v61 = [v6 broadcastKey];
      v62 = [v6 keyUpdatedStateNumber];
      v63 = [v6 keyUpdatedTime];
      [v5 setBroadcastKey:v61 keyUpdatedStateNumber:v62 keyUpdatedTime:v63];

      [v202 markChanged];
    }
  }

  v64 = [v6 pairingUsername];
  if (v64)
  {
    v65 = v64;
    v66 = [v6 publicKey];
    if (!v66)
    {

      goto LABEL_35;
    }

    v67 = v66;
    v68 = [obj pairingUsername];
    v69 = [v6 pairingUsername];
    if ([v68 isEqual:v69])
    {
      v70 = [obj publicKey];
      v71 = [v6 publicKey];
      v72 = [v70 isEqual:v71];

      v48 = v205;
      if (v72)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v73 = [v6 pairingUsername];
    v74 = [v6 publicKey];
    [obj setPairingUsername:v73 publicKey:v74];

    [v202 markChanged];
  }

LABEL_35:
  v75 = [v6 transportInformation];

  v76 = obj;
  if (v75)
  {
    v77 = objc_autoreleasePoolPush();
    v78 = objc_opt_class();
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      [v202 source];
      v81 = HMFBooleanToString();
      v82 = [v6 transportInformation];
      *buf = 138543874;
      v216 = v80;
      v217 = 2112;
      v218 = v81;
      v219 = 2112;
      v220 = v82;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Received updated transportInformation from localSource: %@, transportInformation: %@", buf, 0x20u);

      v48 = v205;
    }

    objc_autoreleasePoolPop(v77);
    v83 = [v6 transportInformation];
    v84 = [obj updateTransportInformation:v83 localSource:{objc_msgSend(v202, "source") < 2}];

    if (v84)
    {
      [v202 markChanged];
    }
  }

  v85 = [v6 communicationProtocol];
  if (v85)
  {
    v86 = v85;
    v87 = [v6 communicationProtocol];
    v88 = [v87 integerValue];
    v89 = [obj communicationProtocol];

    if (v88 != v89)
    {
      v90 = objc_autoreleasePoolPush();
      v91 = obj;
      v92 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v93 = HMFGetLogIdentifier();
        [v91 communicationProtocol];
        v94 = HAPCommunicationProtocolDescription();
        v95 = [v6 communicationProtocol];
        [v95 integerValue];
        v96 = HAPCommunicationProtocolDescription();
        *buf = 138543874;
        v216 = v93;
        v217 = 2112;
        v218 = v94;
        v219 = 2112;
        v220 = v96;
        _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Updating communication protocol from %@ to %@", buf, 0x20u);

        v48 = v205;
        v76 = obj;
      }

      objc_autoreleasePoolPop(v90);
      v97 = [v6 communicationProtocol];
      [v91 setCommunicationProtocol:{objc_msgSend(v97, "integerValue")}];

      [v202 markChanged];
    }
  }

  v98 = [v6 accessorySetupHash];
  if (v98)
  {
    v99 = v98;
    v100 = [v76 setupHash];
    v101 = [v6 accessorySetupHash];
    v102 = [v100 isEqual:v101];

    if ((v102 & 1) == 0)
    {
      v103 = [v6 accessorySetupHash];
      [v76 setSetupHash:v103];

      [v202 markChanged];
    }
  }

  v104 = [v6 targetUUIDs];
  if (v104)
  {
    v105 = v104;
    v106 = [v76 targetUUIDs];
    v107 = [v6 targetUUIDs];
    v108 = [v106 isEqual:v107];

    if ((v108 & 1) == 0)
    {
      v109 = [v6 targetUUIDs];
      [v76 updateTargetUUIDs:v109];

      [v202 markChanged];
    }
  }

  v110 = [v6 hardwareSupport];
  if (v110)
  {
    v111 = v110;
    v112 = [v76 hardwareSupport];
    v113 = [v6 hardwareSupport];
    v114 = [v113 BOOLValue];

    if (v112 != v114)
    {
      v115 = [v6 hardwareSupport];
      [v76 setHardwareSupport:{objc_msgSend(v115, "BOOLValue")}];

      [v76 notifyClientsOfTargetControlSupportUpdate];
      [v202 markChanged];
    }
  }

  v116 = [v6 connectivityInfo];
  if (v116)
  {
    v117 = v116;
    v118 = [v76 connectivityInfo];
    v119 = [v6 connectivityInfo];
    v120 = HMFEqualObjects();

    if ((v120 & 1) == 0)
    {
      v121 = objc_autoreleasePoolPush();
      v122 = v76;
      v123 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        v124 = HMFGetLogIdentifier();
        v125 = [v122 connectivityInfo];
        v126 = [v6 connectivityInfo];
        *buf = 138543874;
        v216 = v124;
        v217 = 2112;
        v218 = v125;
        v219 = 2112;
        v220 = v126;
        _os_log_impl(&dword_2531F8000, v123, OS_LOG_TYPE_INFO, "%{public}@Updating connectivityInfo from %@ to %@", buf, 0x20u);

        v48 = v205;
      }

      objc_autoreleasePoolPop(v121);
      v127 = [v6 connectivityInfo];
      [v122 setConnectivityInfo:v127];

      [v202 markChanged];
    }
  }

  v128 = [v6 wiFiTransportCapabilities];
  if (v128)
  {
    v129 = v128;
    v130 = [v76 wiFiTransportCapabilities];
    v131 = [v6 wiFiTransportCapabilities];
    v132 = [v130 isEqualToNumber:v131];

    if ((v132 & 1) == 0)
    {
      v133 = [v6 wiFiTransportCapabilities];
      [v76 setWiFiTransportCapabilities:v133];

      [v202 markChanged];
    }
  }

  v134 = [v6 sleepInterval];
  if (v134)
  {
    v135 = v134;
    v136 = [v76 sleepInterval];
    v137 = [v6 sleepInterval];
    v138 = [v136 isEqualToNumber:v137];

    if ((v138 & 1) == 0)
    {
      v139 = [v6 sleepInterval];
      [v76 setSleepInterval:v139];

      [v202 markChanged];
    }
  }

  v140 = [v6 primaryProfileVersion];

  if (v140)
  {
    v141 = objc_alloc(MEMORY[0x277D0F940]);
    v142 = [v6 primaryProfileVersion];
    v143 = [v141 initWithString:v142];

    if (v143)
    {
      v144 = [v76 primaryProfileVersion];
      v145 = [v143 isEqualToVersion:v144];

      if ((v145 & 1) == 0)
      {
        [v76 setPrimaryProfileVersion:v143];
        v146 = [v76 networkRouterController];

        if (v146)
        {
          [v200 _evaluateNetworkRouterManagementForTransaction:v202];
        }

        [v202 markChanged];
      }
    }
  }

  v147 = [v6 hasOnboardedForNaturalLighting];
  if (v147)
  {
    v148 = v147;
    v149 = [v76 hasOnboardedForNaturalLighting];
    v150 = [v6 hasOnboardedForNaturalLighting];
    v151 = [v149 isEqualToNumber:v150];

    if ((v151 & 1) == 0)
    {
      v152 = objc_autoreleasePoolPush();
      v153 = v76;
      v154 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
      {
        v155 = HMFGetLogIdentifier();
        v156 = [v6 hasOnboardedForNaturalLighting];
        *buf = 138543618;
        v216 = v155;
        v217 = 2112;
        v218 = v156;
        _os_log_impl(&dword_2531F8000, v154, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v152);
      v157 = [v6 hasOnboardedForNaturalLighting];
      [v153 setHasOnboardedForNaturalLighting:v157];

      [v202 markChanged];
    }
  }

  v158 = [v6 initialServiceTypeUUIDs];
  if (v158)
  {
    v159 = v158;
    v160 = [v6 initialServiceTypeUUIDs];
    v161 = [v76 initialServiceTypeUUIDs];
    v162 = HMFEqualObjects();

    if ((v162 & 1) == 0)
    {
      v163 = [v6 initialServiceTypeUUIDs];
      [v76 setInitialServiceTypeUUIDs:v163];

      [v202 markChanged];
    }
  }

  v164 = [v6 needsOnboarding];
  if (v164)
  {
    v165 = v164;
    v166 = [v6 needsOnboarding];
    v167 = [v76 needsOnboarding];
    v168 = HMFEqualObjects();

    if ((v168 & 1) == 0)
    {
      v169 = [v6 needsOnboarding];
      [v76 setNeedsOnboarding:v169];

      [v202 markChanged];
    }
  }

  v170 = [v6 suspendedState];
  if (v170)
  {
    v171 = v170;
    v172 = [v6 suspendedState];
    v173 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v76, "suspendedState")}];
    v174 = [v172 isEqualToNumber:v173];

    if ((v174 & 1) == 0)
    {
      v175 = objc_autoreleasePoolPush();
      v176 = v76;
      v177 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
      {
        v178 = HMFGetLogIdentifier();
        [v176 suspendedState];
        v179 = HAPAccessorySuspendedStateDescription();
        v180 = [v6 suspendedState];
        [v180 unsignedIntegerValue];
        v181 = HAPAccessorySuspendedStateDescription();
        *buf = 138543874;
        v216 = v178;
        v217 = 2112;
        v218 = v179;
        v219 = 2112;
        v220 = v181;
        _os_log_impl(&dword_2531F8000, v177, OS_LOG_TYPE_INFO, "%{public}@Accessory Transaction updating suspendedState from %@ to %@", buf, 0x20u);

        v48 = v205;
        v76 = obj;
      }

      objc_autoreleasePoolPop(v175);
      v182 = [v6 suspendedState];
      [v176 setSuspendedState:objc_msgSend(v182 shouldNotify:"unsignedIntegerValue") saveToBackingStore:{1, 0}];

      [v202 markChanged];
    }
  }

  v183 = v76;
  [v76 handleUpdatedCHIPPropertiesOnAccessoryModel:v6 actions:v202];
  v184 = dispatch_group_create();
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  obja = v201;
  v185 = [obja countByEnumeratingWithState:&v210 objects:v214 count:16];
  if (v185)
  {
    v186 = v185;
    v187 = *v211;
    do
    {
      for (i = 0; i != v186; ++i)
      {
        if (*v211 != v187)
        {
          objc_enumerationMutation(obja);
        }

        v189 = *(*(&v210 + 1) + 8 * i);
        dispatch_group_enter(v184);
        if (v48)
        {
          v190 = [v189 mutableCopy];
          v191 = [v48 transport];
          [v190 setTransport:v191];
          v192 = [v190 copy];
        }

        else
        {
          v192 = v189;
        }

        v193 = [v183 msgDispatcher];
        v194 = [v183 uuid];
        v208[0] = MEMORY[0x277D85DD0];
        v208[1] = 3221225472;
        v208[2] = ____transactionAccessoryUpdated_block_invoke_49878;
        v208[3] = &unk_279735D00;
        v209 = v184;
        [v193 sendMessage:v192 target:v194 andInvokeCompletionHandler:v208];

        v48 = v205;
      }

      v186 = [obja countByEnumeratingWithState:&v210 objects:v214 count:16];
    }

    while (v186);
  }

  dispatch_group_wait(v184, 0);
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = ____transactionAccessoryUpdated_block_invoke_2_49879;
  v206[3] = &unk_279734468;
  v195 = v202;
  v207 = v195;
  [v183 transactionAccessoryUpdatedForPreferredMediaUser:v6 completionHandler:v206];
  [v48 respondWithSuccess];

  v196 = *MEMORY[0x277D85DE8];
}

uint64_t ____transactionAccessoryUpdated_block_invoke_2_49879(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) markChanged];
  }

  return result;
}

void sub_2535D2F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535D8794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2535D8EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535DBCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2535E0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535E1DCC(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_2535E4624(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x230]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

void sub_2535E8E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 176));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535E94B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_2535E9CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_2535EA158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2535EAC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 208));
  objc_destroyWeak((v1 - 200));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535EC380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_2535F1DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F2710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F2FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2535F6170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_2535F6F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535F7F34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_2535F8C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2535F8EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 64));
  _Unwind_Resume(a1);
}

void sub_2535FA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak(va);
  objc_destroyWeak((v10 - 88));
  _Unwind_Resume(a1);
}

void sub_2535FA7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253600F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __handleUpdatedPassword(void *a1, void *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v44 = a2;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v3;
  v4 = [v3 services];
  v5 = [v4 copy];

  obj = v5;
  v40 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v40)
  {
    v39 = *v53;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v39)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v41 = v6;
        v8 = *(*(&v52 + 1) + 8 * v6);
        v9 = [v8 type];
        v10 = [v9 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v43 = [v8 characteristics];
          v11 = [v43 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (!v11)
          {
            goto LABEL_46;
          }

          v45 = *v49;
          while (1)
          {
            v12 = 0;
            do
            {
              if (*v49 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v13 = *(*(&v48 + 1) + 8 * v12);
              v14 = [v13 type];
              v15 = [v14 isEqualToString:@"000000E4-0000-1000-8000-0026BB765291"];

              if (v15)
              {
                v16 = [v13 value];

                if (v16)
                {
                  v17 = [v13 value];
                  v18 = v17;
                  if (v17)
                  {
                    v19 = v17;
                    v20 = v18;
                    [v20 bytes];
                    [v20 length];

                    *&buf = 0;
                    v56 = 0;
                    v57 = 0;
                    v21 = 0;
                    v22 = 0;
                    if (!TLV8Get() && v56 == 1)
                    {
                      v22 = *buf;
                      if (v22 > 1)
                      {
                        goto LABEL_21;
                      }

                      v23 = TLV8GetOrCopyCoalesced();
                      if (v23 == -6727 || !v56)
                      {
                        v21 = 0;
                        if (!v22)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        if (v23)
                        {
LABEL_21:
                          v22 = 0;
                          v21 = 0;
                          goto LABEL_30;
                        }

                        v25 = objc_alloc(MEMORY[0x277CCACA8]);
                        v21 = [v25 initWithBytes:buf length:v56 encoding:4];
                        if (v57)
                        {
                          free(v57);
                          v57 = 0;
                        }

                        if (v21)
                        {
LABEL_29:
                          v26 = v21;
                          goto LABEL_30;
                        }
                      }

                      v22 = 0;
                    }

LABEL_30:
                  }

                  else
                  {
                    v22 = 0;
                    v21 = 0;
                  }

                  v24 = v21;
                }

                else
                {
                  v22 = 0;
                  v24 = 0;
                }

                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                buf = 0u;
                v27 = v44;
                TLV8BufferInit();
                v28 = v27;
                [v27 UTF8String];
                [v27 length];

                if (TLV8BufferAppend() || (LOBYTE(v57) = v44 != 0, TLV8BufferAppend()))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
                }

                TLV8BufferFree();
                if (v22 != (v44 != 0) || v44 && ([v24 isEqualToString:v27] & 1) == 0)
                {
                  v30 = objc_autoreleasePoolPush();
                  v31 = v42;
                  v32 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    v33 = HMFGetLogIdentifier();
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v33;
                    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@password does not match send update", &buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v30);
                  v34 = v29;
                  objc_initWeak(&buf, v31);
                  v35 = [v31 workQueue];
                  v46[0] = MEMORY[0x277D85DD0];
                  v46[1] = 3221225472;
                  v46[2] = ____handleUpdatedPassword_block_invoke;
                  v46[3] = &unk_279734708;
                  objc_copyWeak(&v47, &buf);
                  [v31 writeValue:v34 toCharacteristic:v13 queue:v35 source:1040 completion:v46];

                  objc_destroyWeak(&v47);
                  objc_destroyWeak(&buf);
                }
              }

              ++v12;
            }

            while (v11 != v12);
            v36 = [v43 countByEnumeratingWithState:&v48 objects:v58 count:16];
            v11 = v36;
            if (!v36)
            {
LABEL_46:

              break;
            }
          }
        }

        v6 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v40);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_253608BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void ____handleUpdatedPassword_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update password setting value with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedMinimumUserPrivilege(void *a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v40 = v3;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMUserPrivilegeToString();
    *buf = 138543874;
    v56 = v6;
    v57 = 2112;
    v58 = v7;
    v59 = 2048;
    v60 = a2;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Handling updated minimum user privilege: %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [v40 services];
  obj = [v8 copy];

  v38 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v38)
  {
    v37 = *v50;
    do
    {
      v9 = 0;
      do
      {
        if (*v50 != v37)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v39 = v9;
        v11 = *(*(&v49 + 1) + 8 * v9);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v13)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v41 = [v11 characteristics];
          v14 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v14)
          {
            v15 = *v46;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v46 != v15)
                {
                  objc_enumerationMutation(v41);
                }

                v17 = *(*(&v45 + 1) + 8 * i);
                v18 = [v17 type];
                v19 = [v18 isEqualToString:@"000000E5-0000-1000-8000-0026BB765291"];

                if (v19)
                {
                  v20 = [v17 value];
                  v21 = [v20 integerValue] == a2;

                  if (!v21)
                  {
                    v22 = objc_autoreleasePoolPush();
                    v23 = v40;
                    v24 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                    {
                      v25 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v56 = v25;
                      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@privilege does not match send update", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v22);
                    v26 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v27 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v44 = v26;
                    v28 = [v17 validateValueForWrite:v27 outValue:&v44];
                    v29 = v44;

                    if (v28)
                    {
                      v30 = objc_autoreleasePoolPush();
                      v31 = v23;
                      v32 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                      {
                        v33 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v56 = v33;
                        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@invalid minimum user privilege value", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v30);
                    }

                    else
                    {
                      objc_initWeak(buf, v23);
                      v34 = [v23 workQueue];
                      v42[0] = MEMORY[0x277D85DD0];
                      v42[1] = 3221225472;
                      v42[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke;
                      v42[3] = &unk_279734708;
                      objc_copyWeak(&v43, buf);
                      [v23 writeValue:v29 toCharacteristic:v17 queue:v34 source:1040 completion:v42];

                      objc_destroyWeak(&v43);
                      objc_destroyWeak(buf);
                    }
                  }
                }
              }

              v14 = [v41 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v14);
          }
        }

        v9 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v38);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update user privilege value with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25360CE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void completeWithError(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    if (v3)
    {
      v5[2](v5, v3);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v5[2](v5, v4);
    }
  }
}

id makeConfigurationControl(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CFECB0]);
  v3 = [objc_alloc(MEMORY[0x277CFECB8]) initWithValue:a1];
  [v2 setOperationType:v3];

  return v2;
}

id makeStationConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CFECC8];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  [v6 setSSID:v5];

  v7 = objc_alloc(MEMORY[0x277CFECC0]);
  if (v3)
  {
    v8 = [v7 initWithValue:1];
    [v6 setSecurityMode:v8];

    [v6 setPSK:v3];
  }

  else
  {
    v9 = [v7 initWithValue:0];
    [v6 setSecurityMode:v9];
  }

  return v6;
}

void sub_253616BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id encodeRootObjectForRemote(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote."];
  v10 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:v6 supportedFeatures:v7];
  [v10 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v10 finishEncoding];
  v11 = [v10 encodedData];

  objc_autoreleasePoolPop(v8);

  return v11;
}

id encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote-same."];
  if (a2)
  {
    v8 = homedSupportedFeatures;
    if (a3)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v9 addObject:&unk_2866280C0];
      v10 = [v9 copy];

      v11 = 4;
      v8 = v10;
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v8 = &unk_286626DE8;
    v11 = 3;
  }

  v12 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:1 remoteGateway:0 remoteUserIsAdministrator:1 user:0 dataVersion:v11 supportedFeatures:v8];
  [v12 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];

  objc_autoreleasePoolPop(v6);

  return v13;
}

id encodeRootObjectForIncomingXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-incoming-xpc."];
  v7 = [[HMDXPCKeyedArchiver alloc] initForWritingWithMessage:v4];
  [v7 encodeObject:v3 forKey:*MEMORY[0x277CCA308]];
  [v7 finishEncoding];
  v8 = [v7 encodedData];

  objc_autoreleasePoolPop(v5);
  v9 = [v8 copy];

  return v9;
}

id encodeRootObjectForSPIClients(void *a1)
{
  v1 = MEMORY[0x277D0F818];
  v2 = a1;
  v3 = [v1 internalMessageWithName:@"kDummyMessageForEntitledXPC" messagePayload:0];
  v4 = encodeRootObjectForIncomingXPCMessage(v2, v3);

  return v4;
}

void launchURL(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:a1];
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

__CFString *locationAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *regionAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 hm_description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void createDirectory(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v20 = *MEMORY[0x277CCA180];
  v21[0] = &unk_286628180;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  if (![v3 fileExistsAtPath:v1 isDirectory:&v13])
  {
    v12 = 0;
    v8 = [v3 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v2 error:&v12];
    v4 = v12;
    v13 = v8;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = v4;
    [v3 setAttributes:v2 ofItemAtPath:v1 error:&v11];
    v9 = v11;

    v4 = v9;
    goto LABEL_8;
  }

  v4 = 0;
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v1;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not create directory path %@ - error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

id mapHAPPairingErrorToHMError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CFE770];

  if (v2 != v3)
  {
    goto LABEL_2;
  }

  v11 = [v1 code];
  if (v11 <= 24)
  {
    if (v11 <= 19)
    {
      if (v11 == 8)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Connection was lost with the accessory";
        v7 = @"Ensure there is good WiFi signal, reset the accessory and try again";
        v6 = 54;
        goto LABEL_4;
      }

      if (v11 == 18)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Accessory is already paired";
        v6 = 13;
        goto LABEL_3;
      }
    }

    else
    {
      switch(v11)
      {
        case 20:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Currently associated WiFi network is not compatible with the accessory";
          v7 = @"Associate with a 2.4 GHz WiFi network and try again";
          v6 = 90;
          goto LABEL_4;
        case 21:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"This device is not currently associated to a Home WiFi network";
          v7 = @"Associate to a WiFi network (from Settings -> WiFi) and try again";
          v6 = 78;
          goto LABEL_4;
        case 23:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Accessories cannot be added to enterprise network";
          v6 = 99;
          goto LABEL_3;
      }
    }

LABEL_2:
    v4 = MEMORY[0x277CCA9B8];
    v5 = @"Pairing Failed";
    v6 = 18;
LABEL_3:
    v7 = 0;
LABEL_4:
    v8 = [v4 hmErrorWithCode:v6 description:v5 reason:0 suggestion:v7 underlyingError:v1];
    goto LABEL_5;
  }

  if (v11 > 33)
  {
    if (v11 != 34)
    {
      if (v11 == 35)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Home hub required";
        v7 = @"Add a Home hub to Apple Home and try again";
        v6 = 91;
        goto LABEL_4;
      }

      if (v11 == 36)
      {
        v4 = MEMORY[0x277CCA9B8];
        v6 = 79;
        v5 = 0;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Failed to connect";
    v14 = 2015;
  }

  else
  {
    switch(v11)
    {
      case 25:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Accessory did not join the configured network";
        v14 = 2016;
        break;
      case 26:
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Failed to join WiFi network";
        v7 = @"Ensure there is good WiFi signal and try again";
        v6 = 102;
        goto LABEL_4;
      case 30:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"No supported Thread router or Thread credentials not found";
        v14 = 2010;
        break;
      default:
        goto LABEL_2;
    }
  }

  v8 = [v12 hmPrivateErrorWithCode:v14 description:v13 underlyingError:v1];
LABEL_5:
  v9 = v8;

  return v9;
}

id determineHomeKitDaemonRootStorePath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productPlatform];

    if (v4 == 1)
    {
      v5 = @"HomeKit";
    }

    else
    {
      v5 = @"homed";
    }

    v6 = [v2 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __initializePaths_block_invoke()
{
  v67[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = determineHomeKitDaemonRootStorePath();
  v2 = storeDirectoryPath;
  storeDirectoryPath = v1;

  if (storeDirectoryPath)
  {
    v3 = [storeDirectoryPath stringByAppendingPathComponent:@"protected-home.config"];
    v4 = configProtectedDataStorePath;
    configProtectedDataStorePath = v3;

    v5 = [storeDirectoryPath stringByAppendingPathComponent:@"vendor-id-store"];
    v6 = configVendorIDStorePath;
    configVendorIDStorePath = v5;

    v7 = [storeDirectoryPath stringByAppendingPathComponent:@"plain-metadata.config"];
    v8 = configPlainMetadataPath;
    configPlainMetadataPath = v7;

    v9 = [storeDirectoryPath stringByAppendingPathComponent:@"server-token"];
    v10 = serverTokenDataStorePath;
    serverTokenDataStorePath = v9;

    v11 = [storeDirectoryPath stringByAppendingPathComponent:@"transaction-journal"];
    v12 = transactionJournalDataStorePath;
    transactionJournalDataStorePath = v11;

    v13 = [storeDirectoryPath stringByAppendingPathComponent:@"datasync-journal"];
    v14 = idsDataSyncJournalDataStorePath;
    idsDataSyncJournalDataStorePath = v13;

    v15 = [storeDirectoryPath stringByAppendingPathComponent:@"blacklisted-bundles"];
    v16 = blacklistedBundlesStorePath;
    blacklistedBundlesStorePath = v15;

    v17 = [storeDirectoryPath stringByAppendingPathComponent:@"registered-applications"];
    v18 = registeredApplicationsDataStorePath;
    registeredApplicationsDataStorePath = v17;

    v19 = [storeDirectoryPath stringByAppendingPathComponent:@"bulletin-board"];
    v20 = bulletinBoardDataStorePath;
    bulletinBoardDataStorePath = v19;

    v21 = [storeDirectoryPath stringByAppendingPathComponent:@"cloud-cache"];
    v22 = cloudCachePath;
    cloudCachePath = v21;

    v23 = [storeDirectoryPath stringByAppendingPathComponent:@"datastore.sqlite"];
    v24 = sqlitePath;
    sqlitePath = v23;

    v25 = [storeDirectoryPath stringByAppendingPathComponent:@"eventstore-devel.sqlite"];
    v26 = eventStorePath;
    eventStorePath = v25;

    v27 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
    v28 = bleAccessoryCachePath;
    bleAccessoryCachePath = v27;

    v29 = [storeDirectoryPath stringByAppendingPathComponent:@"com.apple.relaunch.assertion.plist"];
    v30 = launchdAssertionPlistPath;
    launchdAssertionPlistPath = v29;

    v31 = [storeDirectoryPath stringByAppendingPathComponent:@"metricsCounters"];
    v32 = metricsCountersPersistentStorePath;
    metricsCountersPersistentStorePath = v31;

    v33 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-groupstore"];
    v34 = eventCountersDataStorePath;
    eventCountersDataStorePath = v33;

    v35 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-datastore"];
    v36 = eventCountersDataStoreLegacyPath;
    eventCountersDataStoreLegacyPath = v35;

    v37 = [storeDirectoryPath stringByAppendingPathComponent:@"eventflags-datastore"];
    v38 = eventFlagsDataStorePath;
    eventFlagsDataStorePath = v37;

    v39 = [storeDirectoryPath stringByAppendingPathComponent:@"core.sql"];
    v40 = coreDataDataStorePath;
    coreDataDataStorePath = v39;

    v41 = [storeDirectoryPath stringByAppendingPathComponent:@"/HH1ToHH2PerDeviceMigration"];
    v42 = hh1ToHH2PerDeviceMigrationDirectoryPath;
    hh1ToHH2PerDeviceMigrationDirectoryPath = v41;

    v43 = [storeDirectoryPath stringByAppendingPathComponent:@"/hh1TestArchives"];
    v44 = hh1TestArchivesDirectoryPath;
    hh1TestArchivesDirectoryPath = v43;

    v45 = [storeDirectoryPath stringByAppendingPathComponent:@"/demoMode"];
    v46 = demoModeV2ConfigPath;
    demoModeV2ConfigPath = v45;

    v47 = HMDCreateHomeKitDaemonCacheDirectory();
    v48 = [v47 stringByAppendingPathComponent:@"hh2MigratorRecordStore.plist"];
    v49 = hh2MigratorRecordStorePath;
    hh2MigratorRecordStorePath = v48;

    v50 = [v47 stringByAppendingPathComponent:@"hh2MigrationFailureRecordStore.plist"];
    v51 = hh2MigrationFailureRecordStorePath;
    hh2MigrationFailureRecordStorePath = v50;

    v52 = [v47 stringByAppendingPathComponent:@"hh2MigrationLogEventStore.plist"];
    v53 = hh2MigrationLogEventPath;
    hh2MigrationLogEventPath = v52;

    v66 = *MEMORY[0x277CCA180];
    v67[0] = &unk_286628180;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
    v65[0] = storeDirectoryPath;
    v65[1] = bleAccessoryCachePath;
    v65[2] = hh1ToHH2PerDeviceMigrationDirectoryPath;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = ___initializeProtectedStorePaths_block_invoke;
    v63[3] = &unk_279727420;
    v64 = v54;
    v56 = v54;
    [v55 hmf_enumerateWithAutoreleasePoolUsingBlock:v63];
  }

  v57 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeKitDaemon"];
  v58 = [v57 pathForResource:@"plain-metadata-full.config" ofType:0];
  v59 = builtinConfigMetadataDictionaryPath;
  builtinConfigMetadataDictionaryPath = v58;

  if (!builtinConfigMetadataDictionaryPath)
  {
    v60 = [v57 pathForResource:@"plain-metadata.config" ofType:0];
    v61 = builtinConfigMetadataDictionaryPath;
    builtinConfigMetadataDictionaryPath = v60;
  }

  objc_autoreleasePoolPop(v0);
  v62 = *MEMORY[0x277D85DE8];
}

id HMDCreateHomeKitDaemonCacheDirectory()
{
  v49 = *MEMORY[0x277D85DE8];
  v0 = HMCacheSubdirectoryWithRelativePath();
  v1 = 0x277CCA000uLL;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v3 = [v2 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v41];
  v4 = v41;

  if (v3)
  {
    v5 = v0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = getuid();
      *buf = 138544130;
      v43 = v8;
      v44 = 1024;
      *v45 = v9;
      *&v45[4] = 2114;
      *&v45[6] = v0;
      *&v45[14] = 2114;
      *&v45[16] = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit daemon cache directory for user %d at %{public}@: %{public}@", buf, 0x26u);
    }

    v28 = v4;

    objc_autoreleasePoolPop(v6);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v0;
    obj = [v0 pathComponents];
    v35 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v35)
    {
      v34 = *v38;
      v33 = *MEMORY[0x277CCA180];
      v32 = *MEMORY[0x277CCA158];
      v31 = *MEMORY[0x277CCA118];
      v10 = &stru_286509E58;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [(__CFString *)v12 stringByAppendingPathComponent:*(*(&v37 + 1) + 8 * v11), v28];

          v13 = [*(v1 + 2560) defaultManager];
          v36 = 0;
          v14 = [v13 attributesOfItemAtPath:v10 error:&v36];
          v15 = v36;

          if (v14)
          {
            v16 = [v14 objectForKeyedSubscript:v33];
            v17 = [v14 objectForKeyedSubscript:v32];
            v18 = [v14 objectForKeyedSubscript:v31];
            v19 = objc_autoreleasePoolPush();
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v16 shortValue];
              *buf = 138544386;
              v43 = v21;
              v44 = 2112;
              *v45 = v10;
              *&v45[8] = 1024;
              *&v45[10] = v22;
              *&v45[14] = 2112;
              *&v45[16] = v17;
              v46 = 2112;
              v47 = v18;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Path: %@, permissions: %o, owner uid: %@, owner gid: %@", buf, 0x30u);

              v1 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543874;
              v43 = v25;
              v44 = 2112;
              *v45 = v10;
              *&v45[8] = 2112;
              *&v45[10] = v15;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get attributes for path %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v23);
          }

          ++v11;
          v12 = v10;
        }

        while (v35 != v11);
        v35 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v35);
    }

    else
    {
      v10 = &stru_286509E58;
    }

    v5 = 0;
    v4 = v28;
    v0 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

void ___initializeProtectedStorePaths_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 fileExistsAtPath:v5 isDirectory:0])
  {
    v14 = 0;
    [v7 setAttributes:v6 ofItemAtPath:v5 error:&v14];
    v8 = v14;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v12 = "%{public}@Setting attributes to directory path %@ resulted into error : %@";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
    }
  }

  else
  {
    v14 = 0;
    [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:&v14];
    v8 = v14;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v12 = "%{public}@Create store directory path %@ finished with error %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

void __initializeCapabilitiesAndTimeouts_block_invoke(uint64_t a1)
{
  v175 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initializing with product info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithString:v8];
    v11 = uniqueDeviceId;
    uniqueDeviceId = v10;

    CFRelease(v9);
  }

  v12 = +[HMDDeviceCapabilities isAppleMediaAccessory];
  v13 = @"00000000-0000-0000-0000-C2EE6102B308";
  if (!v12)
  {
    v13 = @"20BC605A-C33B-4D36-B885-C2EE6102B308";
  }

  v14 = v13;
  if (([(__CFString *)v14 isEqualToString:@"20BC605A-C33B-4D36-B885-C2EE6102B308"]& 1) != 0)
  {
    v15 = @"NonMediaDevice/";
  }

  else if ([(__CFString *)v14 isEqualToString:@"00000000-0000-0000-0000-C2EE6102B308"])
  {
    v15 = @"UnknownMediaDevice/";
  }

  else
  {
    v15 = &stru_286509E58;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    *&buf[22] = 2112;
    v174 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Setting media remote ID: %@%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = _mediaRouteIdentifier;
  _mediaRouteIdentifier = v14;

  v20 = +[HMDHomeKitVersion currentVersion];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(v20, "majorVersion"), objc_msgSend(v20, "minorVersion")];
  v22 = MEMORY[0x277CCABB0];
  [v21 doubleValue];
  v23 = [v22 numberWithDouble:?];
  v24 = homedVersion;
  homedVersion = v23;

  v25 = +[HMDHomeKitVersion version3];
  v26 = minimumSupportedResidentHomeKitVersion;
  minimumSupportedResidentHomeKitVersion = v25;

  v27 = homedSupportedFeatures;
  homedSupportedFeatures = &unk_286626E00;

  if (isiOSDevice() || isTVOSDevice())
  {
    v28 = [homedSupportedFeatures arrayByAddingObjectsFromArray:&unk_286626E18];
    v29 = homedSupportedFeatures;
    homedSupportedFeatures = v28;
  }

  v30 = +[HMDDeviceCapabilities deviceCapabilities];
  v31 = [v30 supportsFaceClassification];

  if (v31)
  {
    v32 = [homedSupportedFeatures arrayByAddingObject:&unk_286628210];
    v33 = homedSupportedFeatures;
    homedSupportedFeatures = v32;
  }

  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"NSDebugDescription", @"NSLocalizedDescription", @"RequestUUID", @"ServerErrorDescription", @"CKErrorDescription", 0}];
  v35 = ckErrorUserInfoKeys;
  ckErrorUserInfoKeys = v34;

  LODWORD(v168) = 0;
  v36 = *MEMORY[0x277CD0030];
  CFDictionaryGetTypeID();
  v37 = CFPrefs_CopyTypedValue();
  if (v37)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v37 objectForKey:@"kHomesDataBlobKey"];
      v39 = [v37 objectForKey:@"kDataSignatureKey"];
      if (v38)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v39)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v166 = v2;
              v40 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:@"KQveymsUTHc1aqyc73tl3VuYb4Ls0j1+RnvdDxNymjU=" options:0];
              [v38 bytes];
              [v38 length];
              [v39 bytes];
              [v40 bytes];
              if (!cced25519_verify_compat())
              {
                v163 = MEMORY[0x277CCAAC8];
                v164 = v40;
                v41 = MEMORY[0x277CBEB98];
                *buf = objc_opt_class();
                *&buf[8] = objc_opt_class();
                *&buf[16] = objc_opt_class();
                v42 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
                v43 = [v41 setWithArray:v42];
                v44 = [v163 deserializeObjectWithData:v38 allowedClasses:v43];

                if (v44)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = [v44 objectForKey:@"kHomeDataBlobKey"];
                    v46 = [v44 objectForKey:@"kControllerKeyPairKey"];
                    v47 = [v44 objectForKey:@"kControllerPairingNameKey"];
                    v48 = v47;
                    if (v45 && v46 && v47)
                    {
                      v49 = [MEMORY[0x277CFEC78] systemStore];
                      [v49 removeControllerKeyPairWithError:0];
                      if ([v49 saveKeyPair:v46 username:v48 syncable:0 error:0])
                      {
                        v50 = getProtectedStorePath();
                        v51 = [HMDPersistentStore writeData:v45 toStorePath:v50 dataLabel:@"home data"];

                        retailDemoDataEncoded = 1;
                      }
                    }
                  }
                }

                v40 = v164;
              }

              v2 = v166;
            }
          }
        }
      }
    }
  }

  if ((isInternalBuild() & 1) != 0 || ([MEMORY[0x277D0F8E8] productInfo], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "productVariant"), v52, v53 == 2))
  {
    _overrideBoolValue(&skipAuthPromptDialog);
    _overrideBoolValue(&showAuthDialog);
    _overrideBoolValue(&disableCloudDataSync);
    _overrideBoolValue(&disableLegacyCloudDataSync);
    _overrideBoolValue(&enableWakeNotifications);
    _overrideBoolValue(&disableWACBrowser);
    _overrideBoolValue(&delayBatchedReadWrite);
    _overrideBoolValue(&enableNetworkLogging);
    _overrideBoolValue(&enableRetailDemoSetup);
    v172 = 0;
    CFDictionaryGetTypeID();
    v54 = CFPrefs_CopyTypedValue();
    v167 = v2;
    v55 = [MEMORY[0x277CBEB38] dictionary];
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v165 = v54;
    v56 = v54;
    v57 = [v56 countByEnumeratingWithState:&v168 objects:buf count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v169;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v169 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v168 + 1) + 8 * i);
          v62 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v61];
          v63 = objc_alloc(MEMORY[0x277CCAD78]);
          v64 = [v56 objectForKey:v61];
          v65 = [v63 initWithUUIDString:v64];

          [v55 setObject:v65 forKey:v62];
        }

        v58 = [v56 countByEnumeratingWithState:&v168 objects:buf count:16];
      }

      while (v58);
    }

    v66 = preferredPrimaryForHome;
    preferredPrimaryForHome = v55;
    v67 = v55;

    v2 = v167;
    CFStringGetTypeID();
    v68 = CFPrefs_CopyTypedValue();
    if (v68)
    {
      v69 = v68;
      v70 = CKContainerEnvironmentFromString();
      v71 = objc_autoreleasePoolPush();
      v72 = HMFGetOSLogHandle();
      v73 = v72;
      if (v70)
      {
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v74;
          *&buf[12] = 2112;
          *&buf[14] = v69;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding CloudKit container environment to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
        cloudKitContainerEnvironment = v70;
      }

      else
      {
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v75;
          *&buf[12] = 2112;
          *&buf[14] = v69;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Invalid CloudKit environment %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
      }

      CFRelease(v69);
    }

    *buf = 0;
    Int64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudPushBatchLimit = Int64;
    }

    *buf = 0;
    v77 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maxCloudOperationRetries = v77;
    }

    CFPrefs_GetDouble();
    minimumTimerRecurrence = v78;
    *buf = 0;
    v79 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerInterval = v79;
    }

    *buf = 0;
    v80 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadMaximumTimerInterval = v80;
    }

    *buf = 0;
    v81 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerIntervalExponentialFactor = v81;
    }

    *buf = 0;
    v82 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInitialInterval = v82;
    }

    *buf = 0;
    v83 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInterval = v83;
    }

    *buf = 0;
    v84 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudRecordSizeLimit = v84;
    }

    *buf = 0;
    v85 = CFPrefs_GetInt64();
    if (!*buf)
    {
      userPushCacheTimeInterval = v85;
    }

    *buf = 0;
    v86 = CFPrefs_GetInt64();
    if (!*buf)
    {
      aggressiveControllerKeyPollInterval = v86;
    }

    *buf = 0;
    v87 = CFPrefs_GetInt64();
    if (!*buf)
    {
      watchdogControllerKeyPollTimeout = v87;
    }

    *buf = 0;
    v88 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyPollInterval = v88;
    }

    *buf = 0;
    v89 = CFPrefs_GetInt64();
    if (!*buf)
    {
      keychainPopupTimerInterval = v89;
    }

    *buf = 0;
    v90 = CFPrefs_GetInt64();
    if (!*buf)
    {
      checkRemoteAccessTimeout = v90;
    }

    *buf = 0;
    v91 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsCommitTimeoutNanoseconds = 1000000000 * v91;
    }

    *buf = 0;
    v92 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleClientTimeoutNanoseconds = 1000000000 * v92;
    }

    *buf = 0;
    v93 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleServertTimeoutNanoseconds = 1000000000 * v93;
    }

    *buf = 0;
    v94 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestTimeoutNanoseconds = 1000000000 * v94;
    }

    *buf = 0;
    v95 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestToWatchTimeoutNanoseconds = 1000000000 * v95;
    }

    *buf = 0;
    v96 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendUserRequestTimeoutNanoseconds = 1000000000 * v96;
    }

    *buf = 0;
    v97 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityTimerNanoseconds = 1000000000 * v97;
    }

    *buf = 0;
    v98 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityLeewayNanoseconds = 1000000000 * v98;
    }

    *buf = 0;
    v99 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityProbeReduceFactor = v99;
    }

    *buf = 0;
    v100 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseTimerNanoseconds = 1000000000 * v100;
    }

    *buf = 0;
    v101 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseLeewayNanoseconds = 1000000000 * v101;
    }

    *buf = 0;
    v102 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseDecayScale = v102;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      accessoryConnectivityWaitPeriod = v103;
    }

    *buf = 0;
    v104 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudDataSyncInProgressWaitPeriod = v104;
    }

    *buf = 0;
    v105 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingWaitPeriod = v105;
    }

    *buf = 0;
    v106 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingShortCircuitWaitPeriod = v106;
    }

    if (isHomePod())
    {
      assistantClientReadWriteTimeoutSeconds = 0x4022000000000000;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientReadWriteTimeoutSeconds = v107;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientActionSetTimeoutSeconds = v108;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableNotificationsDeferPeriod = v109;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      coalesceNotificationsPeriod = v110;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseTickPeriod = v111;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseMaxPeriod = v112;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      delayNotificationsPeriod = v113;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityNotificationsDeferPeriod = v114;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityDeregistrationDeferPeriod = v115;
    }

    *buf = 0;
    v116 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveTimerPeriod = v116;
    }

    *buf = 0;
    v117 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveResponseTimeoutPeriod = v117;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingInterruptionGracePeriod = v118;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingReconfirmWaitPeriod = v119;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      vendorInfoFetchPeriod = v120;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      attestationInfoFetchPeriod = v121;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      keyTransferBroadcastMaximumDelay = v122;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      mediaBrowserProcessingInterval = v123;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableReprivsionBrowsingPeriodInMinutes = v124;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      authServerRetryTimeIntervalInSeconds = v125;
    }

    *buf = 0;
    v126 = CFPrefs_GetInt64();
    if (!*buf)
    {
      authServerRetryCount = v126;
    }

    _overrideNumberArray(&supportedResolutions);
    _overrideNumberArray(&supportedVideoCodecs);
    _overrideNumberArray(&supportedAudioCodecs);
    _overrideNumberArray(&supportedSRTPAuths);
    *buf = 0;
    v127 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesUpgradeDebouceTimer = v127;
    }

    *buf = 0;
    v128 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesDowngradeDebouceTimer = v128;
    }

    _overrideBoolValue(&cameraStreamNetworkAdaptation);
    _overrideNumber(&rtpPtime);
    _overrideNumber(&snapshotResolution);
    *buf = 0;
    v129 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSimultaneousRemoteStreams = v129;
    }

    *buf = 0;
    v130 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSecureRemoteStreams = v130;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      secureSessionMessageTimeout = v131;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      snapshotCacheValidPeriod = v132;
    }

    *buf = 0;
    v133 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumHomes = v133;
    }

    *buf = 0;
    v134 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerHome = v134;
    }

    *buf = 0;
    v135 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerHome = v135;
    }

    *buf = 0;
    v136 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumZonesPerHome = v136;
    }

    *buf = 0;
    v137 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumTriggersPerHome = v137;
    }

    *buf = 0;
    v138 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionSetsPerHome = v138;
    }

    *buf = 0;
    v139 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServiceGroupsPerHome = v139;
    }

    *buf = 0;
    v140 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumUsersPerHome = v140;
    }

    *buf = 0;
    v141 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerZone = v141;
    }

    *buf = 0;
    v142 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionsPerActionSet = v142;
    }

    *buf = 0;
    v143 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerServiceGroup = v143;
    }

    *buf = 0;
    v144 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerBridge = v144;
    }

    *buf = 0;
    v145 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerAccessory = v145;
    }

    *buf = 0;
    v146 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumCharacteristicsPerService = v146;
    }

    *buf = 0;
    v147 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumDataSyncFragmentSize = v147;
    }

    *buf = 0;
    v148 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bulletinSecureTriggerTimeoutInSeconds = v148;
    }

    *buf = 0;
    v149 = CFPrefs_GetInt64();
    if (!*buf)
    {
      secureTriggerUserResponseTimeoutInSeconds = v149;
    }

    *buf = 0;
    v150 = CFPrefs_GetInt64();
    if (!*buf)
    {
      broadcastKeyRefreshTimeInSeconds = v150;
    }

    *buf = 0;
    v151 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bluetoothGSNMaxValue = v151;
    }

    v152 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    allowAnonymousServerConnections = [v152 BOOLForKey:@"allowAnonymousServerConnections"];

    _overrideNSString(&vendorInfoDatabaseServerURLOverride);
    _overrideNSString(&appleConfigurationServer);
    _overrideNSString(&homeKitConfigurationPath);
    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorHealthTimerTimeInterval = v153;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMinimumTimeInterval = v154;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMaximumTimeInterval = v155;
    }

    *buf = 0;
    v156 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerFactor = v156;
    }

    *buf = 0;
    v157 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceFeedRefreshInMinutes = v157;
    }

    *buf = 0;
    v158 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorAuditInMinutes = v158;
    }

    *buf = 0;
    v159 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorRefreshGracePeriodInMinutes = v159;
    }

    *buf = 0;
    v160 = CFPrefs_GetInt64();
    if (!*buf)
    {
      startCharacteristicsMonitorWaitPeriod = v160;
    }

    *buf = 0;
    v161 = CFPrefs_GetInt64();
    if (!*buf)
    {
      requestHomeDataSyncRetryPeriodInMinutes = v161;
    }
  }

  objc_autoreleasePoolPop(v2);
  v162 = *MEMORY[0x277D85DE8];
}

BOOL isiOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 2;

  return v1;
}

BOOL isTVOSDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 4;

  return v1;
}

uint64_t _overrideBoolValue(BOOL *a1)
{
  v2 = *MEMORY[0x277CD0030];
  result = CFPrefs_GetInt64();
  *a1 = result != 0;
  return result;
}

BOOL isHomePod()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 6;

  return v1;
}

void _overrideNumberArray(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v2 = *MEMORY[0x277CD0030];
  CFArrayGetTypeID();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = CFPrefs_CopyTypedValue();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = v3;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = v3;
  v10 = *a1;
  *a1 = v9;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

void _overrideNumber(id *a1)
{
  v2 = *MEMORY[0x277CD0030];
  CFNumberGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

void _overrideNSString(id *a1)
{
  v2 = *MEMORY[0x277CD0030];
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  objc_storeStrong(a1, v3);
}

BOOL isAppleTV()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 4;

  return v1;
}

BOOL isWatch()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 5;

  return v1;
}

BOOL isMac()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productPlatform] == 1;

  return v1;
}

uint64_t isBTLECapableDevice()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 supportsBLE];

  return v1;
}

void __demoModeV2Types_block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"retail";
  v3[1] = @"press";
  v3[2] = @"test";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = demoModeV2Types_demoModeV2Types;
  demoModeV2Types_demoModeV2Types = v0;

  v2 = *MEMORY[0x277D85DE8];
}

BOOL isiPadDevice()
{
  v0 = [MEMORY[0x277D0F8E8] productInfo];
  v1 = [v0 productClass] == 3;

  return v1;
}

id deviceName()
{
  v0 = [MEMORY[0x277D0F910] systemInfo];
  v1 = [v0 name];

  return v1;
}

__CFString *getDeviceClass()
{
  if (isAppleTV())
  {
    v0 = @"kDeviceClassTypeResident";
  }

  else
  {
    v0 = @"kDeviceClassTypeTransient";
  }

  return v0;
}

BOOL isDeviceLocked()
{
  v14 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v3;
      v12 = 2048;
      v13 = v0;
      _os_log_impl(&dword_2531F8000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (locked): %ld", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    result = v0 != 3 && v0 != 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (locked).", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL isPasscodeEnabledOnThisDevice()
{
  v13 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsDeviceLock])
  {
    v0 = MKBGetDeviceLockState();
    v1 = objc_autoreleasePoolPush();
    v2 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v3;
      v11 = 2048;
      v12 = v0;
      _os_log_impl(&dword_2531F8000, v2, OS_LOG_TYPE_INFO, "%{public}@Device lock state (passcode): %ld", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v1);
    result = v0 != 3;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Device does not support device lock (passcode).", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double getDiscoveryBackoffPeriod()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"DiscoveryBackoffInSeconds"];
  v2 = [v1 numberValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id getBLEAccessoryCachePath()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = v0;
  v21 = 0;
  if (storeDirectoryPath)
  {
    if (!bleAccessoryCachePath || ([v0 fileExistsAtPath:bleAccessoryCachePath isDirectory:&v21] & 1) == 0)
    {
      v28 = *MEMORY[0x277CCA180];
      v29[0] = &unk_286628180;
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v3 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
      v4 = bleAccessoryCachePath;
      bleAccessoryCachePath = v3;

      v20 = 0;
      v5 = [v1 createDirectoryAtPath:bleAccessoryCachePath withIntermediateDirectories:1 attributes:v2 error:&v20];
      v6 = v20;
      v7 = v6;
      v21 = v5;
      if (v5)
      {
        v19 = v6;
        [v1 setAttributes:v2 ofItemAtPath:bleAccessoryCachePath error:&v19];
        v8 = v19;

        v7 = v8;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543874;
          v23 = v15;
          v24 = 2112;
          v25 = bleAccessoryCachePath;
          v26 = 2112;
          v27 = v7;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not create BLE Cache directory path %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = storeDirectoryPath;
      v12 = storeDirectoryPath;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Store Directory not initialized: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = bleAccessoryCachePath;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

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

id HMDHomeKitDaemonDemoModePersistencePath()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = HMDCreateHomeKitDaemonCacheDirectory();
  v2 = [v0 fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathComponent:@"DemoMode.data"];

  return v3;
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
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Saved double value: %lf (%ld), current double value: %lf (%ld), step value: %lf", buf, 0x3Eu);
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
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Comparing characteristic value %@ (op:%tu) %@, result: %@", buf, 0x34u);
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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate WiFi Pre-Shared Key with error: %@", buf, 0x16u);
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

BOOL shouldSkipRemoteAccessoryNotificationRegistration(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 isCurrentDeviceAvailableResident] && objc_msgSend(v4, "hasIPLink") && (objc_msgSend(v4, "hasBTLELink") & 1) == 0 && !isiPadDevice() && (!isAppleTV() || objc_msgSend(v3, "isCurrentDeviceConfirmedPrimaryResident"));

  return v5;
}

uint64_t shouldSkipLocalAccessoryNotificationRegistration(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([a3 hmf_isEmpty])
  {
    v7 = 1;
  }

  else
  {
    if (![v5 isResidentFirstAccessoryCommunicationEnabled])
    {
      goto LABEL_9;
    }

    v8 = [v5 localCapabilitiesDataSource];
    v9 = [v8 isResidentCapable];

    if ((v9 & 1) != 0 || ([v5 enabledResidents], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11) || objc_msgSend(v6, "hasBTLELink") && (objc_msgSend(v6, "reachableTransports") & 2) != 0)
    {
LABEL_9:
      v7 = 0;
    }

    else
    {
      v7 = [v6 isSecureSessionEstablished] ^ 1;
    }
  }

  return v7;
}

uint64_t defaultAccessoryShouldDisconnectOnIdleForHome(void *a1)
{
  v1 = a1;
  if ([v1 isCurrentDevicePrimaryResident])
  {
    goto LABEL_2;
  }

  if (([v1 isCurrentDeviceAvailableResident] & 1) == 0)
  {
    if (![v1 isResidentFirstAccessoryCommunicationEnabled])
    {
      goto LABEL_2;
    }

    v4 = [v1 enabledResidents];
    v5 = [v4 hmf_isEmpty];

    if (v5)
    {
      goto LABEL_2;
    }

    v6 = [v1 primaryResident];
    v7 = [v6 isReachable];

    if (!v7)
    {
      goto LABEL_2;
    }
  }

  if (([v1 isResidentFirstAccessoryCommunicationEnabled] & 1) != 0 || (objc_msgSend(v1, "isCurrentDevicePrimaryResident") & 1) == 0 && objc_msgSend(v1, "isCurrentDeviceAvailableResident") && !isiPadDevice())
  {
    v2 = 1;
  }

  else
  {
LABEL_2:
    v2 = 0;
  }

  return v2;
}

uint64_t shouldDisconnectOnIdleForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = isPersistedConnectionRequiredForAccessory(v1);

  if (v3)
  {
    ShouldDisconnectOnIdleForHome = 0;
  }

  else
  {
    ShouldDisconnectOnIdleForHome = defaultAccessoryShouldDisconnectOnIdleForHome(v2);
  }

  return ShouldDisconnectOnIdleForHome;
}

uint64_t isPersistedConnectionRequiredForAccessory(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 home];
  if (![v2 isCurrentDevicePrimaryResident])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__50867;
    v37 = __Block_byref_object_dispose__50868;
    v38 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __isPersistedConnectionRequiredForAccessory_block_invoke;
    aBlock[3] = &unk_2797273D0;
    p_buf = &buf;
    v7 = v1;
    v24 = v7;
    v8 = _Block_copy(aBlock);
    if ([v2 isCurrentDeviceAvailableResident] && !isiPadDevice() && !isAppleTV() || (objc_msgSend(v2, "areAllResidentsUnreachable") & 1) == 0 && (objc_msgSend(v2, "isResidentFirstAccessoryCommunicationEnabled") & 1) != 0)
    {
      if ([v2 isCurrentDeviceAvailableResident])
      {
        *v30 = 0;
        *&v30[8] = v30;
        *&v30[16] = 0x2020000000;
        LOBYTE(v31) = 0;
        v9 = v8[2](v8);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __isPersistedConnectionRequiredForAccessory_block_invoke_787;
        v22[3] = &unk_2797273F8;
        v22[4] = v30;
        [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

        if (*(*&v30[8] + 24) == 1)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            v13 = [v7 shortDescription];
            *v26 = 138543618;
            v27 = v12;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Require persisted connection for Siri Remote accessory %@ for all residents", v26, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          _Block_object_dispose(v30, 8);
LABEL_18:
          v6 = 1;
LABEL_21:

          _Block_object_dispose(&buf, 8);
          goto LABEL_22;
        }

        _Block_object_dispose(v30, 8);
      }

      v6 = 0;
      goto LABEL_21;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v7 shortDescription];
      [v2 isResidentFirstAccessoryCommunicationEnabled];
      v18 = HMFBooleanToString();
      [v2 areAllResidentsUnreachable];
      v19 = HMFBooleanToString();
      *v30 = 138544130;
      *&v30[4] = v16;
      *&v30[12] = 2112;
      *&v30[14] = v17;
      *&v30[22] = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Require persisted connection for accessory %@: isResidentFirstAccessoryCommunicationEnabled = %@, areAllResidentsUnreachable = %@", v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_18;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Current device is primary resident, always require persisted connection with accessories", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = 1;
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25361DAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
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
    v14 = &unk_2797273A8;
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

uint64_t __isPersistedConnectionRequiredForAccessory_block_invoke_787(uint64_t a1, void *a2, _BYTE *a3)
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
    shouldEnableInternalDebugInterfaces__hmf_once_v45 = [v0 BOOLValue];
  }

  else
  {
    shouldEnableInternalDebugInterfaces__hmf_once_v45 = 0;
  }
}

uint64_t getCKContainer()
{
  v0 = @"com.apple.willow.config";
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __getCKContainer_block_invoke;
  block[3] = &unk_279735D00;
  v5 = @"com.apple.willow.config";
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

uint64_t isThisDeviceDesignatedFMFDevice()
{
  v0 = +[HMDFMFHandlerFactory sharedHandler];
  v1 = [v0 isThisDesignatedFMFDevice];

  return v1;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing preferred primary with requireOneTime: %@ ...withApplication: %@", &v11, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to get kern.bootsessionuuid", buf, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Failed to load existing boot uuid", buf, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get HomeKit daemon root store path!", v21, 0xCu);
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

void sub_25361F258(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253620FF4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
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

void sub_253625CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25362815C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
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
            _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Network interface %s (%s): %s\n", buf, 0x2Au);
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
    MEMORY[0x259C02E80](v14, ifa_name, v4);
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Network changed. Network interface active: %s\n", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v5 _update];

  v10 = *MEMORY[0x277D85DE8];
}

void sub_25362B94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
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

void sub_2536333B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253633F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253635D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253636668(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_2536366F4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253636780(_Unwind_Exception *a1)
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
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error reading data from input stream: %@", buf, 0x16u);

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
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Data from input stream has exceeded the maximum %lu bytes allowed", buf, 0x16u);

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
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSData for record %@", buf, 0x20u);

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
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

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
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' CKAsset for record %@ from %@", buf, 0x2Au);

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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a CKAsset on record %@: %@", buf, 0x2Au);

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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create input stream for file at path: %@", &v13, 0x16u);
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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Reading '%@' NSString for record %@", buf, 0x20u);

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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@'%@' field is not a NSData on record %@: %@", buf, 0x2Au);

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
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Field '%@' does not exist on record %@", buf, 0x20u);

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
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unknown video analyzer event class: %@", &v7, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
    }

    result = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
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
  v3 = [[v1 alloc] initWithValue:&unk_286628270];
  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [v2 areConnectionsWithOtherAccessoriesAllowed];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_2866282B8];
    [v4 addObject:v6];
  }

  v7 = [[HMDNetworkRouterLANIdentifierList alloc] initWithIdentifiers:v4];

  return v7;
}

void sub_25363F248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536430D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2536465BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HMDSleepConfigurationOperationStatusAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationOperationStatus %ld", a1];
  }

  else
  {
    v2 = off_279727A18[a1];
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
    v2 = off_279727A38[a1 - 1];
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
  v3 = a1;
  v4 = a2;
  if (v3 && (os_unfair_lock_assert_owner(v3 + 4), ([*(v3 + 3) containsObject:v4] & 1) == 0))
  {
    v6 = [*(v3 + 3) mutableCopy];
    [v6 addObject:v4];
    v7 = [v6 copy];
    v8 = *(v3 + 3);
    *(v3 + 3) = v7;

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

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
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handles updated", &v8, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Device added: %@", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device removed: %@", buf, 0x16u);
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

void sub_253667C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25366818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}