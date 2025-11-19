uint64_t sub_25BDF8B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BDF8C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BDF8C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BE14CD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25BDF8D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BE14CD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25BDF8F04()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BDF8F4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BDF8F84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BDF8FC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id NDSharedServiceLog()
{
  if (NDSharedServiceLog_once != -1)
  {
    NDSharedServiceLog_cold_1();
  }

  v1 = NDSharedServiceLog_result;

  return v1;
}

uint64_t __NDSharedServiceLog_block_invoke()
{
  NDSharedServiceLog_result = os_log_create("com.apple.news", "newsd");

  return MEMORY[0x2821F96F8]();
}

id NDSharedClientLog()
{
  if (NDSharedClientLog_once != -1)
  {
    NDSharedClientLog_cold_1();
  }

  v1 = NDSharedClientLog_result;

  return v1;
}

uint64_t __NDSharedClientLog_block_invoke()
{
  NDSharedClientLog_result = os_log_create("com.apple.newsd.client", "general");

  return MEMORY[0x2821F96F8]();
}

id NDAnalyticsEnvelopeSubmissionDatesByContentType(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeSubmissionDatesByContentType_cold_1();
  }

  v2 = [v1 fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:&__block_literal_global_0 valueBlock:&__block_literal_global_10];

  return v2;
}

uint64_t __NDAnalyticsEnvelopeSubmissionDatesByContentType_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 envelopeContentType];

  return [v2 numberWithInt:v3];
}

void sub_25BDF99AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BDF9F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

id NDAnalyticsEnvelopeContentTypesFromEntries(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeContentTypesFromEntries_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_1];

  return v2;
}

uint64_t __NDAnalyticsEnvelopeContentTypesFromEntries_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 envelopeContentType];

  return [v2 numberWithInt:v3];
}

void sub_25BDFB8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_25BDFBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25BDFBD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BDFBFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BDFD770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_5];

  return v2;
}

id __NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = FCDynamicCast();

  v4 = [v3 stringRepresentation];

  return v4;
}

id NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_cold_1();
  }

  v2 = [v1 fc_arrayByTransformingWithBlock:&__block_literal_global_11];

  return v2;
}

NDAnalyticsEnvelopeStoreEntry *__NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NDAnalyticsEnvelopeStoreEntry alloc] initWithStringRepresentation:v2];

  return v3;
}

void sub_25BE01020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BE016BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NDAnalyticsEntryDeliveryWindowEarlierDate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindowEarlierDate_cold_1();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindowEarlierDate_cold_2();
  }

LABEL_6:
  v8 = [v7 seedTime];
  if (v6)
  {
    [v6 dateByAddingTimeInterval:(60 * v8)];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v9 = ;
  v10 = [v9 laterDate:v5];

  return v10;
}

id NDAnalyticsEntryDeliveryWindow(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindow_cold_1();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryDeliveryWindow_cold_2();
  }

LABEL_6:
  v8 = 60 * [v7 seedTime];
  v9 = NDAnalyticsEntryDeliveryWindowEarlierDate(v5, v6, v7);
  v10 = [v5 dateByAddingTimeInterval:v8];
  v11 = [v10 laterDate:v9];
  v12 = [MEMORY[0x277D30F38] dateRangeWithEarlierDate:v9 laterDate:v11];

  return v12;
}

uint64_t NDAnalyticsEntryCanBeUploaded(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_1();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_2();
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NDAnalyticsEntryCanBeUploaded_cold_3();
  }

  v11 = NDAnalyticsEntryDeliveryWindowEarlierDate(v7, v9, v10);
  v12 = [v8 fc_isLaterThanOrEqualTo:v11];

  return v12;
}

id sub_25BE02444(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE14E88();
  result = sub_25BE15088();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for TelemetryUploader();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___NDAnalyticsTelemetryUploader_sessionManager] = v3;
    v6.receiver = v5;
    v6.super_class = v4;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE024D4()
{
  sub_25BE14E88();
  sub_25BE150D8();
  sub_25BE15078();

  sub_25BE14EF8();
  sub_25BE150D8();

  sub_25BE14F98();
  sub_25BE150D8();

  sub_25BE15008();
  sub_25BE150D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB00, &unk_25BE166C8);
  sub_25BE150D8();

  sub_25BE14E98();
  sub_25BE150E8();
}

uint64_t sub_25BE02688(void *a1)
{
  v2 = *(*(sub_25BE14F58() - 8) + 64);
  MEMORY[0x28223BE20]();
  v28[5] = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_25BE14F78() - 8) + 64);
  MEMORY[0x28223BE20]();
  v28[4] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_25BE14FB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v28[3] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_25BE14D48() - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_25BE14E68() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB10, &qword_25BE166E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v28 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_25BE14E98();
  sub_25BE15098();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v13, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28[2] = sub_25BE14E88();
    v30[3] = v15;
    v30[4] = MEMORY[0x277CEAD58];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v16 + 32))(boxed_opaque_existential_1, v13, v15);
    v28[1] = dispatch_group_create();
    sub_25BE14EC8();
    sub_25BE14EB8();
    v29 = MEMORY[0x277D84F90];
    sub_25BE033D8(&qword_281475E58, MEMORY[0x277CEAD38]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB20, &qword_25BE166E8);
    sub_25BE03420(&unk_2814759B8, &unk_27FBDEB20, &qword_25BE166E8);
    sub_25BE151E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB30, &qword_25BE166F0);
    v19 = *(v8 + 72);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_25BE16630;
    sub_25BE14D38();
    sub_25BE14D18();
    sub_25BE14D28();
    v29 = v21;
    sub_25BE033D8(&qword_281475E68, MEMORY[0x277CEAC90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEB40, &qword_25BE166F8);
    sub_25BE03420(&qword_2814759C8, &unk_27FBDEB40, &qword_25BE166F8);
    sub_25BE151E8();
    v22 = sub_25BE14E08();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_25BE14DF8();
    v25 = sub_25BE14FE8();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_25BE14FD8();
    sub_25BE14FA8();
    sub_25BE14F68();
    sub_25BE14F48();
    return sub_25BE14E28();
  }

  return result;
}

uint64_t sub_25BE02BC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_25BE14E18();
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BE14EF8();
  result = sub_25BE15088();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_25BE14EA8();

  sub_25BE14E18();
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BE14F98();
  result = sub_25BE15088();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_25BE14EA8();
}

uint64_t sub_25BE02CC8()
{
  v0 = *(*(sub_25BE14FC8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v2 = 11;
  (*(v3 + 104))(v2, *MEMORY[0x277CEAE08]);
  v4 = sub_25BE14EF8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_25BE14EE8();
}

uint64_t sub_25BE02DC8(void *a1)
{
  v2 = sub_25BE14C88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE15008();
  result = sub_25BE15088();
  if (result)
  {
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB00, &unk_25BE166C8);
    result = sub_25BE15088();
    if (result)
    {
      sub_25BE14F98();
      sub_25BE14F38();
      v10 = sub_25BE14F28();
      v11 = [objc_opt_self() newsdDocumentsURL];
      sub_25BE14C78();

      v12 = sub_25BE14F18();
      (*(v3 + 8))(v6, v2);
      v13 = [objc_opt_self() standardUserDefaults];
      v14 = sub_25BE15138();
      [v13 BOOLForKey_];

      sub_25BE14F08();
      return sub_25BE14F88();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE03000()
{
  sub_25BE15008();
  v0 = [objc_opt_self() mainBundle];
  return sub_25BE14FF8();
}

uint64_t sub_25BE0304C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB08, &qword_25BE166D8);
  result = sub_25BE15088();
  if (result)
  {
    v3 = result;
    type metadata accessor for DynamicEndpoint();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = FCDefaultsReadEndpointEnvironment();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25BE030D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEB08, &qword_25BE166D8);
  result = sub_25BE15088();
  if (result)
  {
    v5 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();

    return sub_25BE03708(v5, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for FCEndpointEnvironment()
{
  if (!qword_27FBDEAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBDEAF8);
    }
  }
}

uint64_t sub_25BE031FC()
{
  sub_25BE150A8();
  type metadata accessor for TelemetryUploader();
  sub_25BE150D8();

  sub_25BE150B8();
  sub_25BE150C8();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_25BE033D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BE03420(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NDAnalyticsUploadFrameworkAssembly_assemblies;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDEBB8, &qword_25BE16720);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BE16710;
  v4 = type metadata accessor for TelemetryAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_25BE03574();
  *(v3 + 32) = v5;
  *&v0[v2] = v3;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_25BE03574()
{
  result = qword_281475B58;
  if (!qword_281475B58)
  {
    type metadata accessor for TelemetryAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475B58);
  }

  return result;
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BE03708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BE14E98();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (([a1 respondsToSelector_] & 1) != 0 && !objc_msgSend(a1, sel_isAnalyticsJitterEnabled))
  {
    swift_unknownObjectRelease();
    v13 = *MEMORY[0x277CEAD50];
    v14 = *(v16 + 104);

    return v14(a2, v13, v4);
  }

  else
  {
    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterLowerBound];
      v9 = v8;
    }

    else
    {
      v9 = 0xC082C00000000000;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterUpperBound];
      v11 = v10;
    }

    else
    {
      v11 = 0x4082C00000000000;
    }

    swift_unknownObjectRelease();
    *v7 = v9;
    v7[1] = v11;
    (*(v16 + 104))(v7, *MEMORY[0x277CEAD48], v4);
    return (*(v16 + 32))(a2, v7, v4);
  }
}

