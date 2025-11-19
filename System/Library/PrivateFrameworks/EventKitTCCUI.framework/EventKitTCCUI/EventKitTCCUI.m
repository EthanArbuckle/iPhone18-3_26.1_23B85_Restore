id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle_handle;

  return v1;
}

uint64_t __logHandle_block_invoke()
{
  logHandle_handle = os_log_create(EKTCCUILogSubsystem, "factory");

  return MEMORY[0x2821F96F8]();
}

id EventPreviewWrapper.__allocating_init(event:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13EventKitTCCUI19EventPreviewWrapper_event] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id EventPreviewWrapper.init(event:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13EventKitTCCUI19EventPreviewWrapper_event] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EventPreviewWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

void __swiftcall EventPreviewWrapper.getPreviewController(forPrompt:)(UIViewController_optional *__return_ptr retstr, Swift::Bool forPrompt)
{
  v4 = sub_24A093230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF335A0, &qword_24A093680) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(v2 + OBJC_IVAR____TtC13EventKitTCCUI19EventPreviewWrapper_event);
  if (v15)
  {
    v16 = MEMORY[0x277CF7D00];
    if (!forPrompt)
    {
      v16 = MEMORY[0x277CF7D08];
    }

    (*(v5 + 104))(v8, *v16, v4);
    v17 = v15;
    sub_24A093220();
    sub_24A092F10(v14, v12);
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF335A8, &qword_24A093688));
    v19 = sub_24A093240();
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() clearColor];
      [v21 setBackgroundColor_];

      sub_24A092F80(v14);
    }

    else
    {
      __break(1u);
    }
  }
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

uint64_t sub_24A092F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF335A0, &qword_24A093680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A092F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF335A0, &qword_24A093680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id EventPreviewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventPreviewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventPreviewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}