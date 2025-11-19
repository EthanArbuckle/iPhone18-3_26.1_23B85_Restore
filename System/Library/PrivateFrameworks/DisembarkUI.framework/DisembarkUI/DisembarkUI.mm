id _DKLogSystem()
{
  if (_DKLogSystem_onceToken != -1)
  {
    _DKLogSystem_cold_1();
  }

  v1 = _DKLogSystem_log;

  return v1;
}

void sub_248D6B104(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248D6B560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248D6C368(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248D6C734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_248D7C988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248D7D9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248D7E528(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_248D7FC44(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_248D81F04, v5);
}

void sub_248D7FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_248D82F10();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

uint64_t sub_248D7FDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_248D7FE74;
  v7[3] = &block_descriptor_27;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_248D7FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_248D82F20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5(v6, v8, a3);
}

id DKAppleCareProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___DKAppleCareProvider_coverageLabel];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR___DKAppleCareProvider_isTheftAndLossEnabled] = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = ObjectType;
  v4 = &v0[OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails];
  *v4 = sub_248D7FFE8;
  v4[1] = v3;
  v6.receiver = v0;
  v6.super_class = DKAppleCareProvider;
  return objc_msgSendSuper2(&v6, sel_init);
}

id DKAppleCareProvider.init(fetchCoverageDetails:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_248D7FC44;
  v8[3] = &block_descriptor;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithFetchCoverageDetails_];
  _Block_release(v5);

  return v6;
}

{
  v3 = (v2 + OBJC_IVAR___DKAppleCareProvider_coverageLabel);
  *v3 = 0;
  v3[1] = 0;
  *(v2 + OBJC_IVAR___DKAppleCareProvider_isTheftAndLossEnabled) = 0;
  v4 = (v2 + OBJC_IVAR___DKAppleCareProvider__fetchCoverageDetails);
  *v4 = a1;
  v4[1] = a2;
  v6.super_class = DKAppleCareProvider;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248D80270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EECD070 != -1)
  {
    swift_once();
  }

  v6 = sub_248D82F00();
  __swift_project_value_buffer(v6, qword_27EECD1A0);
  v7 = sub_248D82EE0();
  v8 = sub_248D82F80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_248D817DC(0xD000000000000019, 0x8000000248D87440, v17);
    _os_log_impl(&dword_248D68000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1EAEC0](v10, -1, -1);
    MEMORY[0x24C1EAEC0](v9, -1, -1);
  }

  v11 = [v3 _fetchCoverageDetails];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v17[4] = sub_248D81EF0;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_248D7FE74;
  v17[3] = &block_descriptor_21;
  v14 = _Block_copy(v17);
  v15 = v11[2];

  v15(v11, v14);
  _Block_release(v11);

  _Block_release(v14);
}

void sub_248D804E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_248D82FB0();
    MEMORY[0x24C1EA6E0](0xD000000000000036, 0x8000000248D87480);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECD128, &qword_248D85A38);
    v10 = sub_248D82F30();
    MEMORY[0x24C1EA6E0](v10);

    MEMORY[0x24C1EA6E0](0xD00000000000001ALL, 0x8000000248D874C0);
    if (a3)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a3)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x24C1EA6E0](v11, v12);

    v14 = v24;
    v13 = v25;
    if (qword_27EECD070 != -1)
    {
      swift_once();
    }

    v15 = sub_248D82F00();
    __swift_project_value_buffer(v15, qword_27EECD1A0);

    v16 = sub_248D82EE0();
    v17 = sub_248D82F80();

    if (os_log_type_enabled(v16, v17))
    {
      v23 = a5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_248D817DC(v14, v13, &v24);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_248D68000, v16, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1EAEC0](v19, -1, -1);
      v21 = v18;
      a5 = v23;
      MEMORY[0x24C1EAEC0](v21, -1, -1);

      if (a2)
      {
LABEL_12:
        v22 = sub_248D82F10();
LABEL_15:
        [v9 setCoverageLabel_];

        a5([v9 setIsTheftAndLossEnabled_]);
        return;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_12;
      }
    }

    v22 = 0;
    goto LABEL_15;
  }
}

void sub_248D80814(void (*a1)(id))
{
  swift_getObjectType();
  if (![v1 isTheftAndLossEnabled])
  {
    if (qword_27EECD070 != -1)
    {
      swift_once();
    }

    v16 = sub_248D82F00();
    __swift_project_value_buffer(v16, qword_27EECD1A0);
    v17 = sub_248D82EE0();
    v18 = sub_248D82F80();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_23;
    }

    v19 = " not been implemented";
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = 0xD00000000000003BLL;
    goto LABEL_22;
  }

  v3 = [v1 coverageLabel];
  if (!v3)
  {
LABEL_18:
    if (qword_27EECD070 != -1)
    {
      swift_once();
    }

    v23 = sub_248D82F00();
    __swift_project_value_buffer(v23, qword_27EECD1A0);
    v17 = sub_248D82EE0();
    v18 = sub_248D82F80();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_23;
    }

    v19 = "ing apple care notable data";
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = 0xD000000000000045;
LABEL_22:
    *(v20 + 4) = sub_248D817DC(v22, v19 | 0x8000000000000000, &v25);
    _os_log_impl(&dword_248D68000, v17, v18, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1EAEC0](v21, -1, -1);
    MEMORY[0x24C1EAEC0](v20, -1, -1);
