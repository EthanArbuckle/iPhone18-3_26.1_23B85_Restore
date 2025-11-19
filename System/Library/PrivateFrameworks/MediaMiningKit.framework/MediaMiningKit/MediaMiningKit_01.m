uint64_t sub_22F91F1B4()
{
  v50 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_22F989680();
  v7 = v6;
  sub_22F989670();
  v8 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v47 = *(v4 + 16);
  v47(v2, v1, v3);

  v9 = sub_22F989A00();
  v10 = sub_22F989C40();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  v48 = v8;
  if (v11)
  {
    v44 = v0[4];
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v15 = 136315394;
    *(v15 + 4) = sub_22F916FA0(v5, v7, &v49);
    *(v15 + 12) = 2080;
    log = v9;
    v16 = sub_22F9894B0();
    v17 = [v8 stringFromDate_];

    v18 = sub_22F989AC0();
    v20 = v19;

    v21 = *(v13 + 8);
    v21(v12, v44);
    v22 = v21;
    v23 = sub_22F916FA0(v18, v20, &v49);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_22F907000, log, v10, "Fetched new Shazam server version %s, server updated %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231904DE0](v46, -1, -1);
    MEMORY[0x231904DE0](v15, -1, -1);
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
    v22 = v24;
  }

  v25 = v0[4];
  v26 = v0[5];
  v27 = v0[3];
  v47(v27, v0[7], v25);
  (*(v26 + 56))(v27, 0, 1, v25);
  v28 = sub_22F989AB0();

  v41 = v22;
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v29 = 0;
  }

  else
  {
    v30 = v0[4];
    v31 = v0[3];
    v29 = sub_22F9894B0();
    v22(v31, v30);
  }

  v32 = v0[12];
  v33 = v0[13];
  v34 = v0[10];
  loga = v0[11];
  v35 = v0[9];
  v40 = v0[8];
  v36 = v0[7];
  v37 = v0[4];
  v45 = [objc_allocWithZone(CLSPublicEventServerVersion) initWithVersionString:v28 dateOfServerUpdate:v29];

  v41(v36, v37);
  (*(v35 + 8))(v34, v40);
  (*(v32 + 8))(v33, loga);

  v38 = v0[1];

  return v38(v45);
}

uint64_t sub_22F91F5D4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F91F800(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22F9134BC;

  return sub_22F91EE40();
}

id PublicEventShazamServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventShazamServiceClient.init()()
{
  sub_22F989A10();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublicEventShazamServiceClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PublicEventShazamServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublicEventShazamServiceClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F91FA84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22F9110BC;

  return v6();
}

uint64_t sub_22F91FB6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22F90D568;

  return v7();
}

uint64_t sub_22F91FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_22F910E7C(a3, v23 - v10);
  v12 = sub_22F989BE0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22F920274(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22F989BD0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_22F989BA0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_22F989AD0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22F920274(a3);

    return v21;
  }

LABEL_8:
  sub_22F920274(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for PublicEventShazamServiceClient()
{
  result = qword_28148AB48;
  if (!qword_28148AB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F91FF64()
{
  result = sub_22F989A20();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PublicEventShazamServiceClient.serverVersion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F91CB68;

  return v5();
}

uint64_t sub_22F9201C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F90D568;

  return sub_22F91F800(v2, v3);
}

uint64_t sub_22F920274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F9202DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F9110BC;

  return sub_22F90E114(a1, v4);
}

uint64_t sub_22F920394(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F90D568;

  return sub_22F90E114(a1, v4);
}

__CFString *CLSStringFromPublicEventServiceSource(uint64_t a1)
{
  if (a1)
  {
    return @"shazam";
  }

  else
  {
    return @"geo";
  }
}

void sub_22F920F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 176), 8);
  _Block_object_dispose((v55 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F921AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v69 - 176), 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

void sub_22F922368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F924650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F9262F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F926758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F927700(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t CLSDeviceIs2GBOrLess()
{
  if (CLSDeviceIs2GBOrLess_onceToken != -1)
  {
    dispatch_once(&CLSDeviceIs2GBOrLess_onceToken, &__block_literal_global_159);
  }

  return CLSDeviceIs2GBOrLess_sDeviceIs2GBOrLess;
}

void __CLSDeviceIs2GBOrLess_block_invoke()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  CLSDeviceIs2GBOrLess_sDeviceIs2GBOrLess = [v0 physicalMemory] < 0x80000001;
}

__CFString *CLSHolidayCalendarEventRuleRequiredTraitsCategoryStringForCategory(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_284489518;
  }

  else
  {
    return off_2788A6DF8[a1];
  }
}

