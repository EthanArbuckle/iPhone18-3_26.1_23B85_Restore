uint64_t sub_22ADEDCD8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22ADFE770, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_22ADEDE94()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  if (v0)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_22ADFDF74, 0, 0);
  }

  else
  {
    v8 = v2[4];
    (*(v6 + 8))(v5, v7);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v2[11] = v10;
    *v10 = v4;
    v10[1] = sub_22ADEE0CC;
    v11 = v2[5];

    return v13();
  }
}

uint64_t sub_22ADEE0CC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22ADEE1E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22ADEE2D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 80) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 9);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22ADEE5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v19 - v13;
  sub_22ADEE6FC(a3, &v19 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D28, &qword_22AE80338);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_22ADFDFDC(0, 0, v14, &unk_22AE80420, v16);
  result = sub_22ADEE824(v14);
  *(v15 + 16) = v17;
  *a6 = v15;
  return result;
}

uint64_t sub_22ADEE6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22ADEE76C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1DC;

  return sub_22ADEE8E8(a1, v5);
}

uint64_t sub_22ADEE824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HMF.SleepTaskTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  sub_22AE76CA4();
  v2 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22ADEE8E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE2D4;

  return v7(a1);
}

uint64_t sub_22ADEE9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22ADEE1DC;

  return sub_22ADEEAB4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22ADEEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_22AE76E64();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADEEB78, 0, 0);
}

uint64_t sub_22ADEEB78()
{
  v1 = v0[8];
  sub_22AE76F54();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22ADEDE94;
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22ADEEC38(v5, v4, 0, 0, 1);
}

uint64_t sub_22ADEEC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22AE76E54();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22ADEED38, 0, 0);
}

uint64_t sub_22ADEED38()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_22AE76E64();
  v7 = sub_22ADEEEC8(&qword_27D8B0B98, MEMORY[0x277D85928]);
  sub_22AE76F34();
  sub_22ADEEEC8(&qword_27D8B0BA0, MEMORY[0x277D858F8]);
  sub_22AE76E74();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22ADEDCD8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_22ADEEEC8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  if (!CoreLocationLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = abort_report_np();
    return __getCLLocationManagerClass_block_invoke_0(v4);
  }

  return result;
}

Class __getCLLocationManagerClass_block_invoke_0(uint64_t a1)
{
  if (!CoreLocationLibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return getCLLocationManagerClass();
  }

  return result;
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_2786E7258;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22ADEF12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreLocationLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CoreLocationLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CoreLocationLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CoreLocationLibraryCore_frameworkLibrary_0)
  {
    CoreLocationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = CoreLocationLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __HMFLocationAuthorizationInitialize(void *a1)
{
  v1 = a1;
  v2 = __HMFLocationAuthorizationCreateQueue(v1);
  isa = v1[8].isa;
  v1[8].isa = v2;

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = v1[5].isa;
  v1[5].isa = v4;

  v6 = +[HMFScheduler defaultScheduler];
  v7 = v1[2].isa;
  v1[2].isa = v6;
}

dispatch_queue_t __HMFLocationAuthorizationCreateQueue(NSObject *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v3 = HMFDispatchQueueName(v1, 0);
    v1 = dispatch_queue_create(v3, v2);
  }

  return v1;
}

uint64_t HMFDispatchQueueName(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (v4)
  {
    v8 = @".";
  }

  else
  {
    v8 = &stru_283EBDA30;
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = &stru_283EBDA30;
  }

  v10 = [v5 hash];

  v11 = [v3 stringWithFormat:@"com.apple.HMFoundation.%@%@%@.%tu", v7, v8, v9, v10];

  v12 = [v11 UTF8String];
  return v12;
}

id HMFGetOSLogHandle()
{
  v0 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v0 logCategory];
  }

  else
  {
    HMFGetDefaultOSLogHandle();
  }
  v1 = ;

  return v1;
}

os_log_t HMFCreateOSLogHandle(void *a1, id a2)
{
  v4 = a2;
  v5 = a1;
  v6 = [a2 UTF8String];
  v7 = [v5 UTF8String];

  v8 = os_log_create(v6, v7);

  return v8;
}

void __HMFActivityBegin(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1[48])
  {
    v21 = 0;
    v3 = __HMFActivityGetCurrentThreadContext(v1, &v21);
    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier(v5);
      *buf = 138543618;
      v23 = v7;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Beginning activity in context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (!v21)
    {
      if (v5[2])
      {
        v8 = objc_autoreleasePoolPush();
        v9 = v5;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier(v9);
          v12 = v9[2];
          *buf = 138543618;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Adopting voucher: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        v13 = v9[2];
        v14 = voucher_adopt();
        [v3 setVoucher:v14];

        [v3 setShouldRestoreVoucher:1];
      }

      [v5[3] addObject:v3];
    }

    [v3 setCount:{objc_msgSend(v3, "count") + 1}];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v2;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier(v16);
      v19 = v16[9];
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_ERROR, "%{public}@Beginning an invalidated activity is prohibited: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

id __HMFActivityGetCurrentThreadContext(void *a1, BOOL *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = +[__HMFThreadContext currentContext];
    v5 = v3[3];

    v6 = [v5 member:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (a2)
    {
      *a2 = v6 != 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_22ADF16A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location)
{
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMFGetLogIdentifier(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 logIdentifier];
    v4 = [v2 stringWithFormat:@"[%@] ", v3];
  }

  else
  {
    v4 = &stru_283EBDA30;
  }

  return v4;
}

void sub_22ADF1F30(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_22ADF1F98(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t HMFProductPlatformFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Mac OS X"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"macOS"))
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPhone OS"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Watch OS"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Apple TVOS"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"xrOS"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SetupAssistantLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SetupAssistantLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v0 = SetupAssistantLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getBYSetupAssistantFinishedDarwinNotification()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  v7 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr)
  {
    v1 = SetupAssistantLibrary();
    v5[3] = dlsym(v1, "BYSetupAssistantFinishedDarwinNotification");
    getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void __HMFActivityInvalidate(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = HMFGetOSLogHandle();
  v3 = os_signpost_enabled(v2);

  if (v3)
  {
    v4 = HMFGetOSLogHandle();
    v18 = 0;
    *buf = 0;
    *&buf[8] = 0;
    v5 = v1[7];
    v6 = v1;
    [v5 getUUIDBytes:buf];
    v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:16 freeWhenDone:0];

    [v7 getBytes:&v18 range:{objc_msgSend(v7, "length") - 8, 8}];
    v8 = v18;
    if (os_signpost_enabled(v4))
    {
      if (v8 + 1 >= 2)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0xEEEEB0B5B2B2EEEELL;
      }

      v10 = v6[7];
      v11 = v6[9];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_signpost_emit_with_name_impl(&dword_22ADEC000, v4, OS_SIGNPOST_INTERVAL_END, v9, "HMFActivity", "Identifier = %@, Name = %@", buf, 0x16u);
    }
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v1[1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ____HMFActivityInvalidate_block_invoke;
  v16[3] = &unk_2786E6C80;
  v14 = v1;
  v17 = v14;
  os_activity_apply(v13, v16);

  objc_autoreleasePoolPop(v12);
  __HMFActivityEnd(v14);

  v15 = *MEMORY[0x277D85DE8];
}

void __HMFActivityEnd(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = 0;
  v2 = __HMFActivityGetCurrentThreadContext(v1, &v13);
  if (v13)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v1;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier(v4);
      *buf = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v2;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Ending activity in context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    if ([v2 count])
    {
      [v2 setCount:{objc_msgSend(v2, "count") - 1}];
    }

    if (![v2 count])
    {
      if ([v2 shouldRestoreVoucher])
      {
        v7 = objc_autoreleasePoolPush();
        v8 = v4;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = HMFGetLogIdentifier(v8);
          v11 = [v2 voucher];
          *buf = 138543618;
          v15 = v10;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Restoring voucher: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        [v2 voucher];
        objc_claimAutoreleasedReturnValue();
      }

      [v4[3] removeObject:v2];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __NSUUIDCreateUUIDVersion5(uint64_t a1, void *a2, void *a3, void *a4)
{
  data[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  memset(&c, 0, sizeof(c));
  data[0] = 0;
  data[1] = 0;
  [a2 getUUIDBytes:data];
  CC_SHA1_Init(&c);
  CC_SHA1_Update(&c, data, 0x10u);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          CC_SHA1_Update(&c, [v15 UTF8String], objc_msgSend(v14, "lengthOfBytesUsingEncoding:", 4));
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  if (v7)
  {
    CC_SHA1_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));
  }

  CC_SHA1_Final(md, &c);
  *a1 = *md;
  *(a1 + 6) = *(a1 + 6) & 0xF | 0x50;
  *(a1 + 8) = *(a1 + 8) & 0x3F | 0x80;

  v16 = *MEMORY[0x277D85DE8];
}

id HMFObjectDescriptionWithOptions(void *a1, char a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v4 appendString:@"<"];
    v5 = [objc_opt_class() shortDescription];
    [v4 appendString:v5];

    if ((a2 & 4) == 0)
    {
      [v4 appendFormat:@" %p", v3];
    }

    v6 = objc_autoreleasePoolPush();
    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 attributeDescriptions];
      if ([v7 hmf_isEmpty])
      {
        v8 = 0;
      }

      else if ((a2 & 2) != 0)
      {
        v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = v7;
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v23 + 1) + 8 * i) privateDescription];
              [v13 addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v16);
        }

        v8 = [v13 componentsJoinedByString:{@", "}];
      }

      else
      {
        v8 = [v7 componentsJoinedByString:{@", "}];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      if ((a2 & 2) != 0)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier(0);
          v12 = [v3 shortDescription];
          *buf = 138543618;
          v28 = v11;
          v29 = 2112;
          v30 = v12;
          _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Attempting to privately log legacy attribute description for object: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }

      v8 = [v3 propertyDescription];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 length])
    {
      v20 = [v8 mutableCopy];
      [v20 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:2 range:{0, objc_msgSend(v20, "length")}];
      [v20 replaceOccurrencesOfString:@"\\t" withString:@"\t" options:2 range:{0, objc_msgSend(v20, "length")}];
      [v20 replaceOccurrencesOfString:@"\ withString:&stru_283EBDA30 options:2 range:{0, objc_msgSend(v20, "length"")}];
      [v4 appendString:{@", "}];
      [v4 appendString:v20];
    }

    objc_autoreleasePoolPop(v6);
    [v4 appendString:@">"];
  }

  else
  {
    v4 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

id HMFAttributeDescriptionDescriptionWithOptions(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_27;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 name];
  v7 = v4;
  v8 = [v7 value];
  if (!v8)
  {
    v14 = 0;
    goto LABEL_26;
  }

  if ((a2 & 2) != 0)
  {
    v22 = v5;
    v9 = v7;
    v10 = [v9 value];
    v11 = [v9 formatter];
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0 || ([v9 formatter], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "privateStringForObjectValue:", v10), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [v10 privateDescription];
LABEL_12:
        v14 = v15;
        goto LABEL_16;
      }

      if (objc_opt_respondsToSelector())
      {
        v15 = [v10 redactedDescription];
        goto LABEL_12;
      }

      if (v12)
      {
        v14 = @"<private>";
      }

      else
      {
        v14 = 0;
      }
    }

LABEL_16:

    v5 = v22;
    if (v14)
    {
      goto LABEL_26;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_22:
    v18 = [v7 formatter];
    v19 = [v18 stringForObjectValue:v8];

    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = [v8 description];
    }

    v14 = v20;

    goto LABEL_26;
  }

  v17 = [v7 value];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_22;
  }

  v14 = [v17 shortDescription];

  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_26:

  v16 = [v5 stringWithFormat:@"%@: %@", v6, v14];

LABEL_27:

  return v16;
}

uint64_t HMFEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v3;
      v6 = v4;
      v7 = v6;
      v8 = 0;
      if (v5 && v6)
      {
        if (CFNumberIsFloatType(v5) || CFNumberIsFloatType(v7))
        {
          [v5 floatValue];
          v10 = v9;
          [v7 floatValue];
          v8 = vabds_f32(v10, v11) < 0.00000011921;
        }

        else
        {
          v8 = [v5 isEqualToNumber:v7];
        }
      }
    }

    else
    {
      v8 = [v3 isEqual:v4];
    }
  }

  return v8;
}

void sub_22ADF4A74(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __resume(void *a1)
{
  v3 = a1;
  __activateIfNecessary(v3);
  __kick(v3);
  v1 = v3;
  if (v3[6] == 1)
  {
    v2 = [v3 timer];
    dispatch_resume(v2);

    v1 = v3;
    v3[6] = 2;
  }
}

void __activateIfNecessary(void *a1)
{
  v2 = a1;
  v3 = v2;
  if (!v2[9])
  {
    v4 = v2[2];
    v5 = v4;
    if (!v4)
    {
      v6 = HMFDispatchQueueName(v2, 0);
      v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create(v6, v1);
    }

    objc_storeStrong(v3 + 3, v5);
    if (!v4)
    {
    }

    objc_initWeak(&location, v3);
    if ((*(v3 + 12) & 0x10) != 0)
    {
      v8 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v7 = qos_class_self();
      if (v7 <= QOS_CLASS_UTILITY)
      {
        v8 = QOS_CLASS_UTILITY;
      }

      else
      {
        v8 = v7;
      }
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ____activateIfNecessary_block_invoke;
    v12[3] = &unk_2786E6CA8;
    objc_copyWeak(&v13, &location);
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v12);
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3[3]);
    v11 = v3[9];
    v3[9] = v10;

    dispatch_source_set_event_handler(v3[9], v9);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __kick(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = (*(a1 + 32) * 1000000000.0);
  v3 = a1;
  if (v1)
  {
    v4 = dispatch_walltime(0, v2);
  }

  else
  {
    v4 = dispatch_time(0, v2);
  }

  v5 = v4;
  v6 = [(uint64_t *)v3 timer];
  dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, v3[5]);

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(v3 + 4)];
  v8 = v3[7];
  v3[7] = v7;
}

void ____activateIfNecessary_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __handleExpiration];
}

id HMFGetDefaultOSLogHandle()
{
  if (_MergedGlobals_66 != -1)
  {
    dispatch_once(&_MergedGlobals_66, &__block_literal_global_33);
  }

  v1 = qword_280AFC648;

  return v1;
}

void sub_22ADF53F8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void __suspend(void *a1)
{
  if (a1[6] == 2)
  {
    v2 = a1;
    v1 = [v2 timer];
    dispatch_suspend(v1);

    v2[6] = 1;
  }
}

void _HMFThreadLocalAsyncContextPop(CFTypeRef *a1)
{
  v2 = _HMFThreadLocalAsyncContext();
  CFRelease(*v2);
  *v2 = *a1;
}

uint64_t _HMFThreadLocalAsyncContextPush(void *a1)
{
  v1 = a1;
  v2 = _HMFThreadLocalAsyncContext();
  v3 = *v2;
  *v2 = v4;
  return v3;
}

id HMFRequireCurrentAsyncContext()
{
  v0 = *_HMFThreadLocalAsyncContext();
  if (!v0)
  {
    v0 = HMFImplicitDispatchContext();
    if (!v0)
    {
      if (![MEMORY[0x277CCACC8] isMainThread])
      {
        v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No current HMFAsyncContext" userInfo:0];
        objc_exception_throw(v2);
      }

      v0 = HMFMainThreadAsyncContext();
    }
  }

  return v0;
}