uint64_t sub_25BE03AA0()
{
  v1 = *(v0 + 24);
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x676E6967617473;
      }

      if (v1 == 3)
      {
        return 24945;
      }

      return 1953719668;
    }

    if (v1 == 1)
    {
      return 0x69746375646F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 > 6)
  {
    switch(v1)
    {
      case 7:
        return 0x786F62646E6173;
      case 8:
        return 0x316F6D6564;
      case 9:
        return 0x326F6D6564;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 == 5)
  {
    return 0x3164756F6C6369;
  }

  else
  {
    return 0x6C65766564;
  }
}

uint64_t sub_25BE03BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25BE14C88();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v24 - v10;
  if (a1 <= 4)
  {
    if (a1 < 5)
    {
      v12 = [*(v2 + 16) appConfiguration];
      if ([v12 respondsToSelector_])
      {
        v13 = [v12 appAnalyticsEndpointUrlForEnvironment_];
LABEL_5:
        v14 = v13;
        swift_unknownObjectRelease();
        sub_25BE14C78();

        v15 = *(v25 + 56);
        v16 = a2;
        v17 = 0;
LABEL_21:

        return v15(v16, v17, 1, v5);
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v23 = [*(v2 + 16) appConfiguration];
      if ([v23 respondsToSelector_])
      {
        v13 = [v23 appAnalyticsAppHealthEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

LABEL_19:
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    if (a1 == 8)
    {
      v20 = [*(v2 + 16) appConfiguration];
      if ([v20 respondsToSelector_])
      {
        v13 = [v20 appAnalyticsAppHeartbeatEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

      goto LABEL_19;
    }

LABEL_20:
    v15 = *(v25 + 56);
    v16 = a2;
    v17 = 1;
    goto LABEL_21;
  }

  if (a1 != 5)
  {
    v18 = [objc_opt_self() appAnalyticsSportsEventsBaseURLForConfiguration_];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_25BE14C78();

      (*(v25 + 32))(a2, v8, v5);
      return (*(v25 + 56))(a2, 0, 1, v5);
    }

    goto LABEL_20;
  }

  v21 = [*(v2 + 16) appConfiguration];
  if (([v21 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_19;
  }

  v22 = [v21 appAnalyticsNotificationReceiptEndpointUrlForEnvironment_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25BE14C78();

    (*(v25 + 56))(v11, 0, 1, v5);
  }

  else
  {
    (*(v25 + 56))(v11, 1, 1, v5);
  }

  return sub_25BE0417C(v11, a2);
}

uint64_t sub_25BE04120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BE0417C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BE041F8(uint64_t a1, int a2)
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

uint64_t sub_25BE04240(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BE042CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25BE04314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy95_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BE04394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 95))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BE043DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 95) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 95) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BE04460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25BE044A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25BE04550()
{
  sub_25BE045BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25BE045BC()
{
  if (!qword_281475E60)
  {
    type metadata accessor for NetworkEventData(255);
    sub_25BE046E0(&qword_281475C40, type metadata accessor for NetworkEventData);
    sub_25BE046E0(&qword_281475C48, type metadata accessor for NetworkEventData);
    v0 = sub_25BE14DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_281475E60);
    }
  }
}

uint64_t sub_25BE046A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BE046E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BE04750()
{
  result = sub_25BE14CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0499C()
{
  v1 = *v0;
  sub_25BE15378();
  MEMORY[0x25F87D0F0](v1);
  return sub_25BE15398();
}

uint64_t sub_25BE049E4()
{
  v1 = *v0;
  sub_25BE15378();
  MEMORY[0x25F87D0F0](v1);
  return sub_25BE15398();
}

uint64_t sub_25BE04A28()
{
  if (*v0)
  {
    result = 0x646C697542707061;
  }

  else
  {
    result = 0x6973726556707061;
  }

  *v0;
  return result;
}

uint64_t sub_25BE04A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_25BE15358() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25BE15358();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25BE04B78(uint64_t a1)
{
  v2 = sub_25BE09F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE04BB4(uint64_t a1)
{
  v2 = sub_25BE09F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE04BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBF8, &qword_25BE17090);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE09F88();
  sub_25BE153B8();
  v17 = 0;
  sub_25BE152F8();
  if (!v5)
  {
    v16 = 1;
    sub_25BE152F8();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_25BE04DCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BE09DA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_25BE04E1C(char a1)
{
  result = 0x657366664F637475;
  switch(a1)
  {
    case 1:
      result = 0x65676175676E616CLL;
      break;
    case 2:
      result = 0x437972746E756F63;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x54746375646F7270;
      break;
    case 5:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x44496E6F69676572;
      break;
    case 8:
      result = 0x4465726F74537369;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE05004(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC80, &qword_25BE170D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BEB8();
  sub_25BE153B8();
  v12 = *v3;
  LOBYTE(v26) = 0;
  sub_25BE15338();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    LOBYTE(v26) = 1;
    sub_25BE152C8();
    v15 = *(v3 + 3);
    v16 = *(v3 + 4);
    LOBYTE(v26) = 2;
    sub_25BE152C8();
    LOBYTE(v26) = *(v3 + 40);
    v27 = 3;
    sub_25BE0C190();
    sub_25BE15328();
    v17 = *(v3 + 6);
    v18 = *(v3 + 7);
    LOBYTE(v26) = 4;
    sub_25BE152F8();
    v26 = *(v3 + 8);
    v27 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC48, &qword_25BE170C0);
    sub_25BE0C1E4();
    sub_25BE15328();
    v26 = *(v3 + 9);
    v27 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC58, &qword_25BE170C8);
    sub_25BE0C260();
    sub_25BE15328();
    v26 = *(v3 + 10);
    v27 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC68, &qword_25BE170D0);
    sub_25BE0C2DC();
    sub_25BE152E8();
    v19 = *(v3 + 88);
    LOBYTE(v26) = 8;
    sub_25BE15308();
    v20 = *(v3 + 89);
    LOBYTE(v26) = 9;
    sub_25BE15308();
    v21 = *(v3 + 90);
    LOBYTE(v26) = 10;
    sub_25BE15308();
    v22 = *(v3 + 91);
    LOBYTE(v26) = 11;
    sub_25BE15308();
    v23 = *(v3 + 92);
    LOBYTE(v26) = 12;
    sub_25BE152D8();
    v24 = *(v3 + 93);
    LOBYTE(v26) = 13;
    sub_25BE15308();
    LOBYTE(v26) = *(v3 + 94);
    v27 = 14;
    sub_25BE0C358();
    sub_25BE152E8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_25BE05428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE0A028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE0545C(uint64_t a1)
{
  v2 = sub_25BE0BEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE05498(uint64_t a1)
{
  v2 = sub_25BE0BEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE054D4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25BE0A4E8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 79) = *(v8 + 15);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_25BE05540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x754F646567676F6CLL;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E496E6567676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x754F646567676F6CLL;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE0564C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x47356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x47356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25BE15358();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25BE057C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 1685025392;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 1685025392;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE058DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 0x534F63616DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x534F64615069;
  if (a2 != 2)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 5459817;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE05A00()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE05AA8()
{
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE05B3C()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE05BE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0AD14();
  *a2 = result;
  return result;
}

void sub_25BE05C10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E496E6567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25BE05D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v4 = 0x73656C6574617473;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x766C6F7365726E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C75666574617473;
  if (*a2 != 1)
  {
    v8 = 0x73656C6574617473;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x766C6F7365726E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE05E30()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE05EDC()
{
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE05F74()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE0601C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0AD60();
  *a2 = result;
  return result;
}

void sub_25BE0604C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE800000000000000;
  v5 = 0x6C75666574617473;
  if (v2 != 1)
  {
    v5 = 0x73656C6574617473;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x766C6F7365726E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25BE06164(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC30, &qword_25BE170B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BCAC();
  sub_25BE153B8();
  v12 = *v3;
  v13 = v3[1];
  v19[15] = 0;
  sub_25BE152F8();
  if (!v2)
  {
    v19[14] = *(v3 + 16);
    v19[13] = 1;
    sub_25BE0BE10();
    sub_25BE15328();
    v19[12] = *(v3 + 17);
    v19[11] = 2;
    sub_25BE0BE64();
    sub_25BE15328();
    v14 = v3[3];
    v15 = v3[4];
    v19[10] = 3;
    sub_25BE152F8();
    v16 = v3[5];
    v17 = v3[6];
    v19[9] = 4;
    sub_25BE152F8();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_25BE06370()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25BE06434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE0ADAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE06468(uint64_t a1)
{
  v2 = sub_25BE0BCAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE064A4(uint64_t a1)
{
  v2 = sub_25BE0BCAC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE064E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25BE0AF80(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_25BE06554()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06608()
{
  *v0;
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE066A8()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0B2A8();
  *a2 = result;
  return result;
}

void sub_25BE06788(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x534F64615069;
  if (*v1 != 2)
  {
    v5 = 0x534F63616DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 5459817;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25BE068A8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25BE15358();
  }

  return v9 & 1;
}

uint64_t sub_25BE06980()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06A18()
{
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE06A9C()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE06B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0B2F4();
  *a2 = result;
  return result;
}

void sub_25BE06B60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E7265746E69;
  if (v2 != 1)
  {
    v4 = 0x6C616E7265747865;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_25BE06C64(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x444972657375;
    v6 = 0x6570795472657375;
    if (a1 != 2)
    {
      v6 = 0x7261745372657375;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7265646E6567;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6B63617242656761;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25BE06D98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC98, &qword_25BE170E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C3AC();
  sub_25BE153B8();
  v12 = *v3;
  v13 = v3[1];
  v23[15] = 0;
  sub_25BE152F8();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v23[14] = 1;
    sub_25BE152D8();
    v23[13] = *(v3 + 17);
    v23[12] = 2;
    sub_25BE0C4BC();
    sub_25BE15328();
    v16 = v3[3];
    v23[11] = 3;
    sub_25BE15348();
    v17 = *(v3 + 8);
    v23[10] = 4;
    sub_25BE15338();
    v18 = *(v3 + 9);
    v23[9] = 5;
    sub_25BE15318();
    v19 = *(v3 + 10);
    v23[8] = 6;
    sub_25BE15338();
    v20 = *(v3 + 11);
    v23[7] = 7;
    sub_25BE15318();
    v21 = v3[6];
    v22 = v3[7];
    v23[6] = 8;
    sub_25BE152F8();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_25BE07040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE0B340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE07074(uint64_t a1)
{
  v2 = sub_25BE0C3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE070B0(uint64_t a1)
{
  v2 = sub_25BE0C3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BE070EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25BE0B630(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_25BE07148(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7824750;
  if (v2 != 1)
  {
    v4 = 0x6E696E7275746572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7824750;
  if (*a2 != 1)
  {
    v8 = 0x6E696E7275746572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE07244()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE072E4()
{
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE07370()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE0740C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0B9F4();
  *a2 = result;
  return result;
}

void sub_25BE0743C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7824750;
  if (v2 != 1)
  {
    v5 = 0x6E696E7275746572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25BE07548(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC10, &qword_25BE170A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BBB0();
  sub_25BE153B8();
  v12[15] = a2;
  sub_25BE0BC58();
  sub_25BE15328();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_25BE07698()
{
  sub_25BE15378();
  MEMORY[0x25F87D0F0](0);
  return sub_25BE15398();
}

uint64_t sub_25BE07704()
{
  sub_25BE15378();
  MEMORY[0x25F87D0F0](0);
  return sub_25BE15398();
}

uint64_t sub_25BE07760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000025BE1A660 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25BE15358();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25BE07800(uint64_t a1)
{
  v2 = sub_25BE0BBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE0783C(uint64_t a1)
{
  v2 = sub_25BE0BBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_25BE07878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BE0BA40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25BE078CC()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE0797C()
{
  *v0;
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE07A18()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE07AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0C81C();
  *a2 = result;
  return result;
}

void sub_25BE07AF4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 1685025392;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25BE07C60(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_25BE07D64@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_25BE07E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBD0, "VL");
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BE07EAC(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x7461727544736E64;
      break;
    case 2:
      v3 = 0x63656E6E6F63;
      goto LABEL_9;
    case 3:
      v3 = 0x736575716572;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x6174536568636163;
      break;
    case 7:
      result = 0x6F43737574617473;
      break;
    case 8:
      result = 0x646F43726F727265;
      break;
    case 9:
      result = 0x707954746E657665;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x69646E6F70736572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE08068(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDECC8, &qword_25BE170F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C510();
  sub_25BE153B8();
  v28 = 0;
  sub_25BE14CD8();
  sub_25BE046E0(&unk_281475E70, MEMORY[0x277CC9578]);
  sub_25BE15328();
  if (!v2)
  {
    v12 = type metadata accessor for NetworkEventData(0);
    v13 = *(v3 + v12[5]);
    v28 = 1;
    sub_25BE15348();
    v14 = *(v3 + v12[6]);
    v28 = 2;
    sub_25BE15348();
    v15 = *(v3 + v12[7]);
    v28 = 3;
    sub_25BE15348();
    v16 = *(v3 + v12[8]);
    v28 = 4;
    sub_25BE15348();
    v17 = *(v3 + v12[9]);
    v28 = 5;
    sub_25BE15348();
    v28 = *(v3 + v12[10]);
    v27 = 6;
    sub_25BE0C720();
    sub_25BE15328();
    v18 = *(v3 + v12[11]);
    v28 = 7;
    sub_25BE15348();
    v19 = *(v3 + v12[12]);
    v28 = 8;
    sub_25BE15348();
    v28 = *(v3 + v12[13]);
    v27 = 9;
    sub_25BE0C774();
    sub_25BE15328();
    v20 = *(v3 + v12[14]);
    v28 = 10;
    sub_25BE15308();
    v28 = *(v3 + v12[15]);
    v27 = 11;
    sub_25BE0C7C8();
    sub_25BE15328();
    v21 = (v3 + v12[16]);
    v22 = *v21;
    v23 = v21[1];
    v28 = 12;
    sub_25BE152F8();
    v24 = *(v3 + v12[17]);
    v28 = 13;
    sub_25BE15308();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_25BE08480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_25BE14CD8();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v38 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDECA0, &qword_25BE170F0);
  v36 = *(v40 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v40, v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for NetworkEventData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C510();
  v39 = v11;
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v12;
  v34 = v16;
  v19 = v36;
  v18 = v37;
  v42 = 0;
  sub_25BE046E0(&qword_27FBDECA8, MEMORY[0x277CC9578]);
  v20 = v38;
  sub_25BE15298();
  v21 = v34;
  (*(v18 + 32))(v34, v20, v4);
  v42 = 1;
  v22 = sub_25BE152B8();
  v23 = v33;
  *&v21[v33[5]] = v22;
  v42 = 2;
  v24 = sub_25BE152B8();
  v38 = a1;
  *&v21[v23[6]] = v24;
  v42 = 3;
  *&v21[v23[7]] = sub_25BE152B8();
  v42 = 4;
  *&v21[v23[8]] = sub_25BE152B8();
  v42 = 5;
  *&v21[v23[9]] = sub_25BE152B8();
  v41 = 6;
  sub_25BE0C564();
  sub_25BE15298();
  v21[v23[10]] = v42;
  v42 = 7;
  *&v21[v23[11]] = sub_25BE152B8();
  v42 = 8;
  *&v21[v23[12]] = sub_25BE152B8();
  v41 = 9;
  sub_25BE0C5B8();
  sub_25BE15298();
  v34[v33[13]] = v42;
  v42 = 10;
  v34[v33[14]] = sub_25BE15278() & 1;
  v41 = 11;
  sub_25BE0C60C();
  sub_25BE15298();
  v34[v33[15]] = v42;
  v42 = 12;
  v25 = sub_25BE15268();
  v26 = &v34[v33[16]];
  *v26 = v25;
  v26[1] = v27;
  v42 = 13;
  v28 = sub_25BE15278();
  (*(v19 + 8))(v39, v40);
  v29 = v28 & 1;
  v31 = v34;
  v30 = v35;
  v34[v33[17]] = v29;
  sub_25BE0C660(v31, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25BE0C6C4(v31);
}

unint64_t sub_25BE08A88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7234659;
      break;
    case 2:
      result = 0x6F437070416E6463;
      break;
    case 3:
      result = 1937208931;
      break;
    case 4:
      result = 0x63696C6275506B63;
      break;
    case 5:
      result = 0x7461766972506B63;
      break;
    case 6:
    case 18:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656764457377656ELL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000026;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x437961646F546B63;
      break;
    case 13:
      result = 0x4669746C754D6B63;
      break;
    case 14:
      result = 0x46726564724F6B63;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x6165536761546B63;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE08CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BE0C868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BE08D04(uint64_t a1)
{
  v2 = sub_25BE0C510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BE08D40(uint64_t a1)
{
  v2 = sub_25BE0C510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BE08DAC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25BE08A88(*a1);
  v5 = v4;
  if (v3 == sub_25BE08A88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25BE15358();
  }

  return v8 & 1;
}

uint64_t sub_25BE08E34()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE08A88(v1);
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE08E98()
{
  sub_25BE08A88(*v0);
  sub_25BE15158();
}

uint64_t sub_25BE08EEC()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE08A88(v1);
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE08F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0CCF8();
  *a2 = result;
  return result;
}

unint64_t sub_25BE08F7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25BE08A88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BE09058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7629160;
  if (v2 != 1)
  {
    v4 = 1936943469;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7629160;
  if (*a2 != 1)
  {
    v8 = 1936943469;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25BE15358();
  }

  return v11 & 1;
}

uint64_t sub_25BE0913C()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE091D0()
{
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE09250()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE092E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0CD4C();
  *a2 = result;
  return result;
}

void sub_25BE09310(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7629160;
  if (v2 != 1)
  {
    v5 = 1936943469;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_25BE09414()
{
  result = qword_27FBDEBD8;
  if (!qword_27FBDEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEBD8);
  }

  return result;
}

unint64_t sub_25BE0946C()
{
  result = qword_27FBDEBE0;
  if (!qword_27FBDEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEBE0);
  }

  return result;
}

uint64_t sub_25BE094CC()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE095A4()
{
  *v0;
  *v0;
  *v0;
  sub_25BE15158();
}

uint64_t sub_25BE09668()
{
  v1 = *v0;
  sub_25BE15378();
  sub_25BE15158();

  return sub_25BE15398();
}

uint64_t sub_25BE0973C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BE0CD98();
  *a2 = result;
  return result;
}

void sub_25BE0976C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1851881335;
  v7 = 0xE600000000000000;
  v8 = 0x47356E617777;
  if (v2 != 3)
  {
    v8 = 0x6863616552746F6ELL;
    v7 = 0xEC000000656C6261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1768319351;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_25BE098B4()
{
  result = qword_27FBDEBE8;
  if (!qword_27FBDEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEBE8);
  }

  return result;
}

unint64_t sub_25BE0990C()
{
  result = qword_2814759F0;
  if (!qword_2814759F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759F0);
  }

  return result;
}

unint64_t sub_25BE09964()
{
  result = qword_2814759F8;
  if (!qword_2814759F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759F8);
  }

  return result;
}

unint64_t sub_25BE099BC()
{
  result = qword_281475DE8;
  if (!qword_281475DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475DE8);
  }

  return result;
}

unint64_t sub_25BE09A14()
{
  result = qword_281475DF0;
  if (!qword_281475DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475DF0);
  }

  return result;
}

unint64_t sub_25BE09A6C()
{
  result = qword_281475E18;
  if (!qword_281475E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E18);
  }

  return result;
}

unint64_t sub_25BE09AC4()
{
  result = qword_281475E20;
  if (!qword_281475E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E20);
  }

  return result;
}

unint64_t sub_25BE09B1C()
{
  result = qword_281475A60;
  if (!qword_281475A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A60);
  }

  return result;
}

unint64_t sub_25BE09B74()
{
  result = qword_281475A68;
  if (!qword_281475A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A68);
  }

  return result;
}

unint64_t sub_25BE09BCC()
{
  result = qword_281475A20;
  if (!qword_281475A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A20);
  }

  return result;
}

unint64_t sub_25BE09C24()
{
  result = qword_281475A28;
  if (!qword_281475A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A28);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_25BE09DA4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBF0, &qword_25BE17088);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE09F88();
  sub_25BE153A8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_25BE15268();
    v11 = 1;
    sub_25BE15268();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_25BE09F88()
{
  result = qword_281475A48;
  if (!qword_281475A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A48);
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

uint64_t sub_25BE0A028(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657366664F637475 && a2 == 0xE900000000000074 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BE1A6A0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025BE1A6C0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000025BE1A6E0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44496E6F69676572 && a2 == 0xE900000000000073 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4465726F74537369 && a2 == 0xEF726573556F6D65 || (sub_25BE15358() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BE1A700 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BE1A720 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000025BE1A740 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025BE1A760 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A780 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BE1A7A0 == a2)
  {

    return 14;
  }

  else
  {
    v5 = sub_25BE15358();

    if (v5)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_25BE0A4E8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC38, &qword_25BE170B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BEB8();
  sub_25BE153A8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v50[0]) = 0;
    v12 = sub_25BE152A8();
    LOBYTE(v50[0]) = 1;
    v13 = sub_25BE15238();
    v15 = v14;
    v43 = v13;
    v42 = v12;
    LOBYTE(v50[0]) = 2;
    v16 = sub_25BE15238();
    v18 = v17;
    v41 = v16;
    LOBYTE(v45) = 3;
    sub_25BE0BF0C();
    sub_25BE15298();
    v40 = LOBYTE(v50[0]);
    LOBYTE(v50[0]) = 4;
    v39 = sub_25BE15268();
    v68 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC48, &qword_25BE170C0);
    LOBYTE(v45) = 5;
    sub_25BE0BF60();
    sub_25BE15298();
    v38 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC58, &qword_25BE170C8);
    LOBYTE(v45) = 6;
    sub_25BE0BFDC();
    sub_25BE15298();
    v44 = v50[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC68, &qword_25BE170D0);
    LOBYTE(v45) = 7;
    sub_25BE0C058();
    sub_25BE15258();
    v37 = a2;
    v20 = v50[0];
    LOBYTE(v50[0]) = 8;
    v36 = sub_25BE15278();
    LOBYTE(v50[0]) = 9;
    v35 = sub_25BE15278();
    LOBYTE(v50[0]) = 10;
    v34 = sub_25BE15278();
    LOBYTE(v50[0]) = 11;
    v33 = sub_25BE15278();
    LOBYTE(v50[0]) = 12;
    v32 = sub_25BE15248();
    LOBYTE(v50[0]) = 13;
    v31 = sub_25BE15278();
    v65 = 14;
    sub_25BE0C0D4();
    sub_25BE15258();
    v36 &= 1u;
    v35 &= 1u;
    v34 &= 1u;
    v33 &= 1u;
    v21 = v33;
    HIDWORD(v30) = v31 & 1;
    (*(v6 + 8))(v10, v5);
    v31 = v66;
    v22 = v42;
    LODWORD(v45) = v42;
    *(&v45 + 1) = v43;
    *&v46 = v15;
    v23 = v41;
    *(&v46 + 1) = v41;
    *&v47 = v18;
    v24 = v40;
    BYTE8(v47) = v40;
    *&v48 = v39;
    *(&v48 + 1) = v68;
    *v49 = v38;
    *&v49[8] = v44;
    *&v49[16] = v20;
    v49[24] = v36;
    v49[25] = v35;
    v49[26] = v34;
    v49[27] = v21;
    v49[28] = v32;
    v25 = BYTE4(v30);
    v49[29] = BYTE4(v30);
    v49[30] = v66;
    sub_25BE0C128(&v45, v50);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LODWORD(v50[0]) = v22;
    v50[1] = v43;
    v50[2] = v15;
    v50[3] = v23;
    v50[4] = v18;
    v51 = v24;
    *v52 = *v67;
    *&v52[3] = *&v67[3];
    v53 = v39;
    v54 = v68;
    v55 = v38;
    v56 = v44;
    v57 = v20;
    v58 = v36;
    v59 = v35;
    v60 = v34;
    v61 = v33;
    v62 = v32;
    v63 = v25;
    v64 = v31;
    result = sub_25BE0C160(v50);
    v27 = v48;
    v28 = v37;
    v37[2] = v47;
    v28[3] = v27;
    v28[4] = *v49;
    *(v28 + 79) = *&v49[15];
    v29 = v46;
    *v28 = v45;
    v28[1] = v29;
  }

  return result;
}

uint64_t sub_25BE0AD14()
{
  v0 = sub_25BE15228();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0AD60()
{
  v0 = sub_25BE15228();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0ADAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A680 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
  {

    return 4;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25BE0AF80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC18, &qword_25BE170A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BCAC();
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v12 = sub_25BE15268();
  v14 = v13;
  v31 = v12;
  LOBYTE(v32) = 1;
  sub_25BE0BD00();
  sub_25BE15298();
  v15 = LOBYTE(v36[0]);
  LOBYTE(v32) = 2;
  sub_25BE0BD54();
  sub_25BE15298();
  v43 = v15;
  v16 = LOBYTE(v36[0]);
  LOBYTE(v36[0]) = 3;
  v29 = sub_25BE15268();
  v30 = v17;
  v44 = 4;
  v18 = sub_25BE15268();
  v19 = v10;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v22 = v16;
  HIDWORD(v28) = v16;
  v23 = v31;
  *&v32 = v31;
  *(&v32 + 1) = v14;
  v24 = v43;
  LOBYTE(v33) = v43;
  BYTE1(v33) = v22;
  v25 = v29;
  *(&v33 + 1) = v29;
  *&v34 = v30;
  *(&v34 + 1) = v18;
  v35 = v21;
  sub_25BE0BDA8(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v23;
  v36[1] = v14;
  v37 = v24;
  v38 = BYTE4(v28);
  v39 = v25;
  v40 = v30;
  v41 = v18;
  v42 = v21;
  result = sub_25BE0BDE0(v36);
  v27 = v33;
  *a2 = v32;
  *(a2 + 16) = v27;
  *(a2 + 32) = v34;
  *(a2 + 48) = v35;
  return result;
}

uint64_t sub_25BE0B2A8()
{
  v0 = sub_25BE15228();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0B2F4()
{
  v0 = sub_25BE15228();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0B340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A7C0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025BE1A7E0 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BE1A800 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A820 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25BE0B630@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC88, &qword_25BE170E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0C3AC();
  sub_25BE153A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_25BE15268();
  v14 = v13;
  v15 = v12;
  LOBYTE(v39[0]) = 1;
  v49 = sub_25BE15248();
  LOBYTE(v35) = 2;
  sub_25BE0C400();
  sub_25BE15298();
  v34 = LOBYTE(v39[0]);
  LOBYTE(v39[0]) = 3;
  v33 = sub_25BE152B8();
  LOBYTE(v39[0]) = 4;
  v32 = sub_25BE152A8();
  LOBYTE(v39[0]) = 5;
  sub_25BE15288();
  v17 = v16;
  LOBYTE(v39[0]) = 6;
  v31 = sub_25BE152A8();
  LOBYTE(v39[0]) = 7;
  sub_25BE15288();
  HIDWORD(v29) = v18;
  v50 = 8;
  v19 = sub_25BE15268();
  v30 = v20;
  v21 = v19;
  (*(v6 + 8))(v10, v5);
  *&v35 = v15;
  *(&v35 + 1) = v14;
  v22 = v49;
  LOBYTE(v36) = v49;
  BYTE1(v36) = v34;
  v23 = v33;
  *(&v36 + 1) = v33;
  v24 = v32;
  *&v37 = __PAIR64__(v17, v32);
  *(&v37 + 1) = __PAIR64__(HIDWORD(v29), v31);
  v25 = HIDWORD(v29);
  *&v38 = v21;
  *(&v38 + 1) = v30;
  sub_25BE0C454(&v35, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v15;
  v39[1] = v14;
  v40 = v22;
  v41 = v34;
  v42 = v23;
  v43 = v24;
  v44 = v17;
  v45 = v31;
  v46 = v25;
  v47 = v21;
  v48 = v30;
  result = sub_25BE0C48C(v39);
  v27 = v36;
  *a2 = v35;
  a2[1] = v27;
  v28 = v38;
  a2[2] = v37;
  a2[3] = v28;
  return result;
}

uint64_t sub_25BE0B9F4()
{
  v0 = sub_25BE15228();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_25BE0BA40(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEC00, &qword_25BE17098);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12[-v7];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE0BBB0();
  sub_25BE153A8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_25BE0BC04();
    sub_25BE15298();
    (*(v4 + 8))(v8, v3);
    v10 = v12[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

unint64_t sub_25BE0BBB0()
{
  result = qword_281475A88;
  if (!qword_281475A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A88);
  }

  return result;
}

unint64_t sub_25BE0BC04()
{
  result = qword_27FBDEC08;
  if (!qword_27FBDEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC08);
  }

  return result;
}

unint64_t sub_25BE0BC58()
{
  result = qword_281475AA8;
  if (!qword_281475AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475AA8);
  }

  return result;
}

unint64_t sub_25BE0BCAC()
{
  result = qword_281475E40;
  if (!qword_281475E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E40);
  }

  return result;
}

unint64_t sub_25BE0BD00()
{
  result = qword_27FBDEC20;
  if (!qword_27FBDEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC20);
  }

  return result;
}

unint64_t sub_25BE0BD54()
{
  result = qword_27FBDEC28;
  if (!qword_27FBDEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC28);
  }

  return result;
}

unint64_t sub_25BE0BE10()
{
  result = qword_281475DE0;
  if (!qword_281475DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475DE0);
  }

  return result;
}

unint64_t sub_25BE0BE64()
{
  result = qword_281475B68;
  if (!qword_281475B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475B68);
  }

  return result;
}

unint64_t sub_25BE0BEB8()
{
  result = qword_281475E10;
  if (!qword_281475E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E10);
  }

  return result;
}

unint64_t sub_25BE0BF0C()
{
  result = qword_27FBDEC40;
  if (!qword_27FBDEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC40);
  }

  return result;
}

unint64_t sub_25BE0BF60()
{
  result = qword_27FBDEC50;
  if (!qword_27FBDEC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC48, &qword_25BE170C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC50);
  }

  return result;
}

unint64_t sub_25BE0BFDC()
{
  result = qword_27FBDEC60;
  if (!qword_27FBDEC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC58, &qword_25BE170C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC60);
  }

  return result;
}

unint64_t sub_25BE0C058()
{
  result = qword_27FBDEC70;
  if (!qword_27FBDEC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC68, &qword_25BE170D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC70);
  }

  return result;
}

unint64_t sub_25BE0C0D4()
{
  result = qword_27FBDEC78;
  if (!qword_27FBDEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC78);
  }

  return result;
}

unint64_t sub_25BE0C190()
{
  result = qword_281475A98;
  if (!qword_281475A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A98);
  }

  return result;
}

unint64_t sub_25BE0C1E4()
{
  result = qword_281475990;
  if (!qword_281475990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC48, &qword_25BE170C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475990);
  }

  return result;
}

unint64_t sub_25BE0C260()
{
  result = qword_281475998;
  if (!qword_281475998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC58, &qword_25BE170C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475998);
  }

  return result;
}

unint64_t sub_25BE0C2DC()
{
  result = qword_2814759A0;
  if (!qword_2814759A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDEC68, &qword_25BE170D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759A0);
  }

  return result;
}

unint64_t sub_25BE0C358()
{
  result = qword_281475AB0;
  if (!qword_281475AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475AB0);
  }

  return result;
}

unint64_t sub_25BE0C3AC()
{
  result = qword_281475A18;
  if (!qword_281475A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A18);
  }

  return result;
}

unint64_t sub_25BE0C400()
{
  result = qword_27FBDEC90;
  if (!qword_27FBDEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDEC90);
  }

  return result;
}

unint64_t sub_25BE0C4BC()
{
  result = qword_2814759E8;
  if (!qword_2814759E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759E8);
  }

  return result;
}

unint64_t sub_25BE0C510()
{
  result = qword_281475C68;
  if (!qword_281475C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475C68);
  }

  return result;
}

unint64_t sub_25BE0C564()
{
  result = qword_27FBDECB0;
  if (!qword_27FBDECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECB0);
  }

  return result;
}

