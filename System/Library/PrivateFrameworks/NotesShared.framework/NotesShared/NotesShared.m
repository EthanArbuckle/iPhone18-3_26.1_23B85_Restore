void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_9_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_2_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, void *a2)
{

  return [a2 count];
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0x16u);
}

void sub_214D55534()
{
  v0 = objc_opt_self();
  type metadata accessor for ICTTAudioRecording(v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = sub_2150A4A90();
  [v0 registerClass:ObjCClassFromMetadata forType:v2];

  type metadata accessor for ICTTAudioRecording.Fragment();
  v3 = swift_getObjCClassFromMetadata();
  v4 = sub_2150A4A90();
  [v0 registerClass:v3 forType:v4];

  type metadata accessor for ICTTTranscriptSegment();
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_2150A4A90();
  [v0 registerClass:v5 forType:v6];
}

uint64_t sub_214D55670(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_1_10@<X0>(id a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a2 = a4;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a3;

  return a1;
}

void OUTLINED_FUNCTION_0_14(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 1024;
  *(a3 + 10) = v4;
}

void sub_214D56968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for EditNoteActivity()
{
  result = qword_280C23E20;
  if (!qword_280C23E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214D5996C()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v1;
  v7 = v2;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_214D5BFE4;
  v9 = v0[5];
  v10 = v0[2];

  return withUnsafeRethrowingContinuation<A>(_:rethrow:)(v10, sub_214D59D24, v5, sub_214F81934, v6, v9);
}

uint64_t sub_214D59A98()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t withUnsafeRethrowingContinuation<A>(_:rethrow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a1;
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_214D5BEB0;

  return sub_214D59BB8(a1, 0, 0, a2, a3, a6);
}

uint64_t sub_214D59BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_2150A5010();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](sub_214D59C4C, v7, v9);
}

uint64_t sub_214D59C4C()
{
  v1 = v0 + 2;
  v2 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_214D5BDA8;
  v4 = swift_continuation_init();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v4);
  v3();

  return MEMORY[0x282200938](v1);
}

void sub_214D59D30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v12[4] = sub_214F9A7C4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_214F44018;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [a2 performBlock_];
  _Block_release(v11);
}

uint64_t sub_214D59E28()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
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

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ICPaperKitBackedAttachmentUTTypes()
{
  if (ICPaperKitBackedAttachmentUTTypes_onceToken != -1)
  {
    ICPaperKitBackedAttachmentUTTypes_cold_1();
  }

  v1 = ICPaperKitBackedAttachmentUTTypes_types;

  return v1;
}

void __ICPaperKitBackedAttachmentUTTypes_block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.paper";
  v4[1] = @"com.apple.paper.doc.pdf";
  v4[2] = @"com.apple.paper.doc.scan";
  v4[3] = @"com.apple.paper.doc";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = ICPaperKitBackedAttachmentUTTypes_types;
  ICPaperKitBackedAttachmentUTTypes_types = v2;
}

void sub_214D5A4DC()
{
  sub_2150A3A00();
  if (v0 <= 0x3F)
  {
    sub_214D5A588();
    if (v1 <= 0x3F)
    {
      sub_214D5A5D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214D5A588()
{
  if (!qword_280C23178)
  {
    v0 = sub_2150A57E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C23178);
    }
  }
}

void sub_214D5A5D8()
{
  if (!qword_280C23160)
  {
    sub_214D5A634();
    v0 = sub_2150A5330();
    if (!v1)
    {
      atomic_store(v0, &qword_280C23160);
    }
  }
}

unint64_t sub_214D5A634()
{
  result = qword_280C23E70;
  if (!qword_280C23E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E70);
  }

  return result;
}

unint64_t sub_214D5A68C()
{
  result = qword_280C23E68;
  if (!qword_280C23E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23E68);
  }

  return result;
}

uint64_t sub_214D5A728()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214D5A78C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214D5A7C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_214D5A7F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_214D5A890()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C232A0);
  __swift_project_value_buffer(v0, qword_280C232A0);
  return sub_2150A3F20();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t NotificationSource.init<A>(observing:object:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v29 = a6;
  v30 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v23 - v14;
  v16 = type metadata accessor for NotificationSource.Observer();

  v17 = objc_allocWithZone(v16);
  v25 = a4;
  v18 = sub_214D5AD34(a3, a4);
  v26 = v10;
  v27 = a1;
  (*(v10 + 16))(v12, a1, a5);
  sub_2150A4D60();
  v28 = a5;
  swift_getAssociatedConformanceWitness();
  sub_2150A5850();
  for (i = v31; v31; i = v31)
  {
    v20 = [objc_opt_self() defaultCenter];
    v21 = [v20 _addObserver_selector_name_object_options_];

    swift_beginAccess();
    sub_214D5B11C(&v32, v21);
    swift_endAccess();

    sub_2150A5850();
  }

  swift_unknownObjectRelease();
  (*(v26 + 8))(v27, v28);
  result = (*(v24 + 8))(v15, AssociatedTypeWitness);
  *v29 = v18;
  return result;
}

id sub_214D5AD34(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[qword_27CA431E8] = MEMORY[0x277D84FA0];
  v6 = qword_27CA431F8;
  v11 = 0;
  v12 = 2;
  type metadata accessor for NotificationSource.Observer.State();
  v7 = sub_214D5AE7C();
  sub_214D5B0F0(0, 2);
  *&v2[v6] = v7;
  v8 = &v2[qword_27CA431F0];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_214D5AE2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214D5AE7C()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_2150A5C70();
  return sub_2150A5C60();
}

void sub_214D5AEF8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_214D5AF44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t get_enum_tag_for_layout_string_11NotesShared18NotificationSourceV8Observer33_65D8AAB68C82AA44F05B10F7612605C0LLC5StateOyx__G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_214D5B0F0(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_214D5B11C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2150A64A0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_214D5B1FC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_214D5B1FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_214D5B5A0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_215079348();
      a2 = v7;
      goto LABEL_12;
    }

    sub_214D5B324();
  }

  v8 = *v3;
  result = sub_2150A64A0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2150A63D0();
  __break(1u);
  return result;
}

uint64_t sub_214D5B324()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43250);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_2150A64A0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_214D5B5A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43250);
  result = sub_2150A5AA0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_2150A64A0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t NotificationSource.init(observing:object:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C25D0;
  *(v10 + 32) = a1;
  v13 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA431E0);
  sub_214D5B8A0();
  result = NotificationSource.init<A>(observing:object:transform:)(&v13, a2, a3, a4, v11, &v14);
  *a5 = v14;
  return result;
}

unint64_t sub_214D5B8A0()
{
  result = qword_280C23168;
  if (!qword_280C23168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA431E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C23168);
  }

  return result;
}

uint64_t sub_214D5B95C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2150A3F30();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2150A3F20();
}

void *NSFileManager.contentsOfDirectory(at:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2150A36B0();
  type metadata accessor for URLResourceKey(0);
  v2 = sub_2150A4EB0();
  v8[0] = 0;
  v3 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:v2 options:0 error:v8];

  v4 = v8[0];
  if (v3)
  {
    sub_2150A3750();
    v1 = sub_2150A4ED0();
    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    sub_2150A35D0();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_214D5BC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_214D5BDA8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_214D5BEB0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FC4D60, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214D5BFE4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214F8163C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Array.prepend(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2150A4FA0();
}

void ICAccountObject<>.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 objectID];
  if ([v4 ic_isModernType])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 ic_isLegacyType];
  }

  v6 = v2;
  if ([v6 isLocalAccount])
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = [v6 emailAddress];
    if (v9)
    {
      v10 = v9;
      v7 = sub_2150A4AD0();
      v8 = v11;
    }

    else
    {

      v7 = 0;
      v8 = 0xE000000000000000;
    }
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
}

uint64_t AccountID.entityIdentifierString.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = *v0;
    v11 = sub_2150A4AD0();
    if (v2)
    {
      MEMORY[0x2160617E0](3092282, 0xE300000000000000);
      MEMORY[0x2160617E0](v3, v1);
      MEMORY[0x2160617E0](47, 0xE100000000000000);
      v4 = 0x746E756F636361;
      v5 = 0xE700000000000000;
    }

    else
    {
      MEMORY[0x2160617E0](58, 0xE100000000000000);
      MEMORY[0x2160617E0](0x746E756F636361, 0xE700000000000000);
      MEMORY[0x2160617E0](47, 0xE100000000000000);
      v4 = v3;
      v5 = v1;
    }

    MEMORY[0x2160617E0](v4, v5);
  }

  else
  {
    sub_2150A5B20();
    v6 = sub_2150A4AD0();

    v11 = v6;
    MEMORY[0x2160617E0](3092282, 0xE300000000000000);
    v7 = sub_2150A4AD0();
    MEMORY[0x2160617E0](v7);

    MEMORY[0x2160617E0](47, 0xE100000000000000);
    MEMORY[0x2160617E0](0x746E756F636361, 0xE700000000000000);
    v8 = 0xE600000000000000;
    MEMORY[0x2160617E0](0x3D657079743FLL, 0xE600000000000000);
    if (v2)
    {
      v9 = 1819112552;
    }

    else
    {
      v9 = 0x6E7265646F6DLL;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    MEMORY[0x2160617E0](v9, v8);
  }

  return v11;
}

void sub_214D5DDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v22);
  _Unwind_Resume(a1);
}

double versioned_document::Document::Document(versioned_document::Document *this)
{
  *this = &unk_282709E08;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t versioned_document::Document::Clear(versioned_document::Document *this)
{
  *(this + 16) = 0;
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, char *a2, int a3)
{
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = &a2[a3];
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = xmmword_2150C0B20;
  v13 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  if (!(*(*this + 64))(this, v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*this + 40))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 2, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/message_lite.cc", 123);
    v5 = google::protobuf::internal::LogMessage::operator<<(v18, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v16, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    goto LABEL_7;
  }

  v4 = v10;
LABEL_8:
  google::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v4 & 1;
}

void sub_214D5E68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

google::protobuf::io::CodedOutputStream *google::protobuf::io::CodedOutputStream::CodedOutputStream(google::protobuf::io::CodedOutputStream *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 12) = 0;
  google::protobuf::io::CodedOutputStream::Refresh(this);
  *(this + 24) = 0;
  return this;
}

