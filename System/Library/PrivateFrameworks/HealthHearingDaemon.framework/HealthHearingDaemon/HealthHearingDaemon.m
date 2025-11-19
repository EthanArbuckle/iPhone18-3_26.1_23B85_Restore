void sub_25176A730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_7(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

BOOL populateNoiseLevelWithStatistics(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 hk_safeValueForKeyPath:@"averageQuantity" class:objc_opt_class() error:a3];
  if (v6)
  {
    v7 = [v5 hk_safeValueForKeyPath:@"duration" class:objc_opt_class() error:a3];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = [MEMORY[0x277CCDAB0] decibelAWeightedSoundPressureLevelUnit];
      [v6 doubleValueForUnit:v9];
      *a1 = v10;

      v11 = [MEMORY[0x277CCDAB0] secondUnit];
      [v7 doubleValueForUnit:v11];
      a1[1] = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_251771420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_2517730EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _AllProperties()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"start_date";
  v3[1] = @"end_date";
  v3[2] = @"archived_statistics";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_25177353C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251773B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251773D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251775BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251776170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void sub_251778E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_1_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t HDHearingTestDailyAnalyticsEvent.eventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_eventName);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_eventName + 8);

  return v1;
}

void sub_25177E220()
{
  v1 = OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate);
LABEL_5:
    v13 = v2;
    return;
  }

  sub_251783FD0(0, &unk_2813D73D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251789E40;
  v5 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v6 = HDSampleEntityPredicateForDataType();
  v7 = sub_251783940(0, &qword_2813D7410, 0x277D10B70);
  *(v4 + 56) = v7;
  *(v4 + 32) = v6;
  v8 = [*(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile) metadataManager];
  v9 = [v8 predicateWithMetadataKey:*MEMORY[0x277CCE0D0] exists:1];

  *(v4 + 88) = v7;
  *(v4 + 64) = v9;
  v10 = sub_251787858();

  v11 = [objc_opt_self() predicateMatchingAllPredicates_];

  if (v11)
  {
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v11;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id HDHearingTestDailyAnalyticsEvent.init(profile:)(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v28 = sub_251787688();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2517876C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2517876D8();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251783DD8(0, &qword_2813D7460, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v25 - v18;
  v20 = &v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_eventName];
  *v20 = 0xD000000000000023;
  v20[1] = 0x800000025178C1E0;
  v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_isEventSubmissionIHAGated] = 0;
  v21 = OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType;
  sub_251783940(0, &unk_2813D7418, 0x277CCD8D8);
  *&v2[v21] = [swift_getObjCClassFromMetadata() audiogramSampleType];
  *&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate] = 0;
  sub_2517876B8();
  (*(v8 + 104))(v11, *MEMORY[0x277CC9988], v7);
  sub_251787678();
  sub_2517876A8();
  v22 = v28;
  (*(v3 + 8))(v6, v28);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v27);
  result = (*(v3 + 48))(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_oneYearAgo], v19, v22);
    *&v2[OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile] = v26;
    v24 = type metadata accessor for HDHearingTestDailyAnalyticsEvent();
    v29.receiver = v2;
    v29.super_class = v24;
    return objc_msgSendSuper2(&v29, sel_init);
  }

  return result;
}

void sub_25177E7D4(void *a1)
{
  v2 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v39 = MEMORY[0x277D83B88];
  *&v38 = 1;
  sub_25177F5A4(&v38, v37);
  v4 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v37, 0xD000000000000010, 0x800000025178BFF0, isUniquelyReferenced_nonNull_native);
  v6 = HKImproveHealthAndActivityAnalyticsAllowed();
  v39 = MEMORY[0x277D839B0];
  LOBYTE(v38) = v6;
  sub_25177F5A4(&v38, v37);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v37, 0xD000000000000021, 0x800000025178BFC0, v7);
  v36 = v4;
  v8 = [a1 environmentDataSource];
  v9 = [v8 activePairedDeviceProductType];

  v10 = MEMORY[0x277D837D0];
  if (v9)
  {
    v11 = sub_251787818();
    v13 = v12;

    v39 = v10;
    *&v38 = v11;
    *(&v38 + 1) = v13;
    sub_25177F5A4(&v38, v37);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_251782920(v37, 0xD000000000000016, 0x800000025178BFA0, v14);
    v36 = v4;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCD090]) init];
  *&v38 = 0;
  v16 = [v15 pairedDevicesWithError_];
  v17 = v38;
  if (!v16)
  {
LABEL_16:
    v24 = v17;

    sub_251787648();

    swift_willThrow();
    goto LABEL_27;
  }

  v18 = v16;
  sub_251783EA0(0, &qword_2813D7428, &protocolRef_HKCBDevice);
  v19 = sub_251787868();
  v20 = v17;

  v35 = v2;
  if (v19 >> 62)
  {
LABEL_21:
    v21 = sub_251787928();
    if (v21)
    {
LABEL_6:
      v22 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x253081680](v22, v19);
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v17 = *(v19 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_15;
          }
        }

        if ([v17 isHearingTestCapable])
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v22;
        if (v23 == v21)
        {
          goto LABEL_22;
        }
      }

      v25 = [v17 productName];
      if (v25)
      {
        v26 = v25;
        v27 = sub_251787818();
        v29 = v28;

        v39 = MEMORY[0x277D837D0];
        *&v38 = v27;
        *(&v38 + 1) = v29;
        sub_25177F5A4(&v38, v37);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_251782920(v37, 0xD000000000000024, 0x800000025178BF70, v30);
        swift_unknownObjectRelease();
        v31 = v36;
        goto LABEL_23;
      }

      sub_2517823A8(0xD000000000000024, 0x800000025178BF70, v37);
      swift_unknownObjectRelease();
      sub_251783D78(v37, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
      goto LABEL_24;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }
  }