void sub_22F92BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F92EFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F92FAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F9305E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F930B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93155C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F9323B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F932B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__839(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__925(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _sortedPeopleByScores(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [v3 count];
    if (v5 == [v4 count])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___sortedPeopleByScores_block_invoke;
      v8[3] = &unk_2788A70F8;
      v9 = v3;
      v10 = v4;
      v6 = v3;
      v3 = [v6 sortedArrayUsingComparator:v8];
    }
  }

  return v3;
}

id _familyPresentationStringsForPersons(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___familyPresentationStringsForPersons_block_invoke;
  v13[3] = &unk_2788A70A8;
  v14 = v2;
  v3 = v2;
  [v1 enumerateObjectsUsingBlock:v13];
  v4 = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___familyPresentationStringsForPersons_block_invoke_2;
  v10[3] = &unk_2788A70D0;
  v11 = v1;
  v5 = v4;
  v12 = v5;
  v6 = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

id _flattenPresentationStringFromTokens(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        v4 = [v1 count] - 1;
        v5 = @", ";
        if (v3 != v4 || (v6 = [v1 count] - 1, v5 = @" and ", v3 == v6))
        {
          [v2 appendString:v5];
        }
      }

      v7 = [v1 objectAtIndexedSubscript:v3];
      [v2 appendString:v7];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  return v2;
}

void ___familyPresentationStringsForPersons_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relationship];
  if ([CLSPersonIdentity isParentRelationship:v4])
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [v6 setObject:v3 forKey:v7];
}

void ___familyPresentationStringsForPersons_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _numberOfRelationshipForPersons([v4 relationship], *(a1 + 32));
  v6 = *(a1 + 40);
  if (v5 < 2)
  {
    [v4 presentationString];
  }

  else
  {
    [v4 pluralPresentationString];
  }
  v7 = ;

  [v6 addObject:v7];
}

uint64_t _numberOfRelationshipForPersons(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    v8 = a1 & 0xFFFFFFFFFFFFFFFBLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ((v8 & [*(*(&v11 + 1) + 8 * i) relationship]) != 0)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t ___sortedPeopleByScores_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) indexOfObject:v5];
  v8 = [*(a1 + 32) indexOfObject:v6];
  if (v7 < [*(a1 + 40) count] && v8 < objc_msgSend(*(a1 + 40), "count"))
  {
    v9 = [*(a1 + 40) objectAtIndex:v7];
    [v9 doubleValue];
    v11 = v10;

    v12 = [*(a1 + 40) objectAtIndex:v8];
    [v12 doubleValue];
    v14 = v13;

    if (v11 < v14)
    {
      v15 = 1;
      goto LABEL_11;
    }

    if (v11 > v14)
    {
      v15 = -1;
      goto LABEL_11;
    }
  }

  v16 = [v5 fullName];

  if (v16)
  {
    v17 = [v5 fullName];
    v18 = [v6 fullName];
    v15 = [v17 compare:v18];
  }

  else
  {
    v19 = MEMORY[0x277CCABB0];
    v17 = [v5 fullName];
    v18 = [v19 numberWithUnsignedInteger:v17];
    v20 = MEMORY[0x277CCABB0];
    v21 = [v6 fullName];
    v22 = [v20 numberWithUnsignedInteger:v21];
    v15 = [v18 compare:v22];
  }

LABEL_11:
  return v15;
}