uint64_t versioned_document::Document::MergePartialFromCodedStream(versioned_document::Document *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_16;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_12:
      if (v7)
      {
        v13 = (v7 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_49:
        v26 = 1;
        goto LABEL_50;
      }

LABEL_16:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_19;
    }

    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v9 >= v10 || (v11 = *v9, v11 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
      {
        goto LABEL_48;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
    }

    else
    {
      *(this + 16) = v11;
      v12 = v9 + 1;
      *(a2 + 1) = v12;
    }

    *(this + 8) |= 1u;
    if (v12 < v10 && *v12 == 18)
    {
      do
      {
        *(a2 + 1) = v12 + 1;
LABEL_27:
        v14 = *(this + 13);
        v15 = *(this + 12);
        if (v15 >= v14)
        {
          if (v14 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v14 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
        }

        v16 = *(this + 5);
        *(this + 12) = v15 + 1;
        v17 = *(v16 + 8 * v15);
        v30 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20 || (v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !versioned_document::Version::MergePartialFromCodedStream(v17, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v12 = *(a2 + 1);
        v25 = *(a2 + 2);
      }

      while (v12 < v25 && *v12 == 18);
      if (v12 == v25 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v26 = 1;
  *(a2 + 36) = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_214D5EA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::io::StringOutputStream::StringOutputStream(void *result, uint64_t a2)
{
  *result = &unk_2827099A0;
  result[1] = a2;
  return result;
}

uint64_t google::protobuf::io::CodedOutputStream::Refresh(google::protobuf::io::CodedOutputStream *this)
{
  v4 = 0;
  result = (*(**this + 16))(*this, &v4, this + 16);
  if (result)
  {
    v3 = v4;
    *(this + 5) += *(this + 4);
  }

  else
  {
    v3 = 0;
    *(this + 4) = 0;
    *(this + 24) = 1;
  }

  *(this + 1) = v3;
  return result;
}

uint64_t google::protobuf::io::StringOutputStream::Next(google::protobuf::io::StringOutputStream *this, void **a2, int *a3)
{
  v6 = *(this + 1);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = *(v6 + 8);
    v9 = v7;
    v8 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 < v8)
    {
      goto LABEL_11;
    }

    if (v7 >= 0x40000000)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 170);
      v10 = google::protobuf::internal::LogMessage::operator<<(v17, "Cannot allocate buffer larger than kint32max for ");
      v11 = google::protobuf::internal::LogMessage::operator<<(v10, "StringOutputStream.");
      google::protobuf::internal::LogFinisher::operator=(&v16, v11);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      return 0;
    }
  }

  else
  {
    if (v7 < 0x16)
    {
      v8 = 22;
      v9 = *(v6 + 23);
      goto LABEL_11;
    }

    v9 = *(v6 + 23);
  }

  if (2 * v7 <= 16)
  {
    v8 = 16;
  }

  else
  {
    v8 = (2 * v7);
  }

LABEL_11:
  std::string::resize(v6, v8, 0);
  v13 = *(this + 1);
  if (*(v13 + 23) < 0)
  {
    if (!v13[1])
    {
LABEL_16:
      v13 = 0;
      goto LABEL_17;
    }

    v13 = *v13;
  }

  else if (!*(v13 + 23))
  {
    goto LABEL_16;
  }

LABEL_17:
  *a2 = v13 + v9;
  v14 = *(this + 1);
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
  }

  *a3 = v15 - v7;
  return 1;
}

void sub_214D5EC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Reserve(uint64_t this, int a2)
{
  v2 = *(this + 16);
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    *(this + 16) = v3;
    operator new[]();
  }

  return this;
}

void versioned_document::Version::SharedCtor(versioned_document::Version *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_214D5EE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

atomic_ullong *google::protobuf::GoogleOnceInitImpl(atomic_ullong *result, uint64_t a2)
{
  v2 = *result;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3 = result;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong(result, &v4, 1uLL);
      if (!v4)
      {
        result = (*(*a2 + 16))(a2);
        __dmb(0xBu);
        *v3 = 2;
        return result;
      }
    }

    while (!*result);
    if (*result == 1)
    {
      do
      {
        result = sched_yield();
        v5 = *v3;
        __dmb(0xBu);
      }

      while (v5 == 1);
    }
  }

  return result;
}

versioned_document::Version *versioned_document::Version::Version(versioned_document::Version *this)
{
  *this = &unk_282709E80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  versioned_document::Version::SharedCtor(this);
  return this;
}

void sub_214D5EF2C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::FunctionClosure0::Run(google::protobuf::internal::FunctionClosure0 *this)
{
  v2 = *(this + 16);
  result = (*(this + 1))();
  if (this && (v2 & 1) != 0)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

void google::protobuf::internal::OnShutdown(google::protobuf::internal *this, void (*a2)(void))
{
  v3 = google::protobuf::internal::shutdown_functions_init;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v17[0] = &unk_28270A628;
    v17[1] = google::protobuf::internal::InitShutdownFunctions;
    v18 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::shutdown_functions_init, v17);
  }

  v4 = google::protobuf::internal::shutdown_functions_mutex;
  google::protobuf::internal::Mutex::Lock(google::protobuf::internal::shutdown_functions_mutex);
  v5 = google::protobuf::internal::shutdown_functions;
  v7 = *(google::protobuf::internal::shutdown_functions + 8);
  v6 = *(google::protobuf::internal::shutdown_functions + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *google::protobuf::internal::shutdown_functions) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *google::protobuf::internal::shutdown_functions;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(google::protobuf::internal::shutdown_functions, v12);
    }

    v13 = (8 * v9);
    *v13 = this;
    v8 = 8 * v9 + 8;
    v14 = *(v5 + 8) - *v5;
    v15 = v13 - v14;
    memcpy(v13 - v14, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(v5 + 8) = v8;
  google::protobuf::internal::Mutex::Unlock(v4);
}

void google::protobuf::internal::Mutex::Lock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_lock(*this);
  if (v1)
  {
    v2 = v1;
    v5 = 3;
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/stubs/common.cc";
    v7 = 304;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_lock: ", 0x14uLL);
    v3 = strerror(v2);
    v4 = strlen(v3);
    std::string::append(&__p, v3, v4);
    google::protobuf::internal::LogMessage::Finish(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_214D5F2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void google::protobuf::internal::Mutex::Unlock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    v2 = v1;
    v5 = 3;
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/stubs/common.cc";
    v7 = 311;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_unlock: ", 0x16uLL);
    v3 = strerror(v2);
    v4 = strlen(v3);
    std::string::append(&__p, v3, v4);
    google::protobuf::internal::LogMessage::Finish(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_214D5F3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t versioned_document::Version::MergePartialFromCodedStream(versioned_document::Version *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
        {
          TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
          if ((v7 & 0x100000000) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          *(a2 + 8) = v6;
          *(a2 + 1) = v5 + 1;
          v7 = v6 | 0x100000000;
        }

        v9 = v7 >> 3;
        if (v7 >> 3 == 3)
        {
          if (v7 == 26)
          {
            v16 = *(this + 8);
            goto LABEL_40;
          }

LABEL_22:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_48;
          }

          goto LABEL_24;
        }

        if (v9 == 2)
        {
          break;
        }

        if (v9 == 1)
        {
          if (v7 != 8)
          {
            goto LABEL_22;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
            {
              goto LABEL_49;
            }

            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 8) |= 1u;
          if (v13 < v10 && *v13 == 16)
          {
            v15 = v13 + 1;
            *(a2 + 1) = v15;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_13:
          if (v7)
          {
            v14 = (v7 & 7) == 4;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
LABEL_48:
            v20 = 1;
            goto LABEL_50;
          }

LABEL_24:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
          {
            goto LABEL_49;
          }
        }
      }

      if (v7 != 16)
      {
        goto LABEL_22;
      }

      v15 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_32:
      if (v15 >= v10 || (v17 = *v15, v17 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
        {
          goto LABEL_49;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v17;
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      v16 = *(this + 8) | 2;
      *(this + 8) = v16;
    }

    while (v18 >= v10 || *v18 != 26);
    *(a2 + 1) = v18 + 1;
LABEL_40:
    *(this + 8) = v16 | 4;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v19 = *(this + 6);
    if (v19 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v19))
    {
      break;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v20 = 1;
      *(a2 + 36) = 1;
      goto LABEL_50;
    }
  }

LABEL_49:
  v20 = 0;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_214D5F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 - v3 <= 9 && (v4 <= v3 || *(v4 - 1) < 0))
  {
    v11 = 0;
    v7 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v11);
    if (v7)
    {
      *a2 = v11;
    }
  }

  else
  {
    v5 = (v3 + 1);
    v6 = *v3;
    if (*v3 < 0)
    {
      v6 = v6 + (v3[1] << 7) - 128;
      if (v3[1] < 0)
      {
        v6 = v6 + (v3[2] << 14) - 0x4000;
        if (v3[2] < 0)
        {
          v6 = v6 + (v3[3] << 21) - 0x200000;
          if (v3[3] < 0)
          {
            v8 = v3[4];
            v6 = v6 + (v8 << 28) - 0x10000000;
            if (v8 < 0)
            {
              v5 = (v3 + 6);
              v10 = 5;
              while (*(v5 - 1) < 0)
              {
                v7 = 0;
                ++v5;
                if (!--v10)
                {
                  return v7;
                }
              }
            }

            else
            {
              v5 = (v3 + 5);
            }
          }

          else
          {
            v5 = (v3 + 4);
          }
        }

        else
        {
          v5 = (v3 + 3);
        }
      }

      else
      {
        v5 = (v3 + 2);
      }
    }

    *a2 = v6;
    *(this + 1) = v5;
    return 1;
  }

  return v7;
}

uint64_t google::protobuf::io::CodedInputStream::PushLimit(google::protobuf::io::CodedInputStream *this, signed int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 2);
  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = v2 - v5 + *(this + 2) - v3;
  v7 = (v6 ^ 0x7FFFFFFFu) < a2 || a2 < 0;
  v8 = v6 + a2;
  if (v7)
  {
    v8 = 0x7FFFFFFF;
  }

  if (v4 < v8)
  {
    v8 = *(this + 10);
  }

  *(this + 10) = v8;
  v9 = v3 + v5;
  *(this + 2) = v9;
  if (*(this + 12) < v8)
  {
    v8 = *(this + 12);
  }

  v10 = __OFSUB__(v2, v8);
  v11 = v2 - v8;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v11 = 0;
  }

  else
  {
    *(this + 2) = v9 - v11;
  }

  *(this + 11) = v11;
  return v4;
}

BOOL google::protobuf::internal::WireFormatLite::ReadString(google::protobuf::io::CodedInputStream *this, std::string *a2)
{
  v10 = 0;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 < v4)
  {
    v6 = *v5;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = *v5;
      v7 = v5 + 1;
      *(this + 1) = v7;
      goto LABEL_7;
    }
  }

  v8 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
  result = 0;
  if (v8)
  {
    v6 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v7 = *(this + 1);
      v4 = *(this + 2);
LABEL_7:
      if (v6 > v4 - v7)
      {
        return google::protobuf::io::CodedInputStream::ReadStringFallback(this, a2, v6);
      }

      std::string::resize(a2, v6, 0);
      if (!v6)
      {
        return 1;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (!a2->__r_.__value_.__l.__size_)
        {
LABEL_15:
          a2 = 0;
          goto LABEL_16;
        }

        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else if (!*(&a2->__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

LABEL_16:
      memcpy(a2, *(this + 1), v6);
      *(this + 1) += v6;
      return 1;
    }
  }

  return result;
}

void google::protobuf::io::CodedOutputStream::~CodedOutputStream(google::protobuf::io::CodedOutputStream *this)
{
  if (*(this + 4) >= 1)
  {
    (*(**this + 24))();
  }
}

void google::protobuf::io::StringOutputStream::BackUp(google::protobuf::io::StringOutputStream *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 188);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = *(v5 + 23);
  }

  if (v7 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/zero_copy_stream_impl_lite.cc", 189);
    v8 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) <= (target_->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v5 = *(this + 1);
    LOBYTE(v6) = *(v5 + 23);
  }

  if ((v6 & 0x80) != 0)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = v6;
  }

  std::string::resize(v5, v6 - a2, 0);
}

