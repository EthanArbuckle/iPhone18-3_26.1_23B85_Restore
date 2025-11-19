id MNGetMNLocationProviderLog()
{
  if (MNGetMNLocationProviderLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNLocationProviderLog_onceToken, &__block_literal_global_49);
  }

  v1 = MNGetMNLocationProviderLog_log;

  return v1;
}

id MNGetPuckTrackingLog()
{
  if (MNGetPuckTrackingLog_onceToken != -1)
  {
    dispatch_once(&MNGetPuckTrackingLog_onceToken, &__block_literal_global_109);
  }

  v1 = MNGetPuckTrackingLog_log;

  return v1;
}

void _registerStateCaptureCallbacks()
{
  if (_registerStateCaptureCallbacks_onceToken != -1)
  {
    dispatch_once(&_registerStateCaptureCallbacks_onceToken, &__block_literal_global_23);
  }
}

__CFString *MNLocaleDidChangeNotification()
{
  if (MNLocaleDidChangeNotification_onceToken != -1)
  {
    dispatch_once(&MNLocaleDidChangeNotification_onceToken, &__block_literal_global_8383);
  }

  return @"MNLocaleDidChangeNotification";
}

void __MNLocaleDidChangeNotification_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v1 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterAddObserver(LocalCenter, 0, _currentLocaleChanged, v1, 0, CFNotificationSuspensionBehaviorCoalesce);
}

void __MNGetMNNavigationServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationService");
  v1 = MNGetMNNavigationServiceLog_log;
  MNGetMNNavigationServiceLog_log = v0;
}

id MNGetMNNavigationServiceLog()
{
  if (MNGetMNNavigationServiceLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationServiceLog_onceToken, &__block_literal_global_55);
  }

  v1 = MNGetMNNavigationServiceLog_log;

  return v1;
}

void sub_1D3120F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D31217DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id MNGetMNNavigationDetailsLog()
{
  if (MNGetMNNavigationDetailsLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNNavigationDetailsLog_onceToken, &__block_literal_global_53);
  }

  v1 = MNGetMNNavigationDetailsLog_log;

  return v1;
}

void __MNGetMNNavigationDetailsLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNNavigationDetails");
  v1 = MNGetMNNavigationDetailsLog_log;
  MNGetMNNavigationDetailsLog_log = v0;
}

void MNRunAsyncOnNavigationQueue(void *a1)
{
  v1 = a1;
  v2 = MNNavigationQueue();
  dispatch_async(v2, v1);
}

id MNNavigationQueue()
{
  if (MNNavigationQueue_onceToken != -1)
  {
    dispatch_once(&MNNavigationQueue_onceToken, &__block_literal_global_9783);
  }

  v1 = MNNavigationQueue_queue;

  return v1;
}

void sub_1D31220AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNUserOptionsEngineCategory()
{
  if (GetAudioLogForMNUserOptionsEngineCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNUserOptionsEngineCategory_onceToken, &__block_literal_global_86);
  }

  v1 = GetAudioLogForMNUserOptionsEngineCategory_log;

  return v1;
}

void sub_1D3122290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNVoiceLanguageUtilCategory()
{
  if (GetAudioLogForMNVoiceLanguageUtilCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNVoiceLanguageUtilCategory_onceToken, &__block_literal_global_17382);
  }

  v1 = GetAudioLogForMNVoiceLanguageUtilCategory_log;

  return v1;
}

void __GetAudioLogForMNVoiceLanguageUtilCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNVoiceLanguageUtil");
  v1 = GetAudioLogForMNVoiceLanguageUtilCategory_log;
  GetAudioLogForMNVoiceLanguageUtilCategory_log = v0;
}

uint64_t sub_1D3122E14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_1D3122E64()
{
  result = qword_1EC75BE10;
  if (!qword_1EC75BE10)
  {
    sub_1D3276FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BE10);
  }

  return result;
}

unint64_t sub_1D3122EBC()
{
  result = qword_1EC75BE00;
  if (!qword_1EC75BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75C468, &qword_1D328C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BE00);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D3123330(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3123398(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D3123588(a1, v5);
}

uint64_t sub_1D3123450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D3125778;

  return sub_1D3123680(a1, v4, v5, v7);
}

id MNGetMNLocationTrackerLog()
{
  if (MNGetMNLocationTrackerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNLocationTrackerLog_onceToken, &__block_literal_global_51);
  }

  v1 = MNGetMNLocationTrackerLog_log;

  return v1;
}

uint64_t sub_1D3123588(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D312586C;

  return v7(a1);
}

uint64_t sub_1D3123680(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D3125778;

  return v8();
}

uint64_t sub_1D3123768()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D3152F1C;

  return sub_1D3123828(v2, v3, v5);
}

uint64_t sub_1D3123828(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D3152F1C;

  return v7();
}

unint64_t sub_1D3123910()
{
  result = qword_1EC75BDD8;
  if (!qword_1EC75BDD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BDD8);
  }

  return result;
}

void sub_1D3123AFC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState;
  v5 = *(v1 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState);
  v6 = v5;
  v51 = sub_1D3123F5C(v5);

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  swift_dynamicCast();
  v7 = *(v1 + v4);
  *(v1 + v4) = v54;

  v52 = [a1 location];
  if (!v52)
  {

    return;
  }

  [*(v1 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater) setNavigationSessionState_];
  v55 = MEMORY[0x1E69E7CC0];
  v8 = [a1 currentRouteInfo];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D312A6FC(v52, v8);
    v12 = v11;
    v14 = v13;
    v15 = v10;
    v16 = v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v2, v15, ObjectType, v17, v12, v14);
      swift_unknownObjectRelease();
    }

    v19 = v9;
    MEMORY[0x1D38B4040]();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D32771B0();
    }

    sub_1D32771D0();
  }

  v20 = [a1 alternateRouteInfos];
  if (v20)
  {
    v21 = v20;
    sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
    v22 = sub_1D32771A0();

    sub_1D312AA90(v22);
  }

  v23 = v55;
  v48 = a1;
  v50 = v2;
  if (!(v55 >> 62))
  {
    v24 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v51;
    v26 = v52;
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_24:

    return;
  }

  v46 = sub_1D3277660();
  v23 = v55;
  v24 = v46;
  v25 = v51;
  v26 = v52;
  if (!v46)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (v24 >= 1)
  {
    v27 = 0;
    v28 = v50 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate;
    v29 = v23 & 0xC000000000000001;
    v53 = v23;
    v49 = v23 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x1D38B45D0](v27);
      }

      else
      {
        v30 = *(v23 + 8 * v27 + 32);
      }

      v31 = v30;
      sub_1D312ADF4(v26, v30);
      v33 = v32;
      v35 = v34;
      sub_1D312B39C(v31, v32, v34);
      v37 = v36;
      [v31 setRemainingDistanceInfo_];
      v38 = sub_1D312B6D0(v31, v33, v35);
      [v31 setBatteryChargeInfo_];
      if (v25 || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        v39 = v28;
        v40 = *(v28 + 8);
        v41 = swift_getObjectType();
        v42 = [v31 displayETAInfo];
        v43 = *(v40 + 16);
        v44 = v41;
        v25 = v51;
        v45 = v40;
        v28 = v39;
        v29 = v49;
        v43(v50, v42, v37, v38, v44, v45);

        v26 = v52;
        swift_unknownObjectRelease();
      }

      ++v27;

      v23 = v53;
    }

    while (v24 != v27);
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1D3123F5C(void *a1)
{
  v2 = v1;
  v82 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CDA0, &qword_1D328CE48);
  v80 = *(v85 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v5 = &v78 - v4;
  v6 = sub_1D3276D70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v83 = &v78 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v78 - v26;
  v81 = v2;
  v28 = [v2 currentRouteInfo];
  v84 = v27;
  if (v28)
  {
    v29 = v28;
    v30 = [v28 route];

    v31 = [v30 uniqueRouteID];
    if (v31)
    {
      sub_1D3276D60();

      v32 = *(v7 + 56);
      v32(v25, 0, 1, v6);
    }

    else
    {
      v32 = *(v7 + 56);
      v32(v25, 1, 1, v6);
    }

    v27 = v84;
    sub_1D3124894(v25, v84);
    v33 = v82;
    v34 = v83;
    if (!v82)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = *(v7 + 56);
    v32(v27, 1, 1, v6);
    v33 = v82;
    v34 = v83;
    if (!v82)
    {
      goto LABEL_11;
    }
  }

  v35 = [v33 currentRouteInfo];
  if (!v35)
  {
LABEL_11:
    v32(v34, 1, 1, v6);
    goto LABEL_14;
  }

  v36 = v35;
  v37 = [v35 route];

  v38 = [v37 uniqueRouteID];
  if (v38)
  {
    sub_1D3276D60();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v27 = v84;
  v32(v20, v39, 1, v6);
  v34 = v83;
  sub_1D3124894(v20, v83);
LABEL_14:
  v40 = *(v10 + 48);
  sub_1D31254DC(v27, v13);
  sub_1D31254DC(v34, &v13[v40]);
  v41 = *(v7 + 48);
  if (v41(v13, 1, v6) == 1)
  {
    v42 = v41(&v13[v40], 1, v6);
    v43 = v82;
    if (v42 == 1)
    {
      sub_1D3125FBC(v13, &qword_1EC75C570, &qword_1D328B720);
      v44 = 0;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v45 = v79;
  sub_1D31254DC(v13, v79);
  if (v41(&v13[v40], 1, v6) == 1)
  {
    (*(v7 + 8))(v45, v6);
    v43 = v82;
LABEL_19:
    sub_1D3125FBC(v13, &unk_1EC75CDB0, &unk_1D328B750);
    v44 = 1;
    goto LABEL_21;
  }

  v46 = v78;
  (*(v7 + 32))(v78, &v13[v40], v6);
  sub_1D3125484();
  v47 = sub_1D32770A0();
  v48 = *(v7 + 8);
  v48(v46, v6);
  v48(v45, v6);
  sub_1D3125FBC(v13, &qword_1EC75C570, &qword_1D328B720);
  v44 = ~v47 & 1;
  v43 = v82;
LABEL_21:
  v49 = [v81 alternateRouteInfos];
  if (v49)
  {
    v50 = v49;
    sub_1D312490C();
    v51 = sub_1D32771A0();
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v52 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    v53 = [v43 alternateRouteInfos];
    if (v53)
    {
      v54 = v53;
      sub_1D312490C();
      v55 = sub_1D32771A0();
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v86 = v55;
  v87 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C368, &qword_1D328AE68);
  sub_1D3124958(&qword_1EC75BDF8, &qword_1EC75C368, &qword_1D328AE68);
  sub_1D3277070();

  result = sub_1D3277820();
  v57 = result;
  v58 = 0;
  v87 = v52;
  v59 = *(result + 16);
  v60 = result + 57;
LABEL_30:
  v61 = (v60 + 32 * v58);
  while (v59 != v58)
  {
    if (v58 >= *(v57 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v62 = v61 + 32;
    ++v58;
    v63 = *v61;
    v61 += 32;
    if ((v63 & 1) == 0)
    {
      v64 = *(v62 - 49);
      MEMORY[0x1D38B4040]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D32771B0();
      }

      result = sub_1D32771D0();
      goto LABEL_30;
    }
  }

  result = sub_1D3277830();
  v66 = result;
  v67 = 0;
  v87 = v52;
  v68 = *(result + 16);
  v69 = result + 57;
LABEL_38:
  v70 = (v69 + 32 * v67);
  v71 = v84;
  while (v68 != v67)
  {
    if (v67 >= *(v66 + 16))
    {
      goto LABEL_49;
    }

    v72 = v70 + 32;
    ++v67;
    v73 = *v70;
    v70 += 32;
    if (v73 == 1)
    {
      v74 = *(v72 - 49);
      MEMORY[0x1D38B4040]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v75 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D32771B0();
      }

      result = sub_1D32771D0();
      goto LABEL_38;
    }
  }

  sub_1D3124958(&qword_1EC75BD48, &qword_1EC75CDA0, &qword_1D328CE48);
  v76 = v85;
  sub_1D3277340();
  sub_1D3277360();
  v77 = sub_1D3277350();
  (*(v80 + 8))(v5, v76);
  sub_1D3125FBC(v83, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v71, &qword_1EC75C570, &qword_1D328B720);
  if (v77 >= 1)
  {
    return v44 | 2;
  }

  else
  {
    return v44;
  }
}

uint64_t sub_1D3124894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D312490C()
{
  result = qword_1EC75BDA8;
  if (!qword_1EC75BDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BDA8);
  }

  return result;
}

uint64_t sub_1D3124958(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MNRemainingTimeUpdater.navigationSessionState.setter(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - v5;
  v7 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState;
  v8 = *(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState);
  v9 = v8;
  LOBYTE(v8) = sub_1D3124D50(a1, v8);

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  swift_dynamicCast();
  v10 = v39;
  v11 = *(v1 + v7);
  v38 = v1;
  *(v1 + v7) = v39;
  v12 = v10;

  v13 = 1;
  if (v8)
  {
    v13 = 2;
  }

  v32 = v13;
  v14 = [v12 location];

  v37 = v14;
  if (v14)
  {
    v15 = *(v38 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    v31 = a1;
    if (v15 >> 62)
    {
      goto LABEL_25;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v17 = v15;
    v15 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
    v18 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

    swift_beginAccess();
    v34 = v18;
    swift_beginAccess();
    if (v16)
    {
      v19 = 0;
      v35 = v17 & 0xFFFFFFFFFFFFFF8;
      v36 = v17 & 0xC000000000000001;
      v33 = v16;
      do
      {
        if (v36)
        {
          v20 = MEMORY[0x1D38B45D0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_21:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v19 >= *(v35 + 16))
          {
            __break(1u);
LABEL_25:
            v16 = sub_1D3277660();
            goto LABEL_6;
          }

          v20 = *(v17 + 8 * v19 + 32);

          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_21;
          }
        }

        sub_1D312601C(v38 + v15, v6, &qword_1EC75C4F0, &qword_1D328B580);
        v22 = sub_1D312596C(v20, v37);
        sub_1D3126114(v22, v6, v23);
        v25 = v24;
        sub_1D3125FBC(v6, &qword_1EC75C4F0, &qword_1D328B580);
        if ((v25 & 1) != 0 && (v26 = [*(v20 + 16) displayETAInfo]) != 0)
        {
          v27 = v26;
          v28 = v38;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong remainingTimeUpdater:v28 didUpdateDisplayETAInfo:v27 reason:v32];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v16 = v33;
        }

        else
        {
        }

        ++v19;
      }

      while (v21 != v16);
    }

    a1 = v31;
  }
}

BOOL sub_1D3124D50(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1D3123F5C(a2);
  v7 = v5;
  if (v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v59 = MEMORY[0x1E69E7CC0];
    v9 = &qword_1EC75C000;
    v56 = v5;
    v57 = v6;
    if (v5)
    {
      v10 = v6;
      v14 = [a1 currentRouteInfo];
      if (v14)
      {
        v15 = v14;
        v16 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__stabilizeETA);
        v17 = type metadata accessor for MNRouteRemainingTimeInfo(0);
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();
        v20 = v15;
        sub_1D31490EC(v20, 1, v16);

        MEMORY[0x1D38B4040](v21);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = v3;
          v54 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D32771B0();
          v3 = v53;
        }

        a1 = &v59;
        sub_1D32771D0();

        v9 = &qword_1EC75C000;
      }

      goto LABEL_25;
    }

    a1 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    v10 = v3;
    if (a1 >> 62)
    {
      goto LABEL_56;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v11)
    {
      v7 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D38B45D0](v7, a1);
          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v12 = *(a1 + 8 * v7 + 32);

          v13 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        if (*(v12 + 24))
        {

          MEMORY[0x1D38B4040](v22);
          v7 = v56;
          v3 = v10;
          v9 = &qword_1EC75C000;
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_70;
          }

          goto LABEL_23;
        }

        ++v7;
      }

      while (v13 != v11);
    }

    v7 = v56;
    v3 = v10;
    v9 = 0x1EC75C000;
    while (1)
    {
      v10 = v57;
LABEL_25:

      if ((v7 & 2) == 0)
      {
        break;
      }

LABEL_40:
      v27 = v10;
      if (v10 >> 62)
      {
        v43 = sub_1D3277660();
        v27 = v10;
        v28 = v43;
        if (!v43)
        {
LABEL_59:

          goto LABEL_60;
        }
      }

      else
      {
        v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_59;
        }
      }

      if (v28 >= 1)
      {
        v29 = 0;
        v55 = v3;
        v30 = *(v3 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__stabilizeETA);
        v31 = v27 & 0xC000000000000001;
        do
        {
          if (v31)
          {
            v32 = MEMORY[0x1D38B45D0](v29);
          }

          else
          {
            v32 = *(v27 + 8 * v29 + 32);
          }

          v33 = v32;
          v34 = type metadata accessor for MNRouteRemainingTimeInfo(0);
          v35 = *(v34 + 48);
          v36 = *(v34 + 52);
          v37 = swift_allocObject();
          v38 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
          v39 = sub_1D3276D30();
          (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher) = 0;
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter) = 0;
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatter) = 0;
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateComponentsFormatterWithSeconds) = 0;
          *(v37 + 16) = v33;
          *(v37 + 24) = 0;
          v7 = v7 & 0xFFFFFFFF00000000 | 0x20;
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__stabilizeETA) = v30;
          v40 = v33;
          *(v37 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__enableLogging) = GEOConfigGetBOOL();

          MEMORY[0x1D38B4040](v41);
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D32771B0();
          }

          ++v29;
          sub_1D32771D0();

          v27 = v57;
        }

        while (v28 != v29);

        v3 = v55;
        v7 = v56;
        v9 = 0x1EC75C000;
        goto LABEL_60;
      }

      __break(1u);