id HMFObjectDescription(void *a1)
{
  v1 = qword_280AFC700;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_280AFC700, &__block_literal_global_98);
  }

  v3 = _MergedGlobals_76;
  v4 = +[HMFPreferences sharedPreferences];
  v5 = [v4 preferenceForKey:@"shouldLogPrivateInformation"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 | 2;
  }

  v8 = HMFObjectDescriptionWithOptions(v2, v7);

  return v8;
}

uint64_t __disabledDueToParent(void *a1)
{
  v1 = [a1 parent];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __updateValue(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v10 = v3;
    os_unfair_lock_assert_owner(v3 + 2);
    v3 = v10;
    v4 = *&v10[6]._os_unfair_lock_opaque;
    if (v4 != a2)
    {
      v5 = *&v10[8]._os_unfair_lock_opaque;
      [(os_unfair_lock *)v10 willChangeValueForKey:@"value"];
      v6 = v4 == v5 || v5 == a2;
      v7 = v6;
      if (v6)
      {
        [(os_unfair_lock *)v10 willChangeValueForKey:@"full"];
      }

      if (a2)
      {
        v8 = v4 == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = v8;
      if (v8)
      {
        [(os_unfair_lock *)v10 willChangeValueForKey:@"empty"];
      }

      *&v10[6]._os_unfair_lock_opaque = a2;
      [(os_unfair_lock *)v10 didChangeValueForKey:@"value"];
      if (v7)
      {
        [(os_unfair_lock *)v10 didChangeValueForKey:@"full"];
      }

      v3 = v10;
      if (v9)
      {
        [(os_unfair_lock *)v10 didChangeValueForKey:@"empty"];
        v3 = v10;
      }
    }
  }
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_22AE76A74();
}

uint64_t sub_22ADF66B4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22ADF66EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22ADF672C()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_22ADF6818()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[11];

  v3 = v0[12];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22ADF6860()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ADF689C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_22ADF6910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_22ADF6988()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22ADF69C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22ADF69D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ADF6A1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22ADF6A54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22ADF6B24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22ADF6BB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22ADF6C4C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22ADF6D08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22ADF6E08()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_22ADF6E60(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_22ADF6EA4()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22ADF6EDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22ADF6EE8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

__n128 sub_22ADF6F38(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12HMFoundation24HierarchicalStateMachineC04RootC0V12BuilderTypesO15OnDelegateEventVyxq_q0____GSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22ADF7188()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22ADF71C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22ADF71FC()
{
  if (v0[8])
  {
    v1 = v0[9];
  }

  if (v0[10])
  {
    v2 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22ADF72B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22ADF73A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t Sequence.asyncForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(*(sub_22AE76D84() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADF75AC, 0, 0);
}

uint64_t sub_22ADF75AC()
{
  v1 = v0[15];
  v2 = v0[5];
  (*(v0[11] + 16))(v0[12], v0[6], v0[4]);
  sub_22AE76AC4();
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22AE76D94();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v10 = v0[12];
    v12 = v0[9];
    v11 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_22ADF77E0;
    v18 = v0[9];
    v19 = v0[3];

    return v20(v18);
  }
}

uint64_t sub_22ADF77E0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22ADF7B04;
  }

  else
  {
    v3 = sub_22ADF78F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22ADF78F4()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22AE76D94();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_22ADF77E0;
    v16 = v0[9];
    v17 = v0[3];

    return v18(v16);
  }
}

uint64_t sub_22ADF7B04()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_22AE76D84() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADF7DE0, 0, 0);
}

uint64_t sub_22ADF7DE0()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_22AE76A04();
  (*(v3 + 16))(v2, v4, v7);
  sub_22AE76AC4();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22AE76D94();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_22ADF804C;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_22ADF804C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_22ADF83C0;
  }

  else
  {
    v5 = sub_22ADF8168;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22ADF8168()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_22AE76BB4();
  sub_22AE76B94();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22AE76D94();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_22ADF804C;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_22ADF83C0()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t Sequence.firstMapped<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v52 = a1;
  v53 = a2;
  v45 = a6;
  v51 = sub_22AE76D84();
  v44 = *(v51 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v51, v10);
  v12 = &v43 - v11;
  v50 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = &v43 - v16;
  v18 = sub_22AE76D84();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = &v43 - v22;
  v54 = *(a3 - 1);
  v24 = *(v54 + 8);
  MEMORY[0x28223BE20](v21, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_getAssociatedTypeWitness();
  v46 = *(v28 - 8);
  v29 = *(v46 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v43 - v31;
  v33 = *(v54 + 2);
  v49 = a3;
  v33(v27, v55, a3);
  sub_22AE76AC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v32;
  v55 = v28;
  v35 = v56;
  v50 = AssociatedConformanceWitness;
  sub_22AE76D94();
  v49 = *(v35 + 48);
  if (v49(v23, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v46 + 8))(v54, v55);
    return (*(*(v57 - 8) + 56))(v45, 1, 1);
  }

  else
  {
    v36 = *(v35 + 32);
    v56 = v35 + 32;
    v37 = (v35 + 8);
    v47 = v57 - 8;
    v48 = v36;
    v38 = (v44 + 8);
    while (1)
    {
      v48(v17, v23, AssociatedTypeWitness);
      v52(v17);
      if (v6)
      {
        (*v37)(v17, AssociatedTypeWitness);
        return (*(v46 + 8))(v54, v55);
      }

      (*v37)(v17, AssociatedTypeWitness);
      v39 = *(v57 - 8);
      if ((*(v39 + 48))(v12, 1) != 1)
      {
        break;
      }

      (*v38)(v12, v51);
      sub_22AE76D94();
      if (v49(v23, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v46 + 8))(v54, v55);
    v41 = v45;
    v42 = v57;
    (*(v39 + 32))(v45, v12, v57);
    return (*(v39 + 56))(v41, 0, 1, v42);
  }
}

uint64_t Sequence<>.parallelForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22ADF8A08, 0, 0);
}

uint64_t sub_22ADF8A08()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D859B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_22ADF8AF8;

  return MEMORY[0x282200740]();
}

uint64_t sub_22ADF8AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22ADF8C2C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22ADF8C14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22ADF8C2C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22ADF8C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[15] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v12 = *(*(sub_22AE76D84() - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v13 = *(a6 - 8);
  v7[22] = v13;
  v14 = *(v13 + 64) + 15;
  v7[23] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v7[24] = v15;
  v16 = *(v15 - 8);
  v7[25] = v16;
  v17 = *(v16 + 64) + 15;
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADF8ED0, 0, 0);
}

uint64_t sub_22ADF8ED0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 80), *(v0 + 104));
  sub_22AE76AC4();
  v34 = v2;
  v35 = (v2 + 48);
  while (1)
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v0 + 168);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    swift_getAssociatedConformanceWitness();
    sub_22AE76D94();
    if ((*v35)(v8, 1, v10) == 1)
    {
      break;
    }

    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v38 = v12;
    v14 = *(v0 + 144);
    v41 = *(v0 + 152);
    v36 = v14;
    v15 = *(v0 + 136);
    v16 = *(v0 + 120);
    v39 = *(v0 + 88);
    v40 = *(v0 + 96);
    v17 = sub_22AE76C34();
    v18 = *(v17 - 8);
    v37 = *(v0 + 104);
    (*(v18 + 56))(v12, 1, 1, v17);
    v19 = *(v34 + 32);
    v20 = v14;
    v21 = v16;
    v19(v20, v13, v16);
    v22 = (*(v34 + 80) + 64) & ~*(v34 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = (v23 + 16);
    *(v23 + 24) = 0;
    *(v23 + 32) = v37;
    *(v23 + 48) = v39;
    *(v23 + 56) = v40;
    v19(v23 + v22, v36, v21);
    sub_22ADEE6FC(v38, v41);
    LODWORD(v21) = (*(v18 + 48))(v41, 1, v17);

    v25 = *(v0 + 152);
    if (v21 == 1)
    {
      sub_22ADEE824(*(v0 + 152));
      if (*v24)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_22AE76C24();
      (*(v18 + 8))(v25, v17);
      if (*v24)
      {
LABEL_7:
        v26 = *(v23 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_22AE76BC4();
        v29 = v28;
        swift_unknownObjectRelease();
        goto LABEL_10;
      }
    }

    v27 = 0;
    v29 = 0;
LABEL_10:
    v30 = **(v0 + 72);

    if (v29 | v27)
    {
      v4 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v0 + 160);
    *(v0 + 48) = 1;
    *(v0 + 56) = v4;
    *(v0 + 64) = v30;
    swift_task_create();

    sub_22ADEE824(v5);
  }

  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v31 = swift_task_alloc();
  *(v0 + 216) = v31;
  *v31 = v0;
  v31[1] = sub_22ADF92CC;
  v32 = *(v0 + 72);

  return (sub_22ADF9824)(0, 0);
}

uint64_t sub_22ADF92CC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 144);
  v10 = *v0;

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_22ADF9480(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22ADEE1DC;

  return sub_22ADF8C90(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_22ADF9558(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22ADEE1E0;

  return v11(a6);
}

uint64_t sub_22ADF9650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v24 - v12;
  sub_22ADEE6FC(a1, v24 - v12);
  v14 = sub_22AE76C34();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_22ADEE824(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_22AE76BC4();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22AE76C24();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = *(a4 + 16);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t sub_22ADF9824(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_22AE76BC4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_22ADF98B8, v4, v6);
}

uint64_t sub_22ADF98B8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D10, &qword_22AE802A8);
  if (sub_22AE76CD4())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x277D85818] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D20, &unk_22AE80320);
    *v4 = v0;
    v4[1] = sub_22ADF99F0;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_22ADF99F0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_22ADF9C3C;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_22ADF9B0C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_22ADF9B0C()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_22AE76CD4())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x277D85818] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D20, &unk_22AE80320);
  *v7 = v0;
  v7[1] = sub_22ADF99F0;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v11, v9, v8);
}

uint64_t sub_22ADF9C3C()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_22AE76CD4())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x277D85818] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D20, &unk_22AE80320);
    *v7 = v0;
    v7[1] = sub_22ADF99F0;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v11, v9, v8);
  }
}

uint64_t Sequence<>.parallelMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_22ADF9DA0, 0, 0);
}

uint64_t sub_22ADF9DA0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v10 = *(v0 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_22AE76BB4();
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_22ADF9EEC;

  return MEMORY[0x282200740](v0 + 16, TupleTypeMetadata2, v6, 0, 0, &unk_22AE80298, v4, TupleTypeMetadata2);
}

uint64_t sub_22ADF9EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22ADFA024;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_22ADFA008;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22ADFA024()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_22ADFA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[12] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D10, &qword_22AE802A8);
  v12 = sub_22AE76FE4();
  v8[17] = v12;
  v13 = sub_22AE76D84();
  v8[18] = v13;
  v14 = *(v13 - 8);
  v8[19] = v14;
  v15 = *(v14 + 64) + 15;
  v8[20] = swift_task_alloc();
  v16 = *(v12 - 8);
  v8[21] = v16;
  v17 = *(v16 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[24] = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v8[25] = v19;
  v8[26] = *(v19 + 64);
  v8[27] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330) - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v21 = sub_22AE76D84();
  v8[29] = v21;
  v22 = *(v21 - 8);
  v8[30] = v22;
  v23 = *(v22 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_getTupleTypeMetadata2();
  v24 = sub_22AE76D84();
  v8[33] = v24;
  v25 = *(v24 - 8);
  v8[34] = v25;
  v26 = *(v25 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v27 = sub_22AE76EC4();
  v8[37] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v8[38] = swift_task_alloc();
  v29 = sub_22AE76EB4();
  v8[39] = v29;
  v30 = *(v29 - 8);
  v8[40] = v30;
  v31 = *(v30 + 64) + 15;
  v8[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADFA4D4, 0, 0);
}

uint64_t sub_22ADFA4D4()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[25];
  v7 = v0[6];
  MEMORY[0x231886160](v0[9], v0[11]);
  sub_22AE76E94();
  v8 = 0;
  v44 = v6;
  v45 = v5;
  v46 = v5 - 8;
  v47 = (v4 + 32);
  while (1)
  {
    v9 = v0[41];
    v10 = v0[39];
    v12 = v0[35];
    v11 = v0[36];
    v14 = v0[32];
    v13 = v0[33];
    sub_22AE76EA4();
    (*v47)(v11, v12, v13);
    result = (*(*v46 + 48))(v11, 1, v14);
    if (result == 1)
    {
      break;
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    v16 = v0[36];
    v17 = v0[27];
    v18 = v0[28];
    v49 = v0[26];
    v19 = v0[24];
    v54 = v0[16];
    v53 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v51 = v0[11];
    v52 = v0[8];
    v50 = v0[7];
    v55 = v0[5];
    v22 = *(v45 + 48);
    v48 = *v16;
    v23 = sub_22AE76C34();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = *(v44 + 32);
    v24(v17, &v16[v22], v19);
    v25 = (*(v44 + 80) + 80) & ~*(v44 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v21;
    *(v26 + 5) = v20;
    *(v26 + 6) = v51;
    *(v26 + 7) = v48;
    *(v26 + 8) = v50;
    *(v26 + 9) = v52;
    v24(&v26[v25], v17, v19);
    v27 = *(v26 + 2);
    v28 = *(v26 + 3);
    v29 = swift_allocObject();
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = v21;
    v29[5] = v20;
    v29[6] = v51;
    v29[7] = &unk_22AE802F0;
    v29[8] = v26;
    v30 = sub_22AE76CE4();

    swift_unknownObjectRetain();
    sub_22ADF9650(v18, &unk_22AE80300, v29, v30);
    sub_22ADEE824(v18);
    ++v8;
  }

  v32 = v0[30];
  v31 = v0[31];
  v33 = v0[29];
  v34 = v0[10];
  (*(v0[40] + 8))(v0[41], v0[39]);
  v35 = *(v34 - 8);
  v0[42] = v35;
  v36 = *(v35 + 56);
  v0[43] = v36;
  v0[44] = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v36(v31, 1, 1, v34);
  v37 = sub_22ADFCE10(v31, v8, v33);
  (*(v32 + 8))(v31, v33);
  v0[2] = v37;
  v0[45] = 0;
  v38 = v0[16];
  v39 = v0[12];
  v40 = swift_task_alloc();
  v0[46] = v40;
  v41 = sub_22AE76CE4();
  *v40 = v0;
  v40[1] = sub_22ADFA914;
  v42 = v0[20];
  v43 = v0[5];

  return sub_22ADFB480(v42, 0, 0, v41);
}

uint64_t sub_22ADFA914()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22ADFAA10, 0, 0);
}