void sub_214D5FAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::PopLimit(uint64_t this, int a2)
{
  *(this + 40) = a2;
  v2 = *(this + 48);
  v3 = *(this + 16) + *(this + 44);
  *(this + 16) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(this + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(this + 16) = v3 - v7;
  }

  *(this + 44) = v7;
  *(this + 36) = 0;
  return this;
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  if (*this)
  {
    google::protobuf::io::CodedInputStream::BackUpInputToCurrentPosition(this);
  }

  if (*(this + 13) == -2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 1, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/io/coded_stream.cc", 78);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "The total number of bytes read was ");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, *(this + 6));
    google::protobuf::internal::LogFinisher::operator=(&v4, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }
}

versioned_document::Version *versioned_document::Version::Version(versioned_document::Version *this, const versioned_document::Version *a2)
{
  *this = &unk_282709E80;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  versioned_document::Version::SharedCtor(this);
  versioned_document::Version::MergeFrom(this, a2);
  return this;
}

void sub_214D5FC54(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D5FD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *versioned_document::Version::MergeFrom(versioned_document::Version *this, const versioned_document::Version *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/versioned-document.pb.cc", 519);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v6;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 11);
    *(this + 8) |= 2u;
    *(this + 11) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = *(a2 + 6);
    *(this + 8) |= 4u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v9 = *(this + 6);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
  }

LABEL_14:
  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((this + 8), v14, v15);
}

void sub_214D5FEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void versioned_document::Version::~Version(void **this)
{
  *this = &unk_282709E80;
  versioned_document::Version::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  versioned_document::Version::~Version(this);

  JUMPOUT(0x216063B80);
}

void versioned_document::Version::SharedDtor(versioned_document::Version *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 6);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x216063B80](v1, 0x1012C40EC159624);
  }

  versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(this);
}

void versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto(versioned_document *this)
{
  v1 = versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&versioned_document::protobuf_AddDesc_versioned_2ddocument_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214D60020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const char *a3, const char *a4)
{
  if (a2 > 2006001)
  {
    v23 = 3;
    v24 = "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/stubs/common.cc";
    v25 = 61;
    memset(&v26, 0, sizeof(v26));
    std::string::append(&v26, "This program requires version ", 0x1EuLL);
    google::protobuf::internal::VersionString(a2, &v20);
    if ((v22 & 0x80u) == 0)
    {
      v7 = &v20;
    }

    else
    {
      v7 = v20;
    }

    if ((v22 & 0x80u) == 0)
    {
      v8 = v22;
    }

    else
    {
      v8 = v21;
    }

    std::string::append(&v26, v7, v8);
    std::string::append(&v26, " of the Protocol Buffer runtime library, but the installed version is ", 0x46uLL);
    google::protobuf::internal::VersionString(0x1E9BF1, &__p);
    if ((v19 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = v18;
    }

    std::string::append(&v26, p_p, v10);
    std::string::append(&v26, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ", 0xCDuLL);
    v11 = strlen(a3);
    std::string::append(&v26, a3, v11);
    std::string::append(&v26, ".)", 3uLL);
    google::protobuf::internal::LogMessage::Finish(&v23);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  if (this < 2006000)
  {
    v23 = 3;
    v24 = "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/stubs/common.cc";
    v25 = 72;
    memset(&v26, 0, sizeof(v26));
    std::string::append(&v26, "This program was compiled against version ", 0x2AuLL);
    google::protobuf::internal::VersionString(this, &v20);
    if ((v22 & 0x80u) == 0)
    {
      v12 = &v20;
    }

    else
    {
      v12 = v20;
    }

    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21;
    }

    std::string::append(&v26, v12, v13);
    std::string::append(&v26, " of the Protocol Buffer runtime library, which is not compatible with the installed version (", 0x5DuLL);
    google::protobuf::internal::VersionString(0x1E9BF1, &__p);
    if ((v19 & 0x80u) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    std::string::append(&v26, v14, v15);
    std::string::append(&v26, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ", 0xDCuLL);
    v16 = strlen(a3);
    std::string::append(&v26, a3, v16);
    std::string::append(&v26, ".)", 3uLL);
    google::protobuf::internal::LogMessage::Finish(&v23);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }
}

void sub_214D603E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

topotext::String *topotext::String::String(topotext::String *this)
{
  *(this + 1) = 0;
  *this = &unk_28270B548;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  topotext::String::SharedCtor(this);
  return this;
}

void sub_214D60504(_Unwind_Exception *a1)
{
  v6 = v3;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v6);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v2);
  if (v1[31] < 0)
  {
    operator delete(*v5);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::String::SharedCtor(topotext::String *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 9) = 0;
}

void sub_214D605F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::String::Clear(topotext::String *this)
{
  v2 = *(this + 8);
  if ((v2 & 5) != 0)
  {
    if (v2)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 5);
      if (v3 != google::protobuf::internal::empty_string_)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 32) & 4) != 0)
    {
      v4 = *(this + 9);
      if (v4)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4 + 40);
        *(v4 + 32) = 0;
        if (*(v4 + 31) < 0)
        {
          **(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        else
        {
          *(v4 + 8) = 0;
          *(v4 + 31) = 0;
        }
      }
    }
  }

  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 80);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 104);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::String::MergePartialFromCodedStream(topotext::String *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v58, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v57, v58);
  while (1)
  {
    while (1)
    {
LABEL_2:
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= 3)
      {
        break;
      }

      switch(v10)
      {
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_27;
          }

LABEL_56:
          *(this + 8) |= 4u;
          v25 = *(this + 9);
          if (!v25)
          {
            operator new();
          }

          v59 = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
            {
              goto LABEL_108;
            }
          }

          else
          {
            v59 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v27 = *(a2 + 14);
          v28 = *(a2 + 15);
          *(a2 + 14) = v27 + 1;
          if (v27 >= v28)
          {
            goto LABEL_108;
          }

          v29 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
          if (!topotext::VectorTimestamp::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
          {
            goto LABEL_108;
          }

          google::protobuf::io::CodedInputStream::PopLimit(a2, v29);
          v30 = *(a2 + 14);
          v22 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v22)
          {
            *(a2 + 14) = v31;
          }

          v32 = *(a2 + 1);
          if (v32 < *(a2 + 2) && *v32 == 42)
          {
            while (1)
            {
              *(a2 + 1) = v32 + 1;
LABEL_70:
              v33 = *(this + 23);
              v34 = *(this + 22);
              if (v34 >= v33)
              {
                if (v33 == *(this + 24))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 80, v33 + 1);
                }

                google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
              }

              v35 = *(this + 10);
              *(this + 22) = v34 + 1;
              v36 = *(v35 + 8 * v34);
              v59 = 0;
              v37 = *(a2 + 1);
              if (v37 >= *(a2 + 2) || *v37 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v59 = *v37;
                *(a2 + 1) = v37 + 1;
              }

              v38 = *(a2 + 14);
              v39 = *(a2 + 15);
              *(a2 + 14) = v38 + 1;
              if (v38 >= v39)
              {
                goto LABEL_108;
              }

              v40 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
              if (!topotext::AttributeRun::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
              {
                goto LABEL_108;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v40);
              v41 = *(a2 + 14);
              v22 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v22)
              {
                *(a2 + 14) = v42;
              }

              v32 = *(a2 + 1);
              if (v32 >= *(a2 + 2))
              {
                break;
              }

              v43 = *v32;
              if (v43 != 42)
              {
                if (v43 == 50)
                {
                  goto LABEL_87;
                }

                goto LABEL_2;
              }
            }
          }

          break;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_27;
          }

          goto LABEL_70;
        case 6u:
          if (v7 == 50)
          {
            while (1)
            {
              v44 = *(this + 29);
              v45 = *(this + 28);
              if (v45 >= v44)
              {
                if (v44 == *(this + 30))
                {
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 104, v44 + 1);
                }

                google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
              }

              v46 = *(this + 13);
              *(this + 28) = v45 + 1;
              v47 = *(v46 + 8 * v45);
              v59 = 0;
              v48 = *(a2 + 1);
              if (v48 >= *(a2 + 2) || *v48 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v59 = *v48;
                *(a2 + 1) = v48 + 1;
              }

              v49 = *(a2 + 14);
              v50 = *(a2 + 15);
              *(a2 + 14) = v49 + 1;
              if (v49 >= v50 || (v51 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59), !topotext::Attachment::MergePartialFromCodedStream(v47, a2)) || *(a2 + 36) != 1)
              {
LABEL_108:
                v55 = 0;
                goto LABEL_110;
              }

              google::protobuf::io::CodedInputStream::PopLimit(a2, v51);
              v52 = *(a2 + 14);
              v22 = __OFSUB__(v52, 1);
              v53 = v52 - 1;
              if (v53 < 0 == v22)
              {
                *(a2 + 14) = v53;
              }

              v32 = *(a2 + 1);
              v54 = *(a2 + 2);
              if (v32 >= v54 || *v32 != 50)
              {
                break;
              }

LABEL_87:
              *(a2 + 1) = v32 + 1;
            }

            if (v32 == v54 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v55 = 1;
              *(a2 + 36) = 1;
              goto LABEL_110;
            }
          }

          else
          {
LABEL_27:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_109;
            }

LABEL_29:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v57, v4))
            {
              goto LABEL_108;
            }
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 2)
    {
      break;
    }

    if (v7 != 18)
    {
      goto LABEL_27;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v11 = *(this + 5);
    if (v11 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v11))
    {
      goto LABEL_108;
    }

    v12 = *(a2 + 1);
    if (v12 < *(a2 + 2) && *v12 == 26)
    {
      while (1)
      {
        *(a2 + 1) = v12 + 1;
LABEL_38:
        v13 = *(this + 15);
        v14 = *(this + 14);
        if (v14 >= v13)
        {
          if (v13 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v13 + 1);
          }

          operator new();
        }

        v15 = *(this + 6);
        *(this + 14) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v59 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v59))
          {
            goto LABEL_108;
          }
        }

        else
        {
          v59 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          goto LABEL_108;
        }

        v20 = google::protobuf::io::CodedInputStream::PushLimit(a2, v59);
        if (!topotext::Substring::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_108;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v20);
        v21 = *(a2 + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(a2 + 14) = v23;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v24 = *v12;
        if (v24 != 26)
        {
          if (v24 != 34)
          {
            goto LABEL_2;
          }

          *(a2 + 1) = v12 + 1;
          goto LABEL_56;
        }
      }
    }
  }

  if (v10 == 3)
  {
    if (v7 != 26)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_109:
  v55 = 1;
LABEL_110:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v57);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v58);
  return v55;
}

void sub_214D60DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Substring::MergePartialFromCodedStream(topotext::Substring *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v52, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v51, v52);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        break;
      }

      switch(v10)
      {
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_29;
          }

          v13 = *(this + 8);
          goto LABEL_56;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_29;
          }

          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
LABEL_70:
          v55[0].__r_.__value_.__r.__words[0] = 0;
          if (v15 >= v14 || (v36 = *v15, (v36 & 0x8000000000000000) != 0))
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v55))
            {
              goto LABEL_101;
            }

            v36 = v55[0].__r_.__value_.__r.__words[0];
            v37 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            v37 = v15 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 60) = v36 != 0;
          *(this + 8) |= 8u;
          if (v37 < v14 && *v37 == 40)
          {
            do
            {
              v18 = v37 + 1;
              *(a2 + 1) = v18;
LABEL_78:
              v53 = 0;
              if (v18 >= v14 || *v18 < 0)
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                {
                  goto LABEL_101;
                }
              }

              else
              {
                v53 = *v18;
                *(a2 + 1) = v18 + 1;
              }

              v38 = *(this + 18);
              if (v38 == *(this + 19))
              {
                google::protobuf::RepeatedField<unsigned int>::Reserve(this + 64, v38 + 1);
                v38 = *(this + 18);
              }

              v39 = v53;
              v40 = *(this + 8);
              *(this + 18) = v38 + 1;
              *(v40 + 4 * v38) = v39;
              v41 = *(this + 19) - *(this + 18);
              if (v41 >= 1)
              {
                v42 = v41 + 1;
                do
                {
                  v43 = *(a2 + 1);
                  v44 = *(a2 + 2);
                  if (v43 >= v44 || *v43 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v43 + 1;
                  if ((v43 + 1) >= v44 || v43[1] < 0)
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
                    {
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v53 = v43[1];
                    *(a2 + 1) = v43 + 2;
                  }

                  v45 = *(this + 18);
                  if (v45 >= *(this + 19))
                  {
                    google::protobuf::internal::LogMessage::LogMessage(v55, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 642);
                    v46 = google::protobuf::internal::LogMessage::operator<<(v55, "CHECK failed: (size()) < (Capacity()): ");
                    google::protobuf::internal::LogFinisher::operator=(&v54, v46);
                    google::protobuf::internal::LogMessage::~LogMessage(&v55[0].__r_.__value_.__l.__data_);
                    v45 = *(this + 18);
                  }

                  v47 = v53;
                  v48 = *(this + 8);
                  *(this + 18) = v45 + 1;
                  *(v48 + 4 * v45) = v47;
                  --v42;
                }

                while (v42 > 1);
              }

LABEL_95:
              v37 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            while (v37 < v14 && *v37 == 40);
            if (v37 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v49 = 1;
              *(a2 + 36) = 1;
              goto LABEL_103;
            }
          }

          break;
        case 5u:
          if (v7 == 40)
          {
            v18 = *(a2 + 1);
            v14 = *(a2 + 2);
            goto LABEL_78;
          }

          if (v7 == 42)
          {
            if (google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64))
            {
              goto LABEL_95;
            }

LABEL_101:
            v49 = 0;
            goto LABEL_103;
          }