LABEL_70:
      sub_1D32771B0();
LABEL_23:
      a1 = &v59;
      sub_1D32771D0();
    }

    v23 = *(v3 + *(v9 + 1224));
    v58 = v8;
    if (v23 >> 62)
    {
      v24 = sub_1D3277660();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24)
    {
      v10 = v3;
      v9 = 0;
      v3 = v23 & 0xC000000000000001;
      v7 = v23 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          v26 = MEMORY[0x1D38B45D0](v9, v23);
          v8 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        else
        {
          if (v9 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            v11 = sub_1D3277660();
            goto LABEL_5;
          }

          v26 = *(v23 + 8 * v9 + 32);

          v8 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_39;
          }
        }

        if (*(v26 + 24))
        {
        }

        else
        {
          sub_1D3277750();
          v25 = *(v58 + 16);
          sub_1D3277780();
          sub_1D3277790();
          a1 = &v58;
          sub_1D3277760();
        }

        ++v9;
        if (v8 == v24)
        {
          v42 = v58;
          v7 = v56;
          v3 = v10;
          v9 = 0x1EC75C000;
          goto LABEL_53;
        }
      }
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_53:

    sub_1D31402E8(v42);
LABEL_60:
    v44 = v59;
    v45 = *(v9 + 1224);
    v46 = *(v3 + v45);
    *(v3 + v45) = v59;

    if (qword_1EC75BE40 != -1)
    {
      swift_once();
    }

    v47 = sub_1D3276F80();
    __swift_project_value_buffer(v47, qword_1EC760710);

    v48 = sub_1D3276F60();
    v49 = sub_1D32773B0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (v44 >> 62)
      {
        v51 = sub_1D3277660();
      }

      else
      {
        v51 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 4) = v51;

      _os_log_impl(&dword_1D311E000, v48, v49, "Routes changed. Now tracking %ld routes.", v50, 0xCu);
      MEMORY[0x1D38B6000](v50, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_16:
  }

  return v7 != 0;
}

unint64_t sub_1D3125484()
{
  result = qword_1EC75BFB0;
  if (!qword_1EC75BFB0)
  {
    sub_1D3276D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75BFB0);
  }

  return result;
}

uint64_t sub_1D31254DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3125778()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D312586C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1D312596C(uint64_t a1, void *a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  if (*(a1 + 24) == 1)
  {
    v23 = [a2 routeMatch];
    if (v23)
    {
      v47 = v8;
      v24 = v23;
      v25 = [v23 route];
      if (!v25)
      {

        goto LABEL_15;
      }

      v49 = v24;
      v50 = v5;
      v46 = a2;
      v51 = a1;
      v48 = v25;
      v26 = [v25 uniqueRouteID];
      if (v26)
      {
        v27 = v26;
        sub_1D3276D60();

        v28 = v50;
        v29 = *(v50 + 56);
        v29(v22, 0, 1, v4);
      }

      else
      {
        v28 = v50;
        v29 = *(v50 + 56);
        v29(v22, 1, 1, v4);
      }

      v30 = [*(v51 + 16) routeID];
      sub_1D3276D60();

      v29(v20, 0, 1, v4);
      v31 = *(v9 + 48);
      sub_1D312601C(v22, v12, &qword_1EC75C570, &qword_1D328B720);
      sub_1D312601C(v20, &v12[v31], &qword_1EC75C570, &qword_1D328B720);
      v32 = *(v28 + 48);
      if (v32(v12, 1, v4) == 1)
      {
        sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
        if (v32(&v12[v31], 1, v4) == 1)
        {
          sub_1D3125FBC(v12, &qword_1EC75C570, &qword_1D328B720);
LABEL_21:
          v45 = v49;
          v39 = [v49 routeCoordinate];

          return v39;
        }
      }

      else
      {
        sub_1D312601C(v12, v17, &qword_1EC75C570, &qword_1D328B720);
        if (v32(&v12[v31], 1, v4) != 1)
        {
          v41 = v50;
          v42 = v47;
          (*(v50 + 32))(v47, &v12[v31], v4);
          sub_1D31260CC(&qword_1EC75BFB0, MEMORY[0x1E69695A8]);
          v43 = sub_1D32770A0();
          v44 = *(v41 + 8);
          v44(v42, v4);
          sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
          sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
          v44(v17, v4);
          sub_1D3125FBC(v12, &qword_1EC75C570, &qword_1D328B720);
          if (v43)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

        sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
        (*(v50 + 8))(v17, v4);
      }

      sub_1D3125FBC(v12, &unk_1EC75CDB0, &unk_1D328B750);
LABEL_14:

      a2 = v46;
    }
  }

LABEL_15:
  result = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];
  if (result)
  {
    v34 = result;
    [result setCourse_];
    sub_1D312CBA0();
    v36 = v35;
    v37 = [v35 matchToRouteWithLocation_];

    if (v37)
    {
      v38 = [v37 routeCoordinate];

      return v38;
    }

    else
    {
      v39 = *MEMORY[0x1E69A1918];
      v40 = *(MEMORY[0x1E69A1918] + 4);
    }

    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3125FBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D312601C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D3126084(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D31260CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D3126114(unsigned int a1, uint64_t a2, float a3)
{
  v93 = a2;
  v7 = sub_1D3276D70();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v86 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = (&v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v86 - v19;
  v21 = sub_1D3276D30();
  v96 = *(v21 - 8);
  v97 = v21;
  v22 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v3 + 2);
  v25 = [v92 route];
  v26 = [v25 routeCoordinateRange];
  v28 = v27;
  v29 = (a1 | (LODWORD(a3) << 32));
  IsABeforeB = GEOPolylineCoordinateIsABeforeB();
  if (IsABeforeB)
  {
    v31 = v28;
  }

  else
  {
    v31 = v26;
  }

  if (!IsABeforeB)
  {
    v26 = v28;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    v29 = v31;
  }

  if (!GEOPolylineCoordinateIsABeforeB())
  {
    v29 = v26;
  }

  v32 = [v25 legIndexForRouteCoordinate_];
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v32;
    v88 = v18;
    v90 = v3;
    v18 = &selRef_initWithPattern_options_error_;
    v33 = [v25 legs];
    if (!v33)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v34 = v33;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v31 = sub_1D32771A0();

    if (!(v31 >> 62))
    {
      v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_14;
    }
  }

  v35 = sub_1D3277660();

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_14:
  v36 = v97;
  if (v4 >= v35)
  {

    return;
  }

  v89 = v24;
  v99 = 0;
  sub_1D312601C(v93, v20, &qword_1EC75C4F0, &qword_1D328B580);
  v37 = v96;
  v38 = *(v96 + 48);
  if (v38(v20, 1, v36) == 1)
  {
    v3 = v89;
    sub_1D3276D10();
    if (v38(v20, 1, v36) != 1)
    {
      sub_1D3125FBC(v20, &qword_1EC75C4F0, &qword_1D328B580);
    }
  }

  else
  {
    v39 = *(v37 + 32);
    v3 = v89;
    v39(v89, v20, v36);
  }

  v40 = [v25 v18[243]];
  if (!v40)
  {
    goto LABEL_67;
  }

  v41 = v40;
  v20 = sub_1D32771A0();

  v31 = v20 >> 62;
  if (!(v20 >> 62))
  {
    v42 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42 >= v4)
    {
      goto LABEL_23;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_49:
  v69 = sub_1D3277660();
  if (v69 < v4)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v42 = v69;
  if (sub_1D3277660() < v4)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (sub_1D3277660() < v42)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_23:
  if ((v20 & 0xC000000000000001) == 0 || v4 == v42)
  {

LABEL_30:

    if (v31)
    {
      sub_1D32777E0();
      v46 = v49;
      v48 = v50;
      v47 = v51;
    }

    else
    {
      v46 = ((v20 & 0xFFFFFFFFFFFFFF8) + 32);
      v47 = (2 * v42) | 1;
      v48 = v4;
    }

    MEMORY[0x1EEE9AC00](v45);
    *(&v86 - 6) = v4;
    *(&v86 - 5) = v25;
    *(&v86 - 4) = v29;
    v18 = v90;
    *(&v86 - 3) = v90;
    *(&v86 - 2) = &v99;
    *(&v86 - 1) = v3;
    v4 = sub_1D3127E84(sub_1D3127FD8, (&v86 - 8), v46, v48, v47);
    swift_unknownObjectRelease();
    v29 = [objc_allocWithZone(MNDisplayETAInfo) init];
    v20 = v92;
    v52 = [v92 routeID];
    v53 = v91;
    sub_1D3276D60();

    v54 = sub_1D3276D40();
    v31 = *(v94 + 8);
    (v31)(v53, v95);
    [v29 setRouteID_];

    sub_1D3126084(0, &qword_1EC75BD80, off_1E8428C88);
    v55 = sub_1D3277190();
    [v29 setLegInfos_];

    if (!(v4 >> 62))
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        v56 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D38B45D0](0, v4);
          swift_unknownObjectRelease();
          v57 = v97;
LABEL_37:
          v58 = [v20 displayETAInfo];
          if (v58)
          {
            v59 = v58;
            sub_1D3126084(0, &unk_1EC75BDB8, off_1E8428C80);
            v60 = v29;
            v61 = sub_1D32775F0();

            if (v61)
            {

              if (!v56)
              {
LABEL_40:
                if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v62 = *(v4 + 32);
LABEL_45:
                  v64 = v62;
                  v65 = v96;

                  v66 = [v64 eta];

                  v67 = v88;
                  sub_1D3276D00();

                  (*(v65 + 56))(v67, 0, 1, v57);
                  v68 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
                  swift_beginAccess();
                  sub_1D3128E74(v67, v18 + v68);
                  swift_endAccess();
                  (*(v65 + 8))(v89, v57);
                  return;
                }

                __break(1u);
                goto LABEL_66;
              }

LABEL_44:
              v62 = MEMORY[0x1D38B45D0](0, v4);
              goto LABEL_45;
            }
          }

          else
          {
            v63 = v29;
          }

          [v20 setDisplayETAInfo_];

          if (!v56)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

        v57 = v97;
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_63;
      }

LABEL_55:

      if (qword_1EC75BE40 == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_64;
    }

LABEL_54:
    if (sub_1D3277660())
    {
      goto LABEL_35;
    }

    goto LABEL_55;
  }

  if (v4 < v42)
  {

    v43 = v4;
    do
    {
      v44 = v43 + 1;
      sub_1D3277700();
      v43 = v44;
    }

    while (v42 != v44);
    goto LABEL_30;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_56:
  v70 = sub_1D3276F80();
  __swift_project_value_buffer(v70, qword_1EC760710);
  v71 = v25;
  v72 = sub_1D3276F60();
  v73 = sub_1D32773A0();
  if (!os_log_type_enabled(v72, v73))
  {

    goto LABEL_60;
  }

  v74 = swift_slowAlloc();
  v92 = swift_slowAlloc();
  v98 = v92;
  v93 = v74;
  *v74 = 136315138;
  v75 = [v71 uniqueRouteID];

  if (v75)
  {
    v76 = v86;
    sub_1D3276D60();

    v77 = v87;
    v78 = v76;
    v79 = v95;
    (*(v94 + 32))(v87, v78, v95);
    sub_1D31260CC(&qword_1EC75C590, MEMORY[0x1E69695A8]);
    v80 = sub_1D3277890();
    v82 = v81;
    (v31)(v77, v79);
    v83 = sub_1D312BA30(v80, v82, &v98);

    v84 = v93;
    *(v93 + 1) = v83;
    _os_log_impl(&dword_1D311E000, v72, v73, "We somehow computed no MNDisplayETALegInfos from route %s", v84, 0xCu);
    v85 = v92;
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x1D38B6000](v85, -1, -1);
    MEMORY[0x1D38B6000](v84, -1, -1);

LABEL_60:
    (*(v96 + 8))(v89, v97);
    return;
  }

LABEL_70:
  __break(1u);
}

void sub_1D3126B70(char a1, void *a2, unsigned int a3, uint64_t a4, unint64_t a5, float a6)
{
  v13 = [*(a4 + 16) etaRoute];
  v14 = v13;
  if (a1)
  {
    [a2 remainingTimeToEndOfCurrentLegFrom:a3 | (LODWORD(a6) << 32) etaRoute:v13];
LABEL_35:

    return;
  }

  v15 = &selRef_initWithPattern_options_error_;
  if (!v13)
  {
    goto LABEL_29;
  }

  v16 = [a2 legs];
  if (!v16)
  {
    goto LABEL_50;
  }

  v17 = v16;
  sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
  v18 = sub_1D32771A0();

  if (v18 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D3277660())
  {

    v19 = [v14 v15[243]];
    v20 = sub_1D3126084(0, &qword_1EC75C5A8, 0x1E69A1C58);
    v21 = sub_1D32771A0();

    if (v21 >> 62)
    {
      v22 = sub_1D3277660();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = i - v22;
    if (__OFSUB__(i, v22))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    i = a5 - v23;
    if (__OFSUB__(a5, v23))
    {
      goto LABEL_42;
    }

    v24 = [v14 v15[243]];
    v25 = sub_1D32771A0();

    if (!(v25 >> 62))
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_13;
    }

LABEL_43:
    v26 = sub_1D3277660();

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_45:
      swift_once();
      goto LABEL_22;
    }

LABEL_13:
    if (i < v26)
    {
      v27 = [v14 v15[243]];
      v28 = sub_1D32771A0();

      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D38B45D0](i, v28);
      }

      else
      {
        if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_48:
          v36 = sub_1D3277660();
          goto LABEL_26;
        }

        v29 = *(v28 + 8 * i + 32);
      }

      v30 = v29;

      v31 = [v30 originalLegIndex];
      if ((a5 & 0x8000000000000000) == 0 && v31 == a5)
      {
        [v30 travelDuration];

        v14 = v30;
        goto LABEL_35;
      }
    }

    if (qword_1EC75BE40 != -1)
    {
      goto LABEL_45;
    }

LABEL_22:
    v32 = sub_1D3276F80();
    __swift_project_value_buffer(v32, qword_1EC760710);
    i = a2;
    v28 = v14;
    v20 = sub_1D3276F60();
    v7 = sub_1D32773A0();

    if (!os_log_type_enabled(v20, v7))
    {

      v20 = i;
      goto LABEL_28;
    }

    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v27 = 134218498;
    *(v27 + 1) = a5;
    *(v27 + 6) = 2048;
    v33 = [i v15[243]];
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = v33;
    v35 = sub_1D32771A0();

    if (v35 >> 62)
    {
      goto LABEL_48;
    }

    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

    *(v27 + 14) = v36;

    *(v27 + 11) = 2112;
    *(v27 + 3) = v28;
    *v40 = v14;
    i = v28;
    _os_log_impl(&dword_1D311E000, v20, v7, "Could not find corresponding ETA route leg. Falling back to travel duration from route. Leg index: %ld, route legs count: %ld, etaRoute: %@", v27, 0x20u);
    sub_1D3125FBC(v40, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v40, -1, -1);
    MEMORY[0x1D38B6000](v27, -1, -1);
    v15 = &selRef_initWithPattern_options_error_;
LABEL_28:

LABEL_29:
    v37 = [a2 v15[243]];
    if (!v37)
    {
      break;
    }

    a2 = v37;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v38 = sub_1D32771A0();

    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1D38B45D0](a5, v38);
      goto LABEL_34;
    }

    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
    {
      v39 = *(v38 + 8 * a5 + 32);
LABEL_34:
      v14 = v39;

      [v14 travelDuration];
      goto LABEL_35;
    }

    __break(1u);
LABEL_39:
    ;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  __break(1u);
}