uint64_t sub_22ADFAA10()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 360);
    (*(*(v0 + 152) + 8))(v1, *(v0 + 144));
    v5 = *(v0 + 328);
    v6 = *(v0 + 304);
    v56 = *(v0 + 288);
    v58 = *(v0 + 280);
    v60 = *(v0 + 248);
    if (v4)
    {
      v7 = *(v0 + 360);
      v9 = *(v0 + 216);
      v8 = *(v0 + 224);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 160);
      v13 = *(v0 + 120);
      v52 = *(v0 + 112);
      v14 = *(v0 + 16);

      swift_willThrow();
    }

    else
    {
      v40 = *(v0 + 224);
      v39 = *(v0 + 232);
      v41 = *(v0 + 216);
      v47 = *(v0 + 184);
      v48 = *(v0 + 176);
      v49 = *(v0 + 160);
      v51 = *(v0 + 120);
      v54 = *(v0 + 112);
      v42 = *(v0 + 72);
      v43 = *(v0 + 32);
      *(v0 + 24) = *(v0 + 16);
      v44 = swift_task_alloc();
      v45 = *(v0 + 80);
      *(v44 + 16) = v42;
      *(v44 + 24) = v45;
      sub_22AE76BB4();

      swift_getWitnessTable();
      v46 = sub_22AE76AD4();
      swift_bridgeObjectRelease_n();

      *v43 = v46;
    }

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  (*(v2 + 32))(v16, v1, v3);
  (*(v2 + 16))(v17, v16, v3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = *(v0 + 344);
    v55 = *(v0 + 352);
    v21 = *(v0 + 336);
    v22 = *(v0 + 240);
    v23 = *(v0 + 232);
    v59 = *(v0 + 184);
    v61 = *(v0 + 248);
    v24 = *(v0 + 168);
    v57 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    (*(v27 + 32))(v26, *(v0 + 176), v28);
    v50 = *v26;
    (*(v27 + 16))(v25, v26, v28);
    (*(v21 + 32))(v61, v25 + *(v28 + 48), v29);
    v53(v61, 0, 1, v29);
    v30 = sub_22AE76BB4();
    sub_22AE76B54();
    v31 = *(v0 + 16);
    sub_22ADFCDBC(v50, v31);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v59, v57);
    (*(v22 + 40))(v31 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v50, v61, v23);
    nullsub_1(v30);
    goto LABEL_8;
  }

  v18 = *(v0 + 360);
  v19 = *(v0 + 176);
  (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 136));
  v20 = *v19;
  if (v18)
  {

LABEL_8:
    v20 = *(v0 + 360);
  }

  *(v0 + 360) = v20;
  v32 = *(v0 + 128);
  v33 = *(v0 + 96);
  v34 = swift_task_alloc();
  *(v0 + 368) = v34;
  v35 = sub_22AE76CE4();
  *v34 = v0;
  v34[1] = sub_22ADFA914;
  v36 = *(v0 + 160);
  v37 = *(v0 + 40);

  return sub_22ADFB480(v36, 0, 0, v35);
}

uint64_t sub_22ADFAF50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22ADEE1E0;

  return sub_22ADFA088(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_22ADFB02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  v13 = (a5 + *a5);
  v10 = a5[1];
  v11 = swift_task_alloc();
  *(v7 + 24) = v11;
  *v11 = v7;
  v11[1] = sub_22ADFB13C;

  return v13(a1, a7);
}

uint64_t sub_22ADFB13C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  v6 = *(v4 + 8);
  if (!v0)
  {
    v5 = *(v2 + 16);
  }

  return v6(v5);
}

uint64_t sub_22ADFB244(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_22ADFB370;

  return v11(a1 + v7);
}

uint64_t sub_22ADFB370(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_22ADFB480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = *(MEMORY[0x277D85810] + 4);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_22ADFB530;

  return MEMORY[0x2822004C0](a1, a4);
}

uint64_t sub_22ADFB530()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    if (v3[2])
    {
      v4 = v3[3];
      swift_getObjectType();
      v5 = sub_22AE76BC4();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_22ADFB6A0, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t Sequence<>.parallelMapToResults<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_22ADFB6E4, 0, 0);
}

uint64_t sub_22ADFB6E4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D10, &qword_22AE802A8);
  v10 = *(v0 + 48);
  sub_22AE76FE4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_22AE76BB4();
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_22ADFB85C;

  return MEMORY[0x282200600](v0 + 16, TupleTypeMetadata2, v6, 0, 0, &unk_22AE802B8, v4, TupleTypeMetadata2);
}

uint64_t sub_22ADFB85C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22ADFB974, 0, 0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22ADFB9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D10, &qword_22AE802A8);
  v8[12] = sub_22AE76FE4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[13] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[17] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[18] = v13;
  v8[19] = *(v13 + 64);
  v8[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v15 = *(*(sub_22AE76D84() - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v16 = sub_22AE76C04();
  v8[23] = v16;
  v17 = *(v16 - 8);
  v8[24] = v17;
  v18 = *(v17 + 64) + 15;
  v8[25] = swift_task_alloc();
  v19 = sub_22AE76D84();
  v8[26] = v19;
  v20 = *(v19 - 8);
  v8[27] = v20;
  v21 = *(v20 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_getTupleTypeMetadata2();
  v22 = sub_22AE76D84();
  v8[30] = v22;
  v23 = *(v22 - 8);
  v8[31] = v23;
  v24 = *(v23 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v25 = sub_22AE76EC4();
  v8[34] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v27 = sub_22AE76EB4();
  v8[36] = v27;
  v28 = *(v27 - 8);
  v8[37] = v28;
  v29 = *(v28 + 64) + 15;
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADFBDF0, 0, 0);
}

uint64_t sub_22ADFBDF0()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[18];
  v7 = v0[6];
  MEMORY[0x231886160](v0[9], v0[11]);
  sub_22AE76E94();
  v8 = 0;
  v45 = v6;
  v46 = v5;
  v47 = v5 - 8;
  while (1)
  {
    v9 = v0[38];
    v10 = v0[36];
    v12 = v0[32];
    v11 = v0[33];
    v14 = v0[29];
    v13 = v0[30];
    sub_22AE76EA4();
    (*(v4 + 32))(v11, v12, v13);
    v15 = (*(*v47 + 48))(v11, 1, v14);
    if (v15 == 1)
    {
      break;
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x2822002E8](v15, v16, v17, v18);
    }

    v19 = v0[33];
    v21 = v0[20];
    v20 = v0[21];
    v49 = v0[19];
    v22 = v0[17];
    v52 = v0[11];
    v53 = v0[13];
    v23 = v0[8];
    v51 = v0[7];
    v54 = v0[5];
    v24 = *(v46 + 48);
    v50 = *v19;
    v25 = sub_22AE76C34();
    v48 = *(v0 + 9);
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    v26 = *(v45 + 32);
    v26(v21, &v19[v24], v22);
    v27 = (*(v45 + 80) + 80) & ~*(v45 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v48;
    *(v28 + 48) = v52;
    *(v28 + 56) = v50;
    *(v28 + 64) = v51;
    *(v28 + 72) = v23;
    v26((v28 + v27), v21, v22);
    v29 = sub_22AE76C14();

    sub_22ADFCAD0(v20, &unk_22AE802C8, v28, v29);
    sub_22ADEE824(v20);
    ++v8;
  }

  v31 = v0[27];
  v30 = v0[28];
  v33 = v0[25];
  v32 = v0[26];
  v35 = v0[12];
  v34 = v0[13];
  v36 = v0[5];
  (*(v0[37] + 8))(v0[38], v0[36]);
  v37 = *(v35 - 8);
  v0[39] = v37;
  v38 = *(v37 + 56);
  v0[40] = v38;
  v0[41] = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v38(v30, 1, 1, v35);
  v39 = sub_22ADFCE10(v30, v8, v32);
  (*(v31 + 8))(v30, v32);
  v0[2] = v39;
  v40 = *v36;
  sub_22AE76BE4();
  v41 = *(MEMORY[0x277D856B0] + 4);
  v42 = swift_task_alloc();
  v0[42] = v42;
  *v42 = v0;
  v42[1] = sub_22ADFC1A4;
  v43 = v0[25];
  v15 = v0[22];
  v18 = v0[23];
  v16 = 0;
  v17 = 0;

  return MEMORY[0x2822002E8](v15, v16, v17, v18);
}

uint64_t sub_22ADFC1A4()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22ADFC2A0, 0, 0);
}

uint64_t sub_22ADFC2A0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v29 = *(v0 + 304);
    v30 = *(v0 + 280);
    v31 = *(v0 + 264);
    v32 = *(v0 + 256);
    v4 = *(v0 + 208);
    v33 = *(v0 + 224);
    v34 = *(v0 + 168);
    v36 = *(v0 + 160);
    v38 = *(v0 + 128);
    v40 = *(v0 + 120);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 32);
    v28 = *(v0 + 72);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    *(v0 + 24) = *(v0 + 16);
    v8 = swift_task_alloc();
    *(v8 + 16) = v28;
    *(v8 + 32) = v6;
    sub_22AE76BB4();

    swift_getWitnessTable();
    v9 = sub_22AE76AD4();
    swift_bridgeObjectRelease_n();

    *v7 = v9;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 216);
    v35 = *(v0 + 224);
    v37 = *(v0 + 320);
    v39 = *(v0 + 208);
    v41 = *(v0 + 328);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *v1;
    v18 = *(v2 + 48);
    *v15 = *v1;
    v19 = v1;
    v20 = *(v12 + 32);
    v20(v15 + v18, v19 + v18, v16);
    (*(v3 + 16))(v14, v15, v2);
    v20(v35, (v14 + *(v2 + 48)), v16);
    v37(v35, 0, 1, v16);
    v21 = sub_22AE76BB4();
    sub_22AE76B54();
    v22 = *(v0 + 16);
    sub_22ADFCDBC(v17, v22);
    (*(v3 + 8))(v15, v2);
    (*(v13 + 40))(v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v35, v39);
    nullsub_1(v21);
    v23 = *(MEMORY[0x277D856B0] + 4);
    v24 = swift_task_alloc();
    *(v0 + 336) = v24;
    *v24 = v0;
    v24[1] = sub_22ADFC1A4;
    v25 = *(v0 + 200);
    v26 = *(v0 + 176);
    v27 = *(v0 + 184);

    return MEMORY[0x2822002E8](v26, 0, 0, v27);
  }
}

uint64_t sub_22ADFC654(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22ADEE1DC;

  return sub_22ADFB9D4(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_22ADFC730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x2822009F8](sub_22ADFC760, 0, 0);
}

uint64_t sub_22ADFC760()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D10, &qword_22AE802A8);
  *(v0 + 64) = sub_22AE76FE4();
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  *(v0 + 88) = v5;
  *v4 = v3;
  v11 = (v2 + *v2);
  v6 = v2[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_22ADFC8C8;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);

  return v11(&v4[v5], v8);
}

uint64_t sub_22ADFC8C8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22ADFCA4C;
  }

  else
  {
    v3 = sub_22ADFC9DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22ADFC9DC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16) + *(v0 + 88);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22ADFCA4C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 24);
  *(v3 + v2) = v1;
  v4 = *(v0 + 64);
  v5 = *(v0 + 16) + *(v0 + 88);
  swift_storeEnumTagMultiPayload();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22ADFCAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v25 - v13;
  sub_22ADEE6FC(a1, v25 - v13);
  v15 = sub_22AE76C34();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22ADEE824(v14);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_22AE76BC4();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22AE76C24();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v5;
  v22 = swift_allocObject();
  v22[2] = *(a4 + 16);
  v22[3] = a2;
  v22[4] = a3;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v26[0] = 0;
    v26[1] = 0;
    v23 = v26;
    v26[2] = v18;
    v26[3] = v20;
  }

  v25[1] = 1;
  v25[2] = v23;
  v25[3] = v21;
  swift_task_create();
}

uint64_t sub_22ADFCCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D10, &qword_22AE802A8);
  sub_22AE76FE4();
  v4 = sub_22AE76D84();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22ADFCDBC(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22ADFCE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22AE76B64();
  v15 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = sub_22AE76BB4();
    nullsub_1(v14);
    return v15;
  }

  return result;
}

uint64_t sub_22ADFCF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22ADFCCD0(a1, a2);
}

uint64_t sub_22ADFCF44(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = v1[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1E0;

  return sub_22ADFC730(a1, v8, v9, v10, v11, v12, v1 + v7);
}

uint64_t sub_22ADFD090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22ADEE1DC;

  return sub_22ADEE8E8(a1, v5);
}

uint64_t sub_22ADFD158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_22AE76D84();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_22ADFD1CC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v15 = v1[5];
  v5 = v1[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADFD318;

  return sub_22ADFB02C(a1, v8, v9, v10, v11, v12, v1 + v7);
}

uint64_t sub_22ADFD318(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22ADFD414(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22ADEE1DC;

  return sub_22ADFB244(a1, v6, v7, v9);
}

uint64_t sub_22ADFD504(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1DC;

  return sub_22ADF9558(a1, v9, v10, v11, v12, v1 + v8);
}

uint64_t HMF.SleepTaskTimerProvider.scheduleTimer(for:priority:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - v13;
  sub_22ADEE6FC(a3, &v19 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D28, &qword_22AE80338);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a4;
  v16[7] = a5;

  v17 = sub_22ADFDFDC(0, 0, v14, &unk_22AE80348, v16);
  sub_22ADEE824(v14);
  *(v15 + 16) = v17;
  return v15;
}

uint64_t *HMF.SleepTaskTimerProvider.scheduleTimer<A>(for:priority:on:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v23 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D28, &qword_22AE80338);
  sub_22ADEE6FC(a3, v20);
  swift_allocObject();
  swift_unknownObjectRetain();
  v21 = sub_22ADFE7DC(a1, a2, v20, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v21;
}

uint64_t *sub_22ADFD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t **a9@<X8>)
{
  result = HMF.SleepTaskTimerProvider.scheduleTimer<A>(for:priority:on:block:)(a1, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  return result;
}

uint64_t static HMF.DefaultSleepTask.sleep(for:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22AE76E64();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADFD980, 0, 0);
}

uint64_t sub_22ADFD980()
{
  v1 = v0[6];
  sub_22AE76F54();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22ADFDA40;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22ADEEC38(v5, v4, 0, 0, 1);
}

uint64_t sub_22ADFDA40()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22ADFDBE8, 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_22ADFDBE8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22ADFDC4C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22AE76E64();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22ADFDD0C, 0, 0);
}

uint64_t sub_22ADFDD0C()
{
  v1 = v0[6];
  sub_22AE76F54();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22ADFDDCC;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22ADEEC38(v5, v4, 0, 0, 1);
}

uint64_t sub_22ADFDDCC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[8] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22ADFECCC, 0, 0);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_22ADFDF74()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22ADFDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_22ADEE6FC(a3, v26 - v10);
  v12 = sub_22AE76C34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22ADEE824(v11);
  }

  else
  {
    sub_22AE76C24();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22AE76BC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22AE76A84() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22ADFE27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v11 = *(v17 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_22ADFE3BC;

  return v15(a4, a5);
}

uint64_t sub_22ADFE3BC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22ADFE684, 0, 0);
  }

  else
  {
    v9 = (v3[2] + *v3[2]);
    v4 = *(v3[2] + 4);
    v5 = swift_task_alloc();
    v3[7] = v5;
    *v5 = v3;
    v5[1] = sub_22ADFE590;
    v6 = v3[3];
    v7 = v3[4];

    return v9(v7);
  }
}