void sub_22F9382FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F939550(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F939908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F93E364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93E508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1259(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F93E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93EEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93F210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93F5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F93FB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F941924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F943E30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_22F9446AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F9451E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

double CLSCosineSimilarityBetweenSceneprints(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 elementCount];
  v6 = 0.0;
  if (v5 == [v4 elementCount])
  {
    v7 = [v3 descriptorData];
    v8 = [v7 bytes];

    v9 = [v4 descriptorData];
    v10 = [v9 bytes];

    if (v8)
    {
      if (v10)
      {
        v11 = 0.0;
        if (v5)
        {
          v12 = 0.0;
          v13 = 0.0;
          do
          {
            v14 = *v8++;
            v15 = v14;
            v16 = *v10++;
            v11 = v11 + (v15 * v16);
            v12 = v12 + (v15 * v15);
            v13 = v13 + (v16 * v16);
            --v5;
          }

          while (v5);
          if (v12 > 0.0 && v13 > 0.0)
          {
            v11 = v11 / sqrtf(v13 * v12);
          }
        }

        v6 = v11;
      }
    }
  }

  return v6;
}

double CLSEuclidianDistanceBetweenSceneprints(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 requestRevision];
  if (v5 != [v4 requestRevision])
  {
    v13 = +[CLSLogging sharedLogging];
    v14 = [v13 loggingConnection];

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_13:

      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Cannot compute euclidian distance between sceneprints with different revisions.";
    v16 = buf;
LABEL_10:
    _os_log_impl(&dword_22F907000, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
    goto LABEL_13;
  }

  v6 = [v3 elementCount];
  v7 = [v3 elementType];
  if (v7 != [v4 elementType] || v6 != objc_msgSend(v4, "elementCount"))
  {
    v17 = +[CLSLogging sharedLogging];
    v14 = [v17 loggingConnection];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_22F907000, v14, OS_LOG_TYPE_ERROR, "Cannot compute euclidian distance between sceneprints with different formats", v22, 2u);
    }

    goto LABEL_13;
  }

  v8 = [v3 descriptorData];
  v9 = [v8 bytes];

  v10 = [v4 descriptorData];
  v11 = [v10 bytes];

  if (!v9 || !v11)
  {
    v19 = +[CLSLogging sharedLogging];
    v14 = [v19 loggingConnection];

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v21 = 0;
    v15 = "Cannot compute euclidian distance between sceneprints with empty feature prints";
    v16 = &v21;
    goto LABEL_10;
  }

  __C = 3.4028e38;
  vDSP_distancesq(v9, 1, v11, 1, &__C, v6);
  if (__C >= 3.4028e38)
  {
LABEL_14:
    v12 = 1.79769313e308;
    goto LABEL_15;
  }

  v12 = sqrtf(__C / v6);
LABEL_15:

  return v12;
}

void sub_22F948F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void _CLSReachabilityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

void sub_22F94ABBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F94D480(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_22F9516F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F958630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3842(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F95901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_22F959C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

__CFString *PGDescriptionForLocationOfInterestType(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Work";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Home";
  }
}

void sub_22F95CB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F95D730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F95DBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CLSRoutineServiceStatisticsMakeDefault@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t _maxTaxonomyNodeLevel(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] setWithObject:v1];
  v3 = 0;
  while (1)
  {
    if ([v2 count] == 1)
    {
      v4 = [v2 anyObject];
      v5 = [v4 isRoot];

      if (v5)
      {
        break;
      }
    }

    v6 = [MEMORY[0x277CBEB58] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v2;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * v11) parents];
          [v6 unionSet:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    ++v3;

    v2 = v6;
  }

  return v3;
}