uint64_t sub_1D31270C0(char *a1, char *a2, double a3, uint64_t a4, uint64_t a5)
{
  v75 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v63 - v10;
  v12 = sub_1D3276D30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v73 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v63 - v20;
  sub_1D3276D20();
  sub_1D3276CA0();
  fmod(v22, 60.0);
  sub_1D3276CB0();
  sub_1D312601C(a5, v11, &qword_1EC75C4F0, &qword_1D328B580);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D3125FBC(v11, &qword_1EC75C4F0, &qword_1D328B580);
    (*(v13 + 16))(a1, v21, v12);
    return (*(v13 + 32))(v75, v21, v12);
  }

  v72 = a1;
  v24 = (v13 + 32);
  v25 = *(v13 + 32);
  v25(v19, v11, v12);
  sub_1D3276CC0();
  v27 = round(fabs(v26) / 60.0);
  if (v27 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = a3 / 60.0;
  if (COERCE__INT64(fabs(a3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = v27;
  v30 = v28;
  if (v28 < 11)
  {
    if (v29 <= 0)
    {
      goto LABEL_22;
    }

    v70 = v27;
    v31 = 1;
  }

  else if (v30 < 0x1A)
  {
    if (v29 < 2)
    {
      goto LABEL_22;
    }

    v70 = v27;
    v31 = 2;
  }

  else if (v30 <= 0x28)
  {
    if (v29 < 3)
    {
      goto LABEL_22;
    }

    v70 = v27;
    v31 = 3;
  }

  else
  {
    if (v30 > 0x3C)
    {
      if (v29 >= 5)
      {
        v70 = v27;
        v31 = 5;
        goto LABEL_24;
      }

LABEL_22:
      v25(v72, v19, v12);
      return (v25)(v75, v21, v12);
    }

    if (v29 < 4)
    {
      goto LABEL_22;
    }

    v70 = v27;
    v31 = 4;
  }

LABEL_24:
  v68 = v31;
  v24 = v73;
  if (qword_1EC75BE40 != -1)
  {
LABEL_34:
    swift_once();
  }

  v32 = sub_1D3276F80();
  __swift_project_value_buffer(v32, qword_1EC760710);
  v33 = *(v13 + 16);
  v33(v24, v19, v12);

  v34 = sub_1D3276F60();
  v35 = sub_1D32773B0();

  v69 = v35;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v71 = v12;
    v37 = v36;
    v65 = swift_slowAlloc();
    v76[0] = v65;
    *v37 = 136315906;
    v64 = v34;
    v38 = sub_1D312B9CC();
    v66 = v19;
    v67 = v33;
    v39 = v24;
    v40 = v38;
    v41 = sub_1D3276CD0();
    v42 = [v40 stringFromDate_];

    v43 = sub_1D32770C0();
    v45 = v44;

    v46 = *(v13 + 8);
    v33 = v67;
    v46(v39, v71);
    v47 = sub_1D312BA30(v43, v45, v76);

    *(v37 + 4) = v47;
    *(v37 + 12) = 2080;
    v48 = *(v74 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
    swift_beginAccess();
    v49 = v48;
    v50 = sub_1D3276CD0();
    v51 = [v49 stringFromDate_];

    v52 = sub_1D32770C0();
    v54 = v53;

    v55 = v46;
    v56 = sub_1D312BA30(v52, v54, v76);

    *(v37 + 14) = v56;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v70;
    *(v37 + 32) = 2048;
    *(v37 + 34) = v68;
    v57 = v64;
    _os_log_impl(&dword_1D311E000, v64, v69, "Ignoring target ETA %s. Computed arrival ETA %s is %ld minutes away. Threshold is %ld minutes.", v37, 0x2Au);
    v58 = v65;
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v58, -1, -1);
    v59 = v37;
    v12 = v71;
    MEMORY[0x1D38B6000](v59, -1, -1);

    v46(v66, v12);
  }

  else
  {

    v60 = v24;
    v55 = *(v13 + 8);
    v55(v60, v12);
    v55(v19, v12);
  }

  v61 = v75;
  v62 = v72;
  swift_beginAccess();
  v33(v62, v21, v12);
  v33(v61, v21, v12);
  return (v55)(v21, v12);
}

uint64_t sub_1D31277D8(uint64_t a1)
{
  v2 = sub_1D3276DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75C580, &qword_1D328B730);
    v10 = sub_1D32776D0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D31260CC(&qword_1EC75BFA8, MEMORY[0x1E6969AD0]);
      v18 = sub_1D3277060();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D31260CC(&qword_1EC75BFA0, MEMORY[0x1E6969AD0]);
          v25 = sub_1D32770A0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D3127B00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1D3127B68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v27 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState) location];
    if (v5)
    {
      v6 = v5;
      v7 = *&v4[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes];
      if (v7 >> 62)
      {
        goto LABEL_27;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v9 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
      v10 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

      swift_beginAccess();
      v27 = v10;
      swift_beginAccess();
      if (v8)
      {
        v11 = 0;
        v30 = v7 & 0xFFFFFFFFFFFFFF8;
        v31 = v7 & 0xC000000000000001;
        v28 = v9;
        v29 = v8;
        do
        {
          if (v31)
          {
            v14 = MEMORY[0x1D38B45D0](v11, v7);
            v15 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v11 >= *(v30 + 16))
            {
              __break(1u);
LABEL_27:
              v8 = sub_1D3277660();
              goto LABEL_5;
            }

            v14 = *(v7 + 8 * v11 + 32);

            v15 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }
          }

          v33 = v15;
          v16 = v32;
          sub_1D312601C(&v4[v9], v32, &qword_1EC75C4F0, &qword_1D328B580);
          v17 = sub_1D312596C(v14, v6);
          sub_1D3126114(v17, v16, v18);
          v19 = v9;
          v20 = v6;
          v22 = v21;
          sub_1D3125FBC(v16, &qword_1EC75C4F0, &qword_1D328B580);
          if (v22)
          {
            v12 = v29;
            v23 = [*(v14 + 16) displayETAInfo];
            if (v23)
            {
              v24 = v23;
              v25 = swift_unknownObjectWeakLoadStrong();
              v13 = v33;
              if (v25)
              {
                [v25 remainingTimeUpdater:v4 didUpdateDisplayETAInfo:v24 reason:3];

                swift_unknownObjectRelease();
              }

              else
              {
              }

              v6 = v20;
              v9 = v28;
              goto LABEL_9;
            }

            v6 = v20;
            v9 = v28;
          }

          else
          {

            v6 = v20;
            v12 = v29;
            v9 = v19;
          }

          v13 = v33;
LABEL_9:
          ++v11;
        }

        while (v13 != v12);
      }
    }

    v26 = *&v4[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute];
    *&v4[OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute] = 0;

    sub_1D31295E0();
  }
}

uint64_t sub_1D3127E84(void (*a1)(char **__return_ptr, id *), uint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v16 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v5;
  result = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return result;
  }

  v6 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D3277770();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = &v6[8 * a4];
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((a4 + v11) >= v16 || v11 >= v7)
      {
        goto LABEL_13;
      }

      v17 = *&v12[8 * v11];
      v6 = v17;
      a1(&v18, &v17);
      if (v8)
      {
        goto LABEL_16;
      }

      v8 = 0;

      v6 = v18;
      sub_1D3277750();
      v14 = *(v19 + 16);
      sub_1D3277780();
      sub_1D3277790();
      sub_1D3277760();
      ++v11;
      if (v13 == v7)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  __break(1u);
  return result;
}