unint64_t sub_25BE0C5B8()
{
  result = qword_27FBDECB8;
  if (!qword_27FBDECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECB8);
  }

  return result;
}

unint64_t sub_25BE0C60C()
{
  result = qword_27FBDECC0;
  if (!qword_27FBDECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECC0);
  }

  return result;
}

uint64_t sub_25BE0C660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkEventData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BE0C6C4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEventData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BE0C720()
{
  result = qword_281475E50;
  if (!qword_281475E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E50);
  }

  return result;
}

unint64_t sub_25BE0C774()
{
  result = qword_281475B78[0];
  if (!qword_281475B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281475B78);
  }

  return result;
}

unint64_t sub_25BE0C7C8()
{
  result = qword_281475A58;
  if (!qword_281475A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A58);
  }

  return result;
}

uint64_t sub_25BE0C81C()
{
  v0 = sub_25BE15228();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0C868(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_25BE15358() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (sub_25BE15358() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BE1A840 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953 || (sub_25BE15358() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174536568636163 && a2 == 0xEA00000000006574 || (sub_25BE15358() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_25BE15358() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_25BE15358() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_25BE15358() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BE1A860 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000025BE1A880 == a2 || (sub_25BE15358() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69646E6F70736572 && a2 == 0xED0000706F50676ELL || (sub_25BE15358() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BE1A8A0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_25BE15358();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_25BE0CCF8()
{
  v0 = sub_25BE15368();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0CD4C()
{
  v0 = sub_25BE15228();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BE0CD98()
{
  v0 = sub_25BE15228();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BE0CDE4()
{
  result = qword_281475A50;
  if (!qword_281475A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A50);
  }

  return result;
}

unint64_t sub_25BE0CE38()
{
  result = qword_281475B70;
  if (!qword_281475B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475B70);
  }

  return result;
}

unint64_t sub_25BE0CE8C()
{
  result = qword_281475E48;
  if (!qword_281475E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkEventData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkEventData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0D2D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25BE0D360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentEnvironmentData.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ContentEnvironmentData.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0D684(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25BE0D714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25BE0D7F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25BE0D884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BE0D948()
{
  result = qword_27FBDECD0;
  if (!qword_27FBDECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECD0);
  }

  return result;
}

unint64_t sub_25BE0D9A0()
{
  result = qword_27FBDECD8;
  if (!qword_27FBDECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECD8);
  }

  return result;
}

unint64_t sub_25BE0D9F8()
{
  result = qword_27FBDECE0;
  if (!qword_27FBDECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECE0);
  }

  return result;
}

unint64_t sub_25BE0DA50()
{
  result = qword_27FBDECE8;
  if (!qword_27FBDECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECE8);
  }

  return result;
}

unint64_t sub_25BE0DAA8()
{
  result = qword_27FBDECF0;
  if (!qword_27FBDECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECF0);
  }

  return result;
}

unint64_t sub_25BE0DB00()
{
  result = qword_27FBDECF8;
  if (!qword_27FBDECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDECF8);
  }

  return result;
}

unint64_t sub_25BE0DB58()
{
  result = qword_27FBDED00;
  if (!qword_27FBDED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED00);
  }

  return result;
}

unint64_t sub_25BE0DBB0()
{
  result = qword_27FBDED08;
  if (!qword_27FBDED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED08);
  }

  return result;
}

unint64_t sub_25BE0DC08()
{
  result = qword_27FBDED10;
  if (!qword_27FBDED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED10);
  }

  return result;
}

unint64_t sub_25BE0DC60()
{
  result = qword_27FBDED18;
  if (!qword_27FBDED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED18);
  }

  return result;
}

unint64_t sub_25BE0DCB8()
{
  result = qword_27FBDED20;
  if (!qword_27FBDED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED20);
  }

  return result;
}