uint64_t NSDateComponentsEqualToDateComponents(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ((a3 & 2) != 0)
  {
    v8 = [v5 era];
    v7 = v8 == [v6 era];
    if ((a3 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 1;
    if ((a3 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = [v5 year];
  if (v9 == [v6 year])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  if ((a3 & 8) != 0)
  {
    v13 = [v5 month];
    if (v13 == [v6 month])
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }

    if ((a3 & 0x10) == 0)
    {
LABEL_10:
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }
  }

  else if ((a3 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v14 = [v5 day];
  if (v14 == [v6 day])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x20) == 0)
  {
LABEL_11:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_35:
  v15 = [v5 hour];
  if (v15 == [v6 hour])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x40) == 0)
  {
LABEL_12:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_39:
  v16 = [v5 minute];
  if (v16 == [v6 minute])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x80) == 0)
  {
LABEL_13:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_43:
  v17 = [v5 second];
  if (v17 == [v6 second])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x200) == 0)
  {
LABEL_14:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_47:
  v18 = [v5 weekday];
  if (v18 == [v6 weekday])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x400) == 0)
  {
LABEL_15:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_51:
  v19 = [v5 weekdayOrdinal];
  if (v19 == [v6 weekdayOrdinal])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x800) == 0)
  {
LABEL_16:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_55:
  v20 = [v5 quarter];
  if (v20 == [v6 quarter])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x1000) == 0)
  {
LABEL_17:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_59:
  v21 = [v5 weekOfMonth];
  if (v21 == [v6 weekOfMonth])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x2000) == 0)
  {
LABEL_18:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_63:
  v22 = [v5 weekOfYear];
  if (v22 == [v6 weekOfYear])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x4000) == 0)
  {
LABEL_19:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_67:
  v23 = [v5 yearForWeekOfYear];
  if (v23 == [v6 yearForWeekOfYear])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x8000) == 0)
  {
LABEL_20:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_71:
  v24 = [v5 nanosecond];
  if (v24 == [v6 nanosecond])
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x100000) == 0)
  {
LABEL_21:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_75:
  v25 = [v5 calendar];
  v26 = [v6 calendar];
  if (v25 == v26)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 0x200000) != 0)
  {
LABEL_22:
    v10 = [v5 timeZone];
    v11 = [v6 timeZone];
    if (v10 == v11)
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_26:

  return v7;
}

id CLSFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id CLSAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = CLSFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

void sub_22F9694D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F96B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_22F96EC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5623(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F96F688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F971824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F972334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F973404(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_22F973CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F974198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t CLSQueryPerformerProtocolStatisticsMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double CLSQueryPerformerProtocolStatisticsMakeDefault@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void CLSPrintQueryPerformerProtocolStatisticsDescription(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[CLSQuery] %@ | [Locations]: %lu | [Cached Locations]: %lu | [Resolved Locations]: %lu | [Requests]: %lu | [Batch Size]: %lu", a1, *a2, a2[2], a2[1], a2[3], a2[4]];
  v3 = +[CLSLogging sharedLogging];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v6 = v2;
    _os_log_impl(&dword_22F907000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }
}

void sub_22F9750AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CLSDescriptionForTransportationMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788A85D0[a1];
  }
}