uint64_t sub_22ADFE590()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22ADFE684()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t HMF.SleepTaskTimer.deinit()
{
  v1 = *(v0 + 16);
  sub_22AE76CA4();
  v2 = *(v0 + 16);

  return v0;
}

uint64_t sub_22ADFE770()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t *sub_22ADFE7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v8;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = *(v16 + 80);
  v17[5] = a7;
  v17[6] = *(v16 + 88);
  v17[7] = a8;
  v17[8] = a1;
  v17[9] = a2;
  v17[10] = a5;
  v17[11] = a6;
  v17[12] = a4;

  swift_unknownObjectRetain();
  v18 = sub_22ADFDFDC(0, 0, a3, &unk_22AE80430, v17);
  sub_22ADEE824(a3);
  v8[2] = v18;
  return v8;
}

uint64_t dispatch thunk of static HMF.MockableSleepTask.sleep(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22ADEE1E0;

  return v13(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for Flow(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Flow(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22ADFEB98(uint64_t a1)
{
  v14 = *(v1 + 32);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22ADEE1E0;

  return sub_22ADFE27C(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t HMF.TimerProvider.scheduleTimer(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v19 - v15;
  v17 = sub_22AE76C34();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(a6 + 24))(a1, a2, v16, a3, a4, a5, a6);
  return sub_22ADEE824(v16);
}

uint64_t HMF.TimerProvider.scheduleTimer<A>(for:on:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a7;
  v22 = a3;
  v23 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v22 - v17;
  v19 = sub_22AE76C34();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = *(a8 + 32);

  v20(a1, a2, v18, v22, v23, a5, v24, a9, a6, a8);

  return sub_22ADEE824(v18);
}

uint64_t sub_22ADFEF70()
{
  v0 = sub_22AE76854();
  __swift_allocate_value_buffer(v0, qword_27D8B0D30);
  __swift_project_value_buffer(v0, qword_27D8B0D30);
  return sub_22AE76834();
}

uint64_t static UUID.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D8B0D08 != -1)
  {
    swift_once();
  }

  v2 = sub_22AE76854();
  v3 = __swift_project_value_buffer(v2, qword_27D8B0D30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t UUID.init(uuidData:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 16)
      {
        goto LABEL_8;
      }

LABEL_11:
      v11 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE767E4();
  sub_22AE76834();
  v11 = 0;
LABEL_12:
  sub_22ADFF34C(v4, a2);
  v12 = sub_22AE76854();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, v11, 1, v12);
}

uint64_t sub_22ADFF34C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t UUID.init(namespace:name:salts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a1;
  v19[1] = a4;
  v6 = sub_22AE76854();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = sub_22AE76814();
  v14 = sub_22AE767F4();
  v15 = sub_22AE76B24();

  v16 = [v12 hmf:v13 UUIDWithNamespace:v14 data:v15 salts:?];

  sub_22AE76824();
  sub_22AE76844();
  sub_22AE76834();
  sub_22ADFF34C(a2, a3);
  v17 = *(v7 + 8);
  v17(v19[0], v6);
  return v17(v11, v6);
}

uint64_t UUID.uuidData.getter()
{
  v0 = sub_22AE76844();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D48, &qword_22AE804A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22AE80490;
  *(v11 + 32) = v1;
  *(v11 + 33) = v4;
  *(v11 + 34) = v5;
  *(v11 + 35) = v6;
  *(v11 + 36) = v7;
  *(v11 + 37) = v8;
  *(v11 + 38) = v9;
  *(v11 + 39) = v10;
  *(v11 + 40) = v3;
  *(v11 + 41) = v14;
  *(v11 + 42) = v15;
  *(v11 + 43) = v16;
  *(v11 + 44) = v17;
  *(v11 + 45) = v18;
  *(v11 + 46) = v19;
  *(v11 + 47) = v20;
  v12 = sub_22ADFF924(v11);

  return v12;
}

_BYTE *sub_22ADFF6D8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22ADFF76C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22ADFF824(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22ADFF8A0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22ADFF76C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22ADFF824(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22AE767B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22AE767A4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22AE767D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22ADFF8A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22AE767B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22AE767A4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22ADFF924(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D50, &qword_22AE804B0);
  v10 = sub_22ADFF9D4();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22ADFF6D8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_22ADFF9D4()
{
  result = qword_27D8B0D58;
  if (!qword_27D8B0D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0D50, &qword_22AE804B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B0D58);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t unwrap<A>(_:_:fileID:function:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v14 = sub_22AE76D84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25 - v18;
  (*(v15 + 16))(&v25 - v18, a1, v14);
  v20 = *(a10 - 8);
  if ((*(v20 + 48))(v19, 1, a10) != 1)
  {
    return (*(v20 + 32))(a9, v19, a10);
  }

  (*(v15 + 8))(v19, v14);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_22AE76DD4();

  if (a3)
  {
    v31 = 0xD000000000000011;
    v32 = 0x800000022AE82B60;
    MEMORY[0x231886110](a2, a3);
    MEMORY[0x231886110](544497952, 0xE400000000000000);
  }

  else
  {
    v31 = 0xD00000000000001DLL;
    v32 = 0x800000022AE82B40;
  }

  MEMORY[0x231886110](v26, v27);
  MEMORY[0x231886110](8236, 0xE200000000000000);
  MEMORY[0x231886110](v28, v29);
  MEMORY[0x231886110](0x20656E696C202CLL, 0xE700000000000000);
  v33 = v30;
  v22 = sub_22AE76EE4();
  MEMORY[0x231886110](v22);

  sub_22AE1BC20(v31, v32);
  v23 = objc_opt_self();
  v24 = sub_22AE76A54();

  [v23 hmfErrorWithCode:19 reason:v24];

  return swift_willThrow();
}

uint64_t HMF.VisibleDevice.init(idsIdentifierString:mediaRouteIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t HMF.VisibleDevice.idsIdentifierString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HMF.VisibleDevice.mediaRouteIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22ADFFE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22ADFFED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void (*HMFMessage.sendableResponseHandler.getter())(uint64_t a1, uint64_t a2)
{
  result = [v0 sendableResponseHandlerInternal];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_22AE00308;
  }

  return result;
}

void *sub_22ADFFF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sendableResponseHandlerInternal];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_22AE006B0;
    result[3] = v5;
    v6 = sub_22AE00674;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_22AE00044(uint64_t *a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7 = sub_22AE00638;
    v10[4] = sub_22AE00638;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_22AE00310;
    v10[3] = &block_descriptor_16;
    v8 = _Block_copy(v10);
    sub_22ADF69C0(v3);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = *a2;
  }

  [v6 setSendableResponseHandlerInternal_];
  _Block_release(v8);
  return sub_22ADF73A0(v7);
}

uint64_t HMFMessage.sendableResponseHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_22AE00310;
    v7[3] = &block_descriptor;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  [v3 setSendableResponseHandlerInternal_];
  _Block_release(v5);
  return sub_22ADF73A0(a1);
}

void sub_22AE00250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22AE767C4();
    if (a2)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D60, &qword_22AE80500);
      v6 = sub_22AE76A14();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22AE00310(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D60, &qword_22AE80500);
    v3 = sub_22AE76A24();
  }

  v7 = a2;
  v6(a2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMFMessage.sendableResponseHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 sendableResponseHandlerInternal];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_22AE006B0;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_22AE004A0;
}

void sub_22AE004A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_22AE00310;
      v2[3] = &block_descriptor_3;
      v5 = _Block_copy(v2);
      v6 = v2[5];
      sub_22ADF69C0(v3);
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setSendableResponseHandlerInternal_];
    _Block_release(v5);
    sub_22ADF73A0(v3);
    v9 = v2[6];
    v10 = v2[7];
  }

  else
  {
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_22AE00310;
      v2[3] = &block_descriptor_6;
      v7 = _Block_copy(v2);
      v8 = v2[5];
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setSendableResponseHandlerInternal_];
    _Block_release(v7);
    v9 = v3;
  }

  sub_22ADF73A0(v9);

  free(v2);
}

uint64_t sub_22AE00638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_22AE00674(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t NWEndpoint.resolveHostAndPort()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D68, &qword_22AE80510);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D70, &qword_22AE80518) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D78, &qword_22AE80520);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_22AE76904();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D80, &qword_22AE80528);
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v2[18] = v16;
  v17 = *(v16 - 8);
  v2[19] = v17;
  v2[20] = *(v17 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D90, &qword_22AE80538);
  v2[23] = v18;
  v19 = *(v18 - 8);
  v2[24] = v19;
  v20 = *(v19 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE009E0, 0, 0);
}

uint64_t sub_22AE009E0()
{
  v1 = v0[22];
  v27 = v0[20];
  v28 = v0[25];
  v2 = v0[19];
  v25 = v0[18];
  v26 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v5;
  v24 = v0[12];
  v29 = v0[11];
  v30 = v0[23];
  v8 = v0[3];
  v9 = v0[4];
  (*(v4 + 104))(v3, *MEMORY[0x277D85778], v6);
  sub_22AE76C44();
  (*(v4 + 8))(v3, v6);
  (*(v7 + 16))(v23, v8, v24);
  sub_22AE769F4();
  sub_22AE769E4();
  v10 = sub_22AE769D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[26] = sub_22AE76994();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v26, v1, v25);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v2 + 32))(v15 + v14, v26, v25);

  sub_22AE76934();

  sub_22AE015DC();
  v16 = sub_22AE76D74();
  sub_22AE769B4();

  swift_allocObject();
  swift_weakInit();

  sub_22AE76C54();
  sub_22AE76C84();
  v17 = *(MEMORY[0x277D85798] + 4);
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_22AE00CD8;
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[9];

  return MEMORY[0x2822003E8](v20, 0, 0, v21);
}

uint64_t sub_22AE00CD8()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22AE00DD4, 0, 0);
}

uint64_t sub_22AE00DD4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v32 = v0[21];
    v34 = v0[17];
    v36 = v0[14];
    v37 = v0[11];
    v39 = v0[8];
    v41 = v0[7];
    v43 = v0[6];
    v11 = objc_opt_self();
    v12 = sub_22AE76A54();
    [v11 hmfErrorWithCode:10 reason:v12];

    swift_willThrow();

    (*(v10 + 8))(v8, v9);
    (*(v7 + 8))(v4, v6);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[26];
    v31 = v0[25];
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[22];
    v38 = v0[21];
    v19 = v0[18];
    v20 = v0[19];
    v40 = v0[17];
    v42 = v0[14];
    v44 = v0[11];
    v21 = v0[7];
    v22 = v0[8];
    v23 = v0[6];
    v24 = v0[4];
    v35 = v0[2];

    (*(v20 + 8))(v18, v19);
    (*(v17 + 8))(v31, v16);
    v25 = *(v22 + 1);
    v26 = *(v24 + 48);
    *v21 = *v22;
    *(v21 + 1) = v25;
    v27 = sub_22AE768F4();
    v28 = *(*(v27 - 8) + 32);
    v28(&v21[v26], &v22[v26], v27);
    sub_22AE01688(v21, v23);
    v29 = *v23;
    v33 = *(v23 + 1);
    v28(v35, &v23[*(v24 + 48)], v27);

    v30 = v0[1];

    return v30(v29, v33);
  }
}

uint64_t sub_22AE01128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v4 = sub_22AE768B4();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - v12;
  v14 = sub_22AE769A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  (*(v15 + 16))(v19, a1, v14);
  v21 = (*(v15 + 88))(v19, v14);
  if (v21 == *MEMORY[0x277CD8DE8] || v21 == *MEMORY[0x277CD8DE0])
  {
    (*(v15 + 8))(v19, v14);
    goto LABEL_8;
  }

  if (v21 == *MEMORY[0x277CD8DD8] || v21 == *MEMORY[0x277CD8DF8])
  {
  }

  if (v21 == *MEMORY[0x277CD8DD0])
  {
    sub_22AE015DC();
    v23 = sub_22AE76D74();
    v24 = v31;
    (*(v31 + 16))(v13, v32, v9);
    v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v26 = swift_allocObject();
    (*(v24 + 32))(v26 + v25, v13, v9);
    sub_22AE76984();
  }

  if (v21 == *MEMORY[0x277CD8DF0])
  {
LABEL_8:
    sub_22AE76C74();
  }

  sub_22AE768A4();
  v27 = sub_22AE76884();
  v28 = sub_22AE76D64();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_22ADEC000, v27, v28, "HMFoundation: NWEndpoint+ResolveHostAndPort received unexpected 'NWConnection.State' value.", v29, 2u);
    MEMORY[0x231887EA0](v29, -1, -1);
  }

  (*(v30 + 8))(v8, v4);
  sub_22AE769C4();
  sub_22AE76C74();

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_22AE0155C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22AE01128(a1, v4, v5);
}

unint64_t sub_22AE015DC()
{
  result = qword_27D8B0D98;
  if (!qword_27D8B0D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B0D98);
  }

  return result;
}

uint64_t sub_22AE01628()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22AE769C4();
  }

  return result;
}

uint64_t sub_22AE01688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D68, &qword_22AE80510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22AE016F8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22AE018DC(a1, v4);
}

void NWConnection.resolveHostAndPort(continuation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - v6;
  sub_22AE015DC();
  v8 = sub_22AE76D74();
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  sub_22AE76984();
}