unint64_t sub_25BE0DD10()
{
  result = qword_27FBDED28;
  if (!qword_27FBDED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED28);
  }

  return result;
}

unint64_t sub_25BE0DD68()
{
  result = qword_281475C58;
  if (!qword_281475C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475C58);
  }

  return result;
}

unint64_t sub_25BE0DDC0()
{
  result = qword_281475C60;
  if (!qword_281475C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475C60);
  }

  return result;
}

unint64_t sub_25BE0DE18()
{
  result = qword_281475A08;
  if (!qword_281475A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A08);
  }

  return result;
}

unint64_t sub_25BE0DE70()
{
  result = qword_281475A10;
  if (!qword_281475A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A10);
  }

  return result;
}

unint64_t sub_25BE0DEC8()
{
  result = qword_281475E00;
  if (!qword_281475E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E00);
  }

  return result;
}

unint64_t sub_25BE0DF20()
{
  result = qword_281475E08;
  if (!qword_281475E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E08);
  }

  return result;
}

unint64_t sub_25BE0DF78()
{
  result = qword_281475E30;
  if (!qword_281475E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E30);
  }

  return result;
}

unint64_t sub_25BE0DFD0()
{
  result = qword_281475E38;
  if (!qword_281475E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E38);
  }

  return result;
}