LABEL_29:
          if (!v7 || (v7 & 7) == 4)
          {
            goto LABEL_102;
          }

LABEL_31:
          if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v51, v4))
          {
            goto LABEL_101;
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if (v7 != 10)
    {
      goto LABEL_29;
    }

    *(this + 8) |= 1u;
    v16 = *(this + 5);
    if (!v16)
    {
      operator new();
    }

    LODWORD(v55[0].__r_.__value_.__l.__data_) = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
      {
        goto LABEL_101;
      }
    }

    else
    {
      LODWORD(v55[0].__r_.__value_.__l.__data_) = *v17;
      *(a2 + 1) = v17 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      goto LABEL_101;
    }

    v21 = google::protobuf::io::CodedInputStream::PushLimit(a2, v55[0].__r_.__value_.__l.__data_);
    if (!topotext::CharID::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
    {
      goto LABEL_101;
    }

    google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v25 < v11 && *v25 == 16)
    {
      v12 = v25 + 1;
      *(a2 + 1) = v12;
LABEL_48:
      if (v12 >= v11 || (v26 = *v12, v26 < 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14))
        {
          goto LABEL_101;
        }

        v27 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        *(this + 14) = v26;
        v27 = v12 + 1;
        *(a2 + 1) = v27;
      }

      v13 = *(this + 8) | 2;
      *(this + 8) = v13;
      if (v27 < v11 && *v27 == 26)
      {
        *(a2 + 1) = v27 + 1;
LABEL_56:
        *(this + 8) = v13 | 4;
        v28 = *(this + 6);
        if (!v28)
        {
          operator new();
        }

        LODWORD(v55[0].__r_.__value_.__l.__data_) = 0;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v55))
          {
            goto LABEL_101;
          }
        }

        else
        {
          LODWORD(v55[0].__r_.__value_.__l.__data_) = *v29;
          *(a2 + 1) = v29 + 1;
        }

        v30 = *(a2 + 14);
        v31 = *(a2 + 15);
        *(a2 + 14) = v30 + 1;
        if (v30 >= v31)
        {
          goto LABEL_101;
        }

        v32 = google::protobuf::io::CodedInputStream::PushLimit(a2, v55[0].__r_.__value_.__l.__data_);
        if (!topotext::CharID::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_101;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
        v33 = *(a2 + 14);
        v23 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (v34 < 0 == v23)
        {
          *(a2 + 14) = v34;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v35 < v14 && *v35 == 32)
        {
          v15 = v35 + 1;
          *(a2 + 1) = v15;
          goto LABEL_70;
        }
      }
    }
  }

  if (v10 == 2)
  {
    if (v7 != 16)
    {
      goto LABEL_29;
    }

    v12 = *(a2 + 1);
    v11 = *(a2 + 2);
    goto LABEL_48;
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_102:
  v49 = 1;
LABEL_103:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v51);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v52);
  return v49;
}

void sub_214D61430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::CharID::MergePartialFromCodedStream(topotext::CharID *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x80000000) == 0)
      {
        *(this + 11) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
    {
      break;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_214D6165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Reserve(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    *(result + 12) = v3;
    operator new[]();
  }

  return result;
}

uint64_t topotext::VectorTimestamp::MergePartialFromCodedStream(topotext::VectorTimestamp *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v26, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, v26);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          break;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 != 10)
      {
        break;
      }

      while (1)
      {
        v9 = *(this + 13);
        v10 = *(this + 12);
        if (v10 >= v9)
        {
          if (v9 == *(this + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
        }

        v11 = *(this + 5);
        *(this + 12) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v27 = 0;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v27 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v14 = *(a2 + 14);
        v15 = *(a2 + 15);
        *(a2 + 14) = v14 + 1;
        if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v27), !topotext::VectorTimestamp_Clock::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_38;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
        v17 = *(a2 + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(a2 + 14) = v19;
        }

        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v20 >= v21 || *v20 != 10)
        {
          break;
        }

        *(a2 + 1) = v20 + 1;
      }

      if (v20 == v21 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v23 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }

    if (v7)
    {
      v22 = (v7 & 7) == 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22;
  }

  while (!v22 && google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v25, v4));
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v25);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v26);
  return v23;
}

void sub_214D6196C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 - v2;
  if (v1 - v2 > 9)
  {
    goto LABEL_4;
  }

  if (v3 >= 1)
  {
    if ((*(v1 - 1) & 0x80000000) == 0)
    {
LABEL_4:
      v4 = (v2 + 1);
      v5 = *v2;
      if (*v2 < 0)
      {
        v5 = v5 + (v2[1] << 7) - 128;
        if (v2[1] < 0)
        {
          v5 = v5 + (v2[2] << 14) - 0x4000;
          if (v2[2] < 0)
          {
            v5 = v5 + (v2[3] << 21) - 0x200000;
            if (v2[3] < 0)
            {
              v10 = v2[4];
              v5 = (v5 + (v10 << 28) - 0x10000000);
              if (v10 < 0)
              {
                v4 = (v2 + 6);
                v11 = 5;
                v9 = 0;
                while (*(v4 - 1) < 0)
                {
                  ++v4;
                  if (!--v11)
                  {
                    return v9;
                  }
                }
              }

              else
              {
                v4 = (v2 + 5);
              }
            }

            else
            {
              v4 = (v2 + 4);
            }
          }

          else
          {
            v4 = (v2 + 3);
          }
        }

        else
        {
          v4 = (v2 + 2);
        }
      }

      *(this + 1) = v4;
      return v5;
    }

    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v3)
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v7 = *(this + 11);
  v8 = *(this + 6);
  if (v7 <= 0 && v8 != *(this + 10))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  if (v8 - v7 >= *(this + 12))
  {
    return google::protobuf::io::CodedInputStream::ReadTagSlow(this);
  }

  v9 = 0;
  *(this + 36) = 1;
  return v9;
}

topotext::VectorTimestamp_Clock *topotext::VectorTimestamp_Clock::VectorTimestamp_Clock(topotext::VectorTimestamp_Clock *this)
{
  *this = &unk_28270B638;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  topotext::VectorTimestamp_Clock::SharedCtor(this);
  return this;
}

void sub_214D61B74(_Unwind_Exception *a1)
{
  v4 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4);
  if (v1[31] < 0)
  {
    operator delete(*v3);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock::MergePartialFromCodedStream(topotext::VectorTimestamp_Clock *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v27, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v26, v27);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_48;
        }

        goto LABEL_20;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_16:
      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_48:
        v24 = 1;
        goto LABEL_49;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v26, v4))
      {
        goto LABEL_47;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_23;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
      goto LABEL_47;
    }

    v10 = *(a2 + 1);
    if (v10 < *(a2 + 2) && *v10 == 18)
    {
      do
      {
        *(a2 + 1) = v10 + 1;
LABEL_26:
        v12 = *(this + 15);
        v13 = *(this + 14);
        if (v13 >= v12)
        {
          if (v12 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v12 + 1);
          }

          operator new();
        }

        v14 = *(this + 6);
        *(this + 14) = v13 + 1;
        v15 = *(v14 + 8 * v13);
        v28 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v28 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18 || (v19 = google::protobuf::io::CodedInputStream::PushLimit(a2, v28), !topotext::VectorTimestamp_Clock_ReplicaClock::MergePartialFromCodedStream(v15, a2)) || *(a2 + 36) != 1)
        {
LABEL_47:
          v24 = 0;
          goto LABEL_49;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v10 = *(a2 + 1);
        v23 = *(a2 + 2);
      }

      while (v10 < v23 && *v10 == 18);
      if (v10 == v23 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v24 = 1;
  *(a2 + 36) = 1;
LABEL_49:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v26);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v27);
  return v24;
}

void sub_214D61F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

void topotext::VectorTimestamp_Clock::SharedCtor(topotext::VectorTimestamp_Clock *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214D61FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::MergePartialFromCodedStream(topotext::VectorTimestamp_Clock_ReplicaClock *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v20, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v19, v20);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_19;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 8) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_12:
        if (v7)
        {
          v13 = (v7 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_37:
          v17 = 1;
          goto LABEL_39;
        }

LABEL_16:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v19, v4))
        {
          goto LABEL_38;
        }
      }
    }

    if (v7 != 16)
    {
LABEL_19:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

    v14 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_28:
    if (v14 < v9)
    {
      v15 = *v14;
      if ((v15 & 0x80000000) == 0)
      {
        *(this + 11) = v15;
        v16 = v14 + 1;
        *(a2 + 1) = v16;
        goto LABEL_33;
      }
    }

    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11))
    {
      break;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
LABEL_33:
    *(this + 8) |= 2u;
    if (v16 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v17 = 1;
      *(a2 + 36) = 1;
      goto LABEL_39;
    }
  }

LABEL_38:
  v17 = 0;
LABEL_39:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v20);
  return v17;
}

void sub_214D621E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

topotext::AttributeRun *topotext::AttributeRun::AttributeRun(topotext::AttributeRun *this)
{
  *this = &unk_28270B908;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::AttributeRun::SharedCtor(this);
  return this;
}

void sub_214D622C8(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

uint64_t topotext::AttributeRun::MergePartialFromCodedStream(topotext::AttributeRun *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v94, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v93, v94);
  while (2)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v5 < v6)
      {
        v7 = *v5;
        if (*v5 >= 1)
        {
          *(a2 + 8) = v7;
          v8 = (v5 + 1);
          goto LABEL_8;
        }

        if ((v5 + 1) < v6)
        {
          v9 = v5[1];
          if ((v7 & ~v9) >= 0x80)
          {
            break;
          }
        }
      }

      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v10 = TagFallback | ((TagFallback - 1 < 0x3FFF) << 32);
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v10)
      {
        v11 = (v10 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
LABEL_204:
        v91 = 1;
        goto LABEL_205;
      }

LABEL_50:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v10, v93, v4))
      {
        goto LABEL_203;
      }
    }

    v7 = (v7 + (v9 << 7) - 128);
    *(a2 + 8) = v7;
    v8 = (v5 + 2);
LABEL_8:
    *(a2 + 1) = v8;
    v10 = v7 | 0x100000000;