uint64_t sub_22AE018DC(uint64_t a1, uint64_t a2)
{
  v186 = a2;
  v199 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0DA0, &qword_22AE80540);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v139 - v9;
  v161 = sub_22AE768B4();
  v190 = *(v161 - 8);
  v11 = *(v190 + 64);
  v13 = MEMORY[0x28223BE20](v161, v12);
  v160 = v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v165 = v139 - v16;
  v159 = sub_22AE76924();
  v173 = *(v159 - 8);
  v17 = *(v173 + 64);
  v19 = MEMORY[0x28223BE20](v159, v18);
  v158 = v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v157 = v139 - v22;
  v164 = sub_22AE76914();
  v169 = *(v164 - 8);
  v23 = *(v169 + 64);
  v25 = MEMORY[0x28223BE20](v164, v24);
  v163 = v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v162 = v139 - v28;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D68, &qword_22AE80510);
  v29 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184, v30);
  v183 = (v139 - v31);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0DA8, &qword_22AE80548);
  v189 = *(v182 - 8);
  v32 = *(v189 + 64);
  MEMORY[0x28223BE20](v182, v33);
  v181 = v139 - v34;
  v201 = sub_22AE768F4();
  v179 = *(v201 - 8);
  v35 = *(v179 + 64);
  v37 = MEMORY[0x28223BE20](v201, v36);
  v149 = v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v200 = v139 - v40;
  v185 = sub_22AE768D4();
  v41 = *(v185 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x28223BE20](v185, v43);
  v195 = v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v188 = v139 - v47;
  v198 = sub_22AE76904();
  v48 = *(v198 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v198, v50);
  v52 = v139 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_22AE76954();
  v53 = *(v197 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v197, v55);
  v196 = v139 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0DB0, &qword_22AE80550);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8, v59);
  v61 = v139 - v60;
  v62 = sub_22AE76974();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62, v64);
  v66 = v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v67;
  v70 = v69;
  sub_22AE02CF4(v199, v61, &qword_27D8B0DB0, &qword_22AE80550);
  if ((*(v70 + 48))(v61, 1, v68) == 1)
  {
    sub_22AE02D5C(v61, &qword_27D8B0DB0, &qword_22AE80550);
LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
    return sub_22AE76C74();
  }

  v150 = v10;
  v142 = v7;
  v147 = v70;
  v71 = *(v70 + 32);
  v148 = v68;
  v71(v66, v61, v68);
  result = sub_22AE76964();
  v199 = result;
  v73 = v188;
  v194 = *(result + 16);
  if (!v194)
  {
LABEL_38:

    (*(v147 + 8))(v66, v148);
    goto LABEL_39;
  }

  v74 = 0;
  v193 = v199 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v191 = (v48 + 88);
  v192 = v53 + 16;
  v151 = (v190 + 8);
  v166 = (v48 + 8);
  v187 = (v48 + 96);
  LODWORD(v190) = *MEMORY[0x277CD8B08];
  v141 = (v179 + 48);
  v180 = (v179 + 32);
  v178 = *MEMORY[0x277CD8B00];
  v172 = (v179 + 16);
  v171 = (v189 + 8);
  v168 = *MEMORY[0x277CD8AF0];
  v179 += 8;
  v177 = (v41 + 32);
  v176 = (v41 + 16);
  v175 = (v41 + 88);
  v174 = (v41 + 8);
  v156 = *MEMORY[0x277CD8AD0];
  v170 = (v41 + 96);
  v146 = (v173 + 32);
  v145 = *MEMORY[0x277CD8AF8];
  v144 = (v173 + 16);
  v143 = (v173 + 8);
  LODWORD(v173) = *MEMORY[0x277CD8AE8];
  v155 = (v169 + 32);
  v154 = (v169 + 16);
  v167 = *MEMORY[0x277CD8AD8];
  v153 = (v169 + 8);
  v152 = *MEMORY[0x277CD8AE0];
  v189 = v53 + 8;
  v169 = v53;
  while (v74 < *(v199 + 16))
  {
    v79 = v66;
    v80 = v196;
    v81 = v197;
    (*(v53 + 16))(v196, v193 + *(v53 + 72) * v74, v197);
    sub_22AE76944();
    v82 = v198;
    (*(v53 + 8))(v80, v81);
    v83 = (*v191)(v52, v82);
    if (v83 == v190)
    {
      (*v187)(v52, v82);
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0DC8, &qword_22AE80568) + 48);
      v85 = v185;
      (*v177)(v73, v52, v185);
      (*v180)(v200, &v52[v84], v201);
      v86 = v195;
      (*v176)(v195, v73, v85);
      v87 = (*v175)(v86, v85);
      if (v87 == v173)
      {
        v88 = v195;
        (*v170)(v195, v85);
        v89 = *v88;
        v90 = v88[1];
        v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0DD0, &unk_22AE80570) + 48);
        v92 = *(v184 + 48);
        v93 = v85;
        v94 = v183;
        *v183 = v89;
        v94[1] = v90;
        (*v172)(v94 + v92, v200, v201);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
        v95 = v181;
        sub_22AE76C64();
        (*v171)(v95, v182);
        (*v179)(v200, v201);
        v96 = v93;
        v53 = v169;
        (*v174)(v188, v96);
        v78 = v88 + v91;
        v73 = v188;
LABEL_6:
        result = sub_22AE02D5C(v78, &qword_27D8B0DC0, &qword_22AE80560);
      }

      else
      {
        if (v87 != v167)
        {
          if (v87 == v152)
          {
            v107 = v195;
            (*v170)(v195, v85);
            v108 = v157;
            v109 = v159;
            (*v146)(v157, v107, v159);
            (*v144)(v158, v108, v109);
            v110 = sub_22AE76A74();
            v111 = v183;
            v112 = *(v184 + 48);
            *v183 = v110;
            v111[1] = v113;
            v114 = v200;
            (*v172)(v111 + v112, v200, v201);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
            v115 = v85;
            v116 = v181;
            sub_22AE76C64();
            (*v171)(v116, v182);
            v117 = v114;
            v53 = v169;
            (*v143)(v108, v109);
            (*v179)(v117, v201);
            v73 = v188;
            result = (*v174)(v188, v115);
          }

          else
          {
            sub_22AE768A4();
            v125 = sub_22AE76884();
            v126 = sub_22AE76D64();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              *v127 = 0;
              _os_log_impl(&dword_22ADEC000, v125, v126, "HMFoundation: NWConnection+ResolveHostAndPort received unexpected 'NWEndpoint.hostPort(host:port:)' arg for 'host'.", v127, 2u);
              MEMORY[0x231887EA0](v127, -1, -1);
            }

            (*v151)(v165, v161);
            (*v179)(v200, v201);
            v128 = *v174;
            v73 = v188;
            (*v174)(v188, v85);
            result = (v128)(v195, v85);
          }

          v66 = v79;
          goto LABEL_8;
        }

        v97 = v195;
        (*v170)(v195, v85);
        v98 = v162;
        v99 = v164;
        (*v155)(v162, v97, v164);
        (*v154)(v163, v98, v99);
        v100 = sub_22AE76A74();
        v101 = v183;
        v102 = *(v184 + 48);
        *v183 = v100;
        v101[1] = v103;
        (*v172)(v101 + v102, v200, v201);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
        v104 = v85;
        v105 = v181;
        sub_22AE76C64();
        (*v171)(v105, v182);
        v106 = v98;
        v73 = v188;
        (*v153)(v106, v99);
        (*v179)(v200, v201);
        result = (*v174)(v73, v104);
      }

      v66 = v79;
      goto LABEL_8;
    }

    if (v83 == v178)
    {
      (*v187)(v52, v82);
      v75 = *(v52 + 1);

      v76 = *(v52 + 3);

      v77 = *(v52 + 5);

      v78 = &v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0DB8, &qword_22AE80558) + 80)];
      goto LABEL_6;
    }

    v66 = v79;
    if (v83 == v168 || v83 == v156)
    {
      result = (*v166)(v52, v82);
      goto LABEL_8;
    }

    if (v83 != v145)
    {
      sub_22AE768A4();
      v129 = sub_22AE76884();
      v130 = sub_22AE76D64();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_22ADEC000, v129, v130, "HMFoundation: NWConnection+ResolveHostAndPort encountered unexpected 'NWEndpoint' type.", v131, 2u);
        MEMORY[0x231887EA0](v131, -1, -1);
      }

      (*v151)(v160, v161);
      result = (*v166)(v52, v198);
      goto LABEL_8;
    }

    (*v187)(v52, v82);
    v118 = *v52;
    nw_endpoint_get_hostname(*v52);
    v119 = sub_22AE76AA4();
    v121 = v120;
    nw_endpoint_get_port(v118);
    sub_22AE768E4();
    v122 = HIBYTE(v121) & 0xF;
    v140 = v119;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v122 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (!v122)
    {

      swift_unknownObjectRelease();
      v132 = v150;
LABEL_37:
      result = sub_22AE02D5C(v132, &qword_27D8B0DA0, &qword_22AE80540);
      v73 = v188;
      goto LABEL_8;
    }

    v139[1] = v118;
    v123 = v150;
    v124 = v142;
    sub_22AE02CF4(v150, v142, &qword_27D8B0DA0, &qword_22AE80540);
    if ((*v141)(v124, 1, v201) != 1)
    {
      v133 = v149;
      v134 = v201;
      (*v180)(v149, v124, v201);
      v135 = v183;
      v136 = *(v184 + 48);
      *v183 = v140;
      v135[1] = v121;
      (*v172)(v135 + v136, v133, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D88, &qword_22AE80530);
      v137 = v181;
      sub_22AE76C64();
      swift_unknownObjectRelease();
      v138 = v137;
      v66 = v79;
      (*v171)(v138, v182);
      (*v179)(v133, v201);
      v132 = v123;
      goto LABEL_37;
    }

    swift_unknownObjectRelease();
    sub_22AE02D5C(v123, &qword_27D8B0DA0, &qword_22AE80540);
    result = sub_22AE02D5C(v124, &qword_27D8B0DA0, &qword_22AE80540);
    v73 = v188;
LABEL_8:
    if (v194 == ++v74)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22AE02CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22AE02D5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HierarchicalStateMachine.__allocating_init(rootState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  HierarchicalStateMachine.init(rootState:)(a1);
  return v5;
}

char *HierarchicalStateMachine.init(rootState:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  swift_defaultActor_initialize();
  v5 = *(*v1 + 152);
  v6 = *(v3 + 88);
  *&v1[v5] = sub_22AE76A04();
  (*(*(*(v3 + 80) - 8) + 56))(&v1[*(*v1 + 160)], 1, 2, *(v3 + 80));
  type metadata accessor for AsyncSerialQueue();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  *(v7 + 120) = *sub_22AE76864();
  *(v7 + 128) = sub_22AE08EA0;
  *(v7 + 136) = 0;
  *(v1 + 14) = v7;
  v8 = *(*v1 + 144);
  v11 = *(v4 + 96);
  v12 = *(v4 + 112);
  v9 = type metadata accessor for HierarchicalStateMachine.RootState();
  (*(*(v9 - 8) + 32))(&v1[v8], a1, v9);

  return v1;
}

uint64_t HierarchicalStateMachine.__allocating_init(initialValue:rootState:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  HierarchicalStateMachine.init(initialValue:rootState:)(a1, a2);
  return v7;
}

char *HierarchicalStateMachine.init(initialValue:rootState:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v21 = a1;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v26 = *(*v2 + 96);
  v25 = v3[13];
  v24 = v3[14];
  v23 = v3[15];
  v28 = v4;
  v29 = v5;
  v30 = v26;
  v31 = v25;
  v32 = v24;
  v33 = v23;
  v22 = type metadata accessor for HierarchicalStateMachine.MetaState();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22, v8);
  v10 = &v20 - v9;
  swift_defaultActor_initialize();
  v11 = *(*v2 + 152);
  *&v2[v11] = sub_22AE76A04();
  v12 = *(v4 - 8);
  v13 = *(v12 + 56);
  v13(&v2[*(*v2 + 160)], 1, 2, v4);
  type metadata accessor for AsyncSerialQueue();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  *(v14 + 120) = *sub_22AE76864();
  *(v14 + 128) = sub_22AE08EA0;
  *(v14 + 136) = 0;
  *(v2 + 14) = v14;
  (*(v12 + 32))(v10, v21, v4);
  v13(v10, 0, 2, v4);
  v15 = *(*v2 + 160);
  swift_beginAccess();
  v16 = *(v6 + 40);

  v16(&v2[v15], v10, v22);
  swift_endAccess();
  v17 = *(*v2 + 144);
  v28 = v4;
  v29 = v5;
  v30 = v26;
  v31 = v25;
  v32 = v24;
  v33 = v23;
  v18 = type metadata accessor for HierarchicalStateMachine.RootState();
  (*(*(v18 - 8) + 32))(&v2[v17], v27, v18);
  return v2;
}

uint64_t HierarchicalStateMachine.currentValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v18[0] = *(*v1 + 80);
  v18[1] = v18[0];
  v6 = *(v4 + 112);
  v18[2] = v5;
  v18[3] = v6;
  v7 = type metadata accessor for HierarchicalStateMachine.MetaState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v18 - v11;
  v13 = *(v3 + 160);
  swift_beginAccess();
  (*(v8 + 16))(v12, v1 + v13, v7);
  v14 = *&v18[0];
  v15 = *(*&v18[0] - 8);
  if ((*(v15 + 48))(v12, 2, *&v18[0]))
  {
    v16 = 1;
  }

  else
  {
    (*(v15 + 32))(a1, v12, v14);
    v16 = 0;
  }

  return (*(v15 + 56))(a1, v16, 1, v14);
}

uint64_t HierarchicalStateMachine.start(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22AE03510, v1, 0);
}

uint64_t sub_22AE03510()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22AE035F0;

  return (sub_22AE08FD0)();
}

void sub_22AE035F0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_22AE0B840, v6, 0);
  }
}

uint64_t sub_22AE0372C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 120) = a3;
  v5 = *a2;
  v6 = *a2;
  v7 = *(*a2 + 80);
  *(v3 + 128) = v7;
  v8 = *(v5 + 120);
  v9 = *(v6 + 88);
  v10 = *(v6 + 104);
  *(v3 + 16) = v7;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  *(v3 + 56) = v8;
  v11 = type metadata accessor for HierarchicalStateMachine.MetaState();
  *(v3 + 136) = v11;
  v12 = *(v11 - 8);
  *(v3 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE03870, a2, 0);
}

uint64_t sub_22AE03870()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v6 = *(*v5 + 160);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v2);
  v7 = *(v4 - 8);
  v8 = (*(v7 + 48))(v1, 2, v4);
  if (v8)
  {
    if (v8 == 1)
    {
      v10 = v0[18];
      v9 = v0[19];
      v12 = v0[16];
      v11 = v0[17];
      v14 = v0[14];
      v13 = v0[15];
      (*(v7 + 16))(v9, v13, v12);
      (*(v7 + 56))(v9, 0, 2, v12);
      swift_beginAccess();
      (*(v10 + 40))(v5 + v6, v9, v11);
      swift_endAccess();
      v15 = swift_task_alloc();
      v0[21] = v15;
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      v16 = swift_task_alloc();
      v0[22] = v16;
      *v16 = v0;
      v16[1] = sub_22AE03AF0;
      v17 = v0[14];

      return sub_22AE03FB0(v16, &unk_22AE80750, v15);
    }
  }

  else
  {
    (*(v0[18] + 8))(v0[20], v0[17]);
  }

  v20 = v0[19];
  v19 = v0[20];

  v21 = v0[1];

  return v21();
}

uint64_t sub_22AE03AF0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE03C1C, v3, 0);
}

uint64_t sub_22AE03C1C()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22AE03C88(int64x2_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 136) = a3;
  v7 = *a4;
  v8 = *a4;
  v9 = *(*a4 + 80);
  *(v5 + 160) = v9;
  v10 = *(v7 + 120);
  a1.i64[0] = v9;
  v18 = *(v8 + 104);
  v19 = *(v8 + 88);
  *(v5 + 32) = vextq_s8(v19, v18, 8uLL);
  *(v5 + 16) = vzip1q_s64(a1, v19);
  *(v5 + 48) = v18.i64[1];
  *(v5 + 56) = v10;
  v11 = type metadata accessor for HierarchicalStateMachine.StateTransition();
  *(v5 + 168) = v11;
  v12 = *(v11 - 8);
  *(v5 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 64) = v9;
  *(v5 + 88) = v18;
  *(v5 + 72) = v19;
  *(v5 + 104) = v10;
  v14 = type metadata accessor for HierarchicalStateMachine.RootState();
  *(v5 + 192) = v14;
  v15 = *(v14 - 8);
  *(v5 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE03E54, a4, 0);
}

uint64_t sub_22AE03E54()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = *(*v8 + 144);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8 + v9, v3);
  (*(*(v6 - 8) + 16))(v4, v7, v6);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_22AE0B834;
  v11 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];

  return HierarchicalStateMachine.RootState.handleStateTransition(_:currentState:delegate:isolation:)(v13, v14, v16, v15, v12);
}