unint64_t sub_25BE0E028()
{
  result = qword_281475A78;
  if (!qword_281475A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A78);
  }

  return result;
}

unint64_t sub_25BE0E080()
{
  result = qword_281475A80;
  if (!qword_281475A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A80);
  }

  return result;
}

unint64_t sub_25BE0E0D8()
{
  result = qword_281475A38;
  if (!qword_281475A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A38);
  }

  return result;
}

unint64_t sub_25BE0E130()
{
  result = qword_281475A40;
  if (!qword_281475A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A40);
  }

  return result;
}

unint64_t sub_25BE0E184()
{
  result = qword_281475AA0;
  if (!qword_281475AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475AA0);
  }

  return result;
}

unint64_t sub_25BE0E1D8()
{
  result = qword_281475DD8;
  if (!qword_281475DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475DD8);
  }

  return result;
}

unint64_t sub_25BE0E22C()
{
  result = qword_281475B60;
  if (!qword_281475B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475B60);
  }

  return result;
}

unint64_t sub_25BE0E280()
{
  result = qword_281475A90;
  if (!qword_281475A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A90);
  }

  return result;
}

unint64_t sub_25BE0E2D4()
{
  result = qword_27FBDED30;
  if (!qword_27FBDED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDED30);
  }

  return result;
}