LABEL_16:
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 8)
        {
          goto LABEL_48;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v14 >= v13 || (v15 = *v14, v15 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12))
          {
            goto LABEL_203;
          }

          v16 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        v23 = *(this + 8) | 1;
        *(this + 8) = v23;
        if (v16 >= v13 || *v16 != 18)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_57:
        *(this + 8) = v23 | 2;
        v32 = *(this + 5);
        if (!v32)
        {
          operator new();
        }

        v95 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }
        }

        else
        {
          v95 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          goto LABEL_203;
        }

        v36 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
        if (!topotext::ParagraphStyle::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_203;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
        v37 = *(a2 + 14);
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v39 < 0 == v38)
        {
          *(a2 + 14) = v39;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 26)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_71:
        *(this + 8) |= 4u;
        v41 = *(this + 7);
        if (!v41)
        {
          operator new();
        }

        v95 = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }
        }

        else
        {
          v95 = *v42;
          *(a2 + 1) = v42 + 1;
        }

        v43 = *(a2 + 14);
        v44 = *(a2 + 15);
        *(a2 + 14) = v43 + 1;
        if (v43 >= v44)
        {
          goto LABEL_203;
        }

        v45 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
        if (!topotext::Font::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_203;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v45);
        v46 = *(a2 + 14);
        v38 = __OFSUB__(v46, 1);
        v47 = v46 - 1;
        if (v47 < 0 == v38)
        {
          *(a2 + 14) = v47;
        }

        v48 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v48 >= v20 || *v48 != 40)
        {
          continue;
        }

        v28 = v48 + 1;
        *(a2 + 1) = v28;
LABEL_85:
        if (v28 >= v20 || (v49 = *v28, v49 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13))
          {
            goto LABEL_203;
          }

          v50 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v49;
          v50 = v28 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 8) |= 8u;
        if (v50 >= v20 || *v50 != 48)
        {
          continue;
        }

        v29 = v50 + 1;
        *(a2 + 1) = v29;
LABEL_93:
        if (v29 >= v20 || (v51 = *v29, v51 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
          {
            goto LABEL_203;
          }

          v52 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v51;
          v52 = v29 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 8) |= 0x10u;
        if (v52 >= v20 || *v52 != 56)
        {
          continue;
        }

        v21 = v52 + 1;
        *(a2 + 1) = v21;
LABEL_101:
        if (v21 >= v20 || (v53 = *v21, v53 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17))
          {
            goto LABEL_203;
          }

          v54 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v53;
          v54 = v21 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 8) |= 0x20u;
        if (v54 >= v20 || *v54 != 64)
        {
          continue;
        }

        v24 = v54 + 1;
        *(a2 + 1) = v24;
LABEL_109:
        v95 = 0;
        if (v24 >= v20 || (v55 = *v24, (v55 & 0x80000000) != 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }

          v55 = v95;
          v56 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v56 = v24 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 20) = v55;
        v25 = *(this + 8) | 0x40;
        *(this + 8) = v25;
        if (v56 >= v20 || *v56 != 74)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_117:
        *(this + 8) = v25 | 0x80;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v57 = *(this + 9);
        if (v57 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v57))
        {
          goto LABEL_203;
        }

        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 != 82)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_124:
        *(this + 8) |= 0x100u;
        v59 = *(this + 11);
        if (!v59)
        {
          operator new();
        }

        v95 = 0;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }
        }

        else
        {
          v95 = *v60;
          *(a2 + 1) = v60 + 1;
        }

        v61 = *(a2 + 14);
        v62 = *(a2 + 15);
        *(a2 + 14) = v61 + 1;
        if (v61 >= v62)
        {
          goto LABEL_203;
        }

        v63 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
        if (!topotext::Color::MergePartialFromCodedStream(v59, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_203;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v63);
        v64 = *(a2 + 14);
        v38 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v38)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v66 >= v30 || *v66 != 88)
        {
          continue;
        }

        v31 = v66 + 1;
        *(a2 + 1) = v31;
LABEL_138:
        v95 = 0;
        if (v31 >= v30 || (v67 = *v31, (v67 & 0x80000000) != 0))
        {
          if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95) & 1) == 0)
          {
            goto LABEL_203;
          }

          v67 = v95;
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v67 > 4)
        {
          google::protobuf::io::CodedOutputStream::WriteVarint32(v93, v10);
          google::protobuf::io::CodedOutputStream::WriteVarint32(v93, v67);
        }

        else
        {
          *(this + 8) |= 0x200u;
          *(this + 21) = v67;
        }

        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 != 98)
        {
          continue;
        }

        *(a2 + 1) = v68 + 1;
LABEL_149:
        *(this + 8) |= 0x400u;
        v69 = *(this + 12);
        if (!v69)
        {
          operator new();
        }

        v95 = 0;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }
        }

        else
        {
          v95 = *v70;
          *(a2 + 1) = v70 + 1;
        }

        v71 = *(a2 + 14);
        v72 = *(a2 + 15);
        *(a2 + 14) = v71 + 1;
        if (v71 >= v72)
        {
          goto LABEL_203;
        }

        v73 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
        if (!topotext::AttachmentInfo::MergePartialFromCodedStream(v69, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_203;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v73);
        v74 = *(a2 + 14);
        v38 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v38)
        {
          *(a2 + 14) = v75;
        }

        v76 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v76 >= v18 || *v76 != 104)
        {
          continue;
        }

        v22 = v76 + 1;
        *(a2 + 1) = v22;
LABEL_163:
        if (v22 >= v18 || (v77 = *v22, v77 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 13))
          {
            goto LABEL_203;
          }

          v78 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v77;
          v78 = v22 + 1;
          *(a2 + 1) = v78;
        }

        *(this + 8) |= 0x800u;
        if (v78 >= v18 || *v78 != 112)
        {
          continue;
        }

        v19 = v78 + 1;
        *(a2 + 1) = v19;
LABEL_171:
        if (v19 >= v18 || (v79 = *v19, v79 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30))
          {
            goto LABEL_203;
          }

          v80 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v79;
          v80 = v19 + 1;
          *(a2 + 1) = v80;
        }

        v17 = *(this + 8) | 0x1000;
        *(this + 8) = v17;
        if (v80 >= v18 || *v80 != 122)
        {
          continue;
        }

        *(a2 + 1) = v80 + 1;
LABEL_179:
        *(this + 8) = v17 | 0x2000;
        v81 = *(this + 14);
        if (!v81)
        {
          operator new();
        }

        v95 = 0;
        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v95))
          {
            goto LABEL_203;
          }
        }

        else
        {
          v95 = *v82;
          *(a2 + 1) = v82 + 1;
        }

        v83 = *(a2 + 14);
        v84 = *(a2 + 15);
        *(a2 + 14) = v83 + 1;
        if (v83 >= v84)
        {
          goto LABEL_203;
        }

        v85 = google::protobuf::io::CodedInputStream::PushLimit(a2, v95);
        if (!topotext::AttachmentInfo::MergePartialFromCodedStream(v81, a2) || *(a2 + 36) != 1)
        {
          goto LABEL_203;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v85);
        v86 = *(a2 + 14);
        v38 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        if (v87 < 0 == v38)
        {
          *(a2 + 14) = v87;
        }

        v88 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v26 - v88 <= 1 || *v88 != 128 || v88[1] != 1)
        {
          continue;
        }

        v27 = (v88 + 2);
        *(a2 + 1) = v27;
        goto LABEL_194;
      case 2u:
        if (v10 != 18)
        {
          goto LABEL_48;
        }

        v23 = *(this + 8);
        goto LABEL_57;
      case 3u:
        if (v10 == 26)
        {
          goto LABEL_71;
        }

        goto LABEL_48;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_48;
        }

        v28 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_85;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_48;
        }

        v29 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_93;
      case 7u:
        if (v10 != 56)
        {
          goto LABEL_48;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_101;
      case 8u:
        if (v10 != 64)
        {
          goto LABEL_48;
        }

        v24 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_109;
      case 9u:
        if (v10 != 74)
        {
          goto LABEL_48;
        }

        v25 = *(this + 8);
        goto LABEL_117;
      case 0xAu:
        if (v10 != 82)
        {
          goto LABEL_48;
        }

        goto LABEL_124;
      case 0xBu:
        if (v10 != 88)
        {
          goto LABEL_48;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_138;
      case 0xCu:
        if (v10 == 98)
        {
          goto LABEL_149;
        }

        goto LABEL_48;
      case 0xDu:
        if (v10 != 104)
        {
          goto LABEL_48;
        }

        v22 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_163;
      case 0xEu:
        if (v10 != 112)
        {
          goto LABEL_48;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_171;
      case 0xFu:
        if (v10 != 122)
        {
          goto LABEL_48;
        }

        v17 = *(this + 8);
        goto LABEL_179;
      case 0x10u:
        if (v10 != 128)
        {
LABEL_48:
          if (!v10 || (v10 & 7) == 4)
          {
            goto LABEL_204;
          }

          goto LABEL_50;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
LABEL_194:
        if (v27 >= v26 || (v89 = *v27, v89 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31))
          {
LABEL_203:
            v91 = 0;
            goto LABEL_205;
          }

          v90 = *(a2 + 1);
          v26 = *(a2 + 2);
        }

        else
        {
          *(this + 31) = v89;
          v90 = v27 + 1;
          *(a2 + 1) = v90;
        }

        *(this + 8) |= 0x4000u;
        if (v90 != v26 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        v91 = 1;
        *(a2 + 36) = 1;
LABEL_205:
        google::protobuf::io::CodedOutputStream::~CodedOutputStream(v93);
        google::protobuf::io::StringOutputStream::~StringOutputStream(v94);
        return v91;
      default:
        goto LABEL_9;
    }
  }
}

void sub_214D62E30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C40F489674BLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

double topotext::AttributeRun::SharedCtor(topotext::AttributeRun *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v5[0] = &unk_28270A628;
    v5[1] = google::protobuf::internal::InitEmptyString;
    v6 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v5);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 20) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 17) = 0;
  *(this + 9) = v3;
  *(this + 8) = 0;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 7) = 0u;
  return result;
}