unint64_t sub_1D31280CC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, double *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, float a9@<S0>)
{
  v145 = a7;
  v131 = a6;
  LODWORD(v130) = a4;
  v129 = a3;
  v119 = a8;
  v13 = sub_1D3276E00();
  v116 = *(v13 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D3276D70();
  v127 = *(v128 - 8);
  v16 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D3276DC0();
  v135 = *(v18 - 8);
  v136 = v18;
  v19 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D3276B00();
  v137 = *(v21 - 8);
  v22 = *(v137 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v133 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v132 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v134 = &v113 - v27;
  v28 = sub_1D3276D30();
  v146 = *(v28 - 8);
  v147 = v28;
  v29 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C598, &qword_1D328B738);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v113 - v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5A0, &unk_1D328B740);
  v38 = *(*(v139 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v139);
  v118 = &v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v138 = &v113 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v113 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v144 = &v113 - v47;
  v141 = *a1;
  result = [v141 legIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = result;
  sub_1D3126B70(result == a2, v129, v130, a5, result, a9);
  v51 = v50 + *v131;
  *v131 = v51;
  v120 = v49;
  v114 = v13;
  v148 = v21;
  v140 = v44;
  if (v49 == a2 && *(a5 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__stabilizeETA) == 1)
  {
    v52 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__targetArrivalDate;
    swift_beginAccess();
    v53 = a5;
    v54 = a5 + v52;
    v55 = v144;
    sub_1D312601C(v54, v144, &qword_1EC75C4F0, &qword_1D328B580);
    v57 = v146;
    v56 = v147;
  }

  else
  {
    v53 = a5;
    v57 = v146;
    v56 = v147;
    v55 = v144;
    (*(v146 + 56))(v144, 1, 1, v147);
  }

  v113 = *(v31 + 48);
  v125 = v37;
  v124 = v53;
  sub_1D31270C0(v37, &v37[v113], v51, v145, v55);
  sub_1D312601C(v37, v35, &qword_1EC75C598, &qword_1D328B738);
  v58 = *(v31 + 48);
  v59 = *(v57 + 32);
  v131 = (v57 + 32);
  v130 = v59;
  v59(v142, v35, v56);
  v60 = *(v57 + 8);
  v146 = v57 + 8;
  v117 = v60;
  v60(&v35[v58], v56);
  sub_1D3276DA0();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C578, &qword_1D328B728);
  v61 = sub_1D3276DB0();
  v62 = *(v61 - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D328B560;
  v123 = *MEMORY[0x1E6969A58];
  v66 = *(v62 + 104);
  v66(v65 + v64);
  v122 = *MEMORY[0x1E6969A88];
  v66(v65 + v64 + v63);
  v129 = sub_1D31277D8(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1D328B570;
  (v66)(v67 + v64, *MEMORY[0x1E6969A68], v61);
  (v66)(v67 + v64 + v63, *MEMORY[0x1E6969A78], v61);
  (v66)(v67 + v64 + 2 * v63, *MEMORY[0x1E6969A48], v61);
  v68 = v142;
  (v66)(v67 + v64 + 3 * v63, v123, v61);
  (v66)(v67 + v64 + 4 * v63, v122, v61);
  sub_1D31277D8(v67);
  swift_setDeallocating();
  v69 = v124;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v70 = v132;
  v71 = v143;
  sub_1D3276D90();
  v72 = v133;
  v73 = v68;
  v74 = v71;
  sub_1D3276D90();

  v75 = v134;
  sub_1D3276D80();

  v76 = v137;
  v77 = *(v137 + 8);
  v78 = v72;
  v79 = v148;
  v77(v78, v148);
  v80 = v70;
  v81 = v125;
  v133 = v77;
  v77(v80, v79);
  (*(v135 + 8))(v74, v136);
  if (*(v69 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo__enableLogging) == 1 && *(v69 + 24) == 1)
  {
    sub_1D31491D4(v73, v75, v145, v144, v81 + v113, v51);
  }

  v82 = v139;
  v83 = *(v139 + 48);
  sub_1D3125FBC(v81, &qword_1EC75C598, &qword_1D328B738);
  v84 = v140;
  (*(v76 + 32))(v140, v75, v148);
  v130(v84 + v83, v73, v147);
  v85 = [objc_allocWithZone(MNDisplayETALegInfo) init];
  v86 = [v141 destination];
  result = [v86 uniqueID];
  v87 = v138;
  if (!result)
  {
    goto LABEL_26;
  }

  v88 = result;

  v89 = v126;
  sub_1D3276D60();

  v90 = sub_1D3276D40();
  (*(v127 + 8))(v89, v128);
  [v85 setWaypointID_];

  [v85 setLegIndex_];
  sub_1D312601C(v84, v87, &qword_1EC75C5A0, &unk_1D328B740);
  v91 = sub_1D3276AE0();
  v93 = v92;
  result = sub_1D3276AD0();
  if (v94)
  {
    v95 = 0;
  }

  else
  {
    v95 = result;
  }

  v96 = 60 * v95;
  if ((v95 * 60) >> 64 != (60 * v95) >> 63)
  {
    goto LABEL_23;
  }

  if (v93)
  {
    v97 = 0;
  }

  else
  {
    v97 = v91;
  }

  v98 = v96 + v97;
  if (__OFADD__(v96, v97))
  {
    goto LABEL_24;
  }

  v99 = *(v82 + 48);
  v100 = v133;
  result = (v133)(v87, v148);
  if (v98 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v101 = v87 + v99;
  v102 = v147;
  v103 = v84;
  v104 = v117;
  v117(v101, v147);
  [v85 setRemainingMinutes_];
  v105 = v82;
  v106 = v118;
  sub_1D312601C(v103, v118, &qword_1EC75C5A0, &unk_1D328B740);
  v107 = *(v105 + 48);
  v108 = sub_1D3276CD0();
  v104(v106 + v107, v102);
  v100(v106, v148);
  [v85 setEta_];

  v109 = [v141 destination];
  v110 = [v109 timezone];

  if (v110)
  {
    v111 = v115;
    sub_1D3276DE0();

    v110 = sub_1D3276DD0();
    (*(v116 + 8))(v111, v114);
  }

  v112 = v119;
  [v85 setTimeZone_];

  sub_1D3125FBC(v140, &qword_1EC75C5A0, &unk_1D328B740);
  result = sub_1D3125FBC(v144, &qword_1EC75C4F0, &qword_1D328B580);
  *v112 = v85;
  return result;
}

uint64_t sub_1D3128E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D3128F88(void *a1, uint64_t a2)
{
  v5 = sub_1D3276D70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  if ((a2 - 3) <= 1)
  {
    v13 = [*(v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater__navigationSessionState) currentRouteInfo];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 routeID];
      sub_1D3276D60();

      v16 = [a1 routeID];
      sub_1D3276D60();

      LOBYTE(v16) = sub_1D3276D50();
      v17 = *(v6 + 8);
      v17(v10, v5);
      v17(v12, v5);
      if ((v16 & 1) != 0 && (v18 = v2 + OBJC_IVAR___MNDestinationArrivalInfoUpdater_delegate, swift_unknownObjectWeakLoadStrong()))
      {
        v19 = *(v18 + 8);
        ObjectType = swift_getObjectType();
        v21 = [v14 displayETAInfo];
        v22 = [v14 remainingDistanceInfo];
        v23 = [v14 batteryChargeInfo];
        (*(v19 + 16))(v2, v21, v22, v23, ObjectType, v19);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL MNProtocolDeclaresSelector(void *a1, const char *a2)
{
  v3 = a1;
  v4 = 1;
  if (!protocol_getMethodDescription(v3, a2, 1, 1).name)
  {
    v4 = protocol_getMethodDescription(v3, a2, 0, 1).name != 0;
  }

  return v4;
}

void sub_1D31295E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = sub_1D3276D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute;
  [*(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__timerToNextMinute) invalidate];
  v12 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  sub_1D312601C(v1 + v12, v5, &qword_1EC75C4F0, &qword_1D328B580);
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    sub_1D3276D10();
    if (v13(v5, 1, v6) != 1)
    {
      sub_1D3125FBC(v5, &qword_1EC75C4F0, &qword_1D328B580);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  sub_1D3276CA0();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  v16 = 60.0 - fmod(v15, 60.0);
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D3127E7C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3127B00;
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  v20 = [v17 scheduledTimerWithTimeInterval:0 repeats:v19 block:v16];
  _Block_release(v19);
  v21 = *(v1 + v11);
  *(v1 + v11) = v20;
}

uint64_t sub_1D31298E8()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3129920(id *a1, void **a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v8 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v10 = &v33 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720) - 8) + 64);
  v12 = (MEMORY[0x1EEE9AC00])();
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = *a2;
  v20 = [*a1 route];
  v21 = [v20 uniqueRouteID];

  if (v21)
  {
    sub_1D3276D60();

    v22 = *(v5 + 56);
    v22(v18, 0, 1, v4);
  }

  else
  {
    v22 = *(v5 + 56);
    v22(v18, 1, 1, v4);
  }

  v23 = [v19 route];
  v24 = [v23 uniqueRouteID];

  if (v24)
  {
    sub_1D3276D60();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v22(v16, v25, 1, v4);
  v26 = *(v36 + 48);
  sub_1D31254DC(v18, v10);
  sub_1D31254DC(v16, &v10[v26]);
  v27 = *(v5 + 48);
  if (v27(v10, 1, v4) != 1)
  {
    v29 = v35;
    sub_1D31254DC(v10, v35);
    if (v27(&v10[v26], 1, v4) != 1)
    {
      v30 = v34;
      (*(v5 + 32))(v34, &v10[v26], v4);
      sub_1D3125484();
      v28 = sub_1D32770A0();
      v31 = *(v5 + 8);
      v31(v30, v4);
      sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v18, &qword_1EC75C570, &qword_1D328B720);
      v31(v29, v4);
      sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
      return v28 & 1;
    }

    sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
    sub_1D3125FBC(v18, &qword_1EC75C570, &qword_1D328B720);
    (*(v5 + 8))(v29, v4);
    goto LABEL_12;
  }

  sub_1D3125FBC(v16, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v18, &qword_1EC75C570, &qword_1D328B720);
  if (v27(&v10[v26], 1, v4) != 1)
  {
LABEL_12:
    sub_1D3125FBC(v10, &unk_1EC75CDB0, &unk_1D328B750);
    v28 = 0;
    return v28 & 1;
  }

  sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
  v28 = 1;
  return v28 & 1;
}

void sub_1D3129DDC(void *a1, void *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v12 = a1;
    v11 = a2;
    v5 = [v3 observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
    v6 = sub_1D32771A0();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D38B45D0](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            return;
          }

LABEL_10:
          if ([v9 respondsToSelector_])
          {
            [v9 navigationSession:v3 didUpdateDisplayETA:v12 remainingDistance:v11 batteryChargeInfo:a3];
          }

          swift_unknownObjectRelease();
          ++v8;
          if (v10 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = sub_1D3277660();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
  }
}

unint64_t sub_1D312A6FC(void *a1, void *a2)
{
  v4 = [a1 routeMatch];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 step];
  if (!v6)
  {
    v9 = 0;
LABEL_12:

    return v9;
  }

  v7 = v6;
  result = [v7 stepIndex];
  if ((result & 0x8000000000000000) == 0)
  {
    v9 = result;
    if ([a1 state] == 1)
    {
      v10 = [a2 route];
      v11 = [v7 maneuverStartRouteCoordinate];
      v12 = [v5 routeCoordinate];
      if (!GEOPolylineCoordinateIsABeforeB())
      {
        v12 = v11;
      }

      [v10 distanceBetweenRouteCoordinate:v12 andRouteCoordinate:v11];
      v13 = sub_1D32774D0();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [a2 etaRoute];
      [v10 travelDurationForRange:v13 | (v15 << 32) etaRoute:{v17 | (v19 << 32), v20}];

      v5 = v7;
      v7 = v10;
    }

    else
    {
      v20 = v7;
    }

    v5 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D312A900(uint64_t a1, double a2, double a3)
{
  v7 = [v3 observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
  v8 = sub_1D32771A0();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D3277660())
  {
    v10 = 0;
    while ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D38B45D0](v10, v8);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      if ([v11 respondsToSelector_])
      {
        if (a1 < 0)
        {
          goto LABEL_16;
        }

        [v11 navigationSession:v14 currentStepIndex:a1 didUpdateDistanceUntilManeuver:a2 timeUntilManeuver:a3];
      }

      swift_unknownObjectRelease();
      ++v10;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v11 = *(v8 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

uint64_t sub_1D312AAA8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D3277660();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1D3277660();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D312ABA0(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D312ABA0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D3277660();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D3277720();
  *v1 = result;
  return result;
}

uint64_t sub_1D312AC40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D3277660();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D3277660();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D3124958(&qword_1EC75BDF0, &qword_1EC75C368, &qword_1D328AE68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C368, &qword_1D328AE68);
            v9 = sub_1D312CC48(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D312ADF4(void *a1, void *a2)
{
  v4 = sub_1D3276D70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = [a1 routeMatch];
  if (v23)
  {
    v44 = v8;
    v45 = v17;
    v46 = a1;
    v48 = v23;
    v24 = [v23 routeID];
    if (v24)
    {
      v25 = v24;
      sub_1D3276D60();

      v26 = *(v5 + 56);
      v26(v22, 0, 1, v4);
    }

    else
    {
      v26 = *(v5 + 56);
      v26(v22, 1, 1, v4);
    }

    v47 = a2;
    v27 = [a2 routeID];
    sub_1D3276D60();

    v26(v20, 0, 1, v4);
    v28 = *(v9 + 48);
    sub_1D31254DC(v22, v12);
    sub_1D31254DC(v20, &v12[v28]);
    v29 = *(v5 + 48);
    if (v29(v12, 1, v4) == 1)
    {
      sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
      if (v29(&v12[v28], 1, v4) == 1)
      {
        sub_1D3125FBC(v12, &qword_1EC75C570, &qword_1D328B720);
LABEL_18:
        v42 = v48;
        [v48 routeCoordinate];

        return;
      }
    }

    else
    {
      v30 = v45;
      sub_1D31254DC(v12, v45);
      if (v29(&v12[v28], 1, v4) != 1)
      {
        v39 = v44;
        (*(v5 + 32))(v44, &v12[v28], v4);
        sub_1D3125484();
        v40 = sub_1D32770A0();
        v41 = *(v5 + 8);
        v41(v39, v4);
        sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
        v41(v30, v4);
        sub_1D3125FBC(v12, &qword_1EC75C570, &qword_1D328B720);
        a2 = v47;
        if (v40)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      sub_1D3125FBC(v20, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v22, &qword_1EC75C570, &qword_1D328B720);
      (*(v5 + 8))(v30, v4);
    }

    sub_1D3125FBC(v12, &unk_1EC75CDB0, &unk_1D328B750);
    a2 = v47;
LABEL_11:

    a1 = v46;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithCLLocation_];
  if (!v31)
  {
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  [v31 setCourse_];
  v33 = [a2 route];
  v34 = [objc_allocWithZone(MEMORY[0x1E69A2548]) initWithRoute:v33 auditToken:0];

  if (!v34)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v35 = [v34 matchToRouteWithLocation_];
  if (v35)
  {
    v36 = v35;
    [v35 routeCoordinate];
  }

  else
  {
    v37 = *MEMORY[0x1E69A1918];
    v38 = *(MEMORY[0x1E69A1918] + 4);
  }
}

void sub_1D312B39C(void *a1, unsigned int a2, float a3)
{
  v8 = sub_1D3276D70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 route];
  v14 = [v13 legIndexForRouteCoordinate_];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v14;
    v35 = v9;
    v4 = &selRef_initWithPattern_options_error_;
    v15 = [v13 legs];
    if (!v15)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v16 = v15;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v17 = sub_1D32771A0();

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_5;
    }
  }

  v18 = sub_1D3277660();

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  if (v3 >= v18)
  {

    return;
  }

  v19 = [v13 v4[243]];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  v18 = sub_1D32771A0();

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v21 = MEMORY[0x1D38B45D0](v3, v18);
    goto LABEL_10;
  }

  if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(v18 + 8 * v3 + 32);
LABEL_10:
  v22 = v21;

  [v13 distanceToEndFromRouteCoordinate_];
  v24 = v23;
  [v22 endRouteCoordinate];
  v25 = sub_1D32774D0();
  [v13 distanceForRange_];
  v30 = v29;
  v31 = [v13 uniqueRouteID];
  if (v31)
  {
    v32 = v31;
    sub_1D3276D60();

    v33 = sub_1D3276D40();
    (*(v35 + 8))(v12, v8);
  }

  else
  {
    v33 = 0;
  }

  [objc_allocWithZone(MNRouteDistanceInfo) initWithDistanceRemainingToEndOfLeg:v3 distanceRemainingToEndOfRoute:v33 forLegIndex:v30 forRouteID:v24];
}

id sub_1D312B6D0(void *a1, unint64_t a2, float a3)
{
  v6 = sub_1D3276D70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 route];
  v12 = [v11 legIndexForRouteCoordinate_];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    a2 = v12;
    result = [v11 legs];
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v14 = result;
    sub_1D3126084(0, &qword_1EC75BD90, 0x1E69A1C80);
    v15 = sub_1D32771A0();

    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      goto LABEL_5;
    }
  }

  v16 = sub_1D3277660();

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  if (a2 >= v16)
  {
LABEL_12:

    return 0;
  }

  v17 = [v11 lastEVStepInLegWithIndex_];
  v18 = [v17 evInfo];

  v19 = [v11 lastEVStep];
  v20 = [v19 evInfo];

  if (!v18)
  {

    return 0;
  }

  if (!v20)
  {

    goto LABEL_12;
  }

  v21 = [v18 remainingBatteryPercentage];
  v22 = [v20 remainingBatteryCharge];
  v23 = [v11 uniqueRouteID];
  if (v23)
  {
    v24 = v23;
    sub_1D3276D60();

    v25 = sub_1D3276D40();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(MNBatteryChargeInfo) initWithBatteryChargeRemainingAtEndOfLeg:a2 batteryChargeRemainingAtEndOfRoute:v25 forLegIndex:v21 forRouteID:v22];

  return v26;
}

id sub_1D312B9CC()
{
  v1 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage___dateFormatter);
  }

  else
  {
    sub_1D314A110(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D312BA30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D312BAFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D312BEE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D312BAFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D312BC08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D3277730();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D312BC08(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D312BC54(a1, a2);
  sub_1D312BDFC(&unk_1F4EB11E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D312BC54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D312BD84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D3277730();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D3277150();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D312BD84(v10, 0);
        result = sub_1D32776E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1D312BD84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C3E8, &unk_1D328AED0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D312BDFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D31415D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D312BEE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void MNOfflineCoordinator.navigationSessionState.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState;
  v5 = *&v1[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__navigationSessionState];
  if (v5 && (v6 = [v5 currentRouteInfo]) != 0)
  {
    v7 = v6;
    v8 = [v6 route];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 currentRouteInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 route];
  }

  else
  {
    v11 = 0;
  }

  [a1 copy];
  sub_1D3277610();
  swift_unknownObjectRelease();
  sub_1D3126084(0, &unk_1EC75BD70, off_1E8428DC0);
  v12 = swift_dynamicCast();
  v13 = v72;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *&v2[v4];
  *&v2[v4] = v13;

  if (!v11)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v28 = sub_1D3276F80();
    __swift_project_value_buffer(v28, qword_1EC760758);
    v11 = sub_1D3276F60();
    v29 = sub_1D3277390();
    if (os_log_type_enabled(v11, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D311E000, v11, v29, "Got a nil route, which should not happen.", v30, 2u);
      MEMORY[0x1D38B6000](v30, -1, -1);
    }

    goto LABEL_43;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

  v15 = v8;
  if (([v15 isOfflineRoute] & 1) != 0 || (-[NSObject isOfflineRoute](v11, sel_isOfflineRoute) & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = [objc_opt_self() shared];
  v17 = [v16 state];

  if (v17 == 2)
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v18 = sub_1D3276F80();
    __swift_project_value_buffer(v18, qword_1EC760758);
    v19 = sub_1D3276F60();
    v20 = sub_1D32773B0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_28;
    }

    bufa = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *bufa = 136315138;
    v21 = GEOOfflineModeAsString();
    v22 = sub_1D32770C0();
    v24 = v23;

    v25 = sub_1D312BA30(v22, v24, v73);

    v26 = bufa;
    *(bufa + 4) = v25;
  }

  else
  {
    if (qword_1EC75BE58 != -1)
    {
      swift_once();
    }

    v31 = sub_1D3276F80();
    __swift_project_value_buffer(v31, qword_1EC760758);
    v19 = sub_1D3276F60();
    v20 = sub_1D32773B0();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_28;
    }

    bufb = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v73[0] = v70;
    *bufb = 136315138;
    v32 = GEOOfflineModeAsString();
    v33 = sub_1D32770C0();
    v35 = v34;

    v36 = sub_1D312BA30(v33, v35, v73);

    v26 = bufb;
    *(bufb + 4) = v36;
  }

  _os_log_impl(&dword_1D311E000, v19, v20, v27, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v70);
  MEMORY[0x1D38B6000](v70, -1, -1);
  MEMORY[0x1D38B6000](v26, -1, -1);
LABEL_28:

LABEL_29:
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v37 = v15;
  v38 = v11;
  v39 = sub_1D32775F0();

  if ((v39 & 1) == 0)
  {
LABEL_30:
    sub_1D3155224([a1 lastRerouteReason]);
  }

  if ([a1 navigationState] == 5)
  {
    goto LABEL_43;
  }

  v40 = &v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState];
  if (v2[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__pendingRerouteFinishedState + 4])
  {
    goto LABEL_43;
  }

  v41 = *v40;
  if (qword_1EC75BE58 != -1)
  {
    swift_once();
  }

  v42 = sub_1D3276F80();
  __swift_project_value_buffer(v42, qword_1EC760758);
  v43 = v2;
  v44 = sub_1D3276F60();
  v45 = sub_1D32773B0();

  if (os_log_type_enabled(v44, v45))
  {
    buf = v44;
    v46 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v73[0] = v66;
    *v46 = 136315650;
    v71 = v41;
    v47 = GEOOfflineStateAsString();
    v48 = sub_1D32770C0();
    v50 = v49;

    v51 = sub_1D312BA30(v48, v50, v73);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v53 = *&v43[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
    if (v53)
    {
      v54 = (*(*v53 + 104))(v52);
      v56 = v55;
    }

    else
    {
      v56 = 0xE700000000000000;
      v54 = 0x6E776F6E6B6E55;
    }

    v57 = sub_1D312BA30(v54, v56, v73);

    *(v46 + 14) = v57;
    *(v46 + 22) = 2080;
    v58 = [objc_opt_self() shared];
    [v58 state];

    v59 = GEOOfflineStateAsString();
    v60 = sub_1D32770C0();
    v62 = v61;

    v63 = sub_1D312BA30(v60, v62, v73);

    *(v46 + 24) = v63;
    _os_log_impl(&dword_1D311E000, buf, v45, "We have a pending state and are no longer in the rerouting state. Attempting to apply: %s, current state: %s, offline state: %s", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B6000](v66, -1, -1);
    MEMORY[0x1D38B6000](v46, -1, -1);

    v41 = v71;
  }

  else
  {
  }

  *v40 = 0;
  *(v40 + 4) = 1;
  v64 = *&v43[OBJC_IVAR____TtC10Navigation20MNOfflineCoordinator__currentState];
  if (v64)
  {
    v65 = *(*v64 + 88);

    v65(v41);

LABEL_43:

    return;
  }

  __break(1u);
}

void sub_1D312CBA0()
{
  v1 = OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher;
  v2 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10NavigationP33_80A287A008610D6B3D40C57F94ED3F2424MNRouteRemainingTimeInfo____lazy_storage____routeMatcher);
LABEL_5:
    v7 = v2;
    return;
  }

  v4 = [*(v0 + 16) route];
  v5 = [objc_allocWithZone(MEMORY[0x1E69A2548]) initWithRoute:v4 auditToken:0];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void (*sub_1D312CC48(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38B45D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D312CCC8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D312CEB4()
{
  v72 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + 600)) + 0xD8))())
  {
    v1 = *(v0 + 584);
    if (*(v1 + 8))
    {
      v2 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v2;
      *(v0 + 224) = *(v0 + 80);
      v3 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v3;
      goto LABEL_4;
    }

    v50 = (v0 + 232);
    v51 = *(v0 + 600) + OBJC_IVAR___MNETAUpdateRequester_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(v0 + 600);
      v53 = *(v0 + 576);
      v54 = *(v51 + 8);
      ObjectType = swift_getObjectType();
      (*(v54 + 8))(&v67, v52, v53, ObjectType, v54);
      swift_unknownObjectRelease();
      if (*(&v67 + 1))
      {
        v56 = v70;
        *(v0 + 192) = v69;
        *(v0 + 208) = v56;
        *(v0 + 224) = v71;
        v57 = v68;
        *(v0 + 160) = v67;
        *(v0 + 176) = v57;
        v1 = *(v0 + 584);
LABEL_4:
        v4 = *(v0 + 160);
        *(v0 + 104) = *(v0 + 176);
        v5 = *(v0 + 208);
        *(v0 + 120) = *(v0 + 192);
        *(v0 + 136) = v5;
        v6 = *(v0 + 600);
        v7 = *(v0 + 872);
        v8 = *(v0 + 576);
        *(v0 + 152) = *(v0 + 224);
        *(v0 + 88) = v4;
        v9 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__auditToken);
        v10 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
        v11 = objc_allocWithZone(v10);
        v12 = &v11[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
        *v12 = 0u;
        *(v12 + 1) = 0u;
        *&v11[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken] = v9;
        v13 = v9;
        sub_1D312601C(v1, v0 + 304, &qword_1EC75C5D8, &qword_1D328B950);
        *(v0 + 560) = v11;
        *(v0 + 568) = v10;
        v14 = objc_msgSendSuper2((v0 + 560), sel_init);
        *(v0 + 688) = v14;
        sub_1D3126084(0, &qword_1EC75BD68, 0x1E69A1D48);
        v15 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__requestingAppIdentifier);
        v16 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__requestingAppIdentifier + 8);
        v17 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__tripOrigin);
        v18 = *(v6 + OBJC_IVAR___MNETAUpdateRequester__tripOrigin + 8);

        sub_1D312D6C8(v17, v18, v15, v16, 2uLL);
        v20 = v19;
        *(v0 + 696) = v19;
        v21 = swift_allocObject();
        *(v0 + 704) = v21;
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v0 + 712) = v22;
        *(v22 + 16) = v21;
        *(v22 + 40) = *(v0 + 104);
        *(v22 + 56) = *(v0 + 120);
        *(v22 + 72) = *(v0 + 136);
        v23 = *(v0 + 152);
        *(v22 + 24) = *(v0 + 88);
        *(v22 + 88) = v23;
        *(v22 + 96) = v8;
        if (v7)
        {
          sub_1D312601C(v0 + 160, v0 + 376, &qword_1EC75C5D8, &qword_1D328B950);

          v24 = swift_task_alloc();
          *(v0 + 744) = v24;
          *v24 = v0;
          v24[1] = sub_1D3178870;
          v25 = *(v0 + 576);

          return sub_1D31799A4(v20, v21, v0 + 88, v25);
        }

        else
        {
          v38 = *(v0 + 648);
          v39 = *(v0 + 592);
          v40 = *(v0 + 576);
          v41 = v22;
          sub_1D312601C(v0 + 160, v0 + 448, &qword_1EC75C5D8, &qword_1D328B950);

          sub_1D3276D10();
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          *(v0 + 720) = v43;
          v43[2] = v42;
          v43[3] = &unk_1D328CBE8;
          v43[4] = v41;
          v43[5] = v20;
          v44 = swift_task_alloc();
          *(v0 + 728) = v44;
          v44[2] = v14;
          v44[3] = v38;
          v44[4] = v40;
          v44[5] = v20;
          v44[6] = v39;
          v44[7] = sub_1D317F324;
          v44[8] = v43;
          v45 = *(MEMORY[0x1E69E88D0] + 4);

          v46 = v20;
          v47 = swift_task_alloc();
          *(v0 + 736) = v47;
          *v47 = v0;
          v47[1] = sub_1D312EBE4;
          v48 = *(v0 + 680);
          v49 = *(v0 + 656);

          return MEMORY[0x1EEE6DDE0](v48, 0, 0, 0xD000000000000047, 0x80000001D32903C0, sub_1D312E1E8, v44, v49);
        }
      }

      v58 = v70;
      *(v0 + 264) = v69;
      *(v0 + 280) = v58;
      *(v0 + 296) = v71;
      v59 = v68;
      *v50 = v67;
      *(v0 + 248) = v59;
    }

    else
    {
      *(v0 + 296) = 0;
      *(v0 + 264) = 0u;
      *(v0 + 280) = 0u;
      *v50 = 0u;
      *(v0 + 248) = 0u;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v60 = sub_1D3276F80();
    __swift_project_value_buffer(v60, qword_1EC760740);
    v61 = sub_1D3276F60();
    v62 = sub_1D3277390();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1D311E000, v61, v62, "Aborting ETA update request because we have no navigation info.", v63, 2u);
      MEMORY[0x1D38B6000](v63, -1, -1);
    }

    v64 = *(v0 + 648);
    v65 = *(v0 + 608);
    v66 = *(v0 + 576);

    sub_1D3276D10();
    sub_1D3276A30();
    v30 = sub_1D317EA60(v66, 2, 3u, v65);
    sub_1D3125FBC(v0 + 232, &qword_1EC75C5D8, &qword_1D328B950);
  }

  else
  {
    v27 = *(v0 + 648);
    v28 = *(v0 + 608);
    v29 = *(v0 + 576);
    sub_1D3276D10();
    sub_1D3276A30();
    v30 = sub_1D317EA60(v29, 4, 3u, v28);
  }

  v31 = *(v0 + 680);
  v32 = *(v0 + 672);
  v33 = *(v0 + 648);
  v34 = *(v0 + 624);
  v35 = *(v0 + 616);
  v36 = *(v0 + 608);

  v37 = *(v0 + 8);

  return v37(v30);
}