unint64_t sub_25BE0E328()
{
  result = qword_2814759E0;
  if (!qword_2814759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759E0);
  }

  return result;
}

id TelemetryUploader.uploadEnvelopes(_:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v102 = a2;
  v109 = sub_25BE15108();
  v108 = *(v109 - 8);
  v4 = *(v108 + 64);
  MEMORY[0x28223BE20](v109, v5);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25BE15128();
  v105 = *(v107 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v107, v8);
  v104 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_25BE14CD8();
  v10 = *(v130 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v130, v12);
  v123 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_25BE15018();
  v14 = *(v122 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v122, v16);
  v121 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BE14D08();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE14CF8();
  v111 = sub_25BE14CE8();
  v110 = v24;
  v25 = *(v19 + 8);
  v118 = v23;
  v120 = v18;
  v119 = v19 + 8;
  v117 = v25;
  v25(v23, v18);
  v26 = MEMORY[0x277D304F0];
  v27 = *MEMORY[0x277D304F0];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v29 = swift_allocObject();
  v29[1] = xmmword_25BE17D60;
  v30 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v31 = sub_25BE15218();
  }

  else
  {
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D83C10];
  *(v29 + 7) = MEMORY[0x277D83B88];
  *(v29 + 8) = v32;
  *(v29 + 4) = v31;
  *(v29 + 12) = MEMORY[0x277D837D0];
  v125 = sub_25BE0F1C0();
  *(v29 + 13) = v125;
  v33 = v110;
  *(v29 + 9) = v111;
  *(v29 + 10) = v33;
  v27 = v27;

  sub_25BE151B8();
  sub_25BE150F8();

  v126 = dispatch_group_create();
  if (v30)
  {
    v34 = sub_25BE15218();
    if (!v34)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
LABEL_41:
      v82 = v126;
      IsEmpty = FCDispatchGroupIsEmpty();
      v84 = *v26;
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_25BE16710;
      v86 = v125;
      *(v85 + 56) = MEMORY[0x277D837D0];
      *(v85 + 64) = v86;
      v87 = v111;
      v88 = v110;
      *(v85 + 32) = v111;
      *(v85 + 40) = v88;
      if (IsEmpty)
      {
        v89 = v84;
        sub_25BE151B8();
        sub_25BE150F8();
      }

      else
      {
        v90 = MEMORY[0x277D84F90];

        v91 = v84;
        sub_25BE151B8();
        sub_25BE150F8();

        sub_25BE11458(0, &qword_281475980, 0x277D85C78);
        v92 = sub_25BE151D8();
        v93 = swift_allocObject();
        v93[2] = v87;
        v93[3] = v88;
        v94 = v82;
        v95 = v102;
        v96 = v103;
        v93[4] = v102;
        v93[5] = v96;
        aBlock[4] = sub_25BE10428;
        aBlock[5] = v93;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25BE10434;
        aBlock[3] = &block_descriptor;
        v97 = _Block_copy(aBlock);
        sub_25BE10490(v95);
        v98 = v104;
        sub_25BE15118();
        v137 = v90;
        sub_25BE113A8(&qword_2814759D8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED48, &qword_25BE17D88);
        sub_25BE114A0(&unk_2814759A8, &qword_27FBDED48, &qword_25BE17D88);
        v99 = v106;
        v100 = v109;
        sub_25BE151E8();
        sub_25BE151C8();
        _Block_release(v97);

        (*(v108 + 8))(v99, v100);
        (*(v105 + 8))(v98, v107);
      }
    }
  }

  v30 = 0;
  v116 = OBJC_IVAR___NDAnalyticsTelemetryUploader_sessionManager;
  v136 = a1 & 0xC000000000000001;
  v133 = a1 & 0xFFFFFFFFFFFFFF8;
  v115 = (v14 + 13);
  v114 = *MEMORY[0x277CEAE78];
  v129 = (v10 + 1);
  v113 = (v14 + 1);
  v10 = &selRef_responseDuration;
  v135 = xmmword_25BE16710;
  v131 = a1;
  v134 = v34;
  v112 = v28;
  while (1)
  {
    if (v136)
    {
      v39 = MEMORY[0x25F87CF60](v30, a1);
    }

    else
    {
      if (v30 >= *(v133 + 16))
      {
        goto LABEL_45;
      }

      v39 = *(a1 + 8 * v30 + 32);
    }

    v14 = v39;
    v40 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ([v39 v10[70]] == 2)
    {
      break;
    }

    v29 = *v26;
    v27 = sub_25BE151A8();
    v35 = swift_allocObject();
    v36 = v10;
    v37 = v35;
    *(v35 + 16) = v135;
    v38 = [v14 v36 + 3832];
    *(v37 + 56) = MEMORY[0x277D849A8];
    *(v37 + 64) = MEMORY[0x277D84A20];
    *(v37 + 32) = v38;
    sub_25BE150F8();

LABEL_9:
    ++v30;
    v10 = &selRef_responseDuration;
    if (v40 == v34)
    {
      goto LABEL_41;
    }
  }

  result = [v14 content];
  if (!result)
  {
    goto LABEL_49;
  }

  v42 = result;
  v27 = [result fc_zlibInflate];

  if (v27)
  {
    v43 = sub_25BE14CA8();
    v45 = v44;

    v46 = sub_25BE14C98();
    sub_25BE104A0(v43, v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = [objc_allocWithZone(MEMORY[0x277D35518]) initWithData_];

  if (v47)
  {
    v48 = [v47 networkEventGroups];
    if (v48)
    {
      v49 = v48;
      if ([v48 count])
      {
        v50 = v118;
        sub_25BE14CF8();
        v51 = sub_25BE14CE8();
        v128 = v49;
        v52 = v51;
        v132 = v51;
        v53 = v26;
        v55 = v54;
        v117(v50, v120);
        v56 = *v53;
        v57 = swift_allocObject();
        *(v57 + 16) = v135;
        v58 = v125;
        *(v57 + 56) = MEMORY[0x277D837D0];
        *(v57 + 64) = v58;
        *(v57 + 32) = v52;
        *(v57 + 40) = v55;
        v59 = v55;
        v60 = v56;

        sub_25BE151B8();
        sub_25BE150F8();

        v61 = *(v124 + v116);
        v62 = v121;
        v63 = v122;
        (*v115)(v121, v114, v122);
        v64 = v123;
        sub_25BE14CC8();
        sub_25BE14E58();
        v127 = *v129;
        v127(v64, v130);
        (*v113)(v62, v63);
        *(swift_allocObject() + 16) = v47;
        v65 = v47;
        sub_25BE14E38();

        v29 = v61;
        sub_25BE14E78();
        *(swift_allocObject() + 16) = v65;
        v66 = v65;
        sub_25BE15028();

        v67 = v126;
        dispatch_group_enter(v126);
        v68 = swift_allocObject();
        v68[2] = v132;
        v68[3] = v59;
        v68[4] = v67;
        v69 = v67;
        sub_25BE14CC8();
        a1 = v131;
        sub_25BE14E48();

        v27 = v112;
        v26 = MEMORY[0x277D304F0];

        v70 = v64;
        v28 = v27;
        v127(v70, v130);
LABEL_40:
        v34 = v134;
        goto LABEL_9;
      }
    }

    v29 = *v26;
    sub_25BE151B8();
    sub_25BE150F8();

    goto LABEL_40;
  }

  v29 = *v26;
  sub_25BE151A8();
  v27 = swift_allocObject();
  *(v27 + 1) = v135;
  result = [v14 content];
  if (!result)
  {
    goto LABEL_50;
  }

  v71 = result;
  v72 = sub_25BE14CA8();
  v74 = v73;

  v75 = v74;
  v76 = v74 >> 62;
  if ((v74 >> 62) > 1)
  {
    if (v76 == 2)
    {
      v81 = *(v72 + 16);
      v80 = *(v72 + 24);
      result = sub_25BE104A0(v72, v75);
      v79 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_25BE104A0(v72, v74);
      v79 = 0;
    }

    a1 = v131;
    v26 = MEMORY[0x277D304F0];
    goto LABEL_39;
  }

  v26 = MEMORY[0x277D304F0];
  if (!v76)
  {
    v77 = v72;
    v78 = BYTE6(v75);
    sub_25BE104A0(v77, v75);
    v79 = v78;
LABEL_36:
    a1 = v131;
LABEL_39:
    *(v27 + 7) = MEMORY[0x277D83B88];
    *(v27 + 8) = MEMORY[0x277D83C10];
    *(v27 + 4) = v79;
    sub_25BE150F8();

    goto LABEL_40;
  }

  result = sub_25BE104A0(v72, v75);
  LODWORD(v79) = HIDWORD(v72) - v72;
  if (!__OFSUB__(HIDWORD(v72), v72))
  {
    v79 = v79;
    goto LABEL_36;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_25BE0F1C0()
{
  result = qword_2814759D0;
  if (!qword_2814759D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814759D0);
  }

  return result;
}

id sub_25BE0F214(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED70, &qword_25BE17DD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED78, &qword_25BE17DD8);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v69 = &v56 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED80, &qword_25BE17DE0);
  v67 = *(v68 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v68, v15);
  v66 = &v56 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED88, &qword_25BE17DE8);
  v64 = *(v65 - 8);
  v17 = *(v64 + 64);
  MEMORY[0x28223BE20](v65, v18);
  v20 = &v56 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDED90, &qword_25BE17DF0);
  v21 = *(v63 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v63, v23);
  v25 = &v56 - v24;
  result = [v2 appVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v27 = result;
  v57 = v21;
  v58 = v20;
  v59 = v10;
  v60 = v9;
  v61 = v5;
  v79 = a1;
  v62 = v4;
  v28 = sub_25BE15148();
  v30 = v29;

  v78 = v2;
  result = [v2 appBuildNumber];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v31 = result;
  v32 = sub_25BE15148();
  v34 = v33;

  *&v81 = v28;
  *(&v81 + 1) = v30;
  v82 = v32;
  v83 = v34;
  sub_25BE114E8();
  sub_25BE14D58();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED50, &qword_25BE17DB8);
  v35 = sub_25BE14DE8();
  v36 = *(v35 - 8);
  v77 = *(v36 + 72);
  v37 = v36;
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v71 = *(v36 + 80);
  v39 = swift_allocObject();
  v80 = xmmword_25BE16710;
  *(v39 + 16) = xmmword_25BE16710;
  v40 = *MEMORY[0x277CEAD10];
  v73 = *(v37 + 104);
  v72 = v40;
  v76 = v35;
  v73(v39 + v38, v40, v35);
  v75 = v37 + 104;
  v56 = "or group type %d";
  sub_25BE14ED8();

  (*(v57 + 8))(v25, v63);
  v41 = [v78 contentEnvironment];
  v42 = 0x1020300u >> (8 * v41);
  if (v41 >= 4)
  {
    LOBYTE(v42) = 0;
  }

  LOBYTE(v81) = v42;
  sub_25BE1153C();
  v43 = v58;
  sub_25BE14D58();
  v44 = swift_allocObject();
  *(v44 + 16) = v80;
  v45 = v35;
  v46 = v73;
  v73(v44 + v38, v40, v45);
  sub_25BE14ED8();

  (*(v64 + 8))(v43, v65);
  sub_25BE10764(&v81);
  sub_25BE11590();
  v47 = v66;
  sub_25BE14D58();
  v48 = swift_allocObject();
  *(v48 + 16) = v80;
  v49 = v72;
  v46(v48 + v38, v72, v76);
  sub_25BE14ED8();

  (*(v67 + 8))(v47, v68);
  sub_25BE1084C(&v81);
  sub_25BE115E4();
  v50 = v69;
  sub_25BE14D58();
  v51 = swift_allocObject();
  *(v51 + 16) = v80;
  v52 = v76;
  v53 = v73;
  v73(v51 + v38, v49, v76);
  sub_25BE14ED8();

  (*(v70 + 8))(v50, v59);
  sub_25BE109BC(&v81);
  sub_25BE11638();
  v54 = v60;
  sub_25BE14D58();
  v55 = swift_allocObject();
  *(v55 + 16) = v80;
  v53(v55 + v38, v72, v52);
  sub_25BE14ED8();

  return (*(v61 + 8))(v54, v62);
}