void sub_214D62FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::ParagraphStyle::MergePartialFromCodedStream(topotext::ParagraphStyle *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v51, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v50, v51);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        break;
      }

      if (v7 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v7 != 24)
          {
            goto LABEL_43;
          }

          v22 = *(a2 + 1);
          v21 = *(a2 + 2);
          goto LABEL_64;
        }

        if (v10 != 4)
        {
          goto LABEL_6;
        }

        if (v7 == 32)
        {
          v15 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_75;
        }

        goto LABEL_43;
      }

      if (v10 == 1)
      {
        if (v7 != 8)
        {
          goto LABEL_43;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v18 >= v12 || (v19 = *v18, v19 < 0))
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10))
          {
            goto LABEL_129;
          }

          v20 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v19;
          v20 = v18 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 8) |= 1u;
        if (v20 < v12 && *v20 == 16)
        {
          v13 = v20 + 1;
          *(a2 + 1) = v13;
LABEL_53:
          v52 = 0;
          if (v13 >= v12 || (v26 = *v13, (v26 & 0x80000000) != 0))
          {
            if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52) & 1) == 0)
            {
              goto LABEL_129;
            }

            v26 = v52;
          }

          else
          {
            *(a2 + 1) = v13 + 1;
          }

          if (v26 > 4)
          {
            google::protobuf::io::CodedOutputStream::WriteVarint32(v50, v7);
            google::protobuf::io::CodedOutputStream::WriteVarint32(v50, v26);
          }

          else
          {
            *(this + 8) |= 2u;
            *(this + 11) = v26;
          }

          v27 = *(a2 + 1);
          v21 = *(a2 + 2);
          if (v27 < v21 && *v27 == 24)
          {
            v22 = v27 + 1;
            *(a2 + 1) = v22;
LABEL_64:
            v52 = 0;
            if (v22 >= v21 || (v28 = *v22, (v28 & 0x80000000) != 0))
            {
              if ((google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52) & 1) == 0)
              {
                goto LABEL_129;
              }

              v28 = v52;
            }

            else
            {
              *(a2 + 1) = v22 + 1;
            }

            if (v28 > 4)
            {
              google::protobuf::io::CodedOutputStream::WriteVarint32(v50, v7);
              google::protobuf::io::CodedOutputStream::WriteVarint32(v50, v28);
            }

            else
            {
              *(this + 8) |= 4u;
              *(this + 12) = v28;
            }

            v29 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v29 < v14 && *v29 == 32)
            {
              v15 = v29 + 1;
              *(a2 + 1) = v15;
LABEL_75:
              v52 = 0;
              if (v15 >= v14 || (v30 = *v15, (v30 & 0x80000000) != 0))
              {
                if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
                {
                  goto LABEL_129;
                }

                v30 = v52;
                v31 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                v31 = v15 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 13) = v30;
              v24 = *(this + 8) | 8;
              *(this + 8) = v24;
              if (v31 < v14 && *v31 == 42)
              {
                *(a2 + 1) = v31 + 1;
LABEL_83:
                *(this + 8) = v24 | 0x10;
                v32 = *(this + 7);
                if (!v32)
                {
                  operator new();
                }

                v52 = 0;
                v33 = *(a2 + 1);
                if (v33 >= *(a2 + 2) || *v33 < 0)
                {
                  if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
                  {
                    goto LABEL_129;
                  }
                }

                else
                {
                  v52 = *v33;
                  *(a2 + 1) = v33 + 1;
                }

                v34 = *(a2 + 14);
                v35 = *(a2 + 15);
                *(a2 + 14) = v34 + 1;
                if (v34 >= v35 || (v36 = google::protobuf::io::CodedInputStream::PushLimit(a2, v52), !topotext::Todo::MergePartialFromCodedStream(v32, a2)) || *(a2 + 36) != 1)
                {
LABEL_129:
                  v48 = 0;
                  goto LABEL_131;
                }

                google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
                v37 = *(a2 + 14);
                v38 = __OFSUB__(v37, 1);
                v39 = v37 - 1;
                if (v39 < 0 == v38)
                {
                  *(a2 + 14) = v39;
                }

                v40 = *(a2 + 1);
                v16 = *(a2 + 2);
                if (v40 < v16 && *v40 == 48)
                {
                  v17 = v40 + 1;
                  *(a2 + 1) = v17;
LABEL_97:
                  if (v17 >= v16 || (v41 = *v17, v41 < 0))
                  {
                    if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16))
                    {
                      goto LABEL_129;
                    }

                    v42 = *(a2 + 1);
                    v16 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 16) = v41;
                    v42 = v17 + 1;
                    *(a2 + 1) = v42;
                  }

                  *(this + 8) |= 0x20u;
                  if (v42 < v16 && *v42 == 56)
                  {
                    v23 = v42 + 1;
                    *(a2 + 1) = v23;
LABEL_105:
                    if (v23 >= v16 || (v43 = *v23, v43 < 0))
                    {
                      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17))
                      {
                        goto LABEL_129;
                      }

                      v44 = *(a2 + 1);
                      v16 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 17) = v43;
                      v44 = v23 + 1;
                      *(a2 + 1) = v44;
                    }

                    *(this + 8) |= 0x40u;
                    if (v44 < v16 && *v44 == 64)
                    {
                      v25 = v44 + 1;
                      *(a2 + 1) = v25;
                      goto LABEL_113;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_6;
        }

        if (v7 == 16)
        {
          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_53;
        }

LABEL_43:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_130;
        }

LABEL_45:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v50, v4))
        {
          goto LABEL_129;
        }
      }
    }

    if (v7 >> 3 <= 6)
    {
      break;
    }

    if (v10 == 7)
    {
      if (v7 != 56)
      {
        goto LABEL_43;
      }

      v23 = *(a2 + 1);
      v16 = *(a2 + 2);
      goto LABEL_105;
    }

    if (v10 != 8)
    {
      if (v10 != 9)
      {
        goto LABEL_6;
      }

      if (v7 == 74)
      {
        v11 = *(this + 8);
        goto LABEL_121;
      }

      goto LABEL_43;
    }

    if (v7 != 64)
    {
      goto LABEL_43;
    }

    v25 = *(a2 + 1);
    v16 = *(a2 + 2);
LABEL_113:
    if (v25 >= v16 || (v45 = *v25, v45 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20))
      {
        goto LABEL_129;
      }

      v46 = *(a2 + 1);
      v16 = *(a2 + 2);
    }

    else
    {
      *(this + 20) = v45;
      v46 = v25 + 1;
      *(a2 + 1) = v46;
    }

    v11 = *(this + 8) | 0x80;
    *(this + 8) = v11;
    if (v46 < v16 && *v46 == 74)
    {
      *(a2 + 1) = v46 + 1;
LABEL_121:
      *(this + 8) = v11 | 0x100;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v47 = *(this + 9);
      if (v47 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v47))
      {
        goto LABEL_129;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v48 = 1;
        *(a2 + 36) = 1;
        goto LABEL_131;
      }
    }
  }

  if (v10 == 5)
  {
    if (v7 != 42)
    {
      goto LABEL_43;
    }

    v24 = *(this + 8);
    goto LABEL_83;
  }

  if (v10 == 6)
  {
    if (v7 != 48)
    {
      goto LABEL_43;
    }

    v17 = *(a2 + 1);
    v16 = *(a2 + 2);
    goto LABEL_97;
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_45;
  }

LABEL_130:
  v48 = 1;
LABEL_131:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v50);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v51);
  return v48;
}

void sub_214D6364C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x10B3C40417120EDLL);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

topotext::ParagraphStyle *topotext::ParagraphStyle::ParagraphStyle(topotext::ParagraphStyle *this)
{
  *this = &unk_28270B9F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::ParagraphStyle::SharedCtor(this);
  return this;
}

void sub_214D636F4(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

double topotext::ParagraphStyle::SharedCtor(topotext::ParagraphStyle *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v5[0] = &unk_28270A628;
    v5[1] = google::protobuf::internal::InitEmptyString;
    v6 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v5);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 20) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 17) = 0;
  *(this + 9) = v3;
  *(this + 8) = 0;
  return result;
}

void sub_214D637D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::AttachmentInfo::MergePartialFromCodedStream(topotext::AttachmentInfo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_37;
        }

        *(this + 8) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_59;
        }

        v11 = *(this + 5);
        if (v11 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v11))
        {
          goto LABEL_56;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
LABEL_29:
          *(this + 8) |= 2u;
          if (!google::protobuf::internal::empty_string_)
          {
            goto LABEL_59;
          }

          v13 = *(this + 6);
          if (v13 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
          {
            goto LABEL_56;
          }

          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 26)
          {
            *(a2 + 1) = v14 + 1;
LABEL_41:
            *(this + 8) |= 4u;
            if (!google::protobuf::internal::empty_string_)
            {
              goto LABEL_59;
            }

            v15 = *(this + 7);
            if (v15 == google::protobuf::internal::empty_string_)
            {
              operator new();
            }

            if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
            {
              goto LABEL_56;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 34)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 18)
        {
          goto LABEL_29;
        }

LABEL_37:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_57;
        }

LABEL_39:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
        {
          goto LABEL_56;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 26)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 34)
    {
      goto LABEL_37;
    }

LABEL_48:
    *(this + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
LABEL_59:
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v17 = *(this + 8);
    if (v17 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
    {
LABEL_56:
      v18 = 0;
      goto LABEL_58;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v18 = 1;
      *(a2 + 36) = 1;
      goto LABEL_58;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_39;
  }

LABEL_57:
  v18 = 1;
LABEL_58:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v18;
}

void sub_214D63B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

topotext::AttachmentInfo *topotext::AttachmentInfo::AttachmentInfo(topotext::AttachmentInfo *this)
{
  *this = &unk_28270BA70;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::AttachmentInfo::SharedCtor(this);
  return this;
}

void sub_214D63BAC(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::AttachmentInfo::SharedCtor(topotext::AttachmentInfo *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 4) = 0;
}

void sub_214D63C7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(google::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 - v2 <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    return google::protobuf::io::CodedInputStream::ReadVarint64Slow(this, a2);
  }

  v4 = v2 + 1;
  v5 = *v2;
  if ((*v2 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_25:
    *(this + 1) = &v2[v4 - v2];
    *a2 = v5 | (v6 << 28) | (v7 << 56);
    return 1;
  }

  v5 = v5 + (v2[1] << 7) - 128;
  if ((v2[1] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 2;
    goto LABEL_25;
  }

  v5 = v5 + (v2[2] << 14) - 0x4000;
  if ((v2[2] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 3;
    goto LABEL_25;
  }

  v5 = v5 + (v2[3] << 21) - 0x200000;
  if ((v2[3] & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 4;
    goto LABEL_25;
  }

  v5 -= 0x10000000;
  v6 = v2[4];
  if ((v2[4] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 5;
    goto LABEL_25;
  }

  v6 = v6 + (v2[5] << 7) - 128;
  if ((v2[5] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 6;
    goto LABEL_25;
  }

  v6 = v6 + (v2[6] << 14) - 0x4000;
  if ((v2[6] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 7;
    goto LABEL_25;
  }

  v6 = v6 + (v2[7] << 21) - 0x200000;
  if ((v2[7] & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 8;
    goto LABEL_25;
  }

  v6 -= 0x10000000;
  v7 = v2[8];
  if ((v2[8] & 0x80000000) == 0)
  {
    v4 = v2 + 9;
    goto LABEL_25;
  }

  if ((v2[9] & 0x80000000) == 0)
  {
    v4 = v2 + 10;
    v7 = v7 + (v2[9] << 7) - 128;
    goto LABEL_25;
  }

  return 0;
}

uint64_t topotext::Color::MergePartialFromCodedStream(topotext::Color *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v17, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v16, v17);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 13)
        {
          goto LABEL_31;
        }

        v18 = 0;
        if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
        {
          goto LABEL_44;
        }

        *(this + 10) = v18;
        *(this + 8) |= 1u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 21)
        {
          *(a2 + 1) = v11 + 1;
LABEL_26:
          v18 = 0;
          if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
          {
            goto LABEL_44;
          }

          *(this + 11) = v18;
          *(this + 8) |= 2u;
          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 29)
          {
            *(a2 + 1) = v12 + 1;
LABEL_35:
            v18 = 0;
            if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
            {
              goto LABEL_44;
            }

            *(this + 12) = v18;
            *(this + 8) |= 4u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 37)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 21)
        {
          goto LABEL_26;
        }

LABEL_31:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_45;
        }

LABEL_33:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v16, v4))
        {
          goto LABEL_44;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 29)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 37)
    {
      goto LABEL_31;
    }

LABEL_39:
    v18 = 0;
    if (!google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18))
    {
LABEL_44:
      v14 = 0;
      goto LABEL_46;
    }

    *(this + 13) = v18;
    *(this + 8) |= 8u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v14 = 1;
      *(a2 + 36) = 1;
      goto LABEL_46;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_33;
  }

LABEL_45:
  v14 = 1;
LABEL_46:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v16);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v17);
  return v14;
}