uint64_t sub_1D312D5A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  if (v2)
  {

    v3 = *(v0 + 72);
    if (v3 >> 60 != 15)
    {
      sub_1D31422C8(*(v0 + 64), v3);
    }

    v4 = *(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D312D614()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D312D680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

void sub_1D312D6C8(double a1, double a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedPlatform];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 clientCapabilities];

    [v12 setClientCapabilities_];
    v16 = [objc_allocWithZone(MEMORY[0x1E69A1C20]) init];
    v17 = v16;
    if (v16)
    {
      [v16 setIncludeTravelTimeAggressive_];
      [v17 setIncludeTravelTimeConservative_];
      [v17 setIncludeTravelTimeEstimate_];
      [v17 setExcludeGuidance_];
    }

    [v12 setCommonOptions_];

    v18 = [objc_opt_self() sharedInstance];
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D312DA98;
    *(v21 + 24) = v20;
    v26[4] = sub_1D312DA70;
    v26[5] = v21;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1D312DA3C;
    v26[3] = &block_descriptor_141;
    v22 = _Block_copy(v26);
    v23 = v12;

    [v19 shortSessionValues_];
    _Block_release(v22);

    if (a4)
    {
      v24 = sub_1D32770B0();
    }

    else
    {
      v24 = 0;
    }

    [v23 setRequestingAppId_];

    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a5))
    {
      [v23 setMaxAlternateRouteCount_];
      v25 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate_];
      [v23 setTripOrigin_];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1D312D9F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D312DA70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1D312DAA0(uint64_t a1, uint64_t a2, int a3, id a4, double a5, double a6, double a7, double a8)
{
  [a4 setSessionID_];
  result = [a4 setSessionRelativeTimestamp_];
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a8 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a8 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [a4 setSessionCreateHour_];
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D312DB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D312DBEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *a1, void *a2), uint64_t a7, double a8)
{
  v47 = a6;
  v48 = a7;
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v46 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = sub_1D3276D30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v49 = a2;
  swift_unknownObjectWeakInit();
  (*(v16 + 16))(v18, v43, v15);
  (*(v11 + 16))(v14, v46, v10);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + *(v11 + 80) + v20) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  (*(v16 + 32))(v22 + v20, v18, v15);
  v23 = *(v11 + 32);
  v46 = v22;
  v23(v22 + v21, v14, v10);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v24 = sub_1D3276F80();
  __swift_project_value_buffer(v24, qword_1EC760740);
  v25 = sub_1D3276F60();
  v26 = sub_1D32773B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D311E000, v25, v26, "Starting opportunistic ETA update request.", v27, 2u);
    MEMORY[0x1D38B6000](v27, -1, -1);
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69A1C50]) init];
  v29 = v49;
  v30 = &v49[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
  v31 = *&v49[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
  v32 = *&v49[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 8];
  v33 = *&v49[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 16];
  v34 = *&v49[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 24];
  *v30 = v44;
  *(v30 + 1) = v28;
  v35 = v45;
  *(v30 + 2) = MEMORY[0x1E69E7CC0];
  *(v30 + 3) = v35;
  v36 = v35;
  v37 = v28;
  sub_1D312E1FC(v31, v32, v33, v34);
  v38 = *&v29[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__auditToken];
  v55 = v47;
  v56 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D317DF6C;
  v54 = &block_descriptor_73;
  v39 = _Block_copy(&aBlock);

  v55 = sub_1D312E2E8;
  v56 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D312E254;
  v54 = &block_descriptor_76;
  v40 = _Block_copy(&aBlock);

  v41 = type metadata accessor for ETAUpdateRequester.AsyncETARequester();
  v50.receiver = v29;
  v50.super_class = v41;
  objc_msgSendSuper2(&v50, sel_sendConditionalETATrafficUpdateRequest_timeWindowDuration_auditToken_throttleToken_willSendRequestHandler_finishedHandler_, v36, v38, 0, v39, v40, a8);
  _Block_release(v40);
  _Block_release(v39);
}

uint64_t sub_1D312E08C()
{
  v1 = sub_1D3276D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

void sub_1D312E1FC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_1D312E25C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1D312E2E8(void *a1, void *a2)
{
  v5 = *(sub_1D3276D30() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1D312E3DC(a1, a2, v9, v2 + v6, v10);
}

void sub_1D312E3DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v51 = a4;
  v7 = sub_1D3276D30();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v45 - v17);
  if (qword_1EC75BE50 != -1)
  {
    swift_once();
  }

  v19 = sub_1D3276F80();
  __swift_project_value_buffer(v19, qword_1EC760740);
  v20 = sub_1D3276F60();
  v21 = sub_1D3277380();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a2;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D311E000, v20, v21, "Opportunistic request finished handler.", v23, 2u);
    v24 = v23;
    a2 = v22;
    MEMORY[0x1D38B6000](v24, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    if (a2)
    {
      v55 = a2;
      v27 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
      sub_1D3126084(0, &qword_1EC75C350, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v28 = v54;
        if ([v54 code] == -2)
        {
          v29 = sub_1D3276F60();
          v30 = sub_1D3277380();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_1D311E000, v29, v30, "Got error callback but request was cancelled. Ignoring.", v31, 2u);
            MEMORY[0x1D38B6000](v31, -1, -1);
          }

          return;
        }
      }
    }

    v46 = a2;
    v47 = a1;
    v32 = &v26[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest];
    v33 = *&v26[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequesterP33_430CF049DBFA51AC425BF40B0BA2189917AsyncETARequester__pendingRequest + 8];
    v45 = v26;
    if (v33)
    {
      v34 = *(v32 + 2);
      v35 = *(v32 + 3);
      v36 = *v32;
      *v32 = 0u;
      *(v32 + 1) = 0u;
      (*(v48 + 16))(v12, v51, v49);
      v37 = v33;

      v38 = v35;
      sub_1D3276D10();
      v39 = v18 + v13[5];
      sub_1D3276A20();

      *v18 = v36;
      v40 = (v18 + v13[6]);
      *v40 = v36;
      v40[1] = v33;
      v40[2] = v34;
      v40[3] = v35;
      v42 = v46;
      v41 = v47;
      *(v18 + v13[7]) = v47;
      *(v18 + v13[8]) = v42;
      sub_1D312E8CC(v18, v52);
      v43 = v42;
      v44 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
      sub_1D3277230();

      sub_1D312EB88(v18);
    }

    else
    {
      sub_1D32777B0();
      __break(1u);
    }
  }
}

uint64_t sub_1D312E894(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D312E8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D312EB88(uint64_t a1)
{
  v2 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D312EBE4()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 728);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D312ED84, 0, 0);
}

uint64_t sub_1D312ECFC(uint64_t a1, int a2)
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

uint64_t sub_1D312ED44(uint64_t result, int a2, int a3)
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

uint64_t sub_1D312ED84()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];

  (*(v6 + 8))(v5, v7);

  v8 = v0[85];
  v9 = v0[82];
  v10 = *(v8 + *(v9 + 32));
  v0[99] = v10;
  if (v10 && (v11 = (v8 + *(v9 + 24)), v12 = v11[1], (v0[100] = v12) != 0))
  {
    v13 = v11[3];
    v0[101] = v13;
    v14 = v11[2];
    v0[102] = v14;
    v15 = *v11;
    v16 = v10;
    sub_1D3130A0C(v15, v12, v14, v13);
    v17 = swift_task_alloc();
    v0[103] = v17;
    *v17 = v0;
    v17[1] = sub_1D31336A0;
    v18 = v0[78];
    v19 = v0[75];

    return sub_1D317AEE8(v18, v15, v12, v14, v13, v10);
  }

  else
  {
    v21 = v0[75];
    v22 = sub_1D312F05C(v8);
    v0[104] = v22;
    v23 = swift_allocObject();
    v0[105] = v23;
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = v22;
    v25 = v21;
    v26 = MNNavigationQueue();
    v0[106] = v26;
    if (v26)
    {
      v34 = v26;
      v35 = swift_task_alloc();
      v0[107] = v35;
      v35[2] = v34;
      v35[3] = sub_1D31311B0;
      v35[4] = v23;
      v36 = *(MEMORY[0x1E69E88D0] + 4);
      v26 = swift_task_alloc();
      v0[108] = v26;
      *v26 = v0;
      v26[1] = sub_1D317918C;
      v31 = sub_1D3130CE8;
      v30 = 0x80000001D32903A0;
      v33 = MEMORY[0x1E69E7CA8] + 8;
      v27 = 0;
      v28 = 0;
      v29 = 0xD000000000000010;
      v32 = v35;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DDE0](v26, v27, v28, v29, v30, v31, v32, v33);
  }
}

uint64_t sub_1D312F01C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D312F05C(uint64_t *a1)
{
  v112 = sub_1D3276D70();
  v114 = *(v112 - 8);
  v2 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v4 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v6 = &v102 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v102 - v15;
  v17 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D312E8CC(a1, v20);
  v21 = *(a1 + v17[7]);
  sub_1D312FE88(v21, *(a1 + v17[8]));
  if (v23 != 0xFF)
  {
    v24 = v22;
    v25 = v23;
    v26 = sub_1D3130814(v22, v23, 1, v20);
    sub_1D317F8C8(v24, v25);
LABEL_44:
    sub_1D312EB88(v20);
    return v26;
  }

  v107 = v14;
  v108 = v16;
  v106 = v11;
  v109 = v6;
  v110 = v20;
  if (!v21 || (v27 = (a1 + v17[6]), (v28 = v27[1]) == 0))
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v44 = sub_1D3276F80();
    __swift_project_value_buffer(v44, qword_1EC760740);
    v45 = sub_1D3276F60();
    v46 = sub_1D32773A0();
    v47 = os_log_type_enabled(v45, v46);
    v20 = v110;
    if (v47)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D311E000, v45, v46, "Got a successful response but missing request information.", v48, 2u);
      MEMORY[0x1D38B6000](v48, -1, -1);
    }

    v26 = sub_1D3130814(0, 1, 1, v20);
    goto LABEL_44;
  }

  v29 = v21;
  v30 = *v27;
  v32 = v27[2];
  v31 = v27[3];
  v33 = v115;
  v34 = &v115[OBJC_IVAR___MNETAUpdateRequester_delegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v49 = v29;
    v50 = v30;
    v35 = v28;
    v51 = v31;
    sub_1D3130A0C(v50, v28, v32, v31);
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
LABEL_16:
    v20 = v110;
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v52 = sub_1D3276F80();
    __swift_project_value_buffer(v52, qword_1EC760740);
    v53 = sub_1D3276F60();
    v54 = sub_1D32773B0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D311E000, v53, v54, "Got a successful response but we got no navigation info. Ignoring response.", v55, 2u);
      MEMORY[0x1D38B6000](v55, -1, -1);
    }

    v26 = sub_1D3130814(2, 3, 1, v20);

    sub_1D3125FBC(&v121, &qword_1EC75C5D8, &qword_1D328B950);
    goto LABEL_44;
  }

  v35 = v28;
  v36 = *(v34 + 1);
  ObjectType = swift_getObjectType();
  v37 = *a1;
  v103 = *(v36 + 8);
  v102 = v29;
  v105 = v32;
  sub_1D3130A0C(v30, v35, v32, v31);
  v103(v126, v33, v37, ObjectType, v36);
  v118 = v126[2];
  v119 = v126[3];
  v120 = v127;
  v117 = v126[1];
  v116 = v126[0];
  swift_unknownObjectRelease();
  if (!*(&v126[0] + 1))
  {
    v51 = v31;
    v123 = v118;
    v124 = v119;
    v125 = v120;
    v121 = v116;
    v122 = v117;
    goto LABEL_16;
  }

  v115 = v31;
  v38 = [*(&v126[0] + 1) route];
  v39 = v35;
  v40 = [v38 uniqueRouteID];
  v103 = v35;
  ObjectType = v38;
  if (v40)
  {
    v41 = v108;
    v42 = v40;
    sub_1D3276D60();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v108;
  }

  v56 = v107;
  v57 = v113;
  v58 = v114;
  v59 = *(v114 + 56);
  v60 = v112;
  v59(v41, v43, 1, v112);
  v61 = [v39 uniqueRouteID];
  sub_1D3276D60();

  v59(v56, 0, 1, v60);
  v62 = *(v57 + 48);
  v63 = v109;
  sub_1D312601C(v41, v109, &qword_1EC75C570, &qword_1D328B720);
  v64 = v60;
  v65 = v58;
  sub_1D312601C(v56, v63 + v62, &qword_1EC75C570, &qword_1D328B720);
  v66 = *(v58 + 48);
  if (v66(v63, 1, v64) == 1)
  {
    sub_1D3125FBC(v56, &qword_1EC75C570, &qword_1D328B720);
    v67 = v109;
    sub_1D3125FBC(v41, &qword_1EC75C570, &qword_1D328B720);
    v68 = v66(v67 + v62, 1, v64);
    v69 = ObjectType;
    if (v68 == 1)
    {
      sub_1D3125FBC(v67, &qword_1EC75C570, &qword_1D328B720);
      v20 = v110;
      v70 = v115;
      v71 = v102;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  v72 = v106;
  sub_1D312601C(v63, v106, &qword_1EC75C570, &qword_1D328B720);
  if (v66(v63 + v62, 1, v64) == 1)
  {
    sub_1D3125FBC(v107, &qword_1EC75C570, &qword_1D328B720);
    v67 = v109;
    sub_1D3125FBC(v108, &qword_1EC75C570, &qword_1D328B720);
    (*(v65 + 8))(v72, v64);
    v69 = ObjectType;
LABEL_27:
    sub_1D3125FBC(v67, &unk_1EC75CDB0, &unk_1D328B750);
    v20 = v110;
    v70 = v115;
    v71 = v102;
LABEL_28:
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v73 = sub_1D3276F80();
    __swift_project_value_buffer(v73, qword_1EC760740);
    v74 = sub_1D3276F60();
    v75 = sub_1D32773B0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D311E000, v74, v75, "Got a successful response but the current route is different from the one in the request. Ignoring response.", v76, 2u);
      MEMORY[0x1D38B6000](v76, -1, -1);
    }

    v77 = 3;
    goto LABEL_43;
  }

  v78 = v111;
  (*(v65 + 32))(v111, v63 + v62, v64);
  sub_1D3125484();
  v79 = sub_1D32770A0();
  v80 = *(v65 + 8);
  v80(v78, v64);
  sub_1D3125FBC(v107, &qword_1EC75C570, &qword_1D328B720);
  sub_1D3125FBC(v108, &qword_1EC75C570, &qword_1D328B720);
  v80(v72, v64);
  sub_1D3125FBC(v63, &qword_1EC75C570, &qword_1D328B720);
  v20 = v110;
  v69 = ObjectType;
  v70 = v115;
  v71 = v102;
  if ((v79 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  if (![v39 updateForResponse:v71 route:v69])
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v91 = sub_1D3276F80();
    __swift_project_value_buffer(v91, qword_1EC760740);
    v92 = sub_1D3276F60();
    v93 = sub_1D32773A0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1D311E000, v92, v93, "Got a successful response but we somehow failed to update the ETA route. Check the GEOComposedETARoute category logs.", v94, 2u);
      MEMORY[0x1D38B6000](v94, -1, -1);
    }

    v77 = 1;
LABEL_43:
    v26 = sub_1D3130814(v77, 3, 1, v20);

    sub_1D3125FBC(v126, &qword_1EC75C5D8, &qword_1D328B950);

    goto LABEL_44;
  }

  v81 = [v70 routeAttributes];
  if (v81)
  {
    v82 = v81;
    v83 = v71;
    v84 = [v69 styleAttributes];
    v85 = objc_allocWithZone(MEMORY[0x1E69A2538]);
    sub_1D3126084(0, &qword_1EC75BD88, 0x1E69A1CC8);
    v86 = sub_1D3277190();
    v87 = [v85 initWithWaypoints:v86 routeAttributes:v82 etauResponse:v83 styleAttributes:v84];

    v88 = [v87 allETAUAlternateRouteInfos];
    if (v88)
    {
      v89 = v88;
      sub_1D3126084(0, &qword_1EC75BDA8, off_1E8428C20);
      v90 = sub_1D32771A0();
    }

    else
    {
      v90 = 0;
    }

    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v96 = sub_1D3276F80();
    __swift_project_value_buffer(v96, qword_1EC760740);

    v97 = sub_1D3276F60();
    v98 = sub_1D32773B0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      if (v90)
      {
        if (v90 >> 62)
        {
          v100 = sub_1D3277660();
        }

        else
        {
          v100 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v100 = 0;
      }

      *(v99 + 4) = v100;

      _os_log_impl(&dword_1D311E000, v97, v98, "Got a successful ETA update response with %ld alternate routes.", v99, 0xCu);
      MEMORY[0x1D38B6000](v99, -1, -1);
    }

    else
    {
    }

    v101 = v39;
    v26 = sub_1D3130814(v103, v90, 0, v20);

    sub_1D3125FBC(v126, &qword_1EC75C5D8, &qword_1D328B950);
    goto LABEL_44;
  }

  result = sub_1D312EB88(v20);
  __break(1u);
  return result;
}