uint64_t sub_22AE03FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = *v3;
  v4[22] = *v3;
  v6 = *(v5 + 96);
  v4[23] = v6;
  v7 = *(v6 - 8);
  v4[24] = v7;
  v4[25] = *(v7 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE040BC, v3, 0);
}

uint64_t sub_22AE040BC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v0[28] = v2[10];
  v0[29] = v2[11];
  v0[30] = v2[13];
  v0[31] = v2[14];
  v0[32] = v2[15];
  v0[14] = sub_22AE0C270();
  v0[15] = v4;
  v10 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_22AE041F4;
  v7 = v0[20];
  v8 = v0[18];

  return (v10)(v8, v0 + 14);
}

uint64_t sub_22AE041F4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE04304, v2, 0);
}

uint64_t sub_22AE04304()
{
  *(v0 + 128) = *(v0 + 112);
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(**(v0 + 168) + 152);
  swift_beginAccess();
  sub_22AE76BB4();
  swift_getWitnessTable();
  sub_22AE76B84();
  swift_endAccess();
  *(v0 + 272) = *(v0 + 120);
  if (sub_22AE76BA4())
  {
    v4 = 0;
    *(v0 + 280) = *(**(v0 + 168) + 144);
    while (1)
    {
      v5 = *(v0 + 272);
      v6 = *(v0 + 184);
      v7 = sub_22AE76B74();
      sub_22AE76B44();
      if (v7)
      {
        result = (*(*(v0 + 192) + 16))(*(v0 + 216), *(v0 + 272) + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)) + *(*(v0 + 192) + 72) * v4, *(v0 + 184));
      }

      else
      {
        v17 = *(v0 + 200);
        v18 = *(v0 + 184);
        result = sub_22AE76DE4();
        if (v17 != 8)
        {
          goto LABEL_18;
        }

        v19 = *(v0 + 216);
        v20 = *(v0 + 184);
        v21 = *(v0 + 192);
        *(v0 + 136) = result;
        (*(v21 + 16))(v19, v0 + 136, v20);
        result = swift_unknownObjectRelease();
      }

      *(v0 + 288) = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = *(v0 + 256);
      v10 = *(v0 + 184);
      v11 = *(v0 + 168) + *(v0 + 280);
      v29 = *(v0 + 224);
      v30 = *(v0 + 240);
      (*(*(v0 + 192) + 32))(*(v0 + 208), *(v0 + 216), v10);
      swift_beginAccess();
      *(v0 + 16) = v29;
      *(v0 + 32) = v10;
      *(v0 + 40) = v30;
      *(v0 + 56) = v9;
      v12 = *(type metadata accessor for HierarchicalStateMachine.RootState() + 68);
      v13 = *(v11 + v12);
      *(v0 + 296) = v13;
      if (v13)
      {
        break;
      }

      (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
      swift_endAccess();
      v14 = *(v0 + 288);
      v15 = *(v0 + 272);
      v16 = *(v0 + 184);
      if (v14 == sub_22AE76BA4())
      {
        goto LABEL_11;
      }

      v4 = *(v0 + 288);
    }

    *(v0 + 304) = *(v11 + v12 + 8);
    swift_endAccess();

    v31 = (v13 + *v13);
    v26 = v13[1];
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    *v27 = v0;
    v27[1] = sub_22AE046CC;
    v28 = *(v0 + 208);

    return v31(v28);
  }

  else
  {
LABEL_11:
    v22 = *(v0 + 272);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22AE046CC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 168);
  v6 = *v0;

  sub_22ADF73A0(v3);

  return MEMORY[0x2822009F8](sub_22AE04818, v4, 0);
}

uint64_t sub_22AE04818()
{
  (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  while (1)
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 272);
    v3 = *(v0 + 184);
    if (v1 == sub_22AE76BA4())
    {
      break;
    }

    v4 = *(v0 + 288);
    v5 = *(v0 + 272);
    v6 = *(v0 + 184);
    v7 = sub_22AE76B74();
    sub_22AE76B44();
    if (v7)
    {
      result = (*(*(v0 + 192) + 16))(*(v0 + 216), *(v0 + 272) + ((*(*(v0 + 192) + 80) + 32) & ~*(*(v0 + 192) + 80)) + *(*(v0 + 192) + 72) * v4, *(v0 + 184));
    }

    else
    {
      v14 = *(v0 + 200);
      v15 = *(v0 + 184);
      result = sub_22AE76DE4();
      if (v14 != 8)
      {
        goto LABEL_17;
      }

      v16 = *(v0 + 216);
      v17 = *(v0 + 184);
      v18 = *(v0 + 192);
      *(v0 + 136) = result;
      (*(v18 + 16))(v16, v0 + 136, v17);
      result = swift_unknownObjectRelease();
    }

    *(v0 + 288) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v9 = *(v0 + 256);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168) + *(v0 + 280);
    v26 = *(v0 + 224);
    v27 = *(v0 + 240);
    (*(*(v0 + 192) + 32))(*(v0 + 208), *(v0 + 216), v10);
    swift_beginAccess();
    *(v0 + 16) = v26;
    *(v0 + 32) = v10;
    *(v0 + 40) = v27;
    *(v0 + 56) = v9;
    v12 = *(type metadata accessor for HierarchicalStateMachine.RootState() + 68);
    v13 = *(v11 + v12);
    *(v0 + 296) = v13;
    if (v13)
    {
      *(v0 + 304) = *(v11 + v12 + 8);
      swift_endAccess();

      v28 = (v13 + *v13);
      v23 = v13[1];
      v24 = swift_task_alloc();
      *(v0 + 312) = v24;
      *v24 = v0;
      v24[1] = sub_22AE046CC;
      v25 = *(v0 + 208);

      return v28(v25);
    }

    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    swift_endAccess();
  }

  v19 = *(v0 + 272);
  v20 = *(v0 + 208);
  v21 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22AE04B38()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22AE04BF8;
  v3 = *(v0 + 16);

  return sub_22AE08FD0(sub_22AE08FD0, &unk_22AE805B0, v3);
}

void sub_22AE04BF8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_22AE04D2C, v5, 0);
  }
}

uint64_t sub_22AE04D40(uint64_t a1, uint64_t *a2)
{
  *(v2 + 136) = a2;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 80);
  *(v2 + 144) = v6;
  v7 = *(v6 - 8);
  *(v2 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v9 = *(v4 + 120);
  v10 = *(v5 + 88);
  v11 = *(v5 + 104);
  *(v2 + 16) = v6;
  *(v2 + 24) = v10;
  *(v2 + 40) = v11;
  *(v2 + 56) = v9;
  v12 = type metadata accessor for HierarchicalStateMachine.MetaState();
  *(v2 + 168) = v12;
  v13 = *(v12 - 8);
  *(v2 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE04EE0, a2, 0);
}

uint64_t sub_22AE04EE0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v7 = *(*v6 + 160);
  swift_beginAccess();
  (*(v3 + 16))(v1, v6 + v7, v2);
  v8 = (*(v5 + 48))(v1, 2, v4);
  if (v8)
  {
    if (v8 == 1)
    {
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[21];
      (*(v0[19] + 56))(v9, 2, 2, v0[18]);
      swift_beginAccess();
      (*(v10 + 40))(v6 + v7, v9, v11);
      swift_endAccess();
    }

    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[20];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[23];
    v18 = v0[21];
    v19 = v0[22];
    v21 = v0[19];
    v20 = v0[20];
    v23 = v0[17];
    v22 = v0[18];
    (*(v21 + 32))(v20, v0[24], v22);
    (*(v21 + 56))(v17, 2, 2, v22);
    swift_beginAccess();
    (*(v19 + 40))(v6 + v7, v17, v18);
    swift_endAccess();
    v24 = swift_task_alloc();
    v0[25] = v24;
    *(v24 + 16) = v23;
    *(v24 + 24) = v20;
    v25 = swift_task_alloc();
    v0[26] = v25;
    *v25 = v0;
    v25[1] = sub_22AE05188;
    v26 = v0[17];

    return sub_22AE03FB0(v25, &unk_22AE80740, v24);
  }
}

uint64_t sub_22AE05188()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE052B4, v3, 0);
}

uint64_t sub_22AE052B4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22AE05344(int64x2_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 136) = a3;
  v7 = *a4;
  v8 = *a4;
  v9 = *(*a4 + 80);
  *(v5 + 160) = v9;
  v10 = *(v7 + 120);
  a1.i64[0] = v9;
  v18 = *(v8 + 104);
  v19 = *(v8 + 88);
  *(v5 + 32) = vextq_s8(v19, v18, 8uLL);
  *(v5 + 16) = vzip1q_s64(a1, v19);
  *(v5 + 48) = v18.i64[1];
  *(v5 + 56) = v10;
  v11 = type metadata accessor for HierarchicalStateMachine.StateTransition();
  *(v5 + 168) = v11;
  v12 = *(v11 - 8);
  *(v5 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 64) = v9;
  *(v5 + 88) = v18;
  *(v5 + 72) = v19;
  *(v5 + 104) = v10;
  v14 = type metadata accessor for HierarchicalStateMachine.RootState();
  *(v5 + 192) = v14;
  v15 = *(v14 - 8);
  *(v5 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE05510, a4, 0);
}

uint64_t sub_22AE05510()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = *(*v8 + 144);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8 + v9, v3);
  (*(*(v6 - 8) + 16))(v4, v7, v6);
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_22AE0566C;
  v11 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[17];

  return HierarchicalStateMachine.RootState.handleStateTransition(_:currentState:delegate:isolation:)(v13, v14, v16, v15, v12);
}

uint64_t sub_22AE0566C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 184);
  v6 = *(*v0 + 176);
  v7 = *(*v0 + 168);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t HierarchicalStateMachine.enqueue(event:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  v2[5] = *v1;
  v4 = *(v3 + 88);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v2[8] = *(v5 + 64);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE05924, v1, 0);
}

uint64_t sub_22AE05924()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = *(v5 + 112);
  v0[10] = v8;
  (*(v4 + 16))(v1, v7, v3);
  v9 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[11] = v10;
  *(v10 + 16) = *(v6 + 80);
  *(v10 + 24) = v3;
  *(v10 + 32) = *(v6 + 96);
  *(v10 + 40) = *(v6 + 104);
  *(v10 + 56) = *(v6 + 120);
  *(v10 + 64) = v5;
  (*(v4 + 32))(v10 + v9, v1, v3);

  return MEMORY[0x2822009F8](sub_22AE05A3C, v8, 0);
}

uint64_t sub_22AE05A3C()
{
  v1 = v0[10];
  v2 = v0[11];
  v0[2] = 0;
  sub_22AE09960();
  v3 = swift_task_alloc();
  v0[12] = v3;
  v3[2] = v0 + 2;
  v3[3] = v1;
  v3[4] = &unk_22AE805C8;
  v3[5] = v2;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_22AE05B60;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22AE05B60()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE05C8C, v3, 0);
}

uint64_t sub_22AE05C8C()
{
  if (v0[2])
  {
    v1 = v0[11];
    v2 = v0[9];

    v3 = v0[1];

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22AE05D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22AE0B83C;

  return sub_22AE05DAC(a3);
}

uint64_t sub_22AE05DAC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  *(v2 + 160) = v5;
  v6 = *(v5 - 8);
  *(v2 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v8 = *(v3 + 80);
  *(v2 + 184) = v8;
  v9 = *(v4 + 96);
  v10 = *(v4 + 112);
  *(v2 + 16) = v8;
  *(v2 + 24) = v5;
  *(v2 + 32) = v9;
  *(v2 + 48) = v10;
  v11 = type metadata accessor for HierarchicalStateMachine.MetaState();
  *(v2 + 192) = v11;
  v12 = *(v11 - 8);
  *(v2 + 200) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE05F38, v1, 0);
}

uint64_t sub_22AE05F38()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = *(*v2 + 152);
  swift_beginAccess();
  v0[17] = *(v2 + v3);
  sub_22AE76BB4();
  swift_getWitnessTable();
  result = sub_22AE76D24();
  if (result)
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[19];
    v10 = *(*v9 + 160);
    swift_beginAccess();
    (*(v6 + 16))(v5, v9 + v10, v7);
    v11 = (*(*(v8 - 8) + 48))(v5, 2, v8);
    v12 = v0[22];
    if (v11)
    {
      v13 = v0[26];

      v14 = v0[1];

      return v14();
    }

    else
    {
      (*(v0[21] + 16))(v0[22], v0[18], v0[20]);
      swift_beginAccess();
      sub_22AE76B94();
      swift_endAccess();
      v15 = swift_task_alloc();
      v0[27] = v15;
      *v15 = v0;
      v15[1] = sub_22AE06184;
      v16 = v0[19];

      return sub_22AE066C8();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22AE06184()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE06294, v2, 0);
}

uint64_t sub_22AE06294()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[26];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t HierarchicalStateMachine.enqueueAndWait(event:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22AE06338, v1, 0);
}

uint64_t sub_22AE06338()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22AE035F0;

  return (sub_22AE08FD0)();
}

uint64_t sub_22AE06418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22ADEE2D4;

  return sub_22AE05DAC(a3);
}

uint64_t sub_22AE064D4()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22AE06594;

  return sub_22AE08FD0(sub_22AE08FD0, &unk_22AE805F0, 0);
}

void sub_22AE06594()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 16);

    MEMORY[0x2822009F8](sub_22AE0B840, v5, 0);
  }
}

uint64_t sub_22AE066C8()
{
  v1[9] = v0;
  v2 = *(*v0 + 88);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE06794, v0, 0);
}

uint64_t sub_22AE06794()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = *(*v2 + 152);
  v0[13] = v3;
  swift_beginAccess();
  v0[8] = *(v2 + v3);
  sub_22AE76BB4();
  swift_getWitnessTable();
  if (sub_22AE76D24())
  {
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[9];
    swift_beginAccess();
    swift_getWitnessTable();
    sub_22AE76D44();
    swift_endAccess();
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_22AE0693C;
    v12 = v0[12];
    v13 = v0[9];

    return sub_22AE06BE4(v12, v11);
  }
}

uint64_t sub_22AE0693C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE06A4C, v2, 0);
}

uint64_t sub_22AE06A4C()
{
  v1 = v0[13];
  v2 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v0[8] = *(v2 + v1);
  sub_22AE76BB4();
  swift_getWitnessTable();
  if (sub_22AE76D24())
  {
    v3 = v0[12];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[9];
    swift_beginAccess();
    swift_getWitnessTable();
    sub_22AE76D44();
    swift_endAccess();
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_22AE0693C;
    v11 = v0[12];
    v12 = v0[9];

    return sub_22AE06BE4(v11, v10);
  }
}

uint64_t sub_22AE06BE4(uint64_t a1, int64x2_t a2)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 152) = v6;
  v7 = *(v4 + 120);
  a2.i64[0] = v6;
  v17 = *(v5 + 104);
  v18 = *(v5 + 88);
  *(v3 + 32) = vextq_s8(v18, v17, 8uLL);
  *(v3 + 16) = vzip1q_s64(a2, v18);
  *(v3 + 48) = v17.i64[1];
  *(v3 + 56) = v7;
  v8 = type metadata accessor for HierarchicalStateMachine.EventReaction();
  *(v3 + 160) = v8;
  v9 = *(v8 - 8);
  *(v3 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 64) = v6;
  *(v3 + 88) = v17;
  *(v3 + 72) = v18;
  *(v3 + 104) = v7;
  v11 = type metadata accessor for HierarchicalStateMachine.MetaState();
  *(v3 + 192) = v11;
  v12 = *(v11 - 8);
  *(v3 + 200) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v14 = *(v6 - 8);
  *(v3 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE06E18, v2, 0);
}