void sub_214D640A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(google::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  if (((*(this + 4) - v3) & 0xFFFFFFFC) != 0)
  {
    *(this + 1) = v3 + 1;
  }

  else
  {
    v3 = __dst;
    result = google::protobuf::io::CodedInputStream::ReadRaw(this, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

void *std::vector<TopoSubstring *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(result, a2);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D6433C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D64418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D645F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<TopoSubstring *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Get(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 664);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 665);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *a1 + 4 * a2;
}

void sub_214D647A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void traverseIterative(uint64_t a1, void *a2)
{
  v18[0] = a1;
  v2 = a2;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  std::deque<TopoSubstring *>::push_back(v16, v18);
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  v3 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    while (1)
    {
      v4 = v3 - 1;
      v5 = *(*(*(&v16[0] + 1) + (((v17 + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + v4) & 0x1FF));
      *(&v17 + 1) = v4;
      std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v16, 1);
      v2[2](v2, v5);
      while (1)
      {
        v7 = *(v5 + 48);
        v6 = *(v5 + 56);
        if (v6 - v7 != 8)
        {
          break;
        }

        v8 = *v7;
        if (*(*v7 + 72) != 1)
        {
          break;
        }

        v2[2](v2, *v7);
        v5 = v8;
      }

      if (v6 != v7)
      {
        break;
      }

LABEL_17:
      v3 = *(&v17 + 1);
      if (!*(&v17 + 1))
      {
        goto LABEL_18;
      }
    }

    v9 = v6 - 8;
    while (1)
    {
      v10 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v14, v9);
      if (v10)
      {
        v11 = *(v10 + 6) - 1;
        if (*(v10 + 6) == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = *(*v9 + 72);
        if (v12 < 2)
        {
LABEL_14:
          std::deque<TopoSubstring *>::push_back(v16, v9);
          goto LABEL_15;
        }

        v18[2] = v9;
        v10 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(v14, v9);
        v11 = v12 - 1;
      }

      *(v10 + 6) = v11;
LABEL_15:
      v13 = v9 == *(v5 + 48);
      v9 -= 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v14);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](v16);
}

void sub_214D652C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void *std::deque<TopoSubstring *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **&>(a1, &v10);
}

void sub_214D65478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<TopoSubstring *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<TopoSubstring *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<TopoSubstring *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TopoSubstring **>::~__split_buffer(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__split_buffer<TopoSubstring **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D658F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::String::~String(topotext::String *this)
{
  *this = &unk_28270B548;
  topotext::String::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 13);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 10);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::String::~String(this);

  JUMPOUT(0x216063B80);
}

void topotext::String::SharedDtor(topotext::String *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::String::default_instance_ != v1)
  {
    v4 = *(v1 + 9);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

void topotext::protobuf_AddDesc_topotext_2eproto(topotext *this)
{
  v1 = topotext::protobuf_AddDesc_topotext_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = &unk_28270A628;
    v2[1] = topotext::protobuf_AddDesc_topotext_2eproto_impl;
    v3 = 0;
    google::protobuf::GoogleOnceInitImpl(&topotext::protobuf_AddDesc_topotext_2eproto_once_, v2);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_214D65C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_214D661B8(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x216063B80](v2, v3);
  _Unwind_Resume(a1);
}

topotext::Selection *topotext::Selection::Selection(topotext::Selection *this)
{
  *this = &unk_28270B890;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  topotext::Selection::SharedCtor(this);
  return this;
}

void sub_214D66278(_Unwind_Exception *a1)
{
  v5 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v5);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  if (v1[31] < 0)
  {
    operator delete(*v4);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::Selection::SharedCtor(topotext::Selection *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_28270A628;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 22) = 0;
  *(this + 4) = 0;
}

void sub_214D66360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::Font *topotext::Font::Font(topotext::Font *this)
{
  *this = &unk_28270B980;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Font::SharedCtor(this);
  return this;
}

void sub_214D663CC(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::Font::SharedCtor(topotext::Font *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_28270A628;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_214D66498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::Media *topotext::Media::Media(topotext::Media *this)
{
  *this = &unk_28270BBD8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Media::SharedCtor(this);
  return this;
}

void sub_214D66504(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

topotext::Location *topotext::Location::Location(topotext::Location *this)
{
  *this = &unk_28270BB60;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Location::SharedCtor(this);
  return this;
}

void sub_214D66580(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

topotext::Attachment *topotext::Attachment::Attachment(topotext::Attachment *this)
{
  *this = &unk_28270BAE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 26) = 0;
  *(this + 32) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
  topotext::Attachment::SharedCtor(this);
  return this;
}

void sub_214D6662C(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((v1 + 336));
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v3);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v4);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

double topotext::Attachment::SharedCtor(topotext::Attachment *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v6[0] = &unk_28270A628;
    v6[1] = google::protobuf::internal::InitEmptyString;
    v7 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v6);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v6);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 7) = 0;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = v3;
  *(this + 11) = v3;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 22) = v3;
  *(this + 164) = 0;
  *(this + 49) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 232) = 0u;
  v5 = this + 232;
  *(v5 - 4) = v3;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  *(v5 + 9) = v3;
  *(v5 + 10) = v3;
  *(v5 + 11) = v3;
  *(v5 + 12) = v3;
  *(v5 + 16) = v3;
  *(v5 + 17) = v3;
  *(v5 + 18) = v3;
  *(v5 + 19) = v3;
  *(v5 - 25) = 0;
  return result;
}

void sub_214D66770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Media::SharedCtor(topotext::Media *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 6) = google::protobuf::internal::empty_string_;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214D66830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::Location::SharedCtor(topotext::Location *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 44) = 0;
  *(this + 36) = 0;
  *(this + 13) = 0;
  *(this + 7) = v3;
  *(this + 64) = 0;
  *(this + 8) = 0;
}

void sub_214D668FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::PreviewImage *topotext::PreviewImage::PreviewImage(topotext::PreviewImage *this)
{
  *this = &unk_28270BC50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::PreviewImage::SharedCtor(this);
  return this;
}

void sub_214D66968(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::PreviewImage::SharedCtor(topotext::PreviewImage *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = v3;
}

void sub_214D66A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::Todo *topotext::Todo::Todo(topotext::Todo *this)
{
  *this = &unk_28270BCC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::Todo::SharedCtor(this);
  return this;
}

void sub_214D66AAC(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::Todo::SharedCtor(topotext::Todo *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 48) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214D66B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

topotext::BoxedValue *topotext::BoxedValue::BoxedValue(topotext::BoxedValue *this)
{
  *this = &unk_28270BDB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  topotext::BoxedValue::SharedCtor(this);
  return this;
}

void sub_214D66BE4(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void topotext::BoxedValue::SharedCtor(topotext::BoxedValue *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_28270A628;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 12) = 0;
}

void sub_214D66CB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void topotext::VectorTimestamp::~VectorTimestamp(topotext::VectorTimestamp *this)
{
  *this = &unk_28270B6B0;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 5);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::VectorTimestamp::~VectorTimestamp(this);

  JUMPOUT(0x216063B80);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x216063B60);
  }

  return result;
}

void topotext::VectorTimestamp_Clock::~VectorTimestamp_Clock(topotext::VectorTimestamp_Clock *this)
{
  *this = &unk_28270B638;
  topotext::VectorTimestamp_Clock::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::VectorTimestamp_Clock::~VectorTimestamp_Clock(this);

  JUMPOUT(0x216063B80);
}

void topotext::VectorTimestamp_Clock::SharedDtor(topotext::VectorTimestamp_Clock *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 5);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x216063B80](v1, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

void topotext::VectorTimestamp_Clock_ReplicaClock::~VectorTimestamp_Clock_ReplicaClock(void **this)
{
  *this = &unk_28270B5C0;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::VectorTimestamp_Clock_ReplicaClock::~VectorTimestamp_Clock_ReplicaClock(this);

  JUMPOUT(0x216063B80);
}

void topotext::AttributeRun::SharedDtor(topotext::AttributeRun *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::AttributeRun::default_instance_ != v1)
  {
    v4 = *(v1 + 5);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 7);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v1 + 11);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v1 + 12);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v1 + 14);
    if (v8)
    {
      v9 = *(*v8 + 8);

      v9();
    }
  }
}

void topotext::AttributeRun::~AttributeRun(void **this)
{
  *this = &unk_28270B908;
  topotext::AttributeRun::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::AttributeRun::~AttributeRun(this);

  JUMPOUT(0x216063B80);
}

void topotext::ParagraphStyle::~ParagraphStyle(void **this)
{
  *this = &unk_28270B9F8;
  topotext::ParagraphStyle::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::ParagraphStyle::~ParagraphStyle(this);

  JUMPOUT(0x216063B80);
}

void topotext::ParagraphStyle::SharedDtor(topotext::ParagraphStyle *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::ParagraphStyle::default_instance_ != v1)
  {
    v4 = *(v1 + 7);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

void topotext::AttachmentInfo::SharedDtor(topotext::AttachmentInfo *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
  }

  if (!v2)
  {
    versioned_document::Version::SharedCtor();
  }

  v5 = *(v1 + 7);
  if (v5 != v2 && v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x216063B80](v5, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v6 = *(v1 + 8);
  if (v6 != v2 && v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x216063B80](v6, 0x1012C40EC159624);
  }

  topotext::protobuf_AddDesc_topotext_2eproto(this);
}

void topotext::AttachmentInfo::~AttachmentInfo(void **this)
{
  *this = &unk_28270BA70;
  topotext::AttachmentInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::AttachmentInfo::~AttachmentInfo(this);

  JUMPOUT(0x216063B80);
}

void topotext::Color::~Color(void **this)
{
  topotext::Color::~Color(this);

  JUMPOUT(0x216063B80);
}

{
  *this = &unk_28270BD40;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

void topotext::Substring::~Substring(void **this)
{
  *this = &unk_28270B7A0;
  topotext::Substring::SharedDtor(this);
  v2 = this[8];
  if (v2)
  {
    MEMORY[0x216063B60](v2, 0x1000C8052888210);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Substring::~Substring(this);

  JUMPOUT(0x216063B80);
}

void topotext::Substring::SharedDtor(topotext::Substring *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Substring::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

void topotext::CharID::~CharID(void **this)
{
  *this = &unk_28270B728;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::CharID::~CharID(this);

  JUMPOUT(0x216063B80);
}

void TopoSubstring::TopoSubstring(TopoSubstring *this, TopoID a2, int a3, int a4)
{
  clock = a2.clock;
  replicaID = a2.replicaID;
  *this = 0;
  *(this + 3) = 0;
  *(this + 10) = a3;
  *(this + 44) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 18) = 0;
  objc_storeStrong(this, a2.replicaID);
  *(this + 2) = clock;
  *(this + 4) = a4;
  v8 = *(this + 3);
  *(this + 3) = replicaID;
  v9 = replicaID;

  *(this + 8) = clock;
}

void *std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring * const*,TopoSubstring * const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<TopoSubstring *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring *>>(a1, a2);
  }

  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
}

void traverseUnordered(uint64_t a1, void *a2)
{
  v21 = a1;
  v2 = a2;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  std::deque<TopoSubstring *>::push_back(v17, &v21);
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v19, &v21);
  for (i = *(&v18 + 1); *(&v18 + 1); i = *(&v18 + 1))
  {
    v4 = i - 1;
    v5 = *(*(*(&v17[0] + 1) + (((v18 + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v4) & 0x1FF));
    *(&v18 + 1) = v4;
    std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v17, 1);
    v2[2](v2, v5, &v16);
    if (v16)
    {
      break;
    }

    v6 = (v5 + 48);
    v7 = *(v5 + 48);
    v8 = (v5 + 56);
    if (*(v5 + 56) - v7 == 8)
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        if (*(*v7 + 72) != 1)
        {
          break;
        }

        v2[2](v2, v10, &v16);
        v9 = v16;
        if ((v16 & 1) != 0 || v10 == v5)
        {
          goto LABEL_20;
        }

        v12 = *(v10 + 48);
        v11 = (v10 + 48);
        v7 = v12;
        v8 = v11 + 1;
        v6 = v11;
      }

      while (v11[1] - v12 == 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      break;
    }

    v13 = *v6;
    v14 = *v8;
    while (v13 != v14)
    {
      v15 = *v13;
      if (*(v15 + 72) > 1u)
      {
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v19, &v15))
        {
          std::deque<TopoSubstring *>::push_back(v17, &v15);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v19, &v15);
        }
      }

      else
      {
        std::deque<TopoSubstring *>::push_back(v17, &v15);
      }

      ++v13;
    }
  }