void sub_25BE0FB18(_OWORD *a1)
{
  v52 = a1;
  v51 = type metadata accessor for NetworkEventData(0);
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51, v3);
  v50 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 networkEventGroups];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v5;
  if (![v6 count])
  {

LABEL_29:
    v55 = *MEMORY[0x277D304F0];
    sub_25BE151B8();
    sub_25BE150F8();
LABEL_30:
    v36 = v55;

    return;
  }

  *&v56[0] = 0;
  sub_25BE11458(0, &qword_281475970, 0x277D35528);
  sub_25BE15188();

  if (!*&v56[0])
  {
    v55 = *MEMORY[0x277D304F0];
    sub_25BE151A8();
    sub_25BE150F8();

    goto LABEL_30;
  }

  v40 = *&v56[0];
  v7 = *MEMORY[0x277D304F0];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v8 = swift_allocObject();
  v9 = v40;
  v49 = xmmword_25BE16710;
  v8[1] = xmmword_25BE16710;
  v10 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_42;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v12 = MEMORY[0x277D83C10];
  *(v8 + 7) = MEMORY[0x277D83B88];
  *(v8 + 8) = v12;
  *(v8 + 4) = v11;
  v7 = v7;
  sub_25BE151B8();
  sub_25BE150F8();

  if (v10)
  {
    v13 = sub_25BE15218();
    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_8:
      v14 = 0;
      v44 = v40 & 0xC000000000000001;
      v39 = v40 & 0xFFFFFFFFFFFFFF8;
      v38 = v40 + 32;
      v48 = "or group type %d";
      v47 = *MEMORY[0x277CEAD18];
      v43 = xmmword_25BE17D60;
      v42 = v6;
      v41 = v13;
      while (1)
      {
        if (v44)
        {
          v15 = MEMORY[0x25F87CF60](v14, v40);
        }

        else
        {
          if (v14 >= *(v39 + 16))
          {
            goto LABEL_41;
          }

          v15 = *(v38 + 8 * v14);
        }

        v55 = v15;
        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v11 = sub_25BE15218();
          goto LABEL_6;
        }

        v18 = *MEMORY[0x277D304F0];
        v7 = swift_allocObject();
        *(v7 + 1) = v43;
        v19 = v18;
        v20 = sub_25BE10A70();
        if (v20 >> 62)
        {
          v21 = sub_25BE15218();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v46 = v17;

        *(v7 + 7) = MEMORY[0x277D83B88];
        *(v7 + 8) = MEMORY[0x277D83C10];
        *(v7 + 4) = v21;
        v8 = v55;
        v22 = [v55 eventType];
        *(v7 + 12) = MEMORY[0x277D849A8];
        *(v7 + 13) = MEMORY[0x277D84A20];
        *(v7 + 18) = v22;
        sub_25BE151B8();
        sub_25BE150F8();

        v23 = sub_25BE10A70();
        v10 = v23;
        if (v23 >> 62)
        {
          v24 = sub_25BE15218();
          if (!v24)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v24)
          {
            goto LABEL_9;
          }
        }

        type metadata accessor for TelemetryEvent(0);
        if (v24 < 1)
        {
          goto LABEL_40;
        }

        v25 = 0;
        v53 = v10 & 0xC000000000000001;
        v54 = v10;
        do
        {
          if (v53)
          {
            v26 = MEMORY[0x25F87CF60](v25, v10);
          }

          else
          {
            v26 = *(v10 + 8 * v25 + 32);
          }

          ++v25;
          v27 = v26;
          v28 = v55;
          v29 = v50;
          sub_25BE10B7C(v27, v28, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED50, &qword_25BE17DB8);
          v30 = sub_25BE14DE8();
          v31 = *(v30 - 8);
          v32 = *(v31 + 72);
          v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
          v34 = swift_allocObject();
          *(v34 + 16) = v49;
          v35 = *(v31 + 104);
          v7 = (v31 + 104);
          v35(v34 + v33, v47, v30);
          sub_25BE113A8(&qword_281475C50, type metadata accessor for NetworkEventData);
          v8 = v52;
          sub_25BE14D68();

          sub_25BE0C6C4(v29);
          sub_25BE113A8(&unk_281475DB8, type metadata accessor for TelemetryEvent);
          memset(v56, 0, 32);
          sub_25BE14D78();

          sub_25BE113F0(v56);
          v10 = v54;
        }

        while (v24 != v25);
LABEL_9:

        v14 = v46;
        v6 = v42;
        if (v46 == v41)
        {

          return;
        }
      }
    }
  }
}