uint64_t sub_22AE06E18()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(*v6 + 160);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 2, v5))
  {
    v8 = *(v0 + 184);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 176);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 232);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = *(v16 + 32);
    v18 = *(v0 + 152);
    *(v0 + 240) = v17;
    *(v0 + 248) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24 = *(v0 + 136);
    v17(v14, v15, v18);
    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    v19[1] = vextq_s8(v24, v24, 8uLL);
    v19[2].i64[0] = v14;
    v20 = swift_task_alloc();
    *(v0 + 264) = v20;
    *v20 = v0;
    v20[1] = sub_22AE07030;
    v21 = *(v0 + 184);
    v22 = *(v0 + 160);
    v23 = *(v0 + 144);

    return sub_22AE03FB0(v21, &unk_22AE806B8, v19);
  }
}

uint64_t sub_22AE07030()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0715C, v3, 0);
}

uint64_t sub_22AE0715C()
{
  v1 = v0[22];
  v2 = v0[19];
  (*(v0[21] + 16))(v1, v0[23], v0[20]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v1, 2, TupleTypeMetadata2))
  {
    (*(v0[21] + 8))(v0[23], v0[20]);
    v4 = v0[28];
    v5 = v0[26];
    v7 = v0[22];
    v6 = v0[23];
    (*(v0[27] + 8))(v0[29], v0[19]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v13 = v0[19];
    v14 = (v0[22] + *(TupleTypeMetadata2 + 48));
    v16 = *v14;
    v15 = v14[1];
    v0[34] = v15;
    v11(v12);

    v17 = swift_task_alloc();
    v0[35] = v17;
    *v17 = v0;
    v17[1] = sub_22AE07364;
    v18 = v0[28];
    v19 = v0[29];
    v20 = v0[17];
    v21 = v0[18];

    return sub_22AE078E4(v19, v18, v20, v16, v15);
  }
}

uint64_t sub_22AE07364()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE07490, v3, 0);
}

uint64_t sub_22AE07490()
{
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  (*(v0[21] + 8))(v0[23], v0[20]);
  v5 = v0[28];
  v6 = v0[26];
  v8 = v0[22];
  v7 = v0[23];
  (*(v0[27] + 8))(v0[29], v0[19]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22AE07584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 96) = a2;
  *(v5 + 104) = a3;
  *(v5 + 88) = a1;
  v7 = *(*a3 + 96);
  v8 = *(*a3 + 112);
  *(v5 + 16) = *(*a3 + 80);
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  v9 = type metadata accessor for HierarchicalStateMachine.RootState();
  *(v5 + 128) = v9;
  v10 = *(v9 - 8);
  *(v5 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE07688, a3, 0);
}

uint64_t sub_22AE07688()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v5 = *(*v4 + 144);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_22AE0778C;
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[11];
  v13 = v0[12];

  return HierarchicalStateMachine.RootState.handleEvent(_:currentState:delegate:isolation:)(v12, v10, v8, v13, v11, v9);
}

uint64_t sub_22AE0778C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22AE078E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = v5;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  *(v6 + 184) = v8;
  v9 = v7[11];
  *(v6 + 192) = v9;
  v10 = v7[12];
  *(v6 + 200) = v10;
  v11 = v7[13];
  *(v6 + 208) = v11;
  v12 = v7[14];
  *(v6 + 216) = v12;
  v13 = v7[15];
  *(v6 + 224) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  *(v6 + 32) = v15;
  *(v6 + 16) = v14;
  *(v6 + 48) = v12;
  *(v6 + 56) = v13;
  v16 = type metadata accessor for HierarchicalStateMachine.MetaState();
  *(v6 + 232) = v16;
  v17 = *(v16 - 8);
  *(v6 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 64) = v8;
  *&v19 = v9;
  *(&v19 + 1) = v10;
  *&v20 = v11;
  *(&v20 + 1) = v12;
  *(v6 + 88) = v20;
  *(v6 + 72) = v19;
  *(v6 + 104) = v13;
  v21 = type metadata accessor for HierarchicalStateMachine.StateTransition();
  *(v6 + 256) = v21;
  v22 = *(v21 - 8);
  *(v6 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE07B04, v5, 0);
}

uint64_t sub_22AE07B04()
{
  v1 = v0[35];
  v2 = v0[23];
  v3 = v0[24];
  v18 = v0[32];
  v19 = v0[22];
  v4 = v0[18];
  v17 = v0[19];
  v5 = v0[17];
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v0[36] = TupleTypeMetadata3;
  v7 = *(TupleTypeMetadata3 + 48);
  v8 = *(v2 - 8);
  v9 = *(TupleTypeMetadata3 + 64);
  v0[37] = v8;
  v10 = *(v8 + 16);
  v0[38] = v10;
  v0[39] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v5, v2);
  v11 = *(v3 - 8);
  v12 = *(v11 + 16);
  v0[40] = v12;
  v0[41] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v1 + v7, v17, v3);
  v10(v1 + v9, v4, v2);
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  v0[42] = v13;
  v13[2] = v19;
  v13[3] = v1;
  v13[4] = v5;
  v13[5] = v4;
  v14 = swift_task_alloc();
  v0[43] = v14;
  *v14 = v0;
  v14[1] = sub_22AE07CF8;
  v15 = v0[22];

  return sub_22AE03FB0(v14, &unk_22AE806E0, v13);
}

uint64_t sub_22AE07CF8()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE07E24, v3, 0);
}

uint64_t sub_22AE07E24()
{
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  v2 = *(v0 + 200);
  v3 = *(v0 + 216);
  v4 = *(v0 + 160);
  v1[1] = *(v0 + 184);
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_22AE07F00;
  v6 = *(v0 + 176);

  return sub_22AE03FB0(v5, &unk_22AE806F0, v1);
}

uint64_t sub_22AE07F00()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0802C, v3, 0);
}

uint64_t sub_22AE0802C()
{
  v22 = v0[40];
  v23 = v0[41];
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[30];
  v7 = v0[23];
  v21 = v0[24];
  v8 = v0[22];
  v9 = v0[18];
  v19 = v0[36];
  v20 = v0[19];
  v17 = v0[29];
  v18 = v0[17];
  v2(v5, v9, v7);
  (*(v3 + 56))(v5, 0, 2, v7);
  v10 = *(*v8 + 160);
  swift_beginAccess();
  (*(v6 + 40))(v8 + v10, v5, v17);
  swift_endAccess();
  v11 = *(v19 + 48);
  v12 = *(v19 + 64);
  v2(v4, v18, v7);
  v22(v4 + v11, v20, v21);
  v2(v4 + v12, v9, v7);
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  v0[46] = v13;
  v13[2] = v8;
  v13[3] = v4;
  v13[4] = v9;
  v13[5] = v18;
  v14 = swift_task_alloc();
  v0[47] = v14;
  *v14 = v0;
  v14[1] = sub_22AE0821C;
  v15 = v0[22];

  return sub_22AE03FB0(v14, &unk_22AE80700, v13);
}

uint64_t sub_22AE0821C()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE08348, v3, 0);
}

uint64_t sub_22AE08348()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[31];
  v4 = *(v0[33] + 8);
  v4(v0[34], v2);
  v4(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22AE08400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 88) = a2;
  v8 = *a3;
  v9 = *a3;
  v10 = *(*a3 + 104);
  *(v6 + 128) = v10;
  v11 = *(v8 + 80);
  *(v6 + 136) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v6 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v15 = *(v9 + 88);
  v16 = *(v9 + 112);
  *(v6 + 16) = v11;
  *(v6 + 24) = v15;
  *(v6 + 40) = v10;
  *(v6 + 48) = v16;
  v17 = type metadata accessor for HierarchicalStateMachine.RootState();
  *(v6 + 168) = v17;
  v18 = *(v17 - 8);
  *(v6 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE085C0, a3, 0);
}

uint64_t sub_22AE085C0()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = *(*v8 + 144);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8 + v9, v3);
  (*(v6 + 24))(v5, v6);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_22AE0B838;
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[11];
  v17 = v0[12];

  return HierarchicalStateMachine.RootState.handleStateTransition(_:stateValue:otherStateLabel:delegate:isolation:)(v15, v14, v12, v16, v17, v13);
}

uint64_t sub_22AE086FC(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22ADEE1E0;

  return v8(a2);
}

uint64_t sub_22AE087F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 88) = a2;
  v8 = *a3;
  v9 = *a3;
  v10 = *(*a3 + 104);
  *(v6 + 128) = v10;
  v11 = *(v8 + 80);
  *(v6 + 136) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v6 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v15 = *(v9 + 88);
  v16 = *(v9 + 112);
  *(v6 + 16) = v11;
  *(v6 + 24) = v15;
  *(v6 + 40) = v10;
  *(v6 + 48) = v16;
  v17 = type metadata accessor for HierarchicalStateMachine.RootState();
  *(v6 + 168) = v17;
  v18 = *(v17 - 8);
  *(v6 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE089B4, a3, 0);
}

uint64_t sub_22AE089B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = *(*v8 + 144);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8 + v9, v3);
  (*(v6 + 24))(v5, v6);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_22AE08AF0;
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[11];
  v17 = v0[12];

  return HierarchicalStateMachine.RootState.handleStateTransition(_:stateValue:otherStateLabel:delegate:isolation:)(v15, v14, v12, v16, v17, v13);
}

uint64_t sub_22AE08AF0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v7 = *(*v0 + 144);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v10 + 8);

  return v8();
}

char *HierarchicalStateMachine.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(*v0 + 144);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  v10 = type metadata accessor for HierarchicalStateMachine.RootState();
  (*(*(v10 - 8) + 8))(&v0[v3], v10);
  v11 = *&v0[*(*v0 + 152)];

  v12 = *(*v0 + 160);
  v13 = type metadata accessor for HierarchicalStateMachine.MetaState();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t HierarchicalStateMachine.__deallocating_deinit()
{
  HierarchicalStateMachine.deinit();

  return MEMORY[0x282200960](v0);
}

void sub_22AE08EA0(void (*a1)(void))
{
  a1();
  sub_22AE76E84();
  __break(1u);
}

uint64_t sub_22AE08F24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE0372C(a1, v5, v4);
}

uint64_t sub_22AE08FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE0907C, v3, 0);
}

uint64_t sub_22AE0907C()
{
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  sub_22AE77004();
  LOBYTE(v1) = sub_22AE1ECA0(v1, v0[9]);

  if (v1)
  {
    v2 = v0[13];
    v3 = *(v2 + 136);
    (*(v2 + 128))(sub_22AE1ED48, 0, "HMFoundation/AsyncSerialQueue.swift", 35, 2, 114);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v4 = v0[15];
  v5 = v0[13];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, 1, 1, v6);
  swift_beginAccess();
  v8 = v0[13];
  if (*(*(v5 + 120) + 24) || (*(v8 + 112) & 1) != 0)
  {
    v9 = v0[15];
    sub_22AE09960();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = *(MEMORY[0x277D859E0] + 4);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_22AE093C8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v14 = v0[14];
    v13 = v0[15];
    *(v8 + 112) = 1;
    sub_22AE02CF4(v13, v14, qword_27D8B0EE8, &qword_22AE80718);
    v15 = (*(v7 + 48))(v14, 1, v6);
    v16 = v0[14];
    if (v15 == 1)
    {
      sub_22AE02D5C(v0[14], qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      (*(v7 + 8))(v16, v6);
    }

    v17 = swift_task_alloc();
    v0[18] = v17;
    *v17 = v0;
    v17[1] = sub_22AE0958C;
    v18 = v0[12];
    v19 = v0[13];
    v20 = v0[10];
    v21 = v0[11];

    return sub_22AE0B08C(v20, v21, v18);
  }
}

uint64_t sub_22AE093C8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE094F4, v3, 0);
}

uint64_t sub_22AE094F4()
{
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_22AE0958C;
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];

  return sub_22AE0B08C(v4, v5, v2);
}

uint64_t sub_22AE0958C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_22AE09750;
  }

  else
  {
    v6 = sub_22AE096B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22AE096B8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_22AE1F0E4();
  sub_22AE02D5C(v1, qword_27D8B0EE8, &qword_22AE80718);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22AE09750()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_22AE1F0E4();
  sub_22AE02D5C(v1, qword_27D8B0EE8, &qword_22AE80718);

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_22AE097E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22ADEE1DC;

  return sub_22AE04D40(a1, v1);
}

uint64_t sub_22AE09884(uint64_t a1)
{
  v4 = (*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE05D10(a1, v5, v1 + v4);
}

unint64_t sub_22AE09960()
{
  result = qword_27D8B0CE8;
  if (!qword_27D8B0CE8)
  {
    type metadata accessor for AsyncSerialQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B0CE8);
  }

  return result;
}

uint64_t sub_22AE099B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v28 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_22AE76C34();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a1, v8);
  v20 = sub_22AE09960();
  v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = v20;
  *(v23 + 4) = a3;
  (*(v9 + 32))(&v23[v21], v13, v8);
  v24 = &v23[v22];
  *v24 = v28;
  *(v24 + 1) = a5;
  swift_retain_n();

  v25 = sub_22AE0ADE0(0, 0, v18, &unk_22AE80710, v23);
  v26 = *v29;
  *v29 = v25;
}

uint64_t sub_22AE09C30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1DC;

  return sub_22AE06418(a1, v5, v4);
}

uint64_t sub_22AE09CDC(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  v4 = a1[13];
  v5 = a1[14];
  v6 = a1[15];
  result = type metadata accessor for HierarchicalStateMachine.RootState();
  if (v8 <= 0x3F)
  {
    v10 = *(result - 8) + 64;
    result = type metadata accessor for HierarchicalStateMachine.MetaState();
    if (v9 <= 0x3F)
    {
      v11 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22AE09E64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_22AE09EC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_22AE0A094(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_22AE0A308(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22ADEE1DC;

  return sub_22AE07584(a1, a2, v6, v7, v8);
}

uint64_t sub_22AE0A3CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE08400(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_22AE0A494(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1DC;

  return sub_22AE086FC(a1, a2, v12);
}

uint64_t sub_22AE0A584(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22ADEE1DC;

  return sub_22AE087F4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_22AE0A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8B0EE8, &qword_22AE80718) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE0A700, a4, 0);
}

uint64_t sub_22AE0A700()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  swift_beginAccess();
  v6 = v0[6];
  if (*(*(v3 + 120) + 24) || (*(v6 + 112) & 1) != 0)
  {
    v7 = v0[11];
    sub_22AE09960();
    v8 = swift_task_alloc();
    v0[12] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = *(MEMORY[0x277D859E0] + 4);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_22AE0A9C0;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    *(v6 + 112) = 1;
    sub_22AE02CF4(v11, v12, qword_27D8B0EE8, &qword_22AE80718);
    v13 = (*(v5 + 48))(v12, 1, v4);
    v14 = v0[10];
    if (v13 == 1)
    {
      sub_22AE02D5C(v0[10], qword_27D8B0EE8, &qword_22AE80718);
    }

    else
    {
      sub_22AE76BD4();
      (*(v5 + 8))(v14, v4);
    }

    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_22AE0AB84;
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[5];
    v19 = v0[6];

    return sub_22AE0B08C(v18, v16, v17);
  }
}

uint64_t sub_22AE0A9C0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0AAEC, v3, 0);
}