double *CLSCalculateRangeCoordinateForCoordinateWithQueryAccuracy(double *result, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v7 = a5 * 0.0174532925;
  v8 = a6 * 0.0174532925;
  v9 = a7 / 6378137.0;
  v10 = (v7 + v9) * 57.2957795;
  v11 = (v8 - v9) * 57.2957795;
  v12 = (v7 - v9) * 57.2957795;
  v13 = (v8 + v9) * 57.2957795;
  if (v12 <= v10)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  *result = v14;
  if (v12 <= v10)
  {
    v12 = v10;
  }

  if (v13 <= v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  *a2 = v15;
  *a3 = v12;
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  *a4 = v16;
  return result;
}

void CLSCalculateRangeCoordinateForRegion(void *a1, double *a2, double *a3, double *a4, double *a5)
{
  v9 = a1;
  [v9 radius];
  v11 = v10 / 20.0;
  [v9 center];
  v13 = v12;
  v15 = v14;

  v16 = (v11 / 6378137.0 + v13 * 0.0174532925) * 57.2957795;
  v17 = (v15 * 0.0174532925 - v11 / 6378137.0) * 57.2957795;
  v18 = (v13 * 0.0174532925 - v11 / 6378137.0) * 57.2957795;
  v19 = (v11 / 6378137.0 + v15 * 0.0174532925) * 57.2957795;
  if (v18 <= v16)
  {
    v20 = (v13 * 0.0174532925 - v11 / 6378137.0) * 57.2957795;
  }

  else
  {
    v20 = (v11 / 6378137.0 + v13 * 0.0174532925) * 57.2957795;
  }

  *a2 = v20;
  if (v18 <= v16)
  {
    v18 = (v11 / 6378137.0 + v13 * 0.0174532925) * 57.2957795;
  }

  if (v19 <= v17)
  {
    v21 = (v11 / 6378137.0 + v15 * 0.0174532925) * 57.2957795;
  }

  else
  {
    v21 = (v15 * 0.0174532925 - v11 / 6378137.0) * 57.2957795;
  }

  *a3 = v21;
  *a4 = v18;
  if (v19 <= v17)
  {
    v19 = (v15 * 0.0174532925 - v11 / 6378137.0) * 57.2957795;
  }

  *a5 = v19;
}

uint64_t CLSCommonCalculateBoundingBoxCenter(double *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v6 = 0;
  if (a1 && a2)
  {
    *a1 = (a3 + a4) * 0.5;
    if (a5 <= a6)
    {
      v7 = (a5 + a6) * 0.5;
    }

    else
    {
      v7 = (a6 + 360.0 - a5) * 0.5 + a5;
      if (v7 > 180.0)
      {
        v7 = v7 + -360.0;
      }
    }

    *a2 = v7;
    return 1;
  }

  return v6;
}

void CLSCommonCalculateDistanceRadius(int a1, double a2, double a3, double a4, double a5)
{
  v7 = (a2 + a4) * 0.0174532925;
  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  v8 = a5 - a3;
  if (v8 <= 180.0)
  {
    if (v8 < -180.0)
    {
      v8 = v8 + 360.0;
    }
  }

  else
  {
    v8 = v8 + -360.0;
  }

  v9 = v7 * 0.5;
  v10 = (a4 - a2) * 0.0174532925;
  v11 = v8;
  if (v8 < 0)
  {
    v11 = -v11;
  }

  v12 = a4 - a2;
  if (v12 < 0)
  {
    v12 = a2 - a4;
  }

  v13 = v8 * 0.0174532925;
  if (v12 > 2 || v11 > 2)
  {
    if (a1)
    {
      sin(v9);
    }

    v14 = sin(v10 * 0.5);
    v15 = v14 * v14;
    v16 = cos(a2 * 0.0174532925);
    v17 = v16 * cos(a4 * 0.0174532925);
    v18 = sin(v13 * 0.5);
    v19 = v15 + v17 * (v18 * v18);
    v20 = 1.0 - v19;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    atan2(sqrt(v19), sqrt(v20));
  }

  else
  {
    __sincos_stret(v9);
  }
}

void CLSCentroidForCoordinates(double a1, double a2, double a3, CLLocationDegrees a4, CLLocationDegrees a5, double a6)
{
  v12 = CLLocationCoordinate2DIsValid(*&a1);
  v27.latitude = a4;
  v27.longitude = a5;
  v13 = CLLocationCoordinate2DIsValid(v27);
  if ((v12 || v13) && v12 && v13)
  {
    v14 = a3 + a6;
    if (a3 + a6 != 0.0)
    {
      v15 = __sincos_stret(a4 * 0.0174532925);
      v16 = __sincos_stret(a1 * 0.0174532925);
      v17 = a2 * 0.0174532925;
      v18 = a3 / v14;
      v19 = a6 / v14;
      v20 = __sincos_stret(v17);
      v21 = __sincos_stret(a5 * 0.0174532925);
      v22 = v19 * (v15.__cosval * v21.__cosval) + v16.__cosval * v20.__cosval * v18;
      v23 = v19 * (v15.__cosval * v21.__sinval) + v16.__cosval * v20.__sinval * v18;
      v24 = v15.__sinval * v19 + v16.__sinval * v18;
      v25 = atan2(v23, v22);
      v26 = atan2(v24, sqrt(v23 * v23 + v22 * v22));
      CLLocationCoordinate2DMake(v26 * 57.2957795, v25 * 57.2957795);
    }
  }
}

void sub_22F97A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t __Block_byref_object_copy__6256(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CLSBenchmarkGetMemory(void *a1, void *a2)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  *host_info_out = 0u;
  *v9 = 0u;
  v10 = 0u;
  host_info_outCnt = 15;
  v4 = MEMORY[0x231904650]();
  v5 = host_statistics(v4, 2, host_info_out, &host_info_outCnt);
  if (v5)
  {
    mach_error("can't get host_vm_info???\n", v5);
  }

  host_info_outCnt = 12;
  v6 = MEMORY[0x231904650]();
  v7 = host_info(v6, 1, v9, &host_info_outCnt);
  if (v7)
  {
    mach_error("can't get host_basic_info???\n", v7);
  }

  *a2 = *MEMORY[0x277D85FA0] * host_info_out[0];
  *a1 = *(&v11 + 1);
}

void sub_22F983068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7241(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F983408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22F983794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F983A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22F983CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22F9841B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F9848D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F985740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F9882D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}