void sub_25BE1025C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D304F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BE16710;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_25BE0F1C0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v6;

  sub_25BE151B8();
  sub_25BE150F8();

  dispatch_group_leave(a3);
}

uint64_t sub_25BE10344(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *MEMORY[0x277D304F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED38, &qword_25BE17D80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BE16710;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_25BE0F1C0();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v6;

  sub_25BE151B8();
  sub_25BE150F8();

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_25BE10434(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BE10490(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BE104A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id TelemetryUploader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TelemetryUploader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BE10744(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_25BE10764(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 deviceModel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_25BE15148();
  v8 = v7;

  v9 = sub_25BE10E5C();
  v10 = [v2 osInstallVariant];
  v11 = [v2 osVersion];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v10 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v10 == 1;
  }

  v14 = sub_25BE15148();
  v16 = v15;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 17) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
}

double sub_25BE1084C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25BE15148();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 countryCode];
  if (v9)
  {
    v10 = v9;
    v11 = sub_25BE15148();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  LODWORD(v18) = 0;
  *(&v18 + 1) = v6;
  *&v19 = v8;
  *(&v19 + 1) = v11;
  *&v20 = v13;
  BYTE8(v20) = 0;
  strcpy(&v21, "com.apple.news");
  HIBYTE(v21) = -18;
  *v22 = MEMORY[0x277D84F90];
  *&v22[8] = MEMORY[0x277D84F90];
  *&v22[16] = 0;
  *&v22[24] = 0;
  *&v22[28] = 2;
  v22[30] = 3;
  v23 = 0;
  v24 = v6;
  v25 = v8;
  v26 = v11;
  v27 = v13;
  v28 = 0;
  strcpy(v29, "com.apple.news");
  v29[15] = -18;
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v33 = 0;
  v32 = 0;
  v34 = 2;
  v35 = 3;
  sub_25BE0C128(&v18, &v17);
  sub_25BE0C160(&v23);
  v14 = v21;
  a1[2] = v20;
  a1[3] = v14;
  a1[4] = *v22;
  *(a1 + 79) = *&v22[15];
  result = *&v18;
  v16 = v19;
  *a1 = v18;
  a1[1] = v16;
  return result;
}

void sub_25BE109BC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 userId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25BE15148();
    v8 = v7;

    v9 = [v2 userStorefrontId];
    if (v9)
    {
      v10 = v9;
      v11 = sub_25BE15148();
      v13 = v12;

      *a1 = v6;
      *(a1 + 8) = v8;
      *(a1 + 16) = 2;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = v11;
      *(a1 + 56) = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25BE10A70()
{
  v1 = [v0 successes];
  if (v1)
  {
    v2 = v1;
    sub_25BE11458(0, &qword_281475978, 0x277D35520);
    sub_25BE15188();
  }

  v3 = MEMORY[0x277D84F90];
  v4 = [v0 failures];
  if (v4)
  {
    v5 = v4;
    sub_25BE11458(0, &qword_281475978, 0x277D35520);
    sub_25BE15188();
  }

  sub_25BE10FDC(MEMORY[0x277D84F90]);
  return v3;
}

int *sub_25BE10B7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = sub_25BE14CD8();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 startTime];
  sub_25BE14CB8();
  v34 = [a1 dnsDuration];
  v33 = [a1 connectDuration];
  v32 = [a1 requestDuration];
  v31 = [a1 responseDuration];
  v30 = [a1 responseSize];
  v11 = [a1 cacheState];
  v29 = [a1 httpStatusCode];
  v28 = [a1 errorCode];
  v27 = sub_25BE10F98(a2);
  v26 = [a2 wifiReachabilityStatus];
  v12 = [a2 cellularRadioAccessTechnology] - 1;
  if (v12 > 0xC)
  {
    v13 = 0;
  }

  else
  {
    v13 = byte_25BE17DFA[v12];
  }

  v14 = [a2 respondingPop];
  if (v14)
  {
    v15 = v14;
    v16 = sub_25BE15148();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  if (v11 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v11 == 1;
  }

  (*(v6 + 32))(a3, v10, v35);
  result = type metadata accessor for NetworkEventData(0);
  v21 = v33;
  *(a3 + result[5]) = v34;
  *(a3 + result[6]) = v21;
  v22 = v31;
  *(a3 + result[7]) = v32;
  *(a3 + result[8]) = v22;
  v23 = v29;
  *(a3 + result[9]) = v30;
  *(a3 + result[10]) = v19;
  *(a3 + result[11]) = v23;
  *(a3 + result[12]) = v28;
  LOBYTE(v23) = v26;
  *(a3 + result[13]) = v27;
  *(a3 + result[14]) = v23;
  *(a3 + result[15]) = v13;
  v24 = (a3 + result[16]);
  *v24 = v16;
  v24[1] = v18;
  *(a3 + result[17]) = 0;
  return result;
}

uint64_t sub_25BE10E5C()
{
  v0 = NFSystemName();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_25BE15148();
  v4 = v3;

  if (v2 == 5459817 && v4 == 0xE300000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 1;
  }

  if (v2 == 0x534F64615069 && v4 == 0xE600000000000000 || (sub_25BE15358() & 1) != 0)
  {

    return 2;
  }

  if (v2 == 0x534F63616DLL && v4 == 0xE500000000000000)
  {

    return 3;
  }

  v6 = sub_25BE15358();

  if (v6)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BE10F98(void *a1)
{
  v1 = [a1 eventType] - 1;
  if (v1 > 0x11)
  {
    return 0;
  }

  else
  {
    return byte_25BE17E07[v1];
  }
}

uint64_t sub_25BE10FDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25BE15218();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_25BE15218();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_25BE110CC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25BE1116C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25BE110CC(uint64_t a1)
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
    sub_25BE15218();
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
  result = sub_25BE15208();
  *v1 = result;
  return result;
}

uint64_t sub_25BE1116C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25BE15218();
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
      result = sub_25BE15218();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25BE114A0(&qword_27FBDED68, &qword_27FBDED60, &qword_25BE17DC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED60, &qword_25BE17DC8);
            v9 = sub_25BE11320(v13, i, a3);
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
        sub_25BE11458(0, &qword_281475978, 0x277D35520);
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

void (*sub_25BE11320(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F87CF60](a2, a3);
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
    return sub_25BE113A0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE113A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BE113F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDED58, &qword_25BE17DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BE11458(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25BE114A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25BE114E8()
{
  result = qword_281475A30;
  if (!qword_281475A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A30);
  }

  return result;
}

unint64_t sub_25BE1153C()
{
  result = qword_281475A70;
  if (!qword_281475A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A70);
  }

  return result;
}

unint64_t sub_25BE11590()
{
  result = qword_281475E28;
  if (!qword_281475E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475E28);
  }

  return result;
}

unint64_t sub_25BE115E4()
{
  result = qword_281475DF8;
  if (!qword_281475DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475DF8);
  }

  return result;
}

unint64_t sub_25BE11638()
{
  result = qword_281475A00;
  if (!qword_281475A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281475A00);
  }

  return result;
}

void NDAnalyticsEnvelopeSubmissionDatesByContentType_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEnvelopeContentTypesFromEntries_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEnvelopeStoreStringRepresentationsOfEntries_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "entries", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEnvelopeStoreEntriesFromStringRepresentations_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "stringRepresentations", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryDeliveryWindowEarlierDate_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopeSubmissionDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryDeliveryWindowEarlierDate_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentTypeConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryDeliveryWindow_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopeSubmissionDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryDeliveryWindow_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentTypeConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryCanBeUploaded_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopeSubmissionDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryCanBeUploaded_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "targetDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void NDAnalyticsEntryCanBeUploaded_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentTypeConfig", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}