uint64_t sub_22AE0AAEC()
{
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_22AE0AB84;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];

  return sub_22AE0B08C(v4, v2, v3);
}

uint64_t sub_22AE0AB84()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22AE0AD48;
  }

  else
  {
    v6 = sub_22AE0ACB0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22AE0ACB0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  sub_22AE1F0E4();
  sub_22AE02D5C(v1, qword_27D8B0EE8, &qword_22AE80718);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22AE0AD48()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  sub_22AE1F0E4();
  sub_22AE02D5C(v1, qword_27D8B0EE8, &qword_22AE80718);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_22AE0ADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0D18, &qword_22AE80330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_22AE02CF4(a3, v25 - v11, &qword_27D8B0D18, &qword_22AE80330);
  v13 = sub_22AE76C34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22AE02D5C(v12, &qword_27D8B0D18, &qword_22AE80330);
  }

  else
  {
    sub_22AE76C24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22AE76BC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22AE76A84() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22AE02D5C(a3, &qword_27D8B0D18, &qword_22AE80330);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22AE0B08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_22AE0B0B0, v3, 0);
}

uint64_t sub_22AE0B0B0()
{
  v11 = v0;
  if (qword_27D8B0CF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v9 = *(v0 + 40);
  sub_22AE77004();
  sub_22AE20088(&v10, v1);
  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v9;
  v4 = sub_22AE09960();
  v5 = *(MEMORY[0x277D85A70] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_22AE0B248;
  v7 = *(v0 + 32);
  v13 = 120;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200908](v7, v0 + 24, &unk_22AE80730, v3, v1, v4, 0xD000000000000023, 0x800000022AE82C10);
}

uint64_t sub_22AE0B248()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v5[11] = v0;

  if (v0)
  {
    v6 = v5[7];

    return MEMORY[0x2822009F8](sub_22AE0B3C0, v6, 0);
  }

  else
  {
    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_22AE0B3D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22ADEE1E0;

  return v7(a1);
}

uint64_t sub_22AE0B4D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B0EE0, &qword_22AE81610) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22ADEE1DC;

  return sub_22AE0A64C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_22AE0B620(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22ADEE1E0;

  return sub_22AE0B3D8(a1, v5);
}

uint64_t sub_22AE0B6CC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22ADEE1E0;

  return sub_22AE05344(v9, a1, a2, v7, v6);
}

uint64_t sub_22AE0B780(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22ADEE1DC;

  return sub_22AE03C88(v9, a1, a2, v7, v6);
}

uint64_t static HierarchicalStateMachine.EventReaction.transition(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = (a8 + *(TupleTypeMetadata2 + 48));
  (*(*(a2 - 8) + 16))(a8, a1, a2);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  *v17 = &unk_22AE80760;
  v17[1] = v18;
  v19 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v19(a8, 0, 2, TupleTypeMetadata2);
}

uint64_t sub_22AE0B98C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22ADEE1DC;

  return sub_22AE04D2C();
}

uint64_t static HierarchicalStateMachine.EventReaction.transition(to:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = (a9 + *(TupleTypeMetadata2 + 48));
  (*(*(a4 - 8) + 16))(a9, a1, a4);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v19[7] = a10;
  v19[8] = a2;
  v19[9] = a3;
  *v18 = &unk_22AE80770;
  v18[1] = v19;
  (*(*(TupleTypeMetadata2 - 8) + 56))(a9, 0, 2, TupleTypeMetadata2);
}

uint64_t sub_22AE0BBBC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22ADEE1E0;

  return v6();
}

uint64_t sub_22AE0BCA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22ADEE1E0;

  return sub_22AE0BBBC(a1, v11);
}

uint64_t static HierarchicalStateMachine.EventReaction.transition(to:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = (a5 + *(TupleTypeMetadata2 + 48));
  (*(*(a4 - 8) + 16))(a5, a1, a4);
  *v11 = a2;
  v11[1] = a3;
  (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 0, 2, TupleTypeMetadata2);
}

uint64_t sub_22AE0BE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_22AE0BF1C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 2 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 3;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if (v5 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v17 = v18 + 1;
    }

    else
    {
      v17 = (*(v4 + 48))(a1, v5);
    }

    if (v17 >= 3)
    {
      return v17 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) - 1;
}

int *sub_22AE0C084(int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 2;
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a3 - v7 + 3;
  if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v7 + 2;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = a2 - v7 + 1;
      v17 = result;
      bzero(result, v10);
      result = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(result + v10) = v15;
      }

      else
      {
        *(result + v10) = v15;
      }
    }

    else if (v14)
    {
      *(result + v10) = v15;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(result + v10) = 0;
  }

  else if (v14)
  {
    *(result + v10) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = ((result + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (((a2 + 2) & 0x80000000) != 0)
    {
      *v19 = a2 - 2147483646;
      v19[1] = 0;
    }

    else
    {
      *v19 = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    return v18();
  }

  return result;
}

uint64_t sub_22AE0C270()
{
  v0 = sub_22AE76A04();
  sub_22AE76A04();
  return v0;
}

uint64_t HierarchicalStateMachine.HandlerDelegate.enqueue(event:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
  sub_22AE76BB4();
  return sub_22AE76B94();
}

uint64_t HierarchicalStateMachine.HandlerDelegate.enqueue(delegating:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
  sub_22AE76BB4();
  return sub_22AE76B94();
}

uint64_t sub_22AE0C450()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22AE0C4A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22AE0C4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HierarchicalStateMachine.RootState.handleStateTransition(_:currentState:delegate:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 64) = v11;
  v12 = a5[2];
  v13 = a5[3];
  *(v5 + 16) = a5[1];
  *(v5 + 32) = v12;
  *(v5 + 48) = v13;
  v14 = _s4NodeOMa();
  *v11 = v5;
  v11[1] = sub_22AE0C62C;

  return sub_22AE0DF90(a1, a2, a3, a4, v14);
}

uint64_t sub_22AE0C62C()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t HierarchicalStateMachine.RootState.handleEvent(_:currentState:delegate:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = v6;
  *(v7 + 80) = a3;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v14 = swift_task_alloc();
  *(v7 + 112) = v14;
  v15 = a6[2];
  v16 = a6[3];
  *(v7 + 16) = a6[1];
  *(v7 + 32) = v15;
  *(v7 + 48) = v16;
  v17 = _s4NodeOMa();
  *v14 = v7;
  v14[1] = sub_22AE0C820;

  return sub_22AE0D05C(a1, a2, a3, a4, a5, v17);
}

uint64_t sub_22AE0C820()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0C930, v2, 0);
}

uint64_t sub_22AE0C930()
{
  v1 = (v0[13] + *(v0[12] + 72));
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = *v1;
    v12 = (v2 + *v2);
    v5 = v2[1];
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_22AE0CA68;
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];

    return v12(v8, v7, v9);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22AE0CA68()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t HierarchicalStateMachine.RootState.handleStateTransition(_:stateValue:otherStateLabel:delegate:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  v14 = a6[2];
  v15 = a6[3];
  *(v6 + 16) = a6[1];
  *(v6 + 32) = v14;
  *(v6 + 48) = v15;
  v16 = _s4NodeOMa();
  *v13 = v6;
  v13[1] = sub_22AE128B8;

  return sub_22AE0F17C(a1, a2, a3, a4, a5, v16);
}

uint64_t sub_22AE0CC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v14;
  v40 = *(a1 + 64);
  v15 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v15;
  _s4NodeO13NodeStateTypeOMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  _s4NodeOMa();
  sub_22AE76BB4();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = swift_allocBox();
  v19 = v18;
  v20 = (v18 + TupleTypeMetadata[12]);
  v32 = (v18 + TupleTypeMetadata[16]);
  v34 = TupleTypeMetadata[20];
  v35 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, 1, 1, AssociatedTypeWitness);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  *v20 = &unk_22AE80910;
  v20[1] = v22;
  v33 = type metadata accessor for HierarchicalStateMachine.RootState.RootStateBuilder.Components();
  *v32 = sub_22AE12D68(v33);
  v32[1] = v23;
  *(v19 + v34) = *&v37[0];
  *a8 = v35;
  _s4NodeOMa();
  swift_storeEnumTagMultiPayload();
  v24 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v25 = v39;
  }

  else
  {
    v25 = 0;
  }

  v26 = type metadata accessor for HierarchicalStateMachine.RootState();
  v27 = (a8 + *(v26 + 68));
  *v27 = *(&v38 + 1);
  v27[1] = v25;
  v28 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v29 = v40;
  }

  else
  {
    v29 = 0;
  }

  v30 = (a8 + *(v26 + 72));
  sub_22ADF69C0(*(&v39 + 1));

  sub_22ADF69C0(v24);
  result = (*(*(v33 - 1) + 8))(v37);
  *v30 = v28;
  v30[1] = v29;
  return result;
}

uint64_t sub_22AE0CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22AE0CF98, 0, 0);
}

uint64_t sub_22AE0CF98()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v1, 1, 2, TupleTypeMetadata2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22AE0D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(v7 + 152) = a6;
  *(v7 + 160) = v6;
  *(v7 + 136) = a4;
  *(v7 + 144) = a5;
  *(v7 + 120) = a2;
  *(v7 + 128) = a3;
  *(v7 + 112) = a1;
  v10 = a6[2];
  *(v7 + 168) = v10;
  v11 = a6[3];
  *(v7 + 176) = v11;
  v12 = a6[4];
  *(v7 + 184) = v12;
  v13 = a6[5];
  *(v7 + 192) = v13;
  v14 = a6[6];
  *(v7 + 200) = v14;
  v15 = a6[7];
  *(v7 + 208) = v15;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  *(v7 + 32) = v17;
  *(v7 + 16) = v16;
  *(v7 + 48) = v14;
  *(v7 + 56) = v15;
  v18 = type metadata accessor for HierarchicalStateMachine.EventReaction();
  *(v7 + 216) = v18;
  v19 = *(v18 - 8);
  *(v7 + 224) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  v21 = sub_22AE76D84();
  *(v7 + 248) = v21;
  v22 = *(v21 - 8);
  *(v7 + 256) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 264) = swift_task_alloc();
  v24 = *(a6 - 1);
  *(v7 + 272) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 64) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  *(v7 + 88) = v27;
  *(v7 + 72) = v26;
  *(v7 + 104) = v15;
  v28 = _s4NodeO13NodeStateTypeOMa();
  *(v7 + 288) = v28;
  v29 = *(v28 - 8);
  *(v7 + 296) = v29;
  v30 = *(v29 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 320) = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  *(v7 + 328) = v32;
  v33 = *(v32 + 64) + 15;
  *(v7 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22AE0D35C, a5, 0);
}

uint64_t sub_22AE0D35C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[26];
  v53 = v6;
  v54 = v0[36];
  v52 = v0[25];
  v7 = v0[24];
  v51 = v0[23];
  v49 = v0[40];
  v50 = v0[22];
  v48 = v0[21];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[16];
  (*(v7 + 24))();
  sub_22AE112A0(v8, v3);
  (*(v1 + 16))(v4, v2, v49);
  (*(v1 + 56))(v4, 0, 1, v49);
  LOBYTE(v10) = sub_22AE0F9D4(v3, v4, v48, v50, v51, v7, v52, v53);
  v11 = *(v5 + 8);
  v11(v4, v54);
  v11(v3, v54);
  if (v10)
  {
    v12 = v0[20];
    v13 = sub_22AE1150C(v0[19]);
    v0[43] = v14;
    v55 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[44] = v16;
    *v16 = v0;
    v16[1] = sub_22AE0D78C;
    v17 = v0[16];
    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[15];

    return v55(v19, v20, v17, v18);
  }

  else
  {
    v22 = v0[33];
    v23 = v0[34];
    v24 = v0[19];
    sub_22AE1178C(v0[42], v24, v22);
    v25 = (*(v23 + 48))(v22, 1, v24);
    v26 = v0[33];
    if (v25 == 1)
    {
      v27 = v0[31];
      v28 = v0[32];
      v29 = v0[21];
      v30 = v0[14];
      (*(v0[41] + 8))(v0[42], v0[40]);
      (*(v28 + 8))(v26, v27);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 2, TupleTypeMetadata2);
      v32 = v0[42];
      v33 = v0[38];
      v34 = v0[39];
      v35 = v0[35];
      v36 = v0[33];
      v38 = v0[29];
      v37 = v0[30];

      v39 = v0[1];

      return v39();
    }

    else
    {
      (*(v0[34] + 32))(v0[35], v0[33], v0[19]);
      v40 = swift_task_alloc();
      v0[45] = v40;
      *v40 = v0;
      v40[1] = sub_22AE0D980;
      v41 = v0[35];
      v42 = v0[30];
      v43 = v0[18];
      v44 = v0[19];
      v45 = v0[16];
      v46 = v0[17];
      v47 = v0[15];

      return sub_22AE0D05C(v42, v47, v45, v46, v43, v44);
    }
  }
}

uint64_t sub_22AE0D78C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0D8B8, v3, 0);
}

uint64_t sub_22AE0D8B8()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[35];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22AE0D980()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0DA90, v2, 0);
}

uint64_t sub_22AE0DA90()
{
  v1 = v0[29];
  v2 = v0[21];
  (*(v0[28] + 16))(v1, v0[30], v0[27]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B0ED8, &qword_22AE81000);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v1, 2, TupleTypeMetadata2) == 1)
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    v7 = v0[19];
    v8 = v0[20];
    v9 = *(v5 + 8);
    v0[46] = v9;
    v0[47] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v10 = sub_22AE1150C(v7);
    v0[48] = v11;
    v35 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v0[49] = v13;
    *v13 = v0;
    v13[1] = sub_22AE0DD64;
    v14 = v0[16];
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[15];

    return v35(v16, v17, v14, v15);
  }

  else
  {
    v20 = v0[41];
    v19 = v0[42];
    v21 = v0[40];
    v23 = v0[29];
    v22 = v0[30];
    v24 = v0[27];
    v25 = v0[28];
    v26 = v0[14];
    (*(v0[34] + 8))(v0[35], v0[19]);
    (*(v20 + 8))(v19, v21);
    (*(v25 + 8))(v23, v24);
    (*(v25 + 32))(v26, v22, v24);
    v27 = v0[42];
    v28 = v0[38];
    v29 = v0[39];
    v30 = v0[35];
    v31 = v0[33];
    v33 = v0[29];
    v32 = v0[30];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_22AE0DD64()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22AE0DE90, v3, 0);
}

uint64_t sub_22AE0DE90()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 152);
  (*(v0 + 368))(*(v0 + 240), *(v0 + 216));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 336);
  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  v11 = *(v0 + 280);
  v12 = *(v0 + 264);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);

  v15 = *(v0 + 8);

  return v15();
}