void sub_1D312FE88(void *a1, id a2)
{
  if (!a2)
  {
    if (a1)
    {
      v13 = a1;
      if ([v13 status])
      {
        if (qword_1EC75BE50 != -1)
        {
          swift_once();
        }

        v14 = sub_1D3276F80();
        __swift_project_value_buffer(v14, qword_1EC760740);
        v15 = v13;
        v16 = sub_1D3276F60();
        v17 = sub_1D3277390();
        if (!os_log_type_enabled(v16, v17))
        {

          return;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v56[0] = v19;
        *v18 = 136315138;
        v20 = [v15 status];
        if (v20 <= 19)
        {
          if (v20 > 1)
          {
            if (v20 == 2)
            {
              v21 = @"STATUS_INCOMPLETE";
              v47 = @"STATUS_INCOMPLETE";
              goto LABEL_53;
            }

            if (v20 == 5)
            {
              v21 = @"INVALID_REQUEST";
              v44 = @"INVALID_REQUEST";
              goto LABEL_53;
            }
          }

          else
          {
            if (!v20)
            {
              v21 = @"STATUS_SUCCESS";
              v46 = @"STATUS_SUCCESS";
              goto LABEL_53;
            }

            if (v20 == 1)
            {
              v21 = @"STATUS_FAILED";
              v43 = @"STATUS_FAILED";
              goto LABEL_53;
            }
          }
        }

        else if (v20 <= 39)
        {
          if (v20 == 20)
          {
            v21 = @"FAILED_NO_RESULT";
            v49 = @"FAILED_NO_RESULT";
            goto LABEL_53;
          }

          if (v20 == 30)
          {
            v21 = @"NEEDS_REFINEMENT";
            v45 = @"NEEDS_REFINEMENT";
            goto LABEL_53;
          }
        }

        else
        {
          switch(v20)
          {
            case '(':
              v21 = @"FAILED_NOT_AUTHORIZED";
              v48 = @"FAILED_NOT_AUTHORIZED";
              goto LABEL_53;
            case '2':
              v21 = @"STATUS_DEDUPED";
              v50 = @"STATUS_DEDUPED";
              goto LABEL_53;
            case '<':
              v21 = @"VERSION_MISMATCH";
              v22 = @"VERSION_MISMATCH";
              goto LABEL_53;
          }
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
LABEL_53:
        v51 = v21;

        if (v51)
        {
          v52 = sub_1D32770C0();
          v54 = v53;

          v55 = sub_1D312BA30(v52, v54, v56);

          *(v18 + 4) = v55;
          _os_log_impl(&dword_1D311E000, v16, v17, "Got an ETA update response with error code: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x1D38B6000](v19, -1, -1);
          MEMORY[0x1D38B6000](v18, -1, -1);
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v32 = sub_1D3276F80();
      __swift_project_value_buffer(v32, qword_1EC760740);
      v13 = sub_1D3276F60();
      v33 = sub_1D3277390();
      if (os_log_type_enabled(v13, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D311E000, v13, v33, "Got an ETA request callback with no response or error.", v34, 2u);
        MEMORY[0x1D38B6000](v34, -1, -1);
      }
    }

    return;
  }

  v56[2] = a2;
  v3 = a2;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
  if (swift_dynamicCast())
  {
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = a2;
    v7 = sub_1D3276F60();
    v8 = sub_1D3277390();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1D311E000, v7, v8, "Error requesting an ETA update: %@", v9, 0xCu);
      sub_1D3125FBC(v10, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v10, -1, -1);
      MEMORY[0x1D38B6000](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v23 = sub_1D3276BE0();
    v24 = [v23 _geo_etaTrafficUpdateErrorInfo];

    if (v24)
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v25 = sub_1D3276F80();
      __swift_project_value_buffer(v25, qword_1EC760740);
      v26 = v24;
      v27 = sub_1D3276F60();
      v28 = sub_1D3277390();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v24;
        v31 = v26;
        _os_log_impl(&dword_1D311E000, v27, v28, "Error requesting an ETA update: %@", v29, 0xCu);
        sub_1D3125FBC(v30, &qword_1EC75C5B0, &unk_1D328C300);
        MEMORY[0x1D38B6000](v30, -1, -1);
        MEMORY[0x1D38B6000](v29, -1, -1);
      }
    }

    else
    {
      if (qword_1EC75BE50 != -1)
      {
        swift_once();
      }

      v35 = sub_1D3276F80();
      __swift_project_value_buffer(v35, qword_1EC760740);
      v36 = a2;
      v37 = sub_1D3276F60();
      v38 = sub_1D3277390();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = a2;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_1D311E000, v37, v38, "Error requesting an ETA update: %@", v39, 0xCu);
        sub_1D3125FBC(v40, &qword_1EC75C5B0, &unk_1D328C300);
        MEMORY[0x1D38B6000](v40, -1, -1);
        MEMORY[0x1D38B6000](v39, -1, -1);
      }
    }
  }
}

__n128 sub_1D3130628@<Q0>(uint64_t a1@<X8>)
{
  sub_1D3130A60(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

id sub_1D3130814(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v29 = a3;
  v30 = a2;
  v6 = sub_1D3276A60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = type metadata accessor for ETAUpdateRequester.InternalResponseInfo(0);
  v13 = a4 + v12[6];
  if (*(v13 + 1))
  {
    v14 = *(v13 + 3);
    v15 = v14;
  }

  else
  {
    v14 = 0;
  }

  v28 = *(a4 + v12[7]);
  v16 = *(v7 + 16);
  v16(v10, a4 + v12[5], v6);
  v17 = type metadata accessor for ETAUpdateRequester.ResponseInfo(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_reason] = v11;
  v19 = &v18[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result];
  v20 = v6;
  v27 = v6;
  v21 = v30;
  *v19 = a1;
  *(v19 + 1) = v21;
  v22 = v29 & 1;
  v19[16] = v29 & 1;
  *&v18[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request] = v14;
  v23 = v28;
  *&v18[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response] = v28;
  v16(&v18[OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_responseTime], v10, v20);
  sub_1D3130C98(a1, v21, v22);
  v31.receiver = v18;
  v31.super_class = v17;
  v24 = v23;
  v25 = objc_msgSendSuper2(&v31, sel_init);
  (*(v7 + 8))(v10, v27);
  return v25;
}

void sub_1D3130A0C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2;

    v5 = a4;
  }
}

void sub_1D3130A60(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 navigationSessionState];
  v5 = [v4 currentRouteInfo];
  if (!v5)
  {

    v6 = 0;
LABEL_8:
    v9 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_14:
    *a1 = v18;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v9;
    a1[4] = v17;
    a1[5] = v12;
    a1[6] = v14;
    a1[7] = v15;
    a1[8] = v16;
    return;
  }

  v6 = [v4 location];
  if (!v6)
  {

    v5 = 0;
    goto LABEL_8;
  }

  v7 = [v4 navigationState];
  v8 = [v4 targetLegIndex];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    v22 = v7;
    v21 = [v2 hasVisitedFirstStop];
    v10 = [v2 serverSessionState];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D3276C80();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = [v2 recentLocationHistory];
    v19 = [v4 userIncidentReports];
    if (v19)
    {
      v20 = v19;
      sub_1D3126084(0, &qword_1EC75CC88, 0x1E69A2700);
      v16 = sub_1D32771A0();
    }

    else
    {

      v16 = 0;
    }

    v18 = v22;
    v17 = v21;
    goto LABEL_14;
  }

  __break(1u);
}

id sub_1D3130C98(void *a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {

    return sub_1D317EF94(a1, a2);
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1D3130CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v5 = sub_1D3276FB0();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D3276FD0();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_1D3131110;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3122E0C;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  sub_1D3276FC0();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D3122E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
  sub_1D3122EBC();
  sub_1D3277630();
  MEMORY[0x1D38B42B0](0, v12, v8, v21);
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v9 + 8))(v12, v25);
}

uint64_t sub_1D3131040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D3131110()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA10, &unk_1D328B960);
  return sub_1D3277230();
}

uint64_t sub_1D31311B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___MNETAUpdateRequester_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D313125C(__objc2_class **a1)
{
  v2 = v1;
  v4 = sub_1D3276D70();
  v55 = *(v4 - 1);
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDB0, &unk_1D328B750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C570, &qword_1D328B720);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49[-v18];
  if (qword_1EC75C028 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v20 = sub_1D3276F80();
    __swift_project_value_buffer(v20, qword_1EC7608D0);
    v21 = sub_1D3276F60();
    v22 = sub_1D3277380();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D311E000, v21, v22, "Received didReceiveResponseInfo callback.", v23, 2u);
      MEMORY[0x1D38B6000](v23, -1, -1);
    }

    v24 = [v2 navigationSessionState];
    v25 = [v24 currentRouteInfo];

    if (!v25)
    {
      break;
    }

    if (*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 16))
    {
      goto LABEL_35;
    }

    v52 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
    v26 = [v25 route];
    v27 = [v26 uniqueRouteID];

    v56 = v2;
    v51 = a1;
    if (v27)
    {
      sub_1D3276D60();

      v28 = v55;
      v29 = *(v55 + 56);
      v29(v19, 0, 1, v4);
    }

    else
    {
      v28 = v55;
      v29 = *(v55 + 56);
      v29(v19, 1, 1, v4);
    }

    v30 = [(__objc2_class *)v52 uniqueRouteID];
    sub_1D3276D60();

    v29(v17, 0, 1, v4);
    v31 = *(v7 + 48);
    sub_1D31254DC(v19, v10);
    sub_1D31254DC(v17, &v10[v31]);
    v32 = *(v28 + 48);
    if (v32(v10, 1, v4) == 1)
    {
      sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
      v33 = v32(&v10[v31], 1, v4);
      v34 = v56;
      a1 = v51;
      if (v33 != 1)
      {
        goto LABEL_14;
      }

      sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
    }

    else
    {
      v35 = v54;
      sub_1D31254DC(v10, v54);
      if (v32(&v10[v31], 1, v4) == 1)
      {
        sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
        sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
        (*(v55 + 8))(v35, v4);
        a1 = v51;
LABEL_14:
        sub_1D3125FBC(v10, &unk_1EC75CDB0, &unk_1D328B750);
LABEL_34:

LABEL_35:
        sub_1D31332C4(a1);

        return;
      }

      v36 = v55;
      v37 = &v10[v31];
      v38 = v53;
      (*(v55 + 32))(v53, v37, v4);
      sub_1D3125484();
      v50 = sub_1D32770A0();
      v39 = *(v36 + 8);
      v39(v38, v4);
      sub_1D3125FBC(v17, &qword_1EC75C570, &qword_1D328B720);
      sub_1D3125FBC(v19, &qword_1EC75C570, &qword_1D328B720);
      v39(v35, v4);
      sub_1D3125FBC(v10, &qword_1EC75C570, &qword_1D328B720);
      v34 = v56;
      a1 = v51;
      if ((v50 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    [v25 updateWithETARoute:v52 etaResponse:*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response)];
    v40 = [v34 locationTracker];
    v41 = objc_allocWithZone(type metadata accessor for MNETAUpdateResponseInfo(0));
    v42 = a1;
    v43 = sub_1D3131A3C(v42);

    [v40 updateForETAUpdateResponse_];
    v44 = [v34 destinationArrivalInfoUpdater];
    if (v44)
    {
      v45 = *&v44[OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater];
      v46 = v44;
      sub_1D3131CE0();
    }

    v47 = [v34 observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CDC0, &qword_1D328CF70);
    v48 = sub_1D32771A0();

    if (v48 >> 62)
    {
      v7 = sub_1D3277660();
      if (!v7)
      {
LABEL_33:

        a1 = v51;
        goto LABEL_34;
      }
    }

    else
    {
      v7 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_33;
      }
    }

    v17 = 0;
    v10 = (v48 & 0xFFFFFFFFFFFFFF8);
    v2 = &selRef_navigationServiceDidArrive_;
    a1 = &off_1E8431000;
    while ((v48 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D38B45D0](v17, v48);
      v19 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_29;
      }

LABEL_25:
      if ([v4 respondsToSelector_])
      {
        [v4 navigationSession:v56 didUpdateETAResponseForRoute:v25];
      }

      swift_unknownObjectRelease();
      ++v17;
      if (v19 == v7)
      {
        goto LABEL_33;
      }
    }

    if (v17 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v4 = *(v48 + 8 * v17 + 32);
    swift_unknownObjectRetain();
    v19 = (v17 + 1);
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

id sub_1D3131A3C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_reason] = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_reason);
  v3 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request);
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_request] = v3;
  v4 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response);
  *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_response] = v4;
  v5 = OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_responseTime;
  v6 = OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_responseTime;
  v7 = sub_1D3276A60();
  (*(*(v7 - 8) + 16))(&v1[v6], a1 + v5, v7);
  v8 = a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result;
  v10 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
  v9 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 8);
  if (*(v8 + 16))
  {
    sub_1D317EF40();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v9;
    sub_1D3130C98(v10, v9, 1);
    v13 = v4;
    v14 = v3;
    sub_1D3130C98(v10, v9, 1);
    v15 = sub_1D3276BE0();
    sub_1D3132068(v10, v9, 1);
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_error] = v15;

    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_etaRoute] = 0;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_alternateRoutes] = 0;
  }

  else
  {
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_error] = 0;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_etaRoute] = v10;
    *&v1[OBJC_IVAR____TtC10Navigation23MNETAUpdateResponseInfo_alternateRoutes] = v9;
    v16 = v4;
    v17 = v3;
    sub_1D3130C98(v10, v9, 0);
  }

  v19.receiver = v1;
  v19.super_class = type metadata accessor for MNETAUpdateResponseInfo(0);
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1D3131CE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v32 - v4;
  if (qword_1EC75BE40 != -1)
  {
LABEL_28:
    swift_once();
  }

  v6 = sub_1D3276F80();
  __swift_project_value_buffer(v6, qword_1EC760710);
  v7 = sub_1D3276F60();
  v8 = sub_1D3277370();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D311E000, v7, v8, "Updating display ETAs because of a new ETAU response.", v9, 2u);
    MEMORY[0x1D38B6000](v9, -1, -1);
  }

  result = [*(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__navigationSessionState) location];
  if (result)
  {
    v11 = result;
    v12 = *(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v31 = *(v1 + OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater__routes);
      }

      v13 = sub_1D3277660();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
    v15 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_delegate;

    swift_beginAccess();
    v32[1] = v15;
    swift_beginAccess();
    if (v13)
    {
      v16 = 0;
      v36 = v12 & 0xFFFFFFFFFFFFFF8;
      v37 = v12 & 0xC000000000000001;
      v33 = v14;
      v34 = v5;
      v35 = v12;
      do
      {
        if (v37)
        {
          v18 = MEMORY[0x1D38B45D0](v16, v12);
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_24:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v16 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v18 = *(v12 + 8 * v16 + 32);

          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_24;
          }
        }

        v38 = v19;
        v20 = v1;
        sub_1D312601C(v1 + v14, v5, &qword_1EC75C4F0, &qword_1D328B580);
        v21 = sub_1D312596C(v18, v11);
        sub_1D3126114(v21, v5, v22);
        v23 = v11;
        v25 = v24;
        sub_1D3125FBC(v5, &qword_1EC75C4F0, &qword_1D328B580);
        if (v25)
        {
          v26 = v35;
          v27 = v23;
          v28 = [*(v18 + 16) displayETAInfo];
          if (v28)
          {
            v29 = v28;
            Strong = swift_unknownObjectWeakLoadStrong();
            v17 = v38;
            if (Strong)
            {
              [Strong remainingTimeUpdater:v20 didUpdateDisplayETAInfo:v29 reason:4];

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v1 = v20;
            v11 = v27;
            v12 = v26;
            v14 = v33;
            v5 = v34;
            goto LABEL_11;
          }

          v11 = v23;
          v12 = v26;
          v14 = v33;
          v5 = v34;
        }

        else
        {

          v11 = v23;
          v12 = v35;
        }

        v17 = v38;
LABEL_11:
        ++v16;
      }

      while (v17 != v13);
    }
  }

  return result;
}