LABEL_22:

  v39 = MEMORY[0x277D837D0];
  *&v38 = 4271950;
  *(&v38 + 1) = 0xE300000000000000;
  sub_25177F5A4(&v38, v37);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_251782920(v37, 0xD000000000000024, 0x800000025178BF70, v32);
  v31 = v36;
LABEL_23:
  v36 = v31;
LABEL_24:
  v33 = [a1 healthDataSource];
  if (v33)
  {
    sub_251782D80(&v36, 1, v33);
    sub_25177F73C();
    sub_25177F9AC(&v36);
    sub_251780530(&v36);
    swift_unknownObjectRelease();
  }

LABEL_27:
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25177ECE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25177F5A4(a1, v12);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_251782920(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84F70];
    v10 = MEMORY[0x277D83D88];
    sub_251783D78(a1, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    sub_2517823A8(a2, a3, v12);

    return sub_251783D78(v12, &unk_2813D73D0, v9 + 8, v10, sub_251783FD0);
  }

  return result;
}

uint64_t sub_25177EE08(void *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v4 = sub_251787688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  v10 = [a1 healthDataSource];
  if (v10)
  {
    v66 = v4;
    v67 = v10;
    *&v71 = 0;
    v11 = [v10 biologicalSexWithError_];
    v64 = ObjectType;
    if (v11)
    {
      v12 = v11;
      v65 = v1;
      v13 = v71;
      v14 = HKAnalyticsPropertyValueForBiologicalSex();
      v15 = sub_251787818();
      v17 = v16;

      v72 = MEMORY[0x277D837D0];
      *&v71 = v15;
      *(&v71 + 1) = v17;
      sub_25177F5A4(&v71, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v9;
      sub_251782920(v70, 0x6369676F6C6F6962, 0xED00007865536C61, isUniquelyReferenced_nonNull_native);

      v69 = v68;
      v19 = v66;
      v20 = v67;
    }

    else
    {
      v21 = v71;
      v22 = sub_251787648();

      v65 = v22;
      swift_willThrow();
      if (qword_2813D7430 != -1)
      {
        swift_once();
      }

      v23 = sub_2517877A8();
      __swift_project_value_buffer(v23, qword_2813D7468);
      v24 = sub_251787788();
      v25 = sub_251787878();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v71 = v27;
        *v26 = 136446210;
        v28 = sub_2517879B8();
        v30 = sub_251781DD0(v28, v29, &v71);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_251764000, v24, v25, "[%{public}s] Failed to fetch the user's biological sex. A sentinel value will be used.", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x253081EF0](v27, -1, -1);
        MEMORY[0x253081EF0](v26, -1, -1);
      }

      v19 = v66;
      v20 = v67;
      v31 = *MEMORY[0x277CCB800];
      v32 = sub_251787818();
      v72 = MEMORY[0x277D837D0];
      *&v71 = v32;
      *(&v71 + 1) = v33;
      sub_25177F5A4(&v71, v70);
      v34 = v69;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v34;
      sub_251782920(v70, 0x6369676F6C6F6962, 0xED00007865536C61, v35);

      v65 = 0;
      v69 = v68;
    }

    v36 = [a1 environmentDataSource];
    v37 = [v36 currentDate];

    sub_251787668();
    v38 = sub_251787658();
    (*(v5 + 8))(v8, v19);
    *&v71 = 0;
    v39 = [v20 ageWithCurrentDate:v38 error:&v71];

    v40 = v71;
    if (v39)
    {
      v41 = sub_251783940(0, &unk_27F45E548, 0x277CCABB0);
      v42 = v40;
      v43 = v39;
      v44 = sub_251787898();
      v45 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

      if (v45)
      {
        v72 = v41;
        *&v71 = v45;
        sub_25177F5A4(&v71, v70);
        v46 = v69;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v46;
        sub_251782920(v70, 6645601, 0xE300000000000000, v47);

        v69 = v68;
      }

      else
      {
        sub_2517823A8(6645601, 0xE300000000000000, &v71);

        sub_251783D78(&v71, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
      }
    }

    else
    {
      v48 = v71;
      v49 = sub_251787648();

      swift_willThrow();
      if (qword_2813D7430 != -1)
      {
        swift_once();
      }

      v50 = sub_2517877A8();
      __swift_project_value_buffer(v50, qword_2813D7468);
      v51 = sub_251787788();
      v52 = sub_251787878();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v71 = v54;
        *v53 = 136446210;
        v55 = sub_2517879B8();
        v57 = sub_251781DD0(v55, v56, &v71);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_251764000, v51, v52, "[%{public}s] Failed to fetch the user's age. A sentinel value will be used.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x253081EF0](v54, -1, -1);
        MEMORY[0x253081EF0](v53, -1, -1);
      }

      v58 = *MEMORY[0x277CCB7A0];
      v72 = sub_251783940(0, &unk_27F45E548, 0x277CCABB0);
      *&v71 = v58;
      sub_25177F5A4(&v71, v70);
      v59 = v58;
      v60 = v69;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v60;
      sub_251782920(v70, 6645601, 0xE300000000000000, v61);

      v69 = v68;
    }

    sub_251782D80(&v69, 0, v20);
    sub_251780E64();
    sub_251781404();
    swift_unknownObjectRelease();
    v9 = v69;
  }

  v62 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t type metadata accessor for HDHearingTestDailyAnalyticsEvent()
{
  result = qword_2813D7438;
  if (!qword_2813D7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_25177F5A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25177F5CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  v9 = sub_2517877B8();

  return v9;
}

uint64_t sub_25177F6C0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2517878B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_251782D2C(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_25177F73C()
{
  v21 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v5 = v4;
  v19[0] = 0;
  v6 = [v1 countOfSamplesWithType:v2 profile:v3 matchingPredicate:v4 withError:v19];

  if (v19[0])
  {
    v7 = qword_2813D7430;
    v8 = v19[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_2517877A8();
    __swift_project_value_buffer(v9, qword_2813D7468);
    v10 = sub_251787788();
    v11 = sub_251787878();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      v14 = sub_2517879B8();
      v16 = sub_251781DD0(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_251764000, v10, v11, "[%{public}s] Could not read number of first party samples.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x253081EF0](v13, -1, -1);
      MEMORY[0x253081EF0](v12, -1, -1);
    }
  }

  else
  {
    v17 = MEMORY[0x277D839B0];
    v20 = MEMORY[0x277D839B0];
    v19[0] = (v6 > 0);
    sub_25177ECE0(v19, 0xD000000000000016, 0x800000025178C080);
    v20 = v17;
    LOBYTE(v19[0]) = v6 > 1;
    sub_25177ECE0(v19, 0xD00000000000001FLL, 0x800000025178C0A0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25177F9AC(uint64_t a1)
{
  v91 = a1;
  v104 = *MEMORY[0x277D85DE8];
  v85[1] = swift_getObjectType();
  v2 = sub_251787688();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v96 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = v85 - v6;
  v7 = sub_2517876D8();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_251787628();
  v93 = *(v89 - 8);
  v11 = *(v93 + 64);
  v12 = MEMORY[0x28223BE20](v89);
  v86 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v85 - v14;
  v16 = objc_opt_self();
  v17 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v18 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v20 = v19;
  *&v102 = 0;
  v21 = [v16 oldestSampleWithType:v17 profile:v18 encodingOptions:0 predicate:v19 error:&v102];

  v22 = v102;
  if (v21)
  {
    v23 = v102;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
    v24 = v102;
  }

  v102 = v100;
  v103 = v101;
  v25 = MEMORY[0x277D84F70];
  if (*(&v101 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      v26 = v99;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_251783D78(&v102, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    v26 = 0;
  }

  v27 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent____lazy_storage___firstPartyAudiogramPredicate);
  *&v102 = v22;
  v28 = [v16 mostRecentSampleWithType:v17 profile:v18 encodingOptions:0 predicate:v27 anchor:0 error:&v102];
  v88 = v102;

  if (v28)
  {
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;
  if (*(&v101 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    v29 = swift_dynamicCast();
    v30 = v99;
    if (!v29)
    {
      v30 = 0;
    }

    v87 = v30;
  }

  else
  {
    sub_251783D78(&v102, &unk_2813D73D0, v25 + 8, MEMORY[0x277D83D88], sub_251783FD0);
    v87 = 0;
  }

  v31 = MEMORY[0x277CC9940];
  v90 = v26;
  if (v26)
  {
    v32 = v26;
    sub_2517876B8();
    sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v33 = sub_2517876C8();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_251789E50;
    (*(v34 + 104))(v37 + v36, *v31, v33);
    sub_251783988(v37);
    swift_setDeallocating();
    (*(v34 + 8))(v37 + v36, v33);
    swift_deallocClassInstance();
    v38 = [v32 _creationDate];
    v39 = v92;
    sub_251787668();

    v40 = v96;
    sub_251787678();
    sub_251787698();

    v41 = *(v97 + 8);
    v42 = v40;
    v43 = v98;
    v41(v42, v98);
    v41(v39, v43);
    (*(v94 + 8))(v10, v95);
    v44 = sub_2517875F8();
    LOBYTE(v41) = v45;
    v46 = v15;
    v47 = v89;
    (*(v93 + 8))(v46, v89);
    if (v41)
    {
      v44 = 0;
      v48 = 0;
      *(&v102 + 1) = 0;
      *&v103 = 0;
    }

    else
    {
      v48 = MEMORY[0x277D83B88];
    }

    v53 = v87;
    *&v102 = v44;
    *(&v103 + 1) = v48;
    sub_25177ECE0(&v102, 0xD000000000000018, 0x800000025178C0C0);

    if (v53)
    {
LABEL_32:
      sub_2517876B8();
      sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v69 = sub_2517876C8();
      v70 = *(v69 - 8);
      v71 = *(v70 + 72);
      v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_251789E50;
      (*(v70 + 104))(v73 + v72, *MEMORY[0x277CC9940], v69);
      sub_251783988(v73);
      swift_setDeallocating();
      (*(v70 + 8))(v73 + v72, v69);
      swift_deallocClassInstance();
      v74 = [v53 _creationDate];
      v75 = v92;
      sub_251787668();

      v76 = v96;
      sub_251787678();
      v77 = v86;
      sub_251787698();

      v78 = *(v97 + 8);
      v79 = v76;
      v80 = v98;
      v78(v79, v98);
      v78(v75, v80);
      (*(v94 + 8))(v10, v95);
      v81 = sub_2517875F8();
      LOBYTE(v80) = v82;
      (*(v93 + 8))(v77, v47);
      if (v80)
      {
        v81 = 0;
        v83 = 0;
        *(&v102 + 1) = 0;
        *&v103 = 0;
      }

      else
      {
        v83 = MEMORY[0x277D83B88];
      }

      *&v102 = v81;
      *(&v103 + 1) = v83;
      sub_25177ECE0(&v102, 0xD000000000000017, 0x800000025178C0E0);

      goto LABEL_36;
    }
  }

  else
  {
    if (qword_2813D7430 != -1)
    {
      swift_once();
    }

    v49 = sub_2517877A8();
    __swift_project_value_buffer(v49, qword_2813D7468);
    v50 = sub_251787788();
    v51 = sub_251787888();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v87;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v102 = v55;
      *v54 = 136446210;
      v56 = sub_2517879B8();
      v58 = sub_251781DD0(v56, v57, &v102);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_251764000, v50, v51, "[%{public}s] Could not find oldest audiogram. Not submiting this data point to analytics.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x253081EF0](v55, -1, -1);
      MEMORY[0x253081EF0](v54, -1, -1);
    }

    v47 = v89;
    if (v53)
    {
      goto LABEL_32;
    }
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v59 = sub_2517877A8();
  __swift_project_value_buffer(v59, qword_2813D7468);
  v60 = sub_251787788();
  v61 = sub_251787888();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v90;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v102 = v65;
    *v64 = 136446210;
    v66 = sub_2517879B8();
    v68 = sub_251781DD0(v66, v67, &v102);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_251764000, v60, v61, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x253081EF0](v65, -1, -1);
    MEMORY[0x253081EF0](v64, -1, -1);
  }

LABEL_36:
  v84 = *MEMORY[0x277D85DE8];
}

void sub_251780530(uint64_t a1)
{
  v98 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_251787688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v71 - v9;
  v10 = sub_2517876D8();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v10);
  v92 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_251787628();
  v91 = *(v86 - 8);
  v13 = *(v91 + 64);
  v14 = MEMORY[0x28223BE20](v86);
  v85 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = objc_opt_self();
  v19 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v20 = *(v1 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v22 = v21;
  *&v94 = 0;
  v23 = [v18 mostRecentSampleWithType:v19 profile:v20 encodingOptions:0 predicate:v21 anchor:0 error:&v94];

  v24 = v94;
  if (v23)
  {
    v25 = v94;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
    v26 = v24;
  }

  v96 = v94;
  v97 = v95;
  if (*(&v95 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      ObjectType = a1;
      v83 = v24;
      v84 = v93;
      sub_2517876B8();
      sub_251783DD8(0, &qword_27F45E5D0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v28 = v27;
      v29 = sub_2517876C8();
      v30 = v8;
      v31 = *(v29 - 8);
      v32 = *(v31 + 80);
      v33 = (v32 + 32) & ~v32;
      v77 = *(v31 + 72);
      v76 = v32;
      v78 = v28;
      v34 = swift_allocObject();
      v73 = xmmword_251789E50;
      *(v34 + 16) = xmmword_251789E50;
      v35 = *MEMORY[0x277CC9968];
      v36 = v3;
      v37 = *(v31 + 104);
      v75 = v31 + 104;
      v74 = v37;
      v37(v34 + v33, v35, v29);
      sub_251783988(v34);
      swift_setDeallocating();
      v38 = *(v31 + 8);
      v79 = v29;
      v72 = v38;
      v38(v34 + v33, v29);
      swift_deallocClassInstance();
      v84 = v84;
      v39 = [v84 _creationDate];
      v40 = v90;
      sub_251787668();

      sub_251787678();
      v41 = v92;
      sub_251787698();

      v42 = *(v4 + 8);
      v80 = v30;
      v42(v30, v36);
      v82 = v36;
      v81 = v4 + 8;
      v42(v40, v36);
      v43 = v88;
      v87 = *(v87 + 8);
      (v87)(v41, v88);
      v44 = sub_251787608();
      LOBYTE(v36) = v45;
      v46 = *(v91 + 8);
      v47 = v86;
      v91 += 8;
      v71 = v46;
      v46(v17, v86);
      if (v36)
      {
        v48 = 0;
        v96 = 0uLL;
        *&v97 = 0;
      }

      else
      {
        LOBYTE(v96) = v44 < 31;
        v48 = MEMORY[0x277D839B0];
      }

      *(&v97 + 1) = v48;
      sub_25177ECE0(&v96, 0xD000000000000022, 0x800000025178C100);
      v57 = v92;
      sub_2517876B8();
      v58 = swift_allocObject();
      *(v58 + 16) = v73;
      v59 = v79;
      v74(v58 + v33, *MEMORY[0x277CC9988], v79);
      sub_251783988(v58);
      swift_setDeallocating();
      v72(v58 + v33, v59);
      swift_deallocClassInstance();
      v60 = v84;
      v61 = [v84 _creationDate];

      v62 = v90;
      sub_251787668();

      v63 = v80;
      sub_251787678();
      v64 = v85;
      sub_251787698();

      v65 = v82;
      v42(v63, v82);
      v42(v62, v65);
      (v87)(v57, v43);
      v66 = sub_251787618();
      LOBYTE(v63) = v67;
      v71(v64, v47);
      if (v63)
      {
        v68 = 0;
        v96 = 0uLL;
        *&v97 = 0;
      }

      else
      {
        LOBYTE(v96) = v66 < 1;
        v68 = MEMORY[0x277D839B0];
      }

      v69 = v83;
      *(&v97 + 1) = v68;
      sub_25177ECE0(&v96, 0xD000000000000020, 0x800000025178C130);

      goto LABEL_19;
    }
  }

  else
  {
    sub_251783D78(&v96, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v49 = sub_2517877A8();
  __swift_project_value_buffer(v49, qword_2813D7468);
  v50 = sub_251787788();
  v51 = sub_251787888();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v96 = v53;
    *v52 = 136446210;
    v54 = sub_2517879B8();
    v56 = sub_251781DD0(v54, v55, &v96);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_251764000, v50, v51, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x253081EF0](v53, -1, -1);
    MEMORY[0x253081EF0](v52, -1, -1);
  }

LABEL_19:
  v70 = *MEMORY[0x277D85DE8];
}

void sub_251780E64()
{
  v47 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_251783FD0(0, &unk_2813D73D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_251789E40;
  sub_25177E220();
  v5 = v4;
  *(v3 + 56) = sub_251783940(0, &qword_27F45E5C8, 0x277D10B20);
  *(v3 + 32) = v5;
  v6 = sub_251787658();
  v7 = HDDataEntityPredicateForCreationDate();

  v44 = sub_251783940(0, &qword_2813D7410, 0x277D10B70);
  *(v3 + 88) = v44;
  *(v3 + 64) = v7;
  v8 = sub_251787858();

  v43 = objc_opt_self();
  v9 = [v43 predicateMatchingAllPredicates_];

  v45[0] = 0;
  v42 = objc_opt_self();
  v10 = [v42 countOfSamplesWithType:v1 profile:v2 matchingPredicate:v9 withError:v45];

  v11 = &OBJC_METACLASS___HDHeadphoneDoseManager;
  v41 = v45[0];
  if (v45[0])
  {
    v12 = qword_2813D7430;
    v13 = v45[0];
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_2517877A8();
    __swift_project_value_buffer(v14, qword_2813D7468);
    v15 = sub_251787788();
    v16 = sub_251787878();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45[0] = v18;
      *v17 = 136446210;
      v19 = sub_2517879B8();
      v21 = v2;
      v22 = v1;
      v23 = sub_251781DD0(v19, v20, v45);

      *(v17 + 4) = v23;
      v1 = v22;
      v2 = v21;
      v11 = &OBJC_METACLASS___HDHeadphoneDoseManager;
      _os_log_impl(&dword_251764000, v15, v16, "[%{public}s] Could not read number of first party samples.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x253081EF0](v18, -1, -1);
      MEMORY[0x253081EF0](v17, -1, -1);
    }
  }

  else
  {
    v46 = MEMORY[0x277D83B88];
    v45[0] = v10;
    sub_25177ECE0(v45, 0xD00000000000001FLL, 0x800000025178C160);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_251789E40;
  v25 = HDSampleEntityPredicateForDataType();
  *(v24 + 56) = v44;
  *(v24 + 32) = v25;
  v26 = sub_251787658();
  v27 = HDDataEntityPredicateForCreationDate();

  *(v24 + 88) = v44;
  *(v24 + 64) = v27;
  v28 = sub_251787858();

  v29 = [v43 predicateMatchingAllPredicates_];

  v45[0] = v41;
  v30 = [v42 countOfSamplesWithType:v1 profile:v2 matchingPredicate:v29 withError:v45];

  v31 = v45[0];
  if (v31)
  {

    if (v11[26].info != -1)
    {
      swift_once();
    }

    v32 = sub_2517877A8();
    __swift_project_value_buffer(v32, qword_2813D7468);
    v33 = sub_251787788();
    v34 = sub_251787878();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136446210;
      v37 = sub_2517879B8();
      v39 = sub_251781DD0(v37, v38, v45);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_251764000, v33, v34, "[%{public}s] Could not read number of total samples.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x253081EF0](v36, -1, -1);
      MEMORY[0x253081EF0](v35, -1, -1);
    }
  }

  else
  {
    v46 = MEMORY[0x277D83B88];
    v45[0] = v30;
    sub_25177ECE0(v45, 0xD00000000000001ALL, 0x800000025178C180);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_251781404()
{
  v38 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_audiogramDataType);
  v3 = *(v0 + OBJC_IVAR____TtC19HealthHearingDaemon32HDHearingTestDailyAnalyticsEvent_profile);
  sub_25177E220();
  v5 = v4;
  *&v34 = 0;
  v6 = [v1 mostRecentSampleWithType:v2 profile:v3 encodingOptions:0 predicate:v4 anchor:0 error:&v34];

  v7 = v34;
  if (v6)
  {
    v8 = v34;
    sub_2517878A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    sub_251783940(0, &qword_27F45E5C0, 0x277CCD030);
    if (swift_dynamicCast())
    {
      v10 = v32;
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
      if (v10)
      {
        v11 = v10;
        [v11 leftEarDiagnostic];
        v12 = HKLocalizedStringForHearingLevelClassification();
        if (v12 && (v13 = v12, v14 = sub_251787818(), v16 = v15, v13, v16))
        {
          v33 = MEMORY[0x277D837D0];
          *&v32 = v14;
          *(&v32 + 1) = v16;
          sub_25177F5A4(&v32, &v34);
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v36 = v34;
        v37 = v35;

        sub_25177ECE0(&v36, 0xD000000000000019, 0x800000025178C1A0);
        v25 = v11;
        [v25 rightEarDiagnostic];
        v26 = HKLocalizedStringForHearingLevelClassification();
        if (v26 && (v27 = v26, v28 = sub_251787818(), v30 = v29, v27, v30))
        {
          v33 = MEMORY[0x277D837D0];
          *&v32 = v28;
          *(&v32 + 1) = v30;
          sub_25177F5A4(&v32, &v34);
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v36 = v34;
        v37 = v35;

        goto LABEL_27;
      }

LABEL_20:
      v36 = 0u;
      v37 = 0u;
      sub_25177ECE0(&v36, 0xD000000000000019, 0x800000025178C1A0);
      v25 = 0;
      v36 = 0u;
      v37 = 0u;
LABEL_27:
      sub_25177ECE0(&v36, 0xD00000000000001ALL, 0x800000025178C1C0);

      goto LABEL_28;
    }
  }

  else
  {
    sub_251783D78(&v36, &unk_2813D73D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251783FD0);
    if (!v7)
    {
      goto LABEL_20;
    }

    v10 = 0;
  }

  if (qword_2813D7430 != -1)
  {
    swift_once();
  }

  v17 = sub_2517877A8();
  __swift_project_value_buffer(v17, qword_2813D7468);
  v18 = sub_251787788();
  v19 = sub_251787888();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v36 = v21;
    *v20 = 136446210;
    v22 = sub_2517879B8();
    v24 = sub_251781DD0(v22, v23, &v36);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_251764000, v18, v19, "[%{public}s] Could not find newest audiogram. Not submiting this data point to analytics.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x253081EF0](v21, -1, -1);
    MEMORY[0x253081EF0](v20, -1, -1);
  }

LABEL_28:
  v31 = *MEMORY[0x277D85DE8];
}

id HDHearingTestDailyAnalyticsEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHearingTestDailyAnalyticsEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHearingTestDailyAnalyticsEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2517819D8(uint64_t a1, id *a2)
{
  result = sub_2517877F8();
  *a2 = 0;
  return result;
}

uint64_t sub_251781A50(uint64_t a1, id *a2)
{
  v3 = sub_251787808();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251781AD0@<X0>(uint64_t *a1@<X8>)
{
  sub_251787818();
  v2 = sub_2517877E8();

  *a1 = v2;
  return result;
}

uint64_t sub_251781B14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2517877E8();

  *a2 = v5;
  return result;
}

uint64_t sub_251781B5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_251787818();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251781B88(uint64_t a1)
{
  v2 = sub_251783D30(&qword_27F45E680, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v3 = sub_251783D30(&qword_27F45E688, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251781C44()
{
  v1 = *v0;
  v2 = sub_251787818();
  v3 = MEMORY[0x2530815C0](v2);

  return v3;
}

uint64_t sub_251781C80()
{
  v1 = *v0;
  sub_251787818();
  sub_251787828();
}

uint64_t sub_251781CD4()
{
  v1 = *v0;
  sub_251787818();
  sub_251787998();
  sub_251787828();
  v2 = sub_2517879A8();

  return v2;
}

uint64_t sub_251781D48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251787818();
  v6 = v5;
  if (v4 == sub_251787818() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251787978();
  }

  return v9 & 1;
}

uint64_t sub_251781DD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251781E9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2517838E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_251781E9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251781FA8(a5, a6);
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
    result = sub_251787918();
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

uint64_t sub_251781FA8(uint64_t a1, unint64_t a2)
{
  v4 = sub_251781FF4(a1, a2);
  sub_251782124(&unk_2863A3FD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251781FF4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251782210(v5, 0);
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

  result = sub_251787918();
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
        v10 = sub_251787838();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251782210(v10, 0);
        result = sub_2517878F8();
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

uint64_t sub_251782124(uint64_t result)
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

  result = sub_25178229C(result, v12, 1, v3);
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

void *sub_251782210(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_251783FD0(0, &qword_27F45E5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25178229C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251783FD0(0, &qword_27F45E5B8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_2517823A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25178244C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251782B94();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25177F5A4((*(v12 + 56) + 32 * v9), a3);
    sub_251782770(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_25178244C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_251787998();
  sub_251787828();
  v6 = sub_2517879A8();

  return sub_251782ADC(a1, a2, v6);
}

uint64_t sub_2517824C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251784020();
  v36 = a2;
  result = sub_251787948();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25177F5A4(v25, v37);
      }

      else
      {
        sub_2517838E0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_251787998();
      sub_251787828();
      result = sub_2517879A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25177F5A4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_251782770(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2517878C8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_251787998();

      sub_251787828();
      v14 = sub_2517879A8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_251782920(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25178244C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_251782B94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2517824C4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25178244C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_251787988();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_25177F5A4(a1, v23);
  }

  else
  {
    sub_251782A70(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_251782A70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25177F5A4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_251782ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_251787978())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_251782B94()
{
  v1 = v0;
  sub_251784020();
  v2 = *v0;
  v3 = sub_251787938();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2517838E0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25177F5A4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_251782D2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_251782D80(uint64_t a1, int a2, void *a3)
{
  v69 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_2517876F8();
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251787738();
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v62 - v14;
  v16 = sub_251787728();
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_251787758();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v73 = v62 - v26;
  v27 = [a3 featureStatusProviderForIdentifier_];
  if (v27 && (v77[0] = v27, sub_251783EA0(0, &unk_2813D7400, &protocolRef_HKFeatureStatusProviding), sub_251783E3C(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v75 + 1))
    {
      v63 = v9;
      v64 = v21;
      v65 = v20;
      v62[1] = a1;
      sub_251783F00(&v74, v77);
      __swift_project_boxed_opaque_existential_1(v77, v77[3]);
      v28 = v73;
      sub_251787778();
      v30 = v64;
      v31 = v65;
      (*(v64 + 16))(v25, v28, v65);
      v32 = (*(v30 + 88))(v25, v31);
      v33 = v28;
      if (v32 == *MEMORY[0x277D11288])
      {
        (*(v30 + 96))(v25, v31);
        v35 = v70;
        v34 = v71;
        (*(v70 + 32))(v19, v25, v71);
        v36 = v63;
        if (v69)
        {
          v37 = sub_251787718();
          v38 = sub_25177F6C0(v37);
          v40 = v39;

          *(&v75 + 1) = MEMORY[0x277D837D0];
          if (!v40)
          {
            v41 = *MEMORY[0x277CCB800];
            v38 = sub_251787818();
            v40 = v42;
          }

          *&v74 = v38;
          *(&v74 + 1) = v40;
          sub_25177ECE0(&v74, 0xD000000000000015, 0x800000025178BF50);
          v43 = MEMORY[0x277D839B0];
          *(&v75 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v74) = 1;
          sub_25177ECE0(&v74, 0xD000000000000017, 0x800000025178C010);
          v44 = *MEMORY[0x277CCBEA0];
          v45 = sub_251787768();
          v46 = [v45 areAllRequirementsSatisfied];

          *(&v75 + 1) = v43;
          LOBYTE(v74) = v46;
          sub_25177ECE0(&v74, 0xD000000000000017, 0x800000025178C030);
          sub_2517876E8();
          v47 = sub_251787748();
          (*(v68 + 8))(v15, v36);
          v48 = [v47 highestPriorityUnsatisfiedRequirement];

          v49 = 0;
          if (v48)
          {
            type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
          }

          else
          {
            *(&v74 + 1) = 0;
            *&v75 = 0;
          }

          v60 = v65;
          v61 = v64;
          *&v74 = v48;
          *(&v75 + 1) = v49;
          sub_25177ECE0(&v74, 0xD000000000000023, 0x800000025178C050);
          (*(v70 + 8))(v19, v71);
          (*(v61 + 8))(v73, v60);
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        (*(v35 + 8))(v19, v34);
      }

      else
      {
        v50 = v63;
        if (v32 != *MEMORY[0x277D11280])
        {
          v59 = *(v30 + 8);
          v59(v33, v31);
          v59(v25, v31);
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        (*(v30 + 96))(v25, v31);
        v51 = v66;
        v52 = v25;
        v53 = v67;
        (*(v66 + 32))(v8, v52, v67);
        if (v69)
        {
          *(&v75 + 1) = MEMORY[0x277D837D0];
          *&v74 = 4271950;
          *(&v74 + 1) = 0xE300000000000000;
          sub_25177ECE0(&v74, 0xD000000000000015, 0x800000025178BF50);
          v54 = MEMORY[0x277D839B0];
          *(&v75 + 1) = MEMORY[0x277D839B0];
          LOBYTE(v74) = 0;
          sub_25177ECE0(&v74, 0xD000000000000017, 0x800000025178C010);
          *(&v75 + 1) = v54;
          LOBYTE(v74) = 0;
          sub_25177ECE0(&v74, 0xD000000000000017, 0x800000025178C030);
          sub_2517876E8();
          v55 = *MEMORY[0x277CCBEA0];
          v56 = sub_251787748();
          (*(v68 + 8))(v13, v50);
          v57 = [v56 highestPriorityUnsatisfiedRequirement];

          v58 = 0;
          if (v57)
          {
            type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
          }

          else
          {
            *(&v74 + 1) = 0;
            *&v75 = 0;
          }

          *&v74 = v57;
          *(&v75 + 1) = v58;
          sub_25177ECE0(&v74, 0xD000000000000023, 0x800000025178C050);
          (*(v51 + 8))(v8, v53);
          (*(v30 + 8))(v73, v31);
          return __swift_destroy_boxed_opaque_existential_0Tm(v77);
        }

        (*(v51 + 8))(v8, v53);
      }

      (*(v30 + 8))(v33, v31);
      return __swift_destroy_boxed_opaque_existential_0Tm(v77);
    }
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  return sub_251783D78(&v74, &unk_27F45E5F0, sub_251783E3C, MEMORY[0x277D83D88], sub_251783DD8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251783764()
{
  result = sub_251787688();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2517838E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251783940(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_251783988(uint64_t a1)
{
  v2 = sub_2517876C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_251783C9C();
    v10 = sub_2517878D8();
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
      sub_251783D30(&qword_27F45E5E0, MEMORY[0x277CC99D0]);
      v18 = sub_2517877C8();
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
          sub_251783D30(&qword_27F45E5E8, MEMORY[0x277CC99D0]);
          v25 = sub_2517877D8();
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

  return MEMORY[0x277D84FA0];
}

void sub_251783C9C()
{
  if (!qword_27F45E5D8)
  {
    sub_2517876C8();
    sub_251783D30(&qword_27F45E5E0, MEMORY[0x277CC99D0]);
    v0 = sub_2517878E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45E5D8);
    }
  }
}

uint64_t sub_251783D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251783D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_251783DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251783E3C()
{
  result = qword_2813D7458;
  if (!qword_2813D7458)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D7458);
  }

  return result;
}

uint64_t sub_251783EA0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251783F00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_251783FD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251784020()
{
  if (!qword_2813D73E8)
  {
    v0 = sub_251787958();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D73E8);
    }
  }
}

uint64_t sub_25178415C()
{
  v0 = sub_2517877A8();
  __swift_allocate_value_buffer(v0, qword_2813D7468);
  __swift_project_value_buffer(v0, qword_2813D7468);
  v1 = *MEMORY[0x277D11250];
  sub_251787818();
  return sub_251787798();
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