LABEL_23:

    a1(0);
    return;
  }

  v4 = v3;
  v5 = sub_248D82F20();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    goto LABEL_18;
  }

  if (qword_27EECD070 != -1)
  {
    swift_once();
  }

  v9 = sub_248D82F00();
  __swift_project_value_buffer(v9, qword_27EECD1A0);
  v10 = sub_248D82EE0();
  v11 = sub_248D82F80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_248D817DC(0xD000000000000020, 0x8000000248D873C0, &v25);
    _os_log_impl(&dword_248D68000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1EAEC0](v13, -1, -1);
    MEMORY[0x24C1EAEC0](v12, -1, -1);
  }

  sub_248D80C80();
  v14 = objc_allocWithZone(DKNotableUserDataAppleCare);
  v15 = sub_248D82F10();

  v24 = [v14 initWithTitle:v4 subtitle:v15];

  a1(v24);
}

uint64_t sub_248D80C80()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_248D82ED0();

  return v2;
}

uint64_t sub_248D80D7C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_248D80E78(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, id))
{
  if (!a1 || a2)
  {
    sub_248D82FB0();

    v18[0] = 0xD00000000000002BLL;
    v18[1] = 0x8000000248D87510;
    v11 = sub_248D822AC(a2);
    MEMORY[0x24C1EA6E0](v11);

    if (qword_27EECD070 != -1)
    {
      swift_once();
    }

    v12 = sub_248D82F00();
    __swift_project_value_buffer(v12, qword_27EECD1A0);

    v13 = sub_248D82EE0();
    v14 = sub_248D82F70();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      v17 = sub_248D817DC(0xD00000000000002BLL, 0x8000000248D87510, v18);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_248D68000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1EAEC0](v16, -1, -1);
      MEMORY[0x24C1EAEC0](v15, -1, -1);
    }

    else
    {
    }

    return a3(0, 0, 0);
  }

  else
  {
    v5 = a1;
    v6 = [v5 coverageLabel];
    v7 = sub_248D82F20();
    v9 = v8;

    a3(v7, v9, [v5 hasTheftAndLoss]);
  }
}

void sub_248D810EC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_248D811D4()
{
  v1 = OBJC_IVAR____TtCE11DisembarkUICSo19DKAppleCareProviderP33_7F901F21705620515561FC21907977B339AcknowledgeTheftAndLossRemovalWrapperVC_theftAndLossVc;
  v2 = [*&v0[OBJC_IVAR____TtCE11DisembarkUICSo19DKAppleCareProviderP33_7F901F21705620515561FC21907977B339AcknowledgeTheftAndLossRemovalWrapperVC_theftAndLossVc] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  [v0 addChildViewController_];
  v4 = [v0 view];
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [*&v0[v1] view];
  if (!v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECD110, ")");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_248D859E0;
  v9 = [*&v0[v1] view];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v8 + 32) = v15;
  v16 = [*&v0[v1] view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v8 + 40) = v22;
  v23 = [*&v0[v1] view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 48) = v29;
  v30 = [*&v0[v1] view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v0 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 trailingAnchor];

  v37 = [v32 constraintEqualToAnchor_];
  *(v8 + 56) = v37;
  sub_248D81748(0, &qword_27EECD118, 0x277CCAAD0);
  v38 = sub_248D82F60();

  [v35 activateConstraints_];

  [*&v0[v1] didMoveToParentViewController_];
  v39 = [v0 navigationItem];
  [v39 setHidesBackButton_];
}

id sub_248D81694()
{
  v2.receiver = v0;
  v2.super_class = _s39AcknowledgeTheftAndLossRemovalWrapperVCCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_248D81748(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_248D817DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248D818A8(v11, 0, 0, 1, a1, a2);
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
    sub_248D81DD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_248D818A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248D819B4(a5, a6);
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
    result = sub_248D82FC0();
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

uint64_t sub_248D819B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_248D81A00(a1, a2);
  sub_248D81B30(&unk_285BC27D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_248D81A00(uint64_t a1, unint64_t a2)
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

  v6 = sub_248D81C1C(v5, 0);
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

  result = sub_248D82FC0();
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
        v10 = sub_248D82F50();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248D81C1C(v10, 0);
        result = sub_248D82FA0();
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

uint64_t sub_248D81B30(uint64_t result)
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

  result = sub_248D81C90(result, v12, 1, v3);
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

void *sub_248D81C1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECD120, "L)");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248D81C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECD120, "L)");
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_248D81DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_248D81E30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248D81E78()
{
  MEMORY[0x24C1EAEE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248D81EB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_248D81F0C(uint64_t a1, uint64_t a2)
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    v6 = MobileGestalt_copy_serialNumber_obj();
    if (v6)
    {
      v7 = v6;

      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2;
      v11[4] = sub_248D8207C;
      v11[5] = v9;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_248D810EC;
      v11[3] = &block_descriptor_47;
      v10 = _Block_copy(v11);

      [v8 getCachedCoverageDetailsForSerialNumber:v7 requester:2 completion:v10];
      _Block_release(v10);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_248D82044()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

DKCardChevron __swiftcall DKCardChevron.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_248D821D0()
{
  v0 = sub_248D82F00();
  __swift_allocate_value_buffer(v0, qword_27EECD1A0);
  __swift_project_value_buffer(v0, qword_27EECD1A0);
  return sub_248D82EF0();
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

uint64_t sub_248D822AC(void *a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v2 = a1;
  if (os_variant_has_internal_ui())
  {
    swift_getErrorValue();
    v3 = sub_248D83010();

    return v3;
  }

  else
  {
    sub_248D82FB0();

    swift_getErrorValue();
    v5 = sub_248D83000();
    MEMORY[0x24C1EA6E0](v5);

    MEMORY[0x24C1EA6E0](0x2065646F63202CLL, 0xE700000000000000);
    swift_getErrorValue();
    sub_248D82FF0();
    v6 = sub_248D82FE0();
    MEMORY[0x24C1EA6E0](v6);

    MEMORY[0x24C1EA6E0](62, 0xE100000000000000);

    return 0x6420726F7272453CLL;
  }
}