void sub_1D3132068(void *a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {

    sub_1D317EFB8(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1D31323C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D3132404(uint64_t *a1@<X8>, double a2@<D0>)
{
  v3 = a2 * 1000.0;
  v4 = COERCE_UNSIGNED_INT64(a2 * 1000.0) & 0x7FF0000000000000;
  if (v4 != 0x7FF0000000000000 || (COERCE_UNSIGNED_INT64(a2 * 1000.0) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    if (v3 >= 9.22337204e18)
    {
      if (qword_1EC75BFF8 != -1)
      {
        swift_once();
      }

      v8 = sub_1D3276F80();
      __swift_project_value_buffer(v8, qword_1EC760858);
      v9 = sub_1D3277390();
      v10 = sub_1D3276F60();
      if (!os_log_type_enabled(v10, v9))
      {

        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 134218496;
      *(v11 + 4) = v3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 0x43E0000000000000;
      *(v11 + 22) = 2048;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      *(v11 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      v12 = "DispatchTimeInterval: timeInterval (%f) too large for platform Double(Int.max) %f. Clamped to Int.max (%ld)";
      goto LABEL_19;
    }

    if (v3 <= -9.22337204e18)
    {
      if (qword_1EC75BFF8 == -1)
      {
LABEL_17:
        v13 = sub_1D3276F80();
        __swift_project_value_buffer(v13, qword_1EC760858);
        v9 = sub_1D3277390();
        v10 = sub_1D3276F60();
        if (!os_log_type_enabled(v10, v9))
        {

          v6 = 0x8000000000000000;
          goto LABEL_22;
        }

        v11 = swift_slowAlloc();
        *v11 = 134218496;
        *(v11 + 4) = v3;
        *(v11 + 12) = 2048;
        *(v11 + 14) = 0xC3E0000000000000;
        *(v11 + 22) = 2048;
        v6 = 0x8000000000000000;
        *(v11 + 24) = 0x8000000000000000;
        v12 = "DispatchTimeInterval: timeInterval (%f) too small for platform Double(Int.min) %f. Clamped to Int.min (%ld)";
LABEL_19:
        _os_log_impl(&dword_1D311E000, v10, v9, v12, v11, 0x20u);
        MEMORY[0x1D38B6000](v11, -1, -1);

        goto LABEL_22;
      }
    }

    else
    {
      if (v4 != 0x7FF0000000000000)
      {
        if (v3 <= -9.22337204e18)
        {
          __break(1u);
        }

        else if (v3 < 9.22337204e18)
        {
          v6 = v3;
LABEL_22:
          *a1 = v6;
          v7 = MEMORY[0x1E69E7F38];
          goto LABEL_23;
        }

        __break(1u);
        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_17;
  }

  v7 = MEMORY[0x1E69E7F40];
LABEL_23:
  v14 = *v7;
  v15 = sub_1D3276F90();
  v16 = *(*(v15 - 8) + 104);

  v16(a1, v14, v15);
}

id MNGetRouteFromSubpathWithID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    *v30 = 0;
    v31 = v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__2637;
    v34 = __Block_byref_object_dispose__2638;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2637;
    v28 = __Block_byref_object_dispose__2638;
    v29 = 0;
    v7 = MNGetMNRouteStorageLog();
    v8 = os_signpost_id_generate(v7);

    v9 = MNGetMNRouteStorageLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ActiveRouteInfoDiskRead", "", buf, 2u);
    }

    v11 = _routeStorageQueue();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __MNGetRouteFromSubpathWithID_block_invoke;
    v18[3] = &unk_1E842A8F0;
    v19 = v6;
    v20 = v5;
    v21 = &v24;
    v22 = v30;
    dispatch_sync(v11, v18);

    v12 = MNGetMNRouteStorageLog();
    v13 = v12;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v13, OS_SIGNPOST_INTERVAL_END, v8, "ActiveRouteInfoDiskRead", "", buf, 2u);
    }

    if (a3)
    {
      v14 = v25[5];
      if (v14)
      {
        *a3 = v14;
      }
    }

    v15 = *(v31 + 5);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "No route ID passed for retrieving.", v30, 2u);
    }

    v15 = 0;
  }

  return v15;
}

void __MNGetRouteFromSubpathWithID_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = MNRouteStorageDirectory(*(a1 + 32));
  v3 = [*(a1 + 40) UUIDString];
  v4 = [v2 stringByAppendingPathComponent:v3];
  v5 = +[MNFilePaths routeHandleExtension];
  v6 = [v4 stringByAppendingPathExtension:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(v4) = [v7 fileExistsAtPath:v6];

  if (v4)
  {
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:0 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v36 = v11;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Encountered error <%@> while reading route %@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v16 = objc_alloc(MEMORY[0x1E696ACD0]);
    v17 = *(*(a1 + 48) + 8);
    v31 = *(v17 + 40);
    v10 = [v16 initForReadingFromData:v9 error:&v31];
    objc_storeStrong((v17 + 40), v31);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v36 = v19;
        v37 = 2112;
        v38 = v6;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Encountered error <%@> while reading route %@", buf, 0x16u);
      }
    }

    else
    {
      v20 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"_route"];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v33 = *MEMORY[0x1E696A350];
      v24 = [MEMORY[0x1E695DF00] date];
      v34 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v26 = *(*(a1 + 48) + 8);
      v30 = *(v26 + 40);
      [v23 setAttributes:v25 ofItemAtPath:v6 error:&v30];
      objc_storeStrong((v26 + 40), v30);

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_15:

        goto LABEL_16;
      }

      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v27 = *(*(*(a1 + 48) + 8) + 40);
        v28 = [*(a1 + 40) UUIDString];
        *buf = 138412546;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Encountered error <%@> when touching route %@", buf, 0x16u);
      }
    }

    goto LABEL_15;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [*(a1 + 40) UUIDString];
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Route file for ID %@ could not be found on disk.", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
  v15 = *(*(a1 + 48) + 8);
  v9 = *(v15 + 40);
  *(v15 + 40) = v14;
LABEL_16:

  v29 = *MEMORY[0x1E69E9840];
}

id MNRouteStorageDirectory(void *a1)
{
  v1 = a1;
  v2 = +[MNFilePaths navTempDirectoryPath];
  if ([v1 length])
  {
    v3 = [v2 stringByAppendingPathComponent:v1];

    v2 = v3;
  }

  return v2;
}

id MNGetMNRouteStorageLog()
{
  if (MNGetMNRouteStorageLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteStorageLog_onceToken, &__block_literal_global_76);
  }

  v1 = MNGetMNRouteStorageLog_log;

  return v1;
}

id _routeStorageQueue()
{
  if (_routeStorageQueue_onceToken != -1)
  {
    dispatch_once(&_routeStorageQueue_onceToken, &__block_literal_global_2631);
  }

  v1 = _routeStorageQueue_routeStorageQueue;

  return v1;
}

void sub_1D31332C4(uint64_t a1)
{
  v3 = sub_1D3276D30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_request);
  if (v11)
  {
    v35 = v11;
    v12 = [v1 traceRecorder];
    if (v12)
    {
      v13 = v12;
      v15 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result);
      v14 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 8);
      if (*(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_result + 16) == 1)
      {
        sub_1D317EF40();
        v34 = swift_allocError();
        *v16 = v15;
        *(v16 + 8) = v14;
        v17 = v13;
        sub_1D3130C98(v15, v14, 1);
      }

      else
      {
        v19 = v12;
        sub_1D3130C98(v15, v14, 0);

        v34 = 0;
      }

      v20 = [v1 navigationSessionState];
      v21 = [v20 destination];

      if (v21)
      {
        v22 = [v21 name];

        if (v22)
        {
          sub_1D32770C0();
        }
      }

      sub_1D3276A40();
      v23 = [v13 recordingStartDate];
      sub_1D3276D00();

      sub_1D3276CC0();
      v25 = v24;
      v26 = *(v4 + 8);
      v26(v8, v3);
      v26(v10, v3);
      sub_1D3276A50();
      v28 = v25 + v27;
      v29 = *(a1 + OBJC_IVAR____TtCC10Navigation18ETAUpdateRequester12ResponseInfo_response);
      v30 = v34;
      if (v34)
      {
        v31 = v34;
        v32 = sub_1D3276BE0();
      }

      else
      {
        v32 = 0;
      }

      v33 = sub_1D32770B0();

      [v13 recordETAURequest:v35 response:v29 error:v32 destinationName:v33 requestTimestamp:v25 responseTimestamp:v28];
    }

    else
    {
      v18 = v35;
    }
  }
}

uint64_t sub_1D31336A0()
{
  v1 = *(*v0 + 824);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D313379C, 0, 0);
}

uint64_t sub_1D313379C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);

  sub_1D317F2B4(v6, v7);
  v8 = *(v4 + 48);
  v9 = v8(v7, 1, v5);
  v10 = *(v0 + 680);
  v11 = *(v0 + 672);
  if (v9 == 1)
  {
    v12 = *(v0 + 656);
    v13 = *(v0 + 616);
    sub_1D314CDF0(v10, *(v0 + 672));
    if (v8(v13, 1, v12) != 1)
    {
      sub_1D3125FBC(*(v0 + 616), &qword_1EC75C5C8, &unk_1D328B900);
    }
  }

  else
  {
    v14 = *(v0 + 616);
    sub_1D312EB88(v10);
    sub_1D314CDF0(v14, v11);
  }

  sub_1D314CDF0(*(v0 + 672), *(v0 + 680));
  v15 = *(v0 + 600);
  v16 = sub_1D312F05C(*(v0 + 680));
  *(v0 + 832) = v16;
  v17 = swift_allocObject();
  *(v0 + 840) = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = v16;
  v19 = v15;
  v20 = MNNavigationQueue();
  *(v0 + 848) = v20;
  if (v20)
  {
    v28 = v20;
    v29 = swift_task_alloc();
    *(v0 + 856) = v29;
    v29[2] = v28;
    v29[3] = sub_1D31311B0;
    v29[4] = v17;
    v30 = *(MEMORY[0x1E69E88D0] + 4);
    v20 = swift_task_alloc();
    *(v0 + 864) = v20;
    *v20 = v0;
    v20[1] = sub_1D317918C;
    v25 = sub_1D3130CE8;
    v24 = 0x80000001D32903A0;
    v27 = MEMORY[0x1E69E7CA8] + 8;
    v21 = 0;
    v22 = 0;
    v23 = 0xD000000000000010;
    v26 = v29;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DDE0](v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1D3133A3C(void *a1)
{
  v3 = *(*v1 + 96);
  v5 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1D3134C24, 0, 0);
}

void sub_1D313489C(double a1)
{
  v2 = v1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))())
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (qword_1EC75BE50 != -1)
    {
      swift_once();
    }

    v5 = sub_1D3276F80();
    __swift_project_value_buffer(v5, qword_1EC760740);
    v6 = sub_1D3276F60();
    v7 = sub_1D3277380();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136315138;
      sub_1D3277AC0();
      v10 = sub_1D3277AA0();
      v12 = sub_1D312BA30(v10, v11, v25);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D311E000, v6, v7, "Scheduling timer for %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D38B6000](v9, -1, -1);
      MEMORY[0x1D38B6000](v8, -1, -1);
    }

    v13 = OBJC_IVAR___MNETAUpdateRequester__requestTimer;
    v14 = *(v2 + OBJC_IVAR___MNETAUpdateRequester__requestTimer);
    if (v14)
    {
      if (v14[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
      {
        v14[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
        v15 = *&v14[OBJC_IVAR___MNDispatchTimer__internalTimer];
        swift_getObjectType();
        v16 = v14;
        sub_1D3277440();
      }
    }

    v17 = MNNavigationQueue();
    if (v17)
    {
      v18 = v17;
      v19 = objc_allocWithZone(type metadata accessor for DispatchTimer());
      v25[4] = sub_1D317F80C;
      v25[5] = v4;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      v25[2] = sub_1D3122E0C;
      v25[3] = &block_descriptor_145;
      v20 = _Block_copy(v25);
      swift_retain_n();

      v21 = [v19 initWithTime:0 repeating:v18 queue:v20 handler:a1];

      _Block_release(v20);
      v22 = *(v2 + v13);
      *(v2 + v13) = v21;
      v23 = v21;

      if (v23)
      {
        if (v23[OBJC_IVAR___MNDispatchTimer__isRunning] == 1)
        {

          return;
        }

        v23[OBJC_IVAR___MNDispatchTimer__isRunning] = 1;
        v24 = *&v23[OBJC_IVAR___MNDispatchTimer__internalTimer];
        swift_getObjectType();
        sub_1D3277450();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D3134BE8()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3134C24()
{
  sub_1D313489C(*(*(v0 + 88) + OBJC_IVAR___MNETAUpdateRequester__etaRequestInterval));
  v1 = *(v0 + 8);

  return v1();
}

id sub_1D3134C9C(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v53 = a4;
  v52 = a3;
  v54 = a1;
  v8 = sub_1D3276FF0();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v50 - v12;
  v59 = sub_1D3276F90();
  v64 = *(v59 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x1EEE9AC00](v59);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v63 = (&v50 - v18);
  v51 = sub_1D3276FB0();
  v19 = *(v51 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D3276FD0();
  v23 = *(v50 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D3277410();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v5;
  v5[OBJC_IVAR___MNDispatchTimer__isRunning] = 0;
  sub_1D3135294();
  sub_1D3277400();
  v32 = a2;
  v33 = sub_1D3277420();

  (*(v28 + 8))(v31, v27);
  ObjectType = swift_getObjectType();
  aBlock[4] = v52;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3122E0C;
  aBlock[3] = &block_descriptor_20;
  v35 = _Block_copy(aBlock);

  sub_1D3276FC0();
  sub_1D31352E0();
  v53 = ObjectType;
  sub_1D3277430();
  _Block_release(v35);
  (*(v19 + 8))(v22, v51);
  v36 = v26;
  v37 = v63;
  (*(v23 + 8))(v36, v50);

  sub_1D3132404(v37, a5);
  v38 = v56;
  v39 = v59;
  if (v54)
  {
    (*(v64 + 16))(v56, v37, v59);
  }

  else
  {
    (*(v64 + 104))(v56, *MEMORY[0x1E69E7F40], v59);
  }

  v40 = v57;
  sub_1D3276FE0();
  v41 = v58;
  MEMORY[0x1D38B3ED0](v40, v37);
  v42 = v61;
  v43 = *(v60 + 8);
  v43(v40, v61);
  v44 = v55;
  *v55 = 0;
  v45 = v64;
  (*(v64 + 104))(v44, *MEMORY[0x1E69E7F28], v39);
  MEMORY[0x1D38B4420](v41, v38, v44, v53);
  v46 = *(v45 + 8);
  v46(v44, v39);
  v43(v41, v42);
  v46(v38, v39);
  v46(v63, v39);
  v47 = v62;
  *&v62[OBJC_IVAR___MNDispatchTimer__internalTimer] = v33;
  v48 = type metadata accessor for DispatchTimer();
  v65.receiver = v47;
  v65.super_class = v48;
  return objc_msgSendSuper2(&v65, sel_init);
}

unint64_t sub_1D3135294()
{
  result = qword_1EC75BD98;
  if (!qword_1EC75BD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BD98);
  }

  return result;
}

uint64_t sub_1D31352E0()
{
  sub_1D3276FB0();
  sub_1D3122E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
  sub_1D3122EBC();
  return sub_1D3277630();
}

uint64_t MNInstructionsCalculateScaledDistanceUnits(int a1, int a2, uint64_t a3, int a4, double a5)
{
  if (a1)
  {
    if (a5 >= 1000.0)
    {
      goto LABEL_17;
    }

    if (a3 == 2 || a5 <= 500.0)
    {
      if (a3 == 2 || a5 <= 100.0)
      {
        if (a3 == 2 || a5 <= 30.0)
        {
          if (a5 <= 5.0)
          {
            v11 = floor(a5);
          }

          else
          {
            v11 = round(a5 * 0.2) * 5.0;
          }

LABEL_15:
          if (v11 < 1000.0)
          {
            v12 = 0;
            goto LABEL_18;
          }

LABEL_17:
          v12 = 1;
LABEL_18:
          if (a4)
          {
            return v12;
          }

          else
          {
            return 0;
          }
        }

        v5 = round(a5 * 0.1);
        v10 = 10.0;
LABEL_14:
        v11 = v5 * v10;
        goto LABEL_15;
      }

      v5 = round(a5 * 0.02);
      v6 = 0x4049000000000000;
    }

    else
    {
      v5 = round(a5 * 0.01);
      v6 = 0x4059000000000000;
    }

    v10 = *&v6;
    goto LABEL_14;
  }

  v7 = a5 * 3.2808399;
  if (!a2)
  {
    if (a3 == 2 || v7 <= 500.0)
    {
      if (a3 == 2 || v7 <= 100.0)
      {
        if (v7 <= 30.0)
        {
          v8 = floor(a5 * 0.656167979);
          v14 = 5.0;
        }

        else
        {
          v8 = round(a5 * 0.32808399);
          v14 = 10.0;
        }

        goto LABEL_25;
      }

      v8 = round(a5 * 0.0656167979);
      v9 = 0x4049000000000000;
    }

    else
    {
      v8 = round(a5 * 0.032808399);
      v9 = 0x4059000000000000;
    }

    v14 = *&v9;
LABEL_25:
    v7 = v8 * v14;
  }

  v15 = a5 * 0.000621371192;
  v16 = a5 * 0.000621371192;
  if (a3 != 1)
  {
    v16 = a5 * 0.000621371192;
    if (v15 > 0.1)
    {
      if (a3 == 2 && v15 < 1.0)
      {
        v16 = round(a5 * 0.0124274238) * 0.05;
      }

      else
      {
        v16 = round(a5 * 0.00621371192) * 0.1;
      }
    }
  }

  if (v7 >= 1000.0)
  {
    if (a3 == 1 && v16 < 0.875)
    {
      v17 = 5;
      if (v16 < 0.625)
      {
        v17 = 5;
      }
    }

    else
    {
      v17 = 4;
    }
  }

  else if (a2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (a4)
  {
    return v17;
  }

  else
  {
    return 3;
  }
}

id navDisplayNameForMapItem(void *a1, int a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [v5 contactName];
  if (!a2)
  {
    goto LABEL_23;
  }

  v7 = [v5 contactAddressType];
  switch(v7)
  {
    case 3:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtra_School";
        goto LABEL_17;
      }

      if (![v6 length])
      {
        goto LABEL_23;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"MapsExtra_ContactSchool";
      break;
    case 2:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtras_Work";
        goto LABEL_17;
      }

      if (!v6)
      {
        goto LABEL_32;
      }

      if (![v6 length])
      {
        goto LABEL_24;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = @"MapsExtras_ContactWork";
      break;
    case 1:
      if (a3)
      {
        *a3 = 3;
      }

      if ([v5 contactIsMe])
      {
        v8 = @"MapsExtras_Home";
LABEL_17:
        v9 = _MNLocalizedStringFromThisBundle(v8);
LABEL_27:
        v12 = v9;
        goto LABEL_45;
      }

      if (v6)
      {
        if ([v6 length])
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = @"MapsExtras_ContactHome";
          break;
        }

LABEL_24:
        if (a3)
        {
          *a3 = 3;
        }

        v9 = v6;
        goto LABEL_27;
      }

LABEL_32:
      if ([v5 _hasTransit])
      {
        v13 = [v5 _transitInfo];
        v15 = [v13 displayName];
        v16 = [v15 length];

        if (v16)
        {
          if (a3)
          {
            *a3 = 4;
          }

          v14 = [v13 displayName];
          goto LABEL_44;
        }
      }

      v17 = [v5 name];
      v13 = v17;
      if (v17 && [v17 length])
      {
        if (a3)
        {
          *a3 = 4;
        }

        v14 = v13;
      }

      else
      {
        v14 = navDisplayAddressForMapItem(v5, a3);
      }

      goto LABEL_44;
    default:
LABEL_23:
      if (v6)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
  }

  v13 = _MNLocalizedStringFromThisBundle(v11);
  v14 = [v10 stringWithFormat:v13, v6];
LABEL_44:
  v12 = v14;

LABEL_45:

  return v12;
}

id _MNLocalizedStringFromThisBundle(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 _navigationBundle];
  v4 = [v3 _navigation_localizedStringForKey:v2 value:@"<unlocalized>" table:@"Navigation"];

  return v4;
}

id MNGetMNGuidanceManagerLog()
{
  if (MNGetMNGuidanceManagerLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNGuidanceManagerLog_onceToken, &__block_literal_global_44_1185);
  }

  v1 = MNGetMNGuidanceManagerLog_log;

  return v1;
}

id navDisplayAddressForMapItem(void *a1, _DWORD *a2)
{
  v3 = [a1 addressObject];
  v4 = [v3 shortAddress];

  if (a2)
  {
    *a2 = 2;
  }

  return v4;
}

void sub_1D3139AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioManagerCategory()
{
  if (GetAudioLogForMNAudioManagerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioManagerCategory_onceToken, &__block_literal_global_22410);
  }

  v1 = GetAudioLogForMNAudioManagerCategory_log;

  return v1;
}

id sub_1D313A7A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    a3 = 0;
  }

  else if (a3 != 1)
  {
    return 0;
  }

  return [a1 supportsGuidancePreferenceType_];
}

uint64_t sub_1D313AAEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D313AB54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D313ABB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D313AC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10Navigation22MNRemainingTimeUpdater_dateOverride;
  swift_beginAccess();
  return sub_1D312601C(v3 + v4, a2, &qword_1EC75C4F0, &qword_1D328B580);
}