LABEL_20:
  std::deque<TopoSubstring *>::~deque[abi:ne200100](v17);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v19);
}

void sub_214D67CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_214D6804C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (*(i + 6) == *(a2 + 2) && ([i[2] isEqual:*a2] & 1) != 0)
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void TopoSubstring::TopoSubstring(TopoSubstring *this, TopoSubstring *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 4) = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 10) = *(a2 + 10);
  *(this + 44) = *(a2 + 44);
  *(this + 18) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

BOOL hasLoop(TopoSubstring *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___Z7hasLoopP13TopoSubstring_block_invoke;
  v5[3] = &unk_278195BB8;
  v5[4] = &v6;
  traverseUnordered(a1, v5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___Z7hasLoopP13TopoSubstring_block_invoke_2;
  v4[3] = &unk_278195BE0;
  v4[4] = &v6;
  traverseIterative(a1, v4);
  v2 = v7[3] != 0;
  _Block_object_dispose(&v6, 8);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *removeDirectToSinkEdges(void *result)
{
  v1 = result[7];
  v2 = (v1 - result[6]) >> 3;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = v3[6];
      v6 = *(v5 + 8 * v4);
      v7 = *(v6 + 72);
      if (v7 < 2)
      {
        ++v4;
      }

      else
      {
        *(v6 + 72) = v7 - 1;
        v8 = v5 + 8 * v4;
        v9 = v1 - (v8 + 8);
        if (v1 != v8 + 8)
        {
          result = memmove((v5 + 8 * v4), (v8 + 8), v1 - (v8 + 8));
        }

        v1 = v8 + v9;
        v3[7] = v8 + v9;
        --v2;
      }
    }

    while (v4 < v2);
  }

  return result;
}

void minIdPath(TopoSubstring *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(v2 + 2);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 1.0;
  v6 = (v2 + 48);
  v5 = *(v2 + 6);
  v7 = *(v2 + 7);
  if (v7 == v5)
  {
    v8 = 0;
  }

  else
  {
    v61 = (v2 + 56);
    v8 = 0;
    while (1)
    {
      if ((v7 - v5) >= 9)
      {
        removeDirectToSinkEdges(v2);
        v7 = *v61;
        v5 = *v6;
      }

      v9 = v7 - v5;
      if (v9 != 8)
      {
        break;
      }

      v2 = *v5;
      if (*(*v5 + 18) > 1u)
      {
        v8 = 1;
        goto LABEL_82;
      }

      v10 = v3;
      v11 = *v2;
      v12 = v11;
      v13 = *(v2 + 2);
      if (v4 < v13)
      {
        v14 = v10;
LABEL_17:
        v13 = v4;
        goto LABEL_18;
      }

      v14 = v11;
      if (v4 == v13)
      {
        if ([v10 TTCompare:v11] == -1)
        {
          v14 = v10;
        }

        else
        {
          v14 = v12;
        }

        goto LABEL_17;
      }

LABEL_18:
      v3 = v14;

      v4 = v13;
LABEL_78:
      v6 = (v2 + 48);
      v5 = *(v2 + 6);
      v7 = *(v2 + 7);
      v61 = (v2 + 56);
      if (v7 == v5)
      {
        goto LABEL_82;
      }
    }

    v60 = v6;
    v15 = v72;
    v16 = v73;
    if (v73 == v72)
    {
      v17 = v61;
    }

    else
    {
      v17 = v61;
      do
      {
        v18 = v16[-3].n128_u64[1];
        v16 = (v16 - 40);
      }

      while (v16 != v15);
      v9 = *v61 - *v60;
    }

    v73 = v15;
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::reserve(&v72, v9 >> 3);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::clear(&v69);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<true>(&v69, vcvtps_u32_f32((*v17 - *v60) / v71));
    v19 = *v60;
    v20 = *v17;
    while (v19 != v20)
    {
      obj = *v19;
      *&v66 = &obj;
      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v69, &obj)[3] = 1;
      *&v66 = 0;
      DWORD2(v66) = 0;
      v67 = obj;
      v68 = obj;
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::push_back[abi:ne200100](&v72, &v66);

      ++v19;
    }

    v21 = MEMORY[0x277D826F0];
    do
    {
      v66 = 0u;
      v67 = 0u;
      LODWORD(v68) = 1065353216;
      v22 = v70;
      if (v70)
      {
        while (1)
        {
          v23 = v22[2];
          v24 = v22[3];
          v65 = v23;
          if (v24 < *(v23 + 72))
          {
            goto LABEL_56;
          }

          minIdPath(&obj, v23);
          if (v73 == v72)
          {
            goto LABEL_48;
          }

          v25 = 0;
          v26 = obj;
          if (0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3) <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
          }

          do
          {
            if (v72[1].n128_u64[v25] == v65 && v72->n128_u64[v25])
            {
              v28 = v26;
              v29 = v63;
              v30 = v72 + v25 * 8;
              v31 = v72->n128_u64[v25];
              v32 = v31;
              v33 = *(v30 + 2);
              if (v29 < v33)
              {
                v34 = v28;
                goto LABEL_38;
              }

              v34 = v31;
              if (v29 == v33)
              {
                if ([v28 TTCompare:v31] == -1)
                {
                  v34 = v28;
                }

                else
                {
                  v34 = v32;
                }

LABEL_38:
                v33 = v29;
              }

              v26 = v34;

              v63 = v33;
            }

            v25 += 5;
            --v27;
          }

          while (v27);
          obj = v26;
          if (v73 != v72)
          {
            v35 = 0;
            v36 = v63;
            if (0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3) <= 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
            }

            do
            {
              v38 = v72 + v35 * 8;
              v39 = &v72[1].n128_u64[v35];
              if (*v39 == v65)
              {
                objc_storeStrong((v72 + v35 * 8), v26);
                *(v38 + 2) = v36;
                *v39 = v64;
              }

              v35 += 5;
              --v37;
            }

            while (v37);
          }

LABEL_48:
          v40 = v3;
          v41 = obj;
          v42 = v41;
          v43 = v63;
          if (v4 < v63)
          {
            v44 = v40;
            goto LABEL_54;
          }

          v44 = v41;
          if (v4 == v63)
          {
            if ([v40 TTCompare:v41] == -1)
            {
              v44 = v40;
            }

            else
            {
              v44 = v42;
            }

LABEL_54:
            v43 = v4;
          }

          v3 = v44;

          v24 = *(&v64 + 1);
          v65 = v64;

          v4 = v43;
LABEL_56:
          v45 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v66, &v65);
          if (v45)
          {
            v45[3] += v24;
          }

          else
          {
            obj = &v65;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v66, &v65)[3] = v24;
          }

          v22 = *v22;
          if (!v22)
          {
            v46 = *&v68;
            v47 = v67;
            v21 = MEMORY[0x277D826F0];
            goto LABEL_62;
          }
        }
      }

      v47 = 0;
      v46 = 1.0;
LABEL_62:
      v71 = v46;
      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<TopoSubstring *,unsigned long>,void *> *>>(&v69, v47, 0);
      v48 = v72;
      v49 = v73;
      if (v73 - v72 < 1)
      {
        v54 = 0;
        v50 = 0;
      }

      else
      {
        v50 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
        while (1)
        {
          v51 = operator new(40 * v50, v21);
          if (v51)
          {
            break;
          }

          v52 = v50 >> 1;
          v53 = v50 > 1;
          v50 >>= 1;
          if (!v53)
          {
            v54 = 0;
            v50 = v52;
            goto LABEL_69;
          }
        }

        v54 = v51;
      }

LABEL_69:
      std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v48, v49, 0xCCCCCCCCCCCCCCCDLL * ((v49 - v48) >> 3), v54, v50);
      if (v54)
      {
        operator delete(v54);
      }

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v66);
    }

    while (*(&v70 + 1) > 1uLL);
    if (*v61 != *v60)
    {
      v55 = 0;
      v56 = *v61 - *v60;
      if (v56 <= 1)
      {
        v56 = 1;
      }

      v57 = 4;
      do
      {
        (*v60)[v55++] = v72->n128_u64[v57];
        v57 += 5;
      }

      while (v56 != v55);
    }

    v2 = *(v70 + 16);
    v8 = *(v70 + 24);
    if (v8 >= *(v2 + 18))
    {
      goto LABEL_78;
    }
  }

LABEL_82:
  v58 = v3;
  *a2 = v58;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  *(a2 + 24) = v8;
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v69);
  *&v69 = &v72;
  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](&v69);
}

void sub_214D68F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a23);
  a23 = (v25 - 120);
  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

void std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_214D693B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v17 + 48);
  a9.super_class = ICTTMergeableString;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<versioned_document::Version>::DeleteSubrange(google::protobuf::internal::RepeatedPtrFieldBase *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1134);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1135);
  v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v12, v7);
  google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(a1 + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1136);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    v9 = a2;
    v10 = a3;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a1, v9);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  google::protobuf::RepeatedPtrField<versioned_document::Version>::ExtractSubrange(a1, a2, a3, 0);
}

void sub_214D69664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 894);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 895);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214D69780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<versioned_document::Version>::ExtractSubrange(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2, int a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1145);
    v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1146);
  v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v13, v9);
  google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 1147);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v10);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      v12 = a2;
      do
      {
        *a4++ = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this, v12++);
        --v11;
      }

      while (v11);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }
}

void sub_214D698F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 12);
  if (a3 + a2 < v3)
  {
    v4 = 8 * a2;
    v5 = a3 + a2;
    do
    {
      *(*this + v4) = *(*this + v4 + 8 * a3);
      ++v5;
      v4 += 8;
    }

    while (v5 < v3);
  }

  *(this + 8) -= a3;
  *(this + 12) = v3 - a3;
  return this;
}

double topotext::WallClockMergeableValue::WallClockMergeableValue(topotext::WallClockMergeableValue *this)
{
  *this = &unk_28270BE30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t topotext::WallClockMergeableValue::MergePartialFromCodedStream(topotext::WallClockMergeableValue *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_20;
      }

      v9 = *(this + 8);
LABEL_24:
      *(this + 8) = v9 | 2;
      v12 = *(this + 6);
      if (!v12)
      {
        operator new();
      }

      v24[0] = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || *v13 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24))
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24[0] = *v13;
        *(a2 + 1) = v13 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v24[0]), !topotext::BoxedValue::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
      {
LABEL_39:
        v20 = 0;
        goto LABEL_41;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v20 = 1;
        *(a2 + 36) = 1;
        goto LABEL_41;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 9)
    {
      *v24 = 0;
      if (!google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24))
      {
        goto LABEL_39;
      }

      *(this + 5) = *v24;
      v9 = *(this + 8) | 1;
      *(this + 8) = v9;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_24;
      }
    }

    else
    {
LABEL_20:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_40;
      }

LABEL_17:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
      {
        goto LABEL_39;
      }
    }
  }

LABEL_13:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_40:
  v20 = 1;
LABEL_41:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}