id sub_1D313AC7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationSessionState];
  *a2 = result;
  return result;
}

uint64_t sub_1D313ACCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313AD14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313AD4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313AD84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313ADC4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313AE18()
{
  MEMORY[0x1D38B60C0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D313AE50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D313AEAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

id sub_1D313AF08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationSessionState];
  *a2 = result;
  return result;
}

uint64_t sub_1D313AF58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313AF98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B044()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B07C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B0B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B104()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D313B164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D313B1B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B234(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D313B244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B28C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B2C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D313B3E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D313B4E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B520()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D313B568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D3276A60();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D313B670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D3276A60();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D313B730()
{
  v1 = sub_1D3276D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC78, &qword_1D328CBD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D313B8A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D313B8DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D313B934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CC80, &qword_1D328CC20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D313B9C8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BA10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BA48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BA88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BAD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BB20()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D313BB6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313BBBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 96);
  if (v2 >> 60 != 15)
  {
    sub_1D31422C8(*(v0 + 88), v2);
  }

  v3 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D313BC34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 88);
  if (v2 >> 60 != 15)
  {
    sub_1D31422C8(*(v0 + 80), v2);
  }

  v3 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D313BCAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D313C840(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D313C8B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D313C8D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePartitionTree.CircleBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoutePartitionTree.CircleBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CommuteRouteRequestParameters.CacheOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CommuteRouteRequestParameters.CacheOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void *sub_1D313CA34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D313CA44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D313CA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D313CABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void sub_1D313CB58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static TestUtility.waypoint(for:requireMapItem:)(char a1, double a2, double a3)
{
  *(v3 + 72) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D313CBEC, 0, 0);
}

uint64_t sub_1D313CBEC()
{
  v1 = *(v0 + 72);
  v2 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithGEOCoordinate_];
  *(v0 + 40) = v2;
  if (v1 == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x1E69E8920] + 4);
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    v6 = sub_1D313D1D4();
    *v5 = v0;
    v5[1] = sub_1D313CD94;
    v7 = sub_1D313D1CC;
    v8 = (v0 + 16);
    v9 = 0x80000001D328D8D0;
    v10 = 0;
    v11 = 0;
    v12 = 0xD00000000000001DLL;
    v13 = v3;

    return MEMORY[0x1EEE6DE38](v8, v10, v11, v12, v9, v7, v13, v6);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69A1CC8]) initWithLocation:v2 isCurrentLocation:0];
  if (!v8)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v8, v10, v11, v12, v9, v7, v13, v6);
  }

  v14 = v8;

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1D313CD94()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D313CF18;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D313CEB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D313CEB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D313CF18()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

void sub_1D313CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = [objc_opt_self() sharedService];
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    v14 = [v12 defaultTraits];

    aBlock[4] = sub_1D313E2BC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D312E25C;
    aBlock[3] = &block_descriptor_14;
    v15 = _Block_copy(aBlock);

    v16 = [v13 composedWaypointForLocation:a2 mapItem:0 traits:v14 completionHandler:v15 networkActivityHandler:0];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D313D1D4()
{
  result = qword_1EC75BD88;
  if (!qword_1EC75BD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC75BD88);
  }

  return result;
}

uint64_t sub_1D313D220(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
    return sub_1D3277230();
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_1D313E1E4();
      swift_allocError();
      *v5 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0);
    return sub_1D3277220();
  }
}

uint64_t static TestUtility.routes(for:transportType:maxRouteCount:routeAttributes:traits:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 88) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D313D2F8, 0, 0);
}

uint64_t sub_1D313D2F8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = [objc_allocWithZone(MEMORY[0x1E69A1D30]) init];
  *(v0 + 56) = v4;
  [v4 setRequestType_];
  sub_1D313D1D4();
  v5 = sub_1D3277190();
  [v4 setWaypoints_];

  v6 = [v4 setTransportType_];
  if (v3 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = *(v0 + 40);
  [v4 setMaxRouteCount_];
  if (v14)
  {
    v15 = *(v0 + 40);
    v16 = v15;
  }

  else
  {
    v6 = [objc_opt_self() defaultRouteAttributesForTransportType_];
    if (!v6)
    {
LABEL_18:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v16 = v6;
    v15 = *(v0 + 40);
  }

  v17 = *(v0 + 48);
  v18 = v15;
  [v4 setRouteAttributes_];

  if (v17)
  {
    v19 = *(v0 + 48);
    [v4 setTraits_];
    v20 = objc_allocWithZone(MEMORY[0x1E69A1B68]);
    v21 = sub_1D32770B0();
    v22 = [v20 initWithProxiedApplicationBundleId_];

    [v4 setAuditToken_];
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69A1C20]) init];
  if (!v6)
  {
    goto LABEL_16;
  }

  v23 = v6;
  if (*(v0 + 88) == 2)
  {
    [v6 setSupportsArMode_];
  }

  [v4 setCommonOptions_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69A1D00]) init];
  if (!v6)
  {
    goto LABEL_17;
  }

  v24 = v6;
  [v6 setSource_];
  [v24 setPurpose_];
  [v4 setFeedback_];

  v25 = swift_task_alloc();
  *(v0 + 64) = v25;
  *(v25 + 16) = v4;
  v26 = *(MEMORY[0x1E69E8920] + 4);
  v27 = swift_task_alloc();
  *(v0 + 72) = v27;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C2F0, &qword_1D328AC20);
  *v27 = v0;
  v27[1] = sub_1D313D64C;
  v11 = sub_1D313DF24;
  v6 = (v0 + 16);
  v10 = 0x80000001D328D8F0;
  v7 = 0;
  v8 = 0;
  v9 = 0xD00000000000003FLL;
  v12 = v25;

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D313D64C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D313D7D0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1D313D768;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D313D768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D313D7D0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

void sub_1D313D83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() sharedService];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1D313E150;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D315EA10;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  v13 = [v9 requestRoutes:a2 handler:v12];
  _Block_release(v12);
}

uint64_t sub_1D313DA28(uint64_t a1, id a2, void *a3)
{
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
    return sub_1D3277230();
  }

  else
  {
    if (a3)
    {
      sub_1D313E1E4();
      swift_allocError();
      *v5 = a3;
      v6 = a3;
    }

    else if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1D313E1E4();
      swift_allocError();
      *v8 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8);
    return sub_1D3277220();
  }
}

uint64_t static TestUtility.route(for:stepRanges:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 2uLL)
  {
    goto LABEL_8;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69A2508]) init];
  [v4 setTransportType_];
  v5 = sub_1D313DCBC(a1);
  [v4 setRawRouteGeometry_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69A23A8]) init];
  if (a2)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = (a2 + 40);
      do
      {
        [v6 addCoordinateRange_];
        v8 += 2;
        --v7;
      }

      while (v7);
    }
  }

  [v4 setStepRanges_];

  v9 = [v4 buildRoute];
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  else
  {
LABEL_8:
    result = sub_1D32777B0();
    __break(1u);
  }

  return result;
}

id sub_1D313DCBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D314B404(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 40);
    v5 = v1;
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_1D3277500();
      v12 = *(v27 + 16);
      v11 = *(v27 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v8;
        v15 = v9;
        v16 = v10;
        sub_1D314B404((v11 > 1), v12 + 1, 1);
        v10 = v16;
        v9 = v15;
        v8 = v14;
      }

      *(v27 + 16) = v12 + 1;
      v13 = v27 + 40 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      *(v13 + 48) = v10;
      *(v13 + 56) = 0xBFF0000000000000;
      *(v13 + 64) = 0;
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D3180ED4(v2);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69A2410]) initWithCoordinates:v2 + 32 count:v1 allSupportPoints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C2F8, &unk_1D328B8D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D328AC00;
  v19 = [v17 rawData];
  v20 = sub_1D3276C80();
  v22 = v21;

  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = objc_allocWithZone(MEMORY[0x1E69A2418]);
  v24 = sub_1D3277190();

  v25 = [v23 initWithRawData_];

  return v25;
}

void static TestUtility.pushLocation(_:)(MNLocation *a1)
{
  if (qword_1EC75BF68 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  NavigationLocationManager.push(_:)(a1);
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

uint64_t getEnumTagSinglePayload for TestUtility(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TestUtility(_WORD *result, int a2, int a3)
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

uint64_t sub_1D313E060(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D313E0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D313E104(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D313E120(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D313E150(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C300, &qword_1D328ACA8) - 8) + 80);

  return sub_1D313DA28(a1, a2, a3);
}

unint64_t sub_1D313E1E4()
{
  result = qword_1EC75C308;
  if (!qword_1EC75C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C308);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D313E2BC(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C310, &qword_1D328ACB0) - 8) + 80);

  return sub_1D313D220(a1, a2);
}

id sub_1D313E350(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *&v1[OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup] = 0;
  v3 = sub_1D32770B0();

  v9[0] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MNTraceSelectStatement();
  v4 = objc_msgSendSuper2(&v8, sel_initForTrace_statement_outError_, a1, v3, v9);

  v5 = v9[0];
  if (v9[0])
  {
    swift_willThrow();
    v5;
  }

  else
  {
    sub_1D313E444();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1D313E444()
{
  v1 = v0;
  result = sqlite3_column_count([v0 rawStatement]);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  if (result)
  {
    v4 = 0;
    v5 = OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup;
    while (1)
    {
      result = sqlite3_column_name([v1 rawStatement], v4);
      if (!result)
      {
        goto LABEL_7;
      }

      v9 = sub_1D3277130();
      v11 = v10;
      v12 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        break;
      }

LABEL_6:

LABEL_7:
      if (v3 == ++v4)
      {
        return result;
      }
    }

    v13 = v9;
    v14 = sub_1D313E628();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v14;
    v16 = sub_1D31416C8(v13, v11);
    v18 = v14[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_1D3277920();
      __break(1u);
      return result;
    }

    v22 = v17;
    if (v14[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v16;
        sub_1D3141BB0();
        v16 = v27;
        if ((v22 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }
    }

    else
    {
      sub_1D3141784(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D31416C8(v13, v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }
    }

    if ((v22 & 1) == 0)
    {
LABEL_18:
      v7 = v14;
      v14[(v16 >> 6) + 8] |= 1 << v16;
      v24 = (v14[6] + 16 * v16);
      *v24 = v13;
      v24[1] = v11;
      *(v14[7] + 4 * v16) = v4;
      v25 = v14[2];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
        goto LABEL_24;
      }

      v14[2] = v26;
      goto LABEL_5;
    }

LABEL_4:
    v6 = v16;

    v7 = v28;
    *(v28[7] + 4 * v6) = v4;
LABEL_5:
    v8 = *&v1[v5];
    *&v1[v5] = v7;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_1D313E628()
{
  v1 = OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup;
  if (*(v0 + OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10Navigation22MNTraceSelectStatement____lazy_storage____columnToIndexLookup);
  }

  else
  {
    v2 = sub_1D3142064(MEMORY[0x1E69E7CC0]);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id MNTraceSelectStatement.__allocating_init(for:statement:outError:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_1D32770B0();

  v9 = [v7 initForTrace:a1 statement:v8 outError:a4];

  return v9;
}

uint64_t MNTraceSelectStatement.allRows<A>(handler:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v25 = sub_1D3277600();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  v17 = sub_1D3277030();
  v29 = v17;
  v26 = v4;
  if ([v4 stepRow])
  {
    v18 = (v11 + 48);
    v23 = (v11 + 32);
    v19 = (v11 + 16);
    v20 = (v11 + 8);
    do
    {
      v27();
      if ((*v18)(v10, 1, a3) == 1)
      {
        (*(v6 + 8))(v10, v25);
      }

      else
      {
        (*v23)(v16, v10, a3);
        (*v19)(v24, v16, a3);
        sub_1D32771F0();
        sub_1D32771E0();
        (*v20)(v16, a3);
      }
    }

    while (([v26 stepRow] & 1) != 0);
    return v29;
  }

  return v17;
}

Swift::Int __swiftcall MNTraceSelectStatement.intValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (*(v5 + 16) && (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 4 * v6);

    return sqlite3_column_int([v2 rawStatement], v8);
  }

  else
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v10 = sub_1D3276F80();
    __swift_project_value_buffer(v10, qword_1EC7608E8);

    v11 = sub_1D3276F60();
    v12 = sub_1D3277390();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v15);
      _os_log_impl(&dword_1D311E000, v11, v12, "No column named '%s' found.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38B6000](v14, -1, -1);
      MEMORY[0x1D38B6000](v13, -1, -1);
    }

    return 0;
  }
}

Swift::Double __swiftcall MNTraceSelectStatement.doubleValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (*(v5 + 16) && (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 4 * v6);

    v9 = [v2 rawStatement];

    return sqlite3_column_double(v9, v8);
  }

  else
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC7608E8);

    v12 = sub_1D3276F60();
    v13 = sub_1D3277390();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_1D311E000, v12, v13, "No column named '%s' found.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38B6000](v15, -1, -1);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    return 0.0;
  }
}

Swift::String_optional __swiftcall MNTraceSelectStatement.stringValue(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D313E628();
  if (!*(v5 + 16) || (v6 = sub_1D31416C8(countAndFlagsBits, object), (v7 & 1) == 0))
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v11 = sub_1D3276F80();
    __swift_project_value_buffer(v11, qword_1EC7608E8);

    v12 = sub_1D3276F60();
    v13 = sub_1D3277390();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D312BA30(countAndFlagsBits, object, &v17);
      _os_log_impl(&dword_1D311E000, v12, v13, "No column named '%s' found.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38B6000](v15, -1, -1);
      MEMORY[0x1D38B6000](v14, -1, -1);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v8 = *(*(v5 + 56) + 4 * v6);

  v9 = sqlite3_column_text([v2 rawStatement], v8);
  if (!v9)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = sub_1D3277140();
LABEL_11:
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

_BYTE *MNTraceSelectStatement.dataValue(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D313E628();
  if (!*(v6 + 16) || (v7 = sub_1D31416C8(a1, a2), (v8 & 1) == 0))
  {

    if (qword_1EC75C030 != -1)
    {
      swift_once();
    }

    v13 = sub_1D3276F80();
    __swift_project_value_buffer(v13, qword_1EC7608E8);

    v14 = sub_1D3276F60();
    v15 = sub_1D3277390();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D312BA30(a1, a2, &v18);
      _os_log_impl(&dword_1D311E000, v14, v15, "No column named '%s' found.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1D38B6000](v17, -1, -1);
      MEMORY[0x1D38B6000](v16, -1, -1);
    }

    return 0;
  }

  v9 = *(*(v6 + 56) + 4 * v7);

  v10 = sqlite3_column_bytes([v3 rawStatement], v9);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = v10;
  result = sqlite3_column_blob([v3 rawStatement], v9);
  if (result)
  {
    return sub_1D3142218(result, v11);
  }

  __break(1u);
  return result;
}